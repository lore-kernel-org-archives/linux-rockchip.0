Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29B76C7EE29
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 May 2023 16:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dg3sFuEOW9H4tmD6dNNUlalxz6DtEoegAS1bj1sTkfo=; b=svTEjg6Wm16pUW
	9XmxvVaHpEg3jIqGwLOgYphMhE0Vb8wBJm7J1UvJY7p5sGrrEgR4jXJ0hRp3Xt782xFcw+L+vXZLV
	+h4RnTVbKxCeYSwXFTb77gjCVLSriZYbdFKsebK98kwCbqT3EtQN3CJxpQra9IyEFXSYvgK2wtRFl
	za/+YaPWnvslBox7MMVjsY6Yntt6Ay9amiskb+E5MYvPj8LYy6AGuYjO0NqZlD4sMBsOc6JOBEmmF
	Ez6o2jKsSGPRYwJN8WoXflReQ9Il3TBZvvF013VF5ah/HBweD6JMN/e3VxPfeDmo/eTamekj7FfeY
	6fbVQZkTYgorhhlo7m0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3JHM-0084Vg-0z;
	Sun, 28 May 2023 16:30:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3JHJ-0084Ur-2P;
	Sun, 28 May 2023 16:29:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 16A7060ECA;
	Sun, 28 May 2023 16:29:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB045C433D2;
	Sun, 28 May 2023 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685291396;
	bh=ei8N2Em3Nr2Uv8xvmQo82ZVNT14+4f7srT0ooNh+iQo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=afV34sY38FPwajLAlwDWQFBlyPOq+izpon2VPq1T29AhDO+jOomUpeqrMi8s3+RKE
	 e/K4tWZ/MmpILm07QY2RGKmzRJUh+fGBOYqUDOkvn9sTaAhWyxkknHjo1AM4plzptd
	 gHrd+7MOXgZj3h97saRXomXc28ftLrML7FJsWSC6jDMB+q+i0z6a+KTGje9zk+lN2H
	 cXXjCMu5YEcDuo6Op0yGCHlbK9bv+BVjJ1A5l7R7q55WcK5A/6g6lF8MP9yB+tEW6r
	 J2Uhn+oJfqMvMxrYEDvX92Krd9yjhZkIPDpATS9NFLZnUb44CNjxL5cer/cQ8UaZCr
	 Ade9q6Ww7Nhaw==
Date: Sun, 28 May 2023 17:46:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
Subject: Re: [PATCH v2 0/8] RK3588 ADC support
Message-ID: <20230528174614.4dc5cd01@jic23-huawei>
In-Reply-To: <20230525212712.255406-1-shreeya.patel@collabora.com>
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_092957_829392_7881F4A2 
X-CRM114-Status: GOOD (  20.72  )
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

On Fri, 26 May 2023 02:57:04 +0530
Shreeya Patel <shreeya.patel@collabora.com> wrote:

> This patch series adds ADC support for RK3588 and updates
> the DT bindings for the same.
> 
> To test ADC support on Rock 5B board, a voltage divider circuit
> was created using the gpio pin 22 ( SARADC_IN4 ) and few more
> tests were ran for testing the buffer and trigger support using
> the iio_generic_buffer tool.
> 
FWIW I don't have any additional comments on this beyond agreeing
those made by others need addressing.

Fingers crossed for v3.

Jonathan

> 
> Changes in v2
>   - Add from address in patches 1 and 2.
>   - Create separate patches for adding new device support and changes to
>     the old device code.
>   - Make use of FIELD_PREP in patch 2.
>   - Move the enablement of clocks at it's original position in patch 3
>   - Add Reviewed-by tag in patches 4 and 5.
>   - Add an Acked-by tag in patch 8.
> 
> Shreeya Patel (8):
>   iio: adc: rockchip_saradc: Add callback functions
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
>  drivers/iio/adc/rockchip_saradc.c             | 262 +++++++++++-------
>  3 files changed, 168 insertions(+), 107 deletions(-)
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
