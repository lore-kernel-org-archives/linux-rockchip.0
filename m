Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09E17C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFRptD6n/I7nxFMyh/LWixg8uxohAOIShBAKhZlqJ4U=; b=rDdQynPCcTA7m4
	x2FvHam0oj63z04Z19/CsAVRwcrs8yMBHDB4NIxpqj05CmdPHIFZdkHlgMLKX6OUfg8IH5wJJel1d
	+4MWXnfyeTJplSHmLbhIkpgqrQ6w8kzt9srP/VZINWkWnE2awBLJXs6J6y7zFVz+h16d9bzaq7NBN
	iyIaOn6HBbEQWDfGPqzFCwPwFXeQu5b+L75XLg+2u45khzIf+36L1RuLKyUc8thlzC3Yiw6RMxXa+
	o4isdDZhTYouI5Pd9NH8gHZx7kimDUrxOhd3wX3RMnwExwATa88zYmitxpTWDTz6Rwh9nr2eK4pj9
	pJT4D5v5SV42SxC0hosA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rol9N-00000000AtQ-1Htj;
	Mon, 25 Mar 2024 14:18:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rol8y-00000000AZr-1xST;
	Mon, 25 Mar 2024 14:17:46 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rol8h-0008IU-3g; Mon, 25 Mar 2024 15:17:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Wang <frank.wang@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 Zhang Yubing <yubing.zhang@rock-chips.com>
Subject: Re: [PATCH v3 02/10] phy: rockchip: add usbdp combo phy driver
Date: Mon, 25 Mar 2024 15:17:26 +0100
Message-ID: <3274787.oiGErgHkdL@diego>
In-Reply-To: <20240216170514.75200-3-sebastian.reichel@collabora.com>
References: <20240216170514.75200-1-sebastian.reichel@collabora.com>
 <20240216170514.75200-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_071744_671107_81176463 
X-CRM114-Status: GOOD (  17.49  )
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

Am Freitag, 16. Februar 2024, 18:01:17 CET schrieb Sebastian Reichel:
> This adds a new USBDP combo PHY with Samsung IP block driver.
> 
> The driver get lane mux and mapping info in 2 ways, supporting
> DisplayPort alternate mode or parsing from DT. When parsing from DT,
> the property "rockchip,dp-lane-mux" provide the DP mux and mapping
> info. This is needed when the PHY is not used with TypeC Alt-Mode.
> For example if the USB3 interface of the PHY is connected to a USB
> Type A connector and the DP interface is connected to a DisplayPort
> connector.
> 
> When do DP link training, need to set lane number, link rate, swing,
> and pre-emphasis via PHY configure interface.
> 
> Co-developed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Co-developed-by: Zhang Yubing <yubing.zhang@rock-chips.com>
> Signed-off-by: Zhang Yubing <yubing.zhang@rock-chips.com>
> Co-developed-by: Frank Wang <frank.wang@rock-chips.com>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

after 6.9-rc1 this needs a respin with

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 1f3b7955c9f3..38dc96cfe403 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1420,7 +1420,7 @@ static const struct regmap_config rk_udphy_pma_regmap_cfg = {
        .max_register = 0x20dc,
 };
 
-static struct phy *rk_udphy_phy_xlate(struct device *dev, struct of_phandle_args *args)
+static struct phy *rk_udphy_phy_xlate(struct device *dev, const struct of_phandle_args *args)
 {
        struct rk_udphy *udphy = dev_get_drvdata(dev);
 


to honor the change from
commit 00ca8a15dafa ("phy: constify of_phandle_args in xlate")


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
