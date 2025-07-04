Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C5BCC8303D
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jul 2025 14:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Mfods6/tEtFAc3eJ2sEEv2SuAtbPoaOgGehqF0yln4=; b=i1UIbiCnyPGt6w
	3lXNQfokg1o4U20mJfu138UFSVvqEn9C4I3a9Xj4EsF5bSZDUr102E1YS6srMqY5NkxHCGo1jOIxk
	31BFZ4ggEW/3KdDJ/N71ehaP/v/mYbB9tFRscaaNF+d06IhMuCNLlr1Z8imP1eOcmuiLHxZqow7KT
	n/eQ4DbsnjzLb9WAjWzNzqrOcP0BpNdySL2UX/3KaYvuYToYcx/kE87hz4uO5m0kLunKzEc+juwfC
	ZUb9NXgJMJ+CNUmjP2x36Y76rlC6ETBMsKKVXeaC7Ks5Ydiv6wxnhUWciM62fk3ILbXnneh6lrCGg
	UoCzGWBRSpl89VEzjhUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhhk-0000000EiCU-3odM;
	Fri, 04 Jul 2025 14:47:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhYf-0000000Egxk-2d5R;
	Fri, 04 Jul 2025 14:38:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=LpqvI8aigKp1KLyHhO2hfOZECoifhbc86pqy6YCw2lQ=; b=2lfwxlto3SF5a3d7vDXVd1azEr
	+93Z5oQ4/69wdHjHFNUj1jBQrzMaWIdTVOx4TS1MT1G2z/iAviRg0XeaT56eDc+ap85tpgn98obyG
	reR+utLFCUeDMht4w7WyoSqLnZ0Ug9ZzDSHplMF/WwedHZMVWhDJk+ct3NRkFBv8VIowlze1/H588
	ZS65o9feEqQ1hzjqI/1NHCtQ2sg5iwcapWHMb+Rnf4pSf8PGD3n7MPFe3M98zvR69mIZ+dj0IZs/M
	wLvbRzeTwvt0bA42B+rUM3SXJtNloppdwgw+1in2J5IOwzgi4CSTQupuuVXVK9uRIBArsCM16udSu
	8MBqpjQw==;
Received: from i53875b79.versanet.de ([83.135.91.121] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uXhY2-0006HW-Qj; Fri, 04 Jul 2025 16:37:54 +0200
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
Subject: Re: [PATCH 1/5] drm/rockchip: dw_hdmi_qp: Provide CEC IRQ in
 dw_hdmi_qp_plat_data
Date: Fri, 04 Jul 2025 16:37:53 +0200
Message-ID: <13504186.5MRjnR8RnV@diego>
In-Reply-To: <20250704-rk3588-hdmi-cec-v1-1-2bd8de8700cd@collabora.com>
References: <20250704-rk3588-hdmi-cec-v1-0-2bd8de8700cd@collabora.com>
 <20250704-rk3588-hdmi-cec-v1-1-2bd8de8700cd@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_073833_689920_7C73043F 
X-CRM114-Status: GOOD (  18.07  )
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

SGkgQ3Jpc3RpYW4sCgpBbSBGcmVpdGFnLCA0LiBKdWxpIDIwMjUsIDE2OjIzOjIyIE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+IEluIHBy
ZXBhcmF0aW9uIHRvIHN1cHBvcnQgdGhlIENFQyBpbnRlcmZhY2Ugb2YgdGhlIERlc2lnbldhcmUg
SERNSSBRUCBJUAo+IGJsb2NrLCBleHRlbmQgdGhlIHBsYXRmb3JtIGRhdGEgdG8gcHJvdmlkZSB0
aGUgcmVxdWlyZWQgSVJRIG51bWJlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9j
YWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIHwgNCArKysrCj4gIGluY2x1
ZGUvZHJtL2JyaWRnZS9kd19oZG1pX3FwLmggICAgICAgICAgICAgICAgfCAxICsKPiAgMiBmaWxl
cyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9kd19oZG1pX3FwLXJvY2tjaGlwLmMKPiBpbmRleCA3ZDUzMWI2ZjRjMDk4YzZjNTQ4Nzg4
ZGFkNDg3Y2U0NjEzYTJmMzJiLi4xMjZlNTU2MDI1OTYxZTg2NDVmMzU2N2I0ZDdhMWM3M2NjMmYy
ZTdmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pX3FwLXJv
Y2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2Nr
Y2hpcC5jCj4gQEAgLTUzOSw2ICs1MzksMTAgQEAgc3RhdGljIGludCBkd19oZG1pX3FwX3JvY2tj
aGlwX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsCj4gIAlp
ZiAocGxhdF9kYXRhLm1haW5faXJxIDwgMCkKPiAgCQlyZXR1cm4gcGxhdF9kYXRhLm1haW5faXJx
Owo+ICAKPiArCXBsYXRfZGF0YS5jZWNfaXJxID0gcGxhdGZvcm1fZ2V0X2lycV9ieW5hbWUocGRl
diwgImNlYyIpOwo+ICsJaWYgKHBsYXRfZGF0YS5jZWNfaXJxIDwgMCkKPiArCQlyZXR1cm4gcGxh
dF9kYXRhLmNlY19pcnE7Cj4gKwo+ICAJaXJxID0gcGxhdGZvcm1fZ2V0X2lycV9ieW5hbWUocGRl
diwgImhwZCIpOwo+ICAJaWYgKGlycSA8IDApCj4gIAkJcmV0dXJuIGlycTsKPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWlfcXAuaCBiL2luY2x1ZGUvZHJtL2JyaWRnZS9k
d19oZG1pX3FwLmgKPiBpbmRleCBlOWJlNmQ1MDdhZDljZGM1NWY1YzdkNmQzZWYzN2ViYTQxZjFj
ZTc0Li5iNGE5YjczOTczNGVjN2I2NzAxM2I2ODNmZTYwMTc1NTFhYTE5MTcyIDEwMDY0NAo+IC0t
LSBhL2luY2x1ZGUvZHJtL2JyaWRnZS9kd19oZG1pX3FwLmgKPiArKysgYi9pbmNsdWRlL2RybS9i
cmlkZ2UvZHdfaGRtaV9xcC5oCj4gQEAgLTIzLDYgKzIzLDcgQEAgc3RydWN0IGR3X2hkbWlfcXBf
cGxhdF9kYXRhIHsKPiAgCWNvbnN0IHN0cnVjdCBkd19oZG1pX3FwX3BoeV9vcHMgKnBoeV9vcHM7
Cj4gIAl2b2lkICpwaHlfZGF0YTsKPiAgCWludCBtYWluX2lycTsKPiArCWludCBjZWNfaXJxOwo+
ICB9OwoKZnJvbSBhIHN0cnVjdHVyZSBwb2ludC1vZi12aWV3LCBJJ2QgZXhwZWN0IHRoZSBzZXJp
ZXMgdG8gYmUgc29tZXRoaW5nIGxpa2U6CgooMSkgZHJtL2JyaWRnZTogZHctaGRtaS1xcDogQWRk
IENFQyBzdXBwb3J0CiAgICAtPiBpbmNsdWRpbmcgYWRkaW5nIHRoZSBjZWNfaXJxIHRvIGR3X2hk
bWlfcXBfcGxhdF9kYXRhCigyKSBkcm0vYnJpZGdlOiBkdy1oZG1pLXFwOiBGaXh1cCB0aW1lciBi
YXNlIHNldHVwCiAgICAtPiBpbmNsdWRpbmcgYWRkaW5nIHRoZSByZWZfY2xrX3JhdGUgdG8gZHdf
aGRtaV9xcF9wbGF0X2RhdGEKKDMpIGRybS9yb2NrY2hpcDogZHdfaGRtaV9xcDogUHJvdmlkZSBD
RUMgSVJRIGluIGR3X2hkbWlfcXBfcGxhdF9kYXRhCig0KSBkcm0vcm9ja2NoaXA6IGR3X2hkbWlf
cXA6IFByb3ZpZGUgcmVmIGNsb2NrIHJhdGUgaW4gZHdfaGRtaV9xcF9wbGF0X2RhdGEKKDUpIGFy
bTY0OiBkZWZjb25maWc6IEVuYWJsZSBEVyBIRE1JIFFQIENFQyBzdXBwb3J0CgpUaGUgcGF0Y2hl
cyBhZGRpbmcgdGhlIGdlbmVyaWMgZnVuY3Rpb25hbGl0eSB0byB0aGUgYnJpZGdlIHNob3VsZCBh
bHNvCmluY2x1ZGUgdGhlIG5lZWRlZCBlbGVtZW50cyBhbmQgbm90IGRlcGVuZCBvbiBwbGF0Zm9y
bS1zcGVjaWZpYyBwYXRjaGVzLgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
