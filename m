Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 844D1CA9EBE
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys8jdSFZ2Z0vdJxFaIZaz+8ioG6SxKsO2tJcg68txlI=; b=IG0QZTsZR4KoLr
	aXltTEN2bghqSVKBX5lV1QK4RAbIfP7ZxeHMPLQ2uJaLK5btHf9W7UV2hPM5HnfXUqTlPE2SfsENv
	UYb8SXM2LgfLTtv0mvDGm40p+dG1NZBeisB2jYr/VEaYocEaAUFAN+WderQgkIL0NCeYo2PQsPf9h
	wSHnzHZtOcZ1/0v2rgJcGL9uUqdPPzT14rZClWZaQCzdGqErkQapxVEnpVxjeCwqxtZIFs+RW4R6L
	1MrqI9MMqWFlyxOIE4F+1Kx7dx9ddRa2HvP6g/ZZ0ixIky7v+bRBnAsf6L9h6hDNEuzbPulEbCX9Z
	C0ZxSF0fTiu5hSlQ74AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFTTQ-00000007mKA-0JSC;
	Sat, 10 Oct 2026 09:34:36 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFTTN-00000007mJJ-42Of
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Oct 2026 09:34:35 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1791624869; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=EEyL3qzzRRzgHRu8VtXOT+mY5lV5YpqodTH09NGf95sKxR9GenSYOD2+y73Ze3H7SayRiWRW1snQMBlZoqLhHACfykJ8odR9m17tKsdDK3OY/davyZChaegKFWYXB9/aqoUIGQ8rxbgk2Z23j1sFjH8cx0hmjwRHH+8flXmEp6A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1791624869; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=rZsrZLkn4mQTThBrfu1oy9TNax+FKoxpczJfFI0TXoM=; 
	b=aQJSmdC4PhvkAPlrGWDF1PhoHN3Wty9/hhcC1cGraXSgEwrvry6C8dgapBgH7/UcjLIXtcAk+F6BuNiIUaaMlGNPq18eJLWGeuYnEv68bUt2xW1P7mrwcBrqsvMgpEVdlYo0FIw9iSiDg2BQo9qn0heOdm1HrkW0/3H0HAepNaA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1791624869;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=rZsrZLkn4mQTThBrfu1oy9TNax+FKoxpczJfFI0TXoM=;
	b=Lho6FrVpmAGzNVKlmc9iS2Bmnqvso77akvLhk/XlaY3Wkp30Lei97ycNGnQ9AngP
	6/u37eE7a97IDBoZByzOLAO/NEd15v+dq7G75hwVY/NOPk2tQKSIc9u6Q5H0FdX77FR
	JzZrO1NQ4cwY7fJaRUu1VPpGE6MXL+98xLtaipfU=
Received: by smtp.zohomail.com with SMTPS id 1791624867359835.895102375287;
	Sat, 10 Oct 2026 02:34:27 -0700 (PDT)
Message-ID: <d0ad70a4-f797-4757-b650-55b521889a95@collabora.com>
Date: Sat, 10 Oct 2026 11:34:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RK3588 combo MIPI D-PHY (phy-rockchip-samsung-dcphy) + real
 sensor - any known-working case?
To: Evan O' Keeffe <evanokeeffe@gmail.com>
Cc: linux-rockchip@lists.infradead.org, =?UTF-8?B?5qWK5pm65oiQ?=
 <jason98166@gmail.com>
References: <CAJ8W1Lxmz8W2tS+HmwS6_CbDWUR9ATccUtR8+XK4hSGxjOx6gg@mail.gmail.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <CAJ8W1Lxmz8W2tS+HmwS6_CbDWUR9ATccUtR8+XK4hSGxjOx6gg@mail.gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_023434_091794_168486E8 
X-CRM114-Status: GOOD (  18.22  )
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

Hi Evan,

On 10/9/26 12:24, Evan O' Keeffe wrote:
> Hi Michael, my name is Evan O'Keeffe and I'm working on the RK3588S for a new
> hyperspectral camera project.
> 
> Thanks for the rkcif/VICAP work landing in 7.2 - got us most of the way to a
> working camera on an Orange Pi CM5 tablet board (RK3588S). Wanted to
> check something
> specific before I sink more time into it.
> 
> The board's camera connector is wired (confirmed independently from two
> vendor BSP devicetree files) to CSI host port 0 via the Samsung combo D-PHY
> (phy-rockchip-samsung-dcphy.c / mipidcphy0), not the simple Innosilicon D-PHY
> path. Sensor is a Sony IMX219, 2-lane, 456MHz link frequency (912Mbps HS
> rate).
Thanks for your interest! Sounds like a very interesting project!

> Everything I can check in software passes cleanly:
> - i2c control plane confirmed solid (chip ID, MODE_SELECT, CSI_LANE_MODE,
>   DPHY_CNTRL all read back correct via direct register reads during an
>   active stream attempt)
> - Sensor confirmed actually in streaming mode (MODE_SELECT=0x01) via
>   register readback, not just assumed
> - Full media pipeline validates and v4l2_subdev_enable_streams succeeds
>   through the whole chain (sensor -> dw-mipi-csi2rx -> rkcif-mipi0)
> - The DCPHY's PLL_LOCK status bit genuinely passes (real register poll in
>   samsung_mipi_dcphy_pll_enable, not just computed math) at the exact
>   target rate (912MHz, prediv=1, fbdiv=76)
> - CSI2 host CONTROL register readback exactly matches what
>   dw_mipi_csi2rx_start() computes and writes
> 
> But: zero interrupts ever fire on rockchip-cif's IRQ line, and ERR1/ERR2 on
> the CSI2 host stay at 0x0 - total silence, not corrupted data. Hardware
> itself is confirmed good (same cable/sensor works fine on the vendor BSP
> kernel/driver stack).
> 
> Before I go further down the register-level rabbit hole: do you know of
> any real-sensor test case that's actually exercised the combo-PHY path
> (as opposed to the simple-PHY ports 2/4 that the ROCK 5B+ IMX415 testing
> covered)? Everything I can find in current devicetrees that enables
> mipidcphy0/1 does so with no sensor attached at all, so I can't tell if
> this is a known gap, a subtle bring-up step I'm missing, or something
> board-specific on my end.
> 
> Happy to share full register dumps / dmesg / devicetree if useful.
>

This all has a simple cause: the support for the CSI part of the DC
Combo PHY has not yet landed in mainline. However, there is ongoing work
you can test [0].

@Jason: Is there an upcoming v5 of your patches BTW?

Hope that helps!

Best regards,
Michael

[0]
https://lore.kernel.org/linux-rockchip/20260821-dcphy-rx-v1-v4-0-f1797634233d@gmail.com/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
