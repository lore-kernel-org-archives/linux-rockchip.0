Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB7B7CD129C
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 13:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ISZJMqKdhbcKvbnSkaUWu3lGEf1odbdzlo2PKXEuTHg=; b=QM3HcGyT7NoDPWKu+KF1OxeT2f
	lNrfMtye9AhDiA4jy+toQtyCQ4w00mPjVqd9M0NQznsTP6CBRI4CI3qKRC/V7RLi86vp7krYw1qg/
	a7+fLLDrfYPXEv7dUXl4nHoytaDivp5CyEcYNhnfoPYAW3Se5Ah/9n0KmyH+TgzeOq5C6R9ei9HGS
	/SwEFU/i60WrO1feJVVgqU6LDYv9opeC7X+GBwzTRoMWW1xVeas5cj6nv4TuHsPagOcL0//Ex9Xxn
	XIL3p4BECcmxBVJKYCTE9mG7qSgS9yqllWPyZAmv+XmgqdHhklmkxKe6fPfMIWuo2z/X7DAL3KvPf
	kk34ZCbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruBgz-00000002Atf-0nYG;
	Tue, 09 Apr 2024 13:39:17 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruBgg-00000002Agd-13R5;
	Tue, 09 Apr 2024 13:39:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7169BCE1F26;
	Tue,  9 Apr 2024 13:38:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86E9EC43390;
	Tue,  9 Apr 2024 13:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712669935;
	bh=bjFXS0RsfnGrGuGvSpuQ1Azl09QUNfG1I4fgBjCN/4Q=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=MLE4L7AA4udXHhLmWp3bq7pdOMWGWUfV7x1mUC7vw3qTQJcg+oOXh3/aInm2hTr6R
	 ngRePtBRq8K61P+WZpPoz1bpEvbjNd6gFOZU6xRliH9auIgDNnDeNthbUPHHix3Foh
	 RsP7QoY5ap6saJIJNfa9Ii4TcVMS5NANyiwD4DBxdnEauJ/i37zDIlK6gLClGCrUMT
	 UvT+9kfTvuuX7CA8f6KuWNgLDaR100d2XLDhG2i3dWgoR6843gwEcf2culJrI/0wlS
	 FA/wLshPDuecAMusTHQUJ3fa21snJ71wCLWa1pMuglAhLEzO8nK9ujmiTxCg6t85sX
	 2Yr790JRZjfFQ==
Date: Tue, 09 Apr 2024 08:38:54 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20240408124005.182565-1-amadeus@jmu.edu.cn>
References: <20240408124005.182565-1-amadeus@jmu.edu.cn>
Message-Id: <171266958458.1032566.5437781512082910340.robh@kernel.org>
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable onboard spi flash for
 rock-3a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_063859_016473_13B2DCA3 
X-CRM114-Status: GOOD (  10.92  )
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


On Mon, 08 Apr 2024 20:40:05 +0800, Chukun Pan wrote:
> There is a mx25u12835f spi flash on this board, enable it.
> 
> [    2.525805] spi-nor spi4.0: mx25u12835f (16384 Kbytes)
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3568-rock-3a.dtb' for 20240408124005.182565-1-amadeus@jmu.edu.cn:

arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:765.3-15: Warning (reg_format): /spi@fe300000/flash@0:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk356x.dtsi:1091.20-1100.4: Warning (spi_bus_bridge): /spi@fe300000: incorrect #address-cells for SPI bus
  also defined at arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:760.6-770.3
arch/arm64/boot/dts/rockchip/rk356x.dtsi:1091.20-1100.4: Warning (spi_bus_bridge): /spi@fe300000: incorrect #size-cells for SPI bus
  also defined at arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:760.6-770.3
arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb: Warning (spi_bus_reg): Failed prerequisite 'spi_bus_bridge'
arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:763.10-769.4: Warning (avoid_default_addr_size): /spi@fe300000/flash@0: Relying on default #address-cells value
arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:763.10-769.4: Warning (avoid_default_addr_size): /spi@fe300000/flash@0: Relying on default #size-cells value






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
