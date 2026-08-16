Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F68FC5DF6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 12:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U99eEq0OsJNH1/v4rb60BGi2yQibnBLVxvCQK0ZP7Es=; b=qje8UCUNB1LXVl
	BfS78BCJ9mp5ChST0z0zJwwj4D4UYuMO2c255TcLQlIJcacJHUt8tq8DQ/IByZ8mC1dMLZwj2jWOn
	kTztSZKOkeuv6maoV089OYDfjOK334y2f+4dg+2AkKwNltYpICmq8XKn9V14lRgSsEq2G8TLORC13
	/dhw8OrPNrOYK/YkutM9NttFjTN/QXP2qpZhgTiDnVqLTMBj+QptogpMr7wt6EW8rGHjCF1krScL2
	QcRABc8CXiuEjc1RsF1jpgXipvX8fm1ZDx5G7pHfc5ibKTZl9ORwvsk5I/SrSyuoZdUaCRwjzS8BT
	B/ZUaaUm9L7Q+gNs9uiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaI5-00000004lbj-0lvN;
	Sun, 16 Aug 2026 12:48:41 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaI1-00000004lbD-3xSu;
	Sun, 16 Aug 2026 12:48:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=8xeSCS2YI1dQ6ACetAfj7iAYg4mVS0nJaQNqMk76rwI=; b=Z
	KQ6hHDGc16FxYH6VnX3lwlTTuhz0DgAO+EeM40AwbOC2Js57zlbgBw6Vo0DivuYz
	k4idzZ3x6N/dtcZtcKopSFrPcO4ubBfugJ+qjpJtFNqZsTU63XD09qAX0VfI3Ydi
	LV0me+O4eDC/ZxxIadVRsMqsQS1/xlhjiCaVPl2KWo=
Received: from andyshrk$163.com ( [61.154.14.86] ) by
 ajax-webmail-wmsvr-40-100 (Coremail) ; Sun, 16 Aug 2026 20:47:08 +0800
 (CST)
X-Originating-IP: [61.154.14.86]
Date: Sun, 16 Aug 2026 20:47:08 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Subject: Re:[PATCH v11 04/21] drm/bridge: synopsys: dw-dp: Document missing
 reset line deassert
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260511(2e539873) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-4-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
 <20260806-synopsys-dw-dp-improvements-v11-4-0d508505f383@collabora.com>
X-NTES-SC: AL_Qu2TBPSTu0wp7iadY+kfmUgWjuw/WsG1v/Ul1YBSP556jCrp6yoHelRJMXX9zsmrEg+xlzSHfCNT0M9dRK11eZMXcFtjQ4Frsq6oUGvCHo/TTw==
MIME-Version: 1.0
Message-ID: <2b761354.18f3.1a00a9c9379.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZCgvCgD3HxNMsYFqiscyAA--.25027W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxgx62GqBsUzUMAAA3a
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_054838_451926_A724C613 
X-CRM114-Status: UNSURE (   9.79  )
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

At 2026-08-07 01:02:10, "Sebastian Reichel" <sebastian.reichel@collabora.com> wrote:
>If the driver uses devm_reset_control_get_exclusive_deasserted() instead
>of devm_reset_control_get() and thus automatically deasserts during
>probe, the SoC will hang when the device is unbound.
>
>This does not happen, when runtime PM is being used (not yet supported
>in mainline), which suggests the power-domain involved requires this reset
>line to be deasserted.
>
>Even with runtime PM there is no gurantee that the power-domain is
>disabled as it is shared. Considering the power-domain does not have
>the reset dependency described in DT, document the problem but leave
>things in the current state until a better solution is found as the
>reset line is deasserted by default on all supported platforms.
>
>Reported-by: Sashiko <sashiko-bot@kernel.org>
>Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

   Reviewed-by: Andy Yan <andy.yan@rock-chips.com>
>---
> drivers/gpu/drm/bridge/synopsys/dw-dp.c | 4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>index 21d60e89126f..52e3b37259a6 100644
>--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>@@ -2090,6 +2090,10 @@ struct dw_dp *dw_dp_probe(struct platform_device *pdev, const struct dw_dp_plat_
> 		return ERR_CAST(dp->hdcp_clk);
> 	}
> 
>+	/*
>+	 * This reset line is deasserted by default; asserting it hangs the SoC if the
>+	 * related power-domain is still active.
>+	 */
> 	dp->rstc = devm_reset_control_get(dev, NULL);
> 	if (IS_ERR(dp->rstc)) {
> 		dev_err_probe(dev, PTR_ERR(dp->rstc), "failed to get reset control\n");
>
>-- 
>2.53.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
