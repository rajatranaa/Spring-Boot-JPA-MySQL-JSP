package com.example.demo.services;

import com.documents4j.api.DocumentType;
import com.documents4j.api.IConverter;
import com.documents4j.job.LocalConverter;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;

import java.io.FileOutputStream;

import java.io.InputStream;
import java.io.OutputStream;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/**
 *
 * @author Rajat rana
 */
public class RtfToPdf {

public static void main(String[] args) throws Exception {

    ByteArrayOutputStream bo = new ByteArrayOutputStream();
    
    //for reading the file
    FileInputStream fin = new FileInputStream("F:\\convert/Prashant_Agrawal.rtf");    
    InputStream in = new BufferedInputStream(fin);
    
    IConverter converter = LocalConverter.builder()
          //  .baseFolder(file)
            .workerPool(20, 25, 2, TimeUnit.SECONDS)
            .processTimeout(5, TimeUnit.SECONDS)
            .build();

    Future<Boolean> conversion = converter
            .convert(in).as(DocumentType.RTF)
            .to(bo).as(DocumentType.PDF)
            .prioritizeWith(1000) // optional
            .schedule();
    conversion.get();
    //output stream
    try (OutputStream outputStream = new FileOutputStream("F:\\convert1/Prashant_Agrawal.pdf")) {
        bo.writeTo(outputStream);
    }
    in.close();
    bo.close();
}
}
