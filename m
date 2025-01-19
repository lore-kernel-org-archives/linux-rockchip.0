Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527ABC02183
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jan 2025 11:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jmig4eC+hXrKgZrK7OVNwSa+kt/7dl1hiltLDKc2aJ4=; b=Mx9AxBg5gkGp7lwJ5XLybxt+Jm
	uyZKfbIq/PIf6hlH3HTVbVPrDKavEHZWym1DYOfa9j1AwZY6z/BMZ0BgPbvwMun/oAucczoA0De6x
	DPCxTEp6FpC2p4TF5qeYP9dmMhDNF7SUK58Kckp8uNKlT6+xth2e/3D3bp+RVX8O6HTbkJsE7dKc6
	x9bAKK88xDGX4bZh/I7KbQjuEWduivNoOvTz7bGusL8mKaXJpbu0z3MM6F2yDGIEBCjbqUyZTK5VT
	PGFk5BbF0wpXs2ac0dPC30NLiPqaxioNHyYowAhVzg5pY5RUqRm9MatTCRJZsGYfCojiqTKycR3Av
	VByVU7dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZTd9-00000003oTy-2kia;
	Sun, 19 Jan 2025 11:38:15 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZTbr-00000003oMi-1Rsf;
	Sun, 19 Jan 2025 11:36:57 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737286612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=INVDIv/HWfQ/VgBF6o3bOQpBfdqdzLV30nK1vf4ycdw=;
	b=fowsOrqXCmNuhDPRWhfaMHpCXeNNY9+gEwBhJYXcWhfjuicO50pAZEm6kv8Tnc5DD2B6he
	QeRLQIuNb9lQTG6n+xjB+r9KRLQeRNfqlfNW6sZxQ4Sygc5UMbBT0jiN7xHExkiey1w5SB
	gWKeHiuKIsjglMi9NAToLapjsZFGH7jaCfpi3SruDewz2UFaM8ini85tLbLRDePtRCaMo+
	FH2B/peXfqOqBV5dq3225qf/mpA4xpshLXNjuF8HP302aHsd/a53BsTdBTwaDt7pPGOPxb
	OiS5fWzadzwZmfYZkB9Ud6csyb1YSzqJ/31DlngJQidPxyKfmJFtxl5NReZLjQ==
Date: Sun, 19 Jan 2025 12:36:52 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas
 Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, Peter Geis
 <pgwipeout@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: change eth phy mode to rgmii-id for
 orangepi r1 plus lts
In-Reply-To: <59893a67-18c7-4ab3-9b2a-5a17091d4b6c@gmail.com>
References: <20250119091154.1110762-1-cnsztl@gmail.com>
 <ce15f141688c4c537ac3307b6fbed283@manjaro.org>
 <59893a67-18c7-4ab3-9b2a-5a17091d4b6c@gmail.com>
Message-ID: <dffd06a341b58e9689f578c3456cc11d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_033655_704389_3184FBA0 
X-CRM114-Status: GOOD (  17.83  )
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

T24gMjAyNS0wMS0xOSAxMjoxNSwgVGlhbmxpbmcgU2hlbiB3cm90ZToKPiBPbiAyMDI1LzEvMTkg
MTc6NTQsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guwqAgUGxl
YXNlLCBzZWUgYSBjb21tZW50IGJlbG93Lgo+PiAKPj4gT24gMjAyNS0wMS0xOSAxMDoxMSwgVGlh
bmxpbmcgU2hlbiB3cm90ZToKPj4+IEluIGdlbmVyYWwgdGhlIGRlbGF5IHNob3VsZCBiZSBhZGRl
ZCBieSB0aGUgUEhZIGluc3RlYWQgb2YgdGhlIE1BQywKPj4+IGFuZCB0aGlzIGltcHJvdmVzIG5l
dHdvcmsgc3RhYmlsaXR5IG9uIHNvbWUgYm9hcmRzIHdoaWNoIHNlZW0gdG8KPj4+IG5lZWQgZGlm
ZmVyZW50IGRlbGF5Lgo+Pj4gCj4+PiBGaXhlczogMzg3YjNiYmFjNWVhICgiYXJtNjQ6IGR0czog
cm9ja2NoaXA6IEFkZCBYdW5sb25nIE9yYW5nZVBpIFIxIAo+Pj4gUGx1cyBMVFMiKQo+Pj4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyA2LjYrCj4+PiBTaWduZWQtb2ZmLWJ5OiBUaWFubGlu
ZyBTaGVuIDxjbnN6dGxAZ21haWwuY29tPgo+Pj4gLS0tCj4+PiDCoGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMtbHRzLmR0cyB8IDMgKy0tCj4+PiDC
oGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRz
wqDCoMKgwqAgfCAxICsKPj4+IMKgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgt
b3JhbmdlcGktcjEtcGx1cy5kdHNpwqDCoMKgIHwgMSAtCj4+PiDCoDMgZmlsZXMgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4gCj4+PiBkaWZmIC0tZ2l0Cj4+PiBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMtbHRz
LmR0cwo+Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1y
MS1wbHVzLWx0cy5kdHMKPj4+IGluZGV4IDY3YzI0NmFkOGI4Yy4uZWMyY2U4OTRkYTFmIDEwMDY0
NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGkt
cjEtcGx1cy1sdHMuZHRzCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzMyOC1vcmFuZ2VwaS1yMS1wbHVzLWx0cy5kdHMKPj4+IEBAIC0xNyw4ICsxNyw3IEBAIC8gewo+
Pj4gCj4+PiDCoCZnbWFjMmlvIHsKPj4+IMKgwqDCoMKgIHBoeS1oYW5kbGUgPSA8Jnl0ODUzMWM+
Owo+Pj4gLcKgwqDCoCB0eF9kZWxheSA9IDwweDE5PjsKPj4+IC3CoMKgwqAgcnhfZGVsYXkgPSA8
MHgwNT47Cj4+PiArwqDCoMKgIHBoeS1tb2RlID0gInJnbWlpLWlkIjsKPj4gCj4+IFNob3VsZG4n
dCB0aGUgInR4X2RlbGF5IiBhbmQgInJ4X2RlbGF5IiBEVCBwYXJhbWV0ZXJzIGJlIGNvbnZlcnRl
ZAo+PiBpbnRvIHRoZSAidHgtaW50ZXJuYWwtZGVsYXktcHMiIGFuZCAicngtaW50ZXJuYWwtZGVs
YXktcHMiIHBhcmFtZXRlcnMsCj4+IHJlc3BlY3RpdmVseSwgc28gdGhlIE1vdG9yY29tbSBQSFkg
ZHJpdmVyIGNhbiBwaWNrIHRoZW0gdXAgYW5kCj4+IGFjdHVhbGx5IGNvbmZpZ3VyZSB0aGUgaW50
ZXJuYWwgUEhZIGRlbGF5cz8KPiAKPiBUaGUgZG9jdW1lbnRhdGlvblsxXSBzYXlzICJ7dCxyfXgt
aW50ZXJuYWwtZGVsYXktcHMiIGRlZmF1bHQgdG8gMTk1MAo+IGFuZCB0aGF0IHZhbHVlIGFscmVh
ZHkgd29ya3MgZmluZSBvbiBteSBib2FyZC4KPiAKPiAxLiAKPiBodHRwczovL3d3dy5rZXJuZWwu
b3JnL2RvYy9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21vdG9yY29tbSUy
Q3l0OHh4eC55YW1sCgpJIHNlZSwgYnV0IHRob3NlIHZhbHVlcyBkaWZmZXIgZnJvbSB0aGUgdmFs
dWVzIGZvdW5kIGluIHRoZQoidHhfZGVsYXkiIGFuZCAicnhfZGVsYXkiIERUIHBhcmFtZXRlcnMs
IHNvIEkgdGhpbmsgdGhpcyBwYXRjaApzaG91bGQgYmUgdGVzdGVkIHdpdGggYXQgbGVhc3Qgb25l
IG1vcmUgT3JhbmdlIFBpIFIxIFBsdXMgTFRTCmJvYXJkLCB0byBtYWtlIHN1cmUgaXQncyBhbGwg
c3RpbGwgZmluZS4KCj4+IAo+Pj4gwqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4gCj4+PiDC
oMKgwqDCoCBtZGlvIHsKPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0cwo+Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0cwo+Pj4gaW5kZXggMzI0YThlOTUx
ZjdlLi44NDZiOTMxZTE2ZDIgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0cwo+Pj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy5kdHMKPj4+IEBAIC0xNSw2
ICsxNSw3IEBAIC8gewo+Pj4gCj4+PiDCoCZnbWFjMmlvIHsKPj4+IMKgwqDCoMKgIHBoeS1oYW5k
bGUgPSA8JnJ0bDgyMTFlPjsKPj4+ICvCoMKgwqAgcGh5LW1vZGUgPSAicmdtaWkiOwo+Pj4gwqDC
oMKgwqAgdHhfZGVsYXkgPSA8MHgyND47Cj4+PiDCoMKgwqDCoCByeF9kZWxheSA9IDwweDE4PjsK
Pj4+IMKgwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4+IGRpZmYgLS1naXQgCj4+PiBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzaQo+Pj4g
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0
c2kKPj4+IGluZGV4IDRmMTkzNzA0ZTVkYy4uMDk1MDhlMzI0YTI4IDEwMDY0NAo+Pj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy5kdHNp
Cj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1y
MS1wbHVzLmR0c2kKPj4+IEBAIC0xMDksNyArMTA5LDYgQEAgJmdtYWMyaW8gewo+Pj4gwqDCoMKg
wqAgYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgU0NMS19NQUMySU8+LCA8JmNydSBTQ0xLX01BQzJJ
T19FWFQ+Owo+Pj4gwqDCoMKgwqAgYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmZ21hY19jbGs+
LCA8JmdtYWNfY2xrPjsKPj4+IMKgwqDCoMKgIGNsb2NrX2luX291dCA9ICJpbnB1dCI7Cj4+PiAt
wqDCoMKgIHBoeS1tb2RlID0gInJnbWlpIjsKPj4+IMKgwqDCoMKgIHBoeS1zdXBwbHkgPSA8JnZj
Y19pbz47Cj4+PiDCoMKgwqDCoCBwaW5jdHJsLTAgPSA8JnJnbWlpbTFfcGlucz47Cj4+PiDCoMKg
wqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
