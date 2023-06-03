Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FF11C7EE24
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jun 2023 20:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENeKGKzKtrvLgO/DrCVFMOuOzf+gVeqrQGlYenK2ZMA=; b=051JMsAMuq01dc
	5BStLrrAozs8WLjZYkD6enpeMMyBs8QjwMVoETlkgRdpmUCZmj0K0fVB5/ZIKKMZx3LUVcsuy+WpB
	dFUoyDVSPdLxfnOV5//rpl5hjnltOTvr12du/f9xfN8kph8TuRH7TYgPX70i3ztgN0vGJjGhyfCZ8
	DJkO1Mm6BgNJbv9wwUdGIzE0pBaCdviWvp/rESd+riKqwsSVq0Q0ALJaEpiLTzq6iFRR2HXe40d3z
	OPyAb93xdeB8b+v6T5FtpxhvQxNJBUosmqALmtQlKDRs05G4nnJX5ZsYqI27W732+wFfjjhyCJEL5
	91JcjM7Gju5KM+sy0QZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5YCU-00AZuH-0l;
	Sat, 03 Jun 2023 20:50:14 +0000
Received: from fgw20-7.mail.saunalahti.fi ([62.142.5.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5YCR-00AZtQ-0v
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jun 2023 20:50:12 +0000
Received: from localhost (88-113-26-95.elisa-laajakaista.fi [88.113.26.95])
	by fgw20.mail.saunalahti.fi (Halon) with ESMTP
	id 3a507e03-0250-11ee-b3cf-005056bd6ce9;
	Sat, 03 Jun 2023 23:50:09 +0300 (EEST)
From: andy.shevchenko@gmail.com
Date: Sat, 3 Jun 2023 23:50:09 +0300
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: jic23@kernel.org, lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	gustavo.padovan@collabora.com, kernel@collabora.com,
	serge.broslavsky@collabora.com
Subject: Re: [PATCH v3 0/8] RK3588 ADC support
Message-ID: <ZHungQT5an39pjEg@surfacebook>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230603185340.13838-1-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_135011_509886_74727DBC 
X-CRM114-Status: GOOD (  17.94  )
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

Sun, Jun 04, 2023 at 12:23:32AM +0530, Shreeya Patel kirjoitti:
> This patch series adds ADC support for RK3588 and updates
> the DT bindings for the same.
> 
> To test ADC support on Rock 5B board, a voltage divider circuit
> was created using the gpio pin 22 ( SARADC_IN4 ) and few more
> tests were ran for testing the buffer and trigger support using
> the iio_generic_buffer tool.

Well done!

For patches 1-6
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
(with one nit-pick to be addressed)

> Changes in v3
>   - Add bitfield.h header file in patch 2.
>   - Add a Reviewed-by tag in patch 2.
>   - Do not remove clock enabling and disabling from the suspend and
>     resume functions respectively in patch 3
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
>  drivers/iio/adc/rockchip_saradc.c             | 246 +++++++++++-------
>  3 files changed, 168 insertions(+), 91 deletions(-)
> 
> -- 
> 2.30.2
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
