Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E77A1CE7AB1
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 03:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDgGSgZ6r50UISOGUFAg9TjOazPazYGNdxYsYmVLoSk=; b=3ivfcg5zZKvM7x
	FMkCZPvMr8DZtxnzC4rtKDyQt+e8XXpCZuEfYuHk0Ac5eTEgv0AVx9n8p5EJj/19d31Iey3tgx7Gw
	R7SOGwHsZA3P+VUbCJHEmtbWs5A5qIs3XFoKJlA+UWWQ8/36w5PO0/w9XTSja8GCirSy2ylfAqhza
	FgEsjO8Ua2j496WjJZWg0GnwlIkxchpsvQ7oklGLGeBYftp5u5piBlygtIS0zyk4f/u+sOFeNeDpS
	y26YEjxz5PzaYIVeIYwo1d4I8ENEv1t+1+XdtwwQaWLNK3cF18QJ3oy5N2tyWHdubFNwBkdBCuyeV
	lNi3vhdnHpQ9RnkI09Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smQ05-0000000AZBr-0cei;
	Fri, 06 Sep 2024 03:51:09 +0000
Received: from mail-m25475.xmail.ntesmail.com ([103.129.254.75])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smQ00-0000000AZAs-2gXv;
	Fri, 06 Sep 2024 03:51:08 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:3b50::1])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 40DED7E0172;
	Fri,  6 Sep 2024 11:50:24 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: amadeus@jmu.edu.cn,
	andrew@lunn.ch,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
Date: Fri,  6 Sep 2024 11:50:18 +0800
Message-Id: <20240906035018.33211-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <fd4fc7a0-7def-4f91-a64c-71689ff71d1c@classfun.cn>
References: <fd4fc7a0-7def-4f91-a64c-71689ff71d1c@classfun.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGh9IVkwdThhITBhNSxlKQ1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUgZTktBQUpZV1kWGg8SFR0UWUFZS1VLVUtVS1kG
X-HM-Tid: 0a91c574623003a2kunm40ded7e0172
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oio6Sgw6MDI5DT9NLSkaLUgo
	GEIaChlVSlVKTElOTkJPTUlOSUhMVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBSBlOS0FBSllXWQgBWUFKTExINwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_205104_907472_5A27ED60 
X-CRM114-Status: UNSURE (   6.07  )
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

Hi Junhao,

> I have tried rgmii-id with tx_delay/rx_delay 0x38/0x15, or 0x0/0x0,
> or directly removed tx_delay/rx_delay, they all didn't transmit data.
>
> I saw in dwmac-rk.c that when using rgmii-id, the tx_delay/rx_delay
> properties in dt are ignored?

When using rgmii-id mode, tx_delay and rx_delay can be removed directly.
But you need to test whether the rx/tx-internal-delay-ps is appropriate.

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
