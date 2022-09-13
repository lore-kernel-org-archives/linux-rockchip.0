Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18628ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 16:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+7xWJOXTrJvPlJ0dUDg4O1+oaIsDSTXBMWJ6faEflI=; b=u4kvGB2yJOK/Wf
	kMAElZ3g77SDyY1/P0HV3iLb9J4vF2pyKN7jtvhX3iD3FI3KJwH/7LHf4VTUefJtnVO6XdTgh4DAF
	y2PYiZHdeyDosENdoDJ1L+esBsLXrwlefOR466d2a3Ur2mo5SA5EBOgit4629FLoYZN034lviDHnB
	ZhH34w5TH0x4M81pYQfHbRC1WnBANB3DJZdtQ4GWUNM0xMvSCg2MNfd9XCEwnZTrCqWHF4IBt2Yg/
	EPqZoRe7E3AnedsRLJlIxLYELiQNMO9nxSqTWlghKPFpQZkXDjlcz9AwYOaQg2GwkYts6OWt56Cco
	yG6T4KD6CCvIhiGAJNDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY95g-00DYo2-0o; Tue, 13 Sep 2022 16:48:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY8zU-00DUld-7I; Tue, 13 Sep 2022 16:42:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 99A6F6151C;
	Tue, 13 Sep 2022 16:42:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AC96C433C1;
	Tue, 13 Sep 2022 16:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663087347;
	bh=3Q42QFQ/ngGZQQeyp7QhP6eTWM1+zQJpWZ4yQpNfCck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CxcOkubrZXQn2EQ474gG4UJo8mQX4nMBEhGTo20JqjXQk8APbj4ESssFffXLIIrHe
	 EkQekGPKV6oi28uzSCB2vMMBMNbL4MG/Y5Jqo/Ck6PRg6Gf6/9R/4ETjb53/y1bDmI
	 ER8i6KF9wD8A2E87VuxXZrTmY3TJJvX2uADpxHUwm4/hxI6WH3ha1O7+/zCtIQmadL
	 tSaG76vGXeo3tTYJOqbp4CDh6cL8oz16K6lPvZscMq0aHIQ5cAbdBIkL0kaQ1BFzBj
	 ZnFYabEV5yARdpuFbCj0JK78O4TM5SxigD6MRnGzfigOv/gp8fXAhW6xuuCQGo/mmn
	 t/XgkL+PxS2DQ==
Date: Tue, 13 Sep 2022 22:12:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@vrull.eu,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de, ulf.hansson@linaro.org, miquel.raynal@bootlin.com,
	richard@nod.at, vigneshr@ti.com, kishon@ti.com,
	thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
	gregkh@linuxfoundation.org, broonie@kernel.org,
	wim@linux-watchdog.org, linux@roeck-us.net,
	zhangqing@rock-chips.com, jamie@jamieiles.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-mtd@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-pwm@vger.kernel.org, linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v1 09/11] dt-bindings: phy: phy-rockchip-inno-usb2: add
 rockchip,rk3128-usb2phy
Message-ID: <YyCy7838UGnV2qcR@matsya>
References: <20220909212543.17428-1-jbx6244@gmail.com>
 <d477a077-a68f-e752-5192-807db80a9e68@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d477a077-a68f-e752-5192-807db80a9e68@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_094228_365061_D13A84B3 
X-CRM114-Status: UNSURE (   5.90  )
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

On 10-09-22, 00:01, Johan Jonker wrote:
> Add rockchip,rk3128-usb2phy compatible string.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
