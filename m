Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 221E3C04FF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 06:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZO/NE380a1ypOBuPol4395/N0uJcv2gyOlJD4FPwDOU=; b=LvHEpkt5yZMsNBJjnJhVGaMuZC
	LVvRy5KUrhQWs3uoah8YOTe8PMoRPSP9RcJHVmkO+naP0w5yh8uABSjjj4eBCeslE/evNbEt3gRTy
	QGTZLzl6K2kf5usMspIybDPefUidJYjYM9jOv3oH9tfUE9Y2GRc8iapFeDmcVvztWMyOvTD07f3Mc
	v7mbxGVoi6lKfU0kW3gNGJI2hdXTbAjmj6P20qkHByT/9LuTU1UZ2v/l0CJPrxz2XYO3uEKFz0V4i
	cWohSF/N6fArxRTvZrWLfq+kB4sVxo0nxx7yui0tHo2dHo9GyTAQGvIhyKr3Z2ebsA6rv3/IlVO/F
	fS4lXosw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxLLR-000000018G5-3H5S;
	Thu, 18 Apr 2024 06:34:05 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxLLN-000000018EF-2746;
	Thu, 18 Apr 2024 06:34:03 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713422038;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FJfHenXGscRQCfMOH93v/ydARNP1MmiUsLyM1PnpdpI=;
	b=HuxvxZ+vIQDChoGpBAoPM4zf+SQyTRodNZa4WDHc57jd0ZUM/VJWKclmWAsxiZJuLXa+ct
	M5m1O3JiEw1m4cjZ2Gs8fwdV2qP7VYXnl4p4e82vFQfnKdHU4nfwiwzRPOh9YIcJMYxcfP
	7QsT+PypYWMtnaAmV+lZVzeXTWvQBB/CBqJux2cGtCNB0UIn5X/UhAvOGJDcObD3LWccoc
	TKrTFyM0C8mPtyUn4pOetsyAkYMxQSj3IQQoB4i+MWRpb4kG4VZTfEObXflmCf6MxYRiaj
	AerknqM00o7STOBNGTl+A5GWcZ9V8X0pVYVuC4lP7bUW/ast1hQQZcbpUJuNLQ==
Date: Thu, 18 Apr 2024 08:33:55 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, jonas@kwiboo.se, conor+dt@kernel.org,
 devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ROCK3 Model C
In-Reply-To: <9e915ef29a2b49ce56446ec9d474eb64@manjaro.org>
References: <d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se>
 <20240417133016.62753-1-amadeus@jmu.edu.cn>
 <a144c052fcc2460a615a754a64a8f739@manjaro.org>
 <B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com>
 <9e915ef29a2b49ce56446ec9d474eb64@manjaro.org>
Message-ID: <ebf7b5f5ff4cd3c8cbee36f35df6ef5d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_233401_856485_139D390B 
X-CRM114-Status: GOOD (  16.41  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gYWxsLAoKT24gMjAyNC0wNC0xOCAwNzo1NSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9u
IDIwMjQtMDQtMTggMDc6NTIsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+IHRoaXMgaXMgTmFva2kg
QCBSYWR4YS4KPj4gCj4+IHRoYW5rIHlvdSBmb3IgeW91ciBncmVhdCB3b3JrIQo+PiAKPj4gT24g
NC8xOC8yNCAwMjowMiwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj4gSGVsbG8gQ2h1a3VuLAo+Pj4g
Cj4+PiBPbiAyMDI0LTA0LTE3IDE1OjMwLCBDaHVrdW4gUGFuIHdyb3RlOgo+Pj4+IEhpIEpvbmFz
LAo+Pj4+Pj4gK8KgwqDCoCBtb2RlbCA9ICJSYWR4YSBST0NLMyBNb2RlbCBDIjsKPj4+Pj4gCj4+
Pj4+IFRoZSBtYXJrZXRpbmcgbmFtZSBzZWVtcyB0byBiZSAiUmFkeGEgUk9DSyAzQyIgYWNjb3Jk
aW5nIHRvIHRoZSAKPj4+Pj4gcHJvZHVjdAo+Pj4+PiBwYWdlIGF0IFsxXS4KPj4+Pj4gCj4+Pj4+
IFsxXSBodHRwczovL3JhZHhhLmNvbS9wcm9kdWN0cy9yb2NrMy8zYwo+Pj4+IAo+Pj4+IEFjY29y
ZGluZyB0byBodHRwczovL3dpa2kucmFkeGEuY29tL1JvY2szLzNjICwgaXQgc2hvdWxkIGJlIGNh
bGxlZAo+Pj4+ICJSYWR4YSBST0NLIDMgTW9kZWwgQyIuIEkgY29waWVkIHJvY2szYSBoZXJlIHdp
dGhvdXQgcGF5aW5nIAo+Pj4+IGF0dGVudGlvbi4KPj4gCj4+IHNvcnJ5LCB3aWtpLnJhZHhhLmNv
bSBpcyBvdXRkYXRlZC4KPj4gCj4+IGRvY3MucmFkeGEuY29tIGlzIGNvcnJlY3Qgb25lIGFuZCBt
YWludGFpbmVkLgo+PiAoYnV0IGl0IHN0aWxsIGhhcyBzb21lIGVycm9ycywgc29ycnkpCj4+IAo+
Pj4gSWYgSSBtYXkgaW50ZXJqZWN0LCBoZXJlJ3MgdGhlIHJlc3VsdCBvZiBhIHF1aWNrIHFyZXA6
Cj4+PiAKPj4+IC4vcmszMzk5cHJvLXJvY2stcGktbjEwLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFk
eGEgUk9DSyBQaSBOMTAiOwo+Pj4gLi9yazMzOTktcm9jay1waS00YS1wbHVzLmR0czrCoMKgwqAg
bW9kZWwgPSAiUmFkeGEgUk9DSyBQaSA0QSsiOwo+Pj4gLi9yazM1ODhzLXJvY2stNWEuZHRzOsKg
wqDCoCBtb2RlbCA9ICJSYWR4YSBST0NLIDUgTW9kZWwgQSI7Cj4+PiAuL3JrMzU4OC1yb2NrLTVi
LmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyA1IE1vZGVsIEIiOwo+Pj4gLi9yazMzOTkt
cm9jay00Yy1wbHVzLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyA0QysiOwo+Pj4gLi9y
azMzOTktcm9jay1waS00Yi1wbHVzLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyBQaSA0
QisiOwo+Pj4gLi9yazMzOTktcm9jay1waS00Yi5kdHM6wqDCoMKgIG1vZGVsID0gIlJhZHhhIFJP
Q0sgUGkgNEIiOwo+Pj4gLi9yazMzOTktcm9jay1waS00Yy5kdHM6wqDCoMKgIG1vZGVsID0gIlJh
ZHhhIFJPQ0sgUGkgNEMiOwo+Pj4gLi9yazMzMDgtcm9jay1waS1zLmR0czrCoMKgwqAgbW9kZWwg
PSAiUmFkeGEgUk9DSyBQaSBTIjsKPj4+IC4vcmszMzk5LXJvY2stcGktNGEuZHRzOsKgwqDCoCBt
b2RlbCA9ICJSYWR4YSBST0NLIFBpIDRBIjsKPj4+IC4vcmszMzk5LXJvY2stNHNlLmR0czrCoMKg
wqAgbW9kZWwgPSAiUmFkeGEgUk9DSyA0U0UiOwo+Pj4gLi9yazMzMjgtcm9jay1waS1lLmR0czrC
oMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyBQaSBFIjsKPj4+IC4vcmszNTY4LXJvY2stM2EuZHRz
OsKgwqDCoCBtb2RlbCA9ICJSYWR4YSBST0NLMyBNb2RlbCBBIjsKPj4+IAo+Pj4gQmFzZWQgb24g
dGhhdCwgSSB0aGluayB0aGF0ICJSYWR4YSBST0NLIDMgTW9kZWwgQyIgd291bGQgYWN0dWFsbHkK
Pj4+IGJlIHRoZSBwcmVmZXJyZWQgbmFtZS4uLsKgIFBlcmhhcHM/Cj4+PiAKPj4+IElmIHdlIGVu
ZCB1cCBmb2xsb3dpbmcgdGhhdCBhcHByb2FjaCwgdGhlIGxhc3QgYm9hcmQgZHRzIG9uIHRoZSBs
aXN0Cj4+PiBhYm92ZSBzaG91bGQgYWxzbyBiZSBmaXhlZCB0byByZWFkICJSYWR4YSBST0NLIDMg
TW9kZWwgQSIuCj4+PiAKPj4+IEVpdGhlciB0aGF0LCBvciBhbGwgIk1vZGVsICIgc3RyaW5ncyBz
aG91bGQgYmUgc3RyaXBwZWQgb3V0IGZyb20KPj4+IGFsbCBib2FyZCBkdHMgZmlsZXMgdGhhdCBj
dXJyZW50bHkgY29udGFpbiBpdC4KPj4gCj4+IHdlIGhhdmUgYSBkb2N1bWVudCBuYW1lZCAiUmFk
eGEgUHJvZHVjdCBOYW1pbmcgQ29udmVudGlvbiIuCj4+IHRoZXJlIGFyZSAiZnVsbCBuYW1lIiBh
bmQgInNob3J0IG5hbWUiLiAiTW9kZWwiIGlzIHVzZWQgaW4gImZ1bGwKPj4gbmFtZSIsIGJ1dCBp
dCdzIG5vdCB1c2VkIGluICJzaG9ydCBuYW1lIi4gYm90aCBhcmUgY29ycmVjdC4KPj4gCj4+IGJ1
dCwgd2UgcHJlZmVycmVkIHRvIHVzZSAic2hvcnQgbmFtZSIgZm9yICJtb2RlbCA9ICIgaW4gbWFp
bmxpbmUgCj4+IGxpbnV4L3UtYm9vdC4KPj4gCj4+IGZvciBST0NLIDNDLCBwbGVhc2UgdXNlCj4+
IAo+PiAgbW9kZWwgPSAiUmFkeGEgUk9DSyAzQyI7Cj4+IAo+PiBmb3IgUk9DSyA1QS81QiBhbmQg
Uk9DSyAzQSwKPj4gCj4+ICBtb2RlbCA9ICJSYWR4YSBST0NLIDVBIjsKPj4gIG1vZGVsID0gIlJh
ZHhhIFJPQ0sgNUIiOwo+PiAgbW9kZWwgPSAiUmFkeGEgUk9DSyAzQSI7Cj4+IAo+PiBhcmUgcHJl
ZmVycmVkLgo+PiAKPj4gd2UgbmVlZCB0byBmaXggdGhpcyBpbmNvbnNpc3RlbmN5LiAoaW5jbHVk
ZSBvdXIgZG9jcykKPiAKPiBHcmVhdCwgdGhhbmtzIGZvciB0aGlzIGRldGFpbGVkIGNsYXJpZmlj
YXRpb24hCgpJIHdlbnQgYWhlYWQgYW5kIHByZXBhcmVkIGEgcGF0Y2ggdGhhdCBjbGVhbnMgdXAg
Y3VycmVudGx5IHByZXNlbnQKbmFtaW5nIGluY29uc2lzdGVuY2llcyBmb3IgdGhlIFJhZHhhIGJv
YXJkcy4gIEFGQUlDVCwgdGhlcmUgc2hvdWxkCmJlIG5vIGlzc3VlcyBhcmlzaW5nIGZyb20gdGhl
IGNoYW5nZXMgaW4gdGhlICJtb2RlbCIgYW5kICJjb21wYXRpYmxlIgpzdHJpbmdzLCBiZWNhdXNl
IHRoZXkgYXJlbid0IHVzZWQgYW55d2hlcmUgaW4gdGhlIGRyaXZlcnMuICBUaGVyZQphcmUgbm8g
Ym9hcmQtc3BlY2lmaWMgQUxTQSBVQ00yIHByb2ZpbGVzLCB3aGljaCBjb3VsZCBiZSBhZmZlY3Rl
ZApieSB0aG9zZSBjaGFuZ2VzLiAgVS1Cb290IGlzIGFsc28gZmluZS4KCkknbGwgdGhpbmsgYSBi
aXQgbW9yZSBhYm91dCBpdCwgYW5kIEknbGwgc2VuZCB0aGUgcGF0Y2ggb3ZlciBhIGJpdApsYXRl
ci4gIElmIGl0IGdvZXMgd2VsbCwgSSdsbCBwcmVwYXJlIGFuZCBzZW5kIG9uZSBtb3JlIHNpbWls
YXIgcGF0Y2gsCmZvciBzb21lIG90aGVyIGJvYXJkcy4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
