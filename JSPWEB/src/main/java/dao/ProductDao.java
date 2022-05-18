package dao;

import java.util.ArrayList;

import dto.Category;
import dto.Product;
import dto.Stock;

public class ProductDao extends Dao{

	public ProductDao() {
		super(); // 슈퍼클래스 호출 ( db연동 )
			// super.메소드()  super.필드명	   super() : 생성자
	}
	public static ProductDao productDao = new ProductDao();
	public static ProductDao getproductDao() { return productDao; }
	// 메소드는 반환타입 에 따른 return 값 설정
				// 반환타입이 클래스이면 -> null , 객체명
				// 반환타입이 기본자료형이면 -> false , 0  , 2 , 0.1  
	///////////////////////////////////  카테고리 ////////////////////////
		// 1. 카테고리 등록 [ C ]
		public boolean csave(String cname) { 
			String sql = "insert into category(cname) values(?)";
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, cname);
				ps.executeUpdate();
				return true;
			}catch(Exception e) {e.printStackTrace();}
			return false;
			}
		// 2. 카테고리 호출 [ R ] 
		public ArrayList<Category> getcategorylist(){ 
			ArrayList<Category> list = new ArrayList<Category>();
			String sql = "select * from category";
			try {
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					Category cat = new Category(rs.getInt(1), rs.getString(2));
					list.add(cat);
				}
				return list;
			}catch(Exception e) {e.printStackTrace();}
			return null;
			}
		// 3. 카테고리 수정 [ U ] 
		// 4. 카테고리 삭제 [ D ]
	///////////////////////////////////  제품 ////////////////////////////////	
		// 1. 제품 등록 
		public boolean psave(Product p) { 
			String sql = "insert into product(pname, pprice, pdiscount, pimg, cno) values(?,?,?,?,?)";
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, p.getPname());
				ps.setInt(2, p.getPprice());
				ps.setFloat(3, p.getPdiscount());
				ps.setString(4, p.getPimg());
				ps.setInt(5, p.getCno());
				ps.executeUpdate();
				return true;
			}catch(Exception e) {e.printStackTrace();}
			
			return false;
}
		// 2. 제품 모든 호출
		public ArrayList<Product> getproductlist() { 
			ArrayList<Product> list = new ArrayList<Product>();
			String sql = "select * from product";
			try {
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					Product p = new Product
							(rs.getInt(1), rs.getString(2),
							 rs.getInt(3), rs.getFloat(4),
							 rs.getInt(5), rs.getString(6),
							 rs.getInt(7) );
					list.add(p);
				}
				return list;
			}catch(Exception e) {e.printStackTrace();}
			return null; 
			}
		// 3. 제품 개별 호출 
		public Product getproduct(int pno) {
			String sql = "select * from product where pno=" + pno;
			try {
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					Product p = new Product
							(rs.getInt(1), rs.getString(2),
							 rs.getInt(3), rs.getFloat(4),
							 rs.getInt(5), rs.getString(6),
							 rs.getInt(7) );
					return p;
				}
				
			}catch(Exception e) {e.printStackTrace();} 
			return null; }
		// 4. 제품 수정 
		// 4-2 제품 상태 변경
		public boolean activechange(int pno, int active) {
			String sql = "update product set pactive = ? where pno = ?";
			try {
				ps = con.prepareStatement(sql);
				ps.setInt(1, active);
				ps.setInt(2, pno);
				ps.executeUpdate();
				return true;
			}catch(Exception e) {e.printStackTrace();}
			return false;
		}
		// 5. 제품 삭제 
	///////////////////////////////////  재고 ////////////////////////////////	
		// 1. 제품의 재고 등록 
		public boolean ssave(Stock stock) { 
			try {
				String sql = "insert into stock(scolor, ssize, samount, pno) values(?,?,?,?)";
				ps = con.prepareStatement(sql);
				ps.setString(1, stock.getScolor());
				ps.setString(2, stock.getSsize());
				ps.setInt(3, stock.getSamount());
				ps.setInt(4, stock.getPno());
				ps.executeUpdate();
				return true;
			}catch(Exception e) {e.printStackTrace();}
			return false; }
		// 2. 제품의 재고 호출 
		public ArrayList<Stock> getStock(int pno ) { 
			ArrayList<Stock> stocks = new ArrayList<Stock>();
			String sql = "select * from stock where pno = "+pno;
			try {
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while (rs.next()) {
					Stock stock = new Stock( 
							rs.getInt(1), rs.getString(2),
							rs.getString(3), rs.getInt(4),
							rs.getString(5), rs.getString(6),
							rs.getInt(7));
					stocks.add(stock);
				} return stocks;
			}catch(Exception e ) {e.printStackTrace();} 
			return null;
			}
		// 3. 제품의 재고 수정 
		public boolean stockupdate( int sno , int samount ) {
			String sql = "update stock set samount = "+samount+" where sno="+sno;
			try {
				ps = con.prepareStatement(sql);
				ps.executeUpdate(); return true;
			}catch (Exception e) { System.out.println( e ); } return false;
			
		}
		// 4. 제품의 재고 삭제
	//////////////////////////////////////////////////////////////////////////
		
		// 카테고리 num으로 카테고리 id 추출
		public String getcname(int cno) {
			String sql = "select cname from category where cno=?";
			try {
				ps = con.prepareStatement(sql);
				ps.setInt(1, cno);
				rs = ps.executeQuery();
				if(rs.next()) {
					return rs.getString(1);
				}
			} catch(Exception e) {e.printStackTrace();}
			return null;
		}
		
		////////// 관심상품 등록 및 취소
		public int saveplike(int pno, int mno) {
			String sql = "select plikeno from plike where pno =? and mno = ?";
			try {
				ps = con.prepareStatement(sql);
				ps.setInt(1, pno);
				ps.setInt(2, mno);
				rs = ps.executeQuery();
				
				if(rs.next()) {
					sql = "delete from plike where plikeno ="+rs.getInt(1);
					ps = con.prepareStatement(sql);
					ps.executeUpdate();
					return 1;
					}
				else {
					sql = "insert into plike(pno, mno)values (?,?)";
					ps = con.prepareStatement(sql);
					ps.setInt(1, pno);
					ps.setInt(2, mno);
					ps.executeUpdate();
					return 2;
				}
				
			} catch(Exception e) {e.printStackTrace();}
			
			return 3;
		}
		public boolean getplike(int pno, int mno) {
			String sql = "select * from plike where pno =? and mno = ?";
			try {
				ps = con.prepareStatement(sql);
				ps.setInt(1, pno);
				ps.setInt(2, mno);
				rs = ps.executeQuery();
				if(rs.next()) return true;
			}catch(Exception e) {e.printStackTrace();}
			return false;
		}
		
		//////////장바구니 등록 및 취소
		public int shopadd(int pno, int mno) {
			String sql = "select shopno from shop where pno =? and mno = ?";
			try {
				ps = con.prepareStatement(sql);
				ps.setInt(1, pno);
				ps.setInt(2, mno);
				rs = ps.executeQuery();
				
				if(rs.next()) {
					sql = "delete from shop where shopno ="+rs.getInt(1);
					ps = con.prepareStatement(sql);
					ps.executeUpdate();
					return 1;
					}
				else {
					sql = "insert into shop(pno, mno)values (?,?)";
					ps = con.prepareStatement(sql);
					ps.setInt(1, pno);
					ps.setInt(2, mno);
					ps.executeUpdate();
					return 2;
				}
				
			} catch(Exception e) {e.printStackTrace();}
			
			return 3;
		}
		public boolean getshop(int pno, int mno) {
			String sql = "select * from shop where pno =? and mno = ?";
			try {
				ps = con.prepareStatement(sql);
				ps.setInt(1, pno);
				ps.setInt(2, mno);
				rs = ps.executeQuery();
				if(rs.next()) return true;
			}catch(Exception e) {e.printStackTrace();}
			return false;
		}
}
