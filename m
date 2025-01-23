Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39FF7C02182
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jan 2025 14:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kHsDUWP2TBgmyEwD0Gi8mI1M4d4dK1kxDECImHcdCA=; b=On+2U5IW/WwlZs
	Z+ZsstJ0CU/4jDg6zMCUiTqcGLYlISEXVMYLlspeKPC0QoIJX6iW7KNaIU0qneGjVbSvL2QEloPyt
	PegQxCslihC61gt6aBEIVhSMeMfcRIG3pcBZ70fvExzBrusADV52TzG+fDofSR5PY1OKPL7sBRA56
	4G5Us4l5L44HsZScXntV3mnQVjrVHV/2itafZ49KOpCOFI+MQhOmevoJkeZWEPooiiDm4zgMB+axB
	qMa56QmBYadJUgtJqDgYqhTwzgB/B3ErpBz0dQVbooKB/hPjfLXAugdGxAls3GpkgZdZXqVq3AlN+
	bf5RsJMwIeIKSwApaNkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taxyY-0000000CaEs-2reJ;
	Thu, 23 Jan 2025 14:14:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taxxG-0000000CaBI-1iBf;
	Thu, 23 Jan 2025 14:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=p45VRGSOINDkIe67fS7iMHwxgFxopSCi/AOBqXhbGmY=; b=PCE/eU1cR5E4izlRpAsI4T/9kB
	wMjBLLP7jpiRt5hRywPqLzFOP9znGs/41NBm8LY51kAtFu1U486ybynDSB+4bowYWKeroh/3Afxkr
	K8Bl7ANBbmj7RGQLiNgvCvqZbzgrDS/zfngZqNgpM6RCLJjSse87rIfBn52s5IZNUVox3/pNMwe5I
	Ql6wQhMndduKU4g9Xx85tx0if7cyxvZB0KgMQkIyhcTJ5yYtKACoVk7JhEk8eefjxrNgfvJRcOTGV
	8jGTwKL9UGV69qWAx8jEoYYGw5ULQB6gOpS62MZ8CKdtzQjwiPYO3OD2O46YAcuWUkiInIpSZzxYU
	Bewwg5HA==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1taxx8-0007CK-B4; Thu, 23 Jan 2025 15:13:02 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>,
 Niklas Cassel <cassel@kernel.org>
Cc: Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jagan Teki <jagan@edgeble.ai>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: minimal support for Pre-ICT tester
 adapter for RK3588 Jaguar + add overlay tests
Date: Thu, 23 Jan 2025 15:13:01 +0100
Message-ID: <3324197.aV6nBDHxoP@diego>
In-Reply-To: <Z5EY6uMmDCgfOzGO@ryzen>
References: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <6dd64754-fe72-4288-9724-b3cdaf193b3b@cherry.de> <Z5EY6uMmDCgfOzGO@ryzen>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_061310_479402_25FBE29E 
X-CRM114-Status: GOOD (  27.56  )
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

Am Mittwoch, 22. Januar 2025, 17:12:26 CET schrieb Niklas Cassel:
> On Wed, Jan 22, 2025 at 04:38:16PM +0100, Quentin Schulz wrote:
> > So essentially, if SPL_ATF_NO_PLATFORM_PARAM is selected (the default for
> > RK356x, RK3588, forced on on RK3308, enabled for the majority of RK3399
> > boards, enabled for all RK3328 boards) the DT won't be passed to TF-A so no
> > issue in terms of size on that side.
> > If it is not selected, for TF-A < 2.4 (released 20201117, 4 years ago), a
> > DTB bigger than 64KiB will crash TF-A.
> > If it is not selected, for TF-A >= 2.4, a DTB bigger than 128KiB will result
> > in TF-A not being able to read the DTB (for Rockchip, that means not being
> > able to derive the UART settings (controller and baudrate) to use, and will
> > use the compile-time default instead).
> 
> Not everyone is using binary blobs from Rockchip.
> On my rock5b (rk3588), I'm building the bootloader using buildroot,
> which is using upstream TrustedFirmware-A (v2.12).
> 
> 
> > In short, I don't know where to go with that additional piece of
> > information, but this is a bit bigger than simply moving things around and
> > adding compile-time tests for overlay application.
> 
> This is significant information indeed.

I guess the question is, can this hurt existing devices?

As Quentin mentioned, this only affects DTs that get handed over from
U-Boot to TF-A (and maybe OP-TEE).

So the whole range of things loading their DT from extlinux.conf or
whatever are not really affected.


DTs U-Boot can hand over are 2 types,
(1) built from within u-boot and
(2) stored somewhere centrally (SPI flash).


Case (1) is again not affected, as U-Boot (and other bootloaders) may
very well sync the DTS files, but generally not the build-system, so if
U-Boot (or any other bootloader) creates DTBs with symbols is completely
their own choice.


And for case (2) I see the manufacturer being responsible. Having the DT
in central storage makes it somewhat part of a "bios"-level in the hirarchy
and the general guarantee is that new software _will work_ with older DTs,
but the other way around is more a nice to have (old SW with new DTB).

So if some manufacturer has a centrally located DTB this does not matter
until they upgrade, and when that happens I do expect testing to happen
at the manufacturers side, before rolling out a "bios update"


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
