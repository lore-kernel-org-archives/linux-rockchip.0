Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E045FC3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 19:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WU3LjCtvqzYGLLdgaePHhvFwT4BUwCAjNumS5bBuOiY=; b=CF7asP7LBBLFK8
	yUMk2rQzrHCJ8/sR1qlDOtuo/NpxUsk7g8595OvzcPFcDrWjgfG9wxIjeoHjIUNB0psGPjVa4XZZC
	T/Rw+8xsfY9bDeSV9WrBQEF1byUFRM+HSZH+5iS7roRfXSqIo70D3feqX10YSoZh+Oaj3V8rHR5B2
	YvVoRaPCHiLwlOVVghqSh1aSuE3GjdSnS+jhOCDBAb/yUqiBLc7/W45R4ER9ta2OgUmD8RSXnXa22
	0VNIvwdyo5F3hwMm2DvjPeEFS870EHVS+FsWQmaSfSAMnOuCEuTvgOfFaXjxjj+DH/xekusOfSGgS
	wjFabBcnhMk/W7yed8WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYVka-0000000CRzO-0tJI;
	Mon, 29 Jul 2024 19:09:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYVkX-0000000CRyb-3NN4;
	Mon, 29 Jul 2024 19:09:39 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYVkP-00079A-SW; Mon, 29 Jul 2024 21:09:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sam Edwards <cfsworks@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jonathan Bennett <jbennett@incomsystems.biz>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Daniel =?utf-8?B?S3VraWXFgmE=?= <daniel@kukiela.pl>,
 Sven Rademakers <sven.rademakers@gmail.com>, Joshua Riek <jjriek@verizon.net>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add PCIe pinctrls to Turing RK1
Date: Mon, 29 Jul 2024 21:09:28 +0200
Message-ID: <2401016.9fHWaBTJ5E@diego>
In-Reply-To: <659dfd80-5962-4265-836d-5761c3e41ca0@incomsystems.biz>
References: <20231208062510.893392-1-CFSworks@gmail.com>
 <66f413d2-1a5b-b9e3-3c86-35a1d150f486@gmail.com>
 <659dfd80-5962-4265-836d-5761c3e41ca0@incomsystems.biz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_120937_868492_AE6F81C2 
X-CRM114-Status: GOOD (  38.00  )
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

Hi Jonathan, Sam,

Am Mittwoch, 5. Juni 2024, 21:45:42 CEST schrieb Jonathan Bennett:
> On 12/8/23 11:27 AM, Sam Edwards wrote:
> > On 12/8/23 04:05, Heiko St=FCbner wrote:
> >> Am Freitag, 8. Dezember 2023, 07:25:10 CET schrieb Sam Edwards:
> >>> The RK3588 PCIe 3.0 controller seems to have unpredictable behavior =

> >>> when
> >>> no CLKREQ/PERST/WAKE pins are configured in the pinmux. In =

> >>> particular, it
> >>> will sometimes (varying between specific RK3588 chips, not over =

> >>> time) shut
> >>> off the DBI block, and reads to this range will instead stall
> >>> indefinitely.
> >>>
> >>> When this happens, it will prevent Linux from booting altogether. The
> >>> PCIe driver will stall the CPU core once it attempts to read the =

> >>> version
> >>> information from the DBI range.
> >>>
> >>> Fix this boot hang by adding the correct pinctrl configuration to the
> >>> PCIe 3.0 device node, which is the proper thing to do anyway. While
> >>> we're at it, also add the necessary configuration to the PCIe 2.0 nod=
e,
> >>> which may or may not fix the equivalent problem over there -- but is =

> >>> the
> >>> proper thing to do anyway. :)
> >>>
> >>> Fixes: 2806a69f3fef6 ("arm64: dts: rockchip: Add Turing RK1 SoM =

> >>> support")
> >>> Signed-off-by: Sam Edwards <CFSworks@gmail.com>
> >>> ---
> >>>
> >>> Hi list,
> >>>
> >>> Compared to v1, v2 removes the `reset-gpios` properties as well -- =

> >>> this should
> >>> give control of the PCIe resets exclusively to the PCIe cores. (And =

> >>> even if the
> >>> `reset-gpios` props had no effect in v1, it'd be confusing to have =

> >>> them there.)
> >>
> >> Hmm, I'd think this could result in differing behaviour.
> >>
> >> I.e. I tried the same on a different board with a nvme drive on the =

> >> pci30x4
> >> controller. But moving the reset from the gpio-way to "just" setting t=
he
> >> perstn pinctrl, simply hung the controller when probing the device.
> >
> > Ah, I'm guessing it died in:
> > ver =3D dw_pcie_readl_dbi(pci, PCIE_VERSION_NUMBER);
> >
> > If so, that's the same hang that this patch is aiming to solve. I'm =

> > starting to wonder if having muxed pins !=3D 1 for a given signal upset=
s =

> > the RC(s). Is your board (in an earlier boot stage: =

> > reset/maskrom/bootloader) muxing a different perstn pin option to that =

> > controller (and Linux doesn't know to clear it away)? Then when you =

> > add the perstn pinctrl the total number of perstns muxed to the =

> > controller comes to 2, and without a reset-gpios =3D <...>; to take it =

> > away again, that number stays at 2 to cause the hang upon the DBI read?
> >
> > If so, that'd mean the change resolves the hang for me, because it =

> > brings the total up to 1 (from 0), but also causes the hang for you, =

> > because it brings the total up to 2 (away from 1).
> >
> >>
> >> So I guess I'd think the best way would be to split the pinctrl up =

> >> into the
> >> 3 separate functions (clkreqn, perstn, waken) so that boards can inclu=
de
> >> them individually.
> >
> > Mm, maybe. Though that might be more appropriate if a board comes =

> > along that doesn't connect all of those signals to the same group of =

> > pins. I worry that attempting to solve this hang by doing that will =

> > instead just mask the real problem.
> >
> >>
> >> Nobody is using the controller pinctrl entries so far anyway :-) .
> >
> > Then it's interesting that this board requires them in order to avoid =

> > a hang on boot. I'll see if there's anything else that I can find out.
> =

> I've just finished testing the latest iteration of this patch with =

> 6.10-rc2 on my RK1 on a Turing Pi 2 carrier board. I can confirm that =

> unpatched mainline fails to boot with the same hang described here, and =

> the patch does make the board boot again.

Can you possibly test if

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D28b8d7793b8573563b3d45321376f36168d77b1e

changes anything? In 6.11-rc1 now.

The PERST# toggling happening before that patch could've caused
issues with your PCIe device.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
