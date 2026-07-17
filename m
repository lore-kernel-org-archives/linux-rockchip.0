Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6EACC4451C
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 11:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZCNG2OLkCguaLbcEeTzdL5qjmbE5pswhQnE/3Z9wao=; b=VYX7oAcbAFzJlD
	vAKQYM0leySr60x3h1LRKmnJJi0X2Vn9hNvfIUC7NThKtSDejjvlgqxj/Lq9GfiqKRtY3uQCNNRmo
	iLfwtcf9MiJaX6mXCqw2dC89iaQt3KqLO3fUOEuQn8DRbeZYMR1p6Om0UcOqFWTaCYHYlQmiOF1PY
	W1Xfyx1p4fwKHF6viodZEoVnxtnitl/LMNnUoPKNICarcH0/7Jdl/jo3U2T5G0o04p+BFb2UJiZG+
	QJancttfzESPQyJxxAB1qr0a2yEL6xrRkwGt99Hr3EOl2cFBLgHPXmV9A6VaaouYMPfgzYRkAPldw
	j5bd3bcBxUIdL1xKZZEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkgj5-000000029gn-3ZnT;
	Fri, 17 Jul 2026 11:27:31 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkgj3-000000029g8-0Dt3
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 11:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1784287648;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vXe76W/8pIhJ+QV+npP2Pr4GqXg7ylW2+hZyFUAZkxo=;
	b=H2+DdxzKkawLdTsZjK6Lisk/rahNaYONuwlERiG25hZs9+sGKTio3SM/JJVLDujsSrkNOe
	VHdH+GJE/WKj/FDafjS6T0zmjgOshEyPgMJJh8SJbiM6agEHX4OHvXdFJ+/Nose3c6d+qr
	zHqCqC495xOMU2KGbFDbF9lparOi4ss=
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com
 [74.125.224.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-323-2UnHvzhKOUuwNXQV40kFHg-1; Fri, 17 Jul 2026 07:26:18 -0400
X-MC-Unique: 2UnHvzhKOUuwNXQV40kFHg-1
X-Mimecast-MFC-AGG-ID: 2UnHvzhKOUuwNXQV40kFHg_1784287578
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-668432d53c5so97653d50.1
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jul 2026 04:26:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784287578; x=1784892378;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vXe76W/8pIhJ+QV+npP2Pr4GqXg7ylW2+hZyFUAZkxo=;
        b=hfoPM0fR39P2IDIJhFAazVela1U8qpAy+RZd6BdLgYnyZpNzFnXVKfbdFTslRxB9TG
         N3Y/N6MkFIUpwNJUO2bzTOLpefD8eLZzC1R5p7eh2U2xWGc8k4/jnKy9jLOFeB8T77kU
         +00BpkoHuLt8ItwYc+epLBScMrkzfIzB1lVBLKMHmuYU2kt/xYrhW/Qdr3WGOSb8FuA8
         vTAVhNcEyM+dmmnklGWYUvt3ygEhM21ZkXBYOXqK9KMUzwUOAFkQcLZzDQlrRe2d+CsB
         YlY/4UeDzEEiYGkO4jpaMSbW2uxFDwuxcMpQO5v190P1ACBqf0tEdm3a7atKf7Hcn8uA
         oyNQ==
X-Forwarded-Encrypted: i=1; AHgh+RozqPSEbPr9lNkYDCl9jrRZmgVlMeEsBwU9Qyd5ou+qiYAtUPW5YBw/TuRvNDEfxG6j1WVNZx5+H9hIWKgoQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwO/SIBk3+a58xNO25MF6kBdzeqbgqxiRIHYHKxs5f5H3dphGds
	1F0HCMnAErLfNKBpUWFiKJ8TztwLF636VLLwJifMJnhqt2JDatrvaSfXhuZgF7eKR2VjpiobvmC
	UJ3K2f9aM+P2EW0DD5VInfr4JZrTdM6QtpgZyD+t7dRZ/S8MuHvHFRoNgLoYE0JkPMz+C6jQNDh
	+CKurtY8sRMfMRhzfDfThLq80lmFYDHShsgNOwbkLzDDnNj1l6
X-Gm-Gg: AfdE7cnVEZbv9ZQMfQKvHUsce+NyLl0hfqCFso/yBbVO63srv/o/0N0k0DrHnNxaTDf
	bWthzAzWGE0ChC1hDaj/JLRgOW17ZbP+5qRTiEvF6FFm2728hKF+1KhW+coLtvNoNP40enOyAul
	2ldgABUrIuCFPTYu/ByYtmHocMkbrZxOSTNCAcP32BVIuCgbNIlsgQ4ryG
X-Received: by 2002:a05:690e:43cb:b0:668:43ce:50e4 with SMTP id 956f58d0204a3-66843ce511emr36219d50.53.1784287578009;
        Fri, 17 Jul 2026 04:26:18 -0700 (PDT)
X-Received: by 2002:a05:690e:43cb:b0:668:43ce:50e4 with SMTP id
 956f58d0204a3-66843ce511emr36162d50.53.1784287577611; Fri, 17 Jul 2026
 04:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260713-drm_refcount_wiring-v2-0-d3bb61f4bd4d@redhat.com>
 <20260713-drm_refcount_wiring-v2-5-d3bb61f4bd4d@redhat.com> <20260717-heavenly-peach-guan-82f0f1@houat>
In-Reply-To: <20260717-heavenly-peach-guan-82f0f1@houat>
From: Albert Esteve <aesteve@redhat.com>
Date: Fri, 17 Jul 2026 13:26:06 +0200
X-Gm-Features: AUfX_my0X2LQ6M_jKeRcxy0r6pG-sYFIFgqEmiZmXcdV57T8jjudIQuMMnSFyJg
Message-ID: <CADSE00+7=2ph4kRQLc7_MFbp_SSt3eYz-bBxWcfCj6_oFPjwFA@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] drm: release panel reference after panel bridge creation
To: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
	Linus Walleij <linusw@kernel.org>, Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Yannick Fertre <yannick.fertre@foss.st.com>, 
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
	Philippe Cornu <philippe.cornu@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, Jyri Sarha <jyri.sarha@iki.fi>, 
	Jingoo Han <jingoohan1@gmail.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Alison Wang <alison.wang@nxp.com>, Paul Kocialkowski <paulk@sys-base.io>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Thierry Reding <thierry.reding@kernel.org>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, 
	linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: FsraSUY2YCQ5C3VXD_YRMCRNKY9tVl4iGCExVz4DOic_1784287578
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_042729_209545_48AC5EC6 
X-CRM114-Status: GOOD (  14.64  )
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

T24gRnJpLCBKdWwgMTcsIDIwMjYgYXQgMTA6NTbigK9BTSBNYXhpbWUgUmlwYXJkIDxtcmlwYXJk
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCBKdWwgMTMsIDIwMjYgYXQgMDE6NTM6MDhQ
TSArMDIwMCwgQWxiZXJ0IEVzdGV2ZSB3cm90ZToKPiA+IFVwZGF0ZSBhIHNlY29uZCBiYXRjaCBv
ZiBkcml2ZXJzIGNhbGxpbmcgb2ZfZHJtX2ZpbmRfcGFuZWwoKSBvcgo+ID4gZHJtX29mX2ZpbmRf
cGFuZWxfb3JfYnJpZGdlKCkgdG8gcmVsZWFzZSB0aGUgbG9va3VwIHJlZmVyZW5jZSBhZnRlcgo+
ID4gd3JhcHBpbmcgdGhlIHBhbmVsIGluIGEgYnJpZGdlLgo+Cj4gSSB3b3VsZCBoYXZlIGV4cGVj
dGVkIHRoaXMgdG8gYmUgc3F1YXNoZWQgb2YgcGF0Y2ggMywgYW55IHJlYXNvbiBpdCdzIGluCj4g
YSBzZXBhcmF0ZSBwYXRjaD8KCk15IGludGVudGlvbiB3YXMgdG8gbWFrZSB0aGUgc2VyaWVzIGVh
c2llciB0byByZXZpZXcuIFBhdGNoIDMKY29udGFpbmVkIHRoZSBpbml0aWFsIHNldCBvZiBjYWxs
ZXJzIG1vc3RseSBmb3VuZCB2aWEgdGhlIENvY2NpbmVsbGUKc2NyaXB0IChzaW1wbGVyIHRvIGFk
ZHJlc3MgZ2VuZXJhbGx5KSwgYW5kIHBhdGNoIDUgaW5jbHVkZXMgdGhlIHJlc3QuCkluY2x1ZGlu
ZyBhbGwgdGhlIGNoYW5nZXMgcGx1cyB0aGUgY29yZSBBUEkgdXBkYXRlIGluIGEgc2luZ2xlIGNv
bW1pdApmZWx0IGxpa2UgdG9vIG11Y2guCgpUaGF0IHNhaWQsIEkgYW0gaGFwcHkgdG8gc3F1YXNo
IHRoaXMgZm9yIHRoZSBuZXh0IHZlcnNpb24gKGZld2VyCnBhdGNoZXMgdG8gdHJhY2spLgoKCgoK
Pgo+ID4gQWxzbyBoYW5kbGUgdGhlIGNhc2VzIHdoZXJlIGEgcGFuZWwgaXMgZm91bmQgYnV0IGNh
bm5vdCBiZSB1c2VkLAo+ID4gZHJvcHBpbmcgdGhlIHJlZmVyZW5jZSBpbW1lZGlhdGVseSBpbiB0
aG9zZSBwYXRocy4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
