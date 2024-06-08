Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59085C27C6E
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Jun 2024 14:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbZXVFOyOPTmxPLgtGH0Plyz74nRyu8yqtxXRwBYII0=; b=4pfO0ASvcDQ/Gk
	9DphrpOz7QdcjljK23Op+RViclBdEgZonbSPKyHkpomudExWPbkKzstBnFX9eLaeWVwrykUgtTb4R
	VuNHJS8QSv3oamYRLY7buUwpyDiZZWbbzosuKEEih9+DYHHcqUdndXsrKil56fnpnoWGvSOQOemby
	icf7s9f+2gLLOw7xu+7mUQhEBdiH20Ep3qliq3N8itNvzQX6b8JNDFUDmA5Y6mlU/GzoAdgFreWDw
	5OTUWSphr2+JojFXZP3t3j2BAyCSXi/Yi8S+dWsD6UTwmR5Jt/qu59r/VDkdQdPODhJU/BPUJYqhk
	iUoMmlahZMf7X3Qnv0/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFwxB-000000002Mx-3C2G;
	Sat, 08 Jun 2024 14:21:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFwx6-000000002K0-2f1s;
	Sat, 08 Jun 2024 14:21:53 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFwwy-0008KS-CO; Sat, 08 Jun 2024 16:21:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, kever.yang@rock-chips.com,
 Huang-Huang Bao <i@eh5.me>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] pinctrl: rockchip: fix pinmux bits for RK3328 GPIO3-B pins
Date: Sat, 08 Jun 2024 16:21:43 +0200
Message-ID: <5759165.44csPzL39Z@phil>
In-Reply-To: <3dab2269-a048-4750-bea8-cce245df075a@eh5.me>
References: <20240606125755.53778-1-i@eh5.me> <4786379.ElGaqSPkdT@phil>
 <3dab2269-a048-4750-bea8-cce245df075a@eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240608_072152_709791_9F0A3FAD 
X-CRM114-Status: GOOD (  21.13  )
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

Am Freitag, 7. Juni 2024, 16:46:19 CEST schrieb Huang-Huang Bao:
> 
> On 6/7/24 20:32, Heiko Stuebner wrote:
> > Am Donnerstag, 6. Juni 2024, 14:57:53 CEST schrieb Huang-Huang Bao:
> >> The pinmux bits for GPIO3-B1 to GPIO3-B6 pins are not explicitly
> >> specified in RK3328 TRM, however we can get hint from pad name and its
> >> correspinding IOMUX setting for pins in interface descriptions. The
> >> correspinding IOMIX settings for these pins can be found in the same
> >> row next to occurrences of following pad names in RK3328 TRM.
> >>
> >> GPIO3-B1:  IO_TSPd5m0_CIFdata5m0_GPIO3B1vccio6
> >> GPIO3-B2: IO_TSPd6m0_CIFdata6m0_GPIO3B2vccio6
> >> GPIO3-B3: IO_TSPd7m0_CIFdata7m0_GPIO3B3vccio6
> >> GPIO3-B4: IO_CARDclkm0_GPIO3B4vccio6
> >> GPIO3-B5: IO_CARDrstm0_GPIO3B5vccio6
> >> GPIO3-B6: IO_CARDdetm0_GPIO3B6vccio6
> >>
> >> Add pinmux data to rk3328_mux_recalced_data as mux register offset for
> >> these pins does not follow rockchip convention.
> >>
> >> Signed-off-by: Huang-Huang Bao <i@eh5.me>
> > 
> > This matches the information that I found in my TRM, thanks to your
> > detailed explanation.
> > 
> > Though I of course can't say if the TRM is just wrong or the hardware
> > changed after the pads-description was written.
> > 
> > Did you test the usage of these pins on your board?
> > 
> 
> My board(NanoPi R2S) is kinda integrated and does not have GPIO3 pins so
> I can't test these pins directly.
> 
>  From DTS for RK3328(arch/arm64/boot/dts/rockchip/rk3328*.dts*), there is
> pinctrl/cif-0/dvp_d2d9_m0 referencing part of GPIO3-B1+ pins(GPIO3-B1 to
> GPIO3-B4) that indeed matches "Table 15-1 TSP interface description"
> which contains hint pad names. And this DTS node exists from
> initial commit to add RK3328 dtsi
> (52e02d377a72 "arm64: dts: rockchip: add core dtsi file for RK3328 SoCs").

thanks for digging up this information, that makes sense and stuff looks
pretty much correct with everything combined.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
