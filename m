Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C2ECCCA47F
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 17:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWBMTNsTYE4B58oxDXqV+G4vCt2lK3ZdPZoL2+HEJHY=; b=XWVFhEE5TU9tDD
	jylZwKeIm4Of6jD/0WV5u0h20L8pfnfqxlr0F5lXDOoYIawXQU+hXx9HgmsWNTMGNUJE+c6v1e9H6
	/TdU0ZCjn//xnXHSRl603eKQ5cyKpbLS/fdxhsVATPrP/OL0XFdzTvRAuPXMXS4Gx5OOJfPOkVJom
	kpPYjJXcBQZ0bqPknTsmh7ykf7sMrIv2+xEFPONM0A4MJtxoCi/pJ2zPrBTtWmR5cbsyHBWFPk9tY
	l7DLFFYPVG251aHhjkz0x2KMRfjVSveix8zhWo4D68+SpFBSQfL6czmbondaaxrvavQ1Y3bgh/Y1R
	KDwILAiX+zY5/3aO84CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9VfQ-00HH5X-Bc; Thu, 07 Jul 2022 17:51:56 +0000
Received: from mout.gmx.net ([212.227.17.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9VfE-00HH3O-6u; Thu, 07 Jul 2022 17:51:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657216287;
	bh=eRYbd4WlZHGFlVSm3qXeJePVlVFwXtMQqRvFFzWW8sA=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=CPCF48bnbKzeUJhPMiovgoEnC+vEixzZVTJv7LclOVBt0KONOCHOI2ocJYtObJk18
	 Nun8P/23Ka2GOvFVBiarlQSvGMuYzHFpuSlTqXNW3tPpOtYDP9X4TGlPUsnM7WmWNJ
	 OKxU1+NInSyFY0Bv0KjGUKVC79s3LtS6KyspU/mA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.44] ([80.245.77.44]) by web-mail.gmx.net
 (3c-app-gmx-bap68.server.lan [172.19.172.68]) (via HTTP); Thu, 7 Jul 2022
 19:51:27 +0200
MIME-Version: 1.0
Message-ID: <trinity-ec3b4258-cb12-42c2-9058-362260a275d2-1657216287085@3c-app-gmx-bap68>
From: Frank Wunderlich <frank-w@public-files.de>
To: Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Kishon
 Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>, Peter
 Geis <pgwipeout@gmail.com>
Subject: Aw: [BUG] USB broken on rk3568 based R2Pro
Date: Thu, 7 Jul 2022 19:51:27 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <trinity-54ed588d-4b2c-4177-83b0-4eda8ff16a42-1657210235522@3c-app-gmx-bap68>
References: <trinity-54ed588d-4b2c-4177-83b0-4eda8ff16a42-1657210235522@3c-app-gmx-bap68>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:24r+j66QKvqyftybingAK3M/KSPL4PIEXDBNqezfGswC5ckMvODK/GKotZjbvO3p6PPEo
 2L9wrLhmlGGFa9gLz+V633gEyKdfsg3ymqAUqvA89f4swLY1IkBrIuU3uk88xQPbK79ZeyHVxSxZ
 qJjit5vCIO0tZaq4gTIi/q+n3NsB9hTdSet3EFaMr/DYyFYohDbkb2KbhqHc5kgnl17gkFHacvv9
 E5lxV6UVejslIEfZdgk8bqBUXlMV5DdvwJ5k3HYbaqrLzmCE5Fi26HW5j+L9300IV5aG73Q4Qc1G
 t4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:IjCByH4FtZs=:jDoGUfUZr5RlWZlr5iWBZw
 qDLSgJsqF63mqfpHrJABrqUB6JFU5XKRh2N1dcj//OZfA0BmckB2nEfY+/VqcKMnFlVZbE1ms
 h44ezUMG0yKnKRYQfX5yLKiMdum+en/T1vUj5FqOCq5kkPf1B8cAymRl84eSqH4uvj/j+kDKT
 6r05tVJidN4aCg5vW/kLJlRH3YQ1Eaexz4miP5VWrHs78OPK31GZvr7i9hYU2d9bUt/XOTlWf
 Jzj393El1vigBdv8fZGL7y4QQaDmxmqsTYSYFpMJMlPEpLym+SezWzH8TX+2UyXg9EEvgGOeh
 5JS39wIC8jBRYuio6S/LXS6yZKbSceAfg3ONHxIzVPMYE82m3fKznFQI52EuuTAgb4meq1jAB
 ILu/l9OftbRe+5La1zyBAwY2M72E7dadwmn+9L0Z5v4mKHcyMb6AMGezFIWwY2TIq0nzkU1FB
 HZZ/eahsoBrZ0W3nXiYQ+js5Uv8SWmsL82bhhMAEDfA82uYOgR8wdDPv5FKEm5XwHVlKDdiPu
 z+fVuOG/ZLkzKQK2/J55fVSV9sTlrV7BlnRno5CS3XFEcHXQ6fuLg1mOCZS+EWzw6YgCC8jPT
 r0kr6B9hVD0EIFWkeTMuy4bEAlTjJSWaszI3WHL0hBH95UTDMOZrhV2F0ekjqXDShmp8+bQHn
 t2/wqJhtu8oQ7ejFYqNGkWxfBfTs00u54QBopVAUaxrQCGqigostXvlzo+2ZK8d9AzlOLouqQ
 lqAEdJsFLIfp1/goTGES/+M+8ZNOzMXbBLHE7kAQ5HCsRlkL6BJEhBzgUCQbt80bAIeQml6Od
 Hx6Eu0k
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_105144_740285_A0BA1467 
X-CRM114-Status: GOOD (  11.45  )
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

traced it down with manual reverts to this one:

commit 6a98df08ccd55e87947d253b19925691763e755c
    phy: rockchip-inno-usb2: Fix muxed interrupt support

luckily i can revert only this and now upper usb-port works again

@samuel: have you an idea how to fix your problem without breaking my board? :)

@greg/Vinod: maybe we can add a revert of this in mainline till issue is resolved?

regards Frank


> Von: "Frank Wunderlich" <frank-w@public-files.de>
> i noticed that upper usb-Port (otg) is broken on my Bananapi R2Pro with 5.19-rc1, works with 5.18.0
>
> this port is a usb3 (xhci) port which includes an usb2-phy and should support otg, but i still want
> to use it in host-only mode (USB-A socket).
>
> already tried setting dr_mode in dts back to "host" as this was changed in rk356x.dtsi by this commit:
>
> bc405bb3eeee 2022-04-25 arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x
>
> i see no error in dmesg and usb-controllers seem to be initialized completely (visible in lsusb).
>
> r2pro has ID-Pin not connected, so i tried also peters Patch without success :(


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
