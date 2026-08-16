Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30ED3C5DF6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 12:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fGLAf5FkOHjDdls2O0POu7iP9wJVs5npvWDsLA9kus=; b=Kb8QMe2JO97ukR
	ics1MnRH35i5hphIxEZY3H5iLJMBBu+elM/b+NMqIOF2fPmB217p5/+uTQv3v6jKne1nL7qgMgOXf
	N4pO5cnWKFxwUQdIblaEMF7i/9MPkKadS9TGr9vkbm5bgvz6svxthGdX2eB1+qzuhgJ2M5ivrnxLg
	Oiq0GkVcPjDKQBNuZ4RjSoDIoac+p99sv2+l8J72BXqDEQl3OKBDFtqIhJp43gozI9xUbWguq0D1I
	BOruqcvcnTkTjmsyAquUYJJXnMg8gt4vM95WE6V+UTOQj5HouiIFZYy+WT2tE/eNRWNiW+dj20X9D
	Fhr8wbInWpZ/D9aFWaPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaJj-00000004lk5-2fDu;
	Sun, 16 Aug 2026 12:50:23 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaJh-00000004ljf-0dfu;
	Sun, 16 Aug 2026 12:50:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=vLOs8/Cq1hY4p3GUBLBBD+0bp3Z46zJBwR56Gx9TMjs=; b=j
	BMk5qmfKwRIXscCZbmHieCZOk6SXtO+r/9McydOhsctfTSANtbPUBq77zGaSZmid
	eUiAxNv1DxN2jHphc0FPSu+WqIIaU7YVbGN7mpPGDYXjEbwo0QGCYsqgrb9bUIYj
	6SCql/6pvtTlcIHwBpI/h+o4ozX59uh2WwjtIOdPXo=
Received: from andyshrk$163.com ( [61.154.14.86] ) by
 ajax-webmail-wmsvr-40-100 (Coremail) ; Sun, 16 Aug 2026 20:49:01 +0800
 (CST)
X-Originating-IP: [61.154.14.86]
Date: Sun, 16 Aug 2026 20:49:01 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: "Sandy Huang" <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"Andrzej Hajda" <andrzej.hajda@intel.com>,
	"Neil Armstrong" <neil.armstrong@linaro.org>,
	"Robert Foss" <rfoss@kernel.org>,
	"Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
	"Jonas Karlman" <jonas@kwiboo.se>,
	"Jernej Skrabec" <jernej.skrabec@gmail.com>,
	"Rob Herring" <robh@kernel.org>,
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>,
	"Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>,
	"Luca Ceresoli" <luca.ceresoli@bootlin.com>,
	"Philipp Zabel" <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
	"Dmitry Baryshkov" <lumag@kernel.org>, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	"Alexey Charkov" <alchark@flipper.net>,
	linux-rockchip@lists.infradead.org,
	"Damon Ding" <damon.ding@rock-chips.com>,
	Sashiko <sashiko-bot@kernel.org>, kernel@collabora.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re:[PATCH v11 05/21] drm/bridge: synopsys: dw-dp: Add missing mutex
 cleanups on module removal
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260511(2e539873) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-5-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
 <20260806-synopsys-dw-dp-improvements-v11-5-0d508505f383@collabora.com>
X-NTES-SC: AL_Qu2TBPSTu00v5yWRZOkfmUgWjuw/WsG1v/Ul1YBSP556jCrp6yoHelRJMXX9zsmrEg+xlzSHfCNT0M9dRK11eZMXpuotpAjslLbAL7XqfVDlCw==
MIME-Version: 1.0
Message-ID: <4b076889.1900.1a00a9e4c9f.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZCgvCgD310G9sYFqmMcyAA--.24943W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7R2W9GqBsb16fwAA3w
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_055021_538714_B06BE69E 
X-CRM114-Status: UNSURE (   6.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hello Sebastian,

At 2026-08-07 01:02:11, "Sebastian Reichel" <sebastian.reichel@collabora.com> wrote:
>The driver is currently missing to fully clean up after itself. Ensure
>that the mutex is cleaned up.
>
>Fixes: 86eecc3a9c2e ("drm/bridge: synopsys: Add DW DPTX Controller support library")
>Reported-by: Sashiko <sashiko-bot@kernel.org>
>Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

   Reviewed-by: Andy Yan <andy.yan@rock-chips.com>
>---
> drivers/gpu/drm/bridge/synopsys/dw-dp.c | 5 ++++-
> 1 file changed, 4 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>index 52e3b37259a6..b1856418f441 100644
>--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>@@ -2040,10 +2040,13 @@ struct dw_dp *dw_dp_probe(struct platform_device *pdev, const struct dw_dp_plat_
> 	dp->pixel_mode = plat_data->pixel_mode;
> 	dp->plat_data.max_link_rate = plat_data->max_link_rate;
> 
>-	mutex_init(&dp->irq_lock);
> 	INIT_WORK(&dp->hpd_work, dw_dp_hpd_work);
> 	init_completion(&dp->complete);
> 
>+	ret = devm_mutex_init(dev, &dp->irq_lock);
>+	if (ret)
>+		return ERR_PTR(ret);
>+
> 	res = devm_platform_ioremap_resource(pdev, 0);
> 	if (IS_ERR(res))
> 		return ERR_CAST(res);
>
>-- 
>2.53.0
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
