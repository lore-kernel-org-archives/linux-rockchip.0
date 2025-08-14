Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEACFCA0EE4
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Aug 2025 21:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKu8ZQixFC1iEZdOhCtNSkCQr7ArRXI8ZQklIOsrpSE=; b=4SgLsotrSnRx2w
	gB41bAkxFvUxMSaF5Z4bRbFf2gdf2LOKBYWWVAtkonI5e2qPZDr5rM8zoxpT+aWtLHHmIkiLTLSZ0
	hHvTd4gMH3F98lsY/LOoLJQGYAbauvj7CF2A3fLdvybeNxM91UOgZGghMsiJbm+zYgroGqT9OHRNY
	UxiuICpVEjKlnYogaaFOFawWLBh+5q/nVpf2SgnxWIuYnWwkWXMMK2Af2uVywDeHy5brnAo1r/Szw
	wI6Aj/VjZr2H878X6v0crWLNaKOaBagXyP+kkdjHM03sUlVhCPtE1C0ODdr1hvTkLvcupWGeuULAo
	7bgIVQ0cYMkoja6d6IZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umfMw-00000000a7R-1ROZ;
	Thu, 14 Aug 2025 21:20:18 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umfJt-00000000Zm8-3GxX
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Aug 2025 21:17:12 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250814211704euoutp02c130f4c77eb06dd23010009fe145b073~bvsMNdcDg0523805238euoutp02K
	for <linux-rockchip@lists.infradead.org>; Thu, 14 Aug 2025 21:17:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250814211704euoutp02c130f4c77eb06dd23010009fe145b073~bvsMNdcDg0523805238euoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755206224;
	bh=cSEixDLE7xsPsFz7NBwxP7uK65MZGZKF8ZUmhrV1huw=;
	h=Date:Subject:From:To:Cc:In-Reply-To:References:From;
	b=aif0DMJNDGGyAVppTHMk6Yf+pUZiOWU0ER6evHyGiNIC4x5MUx2Uk4BrgOCHG32br
	 v0vqia2Zf89eZKmw901sVlL+ul/Lzc6Y3ALfe83DhoHRPHhcp/U1Zx/XW7ya5K/4HA
	 EyAA1M0g09bPOExExj4/J1IFPfi27LIby9z7wyEY=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250814211703eucas1p253cb95d05d46ff9f84c21d549f0f0098~bvsK_rr3M1788217882eucas1p2V;
	Thu, 14 Aug 2025 21:17:03 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250814211700eusmtip10f43f1f50846dd52289fb97bdd649f18~bvsIPXpgd2313023130eusmtip1d;
	Thu, 14 Aug 2025 21:17:00 +0000 (GMT)
Message-ID: <7cb50c9c-ac41-43b6-8c69-5f184e7c94cf@samsung.com>
Date: Thu, 14 Aug 2025 23:16:59 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH v4 00/13] Apply drm_bridge_connector and panel_bridge
 helper for the Analogix DP driver
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: Damon Ding <damon.ding@rock-chips.com>, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
	kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
	hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
	dmitry.baryshkov@oss.qualcomm.com, l.stach@pengutronix.de,
	dianders@chromium.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Language: en-US
In-Reply-To: <a3a2f8be-2c3c-49e7-b27a-72364ea48b06@samsung.com>
X-CMS-MailID: 20250814211703eucas1p253cb95d05d46ff9f84c21d549f0f0098
X-Msg-Generator: CA
X-RootMTR: 20250814104818eucas1p2c5029f6d5997f4fafd6370f9e7fb2264
X-EPHeader: CA
X-CMS-RootMailID: 20250814104818eucas1p2c5029f6d5997f4fafd6370f9e7fb2264
References: <CGME20250814104818eucas1p2c5029f6d5997f4fafd6370f9e7fb2264@eucas1p2.samsung.com>
	<20250814104753.195255-1-damon.ding@rock-chips.com>
	<a3a2f8be-2c3c-49e7-b27a-72364ea48b06@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_141710_406637_C5D95F4E 
X-CRM114-Status: GOOD (  10.34  )
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

Ck9uIDE0LjA4LjIwMjUgMTY6MzMsIE1hcmVrIFN6eXByb3dza2kgd3JvdGU6Cj4gT24gMTQuMDgu
MjAyNSAxMjo0NywgRGFtb24gRGluZyB3cm90ZToKPj4gUEFUQ0ggMSBpcyBhIHNtYWxsIGZvcm1h
dCBvcHRpbWl6YXRpb24gZm9yIHN0cnVjdCBhbmFsb2dpZF9kcF9kZXZpY2UuCj4+IFBBVENIIDIg
aXMgdG8gcGVyZm9ybSBtb2RlIHNldHRpbmcgaW4gJmRybV9icmlkZ2VfZnVuY3MuYXRvbWljX2Vu
YWJsZS4KPj4gUEFUQ0ggMy02IGFyZSBwcmVwYXJhdGlvbnMgZm9yIGFwcGx5IGRybV9icmlkZ2Vf
Y29ubmVjdG9yIGhlbHBlci4KPj4gUEFUQ0ggNyBpcyB0byBhcHBseSB0aGUgZHJtX2JyaWRnZV9j
b25uZWN0b3IgaGVscGVyLgo+PiBQQVRDSCA4LTEwIGFyZSB0byBtb3ZlIHRoZSBwYW5lbC9icmlk
Z2UgcGFyc2luZyB0byB0aGUgQW5hbG9naXggc2lkZS4KPj4gUEFUQ0ggMTEtMTIgYXJlIHByZXBh
cmF0aW9ucyBmb3IgYXBwbHkgcGFuZWxfYnJpZGdlIGhlbHBlci4KPj4gUEFUQ0ggMTMgaXMgdG8g
YXBwbHkgdGhlIHBhbmVsX2JyaWRnZSBoZWxwZXIuCj4KPiBUaGlzIHNlcmllcyBsYWNrcyAnc2Vs
ZWN0wqBEUk1fQlJJREdFX0NPTk5FQ1RPUicgaW4gRXh5bm9zRFAncyBLY29uZmlnLCAKPiBzbyBp
dCBjYXVzZXMgYnVpbGQgYnJlYWs6Cj4KPiBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19k
cC5jOjE3NzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byAKPiBgZHJtX2JyaWRnZV9jb25uZWN0b3Jf
aW5pdCcKPiBtYWtlWzJdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUudm1saW51eDo5MTogdm1saW51
eF0gRXJyb3IgMQo+Cj4gQWZ0ZXIgYWRkaW5nIHRoaXMgZGVwZW5kZW5jeSwgdGhlIEV4eW5vcyBE
UCBkcml2ZXIgc3RvcHMgd29ya2luZy4gT24gCj4gU2Ftc3VuZyBTbm93IENocm9tZWJvb2sgSSBv
YnNlcnZlZCBmb2xsb3dpbmcgaXNzdWU6Cj4KPiBbIMKgwqDCoDQuNTM0MjIwXSBleHlub3MtZHAg
MTQ1YjAwMDAuZHAtY29udHJvbGxlcjogZmFpbGVkIHRvIGF0dGFjaCAKPiBmb2xsb3dpbmcgcGFu
ZWwgb3IgYnJpZGdlICgtMTYpCj4gWyDCoMKgwqA0LjU0MzQyOF0gZXh5bm9zLWRybSBleHlub3Mt
ZHJtOiBmYWlsZWQgdG8gYmluZCAKPiAxNDViMDAwMC5kcC1jb250cm9sbGVyIChvcHMgZXh5bm9z
X2RwX29wcyk6IC0xNgo+IFsgwqDCoMKgNC41NTE3NzVdIGV4eW5vcy1kcm0gZXh5bm9zLWRybTog
YWRldiBiaW5kIGZhaWxlZDogLTE2Cj4gWyDCoMKgwqA0LjU1NjU1OV0gZXh5bm9zLWRwIDE0NWIw
MDAwLmRwLWNvbnRyb2xsZXI6IHByb2JlIHdpdGggZHJpdmVyIAo+IGV4eW5vcy1kcCBmYWlsZWQg
d2l0aCBlcnJvciAtMTYKPgo+IEkgd2lsbCBpbnZlc3RpZ2F0ZSBkZXRhaWxzIGxhdGVyIGluIHRo
ZSBldmVuaW5nLgoKVGhlIGZhaWx1cmUgaXMgY2F1c2VkIGJ5IHRyeWluZyB0byBhZGQgcGxhdF9k
YXRhLT5uZXh0X2JyaWRnZSB0d2ljZSAKKGZyb20gZXh5bm9zX2RwJ3MgLmF0dGFjaCBjYWxsYmFj
aywgYW5kIGZyb20gYW5hbG9naXgnIC0+YmluZCBjYWxsYmFjaykuCgoKQmVzdCByZWdhcmRzCi0t
IApNYXJlayBTenlwcm93c2tpLCBQaEQKU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
