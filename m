Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 936C6C44507
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZ2GDkvteQ1Lwt963m3M/NLyS+bIxcG+v2BWNm0O9l0=; b=NYBH+z7R0g2oN+
	asJSl6YQMohihBS+rP/w54NuA180knfJozHtRUC9wDdeNyu6amLuuG1vVbvHTaL+OS3VdeFfRDNZd
	5sq25ZSg3do9lPEryc6mpLgyXL3aIP5rOjz2ds82nQeV7xXbPxCDdmygEYqgvAV4B07d+zQkyqy+u
	h3SaOcPNxkwNPQWoUXZ99vT51ygHirWgr2+MVzUG3jmS4zS0gRpLviH7qWJyWBFis/hgPyV/GY22L
	Sp7zI6m6/5lgwSDSM6+uvyi44aZs2EzE4DCFYeCCfJwt91oVNM4DosCg/B0HidofZqUmQ8dxDDR8A
	H3WquJ+yBYwelV8dbAbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRm-00000001XiZ-1sCa;
	Thu, 09 Jul 2026 08:49:30 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFxCC-0000000BzVf-1bt0;
	Thu, 23 Apr 2026 16:46:33 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 1FB711A33CA;
	Thu, 23 Apr 2026 16:46:29 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E2194600DD;
	Thu, 23 Apr 2026 16:46:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 66CE510720005;
	Thu, 23 Apr 2026 18:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776962785; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=S05j6aseg7c7u3xV5vOsljLds3FQ6L9R3JcogXmLNZs=;
	b=2l2tjOxbp/muwVUTt1iYaIz8b7OLe+mJ2gwHjUl/Zi9B+c+A9VYP6Ja5C2fCxD7EBcL8KE
	tj9o1FWt6yl5MwmosOaOCmM5hg14Gf6FQCD6xO4NlTRrX8rWJO7AXZiqzKJUGSdGNfq0dX
	90/Fet3eusoHdXKPgHJviW0bm/BmWmkW8WJGQJXu+6RINWTT2CgIMhDV/YcJ+q/TJAH7GV
	wy8CB9xvhkE+fTuzqLnN9+emGn4BkhcJVhKXnLTSZCbNekK5oVrGCbiUFXMRSBxTBCE1Lo
	fGJwcmZCjXWgzqASXiN/aqIJ5NiJ8amWgtQeCTnheHeEOAEeGBshs0HQdugKjg==
Mime-Version: 1.0
Date: Thu, 23 Apr 2026 18:46:00 +0200
Message-Id: <DI0OQ6JRMPTR.1FP9UHPJBYI7M@bootlin.com>
Subject: Re: [PATCH v2 00/41] drm/display: bridge-connector: attach encoder
 to the connector
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
References: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com> <wanzalswb3lez6kyklprqojcnidab5fkxgu57lfka45w2rt4ic@xdatq5o7yiub>
In-Reply-To: <wanzalswb3lez6kyklprqojcnidab5fkxgu57lfka45w2rt4ic@xdatq5o7yiub>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_094632_679860_DDD0F869 
X-CRM114-Status: GOOD (  12.23  )
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

On Thu Apr 23, 2026 at 2:45 PM CEST, Dmitry Baryshkov wrote:
> On Thu, Apr 23, 2026 at 11:16:54AM +0200, Luca Ceresoli wrote:
>> This series simplifies using the bridge-connector by removing the need to
>> attach the newly created connector to the encoder.
>>
>> == Series description
>>
>> Currently all users of the bridge-connector must call
>> drm_connector_attach_encoder() immediately after a successful
>> drm_bridge_connector_init().
>>
>> This is an unnecessary burden for users. Move the call to the end of
>> drm_bridge_connector_init() so all callers can be simplified.
>>
>
> I don't know which one is more correct in this situation, but let it be
> R-B for the series:
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>
> Feel free to take the msm patches through drm-misc-next (A-b).

Meaning: Acked-by on the msm patches + Reviewed-by on all the series,
right?

Thank you very much!

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
