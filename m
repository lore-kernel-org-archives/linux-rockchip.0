Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 553D9C2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 15:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPTZdP7GCtzz7XIlovqZ70LFlwZxdSqXv91dXweZT8E=; b=YOnlwZkTFO4guM
	pDzODCCWKo7VgoNYfa7PZGc6Kqtkhd7TBbnrhwO7BOwf6t/uMW4nxRaQCa3iavu4DEV7xMFM/+UHp
	ADkaa8gV9zTNZsfiS1J1NozpYq6ggAVzaHUYVmkkwpknkKLXNraq2AfbZkcxcOfj53IHWbugK45rn
	oBK8/2TNfwcitJZEXIpE7OmbBtT0hUyFsDCGvkbj6O5K2ytEZhNTEeD1QCKKkc/rsJqonpGZoFRt8
	quE9syc9H8bU3GN5ctZsEummgrBLV4SQoJFN/JbGg9O48uMjQVA0TcBkb9C3BqLJXUxlOA+YqWqVt
	X/+4GB6C4d5A79tUkmFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRCX2-00000007hEo-2PzO;
	Tue, 09 Jul 2024 15:13:28 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRCWl-00000007hDB-2lJD;
	Tue, 09 Jul 2024 15:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=QA4wJf2ZI+dnTlMziJBxxGsICxAL2uhDoXcfkDEYw1E=; b=3UTbawHcbh/V7IlOHEK/Gw+fO1
	Tg4LMhGxffG/BtbtNBcFScLZVZ06IgA4NZHgTXMkJzqNLD5r8Wr1VTY4CjG+jGe27zEK6NGgT7Lu9
	gVT0CBXD7XGVi2GdMObErlh6NZdFn5lUSkHOhNXuIAGQ01iW0WdptnVtbPmNExJl7ajA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sRCWi-0029gp-5i; Tue, 09 Jul 2024 17:13:08 +0200
Date: Tue, 9 Jul 2024 17:13:08 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Daniel Martin <dmanlfc@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, heiko@sntech.de
Subject: Re: Hardkernel Odroid-M1S no USB 2.0 & Ethernet
Message-ID: <3b23e8c9-b1d0-4cb0-bc75-f3b0f732fdc7@lunn.ch>
References: <CAOyTmd2GEOYQiiJjYFbb9tK1D4iAndYwvuFj82tKoTEvHRVB=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOyTmd2GEOYQiiJjYFbb9tK1D4iAndYwvuFj82tKoTEvHRVB=Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_081311_720627_66ABFEC1 
X-CRM114-Status: GOOD (  13.37  )
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

On Tue, Jul 09, 2024 at 02:22:12PM +1000, Daniel Martin wrote:
> Hi,
> 
> Currently the Odroid M1S based on the RK3568 processor is not enabling
> Ethernet or the USB-A 2.0 port on the device.
> 
> Here is the output of ethernet failing.
> 
> [    0.351616] rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
> [    0.351640] rk_gmac-dwmac fe2a0000.ethernet: IRQ sfty not found
> [    0.352311] rk_gmac-dwmac fe2a0000.ethernet: supply phy not found,
> using dummy regulator
> [    0.352467] rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
> [    0.352484] rk_gmac-dwmac fe2a0000.ethernet: TX delay(0x4f).
> [    0.352499] rk_gmac-dwmac fe2a0000.ethernet: RX delay(0x2d).
> [    0.352520] rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
> [    0.357610] rk_gmac-dwmac fe2a0000.ethernet: init for RGMII
> [    0.358099] rk_gmac-dwmac fe2a0000.ethernet: Version ID not available
> [    0.358120] rk_gmac-dwmac fe2a0000.ethernet: DWMAC4/5
> [    0.358135] rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability
> register supported
> [    0.358146] rk_gmac-dwmac fe2a0000.ethernet: Ring mode enabled
> [    0.358174] rk_gmac-dwmac fe2a0000.ethernet: device MAC address
> b6:bf:27:ec:65:d4
> [    0.358191] rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
> [    0.358210] rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA
> host/device width
> [   16.932085] rk_gmac-dwmac fe2a0000.ethernet eth0: Register
> MEM_TYPE_PAGE_POOL RxQ-0
> [   16.932837] rk_gmac-dwmac fe2a0000.ethernet eth0: validation of
> with support 00,00000000,00000000,00006000 and advertisement
> 00,00000000,00000000,00000000 failed: -EINVAL

        ret = phylink_validate_phy(pl, phy, supported, &config);
        if (ret) {
                phylink_warn(pl, "validation of %s with support %*pb and advertisement %*pb failed: %pe\n",
                             phy_modes(config.interface),
                             __ETHTOOL_LINK_MODE_MASK_NBITS, phy->supported,
                             __ETHTOOL_LINK_MODE_MASK_NBITS, config.advertising,
                             ERR_PTR(ret));

So between "of" and "with" there should be an interface mode. Looking
at
https://elixir.bootlin.com/linux/latest/source/include/linux/phy.h#L223
this suggests configure.interface is PHY_INTERFACE_MODE_NA, which is
0. This could be correct, but it is a bit unlikely.

Also, advertisement 00,00000000,00000000,00000000 looks wrong. It does
not what to advertise anything. The 6 in support means it can do pause
and asymmetric pause, but there are no speeds listed.

So something is wrong with the connection between the MAC and
PHY. Please could you give a link to the .dts file.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
