Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4966BCA0EE9
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Aug 2025 13:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WipnZI5ZsOp9IITyEVMIbOOVdB+O4iTDk2QbKV9e5I8=; b=Q1So5caSS54m+z
	wybRrdk6t2ZIlv87my9FNzu889SDrtjVnAGpjnJXJxqp/Y6n9Q/M7lbJJ5PRgB9yh8XbIjnG8hXXI
	BtsIHvLzeyMaWy5VwfarOatgDx2/vY8hz5Y7Eeml/gaeOMuWGpWPsnNC6mfu5NDrQPgrqyaGzqkqA
	gpkYuiG5gGxuzuusj6kvtbWRqXeJw03DXit6lbTbIQcHWYKCSNUT1Km/439vb3tM6mzyE6Z8OdFQw
	NbBzxNB2NLLmot4R44/kiszLG/6hmQzYCykvua6lKhJynIF8ZFaOXtDdD29f9hybJGi/m9983KMnN
	NCdM3IQXmp+G5v2M1XfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umuGP-00000002YCv-3MT6;
	Fri, 15 Aug 2025 13:14:36 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umrFY-000000028g7-2UmI;
	Fri, 15 Aug 2025 10:01:30 +0000
Received: from localhost.localdomain (unknown [119.122.212.9])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1f81529f9;
	Fri, 15 Aug 2025 18:01:15 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	ziyao@disroot.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E24C
Date: Fri, 15 Aug 2025 18:01:10 +0800
Message-Id: <20250815100110.1302357-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <058E04574291144B+66620590-b680-44b9-92c5-7dc4c43080e7@radxa.com>
References: <058E04574291144B+66620590-b680-44b9-92c5-7dc4c43080e7@radxa.com>
MIME-Version: 1.0
X-HM-Tid: 0a98ad2d2bef03a2kunmff7e9ce61e6136
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSh5NVkxKH01MSE1OGkgZSVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVCWVdZFhoPEhUdFFlBWU9LSFVKS0lCTUtKVUpLS1VLWQ
	Y+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250815_030128_831723_D05366A2 
X-CRM114-Status: UNSURE (   5.88  )
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

> "label" is deprecated. "color" and "function" should be enough to 
> explain what they are.
>
> (Personally, I prefer LED_FUNCTION_STATUS to LED_FUNCTION_HEARTBEAT)

BTW, will there be versions of Radxa E24C and Radxa E54C with
onboard eMMC? It seems that they are all onboard SPI instead
of eMMC. If there is no onboard eMMC version, we can remove
the sdhci node in dts.

Thanks,
Chukun

--
2.25.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
