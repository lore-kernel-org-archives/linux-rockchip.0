Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5A72C54EED
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 15:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b286N6/sH/y3lqz1vfM5+Sfiw5VFlguqiNjuc+z6Si0=; b=uPD2hPnB4sROT0
	r+BgQu5+GLxKIsG8xvLiB2gnQpHxdxaMicjNGv2iIN2E2p/8GKCMNlRjSegIlqrKIRqq6nuNC0kag
	rwAIysSIfG4NhNb0bKpfjpdiULVBgG6cm7nUuGn+WJVgorFJP8T4NvqROBbtqAHlweKgICvceVImI
	ku8grNH3dauqOGcAyhSdO+aYkqJt0rkfOISff2qtFCbpZp0nMLjUanyYdgJwwlrOCa1wdLeZX8VfL
	wEMMIc0GUtL7ycR1r7PGc+GCBWenkWgF+tF8dwTxiuBDkjLqHRGHW/ZsHUNJwE5cbC0WPXRooir+U
	z6o9A73w6syy1z1+M48g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMW18-0041P3-PB; Mon, 30 Jan 2023 15:24:22 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMW0Q-0041AR-LD; Mon, 30 Jan 2023 15:23:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 62516B811C7;
	Mon, 30 Jan 2023 15:04:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1DE3C433A7;
	Mon, 30 Jan 2023 15:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675091094;
	bh=NP5hS1dR9EZmj2uQzPc5GC8kAzVVdZAEiPRJ9S3ogeI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=JfkSBEiDdHCwrsfpP1o2ASLyl1gWXHuRLeuSIvE9vW44hD9mhkvwoROQD8QIrcP9+
	 kfiUaMTjYKtpddyFZN8rH6G9MqO7wZz+ISPYrrD4YRTfIPovQZiXJtGC6XfOudB6RT
	 ZA3O9mb9VjUFkTDHsOMNoJK83ukgTyNQwOz4IfYQtxqkLVnz5nhg7EG6CeUofwyhgV
	 FqaLYi+mLu6CnaOZLUOyHh2sRF+RkeCmeFBpWdKB2/wIqv5P/TxfJYX3IgJqCIekbm
	 dyaxlVSrZf+K1XGw3c+JGDbsDFjMMVcmzFy017yUOq/XW5mCkB9znE3yBAo+sjXFrU
	 D3/LIj1ZMEcOw==
Received: by mail-vs1-f53.google.com with SMTP id y8so12812063vsq.0;
        Mon, 30 Jan 2023 07:04:54 -0800 (PST)
X-Gm-Message-State: AO0yUKUZOmfw29yUIJXgZ88LEJVEngBy8sgtfkBNQ3nPR3hcHWlt5yZT
	5CylwU6XPrqbQc/xNVZoAstLFjnFbp7+q0zOdQ==
X-Google-Smtp-Source: AK7set+hZraBztww+lgC8qx204C8V9L5htt85m/SDlWTCczhWl723RbgSQuPGeGVqFZxYylGIiZSxrnXAgLr+5AEgsw=
X-Received: by 2002:a67:fe41:0:b0:3ea:c8c:48a5 with SMTP id
 m1-20020a67fe41000000b003ea0c8c48a5mr2455575vsr.53.1675091093363; Mon, 30 Jan
 2023 07:04:53 -0800 (PST)
MIME-Version: 1.0
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com> <20230126135049.708524-6-rick.wertenbroek@gmail.com>
In-Reply-To: <20230126135049.708524-6-rick.wertenbroek@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 30 Jan 2023 09:04:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJSZ7v-YSOyUu2zJ0Yu2pU+qm=hRtoyQpdmQdhs1tirDg@mail.gmail.com>
Message-ID: <CAL_JsqJSZ7v-YSOyUu2zJ0Yu2pU+qm=hRtoyQpdmQdhs1tirDg@mail.gmail.com>
Subject: Re: [PATCH 5/8] PCI: rockchip: Added dtsi entry for PCIe endpoint controller
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, wenrui.li@rock-chips.com, 
	rick.wertenbroek@heig-vd.ch, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mikko Kovanen <mikko.kovanen@aavamobile.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_072339_006140_7598A9E0 
X-CRM114-Status: GOOD (  20.29  )
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

On Thu, Jan 26, 2023 at 7:52 AM Rick Wertenbroek
<rick.wertenbroek@gmail.com> wrote:
>
> Added missing PCIe endpoint controller entry in the device tree. This
> entry is documented in :
> Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt
> The status is disabled by default, so it will not be loaded unless
> explicitly chosen to.
>
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 9d5b0e8c9..5f7251118 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -265,6 +265,31 @@ pcie0_intc: interrupt-controller {
>                 };
>         };
>
> +       pcie0_ep: pcie-ep@f8000000 {
> +               compatible = "rockchip,rk3399-pcie-ep";
> +               #address-cells = <3>;
> +               #size-cells = <2>;

These are only needed when you have child nodes. Additionally, it
would not be a PCI bus which is the only case that has 3 address
cells.

There's a schema for this in linux-next now. Please test this change
with that. It should point out the above issue and maybe others.

> +               rockchip,max-outbound-regions = <32>;
> +               clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
> +                       <&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
> +               clock-names = "aclk", "aclk-perf",
> +                               "hclk", "pm";
> +               max-functions = /bits/ 8 <8>;
> +               num-lanes = <4>;
> +               reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0xfa000000 0x0 0x2000000>;
> +               reg-names = "apb-base", "mem-base";
> +               resets = <&cru SRST_PCIE_CORE>, <&cru SRST_PCIE_MGMT>,
> +                       <&cru SRST_PCIE_MGMT_STICKY>, <&cru SRST_PCIE_PIPE> ,
> +                       <&cru SRST_PCIE_PM>, <&cru SRST_P_PCIE>, <&cru SRST_A_PCIE>;
> +               reset-names = "core", "mgmt", "mgmt-sticky", "pipe",
> +                               "pm", "pclk", "aclk";
> +               phys = <&pcie_phy 0>, <&pcie_phy 1>, <&pcie_phy 2>, <&pcie_phy 3>;
> +               phy-names = "pcie-phy-0", "pcie-phy-1", "pcie-phy-2", "pcie-phy-3";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pcie_clkreqnb_cpm>;
> +               status = "disabled";
> +       };
> +
>         gmac: ethernet@fe300000 {
>                 compatible = "rockchip,rk3399-gmac";
>                 reg = <0x0 0xfe300000 0x0 0x10000>;
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
