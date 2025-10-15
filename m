Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BC42CCD199
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 15:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoFL0xG1RsbLpL+MdXA3rPkPuUxuKPML2duyM1azfCo=; b=pMMrAQAahcrZ8d
	GRhhsI/wyX0cB0mvB+WjxhTYfXXTdNjGM9YNWxo1TDqYpKXf0puk3G+DTDCRp9VtmRJqeJ1VCCyBy
	884C6KdMb5s1qKc6W72tlhGuD2KKnnn5pH86sBLhsscHEkR9EH6qwZhnONe+myh6GPSI4voZ2c4ge
	d/ZLee0X/02+JsBqP1P846hqcXMXe+PWUqdT8QNoARNyeQriXTd331R8BXIrouxkUtJVkkkGs17oW
	SeI+TF2y7nkCu09SHUeYhhFxK2T/exTuLxTLmxwNebwvyJF9/6xg1jokyNTZSd1b7PKJ/5PwvwbTP
	SfY6rNJKc99prodtfsgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v93g6-000000029EH-44jO;
	Wed, 15 Oct 2025 15:44:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v93g4-000000029DY-2lhR;
	Wed, 15 Oct 2025 15:44:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Z3Pe//Qk7uVwriRUdY4wfxnM3En9QGZArVfkpKWTETw=; b=VT7Jvr/JW5SCZv7ZUvwOgcbo/g
	2x2kVvVveSt62dZgaSzTtz/ZFXzdFZ+IsI0zH/pXxedf0xetmuqojHfkO8pNYhQlFsAEorXt0WzHv
	OIelmGR8D9Ez1vEk+XTrL444HjScJR1LEjc2DrsVf+T+FfPKX4zx93he2kOpYKQRx8F2vZSjq0FRW
	iEmh+xDa2o0twA3Wm6o8fMubNruHKE3XQ3Abf767QyBwY9aYjXAGASi4Jy0tJgSid5t0HP2HYtdCb
	9tHuH5aH4kwG6+WjbDuk+kVdcN1/is0dZwZk9Zo9uIaAeSVFm5JMwYX9I7IuDMl8h2MNlPpSKmYWJ
	pQSvBPpw==;
Received: from i53875a40.versanet.de ([83.135.90.64] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v93fX-0000Ye-0q; Wed, 15 Oct 2025 17:44:03 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/6] drm/bridge: dw-hdmi-qp: Fixup timer base setup
Date: Wed, 15 Oct 2025 17:44:01 +0200
Message-ID: <2753758.X9hSmTKtgW@diego>
In-Reply-To: <20250903-rk3588-hdmi-cec-v4-2-fa25163c4b08@collabora.com>
References: <20250903-rk3588-hdmi-cec-v4-0-fa25163c4b08@collabora.com>
 <20250903-rk3588-hdmi-cec-v4-2-fa25163c4b08@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_084436_732866_3F6295D4 
X-CRM114-Status: GOOD (  23.73  )
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

QW0gTWl0dHdvY2gsIDMuIFNlcHRlbWJlciAyMDI1LCAyMDo1MTowMCBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPiBDdXJyZW50bHkgdGhl
IFRJTUVSX0JBU0VfQ09ORklHMCByZWdpc3RlciBnZXRzIGluaXRpYWxpemVkIHRvIGEgZml4ZWQK
PiB2YWx1ZSBhcyBpbml0aWFsbHkgZm91bmQgaW4gdmVuZG9yIGRyaXZlciBjb2RlIHN1cHBvcnRp
bmcgdGhlIFJLMzU4OAo+IFNvQy4gIEFzIGEgbWF0dGVyIG9mIGZhY3QgdGhlIHZhbHVlIG1hdGNo
ZXMgdGhlIHJhdGUgb2YgdGhlIEhETUkgVFgKPiByZWZlcmVuY2UgY2xvY2ssIHdoaWNoIGlzIHJv
dWdobHkgNDI4LjU3IE1Iei4KPiAKPiBIb3dldmVyLCBvbiBSSzM1NzYgU29DIHRoYXQgcmF0ZSBp
cyBzbGlnaHRseSBsb3dlciwgaS5lLiAzOTYuMDAgTUh6LCBhbmQKPiB0aGUgaW5jb3JyZWN0IHJl
Z2lzdGVyIGNvbmZpZ3VyYXRpb24gYnJlYWtzIENFQyBmdW5jdGlvbmFsaXR5Lgo+IAo+IFNldCB0
aGUgdGltZXIgYmFzZSBhY2NvcmRpbmcgdG8gdGhlIGFjdHVhbCByZWZlcmVuY2UgY2xvY2sgcmF0
ZSB0aGF0Cj4gc2hhbGwgYmUgcHJvdmlkZWQgYnkgdGhlIHBsYXRmb3JtIGRyaXZlci4gIE90aGVy
d2lzZSBmYWxsYmFjayB0byB0aGUKPiB2ZW5kb3IgZGVmYXVsdC4KPiAKPiBXaGlsZSBhdCBpdCwg
YWxzbyBkcm9wIHRoZSB1bm5lY2Vzc2FyeSBlbXB0eSBsaW5lcyBpbgo+IGR3X2hkbWlfcXBfaW5p
dF9odygpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4u
Y2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhl
aWtvQHNudGVjaC5kZT4KClRoaXMgX2RvZXNfIGxvb2sgb2sgdG8gbWUsIGJ1dCBhcyB0aGF0IHRv
dWNoZXMgdGhlIG1haW4gYnJpZGdlLCBjb3VsZAp3ZSBnZXQgYSAybmQgc2V0IG9mIGV5ZXM/CgpU
aGFua3MKSGVpa28KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHct
aGRtaS1xcC5jIHwgMTIgKysrKysrKysrLS0tCj4gIGluY2x1ZGUvZHJtL2JyaWRnZS9kd19oZG1p
X3FwLmggICAgICAgICAgICAgIHwgIDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9i
cmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5v
cHN5cy9kdy1oZG1pLXFwLmMKPiBpbmRleCBmYzk4OTUzNjcyYjZmYjM4OGQwNTIwMWUyODBkMjRi
OGYyMTQ0OThhLi40YmE3YjMzOWVmZjYyNTkyYWE3NDg0MjlhM2JmY2E4MjQ5NDY3OWQxIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMKPiBAQCAt
MTYxLDYgKzE2MSw3IEBAIHN0cnVjdCBkd19oZG1pX3FwIHsKPiAgCQl2b2lkICpkYXRhOwo+ICAJ
fSBwaHk7Cj4gIAo+ICsJdW5zaWduZWQgbG9uZyByZWZfY2xrX3JhdGU7Cj4gIAlzdHJ1Y3QgcmVn
bWFwICpyZWdtOwo+ICAKPiAgCXVuc2lnbmVkIGxvbmcgdG1kc19jaGFyX3JhdGU7Cj4gQEAgLTEy
MTAsMTMgKzEyMTEsMTEgQEAgc3RhdGljIHZvaWQgZHdfaGRtaV9xcF9pbml0X2h3KHN0cnVjdCBk
d19oZG1pX3FwICpoZG1pKQo+ICB7Cj4gIAlkd19oZG1pX3FwX3dyaXRlKGhkbWksIDAsIE1BSU5V
TklUXzBfSU5UX01BU0tfTik7Cj4gIAlkd19oZG1pX3FwX3dyaXRlKGhkbWksIDAsIE1BSU5VTklU
XzFfSU5UX01BU0tfTik7Cj4gLQlkd19oZG1pX3FwX3dyaXRlKGhkbWksIDQyODU3MTQyOSwgVElN
RVJfQkFTRV9DT05GSUcwKTsKPiArCWR3X2hkbWlfcXBfd3JpdGUoaGRtaSwgaGRtaS0+cmVmX2Ns
a19yYXRlLCBUSU1FUl9CQVNFX0NPTkZJRzApOwo+ICAKPiAgCS8qIFNvZnR3YXJlIHJlc2V0ICov
Cj4gIAlkd19oZG1pX3FwX3dyaXRlKGhkbWksIDB4MDEsIEkyQ01fQ09OVFJPTDApOwo+IC0KPiAg
CWR3X2hkbWlfcXBfd3JpdGUoaGRtaSwgMHgwODVjMDg1YywgSTJDTV9GTV9TQ0xfQ09ORklHMCk7
Cj4gLQo+ICAJZHdfaGRtaV9xcF9tb2QoaGRtaSwgMCwgSTJDTV9GTV9FTiwgSTJDTV9JTlRFUkZB
Q0VfQ09OVFJPTDApOwo+ICAKPiAgCS8qIENsZWFyIERPTkUgYW5kIEVSUk9SIGludGVycnVwdHMg
Ki8KPiBAQCAtMTI2Miw2ICsxMjYxLDEzIEBAIHN0cnVjdCBkd19oZG1pX3FwICpkd19oZG1pX3Fw
X2JpbmQoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiAgCWhkbWktPnBoeS5vcHMgPSBw
bGF0X2RhdGEtPnBoeV9vcHM7Cj4gIAloZG1pLT5waHkuZGF0YSA9IHBsYXRfZGF0YS0+cGh5X2Rh
dGE7Cj4gIAo+ICsJaWYgKHBsYXRfZGF0YS0+cmVmX2Nsa19yYXRlKSB7Cj4gKwkJaGRtaS0+cmVm
X2Nsa19yYXRlID0gcGxhdF9kYXRhLT5yZWZfY2xrX3JhdGU7Cj4gKwl9IGVsc2Ugewo+ICsJCWhk
bWktPnJlZl9jbGtfcmF0ZSA9IDQyODU3MTQyOTsKPiArCQlkZXZfd2FybihkZXYsICJTZXQgcmVm
X2Nsa19yYXRlIHRvIHZlbmRvciBkZWZhdWx0XG4iKTsKPiArCX0KPiArCj4gIAlkd19oZG1pX3Fw
X2luaXRfaHcoaGRtaSk7Cj4gIAo+ICAJcmV0ID0gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycShk
ZXYsIHBsYXRfZGF0YS0+bWFpbl9pcnEsCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2JyaWRn
ZS9kd19oZG1pX3FwLmggYi9pbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaV9xcC5oCj4gaW5kZXgg
YjRhOWI3Mzk3MzRlYzdiNjcwMTNiNjgzZmU2MDE3NTUxYWExOTE3Mi4uNzZlY2YzMTMwMTk5Nzcx
ODYwNGEwNWY3MGNlOWVhYjg2OTVlMjZiNSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9icmlk
Z2UvZHdfaGRtaV9xcC5oCj4gKysrIGIvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWlfcXAuaAo+
IEBAIC0yNCw2ICsyNCw3IEBAIHN0cnVjdCBkd19oZG1pX3FwX3BsYXRfZGF0YSB7Cj4gIAl2b2lk
ICpwaHlfZGF0YTsKPiAgCWludCBtYWluX2lycTsKPiAgCWludCBjZWNfaXJxOwo+ICsJdW5zaWdu
ZWQgbG9uZyByZWZfY2xrX3JhdGU7Cj4gIH07Cj4gIAo+ICBzdHJ1Y3QgZHdfaGRtaV9xcCAqZHdf
aGRtaV9xcF9iaW5kKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gCj4gCgoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
