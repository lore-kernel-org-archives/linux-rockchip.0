Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7350C3DA64
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/YCuLzcs6KScv6jqKDAHuHi38Umey14ZHQix3cB4RxQ=; b=BNJYqpYL4VZIpcQfUr+TvUs7KM
	1kFjUGXDrBM+KEBMfGtA60NU9U8kbZ21rCKBHOPIPiXEcJkgDtGhT0ZlNmmM+WLC7QlgLHdNnqkTt
	/9KcxAGbPt7Cdw1ICIJATdvqJgoebfo5jnND+nNlGPj15XpSS5b6EBWyKJXhgOhpATfZF8EqPUy+/
	EBypNTLbZoIV8FtmOfK3e+ZIU/e7qpYjmUsKliEQGi9jSi30gidzbkyYDCQz0xmZ/QpT+ICNa8nYS
	6nIm5xQmoaGTwSDE9xa6kXOLGhL91HlfMEZSbpjoqAOCWr2FIeFvala9lH1g3/ZUBTnSRW/TbJF55
	iPLIcfzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbKTc-00000001pgV-0cAw;
	Tue, 06 Aug 2024 13:43:48 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbKTZ-00000001pf7-3pni
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Aug 2024 13:43:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D1E23CE0B5F;
	Tue,  6 Aug 2024 13:43:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5198C32786;
	Tue,  6 Aug 2024 13:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722951823;
	bh=7cgpMKZ/sRoxMwB5sW8eWWI81jOeYc0K6w4lNJu+HD4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=hwHh4RZ8gZdKdrU0Uu1D1uNE8rxtqIANcdo3t4Ixd03WAD9mg74UDhKwd9rZWLQC0
	 IY9MtA2fKCAZNkZTscqk0Q86bc+UVfmxdWRUryv1r6p7jlhxKt24A5fTY0lvBkr7Wv
	 GMDxKYHbpMPOMua5+Eih3gwnUSLec+65jc5KaRqinZiFHCDMzrO2wvaTh3pQm9iHYt
	 x4Fy8/gwvpQqDnoPuVWY2aiR+N0uFNFhJlyEWQt6pdrMwaSGPQtHUZ1pg4WjZg/grQ
	 TKFlgxz6Seg9qbL0Tqb/GYFKs/nIKJvEAeQjv9RpnG5vuhiDz4AF0p9eD0qI/bvAaV
	 74IAQl23rNxqw==
Date: Tue, 06 Aug 2024 07:43:41 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-rockchip@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20240805232932.2030-1-naoki@radxa.com>
References: <20240805232932.2030-1-naoki@radxa.com>
Message-Id: <172295171605.1220315.16278406037765570238.robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: add support for
 Radxa ROCK Pi E v3.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_064346_147567_DA21B3DC 
X-CRM114-Status: GOOD (  11.81  )
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


On Tue, 06 Aug 2024 08:29:31 +0900, FUKAUMI Naoki wrote:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> Changes in v3:
> - collect A-b tag
> Changes in v2:
> - fix typo in commit message
> - add missing --- in commit message
> - add new section instead of new item in rockchip.yaml
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240805232932.2030-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
