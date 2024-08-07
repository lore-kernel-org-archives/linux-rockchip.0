Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14DC4C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 18:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JOXH3Gmy19qu135d/OWQZ3mHyH5yRvDGznouxwi5rVs=; b=1mzDsKERm6P4p6kLIQvEBc+XMz
	M1x740JT2TNg49RDwB+2t4DQ2qbebv3JyDBg+Pv3zSTqQfQFH8XknOPZE4iMfqOPuAek6IHcPIAUf
	4OLN7zdmuydyf851O44tdTdWCEkAB1Kwk3y3hubGxjuHO57A90Wt1tXXEkwM4v1czYkJc9139vk9s
	AvDT0b5TiAVa4cRDtofLXmLnxIM/3FJYI7iIrFnCjk5xJw1dXI4r2gzK/xHFg/2wHQolE0yBpkga+
	5bI5YfJch5sZJ/WvglNG133tPiTkFD9S/4tEvu7yCZRf4JnZZn0r3IIzD+Y9fqyofEhhP1uhBicOQ
	gvXI9blQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sblDX-00000005uwl-1lXT;
	Wed, 07 Aug 2024 18:16:59 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sblDU-00000005uw6-15tk
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Aug 2024 18:16:57 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723054614;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ne34bTPDtCTAF2Px57sf01zVA323tn6R9XaQ2AxPGLc=;
	b=UMwW766ghC5CqRV94nPk1K7gPqhJys/EV5W+r+hHvczrFL4y9aX5DpvSB1c5ZLxNNQIV53
	tEpiBGeDTzvKiMg5ZjsYLIJmkdAEv2s+Tfcn8XwwouPoWMPnKpNBocLwbLK1uex1cv2z7d
	1gCEExJoK5qq0ZXJL0ioRtTQImpDAsJc8gNzW1IEZWGpOybjTEUBAW1EGKk+HcYHrr6oiM
	61EmNZFehkX8G7TQHoMS/HVkmVW4kU3AeDSYWTzl8/br+SyaPgTy/lZfCU7v2G4psPEYke
	50bGedg7ZkXAXww8cpu97D86sBckOtJQ1SpoZ+T9MPmYQ5lompLAwh33dmaTIQ==
Date: Wed, 07 Aug 2024 20:16:53 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [RFC 1/2] dt-bindings: arm: rockchip: add Radxa E52C
In-Reply-To: <0c96e7293df0ab2bdc5ea7a25a21b8ce@manjaro.org>
References: <20240807084642.742-1-naoki@radxa.com>
 <b7f1f8c0cdc132b175d8cfba218b4441@manjaro.org>
 <ED7CECC5A1D5AB39+c52f07a4-0015-4c30-8ac8-545d3c66e167@radxa.com>
 <0c96e7293df0ab2bdc5ea7a25a21b8ce@manjaro.org>
Message-ID: <35ced5aa139d445dd95416a72a22bfe6@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_111656_615487_EC583CDB 
X-CRM114-Status: GOOD (  16.36  )
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

T24gMjAyNC0wOC0wNyAyMDoxMCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9uIDIwMjQtMDgtMDcg
MTk6NTksIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+IE9uIDgvNy8yNCAyMzo1MCwgRHJhZ2FuIFNp
bWljIHdyb3RlOgo+Pj4gT24gMjAyNC0wOC0wNyAxMDo0NiwgRlVLQVVNSSBOYW9raSB3cm90ZToK
Pj4+PiBBZGQgZGV2aWNldHJlZSBiaW5kaW5nIGZvciB0aGUgUmFkeGEgRTUyQy4KPj4+PiAKPj4+
PiBSYWR4YSBFNTJDIGlzIGEgY29tcGFjdCBuZXR3b3JrIGNvbXB1dGVyIHVzaW5nIHRoZSBSb2Nr
Y2hpcCBSSzM1ODIKPj4+PiBjaGlwLgo+Pj4+IAo+Pj4+IFNpZ25lZC1vZmYtYnk6IEZVS0FVTUkg
TmFva2kgPG5hb2tpQHJhZHhhLmNvbT4KPj4+PiAtLS0KPj4+PiBob3cgc2hvdWxkIHdlIGhhbmRs
ZSBSSzM1ODI/IGFzIGZhciBhcyBJIGtub3csIGl0J3MganVzdCBhbiBhbm90aGVyCj4+Pj4gdmVy
c2lvbiBvZiBSSzM1ODhTLgo+Pj4gCj4+PiBDb3VsZCB5b3UsIHBsZWFzZSwgcHJvdmlkZSBsaW5r
cyB0byBkb3duc3RyZWFtIGtlcm5lbCBjb2RlIGZyb20KPj4+IFJvY2tjaGlwIHRoYXQgc2hvd3Mg
dGhlIENQVSBhbmQgR1BVIE9QUHMgZm9yIHRoZSBSSzM1ODI/Cj4+IAo+PiBodHRwczovL2dpdGh1
Yi5jb20vcmFkeGEva2VybmVsL2NvbW1pdHMvbGludXgtNi4xLXN0YW4tcmtyMS8KPiAKPiBJbiBm
YWN0LCB3ZSdkIG5lZWQgZG93bnN0cmVhbSBzb3VyY2UgY29kZSBmcm9tIFJvY2tjaGlwIGFzIGEg
cmVmZXJlbmNlLAo+IGluc3RlYWQgb2YgZG93bnN0cmVhbSBzb3VyY2UgY29kZSBmcm9tIFJhZHhh
Lgo+IAo+IFRoZSBsaW5rIGF2YWxpYWJsZSBiZWxvdyBzZWVtcyB0byBwcm92aWRlIHRoZSByZXF1
aXJlZCBkb3duc3RyZWFtCj4gaW5mb3JtYXRpb24gYWJvdXQgdGhlIFJLMzU4Miwgc3RyYWlnaHQg
ZnJvbSBSb2NrY2hpcC4gIEknbGwgZ28gdGhyb3VnaAo+IGl0IGFuZCBjb21lIGJhY2sgd2l0aCBh
biB1cGRhdGUuCj4gCj4gaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3JvY2tjaGlw
LWxpbnV4L2tlcm5lbC9kZXZlbG9wLTUuMTAvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1MjguZHRzaQoKT29wcywgbXkgYmFkLCBzb21laG93IEkgZ290IFJLMzU4MiBhbmQgUkszNTI4
IG1peGVkIHVwLCBzb3JyeSBmb3IgdGhhdC4KVGhlcmUgaGF2ZSBiZWVuIHF1aXRlIGEgZmV3IHNp
bWlsYXIgeWV0IGRpZmZlcmVudCBTb0NzIGZyb20gUm9ja2NoaXAKcmVjZW50bHksIHNvIG1peGlu
ZyB0aGVtIHVwIGhhcyBiZWNvbWUgcmF0aGVyIGVhc3kuIDopCgpBRkFJQ1QsIHRoZXJlJ3Mgbm8g
aW5mb3JtYXRpb24gYWJvdXQgdGhlIFJLMzU4MiBhdmFpbGFibGUgZnJvbSB0aGUgClJvY2tjaGlw
CmRvd25zdHJlYW0ga2VybmVsIGNvZGUgaW4gdGhlIEdpdEh1YiByZXBvc2l0b3J5IGxpbmtlZCBh
Ym92ZSwgc28gd2UnbGwgCmhhdmUKdG8gd2FpdCBmb3IgdGhhdCB0byBhbHNvIGJlY29tZSBwdWJs
aWNseSBhdmFpbGFibGUgZnJvbSBSb2NrY2hpcC4KCj4+IEkgbm90aWNlZCB0aGVyZSBhcmUgc29t
ZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIHNvdXJjZSBhbmQgc2NoZW1hdGljLiBJCj4+IGd1ZXNzIHRo
ZXJlIGFyZSBzb21lIGNvcHkgJiBwYXN0ZSB3b3JrLCBib3RoIGFyZSBub3Qgc28gcmVsaWFibGUu
Li4KPj4gCj4+PiBCeSB0aGUgd2F5LCBpcyB0aGUgc2NoZW1hdGljIG9mIFJhZHhhIEU1MkMgYXZh
aWxhYmxlPwo+PiAKPj4gaXQncyBub3QgeWV0IGF2YWlsYWJsZSBpbiBwdWJsaWMuIGV2ZXJ5dGhp
bmcsIGluY2x1ZGUgaGFyZHdhcmUsIGlzIAo+PiBXSVAuCj4+IGJ1dCBpdCB3aWxsIGJlIGF2YWls
YWJsZSBiZWZvcmUgZW5kIG9mIHRoaXMgbW9udGguCj4gCj4gSSBzZWUsIHRoYW5rcyBmb3IgdGhl
IGNsYXJpZmljYXRpb24uICBUaGVuIGl0J3MgdGhlIGJlc3QgdG8gd2FpdCB1bnRpbAo+IHRoZSBh
Y3R1YWwgcHVibGljIHJlbGVhc2Ugb2YgdGhpcyBuZXcgYm9hcmQuCj4gCj4+Pj4gLS0tCj4+Pj4g
wqBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgfCA2
ICsrKysrKwo+Pj4+IMKgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+Pj4+IAo+Pj4+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tj
aGlwLnlhbWwKPj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbAo+Pj4+IGluZGV4IDJhZDgzNWY0MDY4ZS4uYmE2ZDAzYjM3YmVmIDEwMDY0NAo+
Pj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbAo+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbAo+Pj4+IEBAIC03NTksNiArNzU5LDEyIEBAIHByb3BlcnRpZXM6Cj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcmFkeGEsY20zaQo+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU2OAo+Pj4+IAo+Pj4+ICvCoMKgwqDCoMKgIC0g
ZGVzY3JpcHRpb246IFJhZHhhIEU1MkMKPj4+PiArwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoCAtIGVudW06Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0gcmFkeGEsZTUyYwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcm9ja2No
aXAscmszNTg4cwo+Pj4+ICsKPj4+PiDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogUmFkeGEg
Um9jawo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLSBjb25zdDogcmFkeGEscm9jawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
