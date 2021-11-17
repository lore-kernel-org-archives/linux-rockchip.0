Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43C06C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 15:14:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0A17D61212
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 15:14:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0A17D61212
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZwvlPtMDQ5AGNdUMxoL2gm60P+zKwDSk7JJhSkDWp0=; b=AQiagE/CgvzYWP
	YHIkLTk0UwoiTNrScUaKI5DGtwBrOHDv9SOnjEB/CeXboio8vH9UwMgiwXQt1nJR2aWWmga4AsAXG
	Dhdu9yCTFTA/rI7NAnC4LydCgUsbxh16Qy5a87pMNFLt8Z7l6z5KH/d+k6E+c3iCyvUMn8coCnJui
	qiNTbDqxsX8ngIk1mZVIPmwVmva54bJIGyQDQPtD+vA60KRL8mmoKyDXVz1vvWoA4/kbvrS2fj7D4
	2prdfrkZ4KojMXnwUTIbwkf+yGFojD5dQZYqrYfB3fJ/10/z5ZExe9z4YuCyGU6jRqYJOR/xc/LxG
	7RNs9aTdyaA8QCmjtnNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnMdN-005L07-CH; Wed, 17 Nov 2021 15:14:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnMd9-005KwI-Tg; Wed, 17 Nov 2021 15:13:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9847E6187F;
 Wed, 17 Nov 2021 15:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637162027;
 bh=tZcW3zqZ2p/birQX+yJqTxjMCnP2s9t1QtRYxsWFEvg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oIOu6k7U8x9r4zq5aO5Af2XLg9EDYk/zb+z2ROUdG1bD9jpEslt+h6NtPF6+RhN+P
 Jq2PuElAE7Dbjw2ifM1uH+waLOktg3qXhuq499SSCevqiBErqmCUOYxkZOFpklLmeW
 6J01yU8SK7SmRVRhkxlzFpJCZcZ8Veq+UMOt/zP7FrEt54R0Wzf/M2CFbs2PAXa5kA
 3Ls0bA13u5oKnMOuy+20Ys7uvWekxEBxXKD5z4YpSzRLp+/tnY13486JwjKfWQ6Z9S
 2yckAJX0jtioZahzfU6A8E2jHcb9WgKxHY7LAP//J66xlIGfQcwmmWxDOa+NnqGeI5
 gc3LetSR2xpFQ==
Received: by mail-ed1-f48.google.com with SMTP id b15so12654648edd.7;
 Wed, 17 Nov 2021 07:13:47 -0800 (PST)
X-Gm-Message-State: AOAM532ZU+M1AZ5pprF8/REnKiK1GxBCTwMoZkZFpAoLb1brkFckoJKP
 D17DZVNiHXIu/inTf2a+gR6nywk01AFWdDVicQ==
X-Google-Smtp-Source: ABdhPJxbUqiZ3x7XGc+stsRtoSA5zmeY1KdzaMhPnAoOA8KUFon4ufB68HU/KiMA99G4V5+M/1oDu9//tiRxhtlVKTA=
X-Received: by 2002:a17:907:a411:: with SMTP id
 sg17mr22354933ejc.84.1637162025900; 
 Wed, 17 Nov 2021 07:13:45 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-10-s.hauer@pengutronix.de>
In-Reply-To: <20211117143347.314294-10-s.hauer@pengutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Wed, 17 Nov 2021 09:13:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJH4NZkte_2w9i1zf9UrkYZx3du4ja5i__Vzki5p13zBQ@mail.gmail.com>
Message-ID: <CAL_JsqJH4NZkte_2w9i1zf9UrkYZx3du4ja5i__Vzki5p13zBQ@mail.gmail.com>
Subject: Re: [PATCH 09/12] arm64: dts: rockchip: rk356x: Add HDMI nodes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_071348_014589_2A23AA38 
X-CRM114-Status: GOOD (  16.45  )
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

On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Add support for the HDMI port found on RK3568.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 65 ++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 6ebf7c14e096a..53be61a7ce595 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -472,18 +472,36 @@ vp0: port@0 {
>                                 #address-cells = <1>;
>                                 #size-cells = <0>;
>                                 reg = <0>;
> +
> +                               vp0_out_hdmi: endpoint@0 {
> +                                       reg = <0>;
> +                                       remote-endpoint = <&hdmi_in_vp0>;
> +                                       status = "disabled";
> +                               };
>                         };
>
>                         vp1: port@1 {
>                                 #address-cells = <1>;
>                                 #size-cells = <0>;
>                                 reg = <1>;
> +
> +                               vp1_out_hdmi: endpoint@0 {
> +                                       reg = <0>;
> +                                       remote-endpoint = <&hdmi_in_vp1>;
> +                                       status = "disabled";
> +                               };
>                         };
>
>                         vp2: port@2 {
>                                 #address-cells = <1>;
>                                 #size-cells = <0>;
>                                 reg = <2>;
> +
> +                               vp2_out_hdmi: endpoint@0 {
> +                                       reg = <0>;
> +                                       remote-endpoint = <&hdmi_in_vp2>;
> +                                       status = "disabled";
> +                               };
>                         };
>                 };
>         };
> @@ -499,6 +517,53 @@ vop_mmu: iommu@fe043e00 {
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
> +                        <&cru HCLK_VOP>;
> +               clock-names = "iahb", "isfr", "cec", "hclk";
> +               power-domains = <&power RK3568_PD_VO>;
> +               reg-io-width = <4>;
> +               rockchip,grf = <&grf>;
> +               #sound-dai-cells = <0>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
> +               status = "disabled";
> +
> +               ports {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       hdmi_in: port@0 {


The schema says there is only 1 'port' node. Please run schema
validation when making DT changes.

However, an HDMI bridge should also define an output port to a
connector node (or another bridge). So the fix is to allow 'port@0'
and add an output port.

> +                               reg = <0>;
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               hdmi_in_vp0: endpoint@0 {
> +                                       reg = <0>;
> +                                       remote-endpoint = <&vp0_out_hdmi>;
> +                                       status = "disabled";
> +                               };
> +
> +                               hdmi_in_vp1: endpoint@1 {
> +                                       reg = <1>;
> +                                       remote-endpoint = <&vp1_out_hdmi>;
> +                                       status = "disabled";
> +                               };
> +
> +                               hdmi_in_vp2: endpoint@2 {
> +                                       reg = <2>;
> +                                       remote-endpoint = <&vp2_out_hdmi>;
> +                                       status = "disabled";
> +                               };
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
