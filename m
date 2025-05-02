Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8BEFC3ABAC
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 May 2025 17:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6qaBBnsAyC2nTkP/fhtRBFnySln679CgeWn+mM0WCI=; b=OS5r0vKFAOnwyz
	lkjaAL8RF052JlgStCtr42nUkCurUWYNBZYBhS2BDHnJG+AiN2ZlAkP46tS7CJME/lA7hEBcKYosB
	oxTTteEisAALWzi4Q1Xgbn+aYvlA+ZGvMICWNULw/Axk6gPWr/aj3kNciST1GL7omDnx/GBnjIfM7
	1jGvydiGew+HoasT/cTzpu3a4yBG0EoCPoGjVA4yp7aCPErIopApO4X/4C+CysnFPuZ1ObjpPovg/
	Gx3dgwEnjSo2sOfzwjR6EvGuIkP0h8OzQcRnH6xTLt63wLCB+LDeRHzHi1NStz0lyhm7qAUjwjwHj
	glsYRZOZiJ8QBJbSNDrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAu6K-00000002dqq-47Ck;
	Fri, 02 May 2025 17:23:04 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAtP0-00000002XQ6-23w4;
	Fri, 02 May 2025 16:38:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1746203895;
	bh=StNCSoWqTHQVNnBSV3C33tQMvr1ACyrW1L37/XLZkWw=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=VtI0M86iGqKNtCI/YHmVpMgC6HBmTIfOrA4YY+0vvgofcTMarsQ8v2IXDHfd+7LN2
	 T34mfNirbEGRJenY9I0GDGUhwqurv/+5uI6DwA1HgtTEmIKBBwe8NIvbomKHRU9j4M
	 EsoT3AYwn5z1ay8+NSg7SdmxFAUIVi7dtBkq0zc/B0Kx9fg58aw/Ni1uG6PZv6GvEv
	 G0iLOL4zMW+gs81SiTPTKABjdSW0VpAJD6E3OANANxmE0PaeUE+uY+rqlsiJE6V37/
	 y+Kv5j/4cb6N0mEPzL4+G7uB2tL3KAZQOGGQsx6q+Z5IuH++z9L6tXPGSRRJj1tgox
	 dYzpmcjweClWA==
Received: from [IPv6:2606:6d00:15:ec4::5ac] (unknown [IPv6:2606:6d00:15:ec4::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 48F3F17E0657;
	Fri,  2 May 2025 18:38:13 +0200 (CEST)
Message-ID: <2d82e4e0aa4c244e8b2d3f1e46e92760cd6238d7.camel@collabora.com>
Subject: Re: [RFC PATCH 03/11] media: uapi: add nal unit header fields to
 encode_params
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Marco Felsch <m.felsch@pengutronix.de>, benjamin.gaignard@collabora.com,
 	p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, Sascha
 Hauer	 <s.hauer@pengutronix.de>, kernel@pengutronix.de, festevam@gmail.com,
 	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 paulk@sys-base.io, 	hverkuil@xs4all.nl, laurent.pinchart@ideasonboard.com, 
	sebastian.fricke@collabora.com, ming.qian@nxp.com
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Michael
 Tretter <m.tretter@pengutronix.de>
Date: Fri, 02 May 2025 12:38:11 -0400
In-Reply-To: <20250502150513.4169098-4-m.felsch@pengutronix.de>
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
	 <20250502150513.4169098-4-m.felsch@pengutronix.de>
Organization: Collabora Canada
User-Agent: Evolution 3.56.1 (3.56.1-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250502_093818_709729_6AA23027 
X-CRM114-Status: GOOD (  21.47  )
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

SGksCgpMZSB2ZW5kcmVkaSAwMiBtYWkgMjAyNSDDoCAxNzowNSArMDIwMCwgTWFyY28gRmVsc2No
IGEgw6ljcml0wqA6Cj4gRnJvbTogTWljaGFlbCBUcmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0cm9u
aXguZGU+Cj4gCj4gVGhlIFZFUFU1NDAgYW5kIFZFUFU1ODAgbWF5IHByZXBhcmUgdGhlIE5BTCB1
bml0IGhlYWRlcnMgaW4gdGhlIGNvZGVkCj4gcGFyYW1zLiBUaGVzZSB2YWx1ZXMgaGF2ZSB0byBi
ZSBwcm92aWRlZCBieSB1c2VyIHNwYWNlIGFuZCBiZSB3cml0dGVuCj4gaW50byB0aGUgaGFyZHdh
cmUgcmVnaXN0ZXJzLgoKVG8gYmUgcmV3b3JrZWQgaW4gZnV0dXJlIHZlcnNpb24uIFRoaXMgY29t
bWl0IG1lc3NhZ2UgcmVmZXJzIHRvIFJLMzU2eCBhbmQKUkszNjg4IGVuY29kZXJzIGJsb2NrIGZy
b20gUm9ja2NoaXAuIFRob3VnaCwgaXRzIHBvc3NpYmxlIHRoaXMgYXBwbGllcyBmb3IKSGFudHJv
IElQIHRvby4KCk5pY29sYXMKIAo+IEZ1cnRoZXJtb3JlLCBuYWxfcmVmX2lkYyBpbmRpY2F0ZXMg
aWYgYSBwaWN0dXJlIHdpbGwgYmUgdXNlZCBhcwo+IHJlZmVyZW5jZSBhbmQgaXMgYSBoaW50IHRv
IHRoZSBkcml2ZXIsIGlmIGl0IG5lZWRzIHRvIGtlZXAgdGhlCj4gcmVjb25zdHJ1Y3RlZCBidWZm
ZXIgb3Igbm90Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgVHJldHRlciA8bS50cmV0dGVy
QHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+IMKgaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29udHJv
bHMuaCB8IDE1ICsrKysrKysrKysrKysrKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29udHJvbHMu
aCBiL2luY2x1ZGUvdWFwaS9saW51eC92NGwyLWNvbnRyb2xzLmgKPiBpbmRleCA2NzBmODIyZWU3
NTguLmE4ZGYzOTNjOWVhZCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvdjRsMi1j
b250cm9scy5oCj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29udHJvbHMuaAo+IEBA
IC0xNjk0LDYgKzE2OTQsOSBAQCBzdHJ1Y3QgdjRsMl9jdHJsX2gyNjRfZGVjb2RlX3BhcmFtcyB7
Cj4gwqAJX191MzIgZmxhZ3M7Cj4gwqB9Owo+IMKgCj4gKyNkZWZpbmUgVjRMMl9IMjY0X05BTF9D
T0RFRF9TTElDRV9OT05fSURSX1BJQwkxCj4gKyNkZWZpbmUgVjRMMl9IMjY0X05BTF9DT0RFRF9T
TElDRV9JRFJfUElDCTUKPiArCj4gwqAjZGVmaW5lIFY0TDJfQ0lEX1NUQVRFTEVTU19IMjY0X0VO
Q09ERV9QQVJBTVMJKFY0TDJfQ0lEX0NPREVDX1NUQVRFTEVTU19CQVNFICsgOCkKPiDCoAo+IMKg
LyoqCj4gQEAgLTE3MTksNiArMTcyMiw4IEBAIHN0cnVjdCB2NGwyX2N0cmxfaDI2NF9kZWNvZGVf
cGFyYW1zIHsKPiDCoCAqIEBwaWNfaW5pdF9xcF9taW51czI2OiBpbml0aWFsIHZhbHVlIG1pbnVz
IDI2IG9mIGx1bWEgcXAgZm9yIGVhY2ggc2xpY2UuCj4gwqAgKiBAY2hyb21hX3FwX2luZGV4X29m
ZnNldDogb2Zmc2V0IHRoYXQgc2hhbGwgYmUgYWRkZWQgdG8gcXAgbHVtYSBmb3IgYWRkcmVzc2lu
ZyB0aGUKPiDCoCAqIHRhYmxlIG9mIHFwIGNocm9tYSB2YWx1ZXMgZm9yIHRoZSBDYiBjaHJvbWEg
Y29tcG9uZW50Lgo+ICsgKiBAbmFsX3JlZl9pZGM6IG5hbF9yZWZfaWRjIGZvciB0aGUgaGVhZGVy
IG9mIHRoZSBnZW5lcmF0ZWQgTkFMIHVuaXQKPiArICogQG5hbF91bml0X3R5cGU6IG9uZSBvZiB0
aGUgVjRMMl9IMjY0X05BTF9DT0RFRF9TTElDRV97fSB2YWx1ZXMKPiDCoCAqIEBmbGFnczogY29t
YmluYXRpb24gb2YgVjRMMl9IMjY0X0VOQ09ERV9GTEFHX3t9IGZsYWdzLgo+IMKgICogQHJlZmVy
ZW5jZV90czogdGltZXN0YW1wIG9mIHRoZSBWNEwyIGJ1ZmZlciB0byB1c2UgYXMgcmVmZXJlbmNl
Cj4gwqAgKi8KPiBAQCAtMTc1MSw2ICsxNzU2LDE2IEBAIHN0cnVjdCB2NGwyX2N0cmxfaDI2NF9l
bmNvZGVfcGFyYW1zIHsKPiDCoAo+IMKgCV9fdTMyIGZsYWdzOyAvKiBWNEwyX0gyNjRfRU5DT0RF
X0ZMQUdfICovCj4gwqAKPiArCS8qCj4gKwkgKiBJZiBuYWxfcmVmX2lkYyBpcyAwLCB0aGUgTkFM
IHVuaXQgd29uJ3QgYmUgdXNlZCBhcyByZWZlcmVuY2UgYnkKPiArCSAqIGxhdGVyIE5BTCB1bml0
cy4gQW55IG90aGVyIHZhbHVlIGluZGljYXRlcyB0aGF0IHRoZSBOQUwgdW5pdCBtYXkgYmUKPiAr
CSAqIHVzZWQgYXMgcmVmZXJlbmNlLgo+ICsJICovCj4gKwlfX3U4IG5hbF9yZWZfaWRjOwo+ICsK
PiArCS8qIFRPRE8gQ2FuIHdlIGluZmVyIHRoZSBuYWxfdW5pdF90eXBlIGZyb20gdGhlIHNsaWNl
X3R5cGU/ICovCj4gKwlfX3U4IG5hbF91bml0X3R5cGU7Cj4gKwo+IMKgCS8qIFJlZmVyZW5jZSAq
Lwo+IMKgCj4gwqAJX191NjQgcmVmZXJlbmNlX3RzOwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
