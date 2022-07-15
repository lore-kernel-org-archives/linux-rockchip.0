Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B39BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 17:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnicNdhulVeweghUmTiRDdbBAQzAo+udlHDRrrlTQms=; b=kwiZ3pEnA47QbK
	rlta0AYw8ui5GLIsMnVrvpaM+mhss3HBkojtFvLAdCGuMbbNYK0NFLM+E+v5cYjx8eCpVkm40/ncT
	xtq4ubOcdktYjkysphzo7aPxPdLP5wnrQvTtFpwnd3md//NfnUCJrf1x+zG6+YSSdyUY5RAUecoc3
	z8/8QCc1/nsx36Fvtn71VnPcFmA3BKbhTjol6L77t3bUtmfs3eBMnNAp5zmYSPATE0KyXTiUuGgQ5
	CCjEwBfYuotORzvGT+A7my4eOYLZxJ3kXGkOF1mUYAYyXV2oGL+T6gKUgUCcq9TRRgwBslAwm4fBj
	EK6F/02yPNTkwe7Ka4Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCOie-0091Gn-TQ; Fri, 15 Jul 2022 17:03:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCOiS-0091CI-61; Fri, 15 Jul 2022 17:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=tlwwE8Hn4JX6MkC+15uUEwpyrch/SmPKm3LntZ0RmZg=; b=fQT1fGtOWkq2fblklAR8eealV2
	wpDkDJMWs8mSRLx7qMGz2cHTPHMuOnB7wTqvQ+UT44DWkiHSXzxketwa2RNjRgVsvy6bjD34IGH6o
	XhVvSdMlMa255u8Q84LZHnB4bTlWywgSnmWOzv2tkEvl5yIYpNZRj+p2bGXl8pe0BFeHew9jBPlXz
	jy+WhqjSAq3ojxDgCTlPEYt8ho+9cHYrHDwZgwcTJ0lIIpZJoVLcbvjwN/9QQ6w385rp7D/61KOBL
	1rTCmSf9ybDSE8cIVziZpcDrErd9XYiQUdpqDmnFyH0xTvmKYJf/120Qcqy+WI7GjlUBXSbkVAq5i
	LgtvssWw==;
Received: from mail3.swissbit.com ([176.95.1.57])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCOiN-0049KJ-PA; Fri, 15 Jul 2022 17:02:58 +0000
Received: from mail3.swissbit.com (localhost [127.0.0.1])
	by DDEI (Postfix) with ESMTP id 116C6463927;
	Fri, 15 Jul 2022 19:02:43 +0200 (CEST)
Received: from mail3.swissbit.com (localhost [127.0.0.1])
	by DDEI (Postfix) with ESMTP id EF3794633D3;
	Fri, 15 Jul 2022 19:02:42 +0200 (CEST)
X-TM-AS-ERS: 10.149.2.84-127.5.254.253
X-TM-AS-SMTP: 1.0 ZXguc3dpc3NiaXQuY29t Y2xvZWhsZUBoeXBlcnN0b25lLmNvbQ==
X-DDEI-TLS-USAGE: Used
Received: from ex.swissbit.com (SBDEEX02.sbitdom.lan [10.149.2.84])
	by mail3.swissbit.com (Postfix) with ESMTPS;
	Fri, 15 Jul 2022 19:02:42 +0200 (CEST)
Received: from sbdeex02.sbitdom.lan (10.149.2.84) by sbdeex02.sbitdom.lan
 (10.149.2.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.9; Fri, 15 Jul
 2022 19:02:42 +0200
Received: from sbdeex02.sbitdom.lan ([fe80::e0eb:ade8:2d90:1f74]) by
 sbdeex02.sbitdom.lan ([fe80::e0eb:ade8:2d90:1f74%8]) with mapi id
 15.02.1118.009; Fri, 15 Jul 2022 19:02:42 +0200
From: Christian Loehle <CLoehle@hyperstone.com>
To: =?iso-8859-1?Q?Christian_Kohlsch=FCtter?= <christian@kohlschutter.com>
CC: Robin Murphy <robin.murphy@arm.com>, Markus Reichl
	<m.reichl@fivetechno.de>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Linux MMC List <linux-mmc@vger.kernel.org>
Subject: RE: [PATCH v2] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
Thread-Topic: [PATCH v2] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
Thread-Index: AQHYl56CKm68niEykEeE+sqK07QWzK1+EKag///qsoCAAaybAA==
Date: Fri, 15 Jul 2022 17:02:42 +0000
Message-ID: <7c14ec231e2e49da907b85eb55cecac8@hyperstone.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <eec07acea8694191a75880acc397dafe@hyperstone.com>
 <94A234A2-9725-4159-A23C-F3DD8D4BCC06@kohlschutter.com>
In-Reply-To: <94A234A2-9725-4159-A23C-F3DD8D4BCC06@kohlschutter.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.153.3.44]
MIME-Version: 1.0
X-TMASE-Version: DDEI-5.1-9.0.1002-27018.001
X-TMASE-Result: 10--17.746400-10.000000
X-TMASE-MatchedRID: vEvJ7Rh1lGhjDV//SvkH3jo39wOA02LhTSz0JdEAJbT1xrH5kKK/rscI
	2NN8y25xSLfDu7ce7Bf3yXFYBZKInkFwARp1J8NSlVHM/F6YkvRh0Eb5uGGI1GpKPFE7L4BTFO5
	6iWm3dbeFFPZLrvOiBPZMaDGsho6BmDHh7m9C3HvfqVBdB7I8UfG6GRFYrbYYDOItw0nH9LH1Nd
	Jx72uvD1xy4GBipZnAjSTdVKz/HlaCKJK02LWJSnzmmMD/HXF+feeWNV6+vcPNVAvss75vYQSDC
	Udk18WiogocP1ZonLCLfaKsDD4t8NbNQByfRPHgkCThXPqsqitlH44U2Ru12lZX2RYkYhIOMyTr
	NqDEzY53tu+RytIqn9eaUW/a9ywTJtllgBC70fmeAiCmPx4NwGNn8XPiALIb+gD2vYtOFhgqtq5
	d3cxkNQwWxr7XDKH8vKib1i8+oWDSDj/g12WkT7bwHNO+gHOE5l11IPUMD+2UMrR/9doJCQ==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
X-TMASE-INERTIA: 0-0;;;;
X-TMASE-XGENCLOUD: ca9f51c8-b5a0-45f6-91ad-f80064ffbb4f-0-0-200-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_180256_137868_D752C6D1 
X-CRM114-Status: GOOD (  16.58  )
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

Please try my softreset patch for mmc-utils.

If some UHS cards have trouble coming up again then we have a problem on th=
at hardware.

-----Original Message-----
From: Christian Kohlsch=FCtter <christian@kohlschutter.com> =

Sent: Donnerstag, 14. Juli 2022 19:21
To: Christian Loehle <CLoehle@hyperstone.com>
Cc: Robin Murphy <robin.murphy@arm.com>; Markus Reichl <m.reichl@fivetechno=
.de>; Heiko St=FCbner <heiko@sntech.de>; linux-arm-kernel@lists.infradead.o=
rg; linux-rockchip@lists.infradead.org; linux-kernel@vger.kernel.org; Linux=
 MMC List <linux-mmc@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix SD card init on rk3399-na=
nopi4

> Am 14.07.2022 um 18:44 schrieb Christian Loehle <CLoehle@hyperstone.com>:
> =

> I only briefly skimmed the discussion, but does this mean that a soft-res=
et (CMD0) of a UHS (post-voltage-switch) will not work?
> (As the card/spec requires a power-cycle by the host which will not come,=
 right?)
> Can you try this real quick? I can give you a mmc-utils snippet if you ha=
ve trouble issuing one.
> If that does indeed not work I think the general approach is to disable u=
hs in the dts or at least document that.
> Regards,
> Christian

I tried disabling UHS in the DTS, but that would still cause mmc detection =
issues.

"rmmod dw_mmc_rockchip" followed by "modprobe dw_mmc_rockchip" still detect=
s the card:
> [ 4481.141764] mmc1: card 0001 removed
> [ 4488.133398] dwmmc_rockchip fe320000.mmc: IDMAC supports 32-bit address=
 mode.
> [ 4488.133462] dwmmc_rockchip fe320000.mmc: Using internal DMA controller.
> [ 4488.133484] dwmmc_rockchip fe320000.mmc: Version ID is 270a
> [ 4488.133541] dwmmc_rockchip fe320000.mmc: DW MMC controller at irq 32,3=
2 bit host data width,256 deep fifo
> [ 4488.134320] dwmmc_rockchip fe320000.mmc: Got CD GPIO
> [ 4488.147329] mmc_host mmc1: Bus speed (slot 0) =3D 400000Hz (slot req 4=
00000Hz, actual 400000HZ div =3D 0)
> [ 4488.218364] mmc_host mmc1: Bus speed (slot 0) =3D 148500000Hz (slot re=
q 150000000Hz, actual 148500000HZ div =3D 0)
> [ 4488.678181] dwmmc_rockchip fe320000.mmc: Successfully tuned phase to 2=
14
> [ 4488.678239] mmc1: new ultra high speed SDR104 SDHC card at address 0001
> [ 4488.680315] mmcblk1: mmc1:0001 ASTC 14.6 GiB =

> [ 4488.684871]  mmcblk1: p1 p2

Ejecting/re-inserting the card also works:
> [ 4607.521119] mmc1: card 0001 removed
> [ 4608.517343] mmc_host mmc1: Bus speed (slot 0) =3D 400000Hz (slot req 4=
00000Hz, actual 400000HZ div =3D 0)
> [ 4608.632987] mmc_host mmc1: Bus speed (slot 0) =3D 148500000Hz (slot re=
q 150000000Hz, actual 148500000HZ div =3D 0)
> [ 4609.065445] dwmmc_rockchip fe320000.mmc: Successfully tuned phase to 2=
13
> [ 4609.065535] mmc1: new ultra high speed SDR104 SDHC card at address 0001
> [ 4609.067942] mmcblk1: mmc1:0001 ASTC 14.6 GiB =

> [ 4609.073521]  mmcblk1: p1 p2

and so is changing the clock back and forth:
> echo 400000 > /sys/kernel/debug/mmc1/clock; echo 150000000 > kernel/debug=
/mmc1/clock; fdisk -l /dev/mmcblk1

> [ 4817.829078] mmc_host mmc1: Bus speed (slot 0) =3D 400000Hz (slot req 4=
00000Hz, actual 400000HZ div =3D 0)
> [ 4820.063457] mmc_host mmc1: Bus speed (slot 0) =3D 148500000Hz (slot re=
q 150000000Hz, actual 148500000HZ div =3D 0)
> [ 4835.305419] dwmmc_rockchip fe320000.mmc: Successfully tuned phase to 2=
13
> [ 4836.346928]  mmcblk1: p1 p2

Swapping with a "highspeed" (non-UHS) card also seems to work
> [ 5733.702083] mmc1: card 0001 removed
> [ 5738.858439] mmc_host mmc1: Bus speed (slot 0) =3D 400000Hz (slot req 4=
00000Hz, actual 400000HZ div =3D 0)
> [ 5739.378487] mmc_host mmc1: Bus speed (slot 0) =3D 50000000Hz (slot req=
 50000000Hz, actual 50000000HZ div =3D 0)
> [ 5739.378627] mmc1: new high speed SD card at address 21bb
> [ 5739.380491] mmcblk1: mmc1:21bb APPSD 480 MiB =

> [ 5739.382795] debugfs: Directory 'mmcblk1' with parent 'block' already p=
resent!
> [ 5739.385096]  mmcblk1: p1
> [ 5774.386536] FAT-fs (mmcblk1p1): utf8 is not a recommended IO charset f=
or FAT filesystems, filesystem will be case sensitive!
> [ 5795.486365] mmc1: card 21bb removed
> [ 5801.302688] mmc_host mmc1: Bus speed (slot 0) =3D 400000Hz (slot req 4=
00000Hz, actual 400000HZ div =3D 0)
> [ 5801.447128] mmc_host mmc1: Bus speed (slot 0) =3D 148500000Hz (slot re=
q 150000000Hz, actual 148500000HZ div =3D 0)
> [ 5801.880374] dwmmc_rockchip fe320000.mmc: Successfully tuned phase to 2=
11
> [ 5801.880440] mmc1: new ultra high speed SDR104 SDHC card at address 0001
> [ 5801.882253] mmcblk1: mmc1:0001 ASTC 14.6 GiB =

> [ 5801.884145] debugfs: Directory 'mmcblk1' with parent 'block' already p=
resent!
> [ 5801.886558]  mmcblk1: p1 p2
> =


Some debug output: cat /sys/kernel/debug/mmc1/ios
UHC
> clock:		150000000 Hz
> actual clock:	148500000 Hz
> vdd:		18 (3.0 ~ 3.1 V)
> bus mode:	2 (push-pull)
> chip select:	0 (don't care)
> power mode:	2 (on)
> bus width:	2 (4 bits)
> timing spec:	6 (sd uhs SDR104)
> signal voltage:	1 (1.80 V)
> driver type:	0 (driver type B)
non-UHC
> cat /sys/kernel/debug/mmc1/ios
> clock:		50000000 Hz
> vdd:		18 (3.0 ~ 3.1 V)
> bus mode:	2 (push-pull)
> chip select:	0 (don't care)
> power mode:	2 (on)
> bus width:	2 (4 bits)
> timing spec:	2 (sd high-speed)
> signal voltage:	0 (3.30 V)
> driver type:	0 (driver type B)
> =


How do I make sure I specifically send the soft-reset command? I'm happy to=
 help but I'm really a novice here.

Best,
Christian

Hyperstone GmbH | Reichenaustr. 39a  | 78467 Konstanz
Managing Director: Dr. Jan Peter Berns.
Commercial register of local courts: Freiburg HRB381782


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
