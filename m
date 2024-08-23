Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62434C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 09:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FpWMs2kJU3K1Pl6g+DOHwWAo5FmngbZyziLxFSbEqUI=; b=V7eyASCeMrtq/t
	zwXkx717VGnAfbUeiQH3ozdHmXo7zZYCXr/qW+8G/S1vrLBGZAVIQk3GVdmPnCudS9lFhuRmMScGE
	UrwN6rORw2oE2cV1MI+u+yA6v7ku+c5gFxu3qtduFp31ose1LHzhICm12xAVDVugQoaI7Rh2eT3mB
	KqxtUnm1qK4pLH3f1/aYmu1MtC7oNW+5rIv+sghP1iRulW52h3tu2M4ksW1Hu11y87hVYQNUdWdWp
	ZlldIppCGipqmSbu/q5iOzIZr5xntn7lwqBy5TxhZCjCb8AT8UfXvQPM6jRBK4xZJfd+yR5LUP9MO
	FWYDM/ywH9GbNrqubqvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQb4-0000000G7PS-26G3;
	Fri, 23 Aug 2024 09:28:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQab-0000000G7Er-3HXz;
	Fri, 23 Aug 2024 09:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=n0iG4z0x1+eAPWBBF6r0sGy0XLMNeiSfA3ky7GwBfBo=; b=aYW2EMSPM1ZarsCG15qwtzWItJ
	zWYYkm/AbZEOpqFXWbqJ0cwz7YGonkbqKZfdl54cvI7U/h4ts+3pxqHJwhR+LOmLav4zhnvVwP7zl
	vZZ1Iyt/D1QmWT7ODmKS8gYY6kQBOnlkrZ7OdFzSqgnlOAhwBRX/V9wm9k9FekMZk5kGTIPTT+0xB
	nJIvOMWmKDKCyonqAQWZ58sF8Kfxy2zywIpVrWDcCdQGE1a48yd/Ncem+clZdEJNRi683p3XeROVu
	Za/RYzB/bM/scQtoUojdVBURd10+rYgo4tdcKvhr8WLhenFJDeb1e5JQgk3zFDoksg9Pulp2GmXf8
	FcYH6aYg==;
Received: from i5e861933.versanet.de ([94.134.25.51] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1shQaZ-0003nt-M1; Fri, 23 Aug 2024 11:28:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, brgl@bgdev.pl, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ye Zhang <ye.zhang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 mika.westerberg@linux.intel.com, andriy.shevchenko@linux.intel.com,
 tao.huang@rock-chips.com, finley.xiao@rock-chips.com,
 tim.chen@rock-chips.com, elaine.zhang@rock-chips.com,
 Ye Zhang <ye.zhang@rock-chips.com>
Subject: Re: [PATCH v2] gpio: rockchip: release reference to device node
Date: Fri, 23 Aug 2024 11:28:52 +0200
Message-ID: <4031563.ZaRXLXkqSa@diego>
In-Reply-To: <20240823034314.62305-3-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-3-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_022813_931477_6F6A0AA7 
X-CRM114-Status: UNSURE (   9.67  )
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

Am Freitag, 23. August 2024, 05:43:05 CEST schrieb Ye Zhang:
> Added a call to of_node_put(pctlnp) in rockchip_gpio_probe to properly
> release the reference to the device node, improving memory management
> and preventing potential leaks.
> 
> Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
