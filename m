Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3003BC3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 14:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZABV8Y4UYecAB53TDTGuroTBOlYiHyBwzz37YYzk3iU=; b=As7LIxVX+eSRid
	5Hc/jPVbIQUvAZoDadTz6nTZsPNdRhJ4SJQYBYoXD7oK1kVAZQtMuwDKHQkCplw6q19CXwSqfz+Xu
	Uk2NzPo8gm5OLj2Ss/z0qvB+2WTbaKr9dX4KzeK410ahRUCWu1pWlvf/dWz/I5CZwU8ehRjVL2Vy/
	llopL9SJNACqzlgdCZRrZF2Dpoa6m8UYyJS65EEy2+NhMlobMXm26y5mY7zD5juF5FllZqJ+tBZpl
	W3P83YIvHX+awb3tdHP3u3gJxJzLzeKsYoruS+aOvylIbBopJ/ypS4ln5uiscwxGda54Ukr8EpijW
	q3Ef+Dv/FuAL8HO9eRYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYek-0000000Asak-2n2u;
	Wed, 10 Jul 2024 14:50:54 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYeX-0000000AsYS-07bF;
	Wed, 10 Jul 2024 14:50:53 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:fb60:82c0:6879:f4d2:caf4])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 6F3577E0166;
	Wed, 10 Jul 2024 22:50:13 +0800 (CST)
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
	robh@kernel.org
Subject: Re: [PATCH v2 7/9] arm64: dts: rockchip: use generic Ethernet PHY reset bindings for Lunzn Fastrhino R68S
Date: Wed, 10 Jul 2024 22:50:10 +0800
Message-Id: <20240710145010.688986-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <caf55fe6-4674-4c89-a94e-f4ad348e2ba0@kwiboo.se>
References: <caf55fe6-4674-4c89-a94e-f4ad348e2ba0@kwiboo.se>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCQh1OVk5PGR1NHU1OHx1ISVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQR0ZTUtBQ0kYS0FNQ0xCQR1PH0lBGBodT1lXWRYaDx
	IVHRRZQVlPS0hVSktISUxCS1VKS0tVSkJLS1kG
X-HM-Tid: 0a909d1f9f3f03a2kunm6f3577e0166
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTI6Egw6GTIzDDAOIyIRPzAJ
	KwsKC1ZVSlVKTElLTUlIS0pPS0NCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBHRlNS0FDSRhLQU1DTEJBHU8fSUEYGh1PWVdZCAFZQUpDTU83Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_075041_346837_28F8FF11 
X-CRM114-Status: UNSURE (   7.84  )
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

> Where do you find the 72ms in the datasheet?

I refer to this commit:
https://github.com/torvalds/linux/commit/1c7412530d5d0e0a0b27f1642f5c13c8b9f36f05
BTW I found that some boards use the RTL8211F-VD PHY,
but I can't find the datasheet.

> In RTL8211F-CG v1.1 I see 10ms and minimum of 30ms, in v1.2 and v1.4
> I see 10ms and minimum of 50ms.

> I have used 50ms on a few recently added boards and they seem to all
> work fine with 50ms, wonder if the deassert delay should be changed for
> those boards.

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
