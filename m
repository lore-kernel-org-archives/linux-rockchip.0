Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4273AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Dec 2021 18:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpvDCNTHRXIUIg62tqYkL/IzOetfqmuFzywPFmBAfmk=; b=oC5ivLckWyHFvn
	LLDReuqJ5CNQQDWHu1Bj7Ao0M/UAx5tkx81A4oysn14dmi+CnS7tHkXlDM7t56l7YAzt0fy0zzZBg
	AS7GrUTm3382MRvWi+RLuVABwtqmIShRD1ih3x4qnYZ6DqZhq5Gywqjo8cIAJC9G8qnvbr+CrfFng
	uJrOej2jvIe3FJCVjayNq+CUbjHaxAODRmPXm0xGQKd3HbQOtka6DoMzrBdHwVaWFqi9DSXmmqyJA
	5+bGMM5gyixoUK9avP6BNlZOTWVb+Sm3pUN1zvJ8jK4APONh49kvoK+GMv2FK4ihxCOlx6sf4IO1Y
	SuWPXpWucwNIavLuAJ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtw4R-001pnA-TT; Sun, 05 Dec 2021 18:17:07 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtw3y-001pY4-6d; Sun, 05 Dec 2021 18:16:39 +0000
Received: by mail-il1-x130.google.com with SMTP id j21so8089860ila.5;
 Sun, 05 Dec 2021 10:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=25U6Yhax0BXTLLFHy75HSeiByRDthooJoTH4u1dV5LA=;
 b=Rvj12MBSzB80e3ODwTCnzkmAw4RhufBgyW4U+R2JP4L0wojyAi/SRkDQxFRsGsZsgG
 Ot1xrmKFqypAotr9EhCSrd6SGtNYYEi0dqk18FKHD4OGc2kCOQJwP0wgqJK4BZCn+gx1
 dpA4FViXSM0f/Dhodlfxnh5j0hdMEWQ2ytdDJPRl9rbtqnLshuSS3x/pdjrH62Ce1WXU
 A06czOMCtxrssoeWrhD88ZAk8ykMUU1M+1mXofIWbJRSv+zbse0scYbzB+jocTnDccwm
 3woQ5qQtcWMWGjrWwOd7+pXIMYz0mguxX/ZKCkaWkDADGQbXvavU25dkjk58jzmhqVb0
 ml7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=25U6Yhax0BXTLLFHy75HSeiByRDthooJoTH4u1dV5LA=;
 b=4+BCuAPC/DwnzU6nISOBZv1ut8YZHcXdMXPrrU14SiE6Azfvgm0x3KnepDoqgg8zWX
 4KvbJ3BkqrelPMft+a31xKE7e+TUXX0PUmMP2y84+1kQdpHKXaHHcIlWJ/wb9rrmAIUt
 UwbRbU4rCYf0B0K/3OD6rnbvmJt8Wqt3jy9qyKe/i5uRb637an0QoNS0pv9e9rWCLWI1
 kDjj3LZIm8sYRrKOwFc7x6QwVpVkQOu+M6x6UmqxbDteuTaA5rjCnQMeDQ1Dc70Jsb9p
 ydlqZp7FbuWShbHFqP9uq6oeOkWsray974bUhkThuAEjPEqi6461qN+1urX8+r44zuou
 JjbQ==
X-Gm-Message-State: AOAM533nrtl3VPVxbutbQEVJanhbv6JLFwAOoXJB/OquvTP5FHW8jbnM
 BVsWh2XkUw2gtlp+bliCT/Q=
X-Google-Smtp-Source: ABdhPJx+8/AenvnBcExwEZRf0KhljG3vKx+5WKg5qzFjex7s64VgpSRc9LncTEdDstvRNWWR9oaMUw==
X-Received: by 2002:a05:6e02:2144:: with SMTP id
 d4mr30553751ilv.11.1638728197216; 
 Sun, 05 Dec 2021 10:16:37 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:9ea0:bb99:b16a:6159])
 by smtp.gmail.com with ESMTPSA id z12sm5808164ilu.27.2021.12.05.10.16.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Dec 2021 10:16:36 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com, nicolas@ndufresne.ca,
 Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [RFC 1/5] dt-bindings: power: imx8mq: add defines for VPU blk-ctrl
 domains
Date: Sun,  5 Dec 2021 12:16:14 -0600
Message-Id: <20211205181618.1041699-2-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211205181618.1041699-1-aford173@gmail.com>
References: <20211205181618.1041699-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211205_101638_283003_9FE462BC 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Lucas Stach <l.stach@pengutronix.de>

This adds the defines for the power domains provided by the VPU
blk-ctrl on the i.MX8MQ.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/dt-bindings/power/imx8mq-power.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/power/imx8mq-power.h b/include/dt-bindings/power/imx8mq-power.h
index 8a513bd9166e..9f7d0f1e7c32 100644
--- a/include/dt-bindings/power/imx8mq-power.h
+++ b/include/dt-bindings/power/imx8mq-power.h
@@ -18,4 +18,7 @@
 #define IMX8M_POWER_DOMAIN_MIPI_CSI2	9
 #define IMX8M_POWER_DOMAIN_PCIE2	10
 
+#define IMX8MQ_VPUBLK_PD_G1		0
+#define IMX8MQ_VPUBLK_PD_G2		1
+
 #endif
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
