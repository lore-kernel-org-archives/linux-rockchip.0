Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D325C4450D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4V+7LV8rjLhYmZVlMwRAkRVGJxREmaWMtWUQAIjY48=; b=VUt50JHUwjjxKb
	t8NdVRJWB2tY0he5zXSM7DXVx0tNYclCsN3YfY5c5kL917RnrX9tCEepNv+mn4uS0r8vWx1SVZ7W8
	cLDFKNPC2oyBFASHQlq+CBWJeJU6+CY8GQQJRTb9dWOsktuZ8GlJg9EOy0NV/cDwbzQuwI5tEcYK/
	ZjfYqi2CKaU6SQxU5WT6dHIb/cM7ILNBoItxS2Qkvv1KX3XMFjdGKNEPwu/EvjjwkcuvfaOLNjkbm
	/NNvJGxv0rnesNWWSsfnUSRCKak6mTjRHUZi9mcSG0fmfyLiVDxJalcPc0PvKdxodcaukSMWkPgA/
	6uSb0f+AneAcDFXd/GXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkSY-00000001ZTf-2gfO;
	Thu, 09 Jul 2026 08:50:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHifi-00000001ZQ2-2CMf;
	Tue, 28 Apr 2026 13:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=DY37OnpoYjjW+GFpmDYkzr+BXySsTF4/pHUAAopHjvA=; b=LY41/NpzGoQDzqmSDw9fNTImG1
	x8GguNfMjWJXwKSyNSZ8TRAKcTzB0P30/fVcjoL5lJtPIOnV+FLZRFFb+G1xWNChbpwSQ8K2nimyu
	mghfuPAFuoKmipElJ2hp/TY4pJEhdhW13Qbqpk0YgChmcebJG2Ja3tHEK1/jRsb6I2cRG1WWfYDLb
	006A1D4v3LSB5N/mM64YPiwUoCL6FuCP4gFm4/OU6to1nRhEUv5JRoxo+E9+3B4w0Y0mlQoyFUdFy
	QjZ9K1RgSD7Cgftk34rjCXStJTz1/g4AJn74gonRbmlDP8Ts5cysLXpZfC/73Vwg4jg33BuECSTLQ
	qdfhr74Q==;
Received: from smtpout-04.galae.net ([185.171.202.116])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHifd-00000003Ca3-3QC9;
	Tue, 28 Apr 2026 13:40:17 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 95ABAC5EF0B;
	Tue, 28 Apr 2026 13:40:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D19BC601D0;
	Tue, 28 Apr 2026 13:40:09 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C6AAE10728BFF;
	Tue, 28 Apr 2026 15:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1777383605; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=DY37OnpoYjjW+GFpmDYkzr+BXySsTF4/pHUAAopHjvA=;
	b=qRLoVPjWicMlOER4CBoXDyZ31IS3N9wzfHFsgyWbAAFF/gci+qsFmTs0vCeqFcMtumISls
	Tj3oY/2Cdf6m/7gztcQrTJLdN0ggRvFVqgt+JH8FxO2/nx+GfiibBB7tr9VdYd2pRAyZX1
	XAXF0QiFbh370lTIQPb7xonACEwx2kQTWqUUcXxmMBeCKnlqHPelpK3fTwkngZn/4NCD/d
	KE58A7C2KizgbREMj4kyFapvuVzo03ASQ8lKHF89cbbYlD9WTUWuW4Ve1tF5Yw+ztjpBH4
	MjEA//3NGYT7/zO8OOYAeAWTnaFj1l+B1bRPPqqwsMjaj7jeo7/wmSi84hXibw==
Mime-Version: 1.0
Date: Tue, 28 Apr 2026 15:39:43 +0200
Message-Id: <DI4TW9XECX53.17TEZPCSWTH1A@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v2 00/41] drm/display: bridge-connector: attach encoder
 to the connector
Cc: "Hui Pu" <Hui.Pu@gehealthcare.com>, "Ian Ray"
 <ian.ray@gehealthcare.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <asahi@lists.linux.dev>,
 <imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mips@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
 <linux-amlogic@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
 <freedreno@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <linux-tegra@vger.kernel.org>, <linux-samsung-soc@vger.kernel.org>,
 <linux-renesas-soc@vger.kernel.org>
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Sasha Finkelstein"
 <fnkl.kernel@gmail.com>, "Janne Grunau" <j@jannau.net>, "Liu Ying"
 <victor.liu@nxp.com>, "Douglas Anderson" <dianders@chromium.org>,
 "Laurentiu Palcu" <laurentiu.palcu@oss.nxp.com>, "Lucas Stach"
 <l.stach@pengutronix.de>, "Frank Li" <Frank.Li@nxp.com>, "Sascha Hauer"
 <s.hauer@pengutronix.de>, "Pengutronix Kernel Team"
 <kernel@pengutronix.de>, "Fabio Estevam" <festevam@gmail.com>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Paul Cercueil" <paul@crapouillou.net>,
 "Anitha Chrisanthus" <anitha.chrisanthus@intel.com>, "Chun-Kuang Hu"
 <chunkuang.hu@kernel.org>, "Matthias Brugger" <matthias.bgg@gmail.com>,
 "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>,
 "Kevin Hilman" <khilman@baylibre.com>, "Jerome Brunet"
 <jbrunet@baylibre.com>, "Martin Blumenstingl"
 <martin.blumenstingl@googlemail.com>, "Rob Clark"
 <robin.clark@oss.qualcomm.com>, "Dmitry Baryshkov" <lumag@kernel.org>,
 "Abhinav Kumar" <abhinav.kumar@linux.dev>, "Jessica Zhang"
 <jesszhan0024@gmail.com>, "Sean Paul" <sean@poorly.run>, "Marijn Suijten"
 <marijn.suijten@somainline.org>, "Tomi Valkeinen"
 <tomi.valkeinen@ideasonboard.com>, "Sandy Huang" <hjc@rock-chips.com>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Andy Yan"
 <andy.yan@rock-chips.com>, "Thierry Reding" <thierry.reding@gmail.com>,
 "Mikko Perttunen" <mperttunen@nvidia.com>, "Jonathan Hunter"
 <jonathanh@nvidia.com>, "Jingoo Han" <jingoohan1@gmail.com>, "Inki Dae"
 <inki.dae@samsung.com>, "Seung-Woo Kim" <sw0312.kim@samsung.com>, "Kyungmin
 Park" <kyungmin.park@samsung.com>, "Krzysztof Kozlowski" <krzk@kernel.org>,
 "Alim Akhtar" <alim.akhtar@samsung.com>, "Laurent Pinchart"
 <laurent.pinchart+renesas@ideasonboard.com>, "Tomi Valkeinen"
 <tomi.valkeinen+renesas@ideasonboard.com>, "Kieran Bingham"
 <kieran.bingham+renesas@ideasonboard.com>, "Geert Uytterhoeven"
 <geert+renesas@glider.be>, "Magnus Damm" <magnus.damm@gmail.com>, "Biju
 Das" <biju.das.jz@bp.renesas.com>, "Marek Vasut" <marex@denx.de>, "Stefan
 Agner" <stefan@agner.ch>, "Jyri Sarha" <jyri.sarha@iki.fi>, "Michal Simek"
 <michal.simek@amd.com>
X-Mailer: aerc 0.20.1
References: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com> <cf2c91396eb3017aa51dd9c840badffddca2f7ec.camel@iscas.ac.cn>
In-Reply-To: <cf2c91396eb3017aa51dd9c840badffddca2f7ec.camel@iscas.ac.cn>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_144014_147745_82A92F02 
X-CRM114-Status: GOOD (  26.28  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

SGVsbG8gSWNlbm93eSwKCk9uIFNhdCBBcHIgMjUsIDIwMjYgYXQgNToyMiBQTSBDRVNULCBJY2Vu
b3d5IFpoZW5nIHdyb3RlOgo+IOWcqCAyMDI2LTA0LTIz5Zub55qEIDExOjE2ICswMjAw77yMTHVj
YSBDZXJlc29saeWGmemBk++8mgo+PiBUaGlzIHNlcmllcyBzaW1wbGlmaWVzIHVzaW5nIHRoZSBi
cmlkZ2UtY29ubmVjdG9yIGJ5IHJlbW92aW5nIHRoZQo+PiBuZWVkIHRvCj4+IGF0dGFjaCB0aGUg
bmV3bHkgY3JlYXRlZCBjb25uZWN0b3IgdG8gdGhlIGVuY29kZXIuCj4+Cj4+ID09IFNlcmllcyBk
ZXNjcmlwdGlvbgo+Pgo+PiBDdXJyZW50bHkgYWxsIHVzZXJzIG9mIHRoZSBicmlkZ2UtY29ubmVj
dG9yIG11c3QgY2FsbAo+PiBkcm1fY29ubmVjdG9yX2F0dGFjaF9lbmNvZGVyKCkgaW1tZWRpYXRl
bHkgYWZ0ZXIgYSBzdWNjZXNzZnVsCj4+IGRybV9icmlkZ2VfY29ubmVjdG9yX2luaXQoKS4KPj4K
Pj4gVGhpcyBpcyBhbiB1bm5lY2Vzc2FyeSBidXJkZW4gZm9yIHVzZXJzLiBNb3ZlIHRoZSBjYWxs
IHRvIHRoZSBlbmQgb2YKPj4gZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCgpIHNvIGFsbCBjYWxs
ZXJzIGNhbiBiZSBzaW1wbGlmaWVkLgo+Pgo+PiDCoCogUGF0Y2ggMSBhZGRzIGEgZHJtX2Nvbm5l
Y3Rvcl9hdHRhY2hfZW5jb2RlcigpIGNhbGwgYXQgdGhlIGVuZCBvZgo+PiDCoMKgIGRybV9icmlk
Z2VfY29ubmVjdG9yX2luaXQoKQo+PiDCoCogVGhlIG90aGVyIHBhdGNoZXMgcmVtb3ZlIGRybV9j
b25uZWN0b3JfYXR0YWNoX2VuY29kZXIoKSBhZnRlciBhbGwKPj4gwqDCoCBkcm1fYnJpZGdlX2Nv
bm5lY3Rvcl9pbml0KCkgY2FsbHMsIG9yZGVyZWQgZnJvbSB0aGUgc2ltcGxlc3Qgb25lcwo+PiDC
oMKgIChvbmx5IHRoZSBsYXN0IG9uZSBpcyBzb21ld2hhdCBub24tb2J2aW91cykKPj4KPj4gVGhl
IENjIGxpc3QgaXMgaHVnZSBkdWUgdG8gdGhlIG1hbnkgZHJpdmVycyB0b3VjaGVkLiBJIHNlbnQg
djEgdG8gYQo+PiByZWR1Y2VkCj4+IENjIGxpc3QgdG8gZW5zdXJlIHRoZXJlIGlzIGFuIGFncmVl
bWVudCBhYm91dCB0aGUgb3ZlcmFsbCBpZGVhLiBUaGF0Cj4+IHNlZW1zCj4+IHRvIGJlIHRoZSBj
YXNlLCBzbyBub3cgaXQncyB0aW1lIHRvIGNvcHkgYWxsIGRyaXZlcnMgbWFpbnRhaW5lcnMuCj4+
Cj4+IEl0IHdvdWxkIGJlIG5pY2UgdG8gYXBwbHkgYWxsIG9mIHRoaXMgc2VyaWVzIGF0IG9uY2Ug
dG8gYXZvaWQKPj4gZHVwbGljYXRlZAo+PiBjYWxscyB0byBkcm1fY29ubmVjdG9yX2F0dGFjaF9l
bmNvZGVyKCkgaW4gdGhlIGludGVyaW0uIFRoYXQgd291bGQgYmUKPj4gaGFybWxlc3MgYmVhY3Vz
ZSBkcm1fY29ubmVjdG9yX2F0dGFjaF9lbmNvZGVyKCkgaXMgaWRlbXBvdGVudCwgYnV0Cj4+IHVu
cGxlYXNhbnQuCj4+Cj4+ID09IEFkZGl0aW9uYWwgcmF0aW9uYWxlIChmb3IgdGhlIGN1cmlvdXMp
Cj4+Cj4+IEJlc2lkZXMgbWFraW5nIHRoZSB1c2FnZSBvZiB0aGUgYnJpZGdlLWNvbm5lY3RvciBh
IGJpdCBzaW1wbGVyLCB0aGlzCj4+IHNlcmllcwo+PiBpcyBpbiBwcmVwYXJhdGlvbiBmb3IgRFJN
IGJyaWRnZSBob3RwbHVnLiBIZXJlJ3Mgd2h5LCBmZWVsIGZyZWUgdG8KPj4gc2tpcCBpZgo+PiB5
b3UgZG9uJ3QgY2FyZS4KPj4KPj4gVGhlIG9sZCBicmlkZ2UgaG90cGx1ZyBwcm9wb3NhbHMgSSBo
YXZlIHNlbnQgaW4gdGhlIHBhc3QgWzFdIHdlcmUKPj4gYmFzZWQgb24KPj4gYSBob3RwbHVnLWJy
aWRnZSBkcml2ZXIgdG8gc2l0IGJldHdlZW4gdGhlIGxhc3QgZml4ZWQgYnJpZGdlIGFuZCB0aGUK
Pj4gZmlyc3QKPj4gaG90cGx1Z2dlZCBicmlkZ2UuIERpc2N1c3Npb24gd2l0aCB0aGUgY29tbXVu
aXR5IGxlZCB0byB0aGUgbmVlZCBvZgo+PiByZW1vdmluZyB0aGUgaG90cGx1Zy1icmlkZ2UgYW5k
IGxldCBjb21tb24gRFJNIGNvZGUgaGFuZGxlIGhvdHBsdWcuCj4+IFRoZQo+PiBjb21tb24gcGxh
Y2Ugb2YgY29kZSB0aGF0IGFwcGVhcnMgdGhlIG1vc3Qgc3VpdGFibGUgZm9yIGhvdHBsdWcKPj4g
aGFuZGxpbmcgaXMKPj4gdGhlIGJyaWRnZS1jb25uZWN0b3IsIHdoaWNoIGlzIGJ5IG5vdyB0aGUg
cmVjb21tZW5kZWQgd2F5IHRvIGhhbmRsZQo+PiBjb25uZWN0b3IgaW5zdGFudGlhdGlvbiBhZnRl
ciBhIGJyaWRnZSBjaGFpbi4KPj4KPj4gU28gSSdtIGluIHRoZSBwcm9jZXNzIG9mIGV4dGVuZGlu
ZyB0aGUgYnJpZGdlLWNvbm5lY3RvciB0byBiZSB0aGUKPj4gY2VudHJhbAo+PiBwb2ludCB0byBo
YW5kbGUgYnJpZGdlIGhvdHBsdWcuIFR1cm5zIG91dCB0aGUgbmVlZCB0byBjYWxsCj4+IGRybV9j
b25uZWN0b3JfYXR0YWNoX2VuY29kZXIoKSBhZnRlciBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0
KCkgaGFzCj4+IHJldHVybmVkIGlzIGFkZGluZyBiaWcgaGVhZGFjaGVzIHRvIHN1Y2ggd29yay4g
U28gSSdtIHNlbmQgdGhpcyBsb25nCj4+IGJ1dAo+PiBzaW1wbGUgc2VyaWVzIHRvIGJvdGggc2lt
cGxpZnkgYnJpZGdlLWNvbm5lY3RvciB1c2FnZSBhbmQgcmVtb3ZlIG9uZQo+PiBvYnN0YWNsZSBm
cm9tIHRoZSBicmlkZ2UgaG90cGx1ZyB3b3JrLiBUaGlzIHNlcmllcyBpcyByZWxldmFudCBieQo+
PiBpdHNlbGYKPj4gYW55d2F5Lgo+Pgo+PiBbMV0KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGttbC8yMDI1MDIwNi1ob3RwbHVnLWRybS1icmlkZ2UtdjYtMjYtOWQ2ZjJjOWMzMDU4QGJvb3Rs
aW4uY29tLwo+Pgo+PiA9PSBHcmFuZCBwbGFuCj4+Cj4+IFRoaXMgaXMgcGFydCBvZiB0aGUgd29y
ayB0byBzdXBwb3J0IGhvdHBsdWcgb2YgRFJNIGJyaWRnZXMuIFRoZSBncmFuZAo+PiBwbGFuCj4+
IHdhcyBkaXNjdXNzZWQgaW4gWzBdLgo+Cj4gSnVzdCBzZWUgdGhlIGJyaWRnZSBob3RwbHVnZ2lu
ZyB0aGluZywgaXMgaXQgcG9zc2libGUgZm9yIERSTSBkcml2ZXJzCj4gdG8gZGVjbGFyZSBicmlk
Z2VzIGF0dGFjaGVkIHRvIHRoZW1zZWx2ZXMgYWZ0ZXIgdGhpcz8KPgo+IExvb25nc29uIDdBMTAw
MCBQQ0ggY2FuIG9ubHkgb3V0cHV0IERQSSBzaWduYWxzLCBzbyBuZWFybHkgYWxsIHByb2R1Y3Rz
Cj4gd2l0aCBpdCBhcmUgc2hpcHBpbmcgd2l0aCBzb21lIGtpbmQgb2YgZXh0ZXJuYWwgYnJpZGdl
cywgYnV0IGN1cnJlbnRseQo+IGRybS9sb29uZ3NvbiBkb2VzIG5vdCBzdXBwb3J0IHRoZW0gKGFs
bCBkaXNwbGF5IGNvbm5lY3RvcnMgYXJlIG5vdyBzZWVuCj4gYXMgRFBJIG9uZXMsIGFuZCBjb25u
ZWN0b3JzIGJlaGluZCBub24tdHJhbnNwYXJlbnQgYnJpZGdlcyB3b24ndCB3b3JrKS4KPgo+IFRo
ZSBicmlkZ2VzIGFyZSBnb2luZyB0byBiZSBhY2Nlc3NlZCBieSB0aGUgRERDIEkyQyBidXNzZXMg
b2YgN0ExMDAwLAo+IGFuZCBhcmUgbm90IGRlY2xhcmVkIHdpdGggZGV2aWNlIHRyZWUgKHN5c3Rl
bXMgd2l0aCA3QTEwMDAgbmV2ZXIgc2hpcAo+IHdpdGggZGV2aWNlIHRyZWVzLCBhbmQgTGludXgg
Y3VycmVudGx5IG1hdGNoZXMgYSBidWlsdC1pbiBkZXZpY2UgdHJlZSkuCj4gKEJyaWRnZXMgYmVp
bmcgb24gdGhlIEREQyBJMkMgYWxzbyBpbnRyb2R1Y2VzIHNvbWUgZGVwZW5kZW5jeSBmb3IgdGhl
bQo+IHRvIGRlcGVuZCBvbiB0aGUgZHJtL2xvb25nc29uIGRyaXZlci4pCj4KPiBMb29uZ3NvbiBo
YXZlIGRlZmluZWQgc29tZSBraW5kIG9mIFZCSU9TIGRlY2xhcmluZyB3aGF0IGJyaWRnZSBpcwo+
IGJlaGluZCwgYW5kIHRoZWlyIG5vbi1tYWlubGluZSBkcml2ZXIganVzdCBjb250YWlucyBkcml2
ZXIgY29kZXMgZm9yCj4gYWxsIHBvc3NpYmxlIGJyaWRnZXMuIChTdWkgSmluZ2ZlbmcgcHJldmlv
dXNseSB0cmllZCB0byBtYWlubGluZSBzdWNoCj4gcHJhY3RpY2UsIGFuZCBvZiBjb3Vyc2UgaXQn
cyByZWplY3RlZCBiZWNhdXNlIG9mIGNvZGUgZHVwbGljaXR5LikKCkknbSBhZnJhaWQgeW91ciBx
dWVzdGlvbiBnb2VzIGEgYml0IGJleW9uZCBteSBrbm93bGVkZ2UsIHRoZSBob3RwbHVnIHdvcmsK
SSdtIGNhcnJ5aW5nIG9uIGlzIGZvY3VzZXMgb24gRFQgcGxhdGZvcm1zLgoKTXkgbGltaXRlZCB1
bmRlcnN0YWRpbmcgb2Ygbm9uLURUIHBsYXRmb3JtcyBpcyB0aGF0IGEgY2FyZCBkcml2ZXIgbXVz
dAppbnN0YW50aWF0ZSBhbGwgY29tcG9uZW50cyBhbmQgdGllIHRoZW0gdG9nZXRoZXIsIHdoaWNo
IGFzc3VtZXMgaXQgaGFzIHRvCmtub3cgdGhlbSBzb21laG93IChBQ1BJLCBoYXJkY29kZWQsIHdo
YXRldmVyKS4gT3RoZXJzIGNhbiBwcm9iYWJseSBjb21tZW50CmJldHRlciBhYm91dCB0aGlzLgoK
QXMgYSBnZW5lcmFsIHByaW5jaXBsZSwgd2hlbiBkZXZpY2VzIGNhbiBiZSBtaXhlZCBhbmQgbWF0
Y2hlZCBieSB0aGUgYm9hcmQKZGVzaWduZXIsIGhhcmRjb2RpbmcgdGhlbSBpcyBhIGJhZCBkZXNp
Z24gY2hvaWNlLiBUaGluayBvZiBiYWQgb2xkIGJvYXJkCmZpbGVzIHdyaXR0ZW4gaW4gQywgd2hp
Y2ggd2VyZSB1bm1hbmFnZWFibGUgYW5kIGdvdCByZXBsYWNlZCBleGFjdGx5IGJ5CmRldmljZSB0
cmVlLiBTbyBteSBvcGluaW9uIGlzIHRoYXQgRFJNIGVuY29kZXJzIGFuZCBicmlkZ2VzIHNob3Vs
ZCBrbm93IGFzCmxpdHRsZSBhcyBwb3NzaWJsZSBhYm91dCB0aGUgZm9sbG93aW5nIGJyaWRnZSwg
Y29ubmVjdG9yIG9yIHBhbmVsIHRoYXQKZm9sbG93cyB0aGVtLgoKTHVjYQoKLS0KTHVjYSBDZXJl
c29saSwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBz
Oi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
