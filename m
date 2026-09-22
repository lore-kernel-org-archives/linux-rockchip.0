Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71A4CC982F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVTVHYyHASmlbft3Ue5ZI4dQJlbl+OJt7zyurMWaf30=; b=TWDOGeYMnWQCCs
	fHAkbPjzfI/d4XNIw9VNMRqeBi9+RJ6twk4voPek8QYjhJL2sqwSWoH5VBbntR3l3ubEm21p6NKrc
	OOLIHzM1rYOVg6+4jzxgB9jxCutjRPBQceKTGBdecQmUXIj3P6aKyuebl0HeB5Zqd9IroEo+Tdv/d
	g92OAuug6uWFj6Gy2yruM2O8p3S5jM6nqJLN1AVcCyRHGhugqWDBa1raSynByI7yNOPkmOgEifjoJ
	dEmAeNNyjKfzhNWQMSZPwpeHLl1Q0635VhIt51fD1gzZ2rn+prSUs119ERf2C3TNra4OHJSaJpJhI
	zftz8ENUXQlJKz0NxwGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vXz-00000004ccn-0O4n;
	Tue, 22 Sep 2026 08:08:15 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vXp-00000004cYt-3RDH
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:08:11 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 767EA4E40ED6;
	Tue, 22 Sep 2026 08:08:01 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 468C860580;
	Tue, 22 Sep 2026 08:08:01 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4056C1032925B;
	Tue, 22 Sep 2026 10:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1790064477; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=zcp8tcZsfdsmxUcen5sJupr/nyZnxY5fTXf1NQWKnsw=;
	b=FGUyk9MHJzJ0m0z8YAThEo2DOBHDLTsuC25rLZr2qIfJay2Q0I+gVCvTxsv2nvY/dDnJb9
	IgXAUJLDLFyWtCu0gq4m+hX3dLL+xecsNJ8WJa5QPeWS1Zy6AUoS89OPdFALC8X5Qo/SYt
	P+8Axb3+Z77DYvypZw+Bo1A5RcA0P5rB/gomubC1yCw1+sui5hmFk5wLv6D9zSGNbH/9I3
	BDo6gZcaNWSmUaB3MSGwrUc50FkG95rYvnEytrHx7tFcZXjfqgUddfJurME6kZVkekBte7
	SOpxzk5wN3ckVBb+KRlg6NycfNY3+6MfShb4b9lHPUZw9BG8DyTys0vA4UWL/w==
Mime-Version: 1.0
Date: Tue, 22 Sep 2026 10:07:36 +0200
Message-Id: <DLLOW2ROGP6L.3GTVT76VYPGAU@bootlin.com>
Subject: Re: [PATCH v3 19/19] drm/bridge: analogix_dp: don't create a
 panel_bridge
Cc: "Albert Esteve" <aesteve@redhat.com>, "Anusha Srivatsa"
 <asrivats@redhat.com>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Hui Pu" <Hui.Pu@gehealthcare.com>,
 "Ian Ray" <ian.ray@gehealthcare.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mips@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <asahi@lists.linux.dev>,
 <linux-arm-msm@vger.kernel.org>, <freedreno@lists.freedesktop.org>,
 <linux-tegra@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-samsung-soc@vger.kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
To: "Damon Ding" <damon.ding@rock-chips.com>, "Luca Ceresoli"
 <luca.ceresoli@bootlin.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>,
 "Neil Armstrong" <neil.armstrong@linaro.org>, "Robert Foss"
 <rfoss@kernel.org>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
 "Jonas Karlman" <jonas@kwiboo.se>, "Jernej Skrabec"
 <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jessica Zhang"
 <jesszhan0024@gmail.com>, "Laurentiu Palcu" <laurentiu.palcu@oss.nxp.com>,
 "Lucas Stach" <l.stach@pengutronix.de>, "Frank Li" <Frank.Li@nxp.com>,
 "Sascha Hauer" <s.hauer@pengutronix.de>, "Pengutronix Kernel Team"
 <kernel@pengutronix.de>, "Fabio Estevam" <festevam@gmail.com>, "Paul
 Cercueil" <paul@crapouillou.net>, "Paul Kocialkowski" <paulk@sys-base.io>,
 "Linus Walleij" <linusw@kernel.org>, "Inki Dae" <inki.dae@samsung.com>,
 "Jagan Teki" <jagan@amarulasolutions.com>, "Marek Szyprowski"
 <m.szyprowski@samsung.com>, "Sean Paul" <sean@poorly.run>, "Jonathan
 Corbet" <corbet@lwn.net>, "Shuah Khan" <skhan@linuxfoundation.org>, "Randy
 Dunlap" <rdunlap@infradead.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.22.0
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
 <20260916-drm-bridge-every-panel-v3-19-83afb4f1a707@bootlin.com>
 <975a4d45-9a61-4858-b498-8bc0a1e44746@rock-chips.com>
 <96882735-091f-49c6-a47b-5da8be711818@rock-chips.com>
In-Reply-To: <96882735-091f-49c6-a47b-5da8be711818@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_010806_137206_18118191 
X-CRM114-Status: GOOD (  10.84  )
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

SGVsbG8gRGFtb24sCgpPbiBNb24gU2VwIDIxLCAyMDI2IGF0IDg6MzQgQU0gQ0VTVCwgRGFtb24g
RGluZyB3cm90ZToKPiBPbiA5LzIxLzIwMjYgMTE6MDcgQU0sIERhbW9uIERpbmcgd3JvdGU6Cj4+
IEhpIEx1Y2EsCj4+Cj4+IE9uIDkvMTYvMjAyNiA5OjQ1IFBNLCBMdWNhIENlcmVzb2xpIHdyb3Rl
Ogo+Pj4gTm93IGEgcGFuZWxfYnJpZGdlIGlzIGF1dG9tYXRpY2FsbHkgY3JlYXRlZCBmb3IgZXZl
cnkgZHJtX3BhbmVsIGFuZCB0aGUKPj4+IHBhbmVsLWJyaWRnZSBBUEkgaXMganVzdCBhIGRlcHJl
Y2F0ZWQgd3JhcHBlciB0byBhY2Nlc3MgaXQuCj4+Pgo+Pj4gVXBkYXRlIGFuZCBzaW1wbGlmeSB0
aGUgY29kZSBieSBqdXN0IGdldHRpbmcgYSByZWZlcmVuY2UgdG8gdGhlCj4+PiBhbHJlYWR5LWV4
aXN0aW5nIGJyaWRnZSB1c2luZyBvZl9kcm1fZ2V0X2JyaWRnZV9ieV9lbmRwb2ludCgpLgo+Pj4K
Pj4+IEFzIG9mX2RybV9nZXRfYnJpZGdlX2J5X2VuZHBvaW50KCkgcmV0dXJucyBhIHJlZmNvdW50
ZWQgYnJpZGdlLCB0YWtlIGNhcmUKPj4+IG9mIHB1dHRpbmcgdGhlIGJyaWRnZSByZWZlcmVuY2Uu
IFRoaXMgaXMgbm90IGVhc2lseSBkb25lIGluIHRoZSByZW1vdmUKPj4+IHBhdGgKPj4+IGR1ZSB0
byB0aGUgZGlmZmVyZW50IHByb2JlIHBhdGhzIG9mIHRoZSB1c2VyIGRyaXZlcnMsIHNvIGFkZCBh
IGRldm0KPj4+IGFjdGlvbgo+Pj4gdG8gZW5zdXJlIHRoZSByZWZlcmVuY2UgaXMgcHV0IG9ubHkg
d2hlbiBpdCB3YXMgdGFrZW4uCj4+Pgo+Pj4gQXNzaXN0ZWQtYnk6IG9wZW5jb2RlOmRlZXBzZWVr
LXY0LWZsYXNoLTA3MzEKPj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgQ2VyZXNvbGkgPGx1Y2EuY2Vy
ZXNvbGlAYm9vdGxpbi5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
YW5hbG9naXgvS2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEgLQo+Pj4gwqAgZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMgfCA0MCArKysr
KysrKysrKysKPj4+ICstLS0tLS0tLS0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5
bm9zX2RwLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDM2ICsKPj4+ICstLS0t
LS0tLS0tLS0tLS0tLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2Rw
LXJvY2tjaGlwLmPCoMKgwqAgfMKgIDkgLS0tLS0KPj4+IMKgIGluY2x1ZGUvZHJtL2JyaWRnZS9h
bmFsb2dpeF9kcC5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxIC0K
Pj4+IMKgIDUgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgNjIgZGVsZXRpb25zKC0p
Cj4+Pgo+Cj4gW3NuaXBdCj4KPj4+IEBAIC00ODgsMTQgKzQ4Nyw2IEBAIHN0YXRpYyB2b2lkIHJv
Y2tjaGlwX2RwX3JlbW92ZShzdHJ1Y3QKPj4+IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+IMKg
IHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHJvY2tjaGlwX2RwX2RldmljZSAqZHAgPSBwbGF0Zm9y
bV9nZXRfZHJ2ZGF0YShwZGV2KTsKPgo+IFRoZSBhYm92ZSB1bnVzZWQgJnJvY2tjaGlwX2RwX2Rl
dmljZSBjb3VsZCBiZSBhbHNvIHJlbXZlZC4KCkFoLCBpbmRlZWQhCgpJIGd1ZXNzIEkgY2FuIGtl
ZXAgeW91ciByZXZpZXcgdGFncyBpZiBhcHBseWluZyB0aGlzIHBhdGNoIHdpdGggb25seSB0aGlz
CmxpbmUgcmVtb3ZlZC4gQ29ycmVjdD8KCkx1Y2EKCi0tCkx1Y2EgQ2VyZXNvbGksIEJvb3RsaW4K
RW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29t
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
