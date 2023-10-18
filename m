Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7D18CDB483
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaHgtC50b5DROUpxJALdBxhhLlhx09VtUfSDevFNjDk=; b=Qz3IOpqJa55mzu
	IN+tthra7suHFOXRj91uMnoqWVRsna+bH8j5qDJvfFX1KQrfDPQcjMiCmU4QN0e6QHToFGCCg6bEN
	F7o+AxId1hRCfMhYsV8aeCD6v4OeIkgj+8OPRKyKat3w6XGNKCGNSZ123R6jL8Z/uqI77V7gg/QsT
	XBQPzZwOVvwVi/zj2hOEuj2XSuWaNx2xJz/Sv9yWT4lOCmSw6shawcoSN4VbD554ShRp+51MASRf6
	pdSYMXKcLYVnpMpUCjYFwCjHGjBztJTWAKPlNn74A28pYwX4cZwOSW8g11Wk4SA/4v92PVO7yb3+B
	HADSlnSMQfpxf/DC5u7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtCo7-00Fbea-38;
	Wed, 18 Oct 2023 20:06:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtCo4-00Fbe8-2A;
	Wed, 18 Oct 2023 20:06:18 +0000
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtCo1-0004e6-29; Wed, 18 Oct 2023 22:06:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org,
 Chanwoo Choi <chanwoo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v8 00/26] Add perf support to the rockchip-dfi driver
Date: Wed, 18 Oct 2023 22:06:11 +0200
Message-ID: <11026068.BaYr0rKQ5T@diego>
In-Reply-To: <6e43eb6d-351b-4c32-aba9-65ee5b8fd0ed@kernel.org>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
 <6e43eb6d-351b-4c32-aba9-65ee5b8fd0ed@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_130616_710750_91E6E429 
X-CRM114-Status: GOOD (  14.19  )
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

Am Mittwoch, 18. Oktober 2023, 17:21:07 CEST schrieb Chanwoo Choi:
> Hi Sascha and Heiko,
> 
> I finished the review from  01 ~ 22 patches.
> - 01-05 patches are merged.
> - 06-22 patches with acked tags.
> 
> 
> Some patches modifies the 'include/soc/rockchip/*' files.
> After getting the ack from rockchip maintainer (Heiko Stuebner),
> I'll merge patches from 06 ~ 22 patches to devfreq.git.

I do hope I caught all patches that needed Acks from that range.
The changes to the soc includes all looked fine, so if I forgot to Ack
a patch from that 1-22 range, here is a blanked

Acked-by: Heiko Stuebner <heiko@sntech.de>

for those.

Thanks for reviewing that big series
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
