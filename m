Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F01BACFB45F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 20:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXFdteoAly6WQFxXKeeqQsljMS11Aasbkl5Erc8YTQI=; b=acQFchrbU03m1C
	yOPjtLN8BmQWzAfyv1G9XFsaVHVleL12T0kkP+4BjQs04zA3/qzit+esO0QBiDCgvNXVlBsT4bg1G
	CO1HrMV/Q4ubQvpMm5NpPp7mXWFa0RmnT530I+XO2He9SLUqmt3tMVTXz98Yurh2XNwBhK/075UMS
	urK/174u4MNO2Cwat5SHQrxwXS6JLVG1jKWKnjFLrCYrwNGOeyvcpaQZ97B4ESPWZRdSyX9V8Qc8h
	NcMKi+MWgrWv3zIjgDM16j3ur6d/f5A2GuO5btPZNz32ATcsILerbLcS6rzTmNyTnExBpkV9lRG1p
	CEnQ6mgd/UBd8vhS5ZIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxu7G-00000003iE8-2PMu;
	Mon, 07 Oct 2024 20:14:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxu5p-00000003hse-0Wht;
	Mon, 07 Oct 2024 20:12:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 25BCE5C3A78;
	Mon,  7 Oct 2024 20:12:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBBBAC4CEC6;
	Mon,  7 Oct 2024 20:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728331952;
	bh=P/kHnetBdIsGBFCP1NvFa4+vN0jKSHqmt655ZBl1uDI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nul5W41ngFclqhvsFMGe8YBLxc6DMnoZ1jKiOUO+sr299GAnmTsOhmJ5TBsLtr4Cw
	 9JBzR7m4E5nksLFXSvUoN/0DRMmPOnbdRiTb+NQTfIVjJeO3YBllQXVW2L3Jm8rzPA
	 s5MNd89XqPB/JoAGnq+2KN3By4120lQxyRApzjEpEcyZeJYYtoDy1rTcydxQjxb1fP
	 jJR+HDJHUNZa86p1Lu7suD1Yyt9TnB0rOl5Aucybu6CtPdsKFCupJMTb/tKrgJojeC
	 OtXqE6735OVZ/7AWcpLp7Ph27Nq9CpU5YOUV7KIzmLReWEqwQkGAE8jO3AALqWdRvZ
	 M1gWD1fvAR3/g==
Date: Mon, 7 Oct 2024 15:12:31 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lgirdwood@gmail.com, broonie@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] ASoC: dt-bindings: rockchip,rk3036-codec: convert to yaml
Message-ID: <20241007201231.GA2321041-robh@kernel.org>
References: <20241007164542.2452315-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007164542.2452315-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_131233_273317_C41A999D 
X-CRM114-Status: GOOD (  22.23  )
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

On Mon, Oct 07, 2024 at 06:45:42PM +0200, Heiko Stuebner wrote:
> Convert the binding to yaml.
> 
> The codec seems to be from Innosilicon, but the compatible has ever only
> been rockchip-based, as they sythesized the codec for the rk3036.
> 
> So the yaml file gets a name matching that compatible.
> The only other notable change is the addition of the #sound-dai-cells
> property, that is always required.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../devicetree/bindings/sound/inno-rk3036.txt | 20 -------
>  .../bindings/sound/rockchip,rk3036-codec.yaml | 57 +++++++++++++++++++
>  2 files changed, 57 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/inno-rk3036.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3036-codec.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/inno-rk3036.txt b/Documentation/devicetree/bindings/sound/inno-rk3036.txt
> deleted file mode 100644
> index 758de8e27561..000000000000
> --- a/Documentation/devicetree/bindings/sound/inno-rk3036.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -Inno audio codec for RK3036
> -
> -Inno audio codec is integrated inside RK3036 SoC.
> -
> -Required properties:
> -- compatible : Should be "rockchip,rk3036-codec".
> -- reg : The registers of codec.
> -- clock-names : Should be "acodec_pclk".
> -- clocks : The clock of codec.
> -- rockchip,grf : The phandle of grf device node.
> -
> -Example:
> -
> -	acodec: acodec-ana@20030000 {
> -		compatible = "rk3036-codec";
> -		reg = <0x20030000 0x4000>;
> -		rockchip,grf = <&grf>;
> -		clock-names = "acodec_pclk";
> -		clocks = <&cru ACLK_VCODEC>;
> -	};
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3036-codec.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk3036-codec.yaml
> new file mode 100644
> index 000000000000..786b1ec41999
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,rk3036-codec.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/rockchip,rk3036-codec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3036 internal codec
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>

Blank line

> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3036-codec
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: clock for audio codec
> +
> +  clock-names:
> +    items:
> +      - const: acodec_pclk
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the syscon node for the GRF register.
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - rockchip,grf
> +  - "#sound-dai-cells"
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3036-cru.h>
> +    acodec: audio-codec@20030000 {
> +      compatible = "rockchip,rk3036-codec";
> +      reg = <0x20030000 0x4000>;
> +      rockchip,grf = <&grf>;
> +      clock-names = "acodec_pclk";
> +      clocks = <&cru ACLK_VCODEC>;
> +      #sound-dai-cells = <0>;
> +    };
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
