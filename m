Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A98A0C88E42
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8YSJB9ipX+lvhyhS6ZjsG/ylhfBBacWhbyEk/+uKJE=; b=tKwVgdUVi2FxwV
	qF1h4uqYvRgcWALJg0DPQhQZ+9LXhs1TJf13h+blkSHIXisrvxECyLH5y5t2BnB5T4eBSSOj4gm1l
	Tr+EaUaoMmIPKpzfpaiPaLhmNxigV4l5SiZznNL8LGThKCWC3cS1HAkSsQaVibh/TGVT81Kz3ASyQ
	KokKpId7m023p4FLbAbsf0hl3rtCwIzEAdQGHb7K9rdgGPZStnD+Hd8boDFNVwQYccNZEwIycV097
	4vLn1IIH0QM4LECGlQbr17vsctgO7RWnVtSSYY3ffxjFWw5WRmGOf1JQ7eBIN0JNITLXLNPOxeRhQ
	gjPl4X8henWxwBAOlqgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4vAK-0000000Fy8J-20yw;
	Fri, 11 Sep 2026 06:55:16 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4vAG-0000000Fy7p-3Tbv;
	Fri, 11 Sep 2026 06:55:15 +0000
Received: from Vostro-3710.. (unknown [14.220.232.127])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d649de3c;
	Fri, 11 Sep 2026 14:55:07 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: razor1702@gmail.com
Cc: HystericalDragons@proton.me,
	amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	devnull+hystericaldragons.proton.me@kernel.org,
	diederik@cknow-tech.com,
	heiko@sntech.de,
	jensenhuang@friendlyarm.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	jonas@kwiboo.se
Subject: Re: [PATCH v3 1/5] arm64: dts: rockchip: Reset the NanoPi Zero2 PHY from the MDIO bus
Date: Fri, 11 Sep 2026 14:55:00 +0800
Message-Id: <20260911065500.3145846-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260909225002.976-1-razor1702@gmail.com>
References: <20260909225002.976-1-razor1702@gmail.com>
MIME-Version: 1.0
X-HM-Tid: 0aa08f3fa3b903a2kunm0979cd011deada
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTENDVkkfTU4dTx1DGk0YTVYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKT1VJSUtVSUhJVUpJTFlXWRYaDxIVHRRZQVlPS0hVSktISk
	5MTlVKS0tVSkJLS1kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_235513_095599_C8D4F432 
X-CRM114-Status: UNSURE (   5.52  )
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

>  &mdio1 {
> +	reset-delay-us = <20000>;
> +	reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
> +	reset-post-delay-us = <100000>;

This is an incorrect change, see also: [1]
Since you are using mainline U-Boot 2026.07, you should have
already noticed that nanopi-zero2-rk3528 is available.
Therefore, the nanopi-zero2-rk3528 target should be used
instead of generic-rk3528.

[1] https://lore.kernel.org/lkml/1e8da54f-ef87-4d31-9a0a-17c0ff66bee0@kwiboo.se/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
