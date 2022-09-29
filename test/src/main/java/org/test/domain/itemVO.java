package org.test.domain;

import org.apache.ibatis.session.ResultHandler;

public class itemVO {
    private String car_listno;
    private String car_name;
    private String car_brand;
    private String car_price;
    private String car_oil;
    private String car_num;
    private String car_type;
    private String car_location;

    private int viewPage = 1;

    private int startIndex = 0;
    private int endIndex = 0;

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public int getEndIndex() {
        return endIndex;
    }

    public void setEndIndex(int endIndex) {
        this.endIndex = endIndex;
    }

    public int getViewPage() {
        return viewPage;
    }

    public void setViewPage(int viewPage) {
        this.viewPage = viewPage;
    }

    private String car_oiltype;
    private String car_grade;

    public String getCar_oiltype() {
        return car_oiltype;
    }

    public void setCar_oiltype(String car_oiltype) {
        this.car_oiltype = car_oiltype;
    }

    public String getCar_grade() {
        return car_grade;
    }

    public void setCar_grade(String car_grade) {
        this.car_grade = car_grade;
    }

    public String getCar_listno() {
        return car_listno;
    }

    public void setCar_listno(String car_listno) {
        this.car_listno = car_listno;
    }

    public String getCar_name() {
        return car_name;
    }

    public void setCar_name(String car_name) {
        this.car_name = car_name;
    }

    public String getCar_brand() {
        return car_brand;
    }

    public void setCar_brand(String car_brand) {
        this.car_brand = car_brand;
    }

    public String getCar_price() {
        return car_price;
    }

    public void setCar_price(String car_price) {
        this.car_price = car_price;
    }

    public String getCar_oil() {
        return car_oil;
    }

    public void setCar_oil(String car_oil) {
        this.car_oil = car_oil;
    }

    public String getCar_num() {
        return car_num;
    }

    public void setCar_num(String car_num) {
        this.car_num = car_num;
    }

    public String getCar_type() {
        return car_type;
    }

    public void setCar_type(String car_type) {
        this.car_type = car_type;
    }

    public String getCar_location() {
        return car_location;
    }

    public void setCar_location(String car_location) {
        this.car_location = car_location;
    }
}

