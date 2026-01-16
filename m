Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B74FFD489A3
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 13:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Po8HbmBSBwnXwo8KsPA0+OlWaTKUcBv2vJqEkyDYqug=; b=fi+YZS5GpebvzJ
	y/Rr5k/ifXuM/EGJd8S3DKD9b3e0zIQqJX6JLagwaHhk8x++YOR24pRaJkuM0fIQmwdQlMNGA8XG1
	N67ZoI/map3KzQqTXrBsEL0DP9+c6bxQ3fHfUTNCYcwp/fwvX+xRpW7VFPT6Jz03ViQmc4f8xWvDQ
	gHTT9OininxBi1icEWBvNxmrcdcfI3A7DPcj23EJbSjx7rqFd11thgk7twFFS0NdbLVrmJKIR8F5J
	knEfGyGWPNxE+TFu7tnqT41VRNANanEOSL/KMBr/0MZ7McgWoTIMH5qQ6Xd6ObrRvGoOSoyAzaVGe
	TPTwzk0VrsqX3MN09lfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgjVO-0000000E8eU-3mJF;
	Fri, 16 Jan 2026 13:04:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgjVH-0000000E8YU-2jr1;
	Fri, 16 Jan 2026 13:04:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B2F6144497;
	Fri, 16 Jan 2026 13:04:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB03C4AF0F;
	Fri, 16 Jan 2026 13:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768568678;
	bh=4CY5Ftxdqdf78iaz/GZPARSYtxXrYl4kHYgo18eZegU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=KkzSWXSMuaN8tqpedT4ITAYYQIsUuvPx1YzJRL58rzA3lVObIyY35zaHEW2Fo8TXc
	 Q+bPpupHEjosK9WFIdc4x1JF7kWwzVeSyR6e7wfAmOvmCb0g3+BTIFJW+rrcsSeJlb
	 GBzuMCAVgDipOVAPO/We5imZVE2IT2s9NWuJ0K4YTM+T/Q+KLfyxVqLoiYtMMmVbU3
	 N97YosQWyliZVcmUPUzyndr8JAYgr1PjHtCtUm6P6atV9KXY7ilsL1prlzyMt/hvfb
	 zl9d4WUCCtCDr9kS1bpijyqC1STSuGTMfiht2PMbBNKjA5vPFsTV+SKuT7tNQno00h
	 a85zi/xMcQ2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E626D4899D;
	Fri, 16 Jan 2026 13:04:38 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Date: Fri, 16 Jan 2026 14:02:48 +0100
Subject: [PATCH v5 3/3] arm64: defconfig: enable designware mipi csi-2
 receiver
MIME-Version: 1.0
Message-Id: <20251114-rockchip-mipi-receiver-v5-3-45aa117f190a@collabora.com>
References: <20251114-rockchip-mipi-receiver-v5-0-45aa117f190a@collabora.com>
In-Reply-To: <20251114-rockchip-mipi-receiver-v5-0-45aa117f190a@collabora.com>
To: Michael Riesch <michael.riesch@collabora.com>, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
 Kever Yang <kever.yang@rock-chips.com>, Frank Li <Frank.li@nxp.com>, 
 Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Collabora Kernel Team <kernel@collabora.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768568677; l=784;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=C9lnlkDzHuvbmOodwv1mUExRofM5smDG511gbhu0yVQ=;
 b=GtlzAED5qA4BDLUOI836OZbRb5e2245thVw8iwM5pvT6KCJ6Sn/RiDpYDVlgquSoo3/jIopjC
 ndk7KHAt6eDB1XRnhAx9TWPCP0mUIcEqs9QA6xug1stXtl+1BA+huRp
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_050439_774011_70BCE267 
X-CRM114-Status: UNSURE (   9.35  )
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
Reply-To: michael.riesch@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Michael Riesch <michael.riesch@collabora.com>

The Synopsys DesignWare MIPI CSI-2 Receiver is integrated into
recent Rockchip SoCs, such as the RK3568 and the RK3588.
Enable the driver for it in the default configuration.

Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 45288ec9eaf7..26532de26668 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -873,6 +873,7 @@ CONFIG_SDR_PLATFORM_DRIVERS=y
 CONFIG_V4L_MEM2MEM_DRIVERS=y
 CONFIG_VIDEO_AMPHION_VPU=m
 CONFIG_VIDEO_CADENCE_CSI2RX=m
+CONFIG_VIDEO_DW_MIPI_CSI2=m
 CONFIG_VIDEO_MEDIATEK_JPEG=m
 CONFIG_VIDEO_MEDIATEK_VCODEC=m
 CONFIG_VIDEO_WAVE_VPU=m

-- 
2.39.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
