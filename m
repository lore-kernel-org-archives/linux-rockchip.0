Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ACF9CF6D25
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 13:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/g3CmDaNioery6eAa61nJcyzfFT3J08SS3GotIgV1Hk=; b=Zpkpa/AzCp3DZj
	vDDDuvWFUxHGbWWfsLBxtedzaaYCrQmBti5SLFpBATjfGQBE4c+7L7m2eq4fFgbRFJBOAWKBqes1Z
	ZXqlOZi7+hc9wK1NxLypmyjwwBnCaPsz98EQ1ggIy/bC0ga62E2AIZFq3Oix2gAesm3nZz/uWouA4
	0SiKqOLVYABzf17lhNys/6E+H83IEqCYed0+SoXGbXk3XJQSCyWBjtCjhYJ9dYFtqxTLaixbpojD6
	/5EPLAUk4ZRkcuiwsFPN8JflgA77PI0y16HKLgBKZ3uJOYtiGwERhcG/vgZxi4dFdfmyNeBLId3e8
	kXwvptenIv75pgM4Sbbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svzOP-000000067kc-3ZCi;
	Wed, 02 Oct 2024 13:27:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svzMI-000000067Cy-19Mk
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 13:25:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=EOi2KrLNuzyS3zj1+5n/CSneCHIbqcWtBEH3sY4ZWRQ=; b=wtUtJbjGd7Ne86PVnhAzKPOJ4Z
	FLGhy/W8ly39IyO8m+eu/Ho5gZsIUZukxaHIRthaUBjVJfupnza5k1p+MU1lzFjGBKixwQzs3zLdW
	BFrJ8p+S/7ONNkMoKQ0XpTMnfezDphrcM2V1qErJv2GA3/FUPwE2t1uofbK83SAFDyftRwOk8WI4V
	hoBTbVyiLkj9aC/up5nQFOrWYBwNvOhqjwCKaOqNwBHmncfeQNGkcC7BcPWok27kCEaSmgy6u5dir
	yO5aW+s0w0jEv6VYabuG320+ktdo3giEhvWrLBaaZT+lkDPYfXp+wMnWKM52Mm+g2mXbhJj0J8vyq
	wD7mepjw==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svzME-0007XV-88; Wed, 02 Oct 2024 15:25:34 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>, Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: change pinctrl for pcie2x1l2 for Radxa
 ROCK 5A
Date: Wed, 02 Oct 2024 15:25:33 +0200
Message-ID: <2252674.NgBsaNRSFp@diego>
In-Reply-To: <6c339f52-671b-4afe-ab91-aebe1ee7a724@kwiboo.se>
References: <20241001235046.1710-1-naoki@radxa.com> <863960074.0ifERbkFSE@diego>
 <6c339f52-671b-4afe-ab91-aebe1ee7a724@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_062538_334656_1B1EE722 
X-CRM114-Status: GOOD (  22.91  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 2. Oktober 2024, 13:42:05 CEST schrieb Jonas Karlman:
> On 2024-10-02 13:21, Heiko St=FCbner wrote:
> > Am Mittwoch, 2. Oktober 2024, 12:50:29 CEST schrieb Jonas Karlman:
> >> Hi,
> >>
> >> On 2024-10-02 01:50, FUKAUMI Naoki wrote:
> >>> for pcie2x1l2, only pcie20x1_2_perstn_m0 is required, and its function
> >>> needs to be GPIO to avoid freeze at "pci enum" without PCIe device on
> >>> u-boot.
> >>>
> >>> change pinctrl definitions for pcie2x1l2. no functional change is
> >>> intended on Linux kernel.
> >>
> >> After the split and addition of pcie2_reset I think this patch is no
> >> longer needed? The issue this patch tried to fix was already
> >> fixed/changed in "arm64: dts: rockchip: Split up RK3588's PCIe pinctrl=
s".
> >>
> >> Looks like this now just rename pcie2_reset to pcie20x1_2_perstn_m0?
> > =

> > and removes the other pinctrl states clkreqn and waken .
> =

> This is not something that I think should have been done in the first
> place, the pins/signals exists in hw and schematics, however software
> is not using these signals.
> =

> > =

> > In a previous version they mentioned that this somehow affects u-boot.
> =

> The issue with U-Boot is that for pcie the pin used for reset-gpios must
> use gpio func pinconf, or pci enumerating in U-Boot will freeze the
> board.
> =

> "arm64: dts: rockchip: Split up RK3588's PCIe pinctrls" already changed
> to use the gpio func for the perstn pin, so the U-Boot issue should
> already have been resolved with that patch.
> =

> For Linux the pins gpio func is implicitly configured when the pcie
> driver request the reset-gpios pin. In U-Boot there exists some pinctrl
> overrides to solve freeze issues, those should also be sent upstream ;-)

ok, so I'll just drop this patch for now.

If some other use comes up, please resubmit.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
