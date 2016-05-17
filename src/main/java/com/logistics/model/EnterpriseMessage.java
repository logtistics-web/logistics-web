package com.logistics.model;

import java.util.Date;

public class EnterpriseMessage {
    private Integer id;

    private String emterprisetype;

    private String enterprisrname;

    private String operation;

    private String workarea;

    private String address;

    private String phone;

    private String linkman;

    private String fax;

    private String emial;

    private String http;

    private String introduce;

    private Date issusdate;

    private String adduser;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmterprisetype() {
        return emterprisetype;
    }

    public void setEmterprisetype(String emterprisetype) {
        this.emterprisetype = emterprisetype == null ? null : emterprisetype.trim();
    }

    public String getEnterprisrname() {
        return enterprisrname;
    }

    public void setEnterprisrname(String enterprisrname) {
        this.enterprisrname = enterprisrname == null ? null : enterprisrname.trim();
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation == null ? null : operation.trim();
    }

    public String getWorkarea() {
        return workarea;
    }

    public void setWorkarea(String workarea) {
        this.workarea = workarea == null ? null : workarea.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman == null ? null : linkman.trim();
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax == null ? null : fax.trim();
    }

    public String getEmial() {
        return emial;
    }

    public void setEmial(String emial) {
        this.emial = emial == null ? null : emial.trim();
    }

    public String getHttp() {
        return http;
    }

    public void setHttp(String http) {
        this.http = http == null ? null : http.trim();
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public Date getIssusdate() {
        return issusdate;
    }

    public void setIssusdate(Date issusdate) {
        this.issusdate = issusdate;
    }

    public String getAdduser() {
        return adduser;
    }

    public void setAdduser(String adduser) {
        this.adduser = adduser == null ? null : adduser.trim();
    }
}