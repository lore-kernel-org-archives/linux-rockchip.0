Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB95CCCF2DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 10:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuYePtZ+xiR3giuehiDD3Z2tyCXcr0n6jVm6F4cSjiA=; b=AFy8hWd5LETs/+
	xz9lLkKj20MHOVCn0Ls+O7JDxj+JrpHz7V5g6uJVMvvDo92rLV/xOXLCRg7XN2IQVKwG0h52glfDy
	xNhldJuLbv3MTUhyd+yLRPc7e1loYVXBpxpRW1Hz6zWBsnS/j1xrVJsovKK+nKiB7Cgthkun7zsoY
	Nc69AP/7lFaSv/+jgVGedez5YwRTpMg8NW2woFEjK5eAJK+/2obRiwBgWdq/avcr6zQPIKsFHrLI+
	x7EuSr2Nt9MokHcYuvYpoBWIEJTeGlRx1PyCR1K6ud9aBr+eQjX68ZtUXIPog9xAlf4bQxpy2mS5G
	YNyzQOdEQzq7hGghKRdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhmjf-00000001npm-2bJN;
	Mon, 19 Jan 2026 10:43:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhmjU-00000001niT-2Uzb;
	Mon, 19 Jan 2026 10:43:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CFE74443C2;
	Mon, 19 Jan 2026 10:43:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8245C2BC9E;
	Mon, 19 Jan 2026 10:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768819417;
	bh=SBMojAQMLBEsq97VBBgUN3ogr+3rX2KzJ0Dl48KhAsI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=RkuyDe+ExkcPHo/mrgpS+JMdSXGp91d8Du4ZHMVJGbCGqay86qPqlP/ZKFc0IZCRD
	 IH9+C3t2gMz5fp6z2aL98Lyu6TAjzvBEj5Cz22phalaehF1LoPSJMES7SOkRlT4+kq
	 KYnhH17rdfcTCxsOWsz1SyH2MhQYX5s+K809n8SQXtrfUlczNohFCJH6I32PFgiyBC
	 XRGdlLbaIs9zoADDEEvj5+bscA5MeshsPUDhJ0II4RRX1j039jphmyY5OoTt1UkNV6
	 dVeEiEUTE7t2Mg4aHJUpGqXziji66OPsW0iIWErMDv63yss07CkR9BiZg1K82LzhOG
	 tkw2mrBYxhywg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8BCCA5FF6;
	Mon, 19 Jan 2026 10:43:37 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Date: Mon, 19 Jan 2026 11:43:37 +0100
Subject: [PATCH v7 3/3] arm64: defconfig: enable designware mipi csi-2
 receiver
MIME-Version: 1.0
Message-Id: <20251114-rockchip-mipi-receiver-v7-3-42ff419f9b51@collabora.com>
References: <20251114-rockchip-mipi-receiver-v7-0-42ff419f9b51@collabora.com>
In-Reply-To: <20251114-rockchip-mipi-receiver-v7-0-42ff419f9b51@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768819415; l=786;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=4/e4J7LessS5jdywMTVpeb4iDs9BMTFRupZRi4shvqg=;
 b=fuGnvx3Vg9ehc+99lHBmiG8z4gaPPI9KQ+QqmK2PHxxH+v1HPVBSwsN83ExbpsaCD9ptw5QzB
 odV6ClhYdtZBqgLPzIFCd0lnGgK/5hOXYJJE7/EdvDWwJ1GIzK3zTV5
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_024340_731616_F08EB261 
X-CRM114-Status: UNSURE (   9.57  )
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
index 45288ec9eaf7..58bda738819a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -873,6 +873,7 @@ CONFIG_SDR_PLATFORM_DRIVERS=y
 CONFIG_V4L_MEM2MEM_DRIVERS=y
 CONFIG_VIDEO_AMPHION_VPU=m
 CONFIG_VIDEO_CADENCE_CSI2RX=m
+CONFIG_VIDEO_DW_MIPI_CSI2RX=m
 CONFIG_VIDEO_MEDIATEK_JPEG=m
 CONFIG_VIDEO_MEDIATEK_VCODEC=m
 CONFIG_VIDEO_WAVE_VPU=m

-- 
2.39.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
