Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF8ACCCD195
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Oct 2025 18:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=En3ZARWMDbEx+ATlWis35GKaR6zMuxbnHb6SCx6M5Nw=; b=pE+F4NVUTqisdM
	ZdkDI/fo8MLZnG/pXtV0oM9xXh6LaLbA0wYMhYyncpBxVfHkU3sGMGpTBT6guJuxgBTSuNNXgWB3Y
	3x02pRVq7lb0fNs+/gZJQAO89wWzlpQ6p1YdzGmQwCVV1sSv/46K7JyBVG5VPZ51dsde55TQAdpEH
	0feKkYcp0fAUcES0Kkr+/1nxY31Cbbk1aaS7ZE6umalw3JcU/nUKPvwfWbkyO6TbKOHXf12qwrkZq
	c7nzFjx9Uged4F7S6ayBQwzelQx/3wl/OO1T59FUEtO6h5TAaHxtnaF8SNgb8AKsn/XGKWgCm4C5o
	JkF7X6O4TS78B/6z5KnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAXrA-0000000BHrn-2OTl;
	Sun, 19 Oct 2025 18:10:12 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAXr7-0000000BHr2-3wZ8;
	Sun, 19 Oct 2025 18:10:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 4684640A58;
	Sun, 19 Oct 2025 20:09:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1760897402; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ERRtoG7bB418wgjyE9jDggkfu2QPAbzjTsBuPu44/cA=;
	b=VtVGybfY5fuB19L+2yb0xkzW1Ddf2ptzniOmXG98nENyurifzlZGRSMOGmOBOcD6SteVZG
	gm7eoN3oiKzyiLIAkrNryM5s2iWKpuLNQoglrmoT2jDE3sx/FNRfXAYU5KckAwevx3G6yR
	pRwplGe3bcp2d30R2QOBIMLcPhVpVTD6dRvS7g9FwvR8DdYSz4+8zv6uhEVCuIhXgs/wS4
	7Kv7iUfw1vhNO7JAfMFvGA0P96U4e2CYvpFNtG0wGCIINxoEkr5/b0bkLn6vSaqzBY/Hkq
	h4Ki5L4PC6QnTmnQiLacZoiWxsBwXAj+I5uroQrE9LvEVAkLx9NggaFoIDIP5w==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <CANAwSgTZa7PXBuyh9EdDOXCNuCTOHGsJz18pSjP6WUN8sOaqTQ@mail.gmail.com>
References: <20251017073954.130710-1-cnsztl@gmail.com> <7f0b1747-87eb-0b0b-6fb0-304811a4be21@manjaro.org>
 <d9d14ce2-2e65-422e-95fb-eb30b128ad90@gmail.com> <41154cde-a447-0707-4387-cd3dca90b97d@manjaro.org>
 <CALWfF7K0=J3E-zr41wV-28+SCFkT_so55Aee8BvQsB4KJZy6YQ@mail.gmail.com>
 <47931e9e-09db-3909-4531-dae6869171d7@manjaro.org> <b22425c3-01e0-4d2e-bf78-5db884d4ec38@gmail.com>
 <de5e8643-49bb-4e0e-45fd-51b25ecf530d@manjaro.org> <CANAwSgTZa7PXBuyh9EdDOXCNuCTOHGsJz18pSjP6WUN8sOaqTQ@mail.gmail.com>
Date: Sun, 19 Oct 2025 20:09:59 +0200
Cc: "Hugh Cole-Baker" <sigmaris@gmail.com>, "Jimmy Hon" <honyuenkwun@gmail.com>, "Tianling Shen" <cnsztl@gmail.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Grzegorz Sterniczuk" <grzegorz@sternicz.uk>, "Jonas Karlman" <jonas@kwiboo.se>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Anand Moon" <linux.amoon@gmail.com>
MIME-Version: 1.0
Message-ID: <047fe2b8-0f94-0f0f-5964-b65844834706@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= fix eMMC corruption on NanoPC-T6 with A3A444 chips
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_111010_220155_E39D6D12 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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

Hello Anand,

On Sunday, October 19, 2025 19:25 CEST, Anand Moon <linux.amoon@gmail.com> wrote:
> Would you consider the following patch?
> 
> As per the Rockchip RK3588S SoC Technical Reference Manual (TRM) Part 1,
> chapter 21.6, Interface Description, the eMMC signals require careful handling
> to ensure signal integrity.
> 
> I2C2_SCL_M2 I/O EMMC_RSTN/I2C2_SCL_M2/UART5_RTSN_M1/GPIO2_A3_d
> BUS_IOC_GPIO2A_IOMUX_SEL_L[15:12]=0x9
> I2C2_SDA_M2 I/O EMMC_DATA_STROBE/I2C2_SDA_M2/UART5_CTSN_M1/GPIO2_A2_d
> BUS_IOC_GPIO2A_IOMUX_SEL_L[11:8]=0x9
> 
> $ git diff .
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> index 6584d73660f6..f60a1d8be0ef 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> @@ -327,7 +327,7 @@ emmc {
>                 emmc_rstnout: emmc-rstnout {
>                         rockchip,pins =
>                                 /* emmc_rstn */
> -                               <2 RK_PA3 1 &pcfg_pull_none>;
> +                               <2 RK_PA3 1 &pcfg_pull_down_drv_level_2>;
>                 };
> 
>                 /omit-if-no-ref/
> @@ -369,7 +369,7 @@ emmc_cmd: emmc-cmd {
>                 emmc_data_strobe: emmc-data-strobe {
>                         rockchip,pins =
>                                 /* emmc_data_strobe */
> -                               <2 RK_PA2 1 &pcfg_pull_down>;
> +                               <2 RK_PA2 1 &pcfg_pull_down_drv_level_2>;
>                 };
>         };

Frankly, I'm not really sure how would such changes do something
good regarding the eMMC signal integrity?  In general, signal
integrity depends mostly on the routing of the PCB traces, which
is purely hardware design.  Sure, termination of data lines also
plays a significant role, but that surely isn't at play here.

Moreover, the eMMC RSTn line is already pulled high to VCCIO in
the reference RK3588 design, so pulling it down in the SoC itself
would be pretty much wrong thing to do.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
