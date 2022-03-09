Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E154C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bH3CK9bzNv+xpMn8v3WvWXe6kA4JII98R7xhlcwTEYM=; b=dwcUH59JyXlBHP
	qRsSJjuugyDLnmp2VyWJrunwfYuU53KxtqZHZf9Zao6ChGni/KEC8gYurWHxHvUEk5vYTctkOxQBD
	NZ46XZdlv9yu/a16bkA+TCDRe9gx0UyTtoPxJjSNRxDuyyRpqiHQKh2H6EWih2I3GmiEyO4pfr/dz
	ux5ikJ7RnvdXmaq4hPNCDDo0v1ct11cOd8mPKYqawNAnzuZB9N9tFJndVgt5kH5BJI/HiWefEcTeV
	17Mtei9dW0C8Asa+NxRX/XCPGL3q+AJnE4yipjpd69VhHExg1T7zln0cFIH98L0UzEMzUZG8pqo27
	pEIJ7VUkd/TQS+dE4sew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzJE-009U63-Lg; Wed, 09 Mar 2022 16:37:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz6d-009NbL-SB; Wed, 09 Mar 2022 16:24:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1242B6195E;
 Wed,  9 Mar 2022 16:24:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B36B7C340F5;
 Wed,  9 Mar 2022 16:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646843046;
 bh=l9vur0dL3GUULj6pSN4H0lg8/y0wbvxtMheOvgS9E8c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t+pdigbcYPlyMz7UIegrXUPwXk0Ts7exvEAVl9s12FxQqGKabVpi7sgcAw5MFtmBU
 PQjKSxBROKWh3dxYoADWSvhjrqqrxTX4Y4yvwt979P8wpAX7g3qW0MiFsg+bTWhLi+
 vvbxgmsqQTOA02FjSfc+abMK4C4k4OTcCag072QA1UIuym/yJfECjMXb5D8Ab/0Saz
 R9jUhR6TCCpw0DMVxuzY05wawd8P+/kKcbQd3Xk2g6oN6NcJGhBL9QSMm20zgo/hxr
 MGE+Yu5RFPd6eF+DIvGdTzMfh19MY6sAU/Vn7x2uUlcrzfAMaB1J08cYZg/vxnIstR
 a9RHHjYTMagxw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 06/19] ARM: dts: rockchip: reorder rk322x hmdi
 clocks
Date: Wed,  9 Mar 2022 11:23:23 -0500
Message-Id: <20220309162337.136773-6-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309162337.136773-1-sashal@kernel.org>
References: <20220309162337.136773-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_082408_073114_19510AF7 
X-CRM114-Status: GOOD (  12.40  )
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

From: Sascha Hauer <s.hauer@pengutronix.de>

[ Upstream commit be4e65bdffab5f588044325117df77dad7e9c45a ]

The binding specifies the clock order to "iahb", "isfr", "cec". Reorder
the clocks accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Link: https://lore.kernel.org/r/20220210142353.3420859-1-s.hauer@pengutronix.de
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk322x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 140e22d74dcf..d393bb481e74 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -635,8 +635,8 @@ hdmi: hdmi@200a0000 {
 		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 		assigned-clocks = <&cru SCLK_HDMI_PHY>;
 		assigned-clock-parents = <&hdmi_phy>;
-		clocks = <&cru SCLK_HDMI_HDCP>, <&cru PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_CEC>;
-		clock-names = "isfr", "iahb", "cec";
+		clocks = <&cru PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_HDCP>, <&cru SCLK_HDMI_CEC>;
+		clock-names = "iahb", "isfr", "cec";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
 		resets = <&cru SRST_HDMI_P>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
