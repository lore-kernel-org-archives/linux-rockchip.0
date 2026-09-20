Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF146C982DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 22:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gYdPu8y58lo55jGeARV9/JzCBQMv3QM3p2gYwnTP7k=; b=2haqrtqxe3eRbn
	OQEeJuLprkdWvNoz5w4Q8/OVFP0lNJxxUsMglsvVhU1dNmXWBX5q7+VAxjYHOEZjFn7z962T/ltX8
	0IUz1spI4wOsXpg0i0QMC9b0xW1Lgb1DNLg4K1615HOVt/llpLbtU/NPGxulY8cmWzBBVTugaOfax
	f5mpjVUb3Po1uCm5alUb3EF1xtS5liXR+0QLmGja70YQjYHavGAqSFhwLO7HN4c6lMid1R28JgJzg
	OjI2aLY84UO/Q44Nx2XStaxP/IorfmUdQ/bnMWtOUDLdvv+rIxPiL22HORRg0+wEEMCrO5A88/Z7V
	7uJiOQ8l/F7urJYqkORg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8PzF-00000000VwN-2eTy;
	Sun, 20 Sep 2026 22:26:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8PzE-00000000Vvt-0l4t
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 22:26:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A7A554488D
	for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 22:26:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74BA21F008BF
	for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 22:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789943175;
	bh=OZ0jYotdh7ql4qVQopBl9OhnmROuW0b1nFBPITg46xA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=OcHgpT1xwIO6XWROQZZtX0pP7rtvLkq5r+4C9tDUCySI/aHerQeHmuoGb280LlR7k
	 kFhNUn+GqhwuRliePOfHEBYyn7A1//D2+tB41XNUVXh8fVuQJNgDDpOfzagYu7lTeS
	 vTmTNWBIwMt61BJSLWQJ2F3TAkuAQ4/QUOU8MTxm8x+uS7KL+YfwjMsf02PjLHE5TE
	 zHjXQDvyHm9RemWH9GeXYHwPrZ3I+Er3ID5hNWumjVobOl5SNWq+3ROOk7f0eqweOC
	 yvedHq1a3zS00PZfnmfBlJv+8Y56bRJschNdI1KFW2dqtDkPS3UU3dTmtSLndujkca
	 /eIM6LOzE+ybA==
Received: by mail-lf2-f13.google.com with SMTP id 2adb3069b0e04-5b8b402f4e3so2451832e87.2
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 15:26:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvByUGgnRz4lbmySNAn0NQ8jfTndgiD6eqHi5gfruACS7TdgIU+ElCltmtt2zMvpG5pr0JXZZ+M9Yi9i+e+7e/w==@lists.infradead.org
X-Gm-Message-State: AFuF++k8mGBhSI34GTBfCI93Jh+zJJkBiTFgepvPhBDTnOHRPpeIj2yy
	i1DCo31ehc9Z/Nw+pH7cgr6PTf9zMUzZlNPR7fNTqPreLqNUxzE5YRvJrIWVsbnIoFBh627TJiW
	3LrsEEJAWSxgMFp6pbEJEgGfVYWHaL4Q=
X-Received: by 2002:a05:6512:1293:b0:5b8:9ee1:10fd with SMTP id
 2adb3069b0e04-5b8c195b2a3mr2597654e87.32.1789943174146; Sun, 20 Sep 2026
 15:26:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com> <20260916-drm-bridge-every-panel-v3-11-83afb4f1a707@bootlin.com>
In-Reply-To: <20260916-drm-bridge-every-panel-v3-11-83afb4f1a707@bootlin.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 21 Sep 2026 00:26:00 +0200
X-Gmail-Original-Message-ID: <CAD++jL=Hu4XDUoBK5RfaQ9K3Jh4NfPkGFfoxa2tL_zSekPEUBA@mail.gmail.com>
X-Gm-Features: AcwNN1UOMCqRmdLLuJ0tewhusvy6SfVdZOwl8-NuoTCzIELTWmTcNqdeLCv7gec
Message-ID: <CAD++jL=Hu4XDUoBK5RfaQ9K3Jh4NfPkGFfoxa2tL_zSekPEUBA@mail.gmail.com>
Subject: Re: [PATCH v3 11/19] drm/mcde: dsi: remove unused includes
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
	Paul Kocialkowski <paulk@sys-base.io>, Inki Dae <inki.dae@samsung.com>, 
	Jagan Teki <jagan@amarulasolutions.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Sean Paul <sean@poorly.run>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Albert Esteve <aesteve@redhat.com>, 
	Anusha Srivatsa <asrivats@redhat.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	asahi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-samsung-soc@vger.kernel.org
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

T24gV2VkLCBTZXAgMTYsIDIwMjYgYXQgMzo0N+KAr1BNIEx1Y2EgQ2VyZXNvbGkgPGx1Y2EuY2Vy
ZXNvbGlAYm9vdGxpbi5jb20+IHdyb3RlOgoKPiBUaGUgaGVscGVycyBhcmUgaW5jbHVkZWQgYnV0
IHVudXNlZC4KPgo+IEhvd2V2ZXIgc3ltYm9scyBmcm9tIGRybV9hdG9taWNfaGVscGVyLmggYXJl
IHVzZWQsIGFuZCB3ZXJlIHByZXZpb3VzbHkKPiBhdmFpbGFibGUgYXMgYSBzaWRlIGVmZmVjdCBv
ZiBkcm1fYXRvbWljX2hlbHBlci5oIGluY2x1ZGluZwo+IGRybV9hdG9taWNfc3RhdGVfaGVscGVy
LmguIEFkZCBkcm1fYXRvbWljX3N0YXRlX2hlbHBlci5oLgo+Cj4gU2lnbmVkLW9mZi1ieTogTHVj
YSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4KClJldmlld2VkLWJ5OiBMaW51
cyBXYWxsZWlqIDxsaW51c3dAa2VybmVsLm9yZz4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
