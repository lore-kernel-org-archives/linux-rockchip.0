Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA980C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 19:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ug/WEALF5QV6iSZKVvzB1WKhIcXjz+FRsgdEa1NcYvk=; b=XTp9u4dbcDP00uTI6x9lJ6NH0J
	LdN0BJ6gelkH7Kto9fbIYbIqhyPbwjxRidjfdm/xJFO/Jo16VEGdFzhm/w7c+tE3en6tioqah6nMK
	XDfKSkR1qy9gb8zhyudCsiZ1NhViMmArhLMNH4UdANyF9BXQtaeMksYZMf1kZNtgJkX6vAiWqxW5p
	dk7MPq1SwZ+QFy8In/ICr15ar2ji2i9h06tOG3RDlhxKp36JSDLsnUt6J6tRWFQQmVxUi4cUJ4J2k
	NwVJoQ9eeJkaNKofum9LCkHC8rmdXtytlq+xTCMAs/8L3Yq0Ai/qghQRwH6E2FuU0rWPuWznmBKH9
	k4rkGRxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCDn-000000066F2-3gkn;
	Tue, 26 Mar 2024 19:12:31 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCDJ-0000000665f-29HE;
	Tue, 26 Mar 2024 19:12:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C151DCE23DA;
	Tue, 26 Mar 2024 19:11:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DD05C433C7;
	Tue, 26 Mar 2024 19:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711480319;
	bh=LvKhXJn8EIr5UGVEKeNBvYJUx5NfV4+q0X4F7qJluac=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=F9CY6W7vwuaBw6n/k3jXgLRRU6zg87VuJJj4rHj94X/+YXtg0cU3xuoS8Tn9gZoJf
	 +KYew4/UAMwqEZQ4Ust/1AycXvF2Wg9cSM0DQdx6QHvqyf3r8S4S0t0jmzkr47eyGw
	 XfVfa4mRCEeGJXE6JErktD+X0I15wVflHnGbj8xEhH/w5EKnKInP+PHDb2EPznJWkH
	 9B+1LzRvXvX2laLjHyp+btFUtlb/sgNY1kWeQIm1GlhhRlEyaa1I1KZeo7d/v8qREw
	 wJfsFIVrZ1pv9ZWCssCOsvAkkHDC1YtVX160VJGCGRuCXkXy+4thhZnB0ffwi9t8Ct
	 kSKlDl6tveVgQ==
Date: Tue, 26 Mar 2024 14:11:58 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
References: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
Message-Id: <171148006579.3222626.4177463381080253015.robh@kernel.org>
Subject: Re: [PATCH 0/4] arm64: dts: rockchip: add wolfvision pf5 mainboard
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_121201_818669_44F7789D 
X-CRM114-Status: GOOD (  16.73  )
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


On Mon, 25 Mar 2024 15:22:30 +0100, Michael Riesch wrote:
> Habidere,
> 
> This series adds the device tree for the WolfVision PF5 mainboard, which
> serves as base for recent WolfVision products. It features the Rockchip
> RK3568 and can be extended with several different extension boards.
> 
> The WolfVision PF5 IO Expander is one example of such an extension board.
> The corresponding device tree overlay is also included in this series.
> 
> May this be the beginning of a beautiful friendship :-)
> 
> Looking forward to your comments!
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
> Michael Riesch (4):
>       dt-bindings: add wolfvision vendor prefix
>       dt-bindings: arm: rockchip: add wolfvision pf5 mainboard
>       arm64: dts: rockchip: add wolfvision pf5 mainboard
>       arm64: dts: rockchip: add wolfvision pf5 io expander board
> 
>  .../devicetree/bindings/arm/rockchip.yaml          |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile              |   2 +
>  .../rk3568-wolfvision-pf5-io-expander.dtso         | 137 ++++++
>  .../boot/dts/rockchip/rk3568-wolfvision-pf5.dts    | 528 +++++++++++++++++++++
>  5 files changed, 674 insertions(+)
> ---
> base-commit: 4cece764965020c22cff7665b18a012006359095
> change-id: 20240325-feature-wolfvision-pf5-5c1924c0389c
> 
> Best regards,
> --
> Michael Riesch <michael.riesch@wolfvision.net>
> 
> 
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3568-wolfvision-pf5.dtb' for 20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net:

arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dtb: hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
