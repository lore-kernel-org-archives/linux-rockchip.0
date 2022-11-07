Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C1DFC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 00:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0n2vSZ72hk0uTeoQH4eh9ANWaIn9UiNPQBeIhl8lFk=; b=GW2bCIoMnFEWrX
	ONbFh9UACo1hJ+dHKgzMS1LiTYES1P1yUtHuUOIe18I+w1xNA79VywEqoifEQQd3iajzAWw0/M89S
	SZOfFYzf4N01XiOwyvbqiMeKvqkND47FCwzVbdWIy0V/h6Zm5D3ycxnwFD5kt0RNPZ23Gl6OYRxWS
	MXu6T/QuS+M1mDvoOg703SH60uZCvzz0RESOo8Gw9+GPLGR468MBdIXBNwI2fJKuDOMyxy7ojNovL
	X9fxppk7PZuqj+WoBSFEWGmOhEzZ14YWzr9OzctRgFbK00Rt5WDkfBofzTKwPwW67hlPn+sSV6ylS
	R1vvORuS9J+CHD7/SIrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orqNr-00AioY-5h; Mon, 07 Nov 2022 00:53:03 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orqNg-00AinC-3a; Mon, 07 Nov 2022 00:52:53 +0000
Received: by mail-wr1-x431.google.com with SMTP id v1so14034792wrt.11;
        Sun, 06 Nov 2022 16:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1pgYi1QW20bjgeUikoI4BXtKNA0Vcvd3wP6F6jHeVrI=;
        b=VIZxyyb2huPFhXBj6Ff8hqSONy0ejhL6YVxx9CUX8F8cCRHkvMe/ZULDe+GekW6emU
         jDUQYbJJ0c/S9PQlfCSgL4mVtLaLaKzsJ2B19fDgOhloQtDgswGPLk4KKi+k9EXD25yh
         rhHXFFfj30rzIoLnoLSSx2bKGVez5Parp8aibRfLGyRGRiplIa7cE2InL1rGi9EmPsIU
         SQFQU/aLx5ZJ3v4pApENwlKkMWkCUJZ7C2pg3rj4prieE+OfsHM9qAig80HDS6HpfggW
         LNbFAP4yVhGs6ekt9WK17j4GfXC2vp0CJFNKT1p2traIXj2LpulkprjDViC6JbK2FHba
         sv0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1pgYi1QW20bjgeUikoI4BXtKNA0Vcvd3wP6F6jHeVrI=;
        b=iWM5wdtj2vN/ikVQJJY+kBUWvq0m3DFowrBijOh7d5GoEGlQwyLAcxa0+cDQzzHV08
         XKOH0hkNlya7vFGHAABFOvAolE8Jokt4G8a4pEsNRqeTnEh1r5iWPEagcZl58nagRE4B
         C3qKiIcc2HG2dVkhJug2HAfSwVupOPuj6v1RGQgXvvATP7Hli0GCajQx08HPSdOGD5tU
         6h4kdzJIb6xM8nUzGMtjTsv37w0r4VYCzAlnTCdT3liuieGGXWBMHHk2+fL2AB1DdZX9
         33KNE3ac1WXlilYQsI/gr5LNnvCN5WOAlPA1WDXxXH7Cqh6xfWvZDyvF0iuylRTjMa5i
         qjSg==
X-Gm-Message-State: ACrzQf0duGVikjInYFXaeSP/0TTOX+LqNYddZHPg1DhbKohP/oF3Bbcl
	YCcz8ChEkEOHda2t8xsJtE7ufzImd1xNfMeP3wI=
X-Google-Smtp-Source: AMsMyM4KfNUysIYFDjpu/bJYRa8vPionmtkrY9MNWjh6DdFy8XZvlJoSX5bAkgc6WDaKsTTe2+xPrsK5y9VjJdUn6z4=
X-Received: by 2002:a5d:618a:0:b0:228:d897:228 with SMTP id
 j10-20020a5d618a000000b00228d8970228mr504099wru.539.1667782368115; Sun, 06
 Nov 2022 16:52:48 -0800 (PST)
MIME-Version: 1.0
References: <20221106161443.4104-1-wens@kernel.org>
In-Reply-To: <20221106161443.4104-1-wens@kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 6 Nov 2022 19:52:35 -0500
Message-ID: <CAMdYzYomgwo3RiUr4pptOD=AUgUS4f6Aqtio3agQP2F-bm2WZQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: Add dma-names to UART
 device nodes
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221106_165252_205536_8CF5FEC4 
X-CRM114-Status: GOOD (  17.51  )
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

On Sun, Nov 6, 2022 at 11:15 AM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> At least one implementation, Linux, requires "dma-names" properties
> be used together with "dmas" to describe DMA resources. These are
> currently missing, causing DMA to not be used for UARTs.
>
> Add "dma-names" to the UART device nodes.
>
> Fixes: a3adc0b9071d ("arm64: dts: rockchip: add core dtsi for RK3568 SoC")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Enabling dma globally can cause some interesting issues, have you
tested this fully?

> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 5706c3e24f0a..5cd55487c20e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -447,6 +447,7 @@ uart0: serial@fdd50000 {
>                 clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>                 clock-names = "baudclk", "apb_pclk";
>                 dmas = <&dmac0 0>, <&dmac0 1>;
> +               dma-names = "tx", "rx";
>                 pinctrl-0 = <&uart0_xfer>;
>                 pinctrl-names = "default";
>                 reg-io-width = <4>;
> @@ -1326,6 +1327,7 @@ uart1: serial@fe650000 {
>                 clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>                 clock-names = "baudclk", "apb_pclk";
>                 dmas = <&dmac0 2>, <&dmac0 3>;
> +               dma-names = "tx", "rx";
>                 pinctrl-0 = <&uart1m0_xfer>;
>                 pinctrl-names = "default";
>                 reg-io-width = <4>;
> @@ -1340,6 +1342,7 @@ uart2: serial@fe660000 {
>                 clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
>                 clock-names = "baudclk", "apb_pclk";
>                 dmas = <&dmac0 4>, <&dmac0 5>;
> +               dma-names = "tx", "rx";
>                 pinctrl-0 = <&uart2m0_xfer>;
>                 pinctrl-names = "default";
>                 reg-io-width = <4>;
> @@ -1354,6 +1357,7 @@ uart3: serial@fe670000 {
>                 clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
>                 clock-names = "baudclk", "apb_pclk";
>                 dmas = <&dmac0 6>, <&dmac0 7>;
> +               dma-names = "tx", "rx";
>                 pinctrl-0 = <&uart3m0_xfer>;
>                 pinctrl-names = "default";
>                 reg-io-width = <4>;
> @@ -1368,6 +1372,7 @@ uart4: serial@fe680000 {
>                 clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
>                 clock-names = "baudclk", "apb_pclk";
>                 dmas = <&dmac0 8>, <&dmac0 9>;
> +               dma-names = "tx", "rx";
>                 pinctrl-0 = <&uart4m0_xfer>;
>                 pinctrl-names = "default";
>                 reg-io-width = <4>;
> @@ -1382,6 +1387,7 @@ uart5: serial@fe690000 {
>                 clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
>                 clock-names = "baudclk", "apb_pclk";
>                 dmas = <&dmac0 10>, <&dmac0 11>;
> +               dma-names = "tx", "rx";
>                 pinctrl-0 = <&uart5m0_xfer>;
>                 pinctrl-names = "default";
>                 reg-io-width = <4>;
> @@ -1396,6 +1402,7 @@ uart6: serial@fe6a0000 {
>                 clocks = <&cru SCLK_UART6>, <&cru PCLK_UART6>;
>                 clock-names = "baudclk", "apb_pclk";
>                 dmas = <&dmac0 12>, <&dmac0 13>;
> +               dma-names = "tx", "rx";
>                 pinctrl-0 = <&uart6m0_xfer>;
>                 pinctrl-names = "default";
>                 reg-io-width = <4>;
> @@ -1410,6 +1417,7 @@ uart7: serial@fe6b0000 {
>                 clocks = <&cru SCLK_UART7>, <&cru PCLK_UART7>;
>                 clock-names = "baudclk", "apb_pclk";
>                 dmas = <&dmac0 14>, <&dmac0 15>;
> +               dma-names = "tx", "rx";
>                 pinctrl-0 = <&uart7m0_xfer>;
>                 pinctrl-names = "default";
>                 reg-io-width = <4>;
> @@ -1424,6 +1432,7 @@ uart8: serial@fe6c0000 {
>                 clocks = <&cru SCLK_UART8>, <&cru PCLK_UART8>;
>                 clock-names = "baudclk", "apb_pclk";
>                 dmas = <&dmac0 16>, <&dmac0 17>;
> +               dma-names = "tx", "rx";
>                 pinctrl-0 = <&uart8m0_xfer>;
>                 pinctrl-names = "default";
>                 reg-io-width = <4>;
> @@ -1438,6 +1447,7 @@ uart9: serial@fe6d0000 {
>                 clocks = <&cru SCLK_UART9>, <&cru PCLK_UART9>;
>                 clock-names = "baudclk", "apb_pclk";
>                 dmas = <&dmac0 18>, <&dmac0 19>;
> +               dma-names = "tx", "rx";
>                 pinctrl-0 = <&uart9m0_xfer>;
>                 pinctrl-names = "default";
>                 reg-io-width = <4>;
> --
> 2.34.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
