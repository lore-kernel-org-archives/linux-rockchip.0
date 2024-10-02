Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA3B6CF31B5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 11:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQFXPc8eSmlRNRbzumEkW9NcWTICv5Pf0jqG7TXUuZY=; b=JNMMTmUC2n6dWE
	JMTdfog+n4QGaRFwEzR598FNtKktrgAP9j/q5KiCuVBVfNaczXnd8nPe1omqnJ2p0Z2spOeaA+J39
	NHd6Om87/suCB2V0qYGBaMSyX38athtW9cUxnwlifyT8GkyPnaitSZY5ME0xMvpjI7KhYRnlZ9ICm
	FgbqVNa+vTrgjLuH6tYMjvkK6Orr/sJDKKaxzYENxPv31PUAPwtzTBUYXsnR+Q803AOvy4sjSC+v/
	bUyxyw/BSNgI2g0ZyVEEQNFEU45fbhWNMfK19xAJoiyQOGbV8D7j7Ky/XebWXpX1jfPHgVEriW3BG
	Zz82YEUyIvpd5hi25RBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svxWd-00000005esS-3l0u;
	Wed, 02 Oct 2024 11:28:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svxQA-00000005dUN-2yXo
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 11:21:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8yQoGaDgxuxLfwZVgMTO9viyoYC2SUQOzfF3ILBG6Fo=; b=kqbJSc8FOievQf35zdCAhbv5JO
	DnyJ5vh5Svh2dflMN8LrUfld6U41k9d41ohoWSTp09CMTTxa3Y7SoEyYMYbfXEoS47jxJmyWuyLa7
	ih3ClUYnAhRsRqVtjrDJoQJ0bPNumUHGM2Fw2YDsfMxn0Ir0JD8/dif2L6GzUsaJIhHnJro7SElvk
	WMAajm/gLC3HNzDQIFrt2CK3FKAs93eBumhKnaug/QWSaygOt4LpDryyeDsob2sWR0REF04Mm25y3
	6cLwjDNQn/wOziX3k3BoHNkKPp+o+J7k4kpkxTHGb2o6KGeU1Mb1MkbJOn7wgqEEOI3H33plwY46I
	h4JFgcDg==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svxQ6-0005rI-Sm; Wed, 02 Oct 2024 13:21:26 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>, Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: change pinctrl for pcie2x1l2 for Radxa
 ROCK 5A
Date: Wed, 02 Oct 2024 13:21:26 +0200
Message-ID: <863960074.0ifERbkFSE@diego>
In-Reply-To: <d33dc43d-ac90-41af-94c0-e4dd1bc0654f@kwiboo.se>
References: <20241001235046.1710-1-naoki@radxa.com>
 <d33dc43d-ac90-41af-94c0-e4dd1bc0654f@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_042130_848887_32847495 
X-CRM114-Status: GOOD (  22.35  )
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

Am Mittwoch, 2. Oktober 2024, 12:50:29 CEST schrieb Jonas Karlman:
> Hi,
> 
> On 2024-10-02 01:50, FUKAUMI Naoki wrote:
> > for pcie2x1l2, only pcie20x1_2_perstn_m0 is required, and its function
> > needs to be GPIO to avoid freeze at "pci enum" without PCIe device on
> > u-boot.
> > 
> > change pinctrl definitions for pcie2x1l2. no functional change is
> > intended on Linux kernel.
> 
> After the split and addition of pcie2_reset I think this patch is no
> longer needed? The issue this patch tried to fix was already
> fixed/changed in "arm64: dts: rockchip: Split up RK3588's PCIe pinctrls".
> 
> Looks like this now just rename pcie2_reset to pcie20x1_2_perstn_m0?

and removes the other pinctrl states clkreqn and waken .

In a previous version they mentioned that this somehow affects u-boot.

But you're right, that renaming of the pinctrl reset entry should
definitly not be in there.


> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> > Changed in v3:
> > - rebase on next/master
> > Changed in v2:
> > - reword commit message
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> > index 87fce8d9a964..841ac9a30628 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> > @@ -310,7 +310,7 @@ rgmii_phy1: ethernet-phy@1 {
> >  };
> >  
> >  &pcie2x1l2 {
> > -	pinctrl-0 = <&pcie2_reset>, <&pcie20x1m0_clkreqn>, <&pcie20x1m0_waken>;
> > +	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
> >  	pinctrl-names = "default";
> >  	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> >  	vpcie3v3-supply = <&vcc3v3_wf>;
> > @@ -325,12 +325,12 @@ io_led: io-led {
> >  	};
> >  
> >  	pcie {
> > -		pow_en: pow-en {
> > -			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
> > +			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> >  		};
> >  
> > -		pcie2_reset: pcie2-reset {
> > -			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		pow_en: pow-en {
> > +			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
> >  		};
> >  	};
> >  
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
