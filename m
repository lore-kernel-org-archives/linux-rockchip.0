Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E731C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 17:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITqQNjLgA9sXlNJ9NP4OYk3bjqsBGjrLPju3EbalI6Q=; b=X75rHCvSZiv7fw
	9vCadDKhrJO/zrBT6Q+V27psIdrLonFtpY5+jsRyldH/FT3ttlYM64gzMyF3z/QrUiKsUexOr9eJy
	UfhnDwgIGgNDUVN7/riPzO74GhiWoH3r9tc+8blu0IFrgskvkruGj6rj0J6iAyAP5/oMv6Dfvolzl
	50QGE2t8W1atBYIJ9I3g+allnSJH1hIyeo1KAe7dtwS+B5FIO2/1amBM7cFFbyjNoQ+aak0mFdQns
	qBpZMKxZc0fq5QnqXL2rbgRsmaKzrhj22SmMOTE79imPKuGNmGmeuwwgUK2vgltHQ32tfX6yaGlWg
	77fYCJvV/zTS8ifFoiSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx9TT-0000000H5lP-0UYm;
	Wed, 17 Apr 2024 17:53:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx9TL-0000000H5io-2rbq;
	Wed, 17 Apr 2024 17:53:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BFE46615F6;
	Wed, 17 Apr 2024 17:53:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29BA2C072AA;
	Wed, 17 Apr 2024 17:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713376406;
	bh=QLWfuCo19n+5G8TriwcT49BQW1kf42mY8DE2wIQXSdc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WApZKAf1+rnM9gBKe0B/xfeClV8LsXGKwunncvfSxR0fDWYiFxcPgKYK4CBxoSr+b
	 8nXQbKv2BiJm0GMgsjVddbtOZT5DjjJQk+5aMRHwMxi+LPXtLePZLoCvBFf4NRDJys
	 JwR7QtX3SOU1jzLDopc9fDMUUEiT0Y/f2IH7BROmWshh5Z/iLtM4A/0biyZD7QPNg2
	 gc8uXnb+WytmaAspvIn7QSBu/mUtANqSn8MsnepiosJ0Lb+DFllbeUQR1ZzFoVOK1D
	 0zZMvM/6MOsLhtlngEe+wDbd8GJnjgcW9+eizHsd8icDgAravQsa7xu2rXBg49HxZt
	 YywCAU8OSd/Dg==
Date: Wed, 17 Apr 2024 12:53:24 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Hector Martin <marcan@marcan.st>, Will Deacon <will@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jim Quinlan <jim2101024@gmail.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, asahi@lists.linux.dev,
	linux-rpi-kernel@lists.infradead.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Mark Kettenis <kettenis@openbsd.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-pci@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-renesas-soc@vger.kernel.org, Sven Peter <sven@svenpeter.dev>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	linux-rockchip@lists.infradead.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
	Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
	Michal Simek <michal.simek@amd.com>, Ray Jui <rjui@broadcom.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	Daire McNamara <daire.mcnamara@microchip.com>,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 3/4] dt-bindings: PCI: host-bridges: switch from
 deprecated pci-bus.yaml
Message-ID: <171337631676.2838286.7798730496718117728.robh@kernel.org>
References: <20240413151617.35630-1-krzysztof.kozlowski@linaro.org>
 <20240413151617.35630-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240413151617.35630-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_105330_110172_B6AB90FC 
X-CRM114-Status: GOOD (  13.96  )
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


On Sat, 13 Apr 2024 17:16:16 +0200, Krzysztof Kozlowski wrote:
> dtschema package with core schemas deprecated pci-bus.yaml schema in
> favor of pci-host-bridge.yaml.  Update all bindings to use the latter
> one.
> 
> The difference between pci-bus.yaml and pci-host-bridge.yaml is only in
> lack of "reg" property defined by the latter, which should not have any
> effect here, because all these bindings define the "reg".
> 
> The change is therefore quite trivial, however it requires dtschema
> package v2024.02 or newer.
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be> # Renesas
> Acked-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v3:
> 1. None
> 
> Changes in v2:
> 1. Add tags.
> 2. Split mediatek,mt7621-pcie to separate patch as it uses
>    pci-pci-bridge schema.
> ---
>  Documentation/devicetree/bindings/pci/amlogic,axg-pcie.yaml     | 2 +-
>  Documentation/devicetree/bindings/pci/apple,pcie.yaml           | 2 +-
>  Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml      | 2 +-
>  Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml        | 2 +-
>  Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml       | 2 +-
>  Documentation/devicetree/bindings/pci/faraday,ftpci100.yaml     | 2 +-
>  Documentation/devicetree/bindings/pci/host-generic-pci.yaml     | 2 +-
>  Documentation/devicetree/bindings/pci/intel,ixp4xx-pci.yaml     | 2 +-
>  Documentation/devicetree/bindings/pci/intel,keembay-pcie.yaml   | 2 +-
>  Documentation/devicetree/bindings/pci/loongson.yaml             | 2 +-
>  Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml   | 2 +-
>  Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml  | 2 +-
>  Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml     | 2 +-
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml            | 2 +-
>  Documentation/devicetree/bindings/pci/rcar-pci-host.yaml        | 2 +-
>  .../devicetree/bindings/pci/renesas,pci-rcar-gen2.yaml          | 2 +-
>  Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie.yaml | 2 +-
>  Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml         | 2 +-
>  Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml     | 2 +-
>  Documentation/devicetree/bindings/pci/versatile.yaml            | 2 +-
>  Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml    | 2 +-
>  Documentation/devicetree/bindings/pci/xlnx,axi-pcie-host.yaml   | 2 +-
>  Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml        | 2 +-
>  Documentation/devicetree/bindings/pci/xlnx,xdma-host.yaml       | 2 +-
>  24 files changed, 24 insertions(+), 24 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
