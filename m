Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ED39C5B572
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 12:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7U3p3BsN7dXRwt+GIcoAQmtZcGbmCYoPNwm4lc9pSU4=; b=nmTCPVV1RS8CKM
	hTx869Uty1Pb0EChE4XtLXOKgD4tAvYNs0f6a1RytBYgtOj4s2BSw603piYFfmGduthdQOD/ESZlv
	tPP9lSo2bla7YyIRo80lNER8DaXAmtGEptbG39Lc0uofxYFOcmFoHiFtLsA6nuwvfLdUmwyvvtigD
	yRqJy1ortxLcybXu4I03+O4KPhBX4C8dulkswYQ8n+381HZLz9BWZErK2quXiZQS61AK2WexHw4hL
	OtYATc+NMNpNdWvOwoxB/s0ukcWiVr1hkVRpuSPsL34Q4wlXGh/Y6T+hnKxEe4QV8VA7jTCqUGR06
	v/fUZQQMUKhBQwM8dUWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaPO-00000004mDo-0IZE;
	Sun, 16 Aug 2026 12:56:14 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaPL-00000004mDP-1SAo;
	Sun, 16 Aug 2026 12:56:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=KtM92UjDWiVOHakM71uJ+Lae20Hh7YTTnG8gbjrvN4k=; b=I
	p5D4QiZkvxVOThYHJkbd4nJ92vidSeFLJw7tML2sNZY6o8SW4ctg6/o2ne6ie/WL
	VFLliQTsGgzzhWhtVegwsvfLyz3/Gd3dRRPhvsZ2I5VtpvBn4fVsi91axe8mRbIi
	CwY5sLxjdrursXz4gqRVdF8r20UNXUK5mtbRTwvWro=
Received: from andyshrk$163.com ( [61.154.14.86] ) by
 ajax-webmail-wmsvr-40-100 (Coremail) ; Sun, 16 Aug 2026 20:54:39 +0800
 (CST)
X-Originating-IP: [61.154.14.86]
Date: Sun, 16 Aug 2026 20:54:39 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Subject: Re:[PATCH v11 07/21] drm/bridge: synopsys: dw-dp: Fix support for
 short I2C reads
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260511(2e539873) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-7-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
 <20260806-synopsys-dw-dp-improvements-v11-7-0d508505f383@collabora.com>
X-NTES-SC: AL_Qu2TBPSTu0As7yCcZekfmUgWjuw/WsG1v/Ul1YBSP556jCrp6yoHelRJMXX9zsmrEg+xlzSHfCNT0M9dRK11eZMXRPYLCgc9i8hWgKKkem2vbA==
MIME-Version: 1.0
Message-ID: <2c10a52.193c.1a00aa372c7.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZCgvCgD33xwPs4Fqy8cyAA--.25160W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxg-qSWqBsw-x+gAA32
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_055612_190257_DBC01FFB 
X-CRM114-Status: UNSURE (   9.30  )
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

At 2026-08-07 01:02:13, "Sebastian Reichel" <sebastian.reichel@collabora.com> wrote:
>The transfer functions returns the amount of bytes read for
>DP_AUX_I2C_READ. By returning -EBUSY for short reads, the caller has
>less information available what is going wrong and possibly simply
>resends the read request. On sinks not supporting long reads, this will
>simply run into the same issue again.
>
>Instead it makes more sense to return the data from the short read with
>the length information, which allows drm_dp_i2c_do_msg() to read data in
>smaller chunks and succeed in the end.
>
>Due to lack of a sink, which only supports short reads, this change is
>effectively untested.
>
>Fixes: 86eecc3a9c2e ("drm/bridge: synopsys: Add DW DPTX Controller support library")
>Reported-by: Sashiko <sashiko-bot@kernel.org>
>Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

   Reviewed-by: Andy Yan <andy.yan@rock-chips.com>

>---
> drivers/gpu/drm/bridge/synopsys/dw-dp.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>index 2573ea2bb574..8ceb139f1a72 100644
>--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>@@ -1513,7 +1513,7 @@ static ssize_t dw_dp_aux_transfer(struct drm_dp_aux *aux,
> 		if (msg->request & DP_AUX_I2C_READ) {
> 			size_t count = FIELD_GET(AUX_BYTES_READ, value) - 1;
> 
>-			if (count != msg->size)
>+			if (!count || count > msg->size)
> 				return -EBUSY;
> 
> 			ret = dw_dp_aux_read_data(dp, msg->buffer, count);
>
>-- 
>2.53.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
