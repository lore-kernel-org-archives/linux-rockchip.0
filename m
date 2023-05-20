Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FD02C77B7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 May 2023 15:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBPwYjmjy2s+ROFIZrSg0YtljuVIlIK5vVI6wrkVPSE=; b=M/8LJCUz+BdO77
	nTqB7GJl18w2bXpegmE4BT80TGkhjknzGAdTj1/jUwAoAfRjvpkQB7a+f1ovjF9zYG2bVI7lCK3Oh
	3LPNoTdL8EGP+fQrD+z3ZKmNeEvGstrl9f70bB7nXlhMpuO72ZkmqDaGa2WONJOSNWiQSN06SEobL
	eizdD1ROPOZ6NBUDSHCZUvzPZ5GxGBBNWR/AahYNtKSHOQPlWu6qQYB7IpFxuVSmql9qxy0WP3xzP
	7y6B/DMeAII60H86WVJA9gWWDeBLzYTKXhlYC+mqVdmvP52xPNWuFMpvVP/KHyC7zNVh6Dq+13B9I
	9Ccx48iD2OX4KUdUfVwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0OlK-001nu9-0A;
	Sat, 20 May 2023 15:44:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0OlG-001nsy-2h;
	Sat, 20 May 2023 15:44:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D44EE60AFF;
	Sat, 20 May 2023 15:44:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAE1EC433D2;
	Sat, 20 May 2023 15:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684597489;
	bh=RFRzEGWghO4yi2OnUCzx9pLNfSOFFDNaFEjc9XDX0TQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=rEOnab3rLPKsb5cBMoIlJCKqhQI1JKt8sxj1pObn3ESiB69HHsVq8z8ZoZoAUeSUi
	 GRleOA1CQQrqWdBHvz/GrOSdhM9F0eRMbD/AZ2KF1W/hLRBJ0E7u+RGaPUJijY32ot
	 C/3PvbCnRtOZ9m/1F6Th4q4/cPOh0wZRqpYpjofx4NazZy510JZ1AI2WaAy23HUhWO
	 ZlhqEU7iquUPULCgKebFLWXor15AVMQKphe3FR47MwAZq2N7ENmDihBD1zcdtGnrf7
	 nzbEaqf8dmCvzdeaVJtz50s32kcCgkOL8e3WkXPZVYO8VOUpQ3pUgT9fMmtV/xiULd
	 PH2uJ4PWcnAlQ==
Date: Sat, 20 May 2023 17:00:57 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
Subject: Re: [PATCH 0/7] RK3588 ADC support
Message-ID: <20230520170057.12bf613f@jic23-huawei>
In-Reply-To: <20230516230051.14846-1-shreeya.patel@collabora.com>
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230520_084450_920260_9A9A6005 
X-CRM114-Status: GOOD (  16.28  )
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

On Wed, 17 May 2023 04:30:44 +0530
Shreeya Patel <shreeya.patel@collabora.com> wrote:

> This patch series adds ADC support for RK3588 and updates
> the DT bindings for the same.
> 
> To test ADC support on Rock 5B board, a voltage divider circuit
> was created using the gpio pin 22 ( SARADC_IN4 ) and few more
> tests were ran for testing the buffer and trigger using the
> iio_generic_buffer tool.
> 
> Shreeya Patel (7):
>   iio: adc: rockchip_saradc: Add support for RK3588
>   iio: adc: rockchip_saradc: Make use of devm_clk_get_enabled
>   iio: adc: rockchip_saradc: Use of_device_get_match_data
>   iio: adc: rockchip_saradc: Match alignment with open parenthesis
>   iio: adc: rockchip_saradc: Use dev_err_probe
>   arm64: dts: rockchip: Add DT node for ADC support in RK3588
>   dt-bindings: iio: adc: Add rockchip,rk3588-saradc string
> 
>  .../bindings/iio/adc/rockchip-saradc.yaml     |   1 +
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  12 +
>  drivers/iio/adc/rockchip_saradc.c             | 260 ++++++++++--------
>  3 files changed, 164 insertions(+), 109 deletions(-)
> 

Patches I haven't commented on all look fine to me.

Thanks,

Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
