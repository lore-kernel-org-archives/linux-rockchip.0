Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B9D9C369D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 09:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCjtMJBPWxVb7SDCsSZFhCcG8bq5RownlG3C9MhsgGI=; b=w86TFlHWrdmyoP
	kZ+YuSfr2YsB6yEhT+NQTiaouONdxpC8b/Wq4xTdRrnfJvC0les9ScNVCNqKPtvpHTJdRJB1EH0uC
	rAux/Zcr0VS8fNs9P05n+P/1XmwGRCXt6rhjvuAJZrEULH8iqStuW/mvXU4Cl2WO9wIIflRYMyB8r
	aNj6v4+MukMy2Yos+Iq/AEu9FLTCajEBvQm7dK4DOJ1uzFdyA4BkkhUL/8i8kc+Nhd85BwEx2G6Cr
	FcUsngAODwzdYjzkBumcWPDOkkYIrO/V7lC3QTK77YAilZ72Fe7twzxrqi0VJNzdGDPEY1TrMNKr5
	lJWtC4pBFXX/vyBDw3TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA3xM-0000000CPQZ-15ud;
	Wed, 30 Apr 2025 09:42:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA3jP-0000000CMQh-11kw;
	Wed, 30 Apr 2025 09:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Reply-To:Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Content-ID:Content-Description;
	bh=33rcVSIWBeI23W5yG7YQKTKCMAPmbqYwpTG/W6SxmUo=; b=LQ6vkhCHtZx7scxYJc/MY/Wsw9
	euqC8jVFKjDrgHRDYI/9r3g101yHh+0ijQ/NYSbQ0kdHLc2nvF5UjlY4vh5RtbMdvndIilHT3b+jY
	2VppyAnQRkEbDMmA5N/RxPp4q6cke2nFVxkEq4HQq/ioexh3ck+CHlLn1U64+qYMfTIWLIGmfk8K+
	qPVnadBstnslzj6OsDgPANJuK5R7Asnn861j0QRP+6D1troKbq0P5QHeOs0zmDbhCPkMKjIUhcLE3
	lgp+YwMG3gjC+qhFaH2W9h6BM0WZ6NEVyAj+pV2ot/mVQSe6N5k4Kz4TmQxI1rBooYoOr11Z0ePu/
	Dy+aMxNQ==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uA3jJ-0000000Dl3E-1sTe;
	Wed, 30 Apr 2025 09:27:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3985D4AC3B;
	Wed, 30 Apr 2025 09:27:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3629EC4CEF9;
	Wed, 30 Apr 2025 09:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746005265;
	bh=B5XjYTfglp+Es1h3q+EiooNvXOUXKpsC93FJIsCIIVE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Xi92GO4OBS3RutLW0R7/EJBE22y8o+R1kO7QrI6PMZcH84fnVfYbvTgGo0m41SrOL
	 1TNSaFBMMniSgldToHF9zn0oU8h8SAXVlJIlvRQFbcV9dU1loABVPrf4M1j7hN2txX
	 Wx6gxLyk8zu/9tDU1M6xG9UI/h74cWx7r2h2hQR620r8L3EDzXaPmoTNRzyl+XowSD
	 dPhsRflaUf+7HhcpZiIB/aRnEDXmmz/4onjt3LwqLt9RS6nWBrQwkAlm9c2wtp7YuJ
	 ygp+kIT0LxBOg+V9DgckAp/GrvQF4jle+4jdD8Dvp9+P8BIoUt2dE8DTsqRVVg9mur
	 BAEy7sAkiNQKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C145C369D9;
	Wed, 30 Apr 2025 09:27:45 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Date: Wed, 30 Apr 2025 11:15:58 +0200
Subject: [PATCH v6 09/13] arm64: defconfig: enable rockchip camera
 interface
MIME-Version: 1.0
Message-Id: <20240220-rk3568-vicap-v6-9-d2f5fbee1551@collabora.com>
References: <20240220-rk3568-vicap-v6-0-d2f5fbee1551@collabora.com>
In-Reply-To: <20240220-rk3568-vicap-v6-0-d2f5fbee1551@collabora.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Gerald Loacker <gerald.loacker@wolfvision.net>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Collabora Kernel Team <kernel@collabora.com>, 
 Paul Kocialkowski <paulk@sys-base.io>, 
 Alexander Shiyan <eagle.alexander923@gmail.com>, 
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, 
 Michael Riesch <michael.riesch@collabora.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1746004564; l=764;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=YywfWp66Y4vQTxzH3S912ReMsygZed8gsGkdLcdgxgY=;
 b=SOdhNT9BlY2fUd/dPSaj3UF/shCzwOoeaA8W402+CmaOdLhOQFiOMrJyElpFIq3h6bD877lhr
 rAjgMJvGS2xDMl0EUZrO+kARa05Gimvs+XsLlTdLTzdYvdfKMZ5sAaM
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_102750_195069_D164C0EB 
X-CRM114-Status: UNSURE (   9.60  )
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

The Rockchip Camera Interface (CIF) is featured in many Rockchip SoCs
in different variations. Enable the driver for it in the default
configuration.

Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5bb8f09422a2..110ff52195a6 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -858,6 +858,7 @@ CONFIG_VIDEO_RENESAS_FCP=m
 CONFIG_VIDEO_RENESAS_FDP1=m
 CONFIG_VIDEO_RENESAS_VSP1=m
 CONFIG_VIDEO_RCAR_DRIF=m
+CONFIG_VIDEO_ROCKCHIP_CIF=m
 CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
 CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
 CONFIG_VIDEO_SAMSUNG_S5P_MFC=m

-- 
2.39.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
