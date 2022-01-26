Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 212EBC28CF5
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 17:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCYlZCmUyJXDaNk3ahtsmskzqDsyu8/QyXJHGiMDcdk=; b=iQJ04dpeHYOS9n
	XeL3YOwpMq4qgjYV63dRoY5hqbSEU+FH2VNjAN6MjizKr9lFpS+ONNZolVyREWxZ41r6I91SHPsqv
	hVC+MXZhhianXdOlWt7UegPSxnFrXZxrk1ytiS+RTuD/7P7SQmhERO9MtZQox5m1I0nP8rJcgsoHa
	ElZ/vT303gf1aN2aXjjlFGKI5MfXJDQLJvCBZz6IA5+KbLckG1Y+YsLtBarTGkm7QcJNQeLPYOHVj
	IuB7MmmyPxgwbqNHVI/cxIBHbRfeO9oKNGPngBg4flMN02V4b9iKnSPwNk66aADmSOURsHXFJj1J0
	ogiBaF9k/k/nvjbnSEng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nClo3-00CtXA-Tz; Wed, 26 Jan 2022 17:10:03 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCkmm-00CVf2-2A; Wed, 26 Jan 2022 16:04:41 +0000
Received: by mail-yb1-xb32.google.com with SMTP id k17so210823ybk.6;
 Wed, 26 Jan 2022 08:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I1PFWUBDwhEY3Hv2QBW+PKkoeBVqFCkIFV0TuJ7bvS8=;
 b=P0OwVjXGqxYvsrwB7spRllLzGtiOBqjE0WSO7AYtGnmDOvkbK58mgms4Kc+Cfe9CAb
 VCEcyBeitlDZUrJI9x+1xHYvONl3nxmo38WuR/WbDnARdBvrcbnw4EMDihlOd9gvprrI
 UioSkgQz5gCMF0iNPrsnwuxtjq5AKy17Nc3MH5MKgjwIstBOgWTGpEraXDgZxNkhip2W
 5yRw89f4Rvmk+/tyRxy7haKoJMZgPw4Z+5oNXnC7qyLkJuaYvQt0oPNMCv+UWlNyiSQN
 BQuicCfmyi08sy50mYqftEt2JmvWlzo+QzjW+SS57BdbgZmAUSrqESwfbqhBYi/qfru4
 PXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I1PFWUBDwhEY3Hv2QBW+PKkoeBVqFCkIFV0TuJ7bvS8=;
 b=AB1A1Chh+w6IR2Nx0HpdaIGecxMZo59m6fZPQopDhkN5Fd2lT6MHf6AfCvVYGcPR7F
 5hOqjycxCUQak+X+ZewnQjaoe6qpQ7gE5Ocsf2x0dn1GTpZHjTWo/c+l0ciVjv26eYnv
 GjAbS8gbri2k0j7mu9VCHplXEVvz39cz6DAhq4RDu+OBR0mRhzW9s2k/xZXKbJWBE3Ck
 sAt33eJKmMk8ecmTJEiYDFW3/GvXzFXPLRqWXHFWnzxPP14T1w0dir5RmYNTaFN6i3cU
 sCVMC0rCcV8g9vfA8mABWO3we1mivaVfXIMHahCu3PWSufaNFXIY1cnMoghemGWTVpgZ
 C7/w==
X-Gm-Message-State: AOAM531TpI+Yc8d0YJdERXCldwvsdlLqkMkiXU9AJMvEq0trJ5WygJvy
 aagMfxi8fvNl5q+XluxCGh/5DBGVtvmPh+OrNYA=
X-Google-Smtp-Source: ABdhPJw0/pa8cCSqurWfk1GgO29W+8GRV6N3mR0rOJRhQPTh932RajwBQ5CXANcMfITbWzinmuCmScUdNZmKYWuDiyc=
X-Received: by 2002:a25:8888:: with SMTP id d8mr33876297ybl.405.1643213077990; 
 Wed, 26 Jan 2022 08:04:37 -0800 (PST)
MIME-Version: 1.0
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-22-s.hauer@pengutronix.de>
In-Reply-To: <20220126145549.617165-22-s.hauer@pengutronix.de>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 26 Jan 2022 11:04:26 -0500
Message-ID: <CAMdYzYrLw9+VW08cuj4_o4GDFhgBB8dZ-oVJ0TUnKFGLNetdyQ@mail.gmail.com>
Subject: Re: [PATCH 21/27] arm64: dts: rockchip: rk356x: Add HDMI nodes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, kernel@pengutronix.de, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_080440_181900_9DF94751 
X-CRM114-Status: GOOD (  19.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, Jan 26, 2022 at 9:58 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Add support for the HDMI port found on RK3568.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 37 +++++++++++++++++++++++-
>  1 file changed, 36 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 4008bd666d01..e38fb223e9b8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -10,7 +10,6 @@
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/power/rk3568-power.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>
> -#include <dt-bindings/soc/rockchip,vop2.h>
>  #include <dt-bindings/thermal/thermal.h>
>
>  / {
> @@ -502,6 +501,42 @@ vop_mmu: iommu@fe043e00 {
>                 status = "disabled";
>         };
>
> +       hdmi: hdmi@fe0a0000 {
> +               compatible = "rockchip,rk3568-dw-hdmi";
> +               reg = <0x0 0xfe0a0000 0x0 0x20000>;
> +               interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> +               clocks = <&cru PCLK_HDMI_HOST>,
> +                        <&cru CLK_HDMI_SFR>,
> +                        <&cru CLK_HDMI_CEC>,
> +                        <&pmucru CLK_HDMI_REF>,
> +                        <&cru HCLK_VOP>;
> +               clock-names = "iahb", "isfr", "cec", "ref", "hclk";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;

I looked into CEC support here, and it seems that it does work with one change.
Please add the two following lines to your patch:
assigned-clocks = <&cru CLK_HDMI_CEC>;
assigned-clock-rates = <32768>;

The issue is the clk_rtc32k_frac clock that feeds clk_rtc_32k which
feeds clk_hdmi_cec is 24mhz at boot, which is too high for CEC to
function.

> +               power-domains = <&power RK3568_PD_VO>;
> +               reg-io-width = <4>;
> +               rockchip,grf = <&grf>;
> +               #sound-dai-cells = <0>;
> +               status = "disabled";
> +
> +               ports {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       hdmi_in: port@0 {
> +                               reg = <0>;
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +                       };
> +
> +                       hdmi_out: port@1 {
> +                               reg = <1>;
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +                       };
> +               };
> +       };
> +
>         qos_gpu: qos@fe128000 {
>                 compatible = "rockchip,rk3568-qos", "syscon";
>                 reg = <0x0 0xfe128000 0x0 0x20>;
> --
> 2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
