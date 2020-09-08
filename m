Return-Path: <SRS0=+8lW=CR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 812B4C43461
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 15:05:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F04B23D9A
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 15:05:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="e6Y81coR";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="fmQqwpuS";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsYDhSvt"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F04B23D9A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pna4mfelJvcBH5iWojMwoT5B1mZBUfO4T3h8KqxjYcU=; b=e6Y81coRnCZlAD3z4Rtw+d/baW
	J/Qo8ljTCL/pVkPl+YBwQB04P/TLvyUBuquWNX7mgfNlCmCdohkzF8eHleLtOQrRtljjenN9kPyWv
	/H8owzQAdPgf5m8oWaUZ1cjLWQNvpxwEnz0kkz0CakGUPEZoEOaoMfskRHnja+HIx6kSnx/qM+SVa
	pzXfEUDX1oTosje6Sq+wDGSaNZ9/7twgNZ69dllIQ230eRDBuBVpvVZsYJbfIY3U23R2VCto9RIxT
	U2jYygSC0GTAv90R/6zmTLhCLErebA5Kb72A3iBadvrE6dGekZToY+NSwA10cHvYvsDNLsR3AvdCX
	fC7AZabw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFfBC-0005fB-Dc; Tue, 08 Sep 2020 15:05:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFfB7-0005dQ-5a; Tue, 08 Sep 2020 15:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=vyNDJZXYZLx5PqI4tTQBUGrHB4h86sGSG7y+aVgJ+MQ=; b=fmQqwpuSCJRge0v3RhcIKyrwKu
 y51Xlx8W6fLt2ytIHbjn/NiNf7KFXxiKisXnctUvkm21RNNP+JNzPz+HHD4o6Qu5ZQpwbk5ByxqEv
 7viIn5xLzNEOpQ6V3QfhpZgF8/Ai5b85ddqnvAj4LJFj+n+1qew6nhVmFsfvjWAv7sN8jzVtFd3Kl
 YMvdhW60ZiJrB8HBbKa69sSFSWt2qYqAR62h+1byD1SYiScm9YPyTdvcBhSOkWc+FTXAtVxCDzHk7
 F/TiosZ6Y6y39oMTAZgAdxezn4L/dv+7f+poaZ/WB5c7MI2y0d28p1qVoPzP7+GLYqwzP0EnkuoP6
 GA2RGelA==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFfB2-0003cJ-Iw; Tue, 08 Sep 2020 15:05:00 +0000
Received: from localhost.localdomain (unknown [194.230.155.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 175F823D99;
 Tue,  8 Sep 2020 15:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599577464;
 bh=YKA5ZQ6xQuK7/axErohadLOOxrTTzusock+I6lSVols=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gsYDhSvt5XQoUSq0sd5XwiHacUheT0WHPxvKefh917Asncn0qCMXgo2WpxOewfDjz
 Kyu5lWSGvvVTxaFceSLEA6eDfpEp1OxHdDD8VI/QIYPzTeeKKCYhi6LEBUFepnA1zx
 r3Ta+kp0THQPcnZjE3RrWs4vPERyWSJzqaP3GwgA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Michal Simek <michal.simek@xilinx.com>,
 Adam Ford <aford173@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Alifer Moraes <alifer.wsdm@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Vitor Massaru Iha <vitor@massaru.org>,
 Kever Yang <kever.yang@rock-chips.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 8/8] arm64: dts: imx8mm-var-som-symphony: Drop unused
 gpioledgrp
Date: Tue,  8 Sep 2020 17:02:41 +0200
Message-Id: <20200908150241.5771-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200908150241.5771-1-krzk@kernel.org>
References: <20200908150241.5771-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200908_160457_705601_A4088034 
X-CRM114-Status: GOOD (  10.97  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The gpioledgrp in iomux is not used, so it can be dropped.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index b84d94e10c26..fbf321cdcf16 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -193,12 +193,6 @@
 		>;
 	};
 
-	pinctrl_gpio_led: gpioledgrp {
-		fsl,pins = <
-			MX8MM_IOMUXC_NAND_READY_B_GPIO3_IO16	0x19
-		>;
-	};
-
 	pinctrl_i2c2: i2c2grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL		0x400001c3
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
