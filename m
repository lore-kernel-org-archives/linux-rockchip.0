Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B6A5C28B23
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 14:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbtyy9G5E13B4d1HmzNl3wAX/L/wZDMw6qI3HUNRIyA=; b=URUauwYWdZnOyv
	IbEsYJLspaixJ2cnItXTqhJGK6bgTpVhZ5KI26hn9XeserSjCfG7Fsc81x4YQu+NSCJSbD/D0VZqH
	sXPPDjuiPGRPAloe3SnXEAp5EwQj4DZKK4NDJCS40Ft7kiXWlUOD3FqNZPbXpTH4Su+02IqZCjEun
	p8D1zF3bP5j/dOY9nXIzLhQ7qTfguqXxoK9AxeAzSstD6SlgZyWoISjISiJj6zNVfDTyeEoeapWpB
	phDLNpQhDJ7b5Xo6IyBQm+S0I1zKO/I0SqJyleQ9bmJgNqPWyCKieVEGZ3wn9EqWy8XfM+4vvfFqn
	odtN7A98BqcTndhyw8Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBr3-0000000B92a-1rEN;
	Thu, 06 Mar 2025 14:05:41 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBlq-0000000B81b-0mX2;
	Thu, 06 Mar 2025 14:00:19 +0000
Received: from localhost.localdomain (unknown [119.122.215.89])
	by smtp.qiye.163.com (Hmail) with ESMTP id d2ca3002;
	Thu, 6 Mar 2025 22:00:14 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: ziyao@disroot.org
Subject: Re: [PATCH v2 7/8] arm64: dts: rockchip: Add SDMMC/SDIO controllers for RK3528
Date: Thu,  6 Mar 2025 22:00:09 +0800
Message-Id: <20250306140009.384469-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250305194612.47171-1-ziyao@disroot.org>
References: <20250305194612.47171-1-ziyao@disroot.org>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGEhMVktMQhodSkhOQx1OQ1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVDQllXWRYaDxIVHRRZQVlPS0hVSktISk5MTlVKS0tVSk
	JLS1kG
X-HM-Tid: 0a956bc1c0ea03a2kunmd2ca3002
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODo6Cyo4STIDNjM9N0JRDTwZ
	LB8wChpVSlVKTE9KSU1CTUpOTEJOVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpOVUNCWVdZCAFZQUpNTEw3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_060018_436923_EB4536AF 
X-CRM114-Status: UNSURE (   4.78  )
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
Cc: detlev.casanova@collabora.com, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, amadeus@jmu.edu.cn, krzk+dt@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

> +		sdio0: mmc@ffc10000 {
> +			compatible = "rockchip,rk3528-dw-mshc",
> +				     "rockchip,rk3288-dw-mshc";
> +			reg = <0x0 0xffc10000 0x0 0x4000>;
> +			clocks = <&cru HCLK_SDIO0>,
> +				 <&cru CCLK_SRC_SDIO0>,
> +				 <&cru SCLK_SDIO0_DRV>,
> +				 <&cru SCLK_SDIO0_SAMPLE>;
> +			clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +			fifo-depth = <0x100>;
> +			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
> +			max-frequency = <150000000>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&sdio0_bus4>, <&sdio0_clk>, <&sdio0_cmd>,
> +				    <&sdio0_det>, <&sdio0_pwren>;

The sdio module is usually "non-removable", no need det,
and pwren may be other gpio (use mmc-pwrseq). So it should
be `pinctrl-0 = <&sdio0_bus4>, <&sdio0_clk>, <&sdio0_cmd>;`

> +			resets = <&cru SRST_H_SDIO0>;
> +			reset-names = "reset";
> +			status = "disabled";
> +		};
> +
> +		sdio1: mmc@ffc20000 {
> +			compatible = "rockchip,rk3528-dw-mshc",
> +				     "rockchip,rk3288-dw-mshc";
> +			reg = <0x0 0xffc20000 0x0 0x4000>;
> +			clocks = <&cru HCLK_SDIO1>,
> +				 <&cru CCLK_SRC_SDIO1>,
> +				 <&cru SCLK_SDIO1_DRV>,
> +				 <&cru SCLK_SDIO1_SAMPLE>;
> +			clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +			fifo-depth = <0x100>;
> +			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> +			max-frequency = <150000000>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&sdio1_bus4>, <&sdio1_clk>, <&sdio1_cmd>,
> +				    <&sdio1_det>, <&sdio1_pwren>;

Same here.

> +			resets = <&cru SRST_H_SDIO1>;
> +			reset-names = "reset";
> +			status = "disabled";
> +		};

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
