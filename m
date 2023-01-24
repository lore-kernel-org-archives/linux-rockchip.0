Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34570C25B50
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jan 2023 11:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRsyf2gm9VtAxTsZ1oFrNL3s0b1Qqn2hK9n/xQd1wC0=; b=WeEviKQQs+JUTR
	Xqw9LfUOW7gatt8dbkRdGKH2AdMgSo9Y5dvHUXcw5d6prWLnrvJ+hfOQRs2Zpy+V6rgzkDXZ6sqO1
	maxD4r2G0fowoJ5nJDiuI/vTDBnjZITwcBvMEMUHtlyx7jOjuii5eBPz8fz0/1U5g3//rv71r3xxe
	k/qzC5Oqq/iDSJ+z3zTKKoBtzlSP3nbsliNAywvqdhulKanXQ2HMXvklwqiUUwh4LigibmqbRUnBf
	2bEQ1VFEghmlxYR2p70ldTvukEz6rL9EKgHOFhP33TNra4dowGJOsRJBrFsWg8d4cDscR6pusqtuw
	C4kd0SPZvy8zsWwgR5TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKHgi-003UjS-3e; Tue, 24 Jan 2023 11:42:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKHgX-003UeJ-GW; Tue, 24 Jan 2023 11:41:54 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pKHfs-0007oa-LG; Tue, 24 Jan 2023 12:41:12 +0100
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
Subject: Re: [PATCH 2/2] dt-bindings: mmc: correct pwrseq node names
Date: Tue, 24 Jan 2023 12:41:10 +0100
Message-ID: <2739129.BEx9A2HvPv@diego>
In-Reply-To: <955f4b2a-a750-11a2-0423-72023935723b@linaro.org>
References:  <20230120085722.171965-1-krzysztof.kozlowski@linaro.org>
 <2138388.Mh6RI2rZIc@diego> <955f4b2a-a750-11a2-0423-72023935723b@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_034153_565874_04B9C490 
X-CRM114-Status: GOOD (  20.85  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 24. Januar 2023, 09:17:12 CET schrieb Krzysztof Kozlowski:
> On 20/01/2023 10:38, Heiko St=FCbner wrote:
> > Am Freitag, 20. Januar 2023, 09:57:22 CET schrieb Krzysztof Kozlowski:
> >> Node names should be generic and should not contain underscores.
> >>
> >> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> ---
> >>  Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml   | 2 +-
> >>  Documentation/devicetree/bindings/mmc/mmc-pwrseq-sd8787.yaml | 2 +-
> >>  Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml | 2 +-
> >>  3 files changed, 3 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yam=
l b/Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml
> >> index 911a5996e099..588be73168fa 100644
> >> --- a/Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml
> >> +++ b/Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml
> >> @@ -41,7 +41,7 @@ additionalProperties: false
> >>  examples:
> >>    - |
> >>      #include <dt-bindings/gpio/gpio.h>
> >> -    sdhci0_pwrseq {
> >> +    pwrseq {
> > =

> > [applicable for all 3 examples]
> > =

> > hmm, power-sequences are not necessarily tied to an address and I guess
> > it will be very much a common case to have multiple ones on a system.
> > =

> > So might it be better to follow other patterns (like leds) to number th=
em
> > or suggest a "foo-pwrseq" / "pwrseq-foo"?
> =

> In such cases one can add number or descriptive suffix (pwrseq-0,
> pwrseq-foo), just like we do for regulators. However the examples have
> here only one node and in such case "pwrseq" is enough.

ok, when that is already part of the schema then all is fine :-)

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
