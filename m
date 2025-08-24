Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65CD1CA0FE1
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Aug 2025 06:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HThELJ5Jfh4XPC/NGMTuKy/e7bfgWdONSOwk65BRqK0=; b=jTdcQuiXiopqRU
	XW0LtMpt3YgEzTUGeb53t5xTJvCQipX3TZEBVfefj4U7J8GeYu7flmp4y1Z/yml0gXjnucG9QOzXx
	c0BVs5yiE7XwkIyQz+AKmTX0ozhR1KjrI8JlL2DY41ZvTQyW46i8qrKsl8StxEjq+MlAdDGnCMDka
	i4wELf37VhLCLynCCZrMlOSI3ElGB0ymxnQTesiRnDV6yMsAf25edUZp3mBxWQH2IslMju9lf5nal
	HVUyIIdYB9a+Rx2NNttxicdYOmaCTnjWdMxYa0vl8XKbSkT5tQ1CXpjF805RxDOL25KCP5EiZhe+w
	QQtyxFVDvLhrTalgiybg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq3wx-00000005kx5-382w;
	Sun, 24 Aug 2025 06:11:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq3uJ-00000005kpo-2or7;
	Sun, 24 Aug 2025 06:08:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Mupk3r2Lw9myiPKOhZiMD7z8z8WBSkZnpSNn80gsJsU=; b=SnvMnWFlWedvFlVdM3jJtWJvvp
	xQvs0SfuvsN5dN1g6ELZeTWjhkw+gfxSzltwvoPW3LkvJ/8x4HqN6cOeKyZ6C+qIBVMMIvdqR2geL
	BI1q50N9DBiJXvsR3PjCSDO6Y2GcllQVwP1NS0IrbWI1/FDnkCinYe3YTUg+imOZ/kilPjjTXVdl5
	Z073+7BEfhkKi4frUPOWRLK+MvWEmqBJeWqFXg8HKxFeU6rXxVgSRkC+mYCMc2XW/whK1hvMz3FOm
	u4/HslXR2RYSXmkx9CZEnW/NeyeQhISe8gqh2FZWKFRACJ7isb0KD8wnFra8a2cDJ6haF1JsI8RL4
	OA8Y681Q==;
Received: from [212.111.254.164] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uq3tt-0003EY-IB; Sun, 24 Aug 2025 08:08:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: andy.yan@rock-chips.com, hjc@rock-chips.com,
 Damon Ding <damon.ding@rock-chips.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 dmitry.baryshkov@oss.qualcomm.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1] drm/rockchip: analogix_dp: Apply devm_clk_get_optional() for
 &rockchip_dp_device.grfclk
Date: Sun, 24 Aug 2025 08:08:19 +0200
Message-ID: <7656195.LvFx2qVVIh@phil>
In-Reply-To: <20250824031932.3204920-1-damon.ding@rock-chips.com>
References: <20250824031932.3204920-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_230847_734093_19751070 
X-CRM114-Status: GOOD (  17.10  )
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

SGkgRGFtb24sCgpBbSBTb25udGFnLCAyNC4gQXVndXN0IDIwMjUsIDA1OjE5OjMyIE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGFtb24gRGluZzoKPiBUaGUgImdyZiIgY2xv
Y2sgaXMgb3B0aW9uYWwgZm9yIFJvY2tjaGlwIGVEUCBjb250cm9sbGVyKFJLMzM5OSBuZWVkcwo+
IHdoaWxlIFJLMzI4OCBhbmQgUkszNTg4IGRvIG5vdCkuCj4gCj4gSXQgY2FuIG1ha2UgdGhlIGNv
ZGUgbW9yZSBjb25zaWNlIHRvIHVzZSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoKQo+IGluc3RlYWQg
b2YgZGV2bV9jbGtfZ2V0KCkgd2l0aCBleHRyYSBjaGVja3MuCj4gCj4gU2lnbmVkLW9mZi1ieTog
RGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMgfCA4ICsrLS0tLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jIGIv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMKPiBpbmRleCBk
MzBmMDk4M2E1M2EuLmQwZjc4YWI5ZmFhNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jCj4gQEAgLTMzNSwxMiArMzM1LDggQEAgc3Rh
dGljIGludCByb2NrY2hpcF9kcF9vZl9wcm9iZShzdHJ1Y3Qgcm9ja2NoaXBfZHBfZGV2aWNlICpk
cCkKPiAgCQlyZXR1cm4gUFRSX0VSUihkcC0+Z3JmKTsKPiAgCX0KPiAgCj4gLQlkcC0+Z3JmY2xr
ID0gZGV2bV9jbGtfZ2V0KGRldiwgImdyZiIpOwo+IC0JaWYgKFBUUl9FUlIoZHAtPmdyZmNsaykg
PT0gLUVOT0VOVCkgewo+IC0JCWRwLT5ncmZjbGsgPSBOVUxMOwo+IC0JfSBlbHNlIGlmIChQVFJf
RVJSKGRwLT5ncmZjbGspID09IC1FUFJPQkVfREVGRVIpIHsKPiAtCQlyZXR1cm4gLUVQUk9CRV9E
RUZFUjsKPiAtCX0gZWxzZSBpZiAoSVNfRVJSKGRwLT5ncmZjbGspKSB7Cj4gKwlkcC0+Z3JmY2xr
ID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKGRldiwgImdyZiIpOwo+ICsJaWYgKElTX0VSUihkcC0+
Z3JmY2xrKSkgewo+ICAJCURSTV9ERVZfRVJST1IoZGV2LCAiZmFpbGVkIHRvIGdldCBncmYgY2xv
Y2tcbiIpOwo+ICAJCXJldHVybiBQVFJfRVJSKGRwLT5ncmZjbGspOwoKZ2VuZXJhbGwgSSBkZWZp
bml0bHkgSSBhZ3JlZSwgYnV0IHlvdSdyZSBsb29zaW5nIHRoZQoiZG9uJ3QgcHJpbnQgYW55dGhp
bmcgZm9yIEVQUk9CRV9ERUZFUiIgaGFuZGxpbmcuCgpBZGRpdGlvbmFsbHkgRFJNX0RFVl9FUlJP
UiBzYXlzIGluIHRoZSBjb2RlCiJ0aGlzIGlzIGRlcHJlY2F0ZWQgaW4gZmF2b3Igb2YgZHJtX2Vy
cigpIG9yIGRldl9lcnIoKS4iIC4KCkFsc28gdGhpcyBpbiB0aGUgcHJvYmUtcGF0aCwgc28gdG8g
Y2F0Y2ggYm90aCBpc3N1ZXMsIEknZCBzdWdlc3QKdXNpbmcgZGV2X2Vycl9wcm9iZSgpIGZvciB0
aGUgbWVzc2FnZSwgd2hpY2ggaGFuZGxlcyBFUFJPQkVfREVGRVIKYXV0b21hdGljYWxseS4KCkhl
aWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
