Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 983A7C77B61
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 08:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfjdvfu9IQu6sYr2NzQtWXIsW3gT09t8gYAVic6ia6Q=; b=0VWOyMOdY2vXK3
	5idc2abCcGLHvY67MgaBRmJ9f3G0RmLoGgYkfBgevsIFKO0lwAVoArJi6+UdcgqkuXg4kdX3Q+tQ/
	3y0FMyA8gK+zQrRl79f9kYi7b9Mc5fBWw177VUI2TvjYWz9isRpBkK4S8wLNbZXtHePwGPLRZoUMi
	M0w9hh6zAFRCFWCo7t1zxWtpeQdeqcIHe0Ae2IBff3kEAaIbYDdnFvLgt8w091IQJPHzz5jNWuITk
	8awaEB2FkmiuEBWCDqJ99KsC3ETG2CPrQH2nJgd3cDqqI9OHE+SQKirahsNzSjbQ3kFWUJ6J9paoh
	VV3xWDtJ+4df1sSFMMpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmruv-005MDk-1f;
	Thu, 13 Apr 2023 08:02:53 +0000
Received: from mout.gmx.net ([212.227.15.19])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmrus-005MD7-01
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 08:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1681372962; i=frank-w@public-files.de;
	bh=mZlPDgocA8VTA9B5DWXq1skvgTTMqptaY2EqKSTXcgM=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=JdSCKoNyYEzc86GW2u8ylByGug0UTQgjYACcH3fUImXEWcJwdYLDzIIGrH7hh1atd
	 CgAirhYm3BgFYrt8Umyh69/0NYPaSCD94UPxDsIpHeoDFsqWwuy2zKW2ahq14HSnme
	 ITakW6rSaGXwnJ7V9+jJnqSaJ97AEqWC/Pegx+C95itoLN7RXvly00g7nPfp75yVN3
	 dfYBa2kkvKuYAZ4ABWBVEARFI1wFK+GcLN3OWYalA/0kKEl6cc+xVVDbXGnqcL3oO4
	 V/p3GoFSyyxGUN2hgmpRk1W5MDki9FEts2kH8UHnxa745jonK7Dv3kYiXiLrJyXfyE
	 Z6f1SxLlSUInA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [80.245.77.65] ([80.245.77.65]) by web-mail.gmx.net
 (3c-app-gmx-bs48.server.lan [172.19.170.101]) (via HTTP); Thu, 13 Apr 2023
 10:02:42 +0200
MIME-Version: 1.0
Message-ID: <trinity-e69c6c48-49c2-4100-a241-af7fc413decb-1681372962162@3c-app-gmx-bs48>
From: Frank Wunderlich <frank-w@public-files.de>
To: Johannes Zink <j.zink@pengutronix.de>, brewer.doug@gmail.com
Cc: linux-rockchip@lists.infradead.org
Subject: Aw: Re: Problems about NIC, PCIe and usb on RK3568 EVB
Date: Thu, 13 Apr 2023 10:02:42 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <57c88a52-c051-4297-22e0-2188cc65a058@pengutronix.de>
References: <ZDeZTWWIW2I4H7Sc@www.com>
 <57c88a52-c051-4297-22e0-2188cc65a058@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:TFXeBEV3DA50YNv/+/Q76SKUSC8yPdruk/G/oYuIdxyGbFzj0tmA/1F0O453rLYpD/cm+
 G/BHhfx1LEExttUkSsyfHRJlzAiOc1BbcAZuAjucWeODPZy7YCHSuA7F8iMzqANhC9EejkGFxSHr
 pMOAIcDOuQhwX4Zw64DsnSwS3I0s23UmBQFkofFKes33F+2+OCc+MMXVRwHCWNYckwUcov+B5BW8
 kG+qftv/vxJKQpnEY4Ug6VXMn8kmLIAiFZ6/5T4hXslCxMDu0WpnRiq4bZcdUCda46euYGIWJslL
 oU=
UI-OutboundReport: notjunk:1;M01:P0:q362nWhJL70=;wNjGf67xYXuRuqehcj1f85fGD97
 D+c6DLG8JxIBBFl0+y/7BMsUKAgORm+ziF7NgvRHGou5RwzfZyzdk0ECbw4tRuDxfWo7+f/Jj
 2yeMLyVkjB/QcP49cBW5HUiTh+0kZ5VQO7VtfSx2PoSPHBPFXOdRKK9D1qcYsmjkodwHWiWXJ
 lulcZ6WdeMPjOYg6YuYk5vAlVvT40vmusV+OWEuajAAZOjRSzMGr52gvixQN0jnRiQYGs5GSc
 Pll5uJEzn65g1JN9ImqBHTZC82RS692jA16ncxW7OPvuaJPKD0nVz5lcI1jb8my4yz6vlEwgn
 un92gQ+mv/JmwhvZtQq/bfw6mN3x/fRdSkBKmfMNd0IZb79YAyYp7YWxAELhKJvckwwScYLTR
 hrGEvfjVaVK6+XzEvjMGkok90KWh26EL0J2B+0be61kmz2PutY0uc+lcBxFjxPxhlAlv/VTyf
 Yr45O5zB8AOTyilf9XMLCa1Pnb9RpQ6XJOpfSmoYtu+RfgrnmAKfhmCKQQnlcbJwWxfohRiKh
 FugwLVudT4Y+lthTrRuYK/acQHuFgWx2dkAnAsq6Z76sK7QpRRi7kU/Xg1rd1XW3tQ0b6SJcs
 SCOeWoJ0aLFdAoxZue4k3pe71Gz6dFt+Bs885jmLTwCuh6g8JP84Kn+bVVnVXlbe2xvTBRPqu
 4RgpXxh59FBs9y8D+LKhI5oUAX9JWVgtgpRyPeB6h5xX8kZZ0NHs2nD/mjaxPrB6mW22OSEvm
 4FvT0pHAnI9qJlkFKtfhsiPJEnClIVoT5YlVRV45cAppdApYxgBOSV4JSD44tF0vhBnITrs83
 EdoUtWldRwAM7zyqk07gXX9ixgdcF41wUNwP69pJhyStU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_010250_353290_DA641466 
X-CRM114-Status: GOOD (  21.00  )
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

Hi
> Gesendet: Donnerstag, 13. April 2023 um 08:28 Uhr
> Von: "Johannes Zink" <j.zink@pengutronix.de>
> An: linux-rockchip@lists.infradead.org
> Betreff: Re: Problems about NIC, PCIe and usb on RK3568 EVB
>
> Hi Doug,
>
> On 4/13/23 07:55, Doug Brewer wrote:
> > Hi,
> >
> > I tested Linux kernel 6.3-rc6 on my rk3568 evaluation board, it seems there
> > are problems with Ethernet, PCIe and usb devices.
> >
> > First, NICs doesn't work.
> >
> > rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
> > rk_gmac-dwmac fe010000.ethernet: no regulator found
> > rk_gmac-dwmac fe010000.ethernet: clock input or output? (output).
> > rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
> > rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
> > rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
> > rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10
> > rk_gmac-dwmac fe010000.ethernet: integrated PHY? (no).
> > rk_gmac-dwmac fe010000.ethernet: init for RGMII_ID
> > rk_gmac-dwmac fe010000.ethernet: User ID: 0x30, Synopsys ID: 0x51
> > rk_gmac-dwmac fe010000.ethernet:         DWMAC4/5
> > rk_gmac-dwmac fe010000.ethernet: DMA HW capability register suppd
> > rk_gmac-dwmac fe010000.ethernet: RX Checksum Offload Engine suppd
> > rk_gmac-dwmac fe010000.ethernet: TX Checksum insertion supported
> > rk_gmac-dwmac fe010000.ethernet: Wake-Up On Lan supported
> > rk_gmac-dwmac fe010000.ethernet: TSO supported
> > rk_gmac-dwmac fe010000.ethernet: Enable RX Mitigation via HW Watr
> > rk_gmac-dwmac fe010000.ethernet: Enabled RFS Flow TC (entries=10)
> > rk_gmac-dwmac fe010000.ethernet: TSO feature enabled
> > rk_gmac-dwmac fe010000.ethernet: Using 32/32 bits DMA host/devich
> > mdio_bus stmmac-1: MDIO device at address 0 is missing.
> > rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
> > rk_gmac-dwmac fe2a0000.ethernet: no regulator found
> > rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
> > rk_gmac-dwmac fe2a0000.ethernet: Can not read property: tx_delay.
> > rk_gmac-dwmac fe2a0000.ethernet: set tx_delay to 0x30
> > rk_gmac-dwmac fe2a0000.ethernet: Can not read property: rx_delay.
> > rk_gmac-dwmac fe2a0000.ethernet: set rx_delay to 0x10
> > rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
> > rk_gmac-dwmac fe2a0000.ethernet: init for RGMII_ID
> > rk_gmac-dwmac fe2a0000.ethernet: User ID: 0x30, Synopsys ID: 0x51
> > rk_gmac-dwmac fe2a0000.ethernet:         DWMAC4/5
> > rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability register suppd
> > rk_gmac-dwmac fe2a0000.ethernet: RX Checksum Offload Engine suppd
> > rk_gmac-dwmac fe2a0000.ethernet: TX Checksum insertion supported
> > rk_gmac-dwmac fe2a0000.ethernet: Wake-Up On Lan supported
> > rk_gmac-dwmac fe2a0000.ethernet: TSO supported
> > rk_gmac-dwmac fe2a0000.ethernet: Enable RX Mitigation via HW Watr
> > rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
> > rk_gmac-dwmac fe2a0000.ethernet: TSO feature enabled
> > rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA host/devich
> > mdio_bus stmmac-0: MDIO device at address 0 is missing.
> > rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POO0
> > rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot atta)
> >
> > Second, running 'lspci' and 'lsusb' doesn't see any devices on PCIe and USB.
> > I guess the device tree might be updated.  Anyone has idea how to fix it?
> > Thanks.
> >
> > - Doug
>
> I've seen similar errors on other boards when the phy is not powered or
> does not have a clock supplied. Could you check your DT if there is any
> diffs in the phy-supply or any gpio-Hog pulling the enable of a
> regulator that might enable the phy? Also you could check if you have
> all the required regulator drivers available and probed.
>
> Best regards
> Johannes

i tested 6.3.0-rc4 on my banaanpi r2pro and there it seem no problem...do you have the issue on rc4 too?

root@bpi-r2pro:~# dmesg | grep rk_gmac-dwmac
[    3.033681] rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
[    3.034528] rk_gmac-dwmac fe010000.ethernet: Looking up phy-supply from devie
[    3.035243] rk_gmac-dwmac fe010000.ethernet: Looking up phy-supply property d
[    3.036170] rk_gmac-dwmac fe010000.ethernet: no regulator found
[    3.036713] rk_gmac-dwmac fe010000.ethernet: clock input or output? (output).
[    3.037361] rk_gmac-dwmac fe010000.ethernet: TX delay(0x3c).
[    3.037877] rk_gmac-dwmac fe010000.ethernet: RX delay(0x2f).
[    3.038398] rk_gmac-dwmac fe010000.ethernet: integrated PHY? (no).
[    3.044063] rk_gmac-dwmac fe010000.ethernet: init for RGMII
[    3.044896] rk_gmac-dwmac fe010000.ethernet: User ID: 0x30, Synopsys ID: 0x51
[    3.045559] rk_gmac-dwmac fe010000.ethernet:         DWMAC4/5
[    3.046033] rk_gmac-dwmac fe010000.ethernet: DMA HW capability register suppd
[    3.046747] rk_gmac-dwmac fe010000.ethernet: RX Checksum Offload Engine suppd
[    3.047428] rk_gmac-dwmac fe010000.ethernet: TX Checksum insertion supported
[    3.048062] rk_gmac-dwmac fe010000.ethernet: Wake-Up On Lan supported
[    3.048725] rk_gmac-dwmac fe010000.ethernet: TSO supported
[    3.049229] rk_gmac-dwmac fe010000.ethernet: Enable RX Mitigation via HW Watr
[    3.049954] rk_gmac-dwmac fe010000.ethernet: Enabled RFS Flow TC (entries=10)
[    3.050628] rk_gmac-dwmac fe010000.ethernet: TSO feature enabled
[    3.051176] rk_gmac-dwmac fe010000.ethernet: Using 32/32 bits DMA host/devich
[    3.189988] rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
[    3.190982] rk_gmac-dwmac fe2a0000.ethernet: Looking up phy-supply from devie
[    3.191715] rk_gmac-dwmac fe2a0000.ethernet: Looking up phy-supply property d
[    3.192636] rk_gmac-dwmac fe2a0000.ethernet: no regulator found
[    3.193180] rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (input).
[    3.193818] rk_gmac-dwmac fe2a0000.ethernet: TX delay(0x4f).
[    3.194336] rk_gmac-dwmac fe2a0000.ethernet: RX delay(0xf).
[    3.194885] rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
[    3.195499] rk_gmac-dwmac fe2a0000.ethernet: clock input from PHY
[    3.201067] rk_gmac-dwmac fe2a0000.ethernet: init for RGMII
[    3.201885] rk_gmac-dwmac fe2a0000.ethernet: User ID: 0x30, Synopsys ID: 0x51
[    3.202575] rk_gmac-dwmac fe2a0000.ethernet:         DWMAC4/5
[    3.203052] rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability register suppd
[    3.203730] rk_gmac-dwmac fe2a0000.ethernet: RX Checksum Offload Engine suppd
[    3.204405] rk_gmac-dwmac fe2a0000.ethernet: TX Checksum insertion supported
[    3.205039] rk_gmac-dwmac fe2a0000.ethernet: Wake-Up On Lan supported
[    3.205702] rk_gmac-dwmac fe2a0000.ethernet: TSO supported
[    3.206207] rk_gmac-dwmac fe2a0000.ethernet: Enable RX Mitigation via HW Watr
[    3.206969] rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
[    3.207621] rk_gmac-dwmac fe2a0000.ethernet: TSO feature enabled
[    3.208167] rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA host/devich
[   80.517694] rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POO0
[   80.520178] rk_gmac-dwmac fe010000.ethernet eth0: PHY [stmmac-1:00] driver [)
[   80.520230] rk_gmac-dwmac fe010000.ethernet eth0: No Safety Features supportd
[   80.520258] rk_gmac-dwmac fe010000.ethernet eth0: IEEE 1588-2008 Advanced Tid
[   80.520514] rk_gmac-dwmac fe010000.ethernet eth0: registered PTP clock
[   80.520898] rk_gmac-dwmac fe010000.ethernet eth0: configuring for phy/rgmii e
[   84.615184] rk_gmac-dwmac fe010000.ethernet eth0: Link is Up - 1Gbps/Full - x
root@bpi-r2pro:~# ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group defau0
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group def0
    link/ether 76:95:00:96:b3:89 brd ff:ff:ff:ff:ff:ff
    inet 192.168.0.12/24 scope global eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::7495:ff:fe96:b389/64 scope link
       valid_lft forever preferred_lft forever
3: eth1: <BROADCAST,MULTICAST> mtu 1504 qdisc noop state DOWN group default qle0
    link/ether 76:95:00:96:b3:88 brd ff:ff:ff:ff:ff:ff
4: sit0@NONE: <NOARP> mtu 1480 qdisc noop state DOWN group default qlen 1000
    link/sit 0.0.0.0 brd 0.0.0.0
5: lan0@eth1: <BROADCAST,MULTICAST,M-DOWN> mtu 1500 qdisc noop state DOWN group0
    link/ether 76:95:00:96:b3:88 brd ff:ff:ff:ff:ff:ff
6: lan1@eth1: <BROADCAST,MULTICAST,M-DOWN> mtu 1500 qdisc noop state DOWN group0
    link/ether 76:95:00:96:b3:88 brd ff:ff:ff:ff:ff:ff
7: lan2@eth1: <BROADCAST,MULTICAST,M-DOWN> mtu 1500 qdisc noop state DOWN group0
    link/ether 76:95:00:96:b3:88 brd ff:ff:ff:ff:ff:ff
8: lan3@eth1: <BROADCAST,MULTICAST,M-DOWN> mtu 1500 qdisc noop state DOWN group0
    link/ether 76:95:00:96:b3:88 brd ff:ff:ff:ff:ff:ff
root@bpi-r2pro:~# lsusb
Bus 006 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 005 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
root@bpi-r2pro:~# lspci
0001:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3568 Remote Signal Pro)
0002:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3568 Remote Signal Pro)
root@bpi-r2pro:~# uname -a
Linux bpi-r2pro 6.3.0-rc4-bpi-r2pro #1 SMP PREEMPT Mon Apr 10 13:39:18 CEST 202x
root@bpi-r2pro:~#

tested eth1 too...also working. so maybe "only" a evb related dts-change or between rc4 and rc6

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
