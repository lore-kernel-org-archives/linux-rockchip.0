Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF0A7D5B164
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Oct 2024 08:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbczteWA0vcZhWqeY4PwhKJySxI1yXSJzlb+L7h4aEI=; b=a7v04x5oT16L1U
	iqjLaa78oYhtaEzlUDk0q7m5dICDBMiq5FOxvwsoAWx5LzJOymZLFbvt8/lt4S97Du5rtDSx/vEsW
	VAPhL7qa0DWe7Ma66QKa4mBoNYrdDXFxgXH/KriRC9Mw7BqmJXqOz5F6ESZ18R5LGYWJliLGN1QpU
	NxZ32KvrjOs1kr9xhDymdrRljYzGL4XKBzDq2pdGfhfle2JgG1JXMfnJy3HWk3v3wcZXnqlJShgJe
	PsXXOxB+cmthUKMpAfLzOwSUlPK96SmgmqJ8Q5+nnbRNIfXmXD2fVh8rNt/PH9qT1DbR+pupVoZdR
	zRoXkhXv6iFHJVkVwLew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5hYv-0000000DgEy-3HCR;
	Tue, 29 Oct 2024 08:26:49 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5hVH-0000000DfBm-3iJu
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Oct 2024 08:23:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=6WXE9mUg3P5hjkvI4QQV/zWTg3ZpNccIdHRuTSzHYbI=; b=Y
	N6tt5TGtmhU68omS2gBWRZwiNrznTVwhKgoIbeweAaidSYtqThNHkVglvn6rKwak
	3OAF8BFU+vq9mdDqg0XNcXifHuDqfDW/C7MYaxFf24MDWXWyyOsIYi/6y9OCEVnP
	1B+yUHk7VEqxDVhRdpVD7d71d232VSYVnfbh24SLMY=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-117 (Coremail) ; Tue, 29 Oct 2024 16:22:16 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Tue, 29 Oct 2024 16:22:16 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Andrew Lunn" <andrew@lunn.ch>
Cc: "Johan Jonker" <jbx6244@gmail.com>, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, david.wu@rock-chips.com, 
	andy.yan@rock-chips.com, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re:Re: [PATCH v1 2/2] net: arc: rockchip: fix emac mdio node
 support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <0a60a838-42cb-4df8-ab1f-91002dcaaa14@lunn.ch>
References: <dcb70a05-2607-47dd-8abd-f6cf1b012c51@gmail.com>
 <f04c2cfd-d2d6-4dc6-91a5-0ed1d1155171@gmail.com>
 <250cdfef.1bfc.192cd6a1f72.Coremail.andyshrk@163.com>
 <0a60a838-42cb-4df8-ab1f-91002dcaaa14@lunn.ch>
X-NTES-SC: AL_Qu2YAv2Sv0ko4CifY+lS/DNR+6hBMKv32aNaoMQOZ8UqqTHC6CwvbV1SBFDxyvoKJBLKOS6J7O0VAl6MYG8s
MIME-Version: 1.0
Message-ID: <a7c2431.871a.192d75e5631.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: dSgvCgAHJGw4myBntukZAA--.994W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwiHXmcgkjHMLQADsk
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_012304_572694_A70B6EB4 
X-CRM114-Status: UNSURE (   5.92  )
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


Hi Andrew,

At 2024-10-28 20:59:18, "Andrew Lunn" <andrew@lunn.ch> wrote:
>> Hello Johan,
>>     Thanks for your patch.  Maybe we need a Fixes tag here?
>
>What is actually broken?

The emac failed to probe after bellow patch merged.

 [    2.324583] loop: module loaded
    [    2.328435] SPI driver spidev has no spi_device_id for rockchip,spidev
    [    2.338688] tun: Universal TUN/TAP device driver, 1.6
    [    2.345397] rockchip_emac 10200000.ethernet: no regulator found
    [    2.351892] rockchip_emac 10200000.ethernet: ARC EMAC detected with id: 0x7fd02
    [    2.359331] rockchip_emac 10200000.ethernet: IRQ is 43
    [    2.364719] rockchip_emac 10200000.ethernet: MAC address is now e6:58:d6:ec:d9:7c
    [    2.396993] mdio_bus Synopsys MII Bus: mdio has invalid PHY address
    [    2.403306] mdio_bus Synopsys MII Bus: scan phy mdio at address 0
    [    2.508656] rockchip_emac 10200000.ethernet: of_phy_connect() failed
    [    2.516334] rockchip_emac 10200000.ethernet: failed to probe arc emac (-19)


commit 1dabb74971b38d966ecef566bafddc4a34f4db9d
Author: Johan Jonker <jbx6244@gmail.com>
Date:   Fri Jun 3 18:35:39 2022 +0200

    ARM: dts: rockchip: restyle emac nodes
    
    The emac_rockchip.txt file is converted to YAML.
    Phy nodes are now a subnode of mdio, so restyle
    the emac nodes of rk3036/rk3066/rk3188.
    
    Signed-off-by: Johan Jonker <jbx6244@gmail.com>
    Link: https://lore.kernel.org/r/20220603163539.537-3-jbx6244@gmail.com
    Signed-off-by: Heiko Stuebner <heiko@sntech.de>

>
>	Andrew
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
