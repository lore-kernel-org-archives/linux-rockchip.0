Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43EA8C5DF6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 12:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NROLzSEE8uhflS6VjZGaG/wMkLVqX7jdYrGQtqijmc=; b=TQ5bAqsov6bNhF
	hRVO04/MElGmdRMHCEJ3YOsezGZZBXlulQ/pAnwcZ0BLjymRHEKu+/eNyonRZ/HmuvTW9xlEizbbv
	oOaJ4kHxA0iitbmcIBu3Ij0iG+JMS7WDs4BeY9PeDoC8sThK2sg8N7krub2yFwpjunXsHM8nlmalb
	DIC4/waoVgZyT8TS4QE1ZQlRwrNp7A2Z2rXMMJARIFYO4v7sTt5U78G+P3pGXuhn6ftA9FVVQfQyw
	jcQiV2nmRAmjTk2I4n7A2OSW4CpO9qPr53pvquu2QvMyFEpRAayD40/EcORCfBD6SNvs5gCzoVTUa
	iHgBAl8rivOReq4hnWcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaFe-00000004lQP-2jI6;
	Sun, 16 Aug 2026 12:46:10 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaFb-00000004lPy-3M3C;
	Sun, 16 Aug 2026 12:46:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=A6+cZeW6Ay55rwOZYOuu9MXLhRXiR355yXRspAsnMRs=; b=U
	1cT3udkpYA3SnlJnYeG1vYVLhQdH4XhnSTnpYeDIMjubliX7a64eIh9KFnzdHBOh
	TbVHYvcmCeCH0y+AaWKOC1DtRKmZ8J36l/aQXQC0QYrKU/UC3oYAAINTN/RvjNMi
	cdUM+d6KL2Iv2zcnxdxChmnPDkRhU4uPQKSPpGmM0U=
Received: from andyshrk$163.com ( [61.154.14.86] ) by
 ajax-webmail-wmsvr-40-100 (Coremail) ; Sun, 16 Aug 2026 20:44:36 +0800
 (CST)
X-Originating-IP: [61.154.14.86]
Date: Sun, 16 Aug 2026 20:44:36 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Subject: Re:[PATCH v11 03/21] drm/bridge: synopsys: dw-dp: Fix error
 handling for DP link enablement
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260511(2e539873) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-3-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
 <20260806-synopsys-dw-dp-improvements-v11-3-0d508505f383@collabora.com>
X-NTES-SC: AL_Qu2TBPSTu0os4CGQZ+kfmUgWjuw/WsG1v/Ul1YBSP556jCrp6yoHelRJMXX9zsmrEg+xlzSHfCNT0M9dRK11eZMXdYYIQ0n+4TP3uodDng6hMg==
MIME-Version: 1.0
Message-ID: <7d149316.18da.1a00a9a3fe0.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZCgvCgD3Pw20sIFqbMcyAA--.26584W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7RRUsmqBsLRnuwAA3s
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_054608_212187_0EC4CFEC 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Sashiko <sashiko-bot@kernel.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@flipper.net>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Hello Sebastian,
At 2026-08-07 01:02:09, "Sebastian Reichel" <sebastian.reichel@collabora.com> wrote:
>dw_dp_link_disable() may be called in atomic mode disable even when
>dw_dp_link_enable() (or an earlier step) failed during atomic mode
>enable as there is no error tracking. This would result in broken PHY
>power state.
>
>This is fixed by introducing a new enabled state in the link structure
>to ensure the link disabling only happens if it has been properly
>enabled in the first place.
>
>The patch also adds missing error handling in dw_dp_link_enable()
>itself to ensure the link enablement becomes an atomic operation.
>
>Fixes: 86eecc3a9c2e ("drm/bridge: synopsys: Add DW DPTX Controller support library")
>Reported-by: Sashiko <sashiko-bot@kernel.org>

>Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


  Acked-by: Andy Yan <andy.yan@rock-chips.com>

> drivers/gpu/drm/bridge/synopsys/dw-dp.c | 19 ++++++++++++++++++-
> 1 file changed, 18 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>index d7945f7fe9f0..21d60e89126f 100644
>--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>@@ -280,6 +280,7 @@ struct dw_dp_link {
> 	unsigned char revision;
> 	unsigned int rate;
> 	unsigned int lanes;
>+	bool enabled;
> 	u8 sink_count;
> 	u8 vsc_sdp_supported;
> 	struct dw_dp_link_caps caps;
>@@ -1615,6 +1616,9 @@ static void dw_dp_link_disable(struct dw_dp *dp)
> {
> 	struct dw_dp_link *link = &dp->link;
> 
>+	if (!link->enabled)
>+		return;
>+
> 	if (dw_dp_hpd_detect(dp))
> 		drm_dp_link_power_down(&dp->aux, dp->link.revision);
> 
>@@ -1624,6 +1628,7 @@ static void dw_dp_link_disable(struct dw_dp *dp)
> 
> 	link->train.clock_recovered = false;
> 	link->train.channel_equalized = false;
>+	link->enabled = false;
> }
> 
> static int dw_dp_link_enable(struct dw_dp *dp)
>@@ -1636,10 +1641,22 @@ static int dw_dp_link_enable(struct dw_dp *dp)
> 
> 	ret = drm_dp_link_power_up(&dp->aux, dp->link.revision);
> 	if (ret < 0)
>-		return ret;
>+		goto err_phy_power_off;
> 
> 	ret = dw_dp_link_train(dp);
>+	if (ret < 0)
>+		goto err_link_power_down;
>+
>+	dp->link.enabled = true;
> 
>+	return 0;
>+
>+err_link_power_down:
>+	drm_dp_link_power_down(&dp->aux, dp->link.revision);
>+	dw_dp_phy_xmit_enable(dp, 0);
>+
>+err_phy_power_off:
>+	phy_power_off(dp->phy);
> 	return ret;
> }
> 
>
>-- 
>2.53.0
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
