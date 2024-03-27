Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0E30C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 22:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HfnOetJW1+60dgwUEny2M/kgOH/NJj6eJR3eoGHtX8=; b=atW6fta8e+BvAU
	jlVDqImG9/bDNq4KHTrs1h029WHhHAH/+3DQcMUnzNjEFNHdHMnR2SuwBbLGu0IMru1kIZeVOB8Dm
	X6I0H4EBy37Pcm8qmOPdnMPBwgB2MaB+ay19rUbk/vLOnqin+8DEdIPQWU2wq7/zpxGt8mNEP5VEx
	Cu0lpF0XvKfInHWXNSGeJneVjdhZXfx5A6HgnNPDGoGov1vGDWyHKOPqYvTiPQRaiHVfxttpOJrnU
	J2n3PKf9I16KuR/Cv3gWSMycI7OqYiI0AU+yDmbTRvdT21OtLyVGdivh276tFdR0LUzfBdhDfg8GG
	RfSNTDDQHXSPDC7TgqyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpc7p-0000000BTkI-2EMZ;
	Wed, 27 Mar 2024 22:52:05 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpc7k-0000000BTg6-3krs;
	Wed, 27 Mar 2024 22:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711579918;
	bh=4dKqvMz6d2W8NZgGdx/xyiuPz/8oQS2caUKeGMM634A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cycSnOYFwQ20Mz2mz1Kkud/3Vy+/wpn2KIxWNaCZjmqATSIrTw+aerA+uXxySMQie
	 nzSNEUWGwtNPSWeXIFHjy9ghW9oVkzttyj8aRWTGIDggrghLFiTNdt6+W+bHtfbFtd
	 RS8YehfJJtZ9leWtbnQwfOEGMqbZZp8hYLpk/jjOqnLGhs9odLMwcgsaCDl9zZt2Po
	 lK8I3qcT9eIf68X4XvpG3yIe6PI7yNWfHiYFojt+pj08w5ngASxV80YZgPCWwZ8ReO
	 JGODuAlfDm4CH82iS3PnwVmNAXM0SHphDAMbAMklaw4P67qe9XnF4PF9RGsJYye88f
	 NAPL1yBwuTtBw==
Received: from shreeya.shreeya (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2B6C33782112;
	Wed, 27 Mar 2024 22:51:49 +0000 (UTC)
From: Shreeya Patel <shreeya.patel@collabora.com>
To: heiko@sntech.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	dmitry.osipenko@collabora.com,
	sebastian.reichel@collabora.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	hverkuil@xs4all.nl,
	hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-arm@lists.infradead.org,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH v3 1/6] dt-bindings: reset: Define reset id used for HDMI Receiver
Date: Thu, 28 Mar 2024 04:20:52 +0530
Message-Id: <20240327225057.672304-2-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240327225057.672304-1-shreeya.patel@collabora.com>
References: <20240327225057.672304-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_155201_144628_51FE3E29 
X-CRM114-Status: UNSURE (   8.96  )
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

Add reset id used for HDMI Receiver in RK3588 SoCs

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
Changes in v3 :-
  - Add an Acked-by

Changes in v2 :-
  - Move the dt-binding include file changes in a separate patch
  - Improve the subject and commit message description

 include/dt-bindings/reset/rockchip,rk3588-cru.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/reset/rockchip,rk3588-cru.h b/include/dt-bindings/reset/rockchip,rk3588-cru.h
index d4264db2a07f..e2fe4bd5f7f0 100644
--- a/include/dt-bindings/reset/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/reset/rockchip,rk3588-cru.h
@@ -751,4 +751,6 @@
 #define SRST_P_TRNG_CHK			658
 #define SRST_TRNG_S			659
 
+#define SRST_A_HDMIRX_BIU		660
+
 #endif
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
