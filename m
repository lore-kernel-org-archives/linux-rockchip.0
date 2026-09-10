Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 414A8C79FB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 08:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYDgnCEI3Wx2SsNK2T5O3SEDiXKg7ZWOzG85HUrSkPY=; b=2LLtbIIXt8xrFT
	Xy/bWPsDrmTmnx3bxMOWGeZ1wvrr1CPyUvh8Tx5QvNTgD7nFrus5SbRFBf/l2Scu76KxL9vrPBMD3
	Y/wAdvJafGpe1yS/Z+U4nmj92p/GDoPLUO/sR5vdnRoZz3OvPHkzRfaUfzSFssTlvMjcF1eFzeGzS
	q/S9lxht7LIOr7wg1v6TJxNrDgjWoxMk8Pgo7g04NlRAJh8dymHiehAmjvz/tV/E+p13rYaf7Hqfb
	kdSJ8BcDixP8OOI2Jnq2KsJQM1CLlKOqA0rEXBYzb6TvcJl2LHumsfmbH7YPvkaXD25N/sPRCZRsX
	f+456PT1rnuZa77tL2nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4aID-0000000Dliv-1rfD;
	Thu, 10 Sep 2026 08:38:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4aIB-0000000Dlhz-2JZD;
	Thu, 10 Sep 2026 08:37:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8FC2E4335C;
	Thu, 10 Sep 2026 08:37:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1C261F000FF;
	Thu, 10 Sep 2026 08:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789029478;
	bh=EZGyD4HcrjDRUcR2xnLZUcoNWJUpQvPh9c9ez8Kckcc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dqDayxOBxh7RZhoahGQfIr5nqGXH1m09RD+JiuwnolPYrMt+KHGlvS9sqRNJrXINB
	 AQ2AARvY1wPptsSFIQ4l/Mp6QDdD4MsSgiKeO5MuXqRMSmSZTY5eIt/faPDLK8jtQA
	 KGAn403hcc0XarQhKfmXw5n5QfIxqO1LREKhekOND+u4NjMteJlota8eMUE+bPD6bO
	 9SM8b6qVaEhkHHeZxrpmGfP/uTOBj4hTNR6CSPKaatn7SIg23PURpI/HPDRlt5yOP7
	 8VS2JFKZEcCb/Wgds0zeLjWin3qqBM+h7QUWvcJlWtu3taZkeWKWkCu26ah+Pz81Lo
	 LVrIAcdhmb+oQ==
Date: Thu, 10 Sep 2026 10:37:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Lee Jones <lee@kernel.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Emil Renner Berthing <kernel@esmil.dk>, 
	Hal Feng <hal.feng@starfivetech.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
	Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Dominique Belhachemi <db@domibel.de>, 
	Brian Masney <bmasney+clk@redhat.com>, Jerome Brunet <jbrunet+clk@baylibre.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, mfd@lists.linux.dev, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-riscv@lists.infradead.org, Andy Yan <andyshrk@163.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Maud Spierings <maud_spierings@murena.io>, 
	Graham Markall <hello@big-grey.co.uk>, Icenowy Zheng <zhengxingda@iscas.ac.cn>
Subject: Re: [PATCH v3 18/19] riscv: dts: starfive: jh7110: Update DT for
 display subsystem
Message-ID: <20260910-determined-fantastic-seriema-3ff701@quoll>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132743eucas1p1e02218d3fb38af95c3dd4bfa24904cab@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-18-484f9ae72715@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260904-jh7110-clean-send-v3-18-484f9ae72715@samsung.com>
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

On Fri, Sep 04, 2026 at 03:27:19PM +0200, Michal Wilczynski wrote:
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index 9c3e4598747eb5541effe697044484715569a285..0f981f4c89586269b987be8591037c9461e04703 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -290,12 +290,6 @@ gmac1_rmii_refin: gmac1-rmii-refin-clock {
>  		#clock-cells = <0>;
>  	};
>  
> -	hdmitx0_pixelclk: hdmitx0-pixel-clock {
> -		compatible = "fixed-clock";
> -		clock-output-names = "hdmitx0_pixelclk";
> -		#clock-cells = <0>;
> -	};
> -
>  	i2srx_bclk_ext: i2srx-bclk-ext-clock {
>  		compatible = "fixed-clock";
>  		clock-output-names = "i2srx_bclk_ext";
> @@ -352,6 +346,13 @@ tdm_ext: tdm-ext-clock {
>  		#clock-cells = <0>;
>  	};
>  
> +	xin24m: xin24m {

Other clocks are called foo-clock, so follow this as well (even though
it does not follow recommended practice of clock-foo, but at least some
consistency).

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
