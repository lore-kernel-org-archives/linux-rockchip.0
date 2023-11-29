Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A293EC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 07:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnFMAmHRMRcJZUk4jgDxW7X5RWj+/k3MnRVqoQzTzEg=; b=x+Qx9Ak7X6xNjn
	R0B7sRgxCy7ghT6X/Tx3GfBMikoYiXv775nnw6esXjjZkiPaSJoTFHYDiCioTxUmCZKrfsOJPMd+g
	9q95Wplua3P1wXG/ImSi4sdwyDKgX/JlOKWfAhj/4qeEBwkVrIfGevJ2wZlCHsq7I8KD78JjCTJZf
	vOvc4rZ+vi+nv5IE+8R9bzNruBUIvr4/qJUID833btI3W0bTObZSpHPY888B/icjD7RoZh2wYOEdD
	mBU0QiOhyhX3uNnqyJ9VEtQdWZJwzaHkK/PpaX0igN4luENPJV1KXrooDSU8rFNwYZDkMqAE9BPiP
	mYCDYjAJ97rBCbyL4n/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8F16-007M8L-1H;
	Wed, 29 Nov 2023 07:29:52 +0000
Received: from mail11.truemail.it ([217.194.8.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8F10-007M4o-02;
	Wed, 29 Nov 2023 07:29:49 +0000
Received: from francesco-nb.int.toradex.com (31-10-206-125.static.upc.ch [31.10.206.125])
	by mail11.truemail.it (Postfix) with ESMTPA id 3023420395;
	Wed, 29 Nov 2023 08:29:36 +0100 (CET)
Date: Wed, 29 Nov 2023 08:29:30 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>,
	Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Michal Simek <michal.simek@amd.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	workflows@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v3] docs: dt-bindings: add DTS Coding Style document
Message-ID: <ZWboWqELHbIrblnz@francesco-nb.int.toradex.com>
References: <20231125184422.12315-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231125184422.12315-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_232946_234248_138131BD 
X-CRM114-Status: GOOD (  13.83  )
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

On Sat, Nov 25, 2023 at 07:44:22PM +0100, Krzysztof Kozlowski wrote:
> Document preferred coding style for Devicetree sources (DTS and DTSI),
> to bring consistency among all (sub)architectures and ease in reviews.

Thank Krzysztof, we had most of this collected as BKM in some internal
documents and it's great to see the effort to consolidate this and add
it to the kernel documentation.

> ---
> +Following order of properties in device nodes is preferred:
> +
> +1. compatible
> +2. reg
> +3. ranges
> +4. Standard/common properties (defined by common bindings, e.g. without
> +   vendor-prefixes)
> +5. Vendor-specific properties
> +6. status (if applicable)
> +7. Child nodes, where each node is preceded with a blank line

On point 4, do you have a more explicit way to define what is an actual
standard/common property? You mention the vendor-prefixes as an example,
is this just an example or this is the whole definition?

What would be the order for this for example (from an existing DTS file)?

	reg_sdhc1_vmmc: regulator-sdhci1 {
		compatible = "regulator-fixed";
		pinctrl-names = "default";
		pinctrl-0 = <&pinctrl_sd1_pwr_en>;
		enable-active-high;
		gpio = <&main_gpio0 29 GPIO_ACTIVE_HIGH>;
		off-on-delay-us = <100000>;
		regulator-max-microvolt = <3300000>;
		regulator-min-microvolt = <3300000>;
		regulator-name = "+V3.3_SD";
		startup-delay-us = <2000>;
	};

I guess the point that is not obvious to me here is where do we want
pinctrl. I like it at position between 3 and 4, the rationale is that is
a very frequent property and this way it will be in a similar place for
every node.

Francesco


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
