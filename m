Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED9AAC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 16:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9N7T5IpyOCG+E+Xpcz4is8BucP+EB7jK74S4DD/ixWk=; b=rHZzkcgAjoqUJt
	fi/9Q6zY62QoKOS3uIxKv1TBHHtrgudA6dmLdaQkkE66FYdd8Bjinjhq4g8LTDrme9YPNf9cmlT1L
	Ob9/kTzKN5lnp1mMJL0BiKwH+4J8Dm+Z/88tqkZtts9HapZ+99gpjjZH8X69XctGKjGRekuRvxenw
	5Vs09GVWCJhqLRfcptJuMnRXUUyGJqWU2jend9eKvGzADJoNmy4aNLEjjRIDsbvu4d182A0+OxfLj
	E+O0LcOdQyDgoVZITNQRJPC13KDdhwdSEwuRdsWVJ8KnFYr9I+3rApELyeyi12F3GW8lmsEbR6+K4
	zu41qfEjqiU1mLLYDg7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNd6J-005npY-7N; Fri, 25 Feb 2022 16:05:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNd6D-005nlQ-8q; Fri, 25 Feb 2022 16:05:43 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nNd63-0001VJ-HI; Fri, 25 Feb 2022 17:05:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, p.zabel@pengutronix.de,
 cl@rock-chips.com, kishon@ti.com, lee.jones@linaro.org,
 kever.yang@rock-chips.com, jbx6244@gmail.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 wulf@rock-chips.com, devicetree@vger.kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 david.wu@rock-chips.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v8 0/4] Add Naneng combo PHY support for RK3568
Date: Fri, 25 Feb 2022 17:05:25 +0100
Message-Id: <164580511526.1386065.12014105022399448660.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_080541_353144_8390DE88 
X-CRM114-Status: UNSURE (   9.89  )
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

On Tue, 8 Feb 2022 17:13:22 +0800, Yifeng Zhao wrote:
> This phy can be used as pcie-phy, usb3-phy, sata-phy or sgmii-phy.
> 
> Changes in v8:
> - rename 'mode' to 'type'
> - using devm_reset_control_array_get_exclusive
> - move rockchip_combphy_set_mode into rockchip_combphy_init
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: rockchip: add naneng combo phy nodes for rk3568
      commit: 3cc8cd2d25954ed5794df2d190b81c7325c584e3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
