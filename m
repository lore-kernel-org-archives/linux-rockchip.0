Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BFD9CD128A
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 17:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZMGA5Z2NwFG7zE53JZf3CVdDY6ZtByy4h8LR17zkbQ=; b=u2ysTRYIdM8/lM
	aVOS5oP12QwzF0yt8glBlMexZso3zsmiX80O1AuMDtIgJjGZIQlZcr3bNXMDVsGaEPa8xFaVFh9VA
	8KPcixVAoe9bsfZBAbGvt+S0epQN1teOTROs/Q7ypznOyT+ELrv92ULrojSnF/zdZUuXW+3S2G/Be
	R/+I1GaKhd+Rg73T1nuuqeOzUVkHIWcEI3obVZZ8Q83UyQOH05gDZ9Gg9ZNjmBkqTeHt2jcOA1R0D
	utLIr2HdjBzWghfmlIEQY7eI4KBxyJ9PY7J+IqtoxpJT5CK1vgTz7XOEhHzCv24gnXU1nn7tpH2Ms
	VT576uMCS79cQ95x94fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruc3V-00000008L1p-078U;
	Wed, 10 Apr 2024 17:48:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruc3P-00000008Kz5-33Iv;
	Wed, 10 Apr 2024 17:48:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 35F4F61E15;
	Wed, 10 Apr 2024 17:48:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9768FC433C7;
	Wed, 10 Apr 2024 17:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712771288;
	bh=hKQowqjPoLWgjXPoVrz9/IkynZj3MiQDAbq+Y6Y7fKE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lepQksByl+PqTl3mRAc+aU9f8MqHehaCQQUGPgi+fsm/qm+Be9N4lTABH+eKhoJZV
	 8F2jEpXDfBuD6xNddLKnY19o5QJ2wOCTjt1x1gNK90WtGYnuRhs7Hk0o992m1td7nZ
	 cGM68YnxAloIz2GlE0UdK9bEI0b4OW0ouWerwovGLUKzEOXiGhetoA3l1zDKle9CDK
	 +scXV17wnr3hhMkmXlEwC7N1ipnwX51LP9m32vDCoKY7jmGYEoeJFnapp1xblRClco
	 5zm4ZYkE0ymijFG865AyXtxZvS2fE7/hsirvObNrVtTMjuwv4dHlQXMRIT4+MqGG+n
	 mYHv/CtiOmqow==
Date: Wed, 10 Apr 2024 12:48:06 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Will Deacon <will@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Kettenis <kettenis@openbsd.org>,
	Tom Joseph <tjoseph@cadence.com>,
	Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] dt-bindings: PCI: host-bridges: switch from
 deprecated pci-bus.yaml
Message-ID: <20240410174806.GA788199-robh@kernel.org>
References: <20240407102000.37213-1-krzysztof.kozlowski@linaro.org>
 <20240407102000.37213-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240407102000.37213-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_104811_891629_4538B5EB 
X-CRM114-Status: GOOD (  18.69  )
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

On Sun, Apr 07, 2024 at 12:20:00PM +0200, Krzysztof Kozlowski wrote:
> dtschema package with core schemas deprecated pci-bus.yaml schema in
> favor of pci-host-bridge.yaml.  Update all bindings to use the latter
> one.
> 
> The difference between pci-bus.yaml and pci-host-bridge.yaml is only in
> lack of "reg" property defined by the latter, which should not have any
> effect here, because all these bindings define the "reg".
> 
> The change is therefore quite trivial, except mediatek,mt7621-pcie.yaml
> binding which have children nodes being also host bridges, apparently.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/pci/amlogic,axg-pcie.yaml   | 2 +-
>  Documentation/devicetree/bindings/pci/apple,pcie.yaml         | 2 +-
>  Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml    | 2 +-
>  Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml      | 2 +-
>  Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml     | 2 +-
>  Documentation/devicetree/bindings/pci/faraday,ftpci100.yaml   | 2 +-
>  Documentation/devicetree/bindings/pci/host-generic-pci.yaml   | 2 +-
>  Documentation/devicetree/bindings/pci/intel,ixp4xx-pci.yaml   | 2 +-
>  Documentation/devicetree/bindings/pci/intel,keembay-pcie.yaml | 2 +-
>  Documentation/devicetree/bindings/pci/loongson.yaml           | 2 +-
>  .../devicetree/bindings/pci/mediatek,mt7621-pcie.yaml         | 4 ++--
>  Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml | 2 +-
>  .../devicetree/bindings/pci/microchip,pcie-host.yaml          | 2 +-
>  Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml   | 2 +-
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml          | 2 +-
>  Documentation/devicetree/bindings/pci/rcar-pci-host.yaml      | 2 +-
>  .../devicetree/bindings/pci/renesas,pci-rcar-gen2.yaml        | 2 +-
>  .../devicetree/bindings/pci/rockchip,rk3399-pcie.yaml         | 2 +-
>  Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml       | 2 +-
>  Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml   | 2 +-
>  Documentation/devicetree/bindings/pci/versatile.yaml          | 2 +-
>  Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml  | 2 +-
>  Documentation/devicetree/bindings/pci/xlnx,axi-pcie-host.yaml | 2 +-
>  Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml      | 2 +-
>  Documentation/devicetree/bindings/pci/xlnx,xdma-host.yaml     | 2 +-
>  25 files changed, 26 insertions(+), 26 deletions(-)


> diff --git a/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml b/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
> index 61d027239910..5bbb4a3f3dbd 100644
> --- a/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
> @@ -14,7 +14,7 @@ description: |+
>    with 3 Root Ports. Each Root Port supports a Gen1 1-lane Link
>  
>  allOf:
> -  - $ref: /schemas/pci/pci-bus.yaml#
> +  - $ref: /schemas/pci/pci-host-bridge.yaml#
>  
>  properties:
>    compatible:
> @@ -33,7 +33,7 @@ properties:
>  patternProperties:
>    '^pcie@[0-2],0$':
>      type: object
> -    $ref: /schemas/pci/pci-bus.yaml#
> +    $ref: /schemas/pci/pci-host-bridge.yaml#

I think this one should be pci-pci-bridge.yaml instead since it says 
these are root ports and based on the unit-address here.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
