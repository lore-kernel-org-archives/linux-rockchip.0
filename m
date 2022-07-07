Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B955C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 16:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Cc:To:From:Message-ID:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WOaL/WLQs7Od7gQBLIjzgmX0xir2KMDXu4YYTc2K1W0=; b=hNan37ABqQCRfg
	ztlxwhzX37CZwzR4zB/RrQe3PDuKps917rJrxdJKMu/r0ArWWaXwye1FcNjZov2hFN8DyQdnH3gZl
	iGw7T/adGihioH9yVLS7Ev37c22zyeoa4sCE9hYBNy+RJ89UlFFBh9HaUFDMHeg67OrNBH2QadqRN
	9z7Tgyq4RDFBHmv4aaQ0ny7nGYzyXlSU2yKvHeeOHW41peDdmwKMSy65wCaMH6kiYBo/PymMbEbeU
	KzPs634qrYsWRrP0z/sGe1lcUAa4jF58my2hZs7PEei+cyAYpMFSsLza61/+DHcdjohIOj7BFzfb7
	HZfylOhEF00Rs67IQrIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9U5e-00GtJp-R6; Thu, 07 Jul 2022 16:10:54 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9U5b-00GtGl-Kc; Thu, 07 Jul 2022 16:10:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657210235;
	bh=NN/0vA6OVRB9hbRmvxOKPBcC3OaWeALfMawHvX5MLqY=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
	b=CQ+hJiBgxPholSi43up0qCOC64mNJc6a71fr8R1L/Anq2I40q1O0LiB3ONAk4JDRN
	 eEDWAGgsZnvdf9TOuswaMnX0LX6k2Vl8+axqND0R6EJ6Y98BxypvUSPq4HQbGPYCmD
	 6a/E0Q16Ih+I69qXari+jsHdBwPz0aWltQc6Vs7o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.44] ([80.245.77.44]) by web-mail.gmx.net
 (3c-app-gmx-bap68.server.lan [172.19.172.68]) (via HTTP); Thu, 7 Jul 2022
 18:10:35 +0200
MIME-Version: 1.0
Message-ID: <trinity-54ed588d-4b2c-4177-83b0-4eda8ff16a42-1657210235522@3c-app-gmx-bap68>
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
Subject: [BUG] USB broken on rk3568 based R2Pro
Date: Thu, 7 Jul 2022 18:10:35 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:zUnx7/bZtgmbV9sg5VG+TjiBYWfl3ircR+UQUSbzUh3Yh0EGP+vG35CXWfQOs95HWDyj3
 7zkMzLOKfYyLN9PoKNFZ6tUO5Ye2KBV2YnmAPRvS5Y8nVR2ynDjy0mRzoxO04wMrf4Iy1TxRZOik
 vfOmmR5vnEC3/RCoGedP85cWc+QZhaXXujqjpdGTYUi9OD21inUohospvKd1Pb4+e/blyIIDyiiC
 Phwb7NCOHjh5jObQB9ku7J7ZGgQnmtBbnLcrRz7WxglSF+Nmt/tsgQnnu0JrrZ0I/e2iGXvItooR
 9s=
X-UI-Out-Filterresults: notjunk:1;V03:K0:tAuzQFDEqhE=:igPVA6BhQjlvhITOkxIREd
 OemjZvdV1IEOxQeQaiZWwQfrUKOkbkFQGGPXuAgV+HS4yqDbw+FB3/7aBXYCy5PLXYqAEXDOu
 GBeS47Q6jfNww7F2Gd0b9in7V/oy7g3D6wt3KcEvY6qxRsAWVH9QqvMxc+HQHfexY3lgdF4Yl
 SLAKAqouatBUjPqG9Aq6ygjQDV8/bIn4P3yt7MXxYMhzhkqSK1CKLQ7KupGl+Q+0oaHZVvHF6
 Ipya7PKkhLTsBZRjEeC07L46YAN1kQCqKzbReT7+HpiKxrQTeRakuKBs8x1laxB5kCWrzMVr4
 BnDvLDxfympk/8UVPBE+Ioz0um5IJ0r0gUKDTnsN2BSSD/Z5sZALdEzxyQ+JJcuw5/zI4gAqB
 XdC6+NzK02IOpEANKXMQniSr1CSzmfmuskfyUm1/W7ADb41ZTMa0p7CUFAi6tE+XsIbukBBgW
 v79JNJM/2kaoWhID3VelXjGTA9C7FlI8KAeaLF4yHDTKntn/+3N7GS2mQaCbewq3JE7O7CcOn
 DbZOFNNfd8W+PwDiXZLrXl60/uXwtC2YaGwnYSzqs6SF3hD1GD4Uwz+5uSDo3STwz6D01OTYf
 aEVDfttviC4wDRLDHHuh1QsFKuq2yikYBltCtsnC4rptItQAyhbUsP2rILLVjkGy8mxo+gzrI
 gHj6Cyo+NUVI8rTPuEPhvCoaLyRgFcIHpCW55rn4Jp7k7Ij2ueW9tlVMr7NvGogjKOyDBM+WK
 qSvhzJXvyE3tkQIhk6RJP/IpT4W1tE5S1ni2q57gPpG5SOoWa5uI9Xw9OtlhQpsSSvVIyI4Xc
 YmEkYs/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_091052_231804_37F84C1A 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
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

Hi,

i noticed that upper usb-Port (otg) is broken on my Bananapi R2Pro with 5.19-rc1, works with 5.18.0

this port is a usb3 (xhci) port which includes an usb2-phy and should support otg, but i still want
to use it in host-only mode (USB-A socket).

already tried setting dr_mode in dts back to "host" as this was changed in rk356x.dtsi by this commit:

bc405bb3eeee 2022-04-25 arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x

i see no error in dmesg and usb-controllers seem to be initialized completely (visible in lsusb).

r2pro has ID-Pin not connected, so i tried also peters Patch without success :(

0901c01f8ac4 2022-06-21 phy: rockchip-inno-usb2: Sync initial otg state


so i tried bisect which seems to point to wrong commit (not related)...

$ git bisect log
git bisect start
# bad: [f2906aa863381afb0015a9eb7fefad885d4e5a56] Linux 5.19-rc1
git bisect bad f2906aa863381afb0015a9eb7fefad885d4e5a56
# good: [4b0986a3613c92f4ec1bdc7f60ec66fea135991f] Linux 5.18
git bisect good 4b0986a3613c92f4ec1bdc7f60ec66fea135991f
# good: [4b0986a3613c92f4ec1bdc7f60ec66fea135991f] Linux 5.18
git bisect good 4b0986a3613c92f4ec1bdc7f60ec66fea135991f
# good: [2518f226c60d8e04d18ba4295500a5b0b8ac7659] Merge tag 'drm-next-2022-05-25' of git://anongit.freedesktop.org/drm/drm
git bisect good 2518f226c60d8e04d18ba4295500a5b0b8ac7659
# good: [aef1ff15927421a55312b4b9b2881a89a344bd80] Merge tag 'jfs-5.19' of https://github.com/kleikamp/linux-shaggy
git bisect good aef1ff15927421a55312b4b9b2881a89a344bd80
# good: [09a018176ba246f00d6b6b526047d38dcd2955d3] Merge tag 'arm-late-5.19' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
git bisect good 09a018176ba246f00d6b6b526047d38dcd2955d3
# good: [54c2cc79194c961a213c1d375fe3aa4165664cc4] Merge tag 'usb-5.19-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb
git bisect good 54c2cc79194c961a213c1d375fe3aa4165664cc4
# bad: [7036440eab3e2d47a775d4616909f8235488d714] ARM: omap1: enable multiplatform
git bisect bad 7036440eab3e2d47a775d4616909f8235488d714
# good: [46ee6bcac9838b7f74ff91f9cf38511c901ea9c5] Merge tag 'mhi-for-v5.19' of git://git.kernel.org/pub/scm/linux/kernel/git/mani/mhi into char-work-next
git bisect good 46ee6bcac9838b7f74ff91f9cf38511c901ea9c5
# bad: [dc6a7effb48e7267c9f1314e3aa8cfe539bd6096] Merge tag 'lkdtm-next' of https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux into char-misc-next
git bisect bad dc6a7effb48e7267c9f1314e3aa8cfe539bd6096
# bad: [fa5602c62544ea5303ce870a9a3318fa7695ffc2] Merge tag 'soundwire-5.19-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/vkoul/soundwire into char-misc-next
git bisect bad fa5602c62544ea5303ce870a9a3318fa7695ffc2
# bad: [f1b8d3358af77fc453d6b781f40ee7342a230672] phy: core: Add documentation of phy operation order
git bisect bad f1b8d3358af77fc453d6b781f40ee7342a230672
# bad: [2404387f521eda1d0eded58411bac2c719985d9c] phy/rockchip: Use of_device_get_match_data()
git bisect bad 2404387f521eda1d0eded58411bac2c719985d9c
# bad: [45d1f841d5a4afb415415f9f87c9d4ce15e19f42] dt-bindings: phy: uniphier-usb3hs: Fix incorrect clock-names and reset-names
git bisect bad 45d1f841d5a4afb415415f9f87c9d4ce15e19f42
# bad: [6f3652c952d8d8d22da1d535c470906da6e1afde] phy: qcom-qmp: Add SM6350 UFS PHY support
git bisect bad 6f3652c952d8d8d22da1d535c470906da6e1afde
# bad: [082ffee0505810bba7c4add343fa178861e26212] dt-bindings: phy: qcom,qmp: Add SM6350 UFS PHY bindings
git bisect bad 082ffee0505810bba7c4add343fa178861e26212
# bad: [e4d4371253029528c02bfb43a46c252e1c3d035f] phy: phy-can-transceiver: Add support for setting mux
git bisect bad e4d4371253029528c02bfb43a46c252e1c3d035f
# first bad commit: [e4d4371253029528c02bfb43a46c252e1c3d035f] phy: phy-can-transceiver: Add support for setting mux

have not replaced dtb while testing to exclude these changes

i looked through commits between good-bad-change and there are some for the rockchip-inno-usb2-phy where i guess the problem is located

git log --oneline 46ee6bcac9838b7f74ff91f9cf38511c901ea9c5..dc6a7effb48e7267c9f1314e3aa8cfe539bd6096

issue is maybe extcon (pointing to the usb2-phy) related as 5.18 uses extcon for this port.

Tried to find something in sysfs/debugfs, but without success.

maybe anyone has an idea? anything i can try/readout (sysfs/debugfs).

regards Frank


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
