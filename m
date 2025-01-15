Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DF2CE77188
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 02:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9tmoLcsMGpFLkMQnu7FiQxwNWPPbefup6KXQQh5Hoc=; b=hB0Dy4xf7wnUKJ
	VZpJa0UfjOJ3/HWwvNiUtxYt0XDHvawohIn03x6u8OCYIulpjc07NsNPR2kWLQZMBCNcf2b2DuqzW
	F5go2Y0blWpZziewzgbV4z2siOo3zmx52+kOGLGYvHgpOxErdYe8t1tgW9Pv7E24kMyJoX+tdkm5h
	Ke3wumXJ+b5iXnq9TpPSjE5kb5M9AgByB1GKvw/QYayOtySvHE2IxwPlHoTtpQalihpZRJakZ2rUg
	E5+d5w5jG2ao1MpoloXGhLt6H/6XzVBZgLRQbFnVuXzJf0DJDc8nqR/j6za/XpNW+xKsxPjbhDJ7+
	YLky2wr5Tti/Kw4ZErZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXshk-0000000AMY7-1I2O;
	Wed, 15 Jan 2025 02:00:24 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXshh-0000000AMWr-0JVh;
	Wed, 15 Jan 2025 02:00:22 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:1f0:6a66:664e:ef87:7f44])
	by smtp.qiye.163.com (Hmail) with ESMTP id 8b43c33e;
	Wed, 15 Jan 2025 10:00:09 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	naoki@radxa.com
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: default to host mode for USB on Radxa E25
Date: Wed, 15 Jan 2025 10:00:06 +0800
Message-Id: <20250115020006.10336-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <d7b2e993-c6c8-4e60-bfe2-80857ca8a992@kwiboo.se>
References: <d7b2e993-c6c8-4e60-bfe2-80857ca8a992@kwiboo.se>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTE9CVhpIHh1ISEtDHk9MQ1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUodS0FNGk1NQU1NTx5BHh1DTEFMHU9PWVdZFhoPEh
	UdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQktLWQY+
X-HM-Tid: 0a9467b0878c03a2kunm8b43c33e
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OE06TRw*LTIcF08sMQoDFz4C
	LitPCxVVSlVKTEhNQktNT0pLTkNDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBSh1LQU0aTU1BTU1PHkEeHUNMQUwdT09ZV1kIAVlBTEpINwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_180021_312782_C0BD09EC 
X-CRM114-Status: UNSURE (   7.96  )
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
> I would advise against using any sd-uhs- mode for sd-card on Rockchip
> RK356x boards because of a timing issue during boot between mmc,
> regulator and IO-domain drivers.

This problem seems to occur only on rk356x?

> Ideally this race condition should be solved instead of limiting use
> of UHS modes. However, use of sd-uhs-sdr50 is typically more forgiving
> and has been used on other boards.

It seems that sd-uhs-sdr50 does not need 1.8V IO voltage.
I tested the speed on a rk3528 board with sdio wifi:
(The IO voltage of sdio on this board is 3.3V)

highspeed: 170Mbps DL
sdr50:     290Mbps DL
sdr104:    290Mbps DL

So sdr50 should be safe.

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
