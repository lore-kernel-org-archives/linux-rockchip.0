Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4239EC001DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 19:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y10FVx/EI0IfUDz6IE9id5Swkbcv8J1V+ybXK6cDMoM=; b=DVbTzY/c+NckLc
	rEEP8j9Q61zXKxbiDHp+BWplKYAcWCAD8SkH7M51TIXXbNWmVXtRTZpt7uoH64OiLthOycfLAEYAs
	X5YTh3mhnt8g/2jxU9E29IgvgQG6mIhymXM1PirpuuRgurS8WKa9zbBDruzS5C+/nvJqqVOZR7Yfp
	8n5DJ4VvglIz5O8O9h/A1ODQg2lWIU0WIxVkQ1PWiXTMiZwCF62vFtIwmAyLQ9v5Vn6pIfrHSJ2iw
	DWE57V4KowPLFVPfxLuMRHS6t/9bk6Lk2pU4pK1FFPo2ahR9N7SggaT2AK5HJ/oTW3RvJk6lrylDP
	M0dt8OEFzvZKQfnfb+kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qO0z6-005Hjr-3A;
	Mon, 24 Jul 2023 19:12:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qO0z3-005Hiv-2S;
	Mon, 24 Jul 2023 19:12:42 +0000
Received: from [193.138.155.172] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qO0z0-00009J-F5; Mon, 24 Jul 2023 21:12:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Qu Wenruo <wqu@suse.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Simon Xue <xxm@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	linux-pci@vger.kernel.org,
	John Clark <inindev@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	kernel@collabora.com,
	Vinod Koul <vkoul@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: (subset) [PATCH v2 0/2] RK3588 PCIe3 support
Date: Mon, 24 Jul 2023 21:12:35 +0200
Message-Id: <169022594803.2911118.12432442062352790360.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230717173512.65169-1-sebastian.reichel@collabora.com>
References: <20230717173512.65169-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_121241_795451_867D8277 
X-CRM114-Status: GOOD (  12.07  )
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

On Mon, 17 Jul 2023 19:35:10 +0200, Sebastian Reichel wrote:
> This adds PCIe v3 support for RK3588. The series depends on the PCIe
> v2 series [0], since the the same binding is used. It has been tested
> on Rockchip EVB1 and Radxa Rock 5B.
> 
> Note, that the PCIe3 PHY driver is currently missing bifurcation
> support for RK3588. Thus after this series only PCIe3x4 is usable
> (in aggregated x4 mode) without adding support for the PHY's
> "rockchip,pcie30-phymode" DT property, which allows configuring
> how the lanes are distributed. Aggregated 3x4 mode seems to be the
> most common configuration. Both EVB1 and Rock 5B use it, so I
> cannot test anything else anyways.
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: rockchip: rk3588: add PCIe3 support
      commit: 0acf4fa7f187cd7e3dad93f1ee14e9509687621e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
