Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE304C001B0
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jul 2023 17:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dG4m5T7RebckOVhnKRKUjkHooVB6L46bwTOWkfp68hQ=; b=ed/RFMbk0rYteI
	HX3WLuGNrxIRZaXnwYkc5r8wdrxdQIyTxxpVp5fOyk7EVSaf+9iB3ARpiwib/1Y8/tlj1/QaBgnh9
	VmCyFExAw0juPw1jhSSyc+IWNKUKeg3WB5fKzHn4L4X5BgsZLeEsC0D5aOs/SZyt5jkqYQzdJT88A
	WaxUMhWw5oW/uLObMYkzhydg0ukjbObKZLiYJ3AP7t25U6KEO+QVh0lfNQ7M44A9PYXwbSLpTk/4b
	ytinRw+4eA3gGbfk2B/Zt7e+av9Da3JhWAe09iakmC0TneAEq+jjhcBFT78hePs9KVTlDutrhs7yw
	yG3N68G8lUCY8pqathIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKj1Q-009DhX-26;
	Sat, 15 Jul 2023 17:25:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKj1K-009Dg4-0t;
	Sat, 15 Jul 2023 17:25:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 93E2260BC0;
	Sat, 15 Jul 2023 17:25:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EECADC433C8;
	Sat, 15 Jul 2023 17:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689441924;
	bh=2rWa0saIx/aSMdEvevYBh+MQQSg3D2IqD2pink9uqAw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ehhFp2aPpwHHqcFgPeCL1aRVMT6SJUvZ0WbwW5z1GdEEHVzpkLgPuWV8jHGduq8S1
	 RVF2ykVEzsL3rBi31a/3Iu+dYS0nJqrH/Xphsl3DFfvW3YFp32q8BwSpSPxLzKwcTP
	 x9yO3DYNCagSY89ZgkOlaXPYZZZdGN2w/f/MQ+ootmn3o3uFglzPoxUX8ygl1d+6fD
	 /jed+oevOtn+4fAMcNoMWj8+sLgWPQ850ABlryL6OC6pD1CyTg7UAuP+m058Z7qGDr
	 tP2TCei67hN8ux/kvDFEcvFLMsvw1b0dVGELWwf/IbQZQDCT/y+18MC1PHPh8P2Hvf
	 dDcPQJAgg6vFA==
Date: Sat, 15 Jul 2023 18:25:10 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Alexandru Tachici <alexandru.tachici@analog.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Claudiu Beznea
 <claudiu.beznea@microchip.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio
 <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Orson Zhai
 <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan
 Zhang <zhang.lyra@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai
 <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, Crt Mori <cmo@melexis.com>,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] iio: adc: Explicitly include correct DT includes
Message-ID: <20230715182510.3d09970c@jic23-huawei>
In-Reply-To: <20230714174628.4057920-1-robh@kernel.org>
References: <20230714174628.4057920-1-robh@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230715_102526_417884_927B0EEA 
X-CRM114-Status: GOOD (  14.93  )
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

On Fri, 14 Jul 2023 11:46:26 -0600
Rob Herring <robh@kernel.org> wrote:

> The DT of_device.h and of_platform.h date back to the separate
> of_platform_bus_type before it as merged into the regular platform bus.
> As part of that merge prepping Arm DT support 13 years ago, they
> "temporarily" include each other. They also include platform_device.h
> and of.h. As a result, there's a pretty much random mix of those include
> files used throughout the tree. In order to detangle these headers and
> replace the implicit includes with struct declarations, users need to
> explicitly include the correct includes.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Hi Rob,

Just one in here that I noticed isn't quite right. I'd have fixed it 
up (and can still do so if nothing else comes up) but I want to give
this more time on list anyway so won't pick it up today.

Jonathan

> diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> index 67518e460e05..55e36b40fdf5 100644
> --- a/drivers/iio/adc/stmpe-adc.c
> +++ b/drivers/iio/adc/stmpe-adc.c
> @@ -14,9 +14,10 @@
>  #include <linux/kernel.h>
>  #include <linux/mfd/stmpe.h>
>  #include <linux/module.h>
> -#include <linux/of_platform.h>
> +#include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/device.h>
> +#include <linux/of.h>

Duplicate include.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
