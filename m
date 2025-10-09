Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3526DCCD185
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Oct 2025 14:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFXZ5ZLIwGmm8aCiistxyhKSfFlQHimWx4mQwbgf+9Y=; b=2d2TVog1LFlEwg
	XMKnes+8lMF2W29qEsjjBjdIeT0l1F6GcMZVq+m0iDXk7n7GjTe4eT0/KuVs8hnQ/tkSUyCiPwsYa
	zJjXxOV1SVPK6wMdE9wIbPFjxC1EZ8xNOudj6fRzQFTs4R6uwVw9YwfmJ7Ujrm4k2dlanQVFYbtoF
	MNL5PS81X8GmROyvWUmeErOprKze+xGrGXkEQ+3PpL1DBs4yp7MTffte4QTiehM72UP+f2hXhLohW
	WV10402jkCcJl8wR/4nmdsb1XGQ4HfBTeSyiM+9PlM1L+6Fdh7nCpbroJsZ/UJOggSGxSxHlpp6p0
	+KTf1EKsBFaaS7/QVgCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6rBt-00000006HG4-04ca;
	Thu, 09 Oct 2025 14:00:21 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6rBq-00000006HFU-1Y5l;
	Thu, 09 Oct 2025 14:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1y5MNw5pAX4zEDE7oHbM3Qb22NF+hb8K41cpqkfKay0=; b=qXzi3/7EvQikSz7+v6VhkyeIyY
	mrruz6GjdBUnEFBc00hilEBAoR7HPxjlOK7SkMaB5y/w+OB2W4DfoQ2gvvduFK7Jn5R9ZaSFLaBQi
	5MC5Ap9quFLTVLl4/3RteQ9wz/zoRyfugx9Jc5NDnvkO2RLGWvAD9tidUw90QwmaT54OAm5ESY7yR
	7xXE2wDGLl5PAEipZAnTw/3lYKU+VwN6cQHE6l7VmrjKPKz8KIm8b6UKwpiOGTgEZbRXoiw5wuD9H
	SMsImcO4DcLek2T69/tnTNWnlNPZroH/GNk19tXuib12c0RyofsGVl0Sc/lskeR3ZkNEQEXRYm0wA
	26Z98Mew==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44504)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1v6rBP-0000000074K-2fB0;
	Thu, 09 Oct 2025 14:59:51 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1v6rBI-000000004rQ-3dqH;
	Thu, 09 Oct 2025 14:59:44 +0100
Date: Thu, 9 Oct 2025 14:59:44 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Liangbin Lian <jjm2473@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, quentin.schulz@cherry.de,
	kever.yang@rock-chips.com, naoki@radxa.com, honyuenkwun@gmail.com,
	inindev@gmail.com, ivan8215145640@gmail.com,
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org,
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org,
	jbx6244@gmail.com, andrew@lunn.ch, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
Message-ID: <aOe_0EufouURu7R2@shell.armlinux.org.uk>
References: <20251009084416.45542-1-jjm2473@gmail.com>
 <20251009084416.45542-4-jjm2473@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251009084416.45542-4-jjm2473@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_070018_704506_E200C0AC 
X-CRM114-Status: GOOD (  16.69  )
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

On Thu, Oct 09, 2025 at 04:44:16PM +0800, Liangbin Lian wrote:
> +&gmac0 {
> +	phy-mode = "rgmii-id";
> +	clock_in_out = "input";
...
> +&gmac1 {
> +	phy-mode = "rgmii-id";
> +	clock_in_out = "input";

I am fine with what is being proposed here, but I think this
clock_in_out property needs fixing. The description for it is thus:

  clock_in_out:
    description:
      For RGMII, it must be "input", means main clock(125MHz)
      is not sourced from SoC's PLL, but input from PHY.
      For RMII, "input" means PHY provides the reference clock(50MHz),
      "output" means GMAC provides the reference clock.
    $ref: /schemas/types.yaml#/definitions/string
    enum: [input, output]
    default: input

The problems that I have here are:

1) the description states that the only possible value for this when in
   RGMII mode is "input" which is reasonable, because it's due to the
   RGMII specification. The driver code is perfectly able to determine
   whether RGMII has been specified, and set bsp_priv->clock_input
   itself, relieving DT of this need.

2) bsp_priv->clock_input is only used in gmac_clk_enable() when calling
   the SoC specific set_clock_selection() method. Only RK3528, RK3576,
   and RK3588 populate this method. Every other SoC supported by this
   driver still requires the property:

        ret = of_property_read_string(dev->of_node, "clock_in_out", &strings);
        if (ret) {
                dev_err(dev, "Can not read property: clock_in_out.\n");
                bsp_priv->clock_input = true;
        } ...

  If one doesn't provide it, one gets an error print, which is not nice
  I note that the DT binding doesn't list this property as required, so
  the code is at odds with the binding.

  (I note that your Rockchip SoC is RK3568, which doesn't implement this
  method.)

So, taking both these points together, the code should not be printing
an error if "clock_in_out" is missing when either:

a) RGMII is being used (or maybe only when RMII is being used?)
b) the set_clock_selection() method is not present for the SoC variant.

With the driver fixed as indicated above, I then think clock_in_out in
your descriptions becomes unnecessary, and should be removed.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
