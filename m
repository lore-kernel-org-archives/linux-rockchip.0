Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5AF7C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Feb 2022 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWgQWnT/yhJOnAjyjSts7VzjdHYKtFioo2fonILkJQw=; b=qOcOvuanvaBFJz
	saq6Irtji6ya63uuyVvE9sbgM58Rg+2cj6VMgj7syjewFsvrRfmfZfPzfWhrQvRnKX87ddkW6dWXo
	JegG+dhP5zZ+Dji3YViLVnzIiMPBKL2wYvpmGTStDbYHF7ptRjz71kADqenD7vKzTVRJ1Q+XOfmKE
	BnPTVFVtChIGYbJfzlj9yqexq0O0nWyKYWdtVGQ+Xaz2Ft2MkeBiAXR2qcNPybgkgcxkiWYfG07ta
	R19VH9qi/OfFlhBMnOzuWVgs/hZ27cSlUD6b60Lq4WwBHXNuTbqY2LkxfuwPAm09Hd/0C3lM5c1Ug
	ny2wAM0WQfaiv2nfnJQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFxXm-004EA4-BD; Fri, 04 Feb 2022 12:18:26 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFxWU-004DSS-Tw; Fri, 04 Feb 2022 12:17:08 +0000
Received: by mail-ed1-x535.google.com with SMTP id n10so12758067edv.2;
 Fri, 04 Feb 2022 04:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=eHBHzUia9mruyB4YUukSDrxzx6AfeOgulQdxUcrQ01Q=;
 b=SBeg0hAuVOVt3vAT8e1Ie0QdqByT0wbgDPzNIQNUUEAT1U4w1LOaL2DptiroXUHdfE
 Hkrw7cPb7cj5GDaCbStOaPaUkw+JP8qfpoQiCSQYYYzt4FjfH4dHw8qvlQk+lind9mtp
 dHPvgQrqwYy45MqJB4mDWxMKbNgBBqcPMb+bpbwtcCxJzm6woxWG90oMXT0We4Q9BuK+
 8BNiPi6096ZHmkyprgC6Qrb+KtcsmS/EoDebY+VBVw52SHkXM6yv+oRDOS7tscUg05a8
 8awoA+Fq3UtBbdMH+QgXWfx15LjDMS5MOCIxWjajedF5rl7RKVdADQThId4tJbTWSxy8
 FU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=eHBHzUia9mruyB4YUukSDrxzx6AfeOgulQdxUcrQ01Q=;
 b=NyYShTI2+yeBS4oXad6s4I2Yr5abRZmt0U15IVCKf2Ndm4R9jX4N1amB++bEX6WS6z
 M4DCyHaDjPgltoyLBELVzaFdZHkSuEbP4qqevllaIf8yjJyPRii8BkfenuCr5JEsT+9d
 tP/6gzVDuTjab7Mk1QecL2qKSRfa53UirfD3+RSRL8AF58j9oOXQff3aZxXILY6c0vFy
 g7fksq3kl383Wp70GBbYNm9KzxNr/2u9iw2/8ww7+/KYmpFbCxlFSuSVlTVwvwejpxFX
 As3WL6OE7nVIFSwyC7XP7M8MpDaMKyC9IWeELZ4JMcYFQ7PHGhjxajoZirWW2qoPKNTo
 MosA==
X-Gm-Message-State: AOAM530GtVDma6P+EJOGqBAqOEDo+SK3bZst1p925jVOjh7mbguR8C7n
 RKBbq7yHwYrsJKoF44oE+xk=
X-Google-Smtp-Source: ABdhPJwNGOsK4+pWoc1ci4iXaJJz7WgHa2jxbtSwbSsa9Axav2aDtMiirV3zHvkRizynn7vEBUFnvQ==
X-Received: by 2002:a05:6402:40cd:: with SMTP id
 z13mr2737770edb.119.1643977024173; 
 Fri, 04 Feb 2022 04:17:04 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 d15sm610498ejw.143.2022.02.04.04.17.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Feb 2022 04:17:03 -0800 (PST)
Message-ID: <72304aa8-6845-250b-dc0e-5122428b8dd8@gmail.com>
Date: Fri, 4 Feb 2022 13:17:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 3/4] phy: rockchip: add naneng combo phy for RK3568
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de,
 cl@rock-chips.com, kever.yang@rock-chips.com, lee.jones@linaro.org,
 wulf@rock-chips.com, Frank Wunderlich <frank-w@public-files.de>
References: <20211230084815.28110-1-yifeng.zhao@rock-chips.com>
 <20211230084815.28110-4-yifeng.zhao@rock-chips.com>
 <4838413b-c424-cf55-0699-9cd8ac23d9c2@gmail.com>
In-Reply-To: <4838413b-c424-cf55-0699-9cd8ac23d9c2@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220204_041707_019025_8518A394 
X-CRM114-Status: GOOD (  11.12  )
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

Hi Heiko, Frank and others,

China is on new year vacation.

Question for Heiko:
With xpcs in a separate node, how do we pass phy modes from gmac to
xpcs, multiphy in a correct DT way?
Can we brand xpcs as phy?
Please advise.

Johan
===

Found example for the way Rockchip connects sgmii in the manufacturer DT.
https://github.com/Poco-Ye/rk-ethernet/blob/master/SGMII.rar

From gmac1.txt:

> &mdio1 {
>         sgmii_phy: phy@1 {
         sgmii_phy: phy@0 { // ???

What is correct?

>                 compatible = "ethernet-phy-ieee802.3-c22";
>                 reg = <0x0>;

C45E
Clause 45 PHY Enable
When this bit is set, Clause 45 capable PHY is connected to MDIO.
When this bit is reset, Clause 22 capable PHY is connected to
MDIO.
Values:
1'b0: Clause 45 PHY is disabled
1'b1: Clause 45 PHY is enabled

>         };
> };
>
>
> &combphy2_psq {
> +       rockchip,sgmii-mac-sel = <1>;
>         status = "okay";
> };
>
>
> &gmac0 {
> 	phy-mode = "sgmii";
> 	
> 	rockchip,pipegrf = <&pipegrf>;
> 	rockchip,xpcs = <&xpcs>;
>
> 	snps,reset-gpio = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> 	snps,reset-active-low;
> 	/* Reset time is 20ms, 100ms for rtl8211f */
> 	snps,reset-delays-us = <0 20000 100000>;
>
> 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>;
> 	assigned-clock-parents = <&gmac1_xpcsclk>;
>
> +	pinctrl-0 = <&gmac1m0_miim>;
> 	power-domains = <&power RK3568_PD_PIPE>;
> 	phys = <&combphy2_psq PHY_TYPE_SGMII>;
> +	phy-handle = <&sgmii_phy>;
>
> 	status = "okay";
> };

===

Proposal:
xpcs driver passes mode info to multiphy driver.
Phy arg is used for gmac source selection for PHY_INTERFACE_MODE_SGMII
and PHY_INTERFACE_MODE_QSGMII.

> 	phys = <&xpcs 0>;

===

{
	gmac0_xpcsclk: xpcs-gmac0-clock {
		compatible = "fixed-clock";
		clock-frequency = <125000000>;
		clock-output-names = "clk_gmac0_xpcs_mii";
		#clock-cells = <0>;
	};

	gmac1_xpcsclk: xpcs-gmac1-clock {
		compatible = "fixed-clock";
		clock-frequency = <125000000>;
		clock-output-names = "clk_gmac1_xpcs_mii";
		#clock-cells = <0>;
	};

	xpcs: syscon@fda00000 {
		compatible = "rockchip,rk3568-xpcs", "syscon";
		reg = <0x0 0xfda00000 0x0 0x200000>;
		clocks = <&cru PCLK_XPCS>;
		clock-names = "pclk_xpcs";

>		phys = <&multiphy2>;

		power-domains = <&power RK3568_PD_PIPE>;
 		rockchip,pipegrf = <&pipegrf>; // Switch between gmac0 and gmac1
		status = "disabled";
	};
}

&mdio1 {
         sgmii_phy: phy@0 {
                 compatible = "ethernet-phy-ieee802.3-c22";
                 reg = <0x0>;
         };
 };


&multiphy2 {
         status = "okay";
};


&gmac0 {
	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>;
 	assigned-clock-parents = <&gmac1_xpcsclk>;

 	phys = <&combphy2_psq PHY_TYPE_SGMII>;
	phy-handle = <&sgmii_phy>;
 	phy-mode = "sgmii";

> 	phys = <&xpcs 0>;

	pinctrl-0 = <&gmac1m0_miim>;

 	snps,reset-gpio = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
	snps,reset-active-low;
 	/* Reset time is 20ms, 100ms for rtl8211f */
 	snps,reset-delays-us = <0 20000 100000>;

	status = "okay";
};

On 1/3/22 19:26, Johan Jonker wrote:
> Hi Yifeng, Kishon, rob+dt,
> 
> Some comments, have a look if it's useful.
> 
> ====
> 
> Could the DT and phy maintainer advise the correct/right driver
> structure to Yifeng, so that we can move forward!
> 
> ====
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
