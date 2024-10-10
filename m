Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7309BCF07BA
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 07:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uudZUsnT23//KfnbyrEORY9X2ICFmQ99AsmYjgrK+es=; b=G1W+oraxW1AFQB
	j7zkctlnf1NtsrRKQqxf1PUuGCrRmMr5hjeAnRdfzzhMpts1oa5UPu+CFgecMMYxBRyiyNJMNPTJ5
	UHZqYugw9njgs/YH1OngJ2n5di0eJ8J/THNg9lR1IKq7Wa1soTFbTF4/qaGfTKYSJUG+qVmxm3Kyu
	fdMMYDI6EWnC+ezrzH8cAHHC3M6EIkjvwv0nm00++0pmQSfV1oKFimth9GzXuqIubYKbOLlT1BOon
	5bGe3gvQPayce6ywcacoVbJWFT8ob4ZqzGms+ZixHP/t1Dlmk/5Etow1pCkRa7r5UZ3yCx1iGwGeO
	aQeQWlBn9aiHj1YW94sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syntH-0000000Brz6-2wDW;
	Thu, 10 Oct 2024 07:47:19 +0000
Received: from mail-il1-x132.google.com ([2607:f8b0:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1synXz-0000000BpXy-2zuZ
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 07:25:29 +0000
Received: by mail-il1-x132.google.com with SMTP id e9e14a558f8ab-3a340f9dd8aso3573205ab.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 00:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728545119; x=1729149919; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BO+u3ghty2SDKH2fR1oqf2j9fR+PWCSBsyfFPVtqMF8=;
        b=zkEDaWo8/dMfF5JjA0Ovcw0IKm/ixWihbuE3IYdYMAnoHuKb3f07LwEZ6DeiPFNjEd
         b1F3xrbgyAYOc+rKgyAMfYjfoBbQRYubD3PyYCqzZ72jspWnQdC/o6UfW1TV5w9gBARN
         hFIUy9rUpCRgl5RA8C69heCLKXCwFCuOBTmPAwtLZiv11Wcue6J54wchNXufDsIK8Kys
         hooObhgtBLKBytuiRDSF5uJKRLoDz2gTq8SNGP1vbagbYxvRLm/mp3MebaADZV1yEU6n
         nw/hQICS+ERcAu6BQ8DYwpdJzJLF41kLZ9OEeFqS3B5Da7sWJ/k3Q+vnfjLc7lO2ZPSp
         U7uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728545119; x=1729149919;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BO+u3ghty2SDKH2fR1oqf2j9fR+PWCSBsyfFPVtqMF8=;
        b=xHlM+zcD4YK9itghUGdN3xTe38cH2tPZxH9JfobrY31WrdRc+7VApJP5gBQV1RaVyd
         sONRZzZlNg7xM5RGMbuCIY8t7sEItH3PdLt0jb/eKonL8y9VbCafMGLXqJxqVQuLPXKp
         5kVW7mJvK96UGjK2iNn/0JVIwqca+Na7scYb4q3HCmkqkamj9tXgTm4oSg+lJuYSr1HV
         PJwki6X+6ruftqOakCAR04B1ykoPpp1d27PETZH/A6+EX3pTY5gUmaHOCmWvajxoYHgp
         ETvlvvx+ZGZp2zMF93tWxNJRB3Wx3tJ2gr2+sQzhu8Gh8hi971g58TK3B5TWtUGf5pTL
         AePg==
X-Forwarded-Encrypted: i=1; AJvYcCWRE1IXV6jxWxDG9PVLiSzkbwN63MKlk/hybeFfjTUzDDapU0u78jgYUOhJd4+KKKjhUrWamypVjw/s0ML46Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyxf7LqhVtKAJauaedvI+sgpDvWfXFkRfyk0KyT0CA3Xf1yeydx
	Dbn5ls9pYZjyAaGq15qKRoKjk/ysmWeZPmIsU4SZi5pwE2QWu4+A47SxgPOKhA==
X-Google-Smtp-Source: AGHT+IGFCNg/ceeWHNg7TkO0QNW/H0HtnhU7s4ZYJ79wDwVdugpPuxIb48ke9Tn5c8L+FXGGlC1wtg==
X-Received: by 2002:a05:6e02:1aa3:b0:3a0:a3cd:f239 with SMTP id e9e14a558f8ab-3a397cfc376mr56477995ab.8.1728545118678;
        Thu, 10 Oct 2024 00:25:18 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ea449596c8sm494289a12.71.2024.10.10.00.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 00:25:18 -0700 (PDT)
Date: Thu, 10 Oct 2024 12:55:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 07/12] PCI: rockchip-ep: Refactor
 rockchip_pcie_ep_probe() MSI-X hiding
Message-ID: <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-8-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-8-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_002519_810124_45C0955A 
X-CRM114-Status: GOOD (  24.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MTNQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gTW92ZSB0aGUgY29kZSBpbiByb2NrY2hpcF9wY2llX2VwX3Byb2JlKCkgdG8gaGlk
ZSB0aGUgTVNJLVggY2FwYWJpbGl0eQo+IHRvIGl0cyBvd24gZnVuY3Rpb24sIHJvY2tjaGlwX3Bj
aWVfZXBfaGlkZV9tc2l4X2NhcCgpLiBObyBmdW5jdGlvbmFsCj4gY2hhbmdlcy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJuZWwub3JnPgoKUmV2aWV3ZWQt
Ynk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5v
cmc+CgpCdHcsIGNhbiBzb21lb25lIGZyb20gUm9ja2NoaXAgY29uZmlybSBpZiB0aGlzIGhpZGlu
ZyBpcyBuZWNlc3NhcnkgZm9yIGFsbCB0aGUKU29Dcz8gSXQgbG9va3MgdG8gbWUgbGlrZSBhbiBT
b0MgcXVpcmsuCgotIE1hbmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1y
b2NrY2hpcC1lcC5jIHwgNTQgKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDMwIGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYyBiL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gaW5kZXggNTIzZTljZGZkMjQxLi43YTE3OThm
Y2MyYWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlw
LWVwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+
IEBAIC01ODEsNiArNTgxLDM0IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZXBfcmVsZWFz
ZV9yZXNvdXJjZXMoc3RydWN0IHJvY2tjaGlwX3BjaWVfZXAgKmVwKQo+ICAJcGNpX2VwY19tZW1f
ZXhpdChlcC0+ZXBjKTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9lcF9o
aWRlX21zaXhfY2FwKHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiArewo+ICsJdTMy
IGNmZ19tc2ksIGNmZ19tc2l4X2NwOwo+ICsKPiArCS8qCj4gKwkgKiBNU0ktWCBpcyBub3Qgc3Vw
cG9ydGVkIGJ1dCB0aGUgY29udHJvbGxlciBzdGlsbCBhZHZlcnRpc2VzIHRoZSBNU0ktWAo+ICsJ
ICogY2FwYWJpbGl0eSBieSBkZWZhdWx0LCB3aGljaCBjYW4gbGVhZCB0byB0aGUgUm9vdCBDb21w
bGV4IHNpZGUKPiArCSAqIGFsbG9jYXRpbmcgTVNJLVggdmVjdG9ycyB3aGljaCBjYW5ub3QgYmUg
dXNlZC4gQXZvaWQgdGhpcyBieSBza2lwcGluZwo+ICsJICogdGhlIE1TSS1YIGNhcGFiaWxpdHkg
ZW50cnkgaW4gdGhlIFBDSWUgY2FwYWJpbGl0aWVzIGxpbmtlZC1saXN0OiBnZXQKPiArCSAqIHRo
ZSBuZXh0IHBvaW50ZXIgZnJvbSB0aGUgTVNJLVggZW50cnkgYW5kIHNldCB0aGF0IGluIHRoZSBN
U0kKPiArCSAqIGNhcGFiaWxpdHkgZW50cnkgKHdoaWNoIGlzIHRoZSBwcmV2aW91cyBlbnRyeSku
IFRoaXMgd2F5IHRoZSBNU0ktWAo+ICsJICogZW50cnkgaXMgc2tpcHBlZCAobGVmdCBvdXQgb2Yg
dGhlIGxpbmtlZC1saXN0KSBhbmQgbm90IGFkdmVydGlzZWQuCj4gKwkgKi8KPiArCWNmZ19tc2kg
PSByb2NrY2hpcF9wY2llX3JlYWQocm9ja2NoaXAsIFBDSUVfRVBfQ09ORklHX0JBU0UgKwo+ICsJ
CQkJICAgICBST0NLQ0hJUF9QQ0lFX0VQX01TSV9DVFJMX1JFRyk7Cj4gKwo+ICsJY2ZnX21zaSAm
PSB+Uk9DS0NISVBfUENJRV9FUF9NU0lfQ1AxX01BU0s7Cj4gKwo+ICsJY2ZnX21zaXhfY3AgPSBy
b2NrY2hpcF9wY2llX3JlYWQocm9ja2NoaXAsIFBDSUVfRVBfQ09ORklHX0JBU0UgKwo+ICsJCQkJ
CSBST0NLQ0hJUF9QQ0lFX0VQX01TSVhfQ0FQX1JFRykgJgo+ICsJCQkJCSBST0NLQ0hJUF9QQ0lF
X0VQX01TSVhfQ0FQX0NQX01BU0s7Cj4gKwo+ICsJY2ZnX21zaSB8PSBjZmdfbXNpeF9jcDsKPiAr
Cj4gKwlyb2NrY2hpcF9wY2llX3dyaXRlKHJvY2tjaGlwLCBjZmdfbXNpLAo+ICsJCQkgICAgUENJ
RV9FUF9DT05GSUdfQkFTRSArIFJPQ0tDSElQX1BDSUVfRVBfTVNJX0NUUkxfUkVHKTsKPiArfQo+
ICsKPiAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gIHsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4g
QEAgLTU4OCw3ICs2MTYsNiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2Nr
Y2hpcDsKPiAgCXN0cnVjdCBwY2lfZXBjICplcGM7Cj4gIAlpbnQgZXJyOwo+IC0JdTMyIGNmZ19t
c2ksIGNmZ19tc2l4X2NwOwo+ICAKPiAgCWVwID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpl
cCksIEdGUF9LRVJORUwpOwo+ICAJaWYgKCFlcCkKPiBAQCAtNjE5LDYgKzY0Niw4IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfcGNpZV9lcF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ICAJaWYgKGVycikKPiAgCQlnb3RvIGVycl9kaXNhYmxlX2Nsb2NrczsKPiAgCj4gKwlyb2Nr
Y2hpcF9wY2llX2VwX2hpZGVfbXNpeF9jYXAocm9ja2NoaXApOwo+ICsKPiAgCS8qIEVzdGFibGlz
aCB0aGUgbGluayBhdXRvbWF0aWNhbGx5ICovCj4gIAlyb2NrY2hpcF9wY2llX3dyaXRlKHJvY2tj
aGlwLCBQQ0lFX0NMSUVOVF9MSU5LX1RSQUlOX0VOQUJMRSwKPiAgCQkJICAgIFBDSUVfQ0xJRU5U
X0NPTkZJRyk7Cj4gQEAgLTYyNiwyOSArNjU1LDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2ll
X2VwX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkvKiBPbmx5IGVuYWJs
ZSBmdW5jdGlvbiAwIGJ5IGRlZmF1bHQgKi8KPiAgCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2No
aXAsIEJJVCgwKSwgUENJRV9DT1JFX1BIWV9GVU5DX0NGRyk7Cj4gIAo+IC0JLyoKPiAtCSAqIE1T
SS1YIGlzIG5vdCBzdXBwb3J0ZWQgYnV0IHRoZSBjb250cm9sbGVyIHN0aWxsIGFkdmVydGlzZXMg
dGhlIE1TSS1YCj4gLQkgKiBjYXBhYmlsaXR5IGJ5IGRlZmF1bHQsIHdoaWNoIGNhbiBsZWFkIHRv
IHRoZSBSb290IENvbXBsZXggc2lkZQo+IC0JICogYWxsb2NhdGluZyBNU0ktWCB2ZWN0b3JzIHdo
aWNoIGNhbm5vdCBiZSB1c2VkLiBBdm9pZCB0aGlzIGJ5IHNraXBwaW5nCj4gLQkgKiB0aGUgTVNJ
LVggY2FwYWJpbGl0eSBlbnRyeSBpbiB0aGUgUENJZSBjYXBhYmlsaXRpZXMgbGlua2VkLWxpc3Q6
IGdldAo+IC0JICogdGhlIG5leHQgcG9pbnRlciBmcm9tIHRoZSBNU0ktWCBlbnRyeSBhbmQgc2V0
IHRoYXQgaW4gdGhlIE1TSQo+IC0JICogY2FwYWJpbGl0eSBlbnRyeSAod2hpY2ggaXMgdGhlIHBy
ZXZpb3VzIGVudHJ5KS4gVGhpcyB3YXkgdGhlIE1TSS1YCj4gLQkgKiBlbnRyeSBpcyBza2lwcGVk
IChsZWZ0IG91dCBvZiB0aGUgbGlua2VkLWxpc3QpIGFuZCBub3QgYWR2ZXJ0aXNlZC4KPiAtCSAq
Lwo+IC0JY2ZnX21zaSA9IHJvY2tjaGlwX3BjaWVfcmVhZChyb2NrY2hpcCwgUENJRV9FUF9DT05G
SUdfQkFTRSArCj4gLQkJCQkgICAgIFJPQ0tDSElQX1BDSUVfRVBfTVNJX0NUUkxfUkVHKTsKPiAt
Cj4gLQljZmdfbXNpICY9IH5ST0NLQ0hJUF9QQ0lFX0VQX01TSV9DUDFfTUFTSzsKPiAtCj4gLQlj
ZmdfbXNpeF9jcCA9IHJvY2tjaGlwX3BjaWVfcmVhZChyb2NrY2hpcCwgUENJRV9FUF9DT05GSUdf
QkFTRSArCj4gLQkJCQkJIFJPQ0tDSElQX1BDSUVfRVBfTVNJWF9DQVBfUkVHKSAmCj4gLQkJCQkJ
IFJPQ0tDSElQX1BDSUVfRVBfTVNJWF9DQVBfQ1BfTUFTSzsKPiAtCj4gLQljZmdfbXNpIHw9IGNm
Z19tc2l4X2NwOwo+IC0KPiAtCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIGNmZ19tc2ks
Cj4gLQkJCSAgICBQQ0lFX0VQX0NPTkZJR19CQVNFICsgUk9DS0NISVBfUENJRV9FUF9NU0lfQ1RS
TF9SRUcpOwo+IC0KPiAgCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIFBDSUVfQ0xJRU5U
X0NPTkZfRU5BQkxFLAo+ICAJCQkgICAgUENJRV9DTElFTlRfQ09ORklHKTsKPiAgCj4gLS0gCj4g
Mi40Ni4yCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
