Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B9CDEB64D7
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jun 2023 11:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nM5/qcV86zzrtBvB+mWJaKZE7UYrisefDocMndKTgzs=; b=IRWAuCEV8poJWO
	iXtCnrqQ0KP/tIeJ/aknszxWmbkU8d4cjPJffTpW5DT86tJGy/WKORHnvGtXrJEwY000G8lro4YEq
	TMFVBoMEWyUSUZ8MowxOBghygFz8CWLK15iG3gH+EL0MJB05rwRtRigB7P4n0pOUGWHld+Ny6C+Ak
	8JlXrHmfRKs01D0C2+qprbE6hTjESma3WLxcZE1/Dh86Mx7vzhtvbYgyR/QcOOuXJEMvIds2JdrHL
	UPe2Jp5161gihrqGh+u7l9ji6V951KIV6YcCNMXJVgucbRoob6ngoaxC5wIdVbX9o/lbuGgytXVta
	pow4KlQIzEGq9SOJuRGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDk0z-00A1Xv-2t;
	Mon, 26 Jun 2023 11:04:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDk0y-00A1X9-0u;
	Mon, 26 Jun 2023 11:04:13 +0000
Received: from [185.109.152.99] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qDk0o-0000D5-Rv; Mon, 26 Jun 2023 13:04:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	alberto.dassatti@heig-vd.ch
Cc: Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	dlemoal@kernel.org,
	Caleb Connolly <kc@postmarketos.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	xxm@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Brian Norris <briannorris@chromium.org>
Subject: Re: (subset) [PATCH v5 00/11] PCI: rockchip: Fix RK3399 PCIe endpoint controller driver
Date: Mon, 26 Jun 2023 13:03:51 +0200
Message-Id: <168777739039.859872.14001629058875555659.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_040412_316856_FB29A690 
X-CRM114-Status: GOOD (  16.63  )
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

On Tue, 18 Apr 2023 09:46:47 +0200, Rick Wertenbroek wrote:
> This is a series of patches that fixes the PCIe endpoint controller driver
> for the Rockchip RK3399 SoC. The driver was introduced in commit
> cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> The original driver had issues and would not allow for the RK3399 to
> operate in PCIe endpoint mode correctly. This patch series fixes that so
> that the PCIe core controller of the RK3399 SoC can now act as a PCIe
> endpoint. This is v5 of the patch series and addresses the comments received
> during the review of the v4 [1]. The changes to the v4 are minor and none of
> them change the logic of the driver.
> 
> [...]

Applied, thanks!

[05/11] arm64: dts: rockchip: Add dtsi entry for RK3399 PCIe endpoint core
        commit: 9755a52d65350233f74e234b1cf2804bd5a1839e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
