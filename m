Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3B3FC8303C
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 07:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hASUx1c6+4AQVOXhGouVuR2+EkDQlIayZZgeDlljSKM=; b=qgvz8ABPbmeCBe
	cD33DkPrUOWIS7NYIgOVJ+2C0zXKKSZ9MVs91ss/Tns4rIdXME0sy2v2WKSer3SVAcTTUKUysbdMS
	IdzRVOSjzQ1taAMn0Uav/Z87QvsTYh235eHkBWTZd90vPMKe4eJPQe0FDP6k+VXgU0Xos0/Fb/sCi
	6z5nZSn8kePf8z3MVLVmJaDtQK2oWpU3Yx3yp2WhvtKUTUiypBlpq6bGw+HgFe+newgY8Rg1J9SXq
	x/J4TMIIw1Ao+6BxwAYXKdT5kYi25hrO0amyoGGdbNHgQSrStFovPZ4A6cycwo6k9bn3NOdsjQUZC
	sD/24+/liPJtNkcD9Qvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8E7-0000000Dz2K-3jMq;
	Fri, 11 Jul 2025 07:31:23 +0000
Received: from mail-m3291.qiye.163.com ([220.197.32.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua83F-0000000DwS8-3Xeg;
	Fri, 11 Jul 2025 07:20:11 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1badf1316;
	Fri, 11 Jul 2025 15:20:05 +0800 (GMT+08:00)
Message-ID: <600f723d-1ec7-4e67-b6f1-316ac8c09235@rock-chips.com>
Date: Fri, 11 Jul 2025 15:20:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/12] drm/exynos: exynos_dp: Remove
 &exynos_dp_device.ptn_bridge
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 dmitry.baryshkov@oss.qualcomm.com, l.stach@pengutronix.de,
 dianders@chromium.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20250709070139.3130635-1-damon.ding@rock-chips.com>
 <20250709070139.3130635-5-damon.ding@rock-chips.com>
 <4596850.bcXerOTE6V@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <4596850.bcXerOTE6V@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkxNSFYaH0NKSk8YGU9PHUJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a97f85b090603a3kunm38f22b26f2f422
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6M0k6Ijo*FzE5HR8KEzA*Czwu
	HwowCQtVSlVKTE5JSUpDT0tMT0tCVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSUtPNwY+
DKIM-Signature: a=rsa-sha256;
	b=Aa+3MMGCvohGN1l0oGiN9mPE9+buYJEnl7ehbJtNvS297qP4+L7vINeEZPucXb9o8A4JzLAXyJsHSJEQslBF+pchRkHo/Eum2OyZKRYcPQ6U1nEYgyo+L5wX146JCFtmGeuaa1OuwRzenz3aIxjmbCmDgLQJwoJopLf5Na7YYzg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=47mqYoiKeZ/zqm9N6N2f/Tu0kYWZlKHaQ/Ixw2H+aSk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_002010_035249_E0647195 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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

SGkgSGVpa28sCgpPbiAyMDI1LzcvMTAgMzo1NSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkg
RGFtb24sCj4gCj4gQW0gTWl0dHdvY2gsIDkuIEp1bGkgMjAyNSwgMDk6MDE6MzEgTWl0dGVsZXVy
b3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBEYW1vbiBEaW5nOgo+PiBVc2UgJmFuYWxvZ2l4
X2RwX3BsYXRfZGF0YS5icmlkZ2UgaW5zdGVhZCBvZiAmZXh5bm9zX2RwX2RldmljZS5wdG5fYnJp
ZGdlCj4+IGRpcmVjdGx5Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5k
aW5nQHJvY2stY2hpcHMuY29tPgo+IAo+PiBAQCAtMTU1LDcgKzE1NCw3IEBAIHN0YXRpYyBpbnQg
ZXh5bm9zX2RwX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIs
IHZvaWQgKmRhdGEpCj4+ICAgCj4+ICAgCWRwLT5kcm1fZGV2ID0gZHJtX2RldjsKPj4gICAKPj4g
LQlpZiAoIWRwLT5wbGF0X2RhdGEucGFuZWwgJiYgIWRwLT5wdG5fYnJpZGdlKSB7Cj4+ICsJaWYg
KCFkcC0+cGxhdF9kYXRhLnBhbmVsICYmICFkcC0+cGxhdF9kYXRhLnBhbmVsKSB7Cj4gCj4gdHlw
by4gVGhlIHNlY29uZCB0ZXN0IHNob3VsZCBiZSBmb3IgZHAtPnBsYXRfZGF0YS5icmlkZ2UKClRo
YXQgd2FzIHNvIGNhcmVsZXNzIG9mIG1lISBJIHdpbGwgZml4IGl0IGluIHRoZSBuZXh0IHZlcnNp
b24uCgo+IAo+IAo+PiAgIAkJcmV0ID0gZXh5bm9zX2RwX2R0X3BhcnNlX3BhbmVsKGRwKTsKPj4g
ICAJCWlmIChyZXQpCj4+ICAgCQkJcmV0dXJuIHJldDsKPiAKPiAKPiAKPiAKPiAKCkJlc3QgcmVn
YXJkcywKRGFtb24KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
