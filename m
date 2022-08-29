Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31C4AECAAD4
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 10:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHalZ4wRsFhr3vBOx8xSUXhYusodCLVQMzMyE8wQHOc=; b=l0eNC+avlUc1BI
	+S8EMIrVJ4Yt5DKCECpnGTTvhQQDYGDlOUkDky+LvnzKK9skZCea4X2Rkh6MjnXn3+pBkOdFkSawg
	4LJgBVn8sfpUNAzHppBhDtbwiixBSgnSwIY2lQkm/G5/WspxtKydjA/7ErMMzLmZT27BUcRBE5sJx
	A2F8pqYg8qDJIae7o5JHcZSHGi/uf9EkUU6yF7awpPigwV6XmojicokrjJqn23BClduMTbXiT5KGX
	FuEBi8fc/Y0gdNWfiXBOh6GK+9xRpr5t2fC+QijopyLkvop6989Q/QtnLuCGJe0ZuhHOWZKEVdPLS
	uNtOqGNbkJA6C1wdsJyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oScS9-007gVQ-CJ; Mon, 29 Aug 2022 10:57:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oScRx-007gDo-02; Mon, 29 Aug 2022 10:57:02 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oScRv-0007z6-1j; Mon, 29 Aug 2022 12:56:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add vcc_cam regulator to rock-3a
Date: Mon, 29 Aug 2022 12:56:57 +0200
Message-Id: <166177061356.1804690.5092608099700382034.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220712133204.2524942-1-michael.riesch@wolfvision.net>
References: <20220712133204.2524942-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_035701_157738_7F74A380 
X-CRM114-Status: GOOD (  10.36  )
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

On Tue, 12 Jul 2022 15:32:02 +0200, Michael Riesch wrote:
> The Radxa ROCK3 Model A features a voltage regulator that provides
> a 3V3 supply to the MIPI CSI connector. Add this regulator to the
> device tree of the board.

Applied, thanks!

[1/3] arm64: dts: rockchip: add vcc_cam regulator to rock-3a
      commit: 2fd8bd005897436c5a6d2d150d7b1ae2907f8b06
[2/3] arm64: dts: rockchip: add vcc_mipi regulator to rock-3a
      commit: 7a3eabdcd0fdc344d31b18e78e4f4b5d94db8df5
[3/3] arm64: dts: rockchip: specify pinctrl for i2c adapters on rock-3a
      commit: a233ea1e6268a779d5c8c427eb14a2a89f95f4f9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
