Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52CFEC3ABC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 May 2025 07:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vezu63jJCofqcYuVo2HSLvQ4/89tNcU4Lt/GCBGCVI=; b=0IP8av1zP35XWP
	VoZzBvxm3+G5CVbe42ywxnOs3Rw5Q6Ny6yOfL9Qt+E9na3rLPGDnoV059B+YsX85rU9+CTw2VTrVT
	KOzo50Ifg6QL5NRIsY2DuuSq2pqrzzjqIMftjQLjIyOLMBJbRxszLhHQ+Gb4RXY0oBvcozSRMoO2E
	j/dgk6LLa+ff1/Z+moZMDGh3Saf/u6nqYUNECyDz3R0lpuqYj61jOfX6vAZzVziuaVZeesODi/F7/
	EFME+HMx7OB3XByQoHAoTNk0hSz5QBRDjJtc5UL8kjidvI/4b3rgUFjoOEehheG6B6Qowx0JjOLP+
	T2C8VYQefrNDMpOGIF9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uENAx-00000008aLj-2qjq;
	Mon, 12 May 2025 07:02:11 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEN97-00000008a4E-0uL6;
	Mon, 12 May 2025 07:00:19 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c03:9b0:a65:40ce:ae50:9398])
	by smtp.qiye.163.com (Hmail) with ESMTP id 14b61caf7;
	Mon, 12 May 2025 15:00:11 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: didi.debian@cknow.org
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/1] arm64: dts: rockchip: rk3568: Move PCIe3 MSI to use GIC ITS
Date: Mon, 12 May 2025 15:00:09 +0800
Message-Id: <20250512070009.336989-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <D9RSA5K547DD.1LYPIZZM4XALS@cknow.org>
References: <D9RSA5K547DD.1LYPIZZM4XALS@cknow.org>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTRkfVkJLHkJCGB4YHk0fH1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtIQUIZS0EaTU5BT0sYHkEaHk5LQUJIQkNZV1kWGg8SFR
	0UWUFZT0tIVUpLSEpOTE5VSktLVUpCS0tZBg++
X-HM-Tid: 0a96c34b42d603a2kunm14b61caf7
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRg6Tzo5IjJMCU8#OApPLBhL
	HykKCRBVSlVKTE9MS0hISUpJQ05PVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0hBQhlLQRpNTkFPSxgeQRoeTktBQkhCQ1lXWQgBWUFJSENJNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_000017_424091_DF0250BF 
X-CRM114-Status: UNSURE (   8.53  )
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

> > With this patch I get the following kernel warnings:
> >
> > pci 0001:10:00.0: Primary bus is hard wired to 0
> > pci 0002:20:00.0: Primary bus is hard wired to 0
> >
> > If I 'unapply' this patch, I don't see those warnings.

> I was pretty sure I had seen those messages before, but couldn't find
> them before. But now I have: on my rk3588-rock-5b.

Thanks for the reminder, I didn't notice this before.
The BSP kernel also has this warning.

Before this patch:
[    2.997725] pci_bus 0001:01: busn_res: can not insert [bus 01-ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
[    3.009990] pci 0001:00:00.0: BAR 6: assigned [mem 0xf2200000-0xf220ffff pref]
[    3.018100] pci 0001:00:00.0: PCI bridge to [bus 01-ff]
...
[    3.401416] pci_bus 0002:01: busn_res: can not insert [bus 01-ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
...
[    3.545459] pci 0002:00:00.0: PCI bridge to [bus 01-ff]

After this patch:
[    3.037779] pci 0001:10:00.0: Primary bus is hard wired to 0
[    3.044120] pci 0001:10:00.0: bridge configuration invalid ([bus 01-ff]), reconfiguring
[    3.053362] pci_bus 0001:11: busn_res: [bus 11-1f] end is updated to 11
[    3.068920] pci 0001:10:00.0: PCI bridge to [bus 11]
...
[    3.451429] pci 0002:20:00.0: Primary bus is hard wired to 0
[    3.457793] pci 0002:20:00.0: bridge configuration invalid ([bus 01-ff]), reconfiguring
...
[    3.535794] pci_bus 0002:21: busn_res: [bus 21-2f] end is updated to 21
...
[    3.612893] pci 0002:20:00.0: PCI bridge to [bus 21]

Looks like a harmless warning.

Thanks,
Chukun

--
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
