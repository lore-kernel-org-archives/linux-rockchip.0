Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B98BCDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 20:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZiJBB/ZRSK9M5fu9Gaf1cnxPAASzxZ8Gu5D+uLUrfkM=; b=lhv1q1IUN4Wmj2
	JID/Xut8lUdOSiOfLenz2zx5OsWEwS8bDrS0WB7kfV81ZA1xcge6zm50bK+n4uZc+qj64T5UF8vTK
	GfLmiBvBVaInlLotywNFVWh58f/0kqKtCAn4IWs/F+IIsAVJEy2IqfGZ0dAxEERewjLfx/seeRaQR
	Djjb4cJCuhezOiR/QIzJWTEHDrTgrmGKAG3amedNQyFKQFQQDN5dnn+gvticufg/1CNF7cYAaIZHZ
	iGeq10Ndn57NIxX0bz1lDUGra0E5h91wq5quycg/CtD0HTIZLWcS+erE92BnacxOFWutcK/zpTXTK
	ozb7vHNlJBennoGjaoJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtClh-00FbNv-1K;
	Wed, 18 Oct 2023 20:03:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtCld-00FbNA-0B;
	Wed, 18 Oct 2023 20:03:47 +0000
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtClb-0004cs-J4; Wed, 18 Oct 2023 22:03:43 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Chanwoo Choi <chanwoo@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v8 19/26] PM / devfreq: rockchip-dfi: add support for RK3588
Date: Wed, 18 Oct 2023 22:03:42 +0200
Message-ID: <2610076.9Mp67QZiUf@diego>
In-Reply-To: <20231018061714.3553817-20-s.hauer@pengutronix.de>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
 <20231018061714.3553817-20-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_130345_092720_C47113E6 
X-CRM114-Status: GOOD (  14.64  )
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

Am Mittwoch, 18. Oktober 2023, 08:17:07 CEST schrieb Sascha Hauer:
> Add support for the RK3588 to the driver. The RK3588 has four DDR
> channels with a register stride of 0x4000 between the channel
> registers, also it has a DDRMON_CTRL register per channel.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 36 +++++++++++++++++++++++++++-
>  include/soc/rockchip/rk3588_grf.h    | 18 ++++++++++++++
>  2 files changed, 53 insertions(+), 1 deletion(-)
>  create mode 100644 include/soc/rockchip/rk3588_grf.h

Acked-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
