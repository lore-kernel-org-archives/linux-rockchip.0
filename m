Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D97E9C71135
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 06:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmK62ivtaMhblpqFzzKqSz4/BDMTYTx5Y794iIoVI/Q=; b=j1UfCSddm4a/8+
	q1pyW6LGFwiYSRAAV7ueHptMuhZfESpxK6kswlgCIdspHyPfVLFo/yW1PsI6iXQdCxlhPHMB44GNu
	gujx8VHGgW97odjjA2v7oFHhw0eSF3SyTOjBJIYR5Hxoz/At90PHDs0WorI9DgNlUJ9gFuFcGCSwm
	iqB8d1IPqwEVpW066LIIiVU2tjYrD4OJVHKu0fSInsy7RzvPxhnrFofHki/XNcHIOxgJjN/djV9YF
	EEIt8++5EycrE9h0U40Pl4hlN/QoMetHDQnJKFl4/yBrlgHsoJ0KnjkP+D42mbQrUKtUM/1eX79Ea
	o1qrAZYTKxtG9KS3Oiiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyLi-0000000FX7h-3BYt;
	Fri, 13 Jun 2025 06:57:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyJR-0000000FWvJ-36iv;
	Fri, 13 Jun 2025 06:54:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 04F0844D6D;
	Fri, 13 Jun 2025 06:54:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F465C4CEF1;
	Fri, 13 Jun 2025 06:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749797692;
	bh=1s/szMVjHm2c5YpFJE4JzICjVT6sl1T+nHxY2oXfPJ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WeCuvtCG8iIXRXnhJ5iaXqjj6hBoLE9nJhyZji6mGfw9szRLL/Xy8f1ycbXigCuA0
	 WIpW3PtLH3zAaZyLQDW/cX2DUoNiB+goqVATpP01Qea3eOEg9GCgh5QexINECMGp/4
	 bPmFsLCXhGAn5t78RMVAqR6W2u5OnhX5B3lKZ9a6G2SDoFddyWs4dfw5Ocq1CuDinq
	 uAopszmsyYSwpmdYpIJZ0rWr3S3LJcRGpSwrTcMCvG/P2Y3G/kQX5hIKeMsmhv4bZr
	 2A6WingZ25Re1WjygPKDCtn1gR1UrNGiHyEPP2+pANoVrQDuNmOXqS/H9/DBebDa2/
	 2Ocmit6DjOuww==
Date: Fri, 13 Jun 2025 12:24:41 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, 
	heiko@sntech.de, manivannan.sadhasivam@linaro.org, yue.wang@amlogic.com, 
	pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, jingoohan1@gmail.com, 
	khilman@baylibre.com, jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 2/2] PCI: dwc: Remove redundant MPS configuration
Message-ID: <6v7m7qt4n26n6pmx5tggmmvv7na6t5v5wtfqev5x4wxosymwul@j3dizxyyy4tg>
References: <20250510155607.390687-1-18255117159@163.com>
 <20250510155607.390687-3-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250510155607.390687-3-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_235453_824504_AD18C8D3 
X-CRM114-Status: GOOD (  19.96  )
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

T24gU2F0LCBNYXkgMTAsIDIwMjUgYXQgMTE6NTY6MDdQTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiBUaGUgTWVzb24gUENJZSBjb250cm9sbGVyIGRyaXZlciBtYW51YWxseSBjb25maWd1cmVz
IG1heGltdW0gcGF5bG9hZAo+IHNpemUgKE1QUykgdGhyb3VnaCBtZXNvbl9zZXRfbWF4X3BheWxv
YWQsIGR1cGxpY2F0aW5nIGZ1bmN0aW9uYWxpdHkgbm93Cj4gY2VudHJhbGl6ZWQgaW4gdGhlIFBD
SSBjb3JlLiAgRGVwcmVjYXRpbmcgcmVkdW5kYW50IGNvZGUgc2ltcGxpZmllcyB0aGUKPiBkcml2
ZXIgYW5kIGFsaWducyBpdCB3aXRoIHRoZSBjb25zb2xpZGF0ZWQgTVBTIG1hbmFnZW1lbnQgc3Ry
YXRlZ3ksCj4gaW1wcm92aW5nIGxvbmctdGVybSBtYWludGFpbmFiaWxpdHkuCj4gCj4gU2lnbmVk
LW9mZi1ieTogSGFucyBaaGFuZyA8MTgyNTUxMTcxNTlAMTYzLmNvbT4KCkkgYmVsaWV2ZSB0aGF0
IHRoZSByb290IHBvcnQgTVBTIHNldCBieSBQQ0kgY29yZSBpbiBwYXRjaCAxIHNob3VsZCBiZSBl
bm91Z2ggdG8KcmVtb3ZlIHRoZSBsb2dpYyBpbiB0aGUgZHJpdmVyLiBCdXQgZ2l2ZW4gdGhhdCB3
ZSBhbHJlYWR5IHNhdyB0aGF0IGlzIG5vdCB0aGUKY2FzZSB3aXRoIEFybWFkYSBjb250cm9sbGVy
cywgaXQgd291bGQgYmUgZ29vZCBpZiBvbmUgb2YgdGhlIE1lc29uIG1haW50YWluZXJzCmNvdWxk
IHZlcmlmeSBpZiB0aGlzIHNlcmllcyB3b3JrcyBhcyBpbnRlbnRlZC4gU2luY2UgdGhlIGRyaXZl
ciBpcyBub3QgdXNpbmcgdGhlCkRFVkNBUCB2YWx1ZSwgYnV0IHVzaW5nIHRoZSBoYXJkY29kZWQg
dmFsdWUsIEknbSBzbGlnaHRseSB3b3JyaWVkIHRoYXQgc2V0dGluZwpNUFMgdmFsdWUgb3RoZXIg
dGhhbiAyNTYgd291bGQgaGF2ZSBhbnkgZG93bnNpZGUuCgpCdXQgYW55d2F5LCB0aGUgcm9vdCBw
b3J0IE1QUyBzaG91bGQgYmUgdGhlIHNhbWUgd2l0aCBhbmQgd2l0aG91dCB0aGlzIHNlcmllcy4K
VGhpcyBjYW4gYmUgdmVyaWZpZWQgYnk6CgpzdWRvIGxzcGNpIC12dnYgfCBncmVwIE1heFBheWxv
YWQKCkFsc28sIHBlcmZvcm1pbmcgYW55IGJlbmNobWFyayBhbmQgbWFraW5nIHN1cmUgdGhhdCB0
aGUgZGV2aWNlIHBlcmZvcm1hbmNlCmRpZG4ndCBnZXQgYWZmZWN0ZWQgd291bGQgYmUgZ3JlYXQu
CgotIE1hbmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1tZXNvbi5j
IHwgMTcgLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbWVzb24u
YyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1tZXNvbi5jCj4gaW5kZXggZGI5NDgy
YTExM2U5Li4xMjZmMzhlZDQ1M2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpLW1lc29uLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2kt
bWVzb24uYwo+IEBAIC0yNjEsMjIgKzI2MSw2IEBAIHN0YXRpYyBpbnQgbWVzb25fc2l6ZV90b19w
YXlsb2FkKHN0cnVjdCBtZXNvbl9wY2llICptcCwgaW50IHNpemUpCj4gIAlyZXR1cm4gZmxzKHNp
emUpIC0gODsKPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQgbWVzb25fc2V0X21heF9wYXlsb2FkKHN0
cnVjdCBtZXNvbl9wY2llICptcCwgaW50IHNpemUpCj4gLXsKPiAtCXN0cnVjdCBkd19wY2llICpw
Y2kgPSAmbXAtPnBjaTsKPiAtCXUzMiB2YWw7Cj4gLQl1MTYgb2Zmc2V0ID0gZHdfcGNpZV9maW5k
X2NhcGFiaWxpdHkocGNpLCBQQ0lfQ0FQX0lEX0VYUCk7Cj4gLQlpbnQgbWF4X3BheWxvYWRfc2l6
ZSA9IG1lc29uX3NpemVfdG9fcGF5bG9hZChtcCwgc2l6ZSk7Cj4gLQo+IC0JdmFsID0gZHdfcGNp
ZV9yZWFkbF9kYmkocGNpLCBvZmZzZXQgKyBQQ0lfRVhQX0RFVkNUTCk7Cj4gLQl2YWwgJj0gflBD
SV9FWFBfREVWQ1RMX1BBWUxPQUQ7Cj4gLQlkd19wY2llX3dyaXRlbF9kYmkocGNpLCBvZmZzZXQg
KyBQQ0lfRVhQX0RFVkNUTCwgdmFsKTsKPiAtCj4gLQl2YWwgPSBkd19wY2llX3JlYWRsX2RiaShw
Y2ksIG9mZnNldCArIFBDSV9FWFBfREVWQ1RMKTsKPiAtCXZhbCB8PSBQQ0lFX0NBUF9NQVhfUEFZ
TE9BRF9TSVpFKG1heF9wYXlsb2FkX3NpemUpOwo+IC0JZHdfcGNpZV93cml0ZWxfZGJpKHBjaSwg
b2Zmc2V0ICsgUENJX0VYUF9ERVZDVEwsIHZhbCk7Cj4gLX0KPiAtCj4gIHN0YXRpYyB2b2lkIG1l
c29uX3NldF9tYXhfcmRfcmVxX3NpemUoc3RydWN0IG1lc29uX3BjaWUgKm1wLCBpbnQgc2l6ZSkK
PiAgewo+ICAJc3RydWN0IGR3X3BjaWUgKnBjaSA9ICZtcC0+cGNpOwo+IEBAIC0zODEsNyArMzY1
LDYgQEAgc3RhdGljIGludCBtZXNvbl9wY2llX2hvc3RfaW5pdChzdHJ1Y3QgZHdfcGNpZV9ycCAq
cHApCj4gIAo+ICAJcHAtPmJyaWRnZS0+b3BzID0gJm1lc29uX3BjaV9vcHM7Cj4gIAo+IC0JbWVz
b25fc2V0X21heF9wYXlsb2FkKG1wLCBNQVhfUEFZTE9BRF9TSVpFKTsKPiAgCW1lc29uX3NldF9t
YXhfcmRfcmVxX3NpemUobXAsIE1BWF9SRUFEX1JFUV9TSVpFKTsKPiAgCj4gIAlyZXR1cm4gMDsK
PiAtLSAKPiAyLjI1LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
