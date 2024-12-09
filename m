Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FF44E77180
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 12:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xn5ga0ahwmqJ/BwNHc6vrxj6SYcosMNwF7U8j8HKn8=; b=knn273ZC6YNEop
	8xPLkNuEMM/wESwGIUZTEfrVwCv/PbZLoB7h74V0zz3IICT8YOhVs9t1aMXL0n/bKO4W1HLY1HdvP
	gDLpu5rJi1KrEmBUQrlDoZc+3xi/8n/hD8ErUlyu94zYSri5PYJLxEwyqll5uj9ramoI4U13ukJ2T
	WGlX+xVjzhAbxoUniVi3sBIdBsPiV/pQNM2li2mXNiBHZ082taWt4N/z5SMYr3o24eDWBO14e+xzC
	ffBoSRSRGErthLOnrdoMY42jdBV23Vpbk+EZHpZMAQ97NET3RnFRLzTunrF2h9yP7mtO3lVtrsa+h
	wHbRs/6yJpi4SRXde1ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKcmf-00000007fC6-0hgz;
	Mon, 09 Dec 2024 12:22:41 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKcmc-00000007fAT-0dmS
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 12:22:40 +0000
X-QQ-mid: bizesmtpip2t1733746924tidce0k
X-QQ-Originating-IP: u3mdy8MmsDm3Gz1uzpBdmyAsVHR53JE3Rg/iC1QssCQ=
Received: from [IPV6:240f:10b:7440:1:a0b7:f16b ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 09 Dec 2024 20:22:00 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4831636596776470644
Message-ID: <341313D17BDFC5A1+ff192db9-e406-4737-b040-84f6e7c7bc52@radxa.com>
Date: Mon, 9 Dec 2024 21:22:00 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add package_thermal for Radxa
 ROCK 5A/5C
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241204045447.1036-1-naoki@radxa.com>
 <71aa84af7a030e66487076e0976c8cad@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <71aa84af7a030e66487076e0976c8cad@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MmpliBmRb3iC7IaSfRUGzdf6g6Ak2i7USK/IwqzhsD0Tg7pRdioSAdyk
	W4wwOJvw/lIgPn3m1wp76rlJ3pdobgj/Al6fJGY6lv+ZGWHOcAWHOmKr1czRoVYoVys4uZy
	ILnFSk2KLv+MEUjd4u1W+jDQ/QRCmf2rWg//MLQPBfSWRMRyOdprUgOGHGI3H8Z2Ca/CKBa
	I8ujXvNyMD81PlyJtl8fQvkuHv+wrumIXVECb0gxSbLkD40KCy8ZCM6uqhK37fkFgnl1RKC
	7RXILPk1RAy3fmP2OcxsWhtmCOkkO8A8SpBNaJVJF9upOh8FhxnHkyuuf4PnK54Ye7p5abb
	DZe7HSEbOHk/6olkowRpZjXs7YMLuoBOjQL9NxB8DwA0dFJmWMraGjlgf//HVICraiuwvhT
	+ke+tO44jb379HYSaAamwdPzgYOQ6aCw+mZskouHrn2dnyUHw8W52gkkJ23pRCxUom2vevI
	5xxmcejcsj5/MKm8gkOGSth5ywJ+G7bkuuoPOhX413+O7I+deMWYsku+FNiA+evt5EHmcEb
	9wtLXFl2c8gvWjt7vOof4VnX6Si7v7AVneyUwfgJ9Rz9jCcLwSafWeklfpgB5TltMch7oNM
	i7Rt1TbUslH+rXbFYu3nBq09Q255++iwdWXTObywSrNRUDAW6vJNBMrQ4n9F8lKmieJQaZk
	XsFtFFO56kkXG3hYtSaouSjvyfUzDyhoiovJx7xMO08lMtqVdTRiD7rgpRmGV9Kgzv8CDOX
	ATZwtpFUZHgYhHeqClgrmyuhhAHQnksehPBME1b+xR4hUabJmtn8xBF/3jsnJA8aQtZwHf4
	s1n59AcLxsuIdpyyQR5wznzdoQHirzO3k2SqgtpHPzAQWlZcr+UGTfqNniK7qTEnUZk9Yu4
	OdbcwoKjfURZ8DnbV6xb4DZAU/DSQzWLoeYVLpD3p6Yczre1hU++9HuE5rlAuDcO3r4CIki
	PxlEnwxzwyByQlPbVrYLD2XTC
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_042238_571771_3DF26889 
X-CRM114-Status: GOOD (  20.21  )
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

SGksCgpPbiAxMi80LzI0IDE0OjMyLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVsbG8gRnVrYXVt
aSwKPiAKPiBQbGVhc2UsIHNlZSBhIGZldyBjb21tZW50cyBiZWxvdy4KPiAKPiBPbiAyMDI0LTEy
LTA0IDA1OjU0LCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+PiBhZGQgYW5kIGVuYWJsZSBwYWNrYWdl
IHRlbXBlcmF0dXJlIGJhc2VkIGFjdGl2ZSBjb29saW5nLgo+IAo+IEknZCBzdWdnZXN0IHRoYXQg
eW91IHJld3JpdGUgdGhlIHBhdGNoIHN1bW1hcnkgdG8gcmVhZCBsaWtlIHRoaXM6Cj4gCj4gIMKg
IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgYXV0b21hdGljIGZhbiBjb250cm9sIG9uIFJv
Y2sgNUEvNUMKPiAKPiBhbmQgdG8gcmV3cml0ZSB0aGUgcGF0Y2ggZGVzY3JpcHRpb24gbGlrZSB0
aGlzLCB3aGljaCBpcyBhIHJlY3ljbGVkCj4gYW5kIGEgYml0IGltcHJvdmVkIGRlc2NyaXB0aW9u
IG9mIHRoZSBjb21taXQgNGExNTIyMzFiMDUwICgiYXJtNjQ6Cj4gZHRzOiByb2NrY2hpcDogZW5h
YmxlIGF1dG9tYXRpYyBmYW4gY29udHJvbCBvbiBSb2NrIDVCIik6Cj4gCj4gIMKgIExpbmsgdGhl
IFBXTSBmYW4gb24gUmFkeGEgUk9DSyA1QS81QyBhcyBhbiBhY3RpdmUgY29vbGluZyBkZXZpY2UK
PiAgwqAgbWFuYWdlZCBhdXRvbWF0aWNhbGx5IGJ5IHRoZSB0aGVybWFsIHN1YnN5c3RlbSwgd2l0
aCBhIHRhcmdldCBTb0MKPiAgwqAgdGVtcGVyYXR1cmUgb2YgNjUgb0MgYW5kIGEgbWluaW11bS1z
cGluIGludGVydmFsIGZyb20gNTUgb0MgdG8KPiAgwqAgNjUgb0MsIHRvIGVuc3VyZSBhaXJmbG93
IHdoZW4gdGhlIHN5c3RlbSBnZXRzIHdhcm0uCgp0aGFua3MhIEknbGwgdXNlIHRoaXMgbWVzc2Fn
ZSA6KQoKPj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+
PiAtLS0KPj4gdGhpcyBwYXRjaCBkZXBlbmRzIG9uIFsxXSB3aGljaCBkZXBlbmRzIG9uIFsyXS4K
Pj4KPj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2Nr
Y2hpcC8gCj4+IGNvdmVyLzIwMjQxMTI4MTIxOTI5LjYyNjQ2LTEtbmFva2lAcmFkeGEuY29tLwo+
PiBbMl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlw
LyAKPj4gcGF0Y2gvMjAyNDExMTkwOTUxMTMuNzgxNTEtMS1uYW9raUByYWR4YS5jb20vCj4+IC0t
LQo+PiDCoC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNS5kdHNpwqDCoMKgwqAg
fCAzMiArKysrKysrKysrKysrKysrKystCj4+IMKgMSBmaWxlIGNoYW5nZWQsIDMxIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4cy1yb2NrLTUuZHRzaQo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4cy1yb2NrLTUuZHRzaQo+PiBpbmRleCBhOGY0MGY0M2M4MzguLmExY2Fj
NDBkNDM5ZSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODhzLXJvY2stNS5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4cy1yb2NrLTUuZHRzaQo+PiBAQCAtMzMsNyArMzMsNyBAQCBhbmFsb2ctc291bmQgewo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJIZWFkcGhvbmUiLCAiSGVhZHBob25lcyI7Cj4+
IMKgwqDCoMKgIH07Cj4+Cj4+IC3CoMKgwqAgZmFuIHsKPj4gK8KgwqDCoCBmYW46IGZhbiB7Cj4g
Cj4gSXQgd291bGQgYmUgYmV0dGVyIHRvIHVzZSAiZmFuOiBwd20tZmFuIHsgLi4uIH0iLCB0byBl
bnN1cmUgc29tZSBraW5kCj4gb2YgY29uc2lzdGVuY3kgd2l0aCB0aGUgb3RoZXIgc2ltaWxhciBw
b3J0aW9ucyBvZiBib2FyZCBkdHMgZmlsZXMuCgpzdXJlLiBJJ2xsIGNoYW5nZSBpdCBpbiBwcmV2
aW91cyBwYXRjaCBzZXJpZXMgZm9yIFJhZHhhIFJPQ0sgNEMuCgpCZXN0IHJlZ2FyZHMsCgotLQpG
VUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgo+PiDCoMKg
wqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicHdtLWZhbiI7Cj4+IMKgwqDCoMKgwqDCoMKgwqAg
I2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4+IMKgwqDCoMKgwqDCoMKgwqAgY29vbGluZy1sZXZlbHMg
PSA8MCA2NCAxMjggMTkyIDI1NT47Cj4+IEBAIC0zNzksNiArMzc5LDM2IEBAIHJnbWlpX3BoeTE6
IGV0aGVybmV0LXBoeUAxIHsKPj4gwqDCoMKgwqAgfTsKPj4gwqB9Owo+Pgo+PiArJnBhY2thZ2Vf
dGhlcm1hbCB7Cj4+ICvCoMKgwqAgcG9sbGluZy1kZWxheSA9IDwxMDAwPjsKPj4gKwo+PiArwqDC
oMKgIHRyaXBzIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHBhY2thZ2VfZmFuMDogcGFja2FnZS1mYW4w
IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaHlzdGVyZXNpcyA9IDwyMDAwPjsKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgdGVtcGVyYXR1cmUgPSA8NTUwMDA+Owo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB0eXBlID0gImFjdGl2ZSI7Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+PiAr
Cj4+ICvCoMKgwqDCoMKgwqDCoCBwYWNrYWdlX2ZhbjE6IHBhY2thZ2UtZmFuMSB7Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHRlbXBlcmF0dXJlID0gPDY1MDAwPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdHlwZSA9ICJhY3RpdmUiOwo+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4gK8KgwqDCoCB9Owo+
PiArCj4+ICvCoMKgwqAgY29vbGluZy1tYXBzIHsKPj4gK8KgwqDCoMKgwqDCoMKgIG1hcDAgewo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb29saW5nLWRldmljZSA9IDwmZmFuIFRIRVJNQUxf
Tk9fTElNSVQgMT47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRyaXAgPSA8JnBhY2thZ2Vf
ZmFuMD47Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBtYXAx
IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29vbGluZy1kZXZpY2UgPSA8JmZhbiAyIFRI
RVJNQUxfTk9fTElNSVQ+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0cmlwID0gPCZwYWNr
YWdlX2ZhbjE+Owo+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4gK8KgwqDCoCB9Owo+PiArfTsKPj4g
Kwo+PiDCoCZwY2llMngxbDIgewo+PiDCoMKgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
Owo+PiDCoMKgwqDCoCBwaW5jdHJsLTAgPSA8JnBjaWUyMHgxXzJfcGVyc3RuX20wPiwKPiAKPiBU
aGUgcmVzdCBvZiB0aGUgcGF0Y2ggaXMgbG9va2luZyBnb29kIHRvIG1lLsKgIFRoYW5rcyBmb3Ig
dGhlIHBhdGNoIQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
