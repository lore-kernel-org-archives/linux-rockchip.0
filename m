Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA435D64071
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 17:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QG8cNikjIu8g3eVNk7a21c1uQqf0een5O2twYffNLJY=; b=wB3XYzOsnJCUyn
	3lHYGw7Sm5vqOQri3Grof0is9xGqycIDdN74ujtbBfYYhLqdCaUHa7zLFo8CtcGzISCWM1Q4HS4T7
	EwIHHvkCuclJkzLSMKIK5+JeqON6DXD21sw128uHjRDs9/NSCoClh8JS7B6PiY/AHe1yxmDtIiMD2
	hkWFgNxeD8Zusf9LNMa20J50mJEWv+VzwMG4+MaOejhaSTgOwf78wYEQ5BlRXSNcf+2MzV2E1RO3H
	Mwg/nP4HOENvtK7CjifYONshK3d2LyWdcYhY2chVG7x0HSTqoWAqGfqFZZcGOo+Ep3tc3C5C3Qg6C
	BTtqlW/p5+PPbtC7pzuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9SVH-0000000BKe4-1FEI;
	Fri, 08 Nov 2024 17:10:35 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9S2N-0000000BGiI-1cKS;
	Fri, 08 Nov 2024 16:40:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1731084007; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kMBT7aXZMRHb9dlcAQR0f39OWKGOMxfoMaV3v0k3ji9AISTCzGboFxVq3Mtd09FaUo8E3E6k8CjPbxU+WhIvFv2YLpw8/sDTR+0hrXXnUKPREQz6rtgE+m5pHK5BwEt2BcAfoyBwn/hzC+mRmZu4bZn8DkPwZxUwTlwquCKXpVI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1731084007; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=zGW5K4Z5kc/vSl3bz25b30mPWd8sGZbhmSQVIloBb6Y=; 
	b=K2QHm+eD9NrEzfdLEakHRuzUtYiQBZ1YpWKRU4H/yxNcf8C9nRZ8r3oTiq1QUtdLVsVl3xQc+jo+fhZH9IZWmyZFBVHE8sdPwWDOBWrWatdpX4yHlyLyDuNHiNmoGD7B5ilHVmj6tX4i0Y/jYg8eyOQHUxZ/H/XSUaN9nVny6Ts=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1731084007;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=zGW5K4Z5kc/vSl3bz25b30mPWd8sGZbhmSQVIloBb6Y=;
	b=g3nGu8BtvOegMI7iWOw8v6SERxvHosLnzsy4xET800NfmNh6cDKO1EHbiF62ilEH
	dF0IMNC23rV2s8u8kDnC8LDcWwIAHMmIaMOp94mf4coSiKAObUGHQV0196EryvqdyU/
	Z1tmu6hJrxcg8uFagT48w19VlNx0ezT1/ytIgEF4=
Received: by mx.zohomail.com with SMTPS id 1731084004452888.298092585493;
	Fri, 8 Nov 2024 08:40:04 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Andy Yan <andyshrk@163.com>
Cc: linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Chris Morgan <macromorgan@hotmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v2 1/3] vop2: Add clock resets support
Date: Fri, 08 Nov 2024 11:39:57 -0500
Message-ID: <4605629.LvFx2qVVIh@trenzalore>
In-Reply-To: <6a3d3fb1.3755.18fa893239e.Coremail.andyshrk@163.com>
References: <20240522185924.461742-1-detlev.casanova@collabora.com>
 <20240522185924.461742-2-detlev.casanova@collabora.com>
 <6a3d3fb1.3755.18fa893239e.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_084043_519592_F59DA76F 
X-CRM114-Status: GOOD (  20.80  )
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

T24gVGh1cnNkYXksIDIzIE1heSAyMDI0IDIzOjA5OjI2IEVTVCBBbmR5IFlhbiB3cm90ZToKPiBI
aSBEZXRsZXbvvIwKPiAKPiBBdCAyMDI0LTA1LTIzIDAyOjU3OjQ4LCAiRGV0bGV2IENhc2Fub3Zh
IiA8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+IAp3cm90ZToKPiA+QXQgdGhlIGVuZCBv
ZiBpbml0aWFsaXphdGlvbiwgZWFjaCBWUCBjbG9jayBuZWVkcyB0byBiZSByZXNldCBiZWZvcmUK
PiA+dGhleSBjYW4gYmUgdXNlZC4KPiA+Cj4gPkZhaWxpbmcgdG8gZG8gc28gY2FuIHB1dCB0aGUg
Vk9QIGluIGFuIHVuZGVmaW5lZCBzdGF0ZSB3aGVyZSB0aGUKPiA+Z2VuZXJhdGVkIEhETUkgc2ln
bmFsIGlzIGVpdGhlciBsb3N0IG9yIG5vdCBtYXRjaGluZyB0aGUgc2VsZWN0ZWQgbW9kZS4KPiAK
PiBXb3VsZCB5b3UgcGxlYXNlIHByb3ZpZGUgYSBkZXRhaWxlZCBkZXNjcmlwdGlvbiBvZiB5b3Vy
IHRlc3QgY2FzZT8KClRoZSB0ZXN0IGNhc2Ugd2FzIHRvIHN3aXRjaCBtb2RlcyAodXNpbmcgbW9k
ZXRlc3QpIHVudGlsIHRoZSBIRE1JIHNpZ25hbCB3YXMgCmxvc3Qgb24gdGhlIFRWIHNpZGUuIEl0
IHdhcyBhbHNvIHBvc3NpYmxlIHRvIGRldGVjdCB0aGUgaXNzdWUgYnkgdHJhY2tpbmcgdGhlIApI
RE1JIFRYIENvbnRyb2xsZXJfVklERU9fTU9OSVRPUl9TVEFUVVNbMS02XSByZWdpc3RlcnMsIGVz
cGVjaWFsbHkgYXQgYWRkcmVzcyAKMHg4OTAsIHdoZXJlIHRoZSByZWdpc3RlciB3b3VsZCB0YWtl
IHRoZSB2YWx1ZSBgMHgwMDAwMDE4Y2AuCgpBZnRlciBhZGRpbmcgdGhlc2UgcmVzZXRzLCB0aGUg
aXNzdWUgY2Fubm90IGJlIHJlcHJvZHVjZWQuIEkgY2FuIHNoYXJlIGEgCnNjcmlwdCB0aGF0IHJl
cHJvZHVjZWQgdGhpcyBpbiB0aGUgcGFzdCAoYnV0IHRoaXMgaXMgYW4gb2xkIHBhdGNoc2V0IG5v
dywgc28gCnRoaW5ncyBjb3VsZCBoYXZlIGNoYW5nZWQpCgo+ID5TaWduZWQtb2ZmLWJ5OiBEZXRs
ZXYgQ2FzYW5vdmEgPGRldGxldi5jYXNhbm92YUBjb2xsYWJvcmEuY29tPgo+ID4tLS0KPiA+Cj4g
PiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDMwICsrKysr
KysrKysrKysrKysrKysrCj4gPiAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKQo+ID4K
PiA+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
Mi5jCj4gPmIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgaW5k
ZXgKPiA+ZmRkNzY4YmJkNDg3Yy4uZTgxYTY3MTYxZDI5YSAxMDA2NDQKPiA+LS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiA+KysrIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiA+QEAgLTE3LDYgKzE3LDcgQEAK
PiA+Cj4gPiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gPiAjaW5jbHVkZSA8
bGludXgvcG1fcnVudGltZS5oPgo+ID4gI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ID4KPiA+
KyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+ID4KPiA+ICNpbmNsdWRlIDxsaW51eC9zd2FiLmg+
Cj4gPiAKPiA+ICNpbmNsdWRlIDxkcm0vZHJtLmg+Cj4gPgo+ID5AQCAtMTU3LDYgKzE1OCw3IEBA
IHN0cnVjdCB2b3AyX3dpbiB7Cj4gPgo+ID4gc3RydWN0IHZvcDJfdmlkZW9fcG9ydCB7Cj4gPiAK
PiA+IAlzdHJ1Y3QgZHJtX2NydGMgY3J0YzsKPiA+IAlzdHJ1Y3Qgdm9wMiAqdm9wMjsKPiA+Cj4g
PisJc3RydWN0IHJlc2V0X2NvbnRyb2wgKmRjbGtfcnN0Owo+ID4KPiA+IAlzdHJ1Y3QgY2xrICpk
Y2xrOwo+ID4gCXVuc2lnbmVkIGludCBpZDsKPiA+IAljb25zdCBzdHJ1Y3Qgdm9wMl92aWRlb19w
b3J0X2RhdGEgKmRhdGE7Cj4gPgo+ID5AQCAtMTkxNSw2ICsxOTE3LDI2IEBAIHN0YXRpYyBpbnQg
dXNfdG9fdmVydGljYWxfbGluZShzdHJ1Y3QKPiA+ZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwgaW50
IHVzKT4KPiA+IAlyZXR1cm4gdXMgKiBtb2RlLT5jbG9jayAvIG1vZGUtPmh0b3RhbCAvIDEwMDA7
Cj4gPiAKPiA+IH0KPiA+Cj4gPitzdGF0aWMgaW50IHZvcDJfY2xrX3Jlc2V0KHN0cnVjdCB2b3Ay
X3ZpZGVvX3BvcnQgKnZwKQo+ID4rewo+ID4rCXN0cnVjdCByZXNldF9jb250cm9sICpyc3RjID0g
dnAtPmRjbGtfcnN0Owo+ID4rCXN0cnVjdCB2b3AyICp2b3AyID0gdnAtPnZvcDI7Cj4gPisJaW50
IHJldDsKPiA+Kwo+ID4rCWlmICghcnN0YykKPiA+KwkJcmV0dXJuIDA7Cj4gCj4gSW4gZmFjdCwg
dGhpcyBjaGVjayBpcyBub3QgbmVjZXNzYXJ5IGhlcmUuICBUaGUgZm9sbG93aW5nIHJlc2V0IGNv
bnRyb2wgYXBpCj4gd2lsbCBjaGVjayBmb3IgTlVMTCBwb2ludGVyCgpBZ3JlZWQsIEknbGwgZG8g
YSByZWJhc2VkIHYzIGFuZCByZW1vdmUgdGhlIGNoZWNrLgoKPiA+Kwo+ID4rCXJldCA9IHJlc2V0
X2NvbnRyb2xfYXNzZXJ0KHJzdGMpOwo+ID4rCWlmIChyZXQgPCAwKQo+ID4rCQlkcm1fd2Fybih2
b3AyLT5kcm0sICJmYWlsZWQgdG8gYXNzZXJ0IHJlc2V0XG4iKTsKPiA+Kwl1ZGVsYXkoMTApOwo+
ID4rCXJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocnN0Yyk7Cj4gPisJaWYgKHJldCA8IDAp
Cj4gPisJCWRybV93YXJuKHZvcDItPmRybSwgImZhaWxlZCB0byBkZWFzc2VydCByZXNldFxuIik7
Cj4gPisKPiA+KwlyZXR1cm4gcmV0Owo+ID4rfQo+ID4rCj4gPgo+ID4gc3RhdGljIHZvaWQgdm9w
Ml9jcnRjX2F0b21pY19lbmFibGUoc3RydWN0IGRybV9jcnRjICpjcnRjLAo+ID4gCj4gPiAJCQkJ
ICAgIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlIAoqc3RhdGUpCj4gPiAKPiA+IHsKPiA+Cj4gPkBA
IC0yMDU1LDYgKzIwNzcsOCBAQCBzdGF0aWMgdm9pZCB2b3AyX2NydGNfYXRvbWljX2VuYWJsZShz
dHJ1Y3QgZHJtX2NydGMKPiA+KmNydGMsPgo+ID4gCXZvcDJfdnBfd3JpdGUodnAsIFJLMzU2OF9W
UF9EU1BfQ1RSTCwgZHNwX2N0cmwpOwo+ID4KPiA+Kwl2b3AyX2Nsa19yZXNldCh2cCk7Cj4gPisK
PiA+Cj4gPiAJZHJtX2NydGNfdmJsYW5rX29uKGNydGMpOwo+ID4gCQo+ID4gCXZvcDJfdW5sb2Nr
KHZvcDIpOwo+ID4KPiA+QEAgLTI3MDYsNiArMjczMCwxMiBAQCBzdGF0aWMgaW50IHZvcDJfY3Jl
YXRlX2NydGNzKHN0cnVjdCB2b3AyICp2b3AyKQo+ID4KPiA+IAkJdnAtPmRhdGEgPSB2cF9kYXRh
Owo+ID4gCQkKPiA+IAkJc25wcmludGYoZGNsa19uYW1lLCBzaXplb2YoZGNsa19uYW1lKSwgImRj
bGtfdnAlZCIsIHZwLQo+aWQpOwo+ID4KPiA+KwkJdnAtPmRjbGtfcnN0ID0gZGV2bV9yZXNldF9j
b250cm9sX2dldF9vcHRpb25hbCh2b3AyLQo+ZGV2LCBkY2xrX25hbWUpOwo+ID4rCQlpZiAoSVNf
RVJSKHZwLT5kY2xrX3JzdCkpIHsKPiA+KwkJICAgICAgICBkcm1fZXJyKHZvcDItPmRybSwgImZh
aWxlZCB0byBnZXQgJXMgcmVzZXRcbiIsIApkY2xrX25hbWUpOwo+ID4rCQkgICAgICAgIHJldHVy
biBQVFJfRVJSKHZwLT5kY2xrX3JzdCk7Cj4gPisJCX0KPiA+Kwo+ID4KPiA+IAkJdnAtPmRjbGsg
PSBkZXZtX2Nsa19nZXQodm9wMi0+ZGV2LCBkY2xrX25hbWUpOwo+ID4gCQlpZiAoSVNfRVJSKHZw
LT5kY2xrKSkgewo+ID4gCQkKPiA+IAkJCWRybV9lcnIodm9wMi0+ZHJtLCAiZmFpbGVkIHRvIGdl
dCAlc1xuIiwgCmRjbGtfbmFtZSk7CgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
