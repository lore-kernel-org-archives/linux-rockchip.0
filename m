Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04716C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqTFfyAxkvHWDMticgOudZTpl/eXmVPUWrcJsN5nSII=; b=uP0PZMYbyG+hRs
	0I/RxggFHrWVPuZTkGdYMXeVZv9HzdYA4S1AQlckvId5yTpvfJGgF7jrwHQjAYzPUtG8mU7v1C0+D
	u4ZWyW5ThsaF1xbD7Ao/iG6KWGn4noZoRwwQRsJwcYRM/0LxBn/VWnJEUphT9D8X1odZ8OAqQx4g1
	X+ImfJbw1DML3Ahu7q8KW7i9QI4kUCyYEbXiX62zsZmxm2cbFWn9GNdv3pX8HIoe+8tmioIT0kHFL
	I1SqDI95J5jRqFH1hhjCSsaqe5dUxJBgosKKMKqTsgNOHbY3WMVNiWGZv46v/B3DlBHN4j/K4jXJO
	TxWhcEI436vw6pkQzrCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRl-00000001Xhn-3nuy;
	Thu, 09 Jul 2026 08:49:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFtxy-0000000Bjz5-38HQ
	for linux-rockchip@bombadil.infradead.org;
	Thu, 23 Apr 2026 13:19:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=N0czXPTCBLd6Via7w9anQbZ1SyEjDMbKmYb2klNRSzM=; b=HKB2QK42CVH8pl0CKsewSHlN5B
	V4Fs0ka3rvqkJyxdj5bdAytuoOXGRVxo+h6zfRb5dxxYv3Orb+dJK3Jdw7MyUQET011A8se7xFCHB
	O5do7UQ3pSwjGWcdADMFIpsJnSuVyKbd3IaM938g2EyPv/PJg5UnVbPumqOWVQYvEkp7x/SrNYSs9
	fSHjSf5eqnEY/vsALGeu453oaHwnR1Z89DhyjAnOJ/lM47rzTlWQCUsHcXO7IxJHNeLN8Fxhs3OED
	1sE2LCrQrfNT4QIlp6rpkFpz3MyaaNcsyvKOKwwmYBWWS68RvlHHPrX+9nHwnXW6X7iSjWLfm0MwM
	2Wvp3ywQ==;
Received: from smtpout-02.galae.net ([185.246.84.56])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFtxs-0000000D7qd-2gga
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 13:19:37 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 7FE301A33C4;
	Thu, 23 Apr 2026 13:19:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4BD1460495;
	Thu, 23 Apr 2026 13:19:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B727910460BC4;
	Thu, 23 Apr 2026 15:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776950366; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=N0czXPTCBLd6Via7w9anQbZ1SyEjDMbKmYb2klNRSzM=;
	b=CHffhXGzBeQ87qx+VLT/QJwCaDtokpzRnxIGgqeeBGcHmpx9dkFTQezMvWUYtBFalmt0ym
	ZlPNQeOk5Q1kth18AWc/K+W7Raxp9+99ljR8+PbnvhlipPqpO27B6VpRihKIXQayDAqgRG
	da/TeGo6hU5ux+mR4M6i/8AmHfkbG+YJihJqxxPpKk1ng/qYjjX625VUgLNqxJALo9M/FP
	rIln33FBGqBltj0d5nmulxlKj/OYQmYlq0XBZlKDps6B3HZSM/rShXabOS7pnFzpExVbdP
	stMHIMq4UYNiQX+If3xxxJ52QyUsGZwDX30+01HblvyxBtNmG2GoUDU/v0ZI4A==
Mime-Version: 1.0
Date: Thu, 23 Apr 2026 15:19:03 +0200
Message-Id: <DI0KBQCGJWIC.1TNNX177Z8ZNU@bootlin.com>
Subject: Re: [PATCH 35/41] drm/rockchip: lvds: remove now-redundant call to
 drm_connector_attach_encoder()
Cc: "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Sasha
 Finkelstein" <fnkl.kernel@gmail.com>, "Janne Grunau" <j@jannau.net>, "Liu
 Ying" <victor.liu@nxp.com>, "Douglas Anderson" <dianders@chromium.org>,
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
 <jonathanh@nvidia.com>, "Icenowy Zheng" <zhengxingda@iscas.ac.cn>, "Jingoo
 Han" <jingoohan1@gmail.com>, "Inki Dae" <inki.dae@samsung.com>, "Seung-Woo
 Kim" <sw0312.kim@samsung.com>, "Kyungmin Park" <kyungmin.park@samsung.com>,
 "Krzysztof Kozlowski" <krzk@kernel.org>, "Alim Akhtar"
 <alim.akhtar@samsung.com>, "Laurent Pinchart"
 <laurent.pinchart+renesas@ideasonboard.com>, "Tomi Valkeinen"
 <tomi.valkeinen+renesas@ideasonboard.com>, "Kieran Bingham"
 <kieran.bingham+renesas@ideasonboard.com>, "Geert Uytterhoeven"
 <geert+renesas@glider.be>, "Magnus Damm" <magnus.damm@gmail.com>, "Biju
 Das" <biju.das.jz@bp.renesas.com>, "Marek Vasut" <marex@denx.de>, "Stefan
 Agner" <stefan@agner.ch>, "Jyri Sarha" <jyri.sarha@iki.fi>, "Michal Simek"
 <michal.simek@amd.com>, "Hui Pu" <Hui.Pu@gehealthcare.com>, "Ian Ray"
 <ian.ray@gehealthcare.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <asahi@lists.linux.dev>,
 <imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mips@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
 <linux-amlogic@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
 <freedreno@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <linux-tegra@vger.kernel.org>, <linux-samsung-soc@vger.kernel.org>,
 <linux-renesas-soc@vger.kernel.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com> <20260423115334.444750-1-luca.ceresoli@bootlin.com> <wapbiwxou64emxlt6oz5slst3nvcgvs35hvhpz7v3wmwp33bzc@mvdog4t7un6m>
In-Reply-To: <wapbiwxou64emxlt6oz5slst3nvcgvs35hvhpz7v3wmwp33bzc@mvdog4t7un6m>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_141932_815361_E0CBEC2C 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dmitry, Geert,

On Thu Apr 23, 2026 at 2:42 PM CEST, Dmitry Baryshkov wrote:
> On Thu, Apr 23, 2026 at 01:53:28PM +0200, Luca Ceresoli wrote:
>> drm_connector_attach_encoder() is now called by
>> drm_bridge_connector_init().
>>
>> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>> ---
>>  drivers/gpu/drm/rockchip/rockchip_lvds.c | 6 ------
>>  1 file changed, 6 deletions(-)
>>
>
> stray duplicate

Due to the long Cc list, when sending the series with b4 I hit the mail
provider limit, so patches after 34 were not sent.

I then sent them manually using the good old git format-patch/send-email,
but in the process I missed the v2 (heh, b4 is great at automating
that!). So patch 35 got sent without v2, and then I resent it and the
following ones with the v2 marker.

Sorry about the noise!

I think with Dmitry's all-series R-by this whole series can be applied at
once (I'll wait ~1 week before applying, in case of more comments). This
will avoid more iterations spamming lots of people.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
