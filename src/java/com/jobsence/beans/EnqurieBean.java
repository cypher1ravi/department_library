package com.jobsence.beans;

public class EnqurieBean {

    private int id;
    private String name, email, subject, mobile, message;

    public EnqurieBean() {
    }

    public EnqurieBean(int id, String name, String email, String subject, String mobile, String message) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.subject = subject;
        this.mobile = mobile;
        this.message = message;
    }

    public EnqurieBean(String name, String email, String subject, String mobile, String message) {
        super();
        this.name = name;
        this.email = email;
        this.subject = subject;
        this.mobile = mobile;
        this.message = message;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
