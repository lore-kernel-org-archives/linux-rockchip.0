Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5036E936E7
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 21:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbAkrWgPh8Lm3O6YCyueraGtUR/QAnuuNovnCTVnobk=; b=PWulcWPsZRA4K3
	FpK45fKiY38zr6gnIehCyUWoDPyWYjRwp6jd8WJVHRRbD5nder7FvMY8aC9+Cc3GpI82IWKAcrtuJ
	0D8S4knn49Rs+fyH90tBiOZgHexYrCP83d1HxEK16WRQNyW5ugFX9crpoZJ2jg8GMisjCra1D2CRn
	VIPKkmFEZtRO1BNTL0c0o3pDdNzZr6aMoQv6KNpzHd4z5Sm59ga+qlklyY+0pRb67tbByus+207Bw
	CL59VfSgE/uTpP65GMulGnW3Tk25i22n9JV5sUIBmdre6tVvnca5Sk68fBNDYc55Sfx/MJAz1Xo+I
	Gud+iqq2nOM5lAM+6mSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UK-000vsq-1n;
	Wed, 04 Oct 2023 21:33:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UG-000vpQ-1V
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Oct 2023 21:32:57 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UC-0005RF-Fq; Wed, 04 Oct 2023 23:32:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	conor+dt@kernel.org,
	robh+dt@kernel.org
Subject: Re: [PATCH V2 0/3] Add Additional Functionality to Indiedroid Nova
Date: Wed,  4 Oct 2023 23:32:45 +0200
Message-Id: <169645508388.141514.14578991143413617261.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230918173255.1325-1-macroalpha82@gmail.com>
References: <20230918173255.1325-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_143256_511677_6B8E98B2 
X-CRM114-Status: GOOD (  11.10  )
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

On Mon, 18 Sep 2023 12:32:52 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Update the Indiedroid Nova device tree to benefit from hardware that
> has recently been enabled in the mainline kernel. This includes
> enabling the PCI Express bus to activate the RTL8111 ethernet
> controller, the USB-A 2.0 ports (USB 3.0 still pending), and the ADC
> controller with the boot and recovery buttons.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
      commit: f5fb02c7125e3564aa773f54add37655d09e64f1
[2/3] arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
      commit: aee432b50f6e15886bddcb6f92028265db4b254e
[3/3] arm64: dts: rockchip: Add saradc node to Indiedroid Nova
      commit: f48a288a4a65bc8c3830b4295afb98101f234412

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
