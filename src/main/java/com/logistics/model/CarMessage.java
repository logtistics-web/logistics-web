package com.logistics.model;

public class CarMessage {
    private Integer id;

    private String trademark;

    private String brand;

    private String style;

    private String carload;

    private String usertime;

    private String drivename;

    private String drivertime;

    private String licencenumber;

    private String licencestyle;

    private String transpotstyle;

    private String linkman;

    private String linkphone;

    private String rmark;

    private String issuedate;

    private String adduser;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTrademark() {
        return trademark;
    }

    public void setTrademark(String trademark) {
        this.trademark = trademark == null ? null : trademark.trim();
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand == null ? null : brand.trim();
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style == null ? null : style.trim();
    }

    public String getCarload() {
        return carload;
    }

    public void setCarload(String carload) {
        this.carload = carload == null ? null : carload.trim();
    }

    public String getUsertime() {
        return usertime;
    }

    public void setUsertime(String usertime) {
        this.usertime = usertime == null ? null : usertime.trim();
    }

    public String getDrivename() {
        return drivename;
    }

    public void setDrivename(String drivename) {
        this.drivename = drivename == null ? null : drivename.trim();
    }

    public String getDrivertime() {
        return drivertime;
    }

    public void setDrivertime(String drivertime) {
        this.drivertime = drivertime == null ? null : drivertime.trim();
    }

    public String getLicencenumber() {
        return licencenumber;
    }

    public void setLicencenumber(String licencenumber) {
        this.licencenumber = licencenumber == null ? null : licencenumber.trim();
    }

    public String getLicencestyle() {
        return licencestyle;
    }

    public void setLicencestyle(String licencestyle) {
        this.licencestyle = licencestyle == null ? null : licencestyle.trim();
    }

    public String getTranspotstyle() {
        return transpotstyle;
    }

    public void setTranspotstyle(String transpotstyle) {
        this.transpotstyle = transpotstyle == null ? null : transpotstyle.trim();
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman == null ? null : linkman.trim();
    }

    public String getLinkphone() {
        return linkphone;
    }

    public void setLinkphone(String linkphone) {
        this.linkphone = linkphone == null ? null : linkphone.trim();
    }

    public String getRmark() {
        return rmark;
    }

    public void setRmark(String rmark) {
        this.rmark = rmark == null ? null : rmark.trim();
    }

    public String getIssuedate() {
        return issuedate;
    }

    public void setIssuedate(String issuedate) {
        this.issuedate = issuedate == null ? null : issuedate.trim();
    }

    public String getAdduser() {
        return adduser;
    }

    public void setAdduser(String adduser) {
        this.adduser = adduser == null ? null : adduser.trim();
    }
}