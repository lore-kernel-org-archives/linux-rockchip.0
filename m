Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31391C61DA3
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Feb 2023 21:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h6KbTq6jDI5XNLOGzWS3Z+n+BOTytC6qUiiTubPq8RM=; b=HKgpQ0vAcgSZUzsH8wA7/DNOw7
	evBRbLlNcO+d5p0GBNKwfWakSPu1ReTuibWHjfM/RSBL7RaGsat2LPSIaPT2bLBgRG4L9hhYbogs8
	qBNQvO6Nfw1p66gr/7/Z3ll03nukj3aOH9sToKQ5pBMwBe+2EEWlv0ZKbIR5EiVXf3T31cCJVo4e2
	kOskAhJGg4d+octm1JqgBJuC9R5WPHgHbRr5yySIhDnp1Llg4E6wsREWbRMF19imrUaOU87E/Rc5U
	C7gMwG9DmlUJEt6LzwQJk+JV9OuCDnK4OkDD5aMQTIY7pJgTQdjLEMddKDzJVeTsDVEC47bIn9I0X
	Ovz2EozA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUaS8-009rk8-9d; Tue, 21 Feb 2023 21:45:36 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUaRx-009rh9-AJ; Tue, 21 Feb 2023 21:45:28 +0000
Received: from mercury (unknown [185.209.196.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C5CA566018CC;
	Tue, 21 Feb 2023 21:45:19 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1677015919;
	bh=761xPQkJM0oEydNj0kc2km4NGckuk3gQK2X6qwAwsmM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZW24+KMVusCOnw8yBDxG1jTOSO/ty2UUhFUlnIESecRwN6b1mJoa+LvDuCT9NNNHe
	 u9naJo7wfRdMVRzW6pTlI5MysLsqiDxP+j13puvGnmEPshCbeIiJuZkyrQY5b0V58u
	 7fwKecmDU6Z5RinWp2eISSGssA4YxX+F6EkzBC7U6auiH250GGt4WolKbq5BbOQaCM
	 uGY/ZLnRalO2F9B/Mcu1qhSrKBG2ZTaNlhHtFMKr2i8KAJdS4m+lMLJx85aNYieNab
	 UqzC0/ryXAfRzUNq+Gst0QYBHichHxRNwgtFhmdwptCrsWexMlSdfKgbCc6E54/E2o
	 K1bPrNwrjwQTw==
Received: by mercury (Postfix, from userid 1000)
	id 41ED110603FE; Tue, 21 Feb 2023 22:45:17 +0100 (CET)
Date: Tue, 21 Feb 2023 22:45:17 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, Qu Wenruo <wqu@suse.com>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, lucas.tanure@collabora.com
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
Message-ID: <20230221214517.5rjtwpftcj5dugdl@mercury.elektranox.org>
References: <cover.1675498628.git.wqu@suse.com>
 <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
 <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com>
 <7A70CB52-1892-4455-B419-AD00298DE7B5@gmail.com>
 <CAMdYzYovDsiw5zwMvPbLaVcfpryX6K7r2zuVUVkAtYxiwzKGUQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdYzYovDsiw5zwMvPbLaVcfpryX6K7r2zuVUVkAtYxiwzKGUQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_134525_748690_D482CBB5 
X-CRM114-Status: GOOD (  47.87  )
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
Content-Type: multipart/mixed; boundary="===============0397077701532867210=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0397077701532867210==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bh34lp6cwssbhrxq"
Content-Disposition: inline


--bh34lp6cwssbhrxq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi everyone,

On Tue, Feb 21, 2023 at 01:55:48PM -0500, Peter Geis wrote:
> On Tue, Feb 21, 2023 at 1:04 PM Piotr Oniszczuk
> <piotr.oniszczuk@gmail.com> wrote:
> > > Wiadomo=C5=9B=C4=87 napisana przez Qu Wenruo <wqu@suse.com> w dniu 21=
=2E02.2023, o godz. 01:14:
> > > On 2023/2/21 02:25, Piotr Oniszczuk wrote:
> > >>> Wiadomo=C5=9B=C4=87 napisana przez Qu Wenruo <wqu@suse.com <mailto:=
wqu@suse.com>> w dniu 04.02.2023, o godz. 09:47:
> > >>>
> > >>> This series is based on the existing upstream work from Sebastian
> > >>> Reichel:
> > >>> https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/=
log/?h=3Drk3588 <https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-=
misc.git/log/?h=3Drk3588>
> > >>>
> > >>> And I'm a completely newbie to arm64 world, thus if there is someth=
ing
> > >>> wrong, feel free to point out and I'm pretty happy to learn from the
> > >>> failure.
> > >>>
> > >>> [BACKGROUND]
> > >>> RK3588S and RK3588 have PCIE supports, it's done by the following 3
> > >>> controllers:
> > >>>
> > >>> - PCIE2.0x1 lane @fe180000 (both RK3588S and RK3588)
> > >>> - PCIE2.0x1 lane @fe190000 (both RK3588S and RK3588)
> > >>>  Thes two are all connected to a naneng combo phy each, normally sh=
ared
> > >>>  with SATA or USB.
> > >>>
> > >>> - PCIE2.0x1 lane @fe170000 (RK3588 exlusive)
> > >>>  This one is also connected to a naneng combo phy, normally shared
> > >>>  with SATA or USB.
> > >>>
> > >>> - PCIE3.0x4 lanes @fe15000 (RK3588 exclusive)
> > >>>
> > >>> And unlike other boards, ROCK5B is utilizing PCIE extensively, its
> > >>> network controller (RTL8125 2.5Gbps Ethernet) is connected to the
> > >>> PCIE2.0 lane at fe190000, and an M.2 slot is attached to the PCIE3.=
0x4
> > >>> lanes.
> > >>>
> > >>> [WORKING]
> > >>> Currently the series is able to bring up the PCIE3.0x4 lanes and
> > >>> properly boot from an NVME at that M.2 slot of Rock5B boards.
> > >>>
> > >>> [NOT WORKING]
> > >>> All PCIE2.0 lanes connected to naneng combo phy are not working.
> > >>> I tried forward porting the extra handling from downstream, but it =
only
> > >>> results hanging at probing (causing RCU stall).
> > >>>
> > >>> [EXTRA WANRING]
> > >>> - PCI MSI initialization warning
> > >>>  WARNING: CPU: 7 PID: 1 at drivers/pci/msi/msi.h:121 pci_msi_setup_=
msi_irqs+0x38/0x4c
> > >>>
> > >>>  This seems to be caused by the fact that we are still using legcacy
> > >>>  msi irqs?
> > >>>
> > >>>  I checked up the gic and its dts, can not figure out why (all pret=
ty
> > >>>  the same just like rk3399 and rk3568).
> > >>>  Any help would be appreciated.
> > >>>
> > >>> - pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus =
00-0f] (conflicts with (null) [bus 00-0f])
> > >>>  The vendoer kernel also has this problem, but my RK3399 board with
> > >>>  upstream kernel didn't trigger this at all, but something else lik=
e:
> > >>>
> > >>>    pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), re=
configuring
> > >>>
> > >>>  Then:
> > >>>
> > >>>    pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
> > >>>
> > >>>  Not sure if it's something missing or can be just ignored.
> > >>>
> > >>> [PCI DMESG]
> > >>> With this patchset, the PCI initialization and nvme would look like=
 this:
> > >>>
> > >>> [    0.142984] rockchip-dw-pcie fe150000.pcie: host bridge /pcie@fe=
150000 ranges:
> > >>> [    0.143653] rockchip-dw-pcie fe150000.pcie:       IO 0x00f010000=
0..0x00f01fffff -> 0x00f0100000
> > >>> [    0.144463] rockchip-dw-pcie fe150000.pcie:      MEM 0x00f020000=
0..0x00f0ffffff -> 0x00f0200000
> > >>> [    0.145261] rockchip-dw-pcie fe150000.pcie:      MEM 0x090000000=
0..0x093fffffff -> 0x0900000000
> > >>> [    0.154022] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 ob=
, 8 ib, align 64K, limit 8G
> > >>> [    0.360415] rockchip-dw-pcie fe150000.pcie: PCIe Gen.3 x4 link up
> > >>> [    0.361099] rockchip-dw-pcie fe150000.pcie: PCI host bridge to b=
us 0000:00
> > >>> [    0.361731] pci_bus 0000:00: root bus resource [bus 00-0f]
> > >>> [    0.362236] pci_bus 0000:00: root bus resource [io  0x0000-0xfff=
ff] (bus address [0xf0100000-0xf01fffff])
> > >>> [    0.363113] pci_bus 0000:00: root bus resource [mem 0xf0200000-0=
xf0ffffff]
> > >>> [    0.363744] pci_bus 0000:00: root bus resource [mem 0x900000000-=
0x93fffffff pref]
> > >>> [    0.364450] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
> > >>> [    0.365005] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x3fffff=
ff]
> > >>> [    0.365583] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x3fffff=
ff]
> > >>> [    0.366159] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000ff=
ff pref]
> > >>> [    0.366801] pci 0000:00:00.0: supports D1 D2
> > >>> [    0.367193] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > >>> [    0.368647] pci_bus 0000:01: busn_res: can not insert [bus 01-ff=
] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
> > >>> [    0.369681] pci 0000:01:00.0: [1d97:5216] type 00 class 0x010802
> > >>> [    0.370277] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x0000ff=
ff 64bit]
> > >>> [    0.370975] pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0001ff=
ff pref]
> > >>> [    0.372130] pci 0000:00:00.0: BAR 0: no space for [mem size 0x40=
000000]
> > >>> [    0.372742] pci 0000:00:00.0: BAR 0: failed to assign [mem size =
0x40000000]
> > >>> [    0.373381] pci 0000:00:00.0: BAR 1: no space for [mem size 0x40=
000000]
> > >>> [    0.373988] pci 0000:00:00.0: BAR 1: failed to assign [mem size =
0x40000000]
> > >>> [    0.374628] pci 0000:00:00.0: BAR 14: assigned [mem 0xf0200000-0=
xf02fffff]
> > >>> [    0.375259] pci 0000:00:00.0: BAR 6: assigned [mem 0xf0300000-0x=
f030ffff pref]
> > >>> [    0.375923] pci 0000:01:00.0: BAR 6: assigned [mem 0xf0200000-0x=
f021ffff pref]
> > >>> [    0.376590] pci 0000:01:00.0: BAR 0: assigned [mem 0xf0220000-0x=
f022ffff 64bit]
> > >>> [    0.377281] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > >>> [    0.377762] pci 0000:00:00.0:   bridge window [mem 0xf0200000-0x=
f02fffff]
> > >>> [    0.426841] pcieport 0000:00:00.0: PME: Signaling with IRQ 33
> > >>> [    0.427487] pcieport 0000:00:00.0: AER: enabled with IRQ 33
> > >>> [    0.625353] nvme nvme0: pci function 0000:01:00.0
> > >>> [    0.625774] nvme 0000:01:00.0: enabling device (0000 -> 0002)
> > >>> [    0.717069] nvme nvme0: Shutdown timeout set to 8 seconds
> > >>> [    0.723025] nvme nvme0: allocated 64 MiB host memory buffer.
> > >>> [    0.816820] nvme nvme0: 1/0/0 default/read/poll queues
> > >>> [    0.818079] sdhci-pltfm: SDHCI platform and OF driver helper
> > >>> [    0.820678]  nvme0n1: p1 p2
> > >>>
> > >>>
> > >> Qu, all
> > >> I=E2=80=99m playing with your work on my rock5b as I want to have wo=
rking Eth on rock5b.
> > >> My code is from https://git.kernel.org/pub/scm/linux/kernel/git/sre/=
linux-misc.git/log/?h=3Drk3588 <https://git.kernel.org/pub/scm/linux/kernel=
/git/sre/linux-misc.git/log/?h=3Drk3588> + your=E2=80=99s PCIE3 patches.
> > >> SBC boots from sd card, I see PCIE related logs in dmesg. but no rtl=
8125 is detected.
> > >> PCIE logs are like this:
> > >>     8.207810] rockchip-dw-pcie fe150000.pcie: host bridge /pcie@fe15=
0000 ranges:
> > >> [    8.208501] rockchip-dw-pcie fe150000.pcie: Parsing ranges proper=
ty...
> > >> [    8.209089] rockchip-dw-pcie fe150000.pcie:       IO 0x00f0100000=
=2E.0x00f01fffff -> 0x00f0100000
> > >> [    8.209944] rockchip-dw-pcie fe150000.pcie:      MEM 0x00f0200000=
=2E.0x00f0ffffff -> 0x00f0200000
> > >> [    8.210740] rockchip-dw-pcie fe150000.pcie:      MEM 0x0900000000=
=2E.0x093fffffff -> 0x0900000000
> > >> [    8.218918] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 ob,=
 8 ib, align 64K, limit 8G
> > >> [    9.324473] rockchip-dw-pcie fe150000.pcie: Phy link never came up
> > >> [    9.325186] rockchip-dw-pcie fe150000.pcie: PCI host bridge to bu=
s 0000:00
> > >> [    9.325786] pci_bus 0000:00: root bus resource [bus 00-0f]
> > >> [    9.326266] pci_bus 0000:00: root bus resource [io  0x0000-0xffff=
f] (bus address [0xf0100000-0xf01fffff])
> > >> [    9.327097] pci_bus 0000:00: root bus resource [mem 0xf0200000-0x=
f0ffffff]
> > >> [    9.327713] pci_bus 0000:00: root bus resource [mem 0x900000000-0=
x93fffffff pref]
> > >> [    9.328364] pci_bus 0000:00: scanning bus
> > >> [    9.328729] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
> > >> [    9.329258] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x3ffffff=
f]
> > >> [    9.329807] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x3ffffff=
f]
> > >> [    9.330354] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000fff=
f pref]
> > >> [    9.330984] pci 0000:00:00.0: supports D1 D2
> > >> [    9.331356] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > >> [    9.331858] pci 0000:00:00.0: PME# disabled
> > >> [    9.332309] pci 0000:00:00.0: vgaarb: pci_notify
> > >> [    9.333735] pci_bus 0000:00: fixups for bus
> > >> [    9.334106] pci 0000:00:00.0: scanning [bus 01-ff] behind bridge,=
 pass 0
> > >> [    9.334731] pci_bus 0000:01: busn_res: can not insert [bus 01-ff]=
 under [bus 00-0f] (conflicts with (null) [bus 00-0f])
> > >> [    9.335668] pci_bus 0000:01: scanning bus
> > >> [    9.336052] pci_bus 0000:01: fixups for bus
> > >> [    9.336416] pci_bus 0000:01: bus scan returning with max=3D01
> > >> [    9.336903] pci 0000:00:00.0: scanning [bus 01-ff] behind bridge,=
 pass 1
> > >> [    9.337503] pci_bus 0000:00: bus scan returning with max=3Dff
> > >> [    9.337994] pci 0000:00:00.0: BAR 0: no space for [mem size 0x400=
00000]
> > >> [    9.338570] pci 0000:00:00.0: BAR 0: failed to assign [mem size 0=
x40000000]
> > >> [    9.339175] pci 0000:00:00.0: BAR 1: no space for [mem size 0x400=
00000]
> > >> [    9.339749] pci 0000:00:00.0: BAR 1: failed to assign [mem size 0=
x40000000]
> > >> [    9.340356] pci 0000:00:00.0: BAR 6: assigned [mem 0xf0200000-0xf=
020ffff pref]
> > >> [    9.340991] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > >> and nothing more :-(
> > >> Are you progressing maybe with pcie on rock5b?
> > > fe150000 is the PCIE3.0 controller, on Rock5B, that's the M.2 slot.
> > >
> > > But for R8125, it's on a PCIE2.0 controller, which is using naneng co=
mbo phy.
> > >
> > > I'm not able to bring the PCIE2.0 part up yet, it always hangs at PCI=
E2.0 initialization, thus only the PCIE3.0 part is submitted to the list.
> > >
> > > Thanks,
> > > Qu
> >
> > Yes. Indeed.
> > I'm trying to add pci2.0 and it looks i meet the same problem probably.
> >
> > I backported (from well working neggles quartz64pro repo I assume):
> > https://github.com/neggles/linux-quartz64/commit/2ad84e89fc75b82c783345=
b72c97f5d7e3d45723
> > https://github.com/neggles/linux-quartz64/commit/4ac44c2b53758eca671d69=
5d19b456d1849d7e14
> > https://github.com/neggles/linux-quartz64/commit/714c5e01d8f0f73b3a49cb=
dee29e3ffe0f3353dd
> > https://github.com/neggles/linux-quartz64/commit/64971f9c85f27e29c44b31=
a0c326ea4bb8ec3c56
> >
> > then i added rock5b pcie dt enablements (basing on radxa BSP):
> > https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-6.2=
/files/1058-arm64-dts-rockchip-enable-pcie-rock5b.patch
> >
> >
> > this gives me quite clean 6.2 mainline boot log with hang at pcie2 init=
 (pls see below)
> >
> > I assume https://github.com/neggles/linux-quartz64/commits/linux-quartz=
64 repo works well on Quartsz64 board - so I indirectly assume above backpo=
rts should give us working pice2.0.
> >
> > It fails on rock5b - so I conclude: issue/error is on my side and is re=
lated to my rock5b specifics.
> > Unfortunately I don=E2=80=99t owe Quartz64 board so can't verify correc=
tness of my backports by testing on Quartz64pro.
> >
> > I=E2=80=99m curious about opinion of smarter than me guys=E2=80=A6
>=20
> If the phy is misconfigured, not powered, or the clocks aren't going
> active, you'll hang when the controller tries to touch it. Unless
> someone has completed the combophy rk3588 bits the driver is not
> functional yet for rk3588.
>=20
> Looking at the current 6.2 release, I only see the rk3568 compatible,
> so you'll need to add support for rk3588 before it will work.
>=20
> Very Respectfully,
> Peter Geis

Sorry for being late to the game. Life is busy right now :)

I haven't looked into PCIe myself so far, but some of my colleagues
are looking into native network support on Rock 5B (and thus PCIe2
controller).

Apart from the obvious (missing rk3588 support in the combophy driver),
the clocks will need some work. The clock tree implementation I upstreamed
is different from the downstream implementation. Downstream has some
clocks that have two parent clocks using a hacked implementation
that's obviously not upstreamable as is. The upstream implementation
currently only describes the first parent. More details are in the
following comment:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/dri=
vers/clk/rockchip/clk-rk3588.c#n16

Back than I wrote that I do not understand the exact need (the TRM
does not describe the clock tree unfortuantely), I found this
explanation:

https://lore.kernel.org/dri-devel/20220309094139198367142@rock-chips.com/

To get the advanced blocks properly running upstream this needs a
solution for this. Note that trying to access registers that are
not clocked properly will result in a hang (as Peter already wrote).

Apart from that the power-domain controller might need some of the
extra bits downstream has.

Last but not least the GIC controller is handled differently in
downstream. For that following the workaround that has been used for
rk356x should also work for rk3588.

TLDR: This is not trivial. It's really unfortunate, that the board
is not just using the native ethernet :(

P.S.: We try to keep a rk3588 / Rock 5 status matrix maintained here:

https://gitlab.collabora.com/hardware-enablement/rockchip-3588/notes-for-ro=
ckchip-3588/-/blob/main/mainline-status.md

Greetings,

-- Sebastian

--bh34lp6cwssbhrxq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmP1O2gACgkQ2O7X88g7
+ppFUQ//RxKgImdU01p3rMw7Hofa1Dp8KZA5CcDnsZ0IeexZzF9oDCQ9+qw+/gjT
B4K5wgz7FezgFy5jbe8HNZlLVBo6dYvVRFxZSOz89MHYKRmCSljtM98CQ+i3LW6N
tOduJJL8T9poIhHN7QDS4RTbynpkfNvqxDR7lRZOZJLMEqBoUHCVAN5YK1ggnMsU
eCRNAT3gdzEmpqoabJh6HSwExmiXZlZ6DM4s+9A/qiES+c1Xup24k0OfoTsJe7Mf
+T2ToYRxhyskm5OLHM3iBjneLlwEx1JVm5oasYUA+2WVS6RpmqAKoAHTxHzc10gB
+GFcwX78LsV6ThyPaYyDT6emIyBRqAUyRkS0rF+TSlc1FLEmN1IVFojsV4cLenWB
pu+Xxyccltpw7SCic8jBstt1TfkXBLETRM+6xOT1b6qYJNEMKhcLyM6hw6z5Wepp
hBxvbVSzBlLCVKsmf1pIWFWx+6erw0NrAHPvzwCsmdf0aZnTBURy2PaGaaU29+AC
vRZviCzpe8AdPNXnMIPoagnC9xqq3/CtqoyLqWYW2WOr/3OGoClDm3oSntYPPBJG
tbiy0uPXdHDefSqUUoH/0xfzH89JL/EXtPFoWDw2+VTQfHJD3vSRZq/9dgwG++B6
+NMHnZZY35hFp3T69tV60bld52QuO3hbyxNW0MMpL/cwsI1/04I=
=TzMt
-----END PGP SIGNATURE-----

--bh34lp6cwssbhrxq--


--===============0397077701532867210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0397077701532867210==--

