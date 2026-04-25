Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40CDDC44509
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpJY63ISn7yk7d7Yb7GgNutYLgslWUp/4DSvTf2f5js=; b=fZEfMnmhOfUdCK
	RQoDRyt2KnpDz2vpIz5zEP+6bzjwqcw0zRkqlXGwBWF97csZG+dfLN4CVjQoYoFZCA9QsoUhG6R2Q
	jLXJWHRqlszRDO5ncqlz8Djnf+bM8v609g8xlnsGUYNZczijUwf9FupIwW44po6cwKE+qClUUi1kI
	moNr1UQVxTs4kWM9KripY7ENZeCf+w69+72ar1EPZplizr8Ni6rdKoGmZuMOQBsKgJPnP4kONDHTG
	VamXVHT/i6Uo+O8YcudCzlS7f6MXHwmYkzvSBA3lKv4ewMMe/0BtZDjGNSd+yEtWwKGAyrWEFUpmQ
	aC5af1qd7qFqRyewA1nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkSW-00000001ZPt-3fSD;
	Thu, 09 Jul 2026 08:50:17 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGekI-0000000EXac-0H6O;
	Sat, 25 Apr 2026 15:16:40 +0000
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.102.10])
	by APP-05 (Coremail) with SMTP id zQCowAD3hAiZ2uxpJCOPDg--.10690S2;
	Sat, 25 Apr 2026 23:15:40 +0800 (CST)
Message-ID: <fb1d8dc6a764b50456e86d75646c4e4ca574cbb7.camel@iscas.ac.cn>
Subject: Re: [PATCH v2 24/41] drm: verisilicon: remove now-redundant call to
 drm_connector_attach_encoder()
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, Dmitry Baryshkov	
 <dmitry.baryshkov@oss.qualcomm.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>,  Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart	
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Sasha Finkelstein <fnkl.kernel@gmail.com>,
 Janne Grunau <j@jannau.net>, Liu Ying <victor.liu@nxp.com>, Douglas
 Anderson <dianders@chromium.org>, Laurentiu Palcu	
 <laurentiu.palcu@oss.nxp.com>, Lucas Stach <l.stach@pengutronix.de>, Frank
 Li	 <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Philipp Zabel	 <p.zabel@pengutronix.de>, Paul Cercueil
 <paul@crapouillou.net>, Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Matthias Brugger	
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, Kevin Hilman
 <khilman@baylibre.com>,  Jerome Brunet <jbrunet@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, Rob Clark	
 <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang
 <jesszhan0024@gmail.com>, Sean Paul	 <sean@poorly.run>, Marijn Suijten
 <marijn.suijten@somainline.org>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Sandy Huang <hjc@rock-chips.com>, Heiko
 =?ISO-8859-1?Q?St=FCbner?=	 <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Thierry Reding	 <thierry.reding@gmail.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,  Jonathan Hunter
 <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>, Inki Dae
 <inki.dae@samsung.com>,  Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin
 Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski	 <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Laurent Pinchart	
 <laurent.pinchart+renesas@ideasonboard.com>, Tomi Valkeinen	
 <tomi.valkeinen+renesas@ideasonboard.com>, Kieran Bingham	
 <kieran.bingham+renesas@ideasonboard.com>, Geert Uytterhoeven	
 <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Biju Das	
 <biju.das.jz@bp.renesas.com>, Marek Vasut <marex@denx.de>, Stefan Agner	
 <stefan@agner.ch>, Jyri Sarha <jyri.sarha@iki.fi>, Michal Simek	
 <michal.simek@amd.com>
Cc: Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	asahi@lists.linux.dev, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, 	linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, 	linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, 	freedreno@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, 	linux-tegra@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, 	linux-renesas-soc@vger.kernel.org
Date: Sat, 25 Apr 2026 23:15:37 +0800
In-Reply-To: <20260423-drm-bridge-connector-attach_encoder-v2-24-2ae6ca69b390@bootlin.com>
References: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com>
	 <20260423-drm-bridge-connector-attach_encoder-v2-24-2ae6ca69b390@bootlin.com>
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
X-CM-TRANSID: zQCowAD3hAiZ2uxpJCOPDg--.10690S2
X-Coremail-Antispam: 1UD129KBjvdXoW7GFWxKr15Xw1xXw48Jr4rGrg_yoWftFg_u3
	ZY9F9rWry5KF1DG3WxJrn5Zry2v3Z5CFW8Zrnrt3yfKws7Aw18Z347Xryav34UuFy8AFsF
	kw4DGFZ7Ar1akjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbV8YjsxI4VWxJwAYFVCjjxCrM7AC8VAFwI0_Wr0E3s1l1xkIjI8I
	6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
	8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW8JVW5JwA2z4x0Y4vE2Ix0
	cI8IcVCY1x0267AKxVWxJVW8Jr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IE
	w4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMc
	vjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwACI402YVCY1x02628vn2kIc2xKxwCY
	1x0262kKe7AKxVW3AVW8Zr1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr
	1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE
	14v26rWY6r4UJwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2I
	x0cI8IcVCY1x0267AKxVWxJVW8Jr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvE
	x4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvj
	DU0xZFpf9x07j7fHUUUUUU=
X-Originating-IP: [112.94.102.10]
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_081638_481359_C1905A06 
X-CRM114-Status: GOOD (  11.58  )
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

5ZyoIDIwMjYtMDQtMjPlm5vnmoQgMTE6MTcgKzAyMDDvvIxMdWNhIENlcmVzb2xp5YaZ6YGT77ya
Cj4gZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfZW5jb2RlcigpIGlzIG5vdyBjYWxsZWQgYnkKPiBkcm1f
YnJpZGdlX2Nvbm5lY3Rvcl9pbml0KCkuCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVjYSBDZXJlc29s
aSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS92
ZXJpc2lsaWNvbi92c19icmlkZ2UuYyB8IDEgLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRp
b24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3ZzX2Jy
aWRnZS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNfYnJpZGdlLmMKPiBpbmRl
eCAyYTBhZDAwYTk0ZDYuLjgzYzkxZDVjZTM5NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vdmVyaXNpbGljb24vdnNfYnJpZGdlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdmVyaXNp
bGljb24vdnNfYnJpZGdlLmMKPiBAQCAtMzY1LDcgKzM2NSw2IEBAIHN0cnVjdCB2c19icmlkZ2Ug
KnZzX2JyaWRnZV9pbml0KHN0cnVjdAo+IGRybV9kZXZpY2UgKmRybV9kZXYsCj4gwqAJCXJldCA9
IFBUUl9FUlIoYnJpZGdlLT5jb25uKTsKPiDCoAkJcmV0dXJuIEVSUl9QVFIocmV0KTsKPiDCoAl9
Cj4gLQlkcm1fY29ubmVjdG9yX2F0dGFjaF9lbmNvZGVyKGJyaWRnZS0+Y29ubiwgYnJpZGdlLT5l
bmMpOwoKQ2hlY2tlZCB0aGUgc291cmNlIG9mIHRoaXMgZnVuY3Rpb24gYW5kIGl0IGxvb2tzIGlk
ZW1wb3RlbnQuCgpBY2tlZC1ieTogSWNlbm93eSBaaGVuZyA8emhlbmd4aW5nZGFAaXNjYXMuYWMu
Y24+Cgo+IMKgCj4gwqAJcmV0dXJuIGJyaWRnZTsKPiDCoH0KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
