Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B919CFB448
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 16:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7u/DxQuVmX4Z96oBd2b5cpR4Nnbv+x6pdgzwjO1Dq4=; b=G4l1Iyv0W6oUH2
	oy8YDX6t2kPINA7urAB75KELLtTSwzegDpYHdVLHjFXgNDs5KYdxXGQmnglGUmjKytCPKpSjh3hAT
	cC5ID46cqkL/TPk4f7PxbwY005zZBT5CMk0ZTenPNKL9rnkqRvI5lVPO9xp0ojQzyLNKvvmgDUEIa
	VN1ZlVlDDHG1r/Crj3zHS/YHOGD2bf1FrItWSFF3hhRfSQhDtbJly1Zvts5SL0RdGomdyq9nnPb/N
	YrPjajiMkFGxfQLhUZC6OWpv6j/x//SCzNibB+kZhizsm54nJVbMenXzJIYQkiakMvRIcNkrU/Bv1
	v9n+E237AvfeB0DKKMKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqEm-0000000352G-1z8C;
	Mon, 07 Oct 2024 16:05:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqEJ-000000034wv-1h5u;
	Mon, 07 Oct 2024 16:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=a7fx3r4X0Bn5vVtLSFf9bGiuTv0w4FDi3+Uh57xb7q8=; b=m8z1sEitUmLKiuN6py9waIeldx
	e2GW+PBbulKxwu9bR8qWGg9AOuOSB7JEliz58I7NtG+PAuwM61xyPdBO7lgJvXpdQ1i1oQl6mD890
	4PKUXAN+gGVCpm1rdmYKN243a0uvoBaKmwny/ZMwny51z/5nqs6jxjFHkVXtA8C4yIKnSWRxF3wlt
	Ekc91xRC41tJuNDo8mGI1W2qPM0cwfOFYaj7qlm3gONO4iYzAkXCLqBfhedn/w4rIpce2mdOTpLQF
	QMW3aiUKl0GScRor6swJLwBNUDHAkTXTDj8ltrwF/gzx8cqgBmX0/te4gBWPJ7GXngbkB2IQL8O9+
	CXijg/hw==;
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sxqEF-0002YC-S6; Mon, 07 Oct 2024 18:04:59 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Andy Yan <andyshrk@163.com>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on rk3566 box
 demo
Date: Mon, 07 Oct 2024 18:04:59 +0200
Message-ID: <4607042.LvFx2qVVIh@diego>
In-Reply-To: <D4POH599C91R.OQUBX190GASQ@cknow.org>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-6-heiko@sntech.de>
 <D4POH599C91R.OQUBX190GASQ@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_090503_521350_1DD7417E 
X-CRM114-Status: GOOD (  21.43  )
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

Hi Diederik,

Am Montag, 7. Oktober 2024, 17:27:12 CEST schrieb Diederik de Haas:
> On Mon Sep 30, 2024 at 11:01 PM CEST, Heiko Stuebner wrote:
> > The expected clock-name is different (ext_clock -> extclk) and the wakeup
> 
> According to "brcm,bluetooth.yaml", 'extclk' is deprecated in favor of
> 'txco', so it seems better to use that?
> Same would be true for Rock960 boards (patch 6 of this series).

thanks for that catch. I mainly stumbled upon the "_" underscore, found the
clockname without but didn't take into account that there was a deprecated
flag set in the binding :-)


> > gpio properties are named differently when changing from vendor-tree to
> > mainline. So fix those to match the binding.
> >
> > Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")
> > Cc: Andy Yan <andyshrk@163.com>
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > index 0c18406e4c59..dd6fe964d618 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > @@ -449,9 +449,9 @@ &uart1 {
> >  	bluetooth {
> >  		compatible = "brcm,bcm43438-bt";
> >  		clocks = <&pmucru CLK_RTC_32K>;
> > -		clock-names = "ext_clock";
> > -		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > -		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > +		clock-names = "extclk";
> > +		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > +		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> >  		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> >  		pinctrl-names = "default";
> >  		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
