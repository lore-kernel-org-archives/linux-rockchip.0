Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5596C83F17
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 14:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lx3OzMt5iBdvbU9hkgMAQJ3OGt0jS5PKwpP/Zp7MgQ=; b=V5bi1Iu4vlFGeE
	Hhoi8x4uyjqF92qwnRFwhWp2nk1fis8YUMhmspHratfSceHzCA/ovSk5A+NbHfuBo9Y0wh2NS5brE
	DtF9nSCFtLE5zilpPtHypUiD9qySsdNQ6uaSWMnYAB/KndnAXo3t5iC8cQIanQK6F/WEFj/Ndqul6
	GnnZsK4ePnc6uJ6p8xpG+6w1KJpr1DRdlZfUXD4A2J1LLeVQKdDcXW/wHL0WqjK3TUWp5k6udc7M2
	2ikctv0WwuG1BW8Ob5uPElKBIE5gS8fPEhXTpcJgz+q2iW3VA3EUiH2AeqnhwKwHSoP+wKCTAmAXt
	yAxlL8nniuWKWxShStTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueaPK-00000005CCa-3Ezn;
	Wed, 23 Jul 2025 14:25:22 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueZi3-000000055KH-2k9A;
	Wed, 23 Jul 2025 13:40:41 +0000
Received: from localhost.localdomain (unknown [119.122.214.181])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1d028433b;
	Wed, 23 Jul 2025 21:40:24 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: knaerzche@gmail.com
Cc: amadeus@jmu.edu.cn,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	ziyao@disroot.org
Subject: Re: [PATCH v3 0/6] arm64: dts: rockchip: Add ROCK 2A/2F, Sige1 and NanoPi Zero2
Date: Wed, 23 Jul 2025 21:40:19 +0800
Message-Id: <20250723134019.1076352-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <6d93c92d-2bba-4247-960d-5f2e5e12b594@gmail.com>
References: <6d93c92d-2bba-4247-960d-5f2e5e12b594@gmail.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHR8eVh8dGh9DGUxITkwdHVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKT1VKQ0pZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0tVSktLVU
	tZBg++
X-HM-Tid: 0a9837838c6c03a2kunm45ceffd2fb6d7
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NhA6ATo4OTEdSTIsTCwhCw8Z
	KBQaFDRVSlVKTE5ISUxDS0lOTEhCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpPVUpDSllXWQgBWUFKTEJMNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_064039_885750_5B270208 
X-CRM114-Status: UNSURE (   9.46  )
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

> Nope.
>
> Are you really questioning my picture? Ridiculous ... see [0]

No, I mean some boards of this model have SoC silkscreen RK3528 and
others have RK3528A. The same is true for another Hinlink H28K SBC.

> I'm sort of impressed on with which conviction you continue to claim
> plain wrong things: [1], [2], [3].

If you spend a few minutes running mainline u-boot or BSP kernel
on your RK3528 board before blaming me:

BL31:
INFO:    rk_otp_init finish!
INFO:    RK3528 SoC (0x101)

mainline u-boot:
------
U-Boot 2025.07-...

Model: Generic RK3528
SoC:   RK3528A
------

BSP kernel:
[    0.768514] rockchip-cpuinfo cpuinfo: SoC            : 35281000
[    0.768990] rockchip-cpuinfo cpuinfo: Serial         : ...

> I'm fine if upstream decides not to care. But it is and remains wrong
> to claim that the other version does not exist

Unless Rockchip says they fused the wrong OTP during production.
Regardless of the SoC silkscreen, the chip type on OTP is the same,
so how does Rockchip distinguish these chips?

--
2.25.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
