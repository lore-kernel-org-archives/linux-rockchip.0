Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E02DC0218B
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 06:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ENyJaHLovM7XPyCC+HFgJO3hOmozEFjvvZpEHijViQ=; b=rz02hRaKvsNj2ww7eTozeQtwAd
	XD6QGlGndNKZDWjiDsMyfODDfZDzBZwsk/XdEtq4CA/9hhAs8sfZ+piPyk0y8PxpmVK24Q137hdB0
	8EsFU9ygDDKLiTvJzFMMK/342PFq/t8wkPATkM1eIFXZNVDiHtq93sTQRchsjP6J+ARkXT0PEiQOT
	3gvVNZg6L1KQbBMihSF+8obVquMT9JhlFJcVIGjMpQZ2QzyhQKUBLrwVNiK+1zViRG33uLivS4hFr
	MzrdLUqUl5Fgm0wpx9I4+LgsP3TdlS+ARj4Cln/77pjNfWDfkQz6NFrTbwVpDSoaJBadb+PyXxVh7
	mgx9uOlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbDJf-0000000E13P-3NNd;
	Fri, 24 Jan 2025 06:37:19 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbDIJ-0000000E0uk-1rG5;
	Fri, 24 Jan 2025 06:35:56 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737700551;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yDcVaVVMzrXp9l580+Ibh1Pcrfg4xdal5MP+F108Ii4=;
	b=V7rZp0U47HCH4FUtf6IyKFL7rtDgum7Ud4Vaha/e1ppJBCu+Rkeo6qkO/da+tnAvVu5Oln
	vAy3Uuxq7HvTq9OsNkRaoIQJbdcYQXun/CDw5H8ivsu0PAtAuf2YBwsKGhB91FLiBIaTVJ
	VLCsJXbS196nQF5idKZ/Io+zLZDdDvTs9nrIkBnsSq0v436BKJSpMbEt0PARPWn5ClCenE
	r2SMOEBy2/RAbJvGsRSERPjqKzjGzwYL0u90eGnNFDskz8LIv8eE+tZonUmJtVKNQgUI6J
	QLghRufuU70FSaRfLVD22ZJ0BhxYCC6chXxW/nUmTtM+sas+WrFbA/T9H6mNvA==
Date: Fri, 24 Jan 2025 07:35:50 +0100
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
In-Reply-To: <98387508-10de-4c2e-80ad-05d0d86b7006@gmail.com>
References: <20250119091154.1110762-1-cnsztl@gmail.com>
 <ce15f141688c4c537ac3307b6fbed283@manjaro.org>
 <59893a67-18c7-4ab3-9b2a-5a17091d4b6c@gmail.com>
 <dffd06a341b58e9689f578c3456cc11d@manjaro.org>
 <65f4e27f-3dc4-4eaf-be4d-265ce0325ade@gmail.com>
 <98387508-10de-4c2e-80ad-05d0d86b7006@gmail.com>
Message-ID: <59e46b34e1c8f9197565fea917335d3f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_223555_773777_4FEC05E9 
X-CRM114-Status: GOOD (  18.16  )
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

SGVsbG8gVGlhbmxpbmcsCgpPbiAyMDI1LTAxLTI0IDA3OjI4LCBUaWFubGluZyBTaGVuIHdyb3Rl
Ogo+IE9uIDIwMjUvMS8xOSAyMzo0OCwgVGlhbmxpbmcgU2hlbiB3cm90ZToKPj4gT24gMjAyNS8x
LzE5IDE5OjM2LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+PiBPbiAyMDI1LTAxLTE5IDEyOjE1LCBU
aWFubGluZyBTaGVuIHdyb3RlOgo+Pj4+IE9uIDIwMjUvMS8xOSAxNzo1NCwgRHJhZ2FuIFNpbWlj
IHdyb3RlOgo+Pj4+PiBUaGFua3MgZm9yIHRoZSBwYXRjaC7CoCBQbGVhc2UsIHNlZSBhIGNvbW1l
bnQgYmVsb3cuCj4+Pj4+IAo+Pj4+PiBPbiAyMDI1LTAxLTE5IDEwOjExLCBUaWFubGluZyBTaGVu
IHdyb3RlOgo+Pj4+Pj4gSW4gZ2VuZXJhbCB0aGUgZGVsYXkgc2hvdWxkIGJlIGFkZGVkIGJ5IHRo
ZSBQSFkgaW5zdGVhZCBvZiB0aGUgCj4+Pj4+PiBNQUMsCj4+Pj4+PiBhbmQgdGhpcyBpbXByb3Zl
cyBuZXR3b3JrIHN0YWJpbGl0eSBvbiBzb21lIGJvYXJkcyB3aGljaCBzZWVtIHRvCj4+Pj4+PiBu
ZWVkIGRpZmZlcmVudCBkZWxheS4KPj4+Pj4+IAo+Pj4+Pj4gRml4ZXM6IDM4N2IzYmJhYzVlYSAo
ImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgWHVubG9uZyBPcmFuZ2VQaSAKPj4+Pj4+IFIxIFBs
dXMgTFRTIikKPj4+Pj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICMgNi42Kwo+Pj4+Pj4g
U2lnbmVkLW9mZi1ieTogVGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4KPj4+Pj4+IC0t
LQo+Pj4+Pj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1y
MS1wbHVzLWx0cy5kdHMgfCAzIAo+Pj4+Pj4gKy0tCj4+Pj4+PiDCoGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzwqDCoMKgwqAgfCAxIAo+Pj4+
Pj4gKwo+Pj4+Pj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2Vw
aS1yMS1wbHVzLmR0c2nCoMKgwqAgfCAxIAo+Pj4+Pj4gLQo+Pj4+Pj4gwqAzIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4+Pj4+IAo+Pj4+Pj4gZGlmZiAt
LWdpdAo+Pj4+Pj4gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2Vw
aS1yMS1wbHVzLWx0cy5kdHMKPj4+Pj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzMjgtb3JhbmdlcGktcjEtcGx1cy1sdHMuZHRzCj4+Pj4+PiBpbmRleCA2N2MyNDZhZDhiOGMu
LmVjMmNlODk0ZGExZiAxMDA2NDQKPj4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMtbHRzLmR0cwo+Pj4+Pj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy1sdHMuZHRzCj4+
Pj4+PiBAQCAtMTcsOCArMTcsNyBAQCAvIHsKPj4+Pj4+IAo+Pj4+Pj4gwqAmZ21hYzJpbyB7Cj4+
Pj4+PiDCoMKgwqDCoCBwaHktaGFuZGxlID0gPCZ5dDg1MzFjPjsKPj4+Pj4+IC3CoMKgwqAgdHhf
ZGVsYXkgPSA8MHgxOT47Cj4+Pj4+PiAtwqDCoMKgIHJ4X2RlbGF5ID0gPDB4MDU+Owo+Pj4+Pj4g
K8KgwqDCoCBwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4+Pj4+IAo+Pj4+PiBTaG91bGRuJ3QgdGhl
ICJ0eF9kZWxheSIgYW5kICJyeF9kZWxheSIgRFQgcGFyYW1ldGVycyBiZSBjb252ZXJ0ZWQKPj4+
Pj4gaW50byB0aGUgInR4LWludGVybmFsLWRlbGF5LXBzIiBhbmQgInJ4LWludGVybmFsLWRlbGF5
LXBzIiAKPj4+Pj4gcGFyYW1ldGVycywKPj4+Pj4gcmVzcGVjdGl2ZWx5LCBzbyB0aGUgTW90b3Jj
b21tIFBIWSBkcml2ZXIgY2FuIHBpY2sgdGhlbSB1cCBhbmQKPj4+Pj4gYWN0dWFsbHkgY29uZmln
dXJlIHRoZSBpbnRlcm5hbCBQSFkgZGVsYXlzPwo+Pj4+IAo+Pj4+IFRoZSBkb2N1bWVudGF0aW9u
WzFdIHNheXMgInt0LHJ9eC1pbnRlcm5hbC1kZWxheS1wcyIgZGVmYXVsdCB0byAxOTUwCj4+Pj4g
YW5kIHRoYXQgdmFsdWUgYWxyZWFkeSB3b3JrcyBmaW5lIG9uIG15IGJvYXJkLgo+Pj4+IAo+Pj4+
IDEuIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvIAo+Pj4+IG1vdG9yY29tbSUyQ3l0OHh4eC55YW1sCj4+PiAKPj4+IEkgc2Vl
LCBidXQgdGhvc2UgdmFsdWVzIGRpZmZlciBmcm9tIHRoZSB2YWx1ZXMgZm91bmQgaW4gdGhlCj4+
PiAidHhfZGVsYXkiIGFuZCAicnhfZGVsYXkiIERUIHBhcmFtZXRlcnMsIHNvIEkgdGhpbmsgdGhp
cyBwYXRjaAo+Pj4gc2hvdWxkIGJlIHRlc3RlZCB3aXRoIGF0IGxlYXN0IG9uZSBtb3JlIE9yYW5n
ZSBQaSBSMSBQbHVzIExUUwo+Pj4gYm9hcmQsIHRvIG1ha2Ugc3VyZSBpdCdzIGFsbCBzdGlsbCBm
aW5lLgo+PiAKPj4gVGhpcyBwYXRjaCBoYXMgYmVlbiB0ZXN0ZWQgb24gMiBib2FyZHMsIGFuZCB3
ZSB3aWxsIGRvIG1vcmUgdGVzdHMgaW4gCj4+IG5leHQgd2Vlay4KPj4gCj4gCj4gTWFuYWdlZCB0
byB0ZXN0IG9uIGFub3RoZXIgYm9hcmQgYW5kIGxvb2tzIHNvIGZhciBzbyBnb29kLgo+IChXb3Jr
aW5nIG5ldHdvcmsgY29ubmVjdGlvbiwgbm8gcGFja2V0IGRyb3ApCgpTb3VuZHMgZ29vZCB0byBt
ZSwgdGhhbmtzIGZvciB0aGUgYWRkaXRpb25hbCB0ZXN0aW5nLgoKPj4+Pj4+IMKgwqDCoMKgIHN0
YXR1cyA9ICJva2F5IjsKPj4+Pj4+IAo+Pj4+Pj4gwqDCoMKgwqAgbWRpbyB7Cj4+Pj4+PiBkaWZm
IC0tZ2l0IAo+Pj4+Pj4gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFu
Z2VwaS1yMS1wbHVzLmR0cwo+Pj4+Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0cwo+Pj4+Pj4gaW5kZXggMzI0YThlOTUxZjdlLi44NDZi
OTMxZTE2ZDIgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0cwo+Pj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy5kdHMKPj4+Pj4+IEBAIC0xNSw2
ICsxNSw3IEBAIC8gewo+Pj4+Pj4gCj4+Pj4+PiDCoCZnbWFjMmlvIHsKPj4+Pj4+IMKgwqDCoMKg
IHBoeS1oYW5kbGUgPSA8JnJ0bDgyMTFlPjsKPj4+Pj4+ICvCoMKgwqAgcGh5LW1vZGUgPSAicmdt
aWkiOwo+Pj4+Pj4gwqDCoMKgwqAgdHhfZGVsYXkgPSA8MHgyND47Cj4+Pj4+PiDCoMKgwqDCoCBy
eF9kZWxheSA9IDwweDE4PjsKPj4+Pj4+IMKgwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4+Pj4+
IGRpZmYgLS1naXQgCj4+Pj4+PiBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4
LW9yYW5nZXBpLXIxLXBsdXMuZHRzaQo+Pj4+Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0c2kKPj4+Pj4+IGluZGV4IDRmMTkzNzA0ZTVk
Yy4uMDk1MDhlMzI0YTI4IDEwMDY0NAo+Pj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy5kdHNpCj4+Pj4+PiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0c2kKPj4+Pj4+
IEBAIC0xMDksNyArMTA5LDYgQEAgJmdtYWMyaW8gewo+Pj4+Pj4gwqDCoMKgwqAgYXNzaWduZWQt
Y2xvY2tzID0gPCZjcnUgU0NMS19NQUMySU8+LCA8JmNydSBTQ0xLX01BQzJJT19FWFQ+Owo+Pj4+
Pj4gwqDCoMKgwqAgYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmZ21hY19jbGs+LCA8JmdtYWNf
Y2xrPjsKPj4+Pj4+IMKgwqDCoMKgIGNsb2NrX2luX291dCA9ICJpbnB1dCI7Cj4+Pj4+PiAtwqDC
oMKgIHBoeS1tb2RlID0gInJnbWlpIjsKPj4+Pj4+IMKgwqDCoMKgIHBoeS1zdXBwbHkgPSA8JnZj
Y19pbz47Cj4+Pj4+PiDCoMKgwqDCoCBwaW5jdHJsLTAgPSA8JnJnbWlpbTFfcGlucz47Cj4+Pj4+
PiDCoMKgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
