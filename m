Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CE33C43327
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 15:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxlN9J2ZWrZjbp+7X9xKnM/kliImnAuU8L+eA9q+Q8E=; b=4KMtDHrFRGL8Mu
	WOCz5EaANY2ntlt8MdmrNVWa7I3dbiJ0mnVFv54/we7dXGRvFS4t/DfrXV65J+U2TiBzMbJjHD3MA
	Wha/fw/AoyPzo7TkeP3trceje8z/FsL9SRBEraxohllESYZtghP/qIcV8f/W2bhnqQtulZa35W2FS
	xml2SHY51JQUvkPqJ+5qh/ITd8dqZ8GsjGpa+NzQLbrrXL3le2ED1yrcqu6dFJE8elM0N8cl6uins
	hMBz/SWTl+wLA4jIUGhmsJQGRes4IpRdw+A9eoPzrBt8ZVMG8kt9qojyQPz09SPm8zLgUJGpEWOeb
	Io4i5dGd8bXpqzKS40Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd87Q-0000000BWYT-08AC;
	Fri, 26 Jun 2026 15:05:24 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd87L-0000000BWWj-1l6g
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 15:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1782486318;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dQWoBG3cdhdrXUGK8cjuSemvsRSH2KT/hQo0wNib96o=;
	b=JQ7vIikWXtggit5fI8IkiOljkVZLmrl/rVnnPO6+8XeRf39aJDj/u5l/jJpdl+FzyrST9a
	1a8FiK2s4IC6cB49Da+grM8k5UE85Tp7ljZoRDWd39EQSNiPJCO6KQgye+AA43rN+GM0yS
	gnHFbU/7Mj0spxkXraLNsOcKZrAbVvc=
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-120-AjlB4x76MMCpGgfRU3dlvw-1; Fri, 26 Jun 2026 11:05:14 -0400
X-MC-Unique: AjlB4x76MMCpGgfRU3dlvw-1
X-Mimecast-MFC-AGG-ID: AjlB4x76MMCpGgfRU3dlvw_1782486314
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-800292c6be0so15495137b3.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 08:05:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782486314; x=1783091114;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dQWoBG3cdhdrXUGK8cjuSemvsRSH2KT/hQo0wNib96o=;
        b=ljmm2uqtKjIFp48R5n6+VPFqIFwKXQyMYnD2LQDYPKBYNRB1466t3fjsshNcLwyBtS
         ZkU3xOY4MNMIsx9KeN4+IBd9Beyufo3XlPhVBLV43UfPiR6rJyIjscFrwrVH46dCg7Qm
         4Lu+agee9PJAqyLB26a/H6JyMMV4lO5CDx3e9kvBUwsmzp8AJZcWtmPArlnl2NPniiV5
         UAOBLrK/srD0cepS+xXnBV/MYF1//ZOupnkkIpxKE555gEsYM/RY8yj9DJElG+YyB7y7
         RuxBSjcFHArxip7XgynUApuEl0jhLgQJNHd0KDb9vD1VdcQZIsdgYweuYqP4LTQZQcqi
         G/gg==
X-Forwarded-Encrypted: i=1; AHgh+RretvA4qk8AtbmRYQCpfq1MXWoZ9/AYbJQCzCVvG+QYh6T+BI4ViONVDCDtbXWjbOqm4dNyZ+lO+TTueVqrMQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwX/D4DbMWvO8EC/6Xg0TS52dstHLUxex+O/6Jis3xRKt/C/IYd
	JxY9ow2I1k4cU7XneAxJwnknHA8mAJ3jXdN4QUHOYIRwEVD6TJbklZ1iCBxvEInDPmJ6AMvaVFG
	paCQuuIDEO6wirC0ZtWxI4RKzmTSt/iujE0IdrSnzMha7xUdslhY0+Pl7AYRS9E00WB6qCPJMku
	n32xz+40XewlVrDnA4oJ3JBIhAn7lD/abOU/5/gcniTgBpduKz
X-Gm-Gg: AfdE7cn7BjevfP2L3aQ1uDctHjTL7HaRfYw3EAoVFVOryWgfivGrnsDQ0rKjGBs//vg
	nz6TaTsMjng7Gjhwef4pjB6HipyJUr2Kl1OxF5ZgksTXjrbDegUK9fYriw5dkalP2qgSs7fChyB
	7P0C510Ej7/Wog3BIvGvs8itVYBUBBTBWLvOC/A+URJrA7jmC6LawD1JRXDE2DDHMd
X-Received: by 2002:a05:690c:4881:b0:80c:cad:c4e6 with SMTP id 00721157ae682-80c0cadc8fbmr18141447b3.32.1782486313679;
        Fri, 26 Jun 2026 08:05:13 -0700 (PDT)
X-Received: by 2002:a05:690c:4881:b0:80c:cad:c4e6 with SMTP id
 00721157ae682-80c0cadc8fbmr18140727b3.32.1782486313097; Fri, 26 Jun 2026
 08:05:13 -0700 (PDT)
MIME-Version: 1.0
References: <20260626-drm_refcount_wiring-v1-0-cca1a7b3bdef@redhat.com>
 <20260626-drm_refcount_wiring-v1-5-cca1a7b3bdef@redhat.com> <20260626-ivory-tarantula-of-valor-af0e2a@houat>
In-Reply-To: <20260626-ivory-tarantula-of-valor-af0e2a@houat>
From: Albert Esteve <aesteve@redhat.com>
Date: Fri, 26 Jun 2026 17:05:00 +0200
X-Gm-Features: AVVi8CfUWw7MSpxfIbgb0qtM7cCP9XXdSgcc1xFYb1Fq3hJmdhiO9Zy5mZXSYcU
Message-ID: <CADSE00Jy9-BR9e-Dg-S4_fiLnjWjXfTq3c6OO8PxTM=gQyA7xw@mail.gmail.com>
Subject: Re: [PATCH 5/5] drm: release panel reference after panel bridge creation
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
X-Mimecast-MFC-PROC-ID: yCHsgsOD48FS61Ea71yBcwheDSV8pD1BHvQ0XbbqqL4_1782486314
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_080520_837257_05D5BBCE 
X-CRM114-Status: GOOD (  19.54  )
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

T24gRnJpLCBKdW4gMjYsIDIwMjYgYXQgMzowMOKAr1BNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIEp1biAyNiwgMjAyNiBhdCAwMjowMzoyN1BN
ICswMjAwLCBBbGJlcnQgRXN0ZXZlIHdyb3RlOgo+ID4gb2ZfZHJtX2ZpbmRfcGFuZWwoKSBhbmQg
ZHJtX29mX2ZpbmRfcGFuZWxfb3JfYnJpZGdlKCkgbm93IHJldHVybiBhCj4gPiBjb3VudGVkIHJl
ZmVyZW5jZS4gSW4gZHJpdmVycyB0aGF0IGltbWVkaWF0ZWx5IHdyYXAgdGhlIHBhbmVsIGluIGEK
PiA+IGJyaWRnZSB2aWEgZGV2bV9kcm1fcGFuZWxfYnJpZGdlX2FkZCgpIG9yIGVxdWl2YWxlbnQs
IHRoZSBicmlkZ2UKPiA+IGFjcXVpcmVzIGl0cyBvd24gcmVmZXJlbmNlLCBzbyB0aGUgY2FsbGVy
J3MgbG9va3VwIHJlZmVyZW5jZSBtdXN0IGJlCj4gPiByZWxlYXNlZCByaWdodCBhZnRlcndhcmRz
Lgo+ID4KPiA+IEFsc28gaGFuZGxlIHRoZSBjYXNlcyB3aGVyZSBhIHBhbmVsIGlzIGZvdW5kIGJ1
dCBjYW5ub3QgYmUgdXNlZCwKPiA+IGRyb3BwaW5nIHRoZSByZWZlcmVuY2UgaW1tZWRpYXRlbHkg
aW4gdGhvc2UgcGF0aHMuCj4gPgo+ID4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtb3B1cy00
LTYKPiA+IFNpZ25lZC1vZmYtYnk6IEFsYmVydCBFc3RldmUgPGFlc3RldmVAcmVkaGF0LmNvbT4K
Pgo+IGRybV9vZl9maW5kX3BhbmVsX29yX2JyaWRnZSgpIGRvZXMgaW5kZWVkIHJldHVybiBhIHJl
ZmNvdW50ZWQgcG9pbnRlcgo+IG5vdywgYnV0IGFmYWlrIHRoZSBkb2Mgd2Fzbid0IHVwZGF0ZWQg
dG8gcmVmbGVjdCB0aGF0LgoKVHJ1ZSwgSSdsbCBmaXggdGhhdCBpbiB0aGUgbmV4dCB2ZXJzaW9u
LgoKPgo+IE1vcmUgaW1wb3J0YW50bHksIEkgZmVlbCBsaWtlIHdpdGggYm90aCBvZl9kcm1fZmlu
ZF9wYW5lbCBhbmQKPiBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlkZ2Ugd2UgdXBkYXRlIGEgcGF0
aCB0aGF0IGlzIGNvbnNpZGVyZWQgbGVnYWN5Cj4gYW55d2F5IG5vdywgYW5kIHdlIHNob3VsZCBy
YXRoZXIgZm9jdXMgb24gcHJvdmlkaW5nIGEgc2FmZSBhbHRlcm5hdGl2ZS4KCk9oLCBJIG1pc3Nl
ZCB0aGF0IHRoaXMgY29kZSBwYXRoIGlzIGNvbnNpZGVyZWQgbGVnYWN5LgoKPgo+IEJ1dCBub25l
IG9mIHRoZSBmdW5jdGlvbnMgeW91IHVwZGF0ZWQgYXJlIHVuc2FmZSwgc28gaXQgd29uJ3QgYmUg
bW9yZQo+IHVuc2FmZSwgb3IgcHJvdmlkZSBhbnkgaWxsdXNpb24gb2Ygc2FmZXR5IHRvIHRoZSBj
YWxsZXIuIElkay4KPgo+IEVpdGhlciB3YXksIHRoaXMgc2hvdWxkIGFsbCBiZSBvbiBpdHMgd2F5
IG91dCBpZiBMdWNhIGNyZWF0ZXMgYSBicmlkZ2UKPiBmb3IgZXZlcnkgcGFuZWwsIGFuZCB3ZSds
bCBjb25zb2xpZGF0ZSBvbiBicmlkZ2VzIG9ubHksIHNvIG1heWJlIGl0J3MKPiBub3Qgc3VjaCBh
IGJpZyBkZWFsIHRvIG1lcmdlIHRoaXMgcGF0Y2guCgpJIHNlZS4gR2l2ZW4gd2hhdCB5b3Ugd3Jv
dGUsIEkgdGhpbmsgaXQnZCBtYWtlIHNlbnNlIHRvIGNvcnJlY3QgdGhlbQp3aGlsZSB0aGlzIGNv
ZGUgaXNuJ3QgY29tcGxldGVseSBkZWFkLgoKQlIsCkFsYmVydC4KCj4KPiBNYXhpbWUKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
