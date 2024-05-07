Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC3D3C25B4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 12:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/gT8PsNZLCqEzohGTYwc8nWgMF2ndPv0/ZIhsNsX2c=; b=irKsu86RyiZ/UV
	7kfU0jTiC/W8eK7F02/cOwzJX5MllL/r/IpF2o0/s0+G50+yR1BD+OpkOg45rd5Qh+zHermNGQPe0
	T1f9uCV2KtRYGjEHh50uYXnqG9x8eLEfpyqZHiuRbsunhgkWdD5p+qSkpBgW+gRbuJpC7kJmofwKL
	DbuFo0DiTqDNia+PNmwRJlVzjqs1nogh0F2ihZRZoTK+O+SXtMZXUaxauLBku5K+/M0RodrOb8Nlp
	nILwG4p1H39qSNlxi3AvOwpGPBqQHVJ+XmQfBKI7NfbQ16QzNxK/QYP8pL4Pvl00b+iCcSM0K5H+4
	NKVfm/uGcFCQImOrlZQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4JjB-0000000ArRr-2eym;
	Tue, 07 May 2024 12:15:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Jj7-0000000ArQJ-3KwX
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 12:15:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4637861737
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 12:15:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEAC8C4DDE2
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 12:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715084120;
	bh=4ExG0FZDY6f08QETasOyXD/lspkhULsMREyw3QJterw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=a5QjcowBooTLKsJ6gz38m+jIt54nTjxBfVH6+887vRX+2ePl/1N0JXPqOJ6ddL/7a
	 psgRAAWSWxGyl7C0p1XuhHKSZDXX6tBrhpxVL7tud+zb+59IbIwzFMnA2H4jXFGfPK
	 nzdTCAKdsSXAUiw8QSvHP4mDTPSTIqtQ/H9ePriZpv8mMRxLAxYNkCJ2ssUPa+JHu1
	 7GwN8wax3xFXk4zspZvtaUFDxxpKnZ9BhHWRHjlE2Q4T0V9lQp+vTGc+JEUYgLJucR
	 HzNyk4Ji/xrt3WG2C3k8+Y+/THV2mVRQYGRygxjB3lkyVOFKhPB5Sa6nQ6ruC+5JSB
	 TULtxMoHc/BLw==
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-61ab6faf179so32039207b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 05:15:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXdxHEE/lK28nYLb/cNNBymK5wNYSzAO/TVe3zec2aGU9ojl6n7oksXZyEicic1DrJNjG0s2BxEvOaM+s004GidKsrtmN1qaCRC0pbRe9Zs1qZt
X-Gm-Message-State: AOJu0Yz0L7zgy0h+q6sv/3/2fPFFvWjGc8uDn+KFSaQn/bsKV0f5lyUF
	N5xSdTZikswWPtJVUrZM0GgNveqkdK2DRta+8Wc6gnEHXyqx0NloIu++84pApwBR51BmzYDhqua
	Ta268b3vgAxH94DeqYi3AYdb+Kfn6unQj7I07Dw==
X-Google-Smtp-Source: AGHT+IH+Pja8EgUMLpfJwhO7v0UjdoeL8if8dUGCw6qXcAIWrNDLG5aoxfpLWtSpJvCmWyUWR2rEmCfBWkFANDX1uvw=
X-Received: by 2002:a05:6902:2cb:b0:de6:86f:c6a4 with SMTP id
 w11-20020a05690202cb00b00de6086fc6a4mr16605659ybh.44.1715084119930; Tue, 07
 May 2024 05:15:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-3-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-3-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 14:15:09 +0200
X-Gmail-Original-Message-ID: <CAN6tsi4PBmr9mXj16rDod_6-pJQAsvbTWhfCmmG0=2n5bBM0Rg@mail.gmail.com>
Message-ID: <CAN6tsi4PBmr9mXj16rDod_6-pJQAsvbTWhfCmmG0=2n5bBM0Rg@mail.gmail.com>
Subject: Re: [PATCH 02/14] drm/rockchip: analogix_dp: add runtime PM handling
To: Lucas Stach <l.stach@pengutronix.de>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, kernel@pengutronix.de, 
	patchwork-lst@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_051521_957267_5C1ED9BB 
X-CRM114-Status: GOOD (  18.23  )
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

T24gRnJpLCBNYXkgMywgMjAyNCBhdCA1OjEy4oCvUE0gTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gSG9vayB1cCB0aGUgcnVudGltZSBQTSBzdXNwZW5kL3Jl
c3VtZSBwYXRocyB0byBtYWtlIHRoZSByb2NrY2hpcAo+IGdsdWUgYmVoYXZlIG1vcmUgbGlrZSB0
aGUgZXh5bm9zIG9uZS4gVGhlIHNhbWUgc3VzcGVuZC9yZXN1bWUKPiBmdW5jdGlvbnMgYXJlIHVz
ZWQgZm9yIHN5c3RlbSBzbGVlcCB2aWEgdGhlIHJ1bnRpbWUgUE0gZm9yY2UKPiBzdXNwZW5kL3Jl
c3VtZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4
LmRlPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2No
aXAuYyB8IDEzICsrKystLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgOSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvYW5hbG9naXhfZHAtcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFs
b2dpeF9kcC1yb2NrY2hpcC5jCj4gaW5kZXggYmFlYjQxODc1YTRiLi44MjE0MjY1ZjE0OTcgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlw
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2NoaXAu
Ywo+IEBAIC0xMyw2ICsxMyw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvb2ZfZ3JhcGguaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5o
Pgo+ICsjaW5jbHVkZSA8bGludXgvcG1fcnVudGltZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcmVn
bWFwLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+ICAjaW5jbHVkZSA8bGludXgvY2xr
Lmg+Cj4gQEAgLTQzMCw3ICs0MzEsNiBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9kcF9yZW1vdmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgIGFuYWxvZ2l4X2RwX3JlbW92
ZShkcC0+YWRwKTsKPiAgfQo+Cj4gLSNpZmRlZiBDT05GSUdfUE1fU0xFRVAKPiAgc3RhdGljIGlu
dCByb2NrY2hpcF9kcF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgewo+ICAgICAgICAg
c3RydWN0IHJvY2tjaGlwX2RwX2RldmljZSAqZHAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiBA
QCAtNDUwLDE0ICs0NTAsOSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2RwX3Jlc3VtZShzdHJ1Y3Qg
ZGV2aWNlICpkZXYpCj4KPiAgICAgICAgIHJldHVybiBhbmFsb2dpeF9kcF9yZXN1bWUoZHAtPmFk
cCk7Cj4gIH0KPiAtI2VuZGlmCj4KPiAtc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHJv
Y2tjaGlwX2RwX3BtX29wcyA9IHsKPiAtI2lmZGVmIENPTkZJR19QTV9TTEVFUAo+IC0gICAgICAg
LnN1c3BlbmRfbGF0ZSA9IHJvY2tjaGlwX2RwX3N1c3BlbmQsCj4gLSAgICAgICAucmVzdW1lX2Vh
cmx5ID0gcm9ja2NoaXBfZHBfcmVzdW1lLAo+IC0jZW5kaWYKPiAtfTsKPiArc3RhdGljIERFRklO
RV9SVU5USU1FX0RFVl9QTV9PUFMocm9ja2NoaXBfZHBfcG1fb3BzLCByb2NrY2hpcF9kcF9zdXNw
ZW5kLAo+ICsgICAgICAgICAgICAgICByb2NrY2hpcF9kcF9yZXN1bWUsIE5VTEwpOwo+Cj4gIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfZHBfY2hpcF9kYXRhIHJrMzM5OV9lZHAgPSB7Cj4g
ICAgICAgICAubGNkc2VsX2dyZl9yZWcgPSBSSzMzOTlfR1JGX1NPQ19DT04yMCwKPiBAQCAtNDg1
LDcgKzQ4MCw3IEBAIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfZHBfZHJpdmVyID0g
ewo+ICAgICAgICAgLnJlbW92ZV9uZXcgPSByb2NrY2hpcF9kcF9yZW1vdmUsCj4gICAgICAgICAu
ZHJpdmVyID0gewo+ICAgICAgICAgICAgICAgICAgICAubmFtZSA9ICJyb2NrY2hpcC1kcCIsCj4g
LSAgICAgICAgICAgICAgICAgIC5wbSA9ICZyb2NrY2hpcF9kcF9wbV9vcHMsCj4gKyAgICAgICAg
ICAgICAgICAgIC5wbSA9IHBtX3B0cigmcm9ja2NoaXBfZHBfcG1fb3BzKSwKPiAgICAgICAgICAg
ICAgICAgICAgLm9mX21hdGNoX3RhYmxlID0gcm9ja2NoaXBfZHBfZHRfaWRzLAo+ICAgICAgICAg
fSwKPiAgfTsKPiAtLQo+IDIuMzkuMgo+CgpSZXZpZXdlZC1ieTogUm9iZXJ0IEZvc3MgPHJmb3Nz
QGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
