Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED3CAC5DF6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 12:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6N/CVVacywJTj5BR2BNUhDvDoQRXUYg8cCUTvidZFsM=; b=FJxWYPECxWskLh
	Bu7H8FbKXEuameR+02hlO5sU9j985EfyCexDnLPtEiWdiWa3v8RQqDG4x9xzKVAlXjA/wA1dGl3gU
	sHH0yx4JatCV9e4QbaDsGBioF+/tuz/A0iAjC63PpjNlHIxGUwmBULrJpYfIxhG/bv5UJfSbWC3IX
	wxkyei2SKBcpuYfgrgAgFg2BC93vBWWlQ4Kofi0kv04evK/anzNF/tuk4pvijEblri3tAaoTb/38D
	1YoSfU2oIieQBFDxlCfWJlVQ1T4F/VgwJVMcOGhSh6qVZItucztziepKFA3X95MOmqmkBC2cbZYhU
	GLYQ8DkntehXwaVCQoiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaNI-00000004m1U-1UYv;
	Sun, 16 Aug 2026 12:54:04 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaNE-00000004m0w-3n8k;
	Sun, 16 Aug 2026 12:54:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=jYN9LRzk6AV2CA6a7a1Oc5KBaqRi4PQJ0B/IiSbloaY=; b=V
	VkqwpYfOmt+eMyX0o1kRFn6BvxVl/rbbORD+O3yp9rvwv33llxj098bmqFAq6HRA
	r0jT4/w2l/AYpMnMo21VKXFIlLezdhTemok7cwMRoaGqWBwWcHg+kZb/b9GMyEAA
	T00JEPUhNDVQ+4M4++p6YFSDcjjfw0K8azyy9x8YKk=
Received: from andyshrk$163.com ( [61.154.14.86] ) by
 ajax-webmail-wmsvr-40-100 (Coremail) ; Sun, 16 Aug 2026 20:52:34 +0800
 (CST)
X-Originating-IP: [61.154.14.86]
Date: Sun, 16 Aug 2026 20:52:34 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Subject: Re:[PATCH v11 06/21] drm/bridge: synopsys: dw-dp: Fix AUX transfer
 timeout race condition
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260511(2e539873) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-6-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
 <20260806-synopsys-dw-dp-improvements-v11-6-0d508505f383@collabora.com>
X-NTES-SC: AL_Qu2TBPSTu08u4iGQZ+kfmUgWjuw/WsG1v/Ul1YBSP556jCrp6yoHelRJMXX9zsmrEg+xlzSHfCNT0M9dRK11eZMXRa0mD8JbhNsB4mOL9YJNVA==
MIME-Version: 1.0
Message-ID: <2db27b91.1922.1a00aa18b0d.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZCgvCgD3dwqSsoFquscyAA--.25143W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxhLLKmqBspLp6wAA38
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_055401_370907_49B21956 
X-CRM114-Status: UNSURE (   9.50  )
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

At 2026-08-07 01:02:12, "Sebastian Reichel" <sebastian.reichel@collabora.com> wrote:
>The DP AUX transfer method uses a completion triggered by an interrupt,
>which can timeout. If the function runs into the timeout and the
>interrupt fires afterwards, the following DP aux transfer completion
>would trigger immediately without waiting for the interrupt. This in
>turn means the next one would also be broken and so on.
>
>Fix this potential issue by re-initializing the completion directly
>before sending the AUX command.
>
>As this is racy (the interrupt might arrive between the completion
>re-init and the new command being programmed), also reset the AUX
>controller on timeouts and synchronize pending interrupts to gurantee

Typo: s/gurantee/guarantee


>that there are no pending AUX transfers when the dw_dp_aux_transfer()
>returns.
>
>Due to lack of a sink, which generates AUX timeouts, this change is
>effectively untested.
>
>Reported-by: Sashiko <sashiko-bot@kernel.org>
>Fixes: 86eecc3a9c2e ("drm/bridge: synopsys: Add DW DPTX Controller support library")
>Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>---
> drivers/gpu/drm/bridge/synopsys/dw-dp.c | 8 ++++++++
> 1 file changed, 8 insertions(+)
>
>diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>index b1856418f441..2573ea2bb574 100644
>--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>@@ -1466,6 +1466,8 @@ static ssize_t dw_dp_aux_transfer(struct drm_dp_aux *aux,
> 	if (WARN_ON(msg->size > 16))
> 		return -E2BIG;
> 
>+	reinit_completion(&dp->complete);
>+
> 	switch (msg->request & ~DP_AUX_I2C_MOT) {
> 	case DP_AUX_NATIVE_WRITE:
> 	case DP_AUX_I2C_WRITE:
>@@ -1492,6 +1494,12 @@ static ssize_t dw_dp_aux_transfer(struct drm_dp_aux *aux,
> 	status = wait_for_completion_timeout(&dp->complete, timeout);
> 	if (!status) {
> 		dev_err(dp->dev, "timeout waiting for AUX reply\n");
>+		regmap_update_bits(dp->regmap, DW_DP_SOFT_RESET_CTRL,
>+				   AUX_RESET, FIELD_PREP(AUX_RESET, 1));
>+		usleep_range(10, 20);
>+		regmap_update_bits(dp->regmap, DW_DP_SOFT_RESET_CTRL,
>+				   AUX_RESET, FIELD_PREP(AUX_RESET, 0));
>+		synchronize_irq(dp->irq);
> 		return -ETIMEDOUT;
> 	}
> 
>
>-- 
>2.53.0
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
