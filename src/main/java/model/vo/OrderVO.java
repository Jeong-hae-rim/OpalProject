package model.vo;

//�ֹ� 
public class OrderVO {

 // �� �ڵ� 
 private String custCd;

 // �ֹ� �ڵ� 
 private String orderCd;

 // �ֹ� ��¥ 
 private String orderDate;

 // ��ǰ �ڵ� 
 private String productCd;

 public String getCustCd() {
     return custCd;
 }

 public void setCustCd(String custCd) {
     this.custCd = custCd;
 }

 public String getOrderCd() {
     return orderCd;
 }

 public void setOrderCd(String orderCd) {
     this.orderCd = orderCd;
 }

 public String getOrderDate() {
     return orderDate;
 }

 public void setOrderDate(String orderDate) {
     this.orderDate = orderDate;
 }

 public String getProductCd() {
     return productCd;
 }

 public void setProductCd(String productCd) {
     this.productCd = productCd;
 }

 // Order �� ����
 public void CopyData(OrderVO param)
 {
     this.custCd = param.getCustCd();
     this.orderCd = param.getOrderCd();
     this.orderDate = param.getOrderDate();
     this.productCd = param.getProductCd();
 }
}