Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DA8CD79769
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Jan 2026 12:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uU6kRHCM0KIb25yu6D4GktdmrIdT82aXbA+C2GbX+ok=; b=rrK4SCgP7jHWbB
	sk2tQKL0xuESuDd+YCXy/kfx7MGAMbXC01scuezk/nKoK/yVscDdrOjecZneM2c935uD5t+srntBp
	o7rG8ltKMUpzlM+OuW1+Y4ENvbUz1PzK2Iyo3hLD1GCjsciQ96iPc4rR/zDhFq0OdDdlZjt0QVFtk
	1yCjnSqPo93Ojq9PEwMBkn4ugjij+ndAA91lTYeIKisp9is+6sa3KprC8j1VMdy0FGzaBNIv9v2Jc
	6UxbsxlebqxTDkwbuEk1FQp5Zz25a2o6mYWqEpIg52qRewwMOPho28UiYIfKtiTmYMDZJCs5eGi5w
	WXoMqt+oPiq/93W2KkVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmASd-00000002aRb-3Vwg;
	Sat, 31 Jan 2026 12:52:23 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmASb-00000002aQh-0bv5;
	Sat, 31 Jan 2026 12:52:22 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 7E4784E42385;
	Sat, 31 Jan 2026 12:52:19 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 522DA606B6;
	Sat, 31 Jan 2026 12:52:19 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DA0F6119A8886;
	Sat, 31 Jan 2026 13:52:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769863937; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=RxyFnWgbUAYvhpMdYr/N5vyAI+H1oL4nAc3ZU6Inhdc=;
	b=fDgxO6MpgRZyihSKd+5jBWPrdf8LpxE1hSaDbW9Mvvs57WZymPmqhA4k9vp9beotZi02f/
	Tpr7wrnWzg25aiajUyQRlxD1SaOCo/g+cRuPf19riEF8V3TDjBSNp8k2OYPdukD21qFzSm
	i5oaqHmH9YLl+Ow64sXn/8bpJzJLCW1V1KyLV5TLk2bqfbZ5Rp71U1FZmlQCH3n+EP3pf6
	2ZyTo/c83fTEJH3KcHDoYtTPgQXpe2uk/+6xiQChhrROszlENHUJ8pVQpaTsErJqwsQzkW
	mkiIbWU4Y7RgIA84Ru6lLy6cS+jJE5gBANoVsCC1HDVcGdGo2MHTLo5NsrxcjA==
Mime-Version: 1.0
Date: Sat, 31 Jan 2026 13:52:06 +0100
Message-Id: <DG2SEFJHOTZZ.19VQUW2FYSWAC@bootlin.com>
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <inki.dae@samsung.com>,
 <sw0312.kim@samsung.com>, <kyungmin.park@samsung.com>, <krzk@kernel.org>,
 <alim.akhtar@samsung.com>, <jingoohan1@gmail.com>,
 <p.zabel@pengutronix.de>, <hjc@rock-chips.com>, <heiko@sntech.de>,
 <andy.yan@rock-chips.com>, <dmitry.baryshkov@oss.qualcomm.com>,
 <dianders@chromium.org>, <m.szyprowski@samsung.com>,
 <jani.nikula@intel.com>, <linux-kernel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
To: "Damon Ding" <damon.ding@rock-chips.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v8 02/18] drm/bridge: analogix_dp: Formalize the struct
 analogix_dp_device
X-Mailer: aerc 0.20.1
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
 <20251217093321.3108939-3-damon.ding@rock-chips.com>
In-Reply-To: <20251217093321.3108939-3-damon.ding@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260131_045221_317271_5833AFB5 
X-CRM114-Status: UNSURE (   5.57  )
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

On Wed Dec 17, 2025 at 10:33 AM CET, Damon Ding wrote:
> Use the tap instead of the space for &analogix_dp_device.aux and
          tab

(no need to resend yust to fix this minor typo)

> &analogix_dp_device.force_hpd.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
