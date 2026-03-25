Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3350106B508
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 11:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lswtT6WovPKbBIcPwI2Huw4VDa35CG9AaB2kJypAbyU=; b=FbMxJoMAjh/GiE
	l1+FIXQ1kTvaGTACou7q2SQH1nWh6R8z2R60oyq/5nr3t39dnUOwhlp/Z84UwYqxiOrQPsAv4M5HK
	Ygvf0+2AlwAYjyBWT7gdsaJ4ts2qAhUDEwkKRJpTKac3SkXWQ7vPk9WUIOL/tBGy3oTDknMRlbBJM
	bjTpzupyEC2Py79A6A5rE0v8CfLgfx5SX03kdQrS5pczn5YZHUeU6xYHFvjNoUWd4X1T6/Dv99Zcq
	EOE6Hp2MUiTjUcVIY0d9ydwILw2vdAxrrAwIqsGZSb1cvCnWfgpd/9cHtwtKkqMgzuxucS7lZq8dJ
	u8cu6siAXOtQ5d4NE4LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Mm0-00000003JW1-0kof;
	Wed, 25 Mar 2026 11:51:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MlT-00000003J4E-3eCB;
	Wed, 25 Mar 2026 11:51:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 455EF444EB;
	Wed, 25 Mar 2026 11:51:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F411C2BC9E;
	Wed, 25 Mar 2026 11:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774439470;
	bh=u/Xs7U2frs0ytgKfO3Xf4HvlIBF3VP041tOb+X5o8sA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=i516cVLksoX6Ui8Zc7u/uPJvqnBCXaR1xXPfMfHaCGv8+TlmHDfXensJIdpkNzvBB
	 0C1JlRDD2/5beDuRHQB2Y8YJ7Q0WCfl8KOHHMHMDPSLNjwcwGjXJdhnz/7PrUal7p6
	 vbrf5TstjL57rgy0xs6MYAIUCJgV7Ql7KY/JsHd3yyK8KOKb/Edjm0Ki/2A1ew/cP9
	 k6TOqwMQtkf2uBiqCYU8E+wktQ1VYY9FLtU2LOPwCyX1gvaNLb9Y8sG8pufm3pMARR
	 3h4JxDF/OjMduVsTshisjjSL+gmOptIIvUZvP7JeN7WoEoK47aDuSzjlLP3Td2oVDH
	 +7EoZQFE1tM7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13A3DFEC11B;
	Wed, 25 Mar 2026 11:51:10 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Date: Wed, 25 Mar 2026 12:51:14 +0100
Subject: [PATCH v3 9/9] arm64: defconfig: enable designware mipi csi-2
 receiver
MIME-Version: 1.0
Message-Id: <20250430-rk3588-vicap-v3-9-e38e428868cc@collabora.com>
References: <20250430-rk3588-vicap-v3-0-e38e428868cc@collabora.com>
In-Reply-To: <20250430-rk3588-vicap-v3-0-e38e428868cc@collabora.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 =?utf-8?q?=D0=9A=D1=83=D0=B7=D0=BD=D0=B5=D1=86=D0=BE=D0=B2_=D0=9C=D0=B8=D1=85=D0=B0=D0=B8=D0=BB?= <mai.kuznetsov.misha@gmail.com>, 
 Charalampos Mitrodimas <charmitro@posteo.net>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Collabora Kernel Team <kernel@collabora.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Michael Riesch <michael.riesch@collabora.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774439467; l=993;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=eVdcF2RtkbDMqyOIRg7mK2YspwU31YYBLyox7Iyaf8I=;
 b=5b0EALvi9AXxAzBR2WZjbhqWRsq4l3NOZJOtSuurCwB1qJ34wwEVVp8xormh8ck4hlrKqstzt
 CKkgHyYVA8qAvN8sYl/xbtzmIgN3LmuBAU6oshZeJbZDA9aryrebqbJ
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_045111_984071_A55B18DC 
X-CRM114-Status: UNSURE (   9.73  )
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
As a consequence, they are used on a lot of Rockchip-based
single board computers and/or corresponding camera modules, such
as the Radxa Camera 4K.
Enable the driver for it in the default configuration.

Reviewed-by: Mehdi Djait <mehdi.djait@linux.intel.com>
Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b67d5b1fc45b..a93ff73ae52c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -907,6 +907,7 @@ CONFIG_SDR_PLATFORM_DRIVERS=y
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
