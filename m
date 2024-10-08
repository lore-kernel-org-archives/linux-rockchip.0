Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A578ECEFC56
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAvYWZ4ueBm1XPxixuIi3sHSbxWth4kdHENIgscvQVA=; b=Tjj4KUfS0yes8E
	dybXEJ2pW6UjQfPi0Kmew2rra+59mXs6LrlaAG62u+B3twIXDkDJXqMVxCrXrduu92pQ4oV0gfBpK
	nqMVtwWXE8lAvLV+ilMAbvLU5HsOUYuOkjAK6EglLT5klLs/ujmvvxx/Z4VP01k0JLiSDNtWsn+GC
	3r+6m82aq+SDxsW7EP9D+yN9WLxYY56h9ect9cSkIcASiLlsTbm9w1lM3oB/4/4+EqBslrFQCpUEv
	lniP8uGrqjQrt2SOFyKJqm6Pw7vio04MDYK9gBlOjHsOI6ZBuinmXojhdKaqEX4wtcbLwUJF0nMdu
	M4dAef020FWrJHw2NlDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syGoq-000000073Q4-3fcV;
	Tue, 08 Oct 2024 20:28:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syGo5-000000073Fs-2EUK;
	Tue, 08 Oct 2024 20:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=M4NnTSMddp+YfBMRH/oiahTSO5eeHY8eZ2vPTCt4xpY=; b=dKVfBIy0kcHcUqF+wwR4r75oIj
	DIXVhaf5W7W6pbOdxaRoYRwGMkfQ+kmsoPXA17zxtObjePruV3DuhaNN9+c08YkveVYyvOVJIxrGG
	YSej1zoR2KRp3bJl8waWyASdqF9FmDHtOzEwdD+kWBF8om8h+ROG03kGZIYcnI/T8L8gfoF1CK009
	pptLBF3HnQc/vExmt7TSvBKy6zvk83nsSYaVVc2ETnkr8mEOT8p2lKe6tlLHaAwkjm819lJqM0JJ1
	qZsQL4LFWBHjaFJemM3AjV9u444Ve4gabF/lD05jmBtoLfhzC6zlNjiW+GNW/Ut4l2xgvLuuLH+jJ
	t1S2NeUg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGo4-0007gx-1C; Tue, 08 Oct 2024 22:27:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Furkan Kardame <f.kardame@manjaro.org>
Subject: Re: [PATCH 3/8] arm64: dts: rockchip: Drop regulator-init-microvolt from
 rk3568-roc-pc
Date: Tue, 08 Oct 2024 22:27:43 +0200
Message-ID: <1812768.VLH7GnMWUR@diego>
In-Reply-To: <605c8024-ada7-4f2e-b18e-8d5c3f1bf612@kwiboo.se>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-4-heiko@sntech.de>
 <605c8024-ada7-4f2e-b18e-8d5c3f1bf612@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_132745_607433_D468C64C 
X-CRM114-Status: GOOD (  22.29  )
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

Hi Jonas,

Am Dienstag, 1. Oktober 2024, 00:55:42 CEST schrieb Jonas Karlman:
> Hi Heiko,
> 
> On 2024-09-30 23:01, Heiko Stuebner wrote:
> > regulator-init-microvolt is not part of any regulator binding and is
> > only used in the Rockchip vendor kernel. So drop it.
> 
> Mainline U-Boot is also a user of the regulator-init-microvolt prop,
> and use it to help configure an initial voltage on regulators during
> boot.
> 
> Mostly useful for regulators that has different min / max voltage and
> is not enabled by default or set to an unexpected voltage on boot, e.g.
> the typical npu regulator on rk356x defaults to 0.5v, yet needs to be
> around 0.9v during npu probe.
> 
> Maybe a better option would be to try add the init property to the Linux
> dt-bindning?

Looks like that topic comes up regularly, last time in

https://lore.kernel.org/linux-arm-kernel/4519023.cEBGB3zze1@phil/

and that still is true. DT is not a configuration-space, and if needed those
properties should be in the -uboot.dtsi

Heiko


> https://source.denx.de/u-boot/u-boot/-/blob/master/doc/device-tree-bindings/regulator/regulator.txt#L40
> 
> Regards,
> Jonas
> 
> > 
> > Fixes: 007b4bb47f44 ("arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc")
> > Cc: Furkan Kardame <f.kardame@manjaro.org>
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 3 ---
> >  1 file changed, 3 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> > index e333449ead04..2fa89a0eeafc 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> > @@ -272,7 +272,6 @@ vdd_logic: DCDC_REG1 {
> >  				regulator-name = "vdd_logic";
> >  				regulator-always-on;
> >  				regulator-boot-on;
> > -				regulator-init-microvolt = <900000>;
> >  				regulator-initial-mode = <0x2>;
> >  				regulator-min-microvolt = <500000>;
> >  				regulator-max-microvolt = <1350000>;
> > @@ -285,7 +284,6 @@ regulator-state-mem {
> >  
> >  			vdd_gpu: DCDC_REG2 {
> >  				regulator-name = "vdd_gpu";
> > -				regulator-init-microvolt = <900000>;
> >  				regulator-initial-mode = <0x2>;
> >  				regulator-min-microvolt = <500000>;
> >  				regulator-max-microvolt = <1350000>;
> > @@ -309,7 +307,6 @@ regulator-state-mem {
> >  
> >  			vdd_npu: DCDC_REG4 {
> >  				regulator-name = "vdd_npu";
> > -				regulator-init-microvolt = <900000>;
> >  				regulator-initial-mode = <0x2>;
> >  				regulator-min-microvolt = <500000>;
> >  				regulator-max-microvolt = <1350000>;
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
