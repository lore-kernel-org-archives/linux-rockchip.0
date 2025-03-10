Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C517C282DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 07:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jM7tT6BkYxO/1WsH5ibpZCM9Z1JcPf0EzYvg9OZBB1A=; b=fDA1KebmI8bl8b
	yyYX+bOqC0k6ZKCUn1F+uWRhqmDIm5zEWdrLj0uooxVGdCF4nWQJiYaytiPeZi3kyJ5aBlzo+0Wtb
	RT/NkYPobuY47eXPEc03iUdRUwSGdfeDk6iY9GHWNk1LvXX+snrHARoi3xx7+teHIo8wjjF7tUiYc
	Vs2fYsFwZobSYP9RyF1QO1cmvhNaIDt39xVGr4SAodQI0bl9byhSq1UNrENu9ZRreWEOnmcVR88Co
	d5wk1RJZwWNgFxyCx09Go0zVdQobbJqpjKhMI6uFNbzTQ7lSZ/Eick1RlQgvAXHILAPiT4LFaNEbM
	Luo+1945JQb5hZnd1fMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trXXl-00000001kWw-4Awz;
	Mon, 10 Mar 2025 07:27:21 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trXTa-00000001jnX-2OPL;
	Mon, 10 Mar 2025 07:23:03 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 2F03425BCC;
	Mon, 10 Mar 2025 08:22:59 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZMGQERGogw6S; Mon, 10 Mar 2025 08:22:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741591378; bh=ernuOloDM88O4OqBSQAmgvrlP6Ekdag/9GbGQz9YjjE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Yj/q1LrQrDqhoAQxcFGJitqVJn0Wd0MC2+TfDG2DkygRosf9vfRzzLbO12hs34tDP
	 23dnklqB4edGqqxDfIFDuTC01YosBXfFK/Cq8TRJHsxhtVrGZxmtmBCVGK5DZKVtwr
	 ujhWSayOid/kDRa9mHIG0lZZqaDpVecLmmRnLpVt59Wn9Wm3CMbmp9LSacLPUW445m
	 0DFwI0SfuCbs8gKtMptl08ovavQZsiJWrjxRBGMwLdhfS9XEJwQ2RPPJGRXnuSOTo+
	 Vtrt4etL/rqP57sDrUC+CIo2cvW6kAP2F+2rFcCDcqB5f4e0gVILarRn2GNlpOgX8V
	 o833i3xp+NRcA==
Date: Mon, 10 Mar 2025 07:22:45 +0000
From: Yao Zi <ziyao@disroot.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: andi.shyti@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	heiko@sntech.de, jonas@kwiboo.se, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add I2C controllers for RK3528
Message-ID: <Z86TRS4iLm66AqW6@pie>
References: <20250309070603.35254-3-ziyao@disroot.org>
 <20250309080025.15825-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250309080025.15825-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_002302_744487_B5F93C46 
X-CRM114-Status: GOOD (  12.61  )
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

On Sun, Mar 09, 2025 at 04:00:25PM +0800, Chukun Pan wrote:
> Hi,
> 
> > +		i2c0: i2c@ffa50000 {
> > +			compatible = "rockchip,rk3528-i2c",
> > +				     "rockchip,rk3399-i2c";
> > +			reg = <0x0 0xffa50000 0x0 0x1000>;
> > +			clocks = <&cru CLK_I2C0>, <&cru PCLK_I2C0>;
> > +			clock-names = "i2c", "pclk";
> > +			interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
> 
> It would be better to add default pinctrl for all i2c nodes
> using m0 group. (Only 1 group of pinctrl for i2c4 and i2c7)

Seems i2c2, i2c4 and i2c7 could be assigned to only one set of pins,
for them I'll add default pinctrls. For the other controllers, I prefer
to keep pinctrls in board-level devicetree, which is easier to read.

Other Rockchip SoCs (like rk3588) seem to provide default pinctrls even
for those capable of multiple groups of pins, so I'm not sure whether
it's necessary to keep the style synchronized. Will add if the
maintainer considers it's better.

> Thanks,
> Chukun
> 
> -- 
> 2.25.1
> 

Thanks,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
