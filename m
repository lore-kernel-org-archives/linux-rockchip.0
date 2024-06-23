Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B624C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 04:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9nG/6F8RoQY4eMB0L1Q2ViXFiTIb5dMVrqMt+HgnGs=; b=H9o1QFim78+4BR
	KMNwVdIbvfKTLJdm7E5L0p+ddXCnd0/rJPKhutYpm6KaPnInGB7/hF0b6tZEw1C5vIETs+WgB5O9+
	l7pnovWVUFNMuks0YkUUtUaVV2hGJj/Qxo/NzpbixuCOjjACQOB4eneoD3H6WMoyvQSskf22qcMuN
	JTmrur2eJsML22vCuQzQi/3AzRwm4BEmM5xr0216G4P8s4+h9Zq7xcRSH2AICVeetoylFDjDjzBku
	Qm468NtAYEwWNEDYwZgn0+L5s4asZ9jbJfZShuDferu46pToyu/4Tt/9aYGJRthxKlLv6aObnOBsA
	WkStYDK43KDH1hUJlYYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLETI-0000000DI8k-2QXK;
	Sun, 23 Jun 2024 04:04:56 +0000
Received: from mail-m6019.netease.com ([210.79.60.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLETE-0000000DI7G-0fvb
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 04:04:54 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:9890:bf8:dc2c:bace:c7cf])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 98F7F7E0166;
	Sun, 23 Jun 2024 12:04:13 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	chris.obbard@collabora.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK 3C
Date: Sun, 23 Jun 2024 12:04:09 +0800
Message-Id: <20240623040409.1756986-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240623023329.1044-3-naoki@radxa.com>
References: <20240623023329.1044-3-naoki@radxa.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSU9JVk5PTktOTEJLT0xNSVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUJDQktBGR1DQR8YSRhBGRoYHkEYTBgdWVdZFhoPEh
	UdFFlBWU9LSFVKS0lPT09LVUpLS1VLWQY+
X-HM-Tid: 0a90434415a203a2kunm98f7f7e0166
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P1E6Sio5SzNLTj8DNxQ2SSE1
	KhoKCxBVSlVKTEpCSkpOT05PSUtCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBQkNCS0EZHUNBHxhJGEEZGhgeQRhMGB1ZV1kIAVlBSk1JQzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_210452_525888_86538588 
X-CRM114-Status: UNSURE (   4.26  )
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
> SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.

I don't think a fixes tag is needed, because there is no documentation
for this. See also (sfc part):
https://lore.kernel.org/lkml/d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se/

>
> Fixes: ee219017ddb5 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
