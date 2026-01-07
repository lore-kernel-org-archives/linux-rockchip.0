Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0982CFD647
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 14:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSuq0l0YUOH1TXqK8ZWafasomBuiL5VPUDHDr2KAlTk=; b=Ft3Ad/8kY22y0g
	DIOQk7BCFDjs7Occ5379g+pzUawyxQfg+1xZT/7r5tXjN53A5zIYNVpz+i6rl7Wsj0DimfCJtg3VK
	IvpgDETNplBs6H2AjgCNpRgUJmB525GhwVXgLQ/ylaM7mkboNnfUIDQ5ioJQb/bE08whufYVFo5ln
	GVWX6lMdJEhhvdBiRvzDpRvNfdnfTv5StbnM79xmyMEymDKMzLUzbRs3g2mWfmSzgfxjseZ4814WK
	fOKdBWle+1JGM2f1wXzyObCWlmCYNYItzGHe4asIK0U1Sn01cewZPgKeTMv6wokZEY04tRlOiHdLd
	/kpQvESKMPA388lRqaLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdUtZ-0000000F811-0xsO;
	Wed, 07 Jan 2026 14:52:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdUtX-0000000F80Y-18Fc
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 14:52:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vdUtK-0002O9-IV; Wed, 07 Jan 2026 15:52:06 +0100
Message-ID: <1f4720ea-fa9c-41b7-9a6c-24abffa4bd77@pengutronix.de>
Date: Wed, 7 Jan 2026 15:52:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 18/22] media: rockchip: rga: move rga_fmt to rga-hw.h
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
 <20251203-spu-rga3-v2-18-989a67947f71@pengutronix.de>
 <de09023e7bdb1698c0bcdeb8d625101cbf647595.camel@ndufresne.ca>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <de09023e7bdb1698c0bcdeb8d625101cbf647595.camel@ndufresne.ca>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_065219_311949_6CF9FA4D 
X-CRM114-Status: GOOD (  15.92  )
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

SGksCgpPbiAxMi8yNC8yNSA0OjU5IFBNLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+IExlIG1l
cmNyZWRpIDAzIGTDqWNlbWJyZSAyMDI1IMOgIDE2OjUyICswMTAwLCBTdmVuIFDDvHNjaGVsIGEg
w6ljcml0wqA6Cj4+IE1vdmUgcmdhX2ZtdCB0byByZ2EtaHcgaW4gcHJlcGFyYXRpb24gb2YgdGhl
IFJHQTMgYWRkaXRpb24sIGFzIHRoZSBzdHJ1Y3QKPj4gY29udGFpbnMgbWFueSBSR0EyIHNwZWNp
ZmljIHZhbHVlcy4gVGhleSBhcmUgdXNlZCB0byB3cml0ZSB0aGUgY29ycmVjdAo+PiByZWdpc3Rl
ciB2YWx1ZXMgcXVpY2tseSBiYXNlZCBvbiB0aGUgY2hvc2VuIGZvcm1hdC4gVGhlcmVmb3JlIHRo
ZQo+PiBwb2ludGVyIHRvIHRoZSByZ2FfZm10IHN0cnVjdCBpcyBrZXB0IGJ1dCBjaGFuZ2VkIHRv
IGFuIG9wYXF1ZSB2b2lkCj4+IHBvaW50ZXIgb3V0c2lkZSBvZiB0aGUgcmdhLWh3LmguClsuLi5d
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Et
aHcuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5oCj4+IGlu
ZGV4IGZmZmNhYjAxMzEyMjUuLjNiYzRiMWY1YWNiYTIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5oCj4+ICsrKyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5oCj4+IEBAIC02LDYgKzYsOCBAQAo+PiAg
wqAjaWZuZGVmIF9fUkdBX0hXX0hfXwo+PiAgwqAjZGVmaW5lIF9fUkdBX0hXX0hfXwo+PiAgIAo+
PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+ICsKPj4gIMKgI2RlZmluZSBSR0FfQ01EQlVG
X1NJWkUgMHgyMAo+PiAgIAo+PiAgwqAvKiBIYXJkd2FyZSBsaW1pdHMgKi8KPj4gQEAgLTQzMSw0
ICs0MzMsMTQgQEAgdW5pb24gcmdhX3BhdF9jb24gewo+PiAgwqAJfSBkYXRhOwo+PiAgwqB9Owo+
PiAgIAo+PiArc3RydWN0IHJnYV9mbXQgewo+PiArCXUzMiBmb3VyY2M7Cj4+ICsJaW50IGRlcHRo
Owo+PiArCXU4IHV2X2ZhY3RvcjsKPj4gKwl1OCB5X2RpdjsKPj4gKwl1OCB4X2RpdjsKPj4gKwl1
OCBjb2xvcl9zd2FwOwo+PiArCXU4IGh3X2Zvcm1hdDsKPj4gK307CgpbLi4uXQoKPj4gICAKPj4g
LXN0cnVjdCByZ2FfZm10IHsKPj4gLQl1MzIgZm91cmNjOwo+PiAtCWludCBkZXB0aDsKPj4gLQl1
OCB1dl9mYWN0b3I7Cj4+IC0JdTggeV9kaXY7Cj4+IC0JdTggeF9kaXY7Cj4+IC0JdTggY29sb3Jf
c3dhcDsKPj4gLQl1OCBod19mb3JtYXQ7Cj4+IC19Owo+IEFoISBoZXJlJ3MgdGhlIHJlbW92YWwg
b2YgdGhlIHVudXNlZCB2YXJpYWJsZS4gTm90IHJldmlldyBmcmllbmRseSwgYnV0IGF0IGxhc3QK
PiByZW1vdmVkLgoKSSd2ZSBqdXN0IG1vdmVkIGl0LCBzbyB5b3VyIHJldmlldyBjb21tZW50cyBh
cmUgc3RpbGwgcmlnaHQuIHhfZGl2L3lfZGl2IAppcyBzdGlsbCB1c2VkIGF0IG9uZSBwbGFjZSBp
biByZ2FfaHcuYywgYnV0IEknbGwgcmVtb3ZlIGl0IHRvbyBpbiBteSB2MyAKKGFuZCBoYXZlIHRo
ZXNlIHJlbW92YWxzIGluIHRoZSBvdGhlciBjb21taXRzIHRvIGtlZXAgdGhpcyByZXZpZXdlZC1i
eSkuCgpTaW5jZXJlbHkKIMKgIMKgIFN2ZW4KCj4KPiBSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZy
ZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+Cj4+IC0KPj4gIMKgc3RydWN0
IHJnYV9mcmFtZSB7Cj4+ICDCoAkvKiBDcm9wICovCj4+ICDCoAlzdHJ1Y3QgdjRsMl9yZWN0IGNy
b3A7Cj4+ICAgCj4+ICDCoAkvKiBJbWFnZSBmb3JtYXQgKi8KPj4gLQlzdHJ1Y3QgcmdhX2ZtdCAq
Zm10Owo+PiArCXZvaWQgKmZtdDsKPj4gIMKgCXN0cnVjdCB2NGwyX3BpeF9mb3JtYXRfbXBsYW5l
IHBpeDsKPj4gIMKgfTsKPj4gICAKPj4gQEAgLTE0NSw4ICsxMzUsNiBAQCBzdGF0aWMgaW5saW5l
IHZvaWQgcmdhX21vZChzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EsIHUzMiByZWcsIHUzMiB2YWws
IHUzMiBtYXNrKQo+PiAgwqBzdHJ1Y3QgcmdhX2h3IHsKPj4gIMKgCWNvbnN0IGNoYXIgKmNhcmRf
dHlwZTsKPj4gIMKgCWJvb2wgaGFzX2ludGVybmFsX2lvbW11Owo+PiAtCXN0cnVjdCByZ2FfZm10
ICpmb3JtYXRzOwo+PiAtCXUzMiBudW1fZm9ybWF0czsKPj4gIMKgCXNpemVfdCBjbWRidWZfc2l6
ZTsKPj4gIMKgCXUzMiBtaW5fd2lkdGgsIG1pbl9oZWlnaHQ7Cj4+ICDCoAl1MzIgbWF4X3dpZHRo
LCBtYXhfaGVpZ2h0Owo+PiBAQCAtMTU4LDYgKzE0Niw5IEBAIHN0cnVjdCByZ2FfaHcgewo+PiAg
wqAJCcKgwqDCoMKgwqAgc3RydWN0IHJnYV92Yl9idWZmZXIgKnNyYywgc3RydWN0IHJnYV92Yl9i
dWZmZXIgKmRzdCk7Cj4+ICDCoAlib29sICgqaGFuZGxlX2lycSkoc3RydWN0IHJvY2tjaGlwX3Jn
YSAqcmdhKTsKPj4gIMKgCXZvaWQgKCpnZXRfdmVyc2lvbikoc3RydWN0IHJvY2tjaGlwX3JnYSAq
cmdhKTsKPj4gKwl2b2lkICooKmFkanVzdF9hbmRfbWFwX2Zvcm1hdCkoc3RydWN0IHY0bDJfcGl4
X2Zvcm1hdF9tcGxhbmUgKmZvcm1hdCwKPj4gKwkJCQnCoMKgwqDCoMKgwqAgYm9vbCBpc19vdXRw
dXQpOwo+PiArCWludCAoKmVudW1fZm9ybWF0KShzdHJ1Y3QgdjRsMl9mbXRkZXNjICpmKTsKPj4g
IMKgfTsKPj4gICAKPj4gIMKgc3RhdGljIGlubGluZSBib29sIHJnYV9oYXNfaW50ZXJuYWxfaW9t
bXUoY29uc3Qgc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
