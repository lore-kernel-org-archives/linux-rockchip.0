Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82D18C98314
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 07:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMLrKFjOyy3n1OXKu1du27tnzu9Tzj59DINP6MAqF5c=; b=Tk5GsNh4MqVzWN
	cvM4j0I/z6B3nLfHg7Ev07ynOAjowjqEz58PmxJYu1tVd2FNLYuVb/hEetqrD6npBQ23v6ZyPVB+q
	nNZJguSWBtrMRs1an50zj/haO9UGY8CcYkJ73FwQr0Z10BGCVmqseV3Wzi3+9Hfek/+bbOIV3p2eA
	1WGiwTVzcWfnlB5uQv6JITd8RhpaxVU8kTt7YirUfFvjq2PnRbwqs9ND36f8jk7ILLzB1IJdMxw3l
	FKNdBojiTpX7NNN2tgPd4sOFLDT0rHtO++hre02It8rbsIuWyg53IAFrasc94P+x1pzAO2KykNjiV
	owpBLjtcNSeoO82avRgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dTC-0000000AEBL-2KtY;
	Thu, 24 Sep 2026 07:02:14 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dSo-0000000AE5O-2VE2
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 07:01:57 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 2A3521A0FF5;
	Thu, 24 Sep 2026 07:01:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EA2AA5FB45;
	Thu, 24 Sep 2026 07:01:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B2EEF103294A6;
	Thu, 24 Sep 2026 09:01:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1790233298; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=3oGwBuyJVzkAjrauN/FxJTxwMCY3sLnXn9ixXjUrD2A=;
	b=VfDv7S7faDApBOx+DPqMCyWHBKUPlODcB1xuNfsFjM3RNlzyRMcdJhIP0bigttbKx1o5jy
	+B3mEF8B/s9ysd2wfnmGpCg4NZheR3VGvS94Ic0SKnLPviSK0O4PMC4viKTqfmdCj+9vMX
	uaR7ncMHlkENvjrtg1sfppR2+2rB1w3yNHl15P3vTuCFyK7Bv7Ut1MV2dfvSol7696XXmK
	vqgt//ttjMMGzJqmyWKqUW/+naiLm3TqTzPFnvGHAOfowEfbjOv664AYGg+P4m03YFGXZS
	W/ZrKJoYs3u+wZqS+nmUIHWaVMRI8biPPQkNoSk2GzQUV+7Bbe8V7J315PgOJg==
Mime-Version: 1.0
Date: Thu, 24 Sep 2026 09:01:18 +0200
Message-Id: <DLNCQEG62F5N.O98WAO4U2FJO@bootlin.com>
Cc: "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Thomas Zimmermann"
 <tzimmermann@suse.de>, "David Airlie" <airlied@gmail.com>, "Simona Vetter"
 <simona@ffwll.ch>, "Jessica Zhang" <jesszhan0024@gmail.com>, "Laurentiu
 Palcu" <laurentiu.palcu@oss.nxp.com>, "Lucas Stach"
 <l.stach@pengutronix.de>, "Frank Li" <Frank.Li@nxp.com>, "Sascha Hauer"
 <s.hauer@pengutronix.de>, "Pengutronix Kernel Team"
 <kernel@pengutronix.de>, "Fabio Estevam" <festevam@gmail.com>, "Paul
 Cercueil" <paul@crapouillou.net>, "Paul Kocialkowski" <paulk@sys-base.io>,
 "Linus Walleij" <linusw@kernel.org>, "Inki Dae" <inki.dae@samsung.com>,
 "Jagan Teki" <jagan@amarulasolutions.com>, "Marek Szyprowski"
 <m.szyprowski@samsung.com>, "Sean Paul" <sean@poorly.run>, "Jonathan
 Corbet" <corbet@lwn.net>, "Shuah Khan" <skhan@linuxfoundation.org>, "Randy
 Dunlap" <rdunlap@infradead.org>, "Albert Esteve" <aesteve@redhat.com>,
 "Anusha Srivatsa" <asrivats@redhat.com>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Hui Pu" <Hui.Pu@gehealthcare.com>,
 "Ian Ray" <ian.ray@gehealthcare.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mips@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <asahi@lists.linux.dev>,
 <linux-arm-msm@vger.kernel.org>, <freedreno@lists.freedesktop.org>,
 <linux-tegra@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-samsung-soc@vger.kernel.org>
To: "Maxime Ripard" <mripard@kernel.org>, "Luca Ceresoli"
 <luca.ceresoli@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 12/19] drm/mcde: dsi: don't create a panel_bridge
X-Mailer: aerc 0.22.0
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
 <20260916-drm-bridge-every-panel-v3-12-83afb4f1a707@bootlin.com>
 <arInho2bsfJiCgjV@houat>
In-Reply-To: <arInho2bsfJiCgjV@houat>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_000150_808751_06180873 
X-CRM114-Status: GOOD (  18.24  )
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

Hi Linus, Maxime,

On Tue Sep 22, 2026 at 9:09 AM CEST, Maxime Ripard wrote:
> On Wed, Sep 16, 2026 at 03:45:36PM +0200, Luca Ceresoli wrote:
>> Now a panel_bridge is automatically created for every drm_panel and the
>> panel-bridge API is just a deprecated wrapper to access it.
>>
>> Update and simplify the code by just getting a reference to the
>> already-existing bridge using of_drm_find_and_get_bridge().
>>
>> Also keep the "connected to non-panel bridge (unsupported)\n" error logic
>> by using the drm_bridge_is_panel() function.
>>
>> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

[...]

>> @@ -1102,40 +1100,21 @@ static int mcde_dsi_bind(struct device *dev, struct device *master,
>>
>>  	/* Look for a panel as a child to this node */
>>  	for_each_available_child_of_node_scoped(dev->of_node, child) {
>> -		panel = of_drm_find_panel(child);
>> -		if (IS_ERR(panel)) {
>> -			dev_err(dev, "failed to find panel try bridge (%ld)\n",
>> -				PTR_ERR(panel));
>> -			panel = NULL;
>> -
>> -			bridge = of_drm_find_and_get_bridge(child);
>> -			if (!bridge) {
>> -				dev_err(dev, "failed to find bridge\n");
>> -				return -EINVAL;
>> -			}
>> +		bridge = of_drm_find_and_get_bridge(child);
>> +		if (!bridge) {
>> +			dev_err(dev, "failed to find bridge\n");
>> +			return -EINVAL;
>>  		}
>>
>> -		if (panel || bridge)
>> -			break;
>> +		break;
>>  	}
>> -	if (panel) {
>> -		bridge = drm_panel_bridge_add_typed(panel,
>> -						    DRM_MODE_CONNECTOR_DSI);
>> -		drm_panel_put(panel);
>> -		if (IS_ERR(bridge)) {
>> -			dev_err(dev, "error adding panel bridge\n");
>> -			return PTR_ERR(bridge);
>> -		}
>> -		drm_bridge_get(bridge);
>> -		dev_info(dev, "connected to panel\n");
>> -		d->panel = panel;
>> -	} else if (bridge) {
>> +	if (!bridge) {
>> +		dev_err(dev, "no bridge\n");
>> +		return -ENODEV;
>> +	} else if (!drm_bridge_is_panel(bridge)) {
>>  		/* TODO: AV8100 HDMI encoder goes here for example */
>>  		dev_info(dev, "connected to non-panel bridge (unsupported)\n");
>>  		return -ENODEV;
>
> I wonder if we still need that branch. Every panel is a bridge now, and
> it looks like we don't have any specific panel handling in this driver,
> so I guess it supports bridges already?
>
> Linus, do you know why this condition was here in the first place?

I had the same thought while writing the patch, but I chose to be
conservative.

Linus, unless you have more info I'm going to apply the patch as
is. Removing this special case would be welcome as a later patch.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
