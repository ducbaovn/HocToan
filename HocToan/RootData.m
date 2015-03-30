//
//  RootData.m
//  HocToan
//
//  Created by MAC on 2/10/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "RootData.h"
#import "ChuongTrinhHoc.h"
#import "TraThuatNgu.h"
#import "BaiTapTracNghiem.h"
#import "NoiDungBaiTap.h"
#import "Sach.h"


@implementation RootData

- (instancetype) init {
    self = [super init];
    if (self){
        
        NSString *bai1 = @"Bài 1: Phép Cộng\nConcurrencyProgrammingGuide";
        NSString *bai2 = @"Bài 2: Phép Trừ\nConcurrencyProgrammingGuide";
        NSString *bai3 = @"Bài 3: Phép Nhân\nConcurrencyProgrammingGuide";
        NSString *bai4 = @"Bài 4: Phép Chia\nConcurrencyProgrammingGuide";
        NSArray *chuongTrinhHocData = @[bai1, bai2, bai3, bai4];

        
        NSString *thuatNgu1 = @"Activity ratios\nThese ratios are called Turnover ratios or performance ratios. These ratios are employed to evaluate the efficiency with which the firm manages and utilises its assets. These ratios usually indicate the frequency of sales with respect to its assets. Types of Activity ratios are:1. Capital Turnover Ratio = Sales / Capital Employed - This ratio indicates the firm’s ability of generating sales per rupee of long term investments. The higher the ratio, the more efficient utilization of owner’s and long term creditor’s funds.  2. Fixed Assets turnover Ratio = Sales / Capital Assets.3. Working Capital Turnover = Sales / Working Capital - Working Capital Turnover is further segregated into Inventory Turnover Ratio, Debtors Turnover Ratio, Creditors Turnover Ratio";
        NSString *thuatNgu2 = @"Aging schedule\nA report showing how long accounts receivables have been outstanding.";
        NSString *thuatNgu3 = @"Amalgamation\nAn arrangement, whereby the assets and liabilities of 2 or more companies (AmalgamatingCos) are vested in another(AmalgamatedCo)AmalgamatingCos lose their identity and emerge as the AmalgamatedCo; though in certain transaction structures the amalgamated company may or may not be one of the original companies";
        NSString *thuatNgu4 = @"Beta\nA measure of market risk (non-diversifiable), which is the extent to which the returns on a given stock moves with the stock market.";
        NSString *thuatNgu5 = @"Buy-out/takeover\nA measure of market risk (non-diversifiable), which is the extent to which the returns on a given stock moves with the stock market.";
        NSString *thuatNgu6 = @"Capital employed\nCapital Employed = Equity Share Capital + Reserves and Surplus + Preference Share Capital + Debentures and other Long Term Loans -  Miscellaneous Expenditure and Losses -  Non Trade Investment Intangible assets should be included but no fictitious assets should be included within CE.";
        NSString *thuatNgu7 = @"Capital structure ratios\nThese ratios provide an insight into the financing techniques used by a business and focus, as a consequence on the long term solvency position. It shows the relative weight of different sources. Equity means paid up share capital including preference share capital and reserves. Three popularly used Capital Structure Ratios. 1. A. Proprietary or Equity Ratio = Shareholders’ Equity / Total Capital Employed or Total Assets. 2. Debt Ratio= Total Debt / Capital Employed.  3. Debt to Equity Ratio= Total Long-term Debt / Shareholders Funds";
        NSString *thuatNgu8 = @"Capital structure/leverage ratios\nThey measure the long –term stability and structure of the firm. These ratios indicate the mix of funds provided by the owners and lenders and assure the lenders of the long -term funds with regard to: - Periodic payment of interest during the period of the loan and- Repayment of the principal amount on maturity.They are divided in two categories1. Capital Structure Ratios 2. Coverage Ratios";
        NSString *thuatNgu9 = @"Cash conversion cycle\nIt is the total time duration between when the company makes the payment and receives cash inflows from revenue.";
        NSString *thuatNgu10 = @"CAGR\nThe year-over-year growth rate of an investment over a specified period of time. The compound annual growth rate is calculated by taking the nth root of the total percentage growth rate, where n is the number of years in the period being considered.";
        NSString *thuatNgu11 = @"Conglomerate takeover\nTakeover of one company by another company operating in totally different industries. The main purpose of this kind of takeover is diversification";
        NSString *thuatNgu12 = @"Coverage ratios\nNormally available out of which these claims are to be paid.1. Debt Service Coverage Ratio= Earnings available for debt service / (Interest + instalments) -  Lenders are interested in debt service coverage ratio to judge the firms ability to pay off current interest and instalments 2. Interest Coverage Ratio: EBIT / Interest - It is also known as times interest earned ratio indicates the firm’s ability to meet interest (and other fixed charges) obligations 3. Capital Gearing Ratio = (Preference Share Capital+ Debenture + Long term loan) / (Equity Share Capital + Reserve and surplus – Losses) - It is calculated to show the proportion of fixed interest (dividend) bearing capital to funds belonging to Equity Shareholders4. Proprietary Ratio = Proprietary Fund / Total AssetsProprietary fund = Equity Share Capital + Preference Share Capital + Reserve and Surplus – Fictitious Assets and Accumulated losses";
        NSString *thuatNgu13 = @"Current ratios\nCurrent Assets / Current Liabilities. It is one of the best known measures of financial strength or we can say that it is a general and quick measure of liquidity of a firm. It represents the margin of safety or cushion available to the creditors. It shows the technical solvency and the strength of working capital.";
        NSArray *thuatNgudata = @[thuatNgu1, thuatNgu2, thuatNgu3, thuatNgu4, thuatNgu5, thuatNgu6, thuatNgu7, thuatNgu8, thuatNgu9, thuatNgu10, thuatNgu11, thuatNgu12, thuatNgu13];
        
        
        NSString *loaiBaiTap = @"Bài 1: Phép cộng";
        NSString *cau1 = @"A group of radio buttons is implemented with an NSMatrix object that contains several NSButtonCell instances and has a tracking mode of NSRadioModeMatrix. Whenever one of the matrix’s buttons is clicked,\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau2 = @"1 + 1 = xA group of radio buttons is implemented with an NSMatrix object\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau3 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau4 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau5 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau6 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau7 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau8 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau9 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau10 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau11 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau12 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau13 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau14 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau15 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau16 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau17 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau18 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau19 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSString *cau20 = @"1 + 1 = x\na) x = 0\nb) x = 1\nc) x = 2\nd) x = 3\n3";
        NSArray *noiDungBaiTapData = @[loaiBaiTap, cau1, cau2, cau3, cau4,cau5, cau6, cau7, cau8, cau9, cau10, cau11, cau12, cau13, cau14, cau15, cau16, cau17, cau18, cau19, cau20];
        NoiDungBaiTap *baiTap1 = [[NoiDungBaiTap alloc]initWithData: noiDungBaiTapData];
        NoiDungBaiTap *baiTap2 = [[NoiDungBaiTap alloc]initWithData: noiDungBaiTapData];
        NoiDungBaiTap *baiTap3 = [[NoiDungBaiTap alloc]initWithData: noiDungBaiTapData];
        NoiDungBaiTap *baiTap4 = [[NoiDungBaiTap alloc]initWithData: noiDungBaiTapData];
        NSArray *baiTapTracNghiemData = @[baiTap1, baiTap2, baiTap3, baiTap4];
        
        
        NSArray *sachData = @[@"Cấu Trúc Dữ Liệu Và Giải Thuật\nNguyễn Trung Trực\nNXB ĐHQG TPHCM\n2008",
          @"Cấu Trúc Dữ Liệu Và Giải Thuật\nNguyễn Trung Trực\nNXB ĐHQG TPHCM\n2008",
          @"Cấu Trúc Dữ Liệu Và Giải Thuật\nNguyễn Trung Trực\nNXB ĐHQG TPHCM\n2008",
          @"Cấu Trúc Dữ Liệu Và Giải Thuật\nNguyễn Trung Trực\nNXB ĐHQG TPHCM\n2008",
          @"Cấu Trúc Dữ Liệu Và Giải Thuật\nNguyễn Trung Trực\nNXB ĐHQG TPHCM\n2008"];
        
        
        ChuongTrinhHoc *chuongTrinhHoc = [[ChuongTrinhHoc alloc]initWithData: chuongTrinhHocData];
        TraThuatNgu *traThuatNgu = [[TraThuatNgu alloc] initWithData: thuatNgudata];
        BaiTapTracNghiem *baiTapTracNghiem = [[BaiTapTracNghiem alloc]initWithData: baiTapTracNghiemData];
        Sach *sachThamKhao = [[Sach alloc]initWithData: sachData];
        
        self.data = [NSArray arrayWithObjects: chuongTrinhHoc, traThuatNgu, baiTapTracNghiem, sachThamKhao, nil];
        self.cellData = @[@"Chương Trình Học",
                          @"Tra Cứu Thuật Ngữ",
                          @"Bài Tập Trắc Nghiệm",
                          @"Sách Tham Khảo"];
    }
    return self;
}

@end
