Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E12CCCF9E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 07:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAqsPIbdUA18TQolLh4abjznbcnAgy35ePc+EwP1uWE=; b=0++BHLzyNfOf3V
	cfzdtRihkzanYRYzB5djEYZ1rMbOsnUle4vvhoKkArvZNAERZOJgMef3O3/ExgFTsV7aoVHVDL64n
	y6eJS4Ys2vE2qtQJi4xrFx40//sHMqAJdmFE8WnFFs0MrKOqjo0DcppZ0sss8W6ZFRN5L+dK8HYty
	ws4IivdnPz1w28c3ynpDc3XDMu29qpFeimlWkYxixyAJl1Nu1/oMImGVIpCSIbPiX84G0zA0manAZ
	7wD1kiJqSTtIbxGMqrtCWEOsMj4LwfUWhmD/Fcl6OeBe6uRWnNVckphha5H8c2kKUrLmPLbYovVjx
	ofhRyc7piZTbU7nZ65Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeV2-0000000FTqo-2Lhz;
	Tue, 28 Oct 2025 07:52:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeV1-0000000FTqL-1icb;
	Tue, 28 Oct 2025 07:52:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A4323602D7;
	Tue, 28 Oct 2025 07:52:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF514C4CEE7;
	Tue, 28 Oct 2025 07:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761637930;
	bh=lgCu1/5LkJDVUKGcQ1LJt6hU1F8MpL35/q8ICEa7ZPU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eeZ0Tj72+n38VyiBnwzBzv1JPxT5YjRmABluQrQbslUPzrY4kOjj2dZbDJn+VKxVX
	 QE4fZj6gTStX4n5HsGpMaSXgVAhZ+8sC6W3k2yfrzQi/FS5BfbFSmqjNtPow4aVUkg
	 5DdvTG6gAECtFsUFZwk25O92EL6Ytj9Sf/i8d5n5tAvZb9+b9HIpIO2qNo6AoI1zbc
	 uj3JznohxOTHbhva7pBZea7/H0kbzXJxVEhRbWpRCEKWiO5oxrTRcBgBQYjbVQsXEo
	 U2OLHi4bSp94ssMT2o94756zksQZG9E2cv82F00lUI88X6OPvu6fGDPhE0qiZ7i57x
	 tJY3u1FKZhsLA==
Date: Tue, 28 Oct 2025 08:52:07 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, sugar.zhang@rock-chips.com, 
	heiko@sntech.de, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	huangtao@rock-chips.com, finley.xiao@rock-chips.com
Subject: Re: [PATCH v5 4/7] dt-bindings: clock: Add support for rockchip
 pvtpll
Message-ID: <20251028-hasty-amusing-guan-e57f62@kuoka>
References: <20251027084147.4148739-1-zhangqing@rock-chips.com>
 <20251027084147.4148739-5-zhangqing@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251027084147.4148739-5-zhangqing@rock-chips.com>
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

On Mon, Oct 27, 2025 at 04:41:44PM +0800, Elaine Zhang wrote:
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-output-names:
> +    maxItems: 1
> +
> +  rockchip,cru:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: |
> +      Phandle to the main Clock and Reset Unit (CRU) controller.
> +      Required for PVTPLLs that need to interact with the main CRU
> +      for clock management operations.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"

Missing clocks.

> +  - clock-output-names

Missing rockchip,cru

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pvtpll@20480000 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
If you cannot find a name matching your device, please check in kernel
sources for similar cases or you can grow the spec (via pull request to
DT spec repo).

> +      compatible = "rockchip,rv1126b-core-pvtpll";
> +      reg = <0x20480000 0x100>;
> +      #clock-cells = <0>;
> +      clock-output-names = "clk_core_pvtpll";

Incomplete example - missing clock.

> +    };
> +
> +  - |
> +    pvtpll@21c60000 {

Drop all other examples, no need to repeat the same.

They weren't even here before!

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
