Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3371EC25B50
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jan 2023 09:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNRcMcUzvjoW3TyxCBppuazbD+Nkrm+RKnok802tYA0=; b=b1nviJWxHPIAX5
	7b0R1hVgiLnGZf8lzGp0a91UlzHs3ITSLc92cfMQkPhNJeuhz/av3FhZ1JtMoL3n2XY5CYohHxReE
	5eZ0kSHrAbymX4Vz3PEpDQhTr5AjNVmDTL1faJSj06g9ulZe/0qI21A6+uaxHCi/1eGF1ULjiXqN0
	ucOaF7mlDaan0OokZhyxvPRdxT+jjVEGogH79wg6tBqUkhxc9E2jaivmpXc0OZP5DySFd2uw1xVeT
	Edzb7bcLanNFvlRPBwcrfY82jceeCBFfsG7hv7xeDQdIDPhUV4ppPbs9EqMbBusSc8At6Nc/zI0GD
	T2VVhM+0UnSImWqitqVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIo7f-009Zzr-EW; Fri, 20 Jan 2023 09:55:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pInjR-009NwE-Fv; Fri, 20 Jan 2023 09:30:46 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pInik-0002bV-EQ; Fri, 20 Jan 2023 10:30:02 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Andreas =?ISO-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Tony Huang <tonyhuang.sunplus@gmail.com>, Li-hao Kuo <lhjeff911@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Markus Pargmann <mpa@pengutronix.de>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-actions@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: drop unneeded quotes
Date: Fri, 20 Jan 2023 10:30:00 +0100
Message-ID: <1844731.CQOukoFCf9@diego>
In-Reply-To: <20230120085722.171965-1-krzysztof.kozlowski@linaro.org>
References: <20230120085722.171965-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_013045_590283_09613175 
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

Am Freitag, 20. Januar 2023, 09:57:21 CET schrieb Krzysztof Kozlowski:
> Cleanup by removing unneeded quotes from refs and redundant blank lines.
> No functional impact except adjusting to preferred coding style.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index c7e14b7dba9e..67d7223f74da 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -14,7 +14,7 @@ description:
>    file and the Rockchip specific extensions.
>  
>  allOf:
> -  - $ref: "synopsys-dw-mshc-common.yaml#"
> +  - $ref: synopsys-dw-mshc-common.yaml#
>  
>  maintainers:
>    - Heiko Stuebner <heiko@sntech.de>

For the Rockchip part
Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
