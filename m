Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F38AC7EE29
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jun 2023 10:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gK7lrg9QHu3kpe8A1ss+tIPFAjDXSHqvDvvjIAv8IMc=; b=3upIa/mE3r4vzy
	fHvCQF+SF106MYABDGa+2m9GH0xI0gefWueq8+Oma8jp2i+MndlTpR7UoEj8JdW4DTMa/0QJ+/Uii
	brZCQG7P1HiIvcfFxwEcgHogcC97cg4KSB24r+rN6tWkdxzyvEudbOm2lMa1GaUo1hUFUHpFFP9Xy
	sQ4uRb6QEUPcLsis+4V0Hap0MiSCRHwWcKov8mFKFNHF8SD9IrnqYkciVwWXC+d5Lcw3HwIbxJu07
	BHTTfinJWgGvrmvYvQG0VHgScHJOHqtzKjEtMDjDWfbbJ1xiMM/oP5uFQWfjlSaK3G7U6KF7rPcL3
	cYYl5ZM7n2mkg0YKpLlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5kxm-00BpbY-2X;
	Sun, 04 Jun 2023 10:27:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5kxj-00BpaW-1v;
	Sun, 04 Jun 2023 10:27:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EA11260FD0;
	Sun,  4 Jun 2023 10:27:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4881C433D2;
	Sun,  4 Jun 2023 10:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685874470;
	bh=GDFD2QaDPXXZG69Pe6qfg/v2YwVstAycrro3d0aXXw8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=F9gEOFAag92qMFuczSBuQUu/wejjL/Bk2+RZXcZKa0sCYHy9XSjw98lwVQVotNUNu
	 BcHK3HHdEY8FCk1oBS970nOvqLt8z9kJTT/Kr/vbWu0LpMMat8q9pu4zXoDt6hMub5
	 nOp1c4/QpKKAO04HqI8Csf3oZScLR50Yqj9YlYCXmApdxkfEhQXGLdgP7SU+7xp0i2
	 Z0oOt4T4e+GyyV888gGFpEB0ZYMkce8QgybjvUcIDIRHu6eN0uaS6w6tRTu7Pq6Qbd
	 EfTf/Z5n5QpCBxESakyOYxqa8nz7B0HSK1XT8N/KE2Yv1yiF/7zc/M7VKSwvQ8TYZs
	 rVpp+FlV0ClQw==
Date: Sun, 4 Jun 2023 11:27:45 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: andy.shevchenko@gmail.com
Cc: Shreeya Patel <shreeya.patel@collabora.com>, lars@metafoo.de,
 heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 sebastian.reichel@collabora.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 gustavo.padovan@collabora.com, kernel@collabora.com,
 serge.broslavsky@collabora.com
Subject: Re: [PATCH v3 0/8] RK3588 ADC support
Message-ID: <20230604112745.402beb1c@jic23-huawei>
In-Reply-To: <ZHungQT5an39pjEg@surfacebook>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
	<ZHungQT5an39pjEg@surfacebook>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_032751_719738_89DE0028 
X-CRM114-Status: GOOD (  25.49  )
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

On Sat, 3 Jun 2023 23:50:09 +0300
andy.shevchenko@gmail.com wrote:

> Sun, Jun 04, 2023 at 12:23:32AM +0530, Shreeya Patel kirjoitti:
> > This patch series adds ADC support for RK3588 and updates
> > the DT bindings for the same.
> > 
> > To test ADC support on Rock 5B board, a voltage divider circuit
> > was created using the gpio pin 22 ( SARADC_IN4 ) and few more
> > tests were ran for testing the buffer and trigger support using
> > the iio_generic_buffer tool.  
> 
> Well done!
> 
> For patches 1-6
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> (with one nit-pick to be addressed)

Addressed the nit whilst applying and picked up 1-6,8.
Applied them to the togreg branch of iio.git, but initially I'll just
push that out as testing for 0-day to take a look and see what we missed.

As normal 7 should go via appropriate SoC tree


> 
> > Changes in v3
> >   - Add bitfield.h header file in patch 2.
> >   - Add a Reviewed-by tag in patch 2.
> >   - Do not remove clock enabling and disabling from the suspend and
> >     resume functions respectively in patch 3
> > 
> > Changes in v2
> >   - Add from address in patches 1 and 2.
> >   - Create separate patches for adding new device support and changes to
> >     the old device code.
> >   - Make use of FIELD_PREP in patch 2.
> >   - Move the enablement of clocks at it's original position in patch 3
> >   - Add Reviewed-by tag in patches 4 and 5.
> >   - Add an Acked-by tag in patch 8.
> > 
> > Shreeya Patel (8):
> >   iio: adc: rockchip_saradc: Add callback functions
> >   iio: adc: rockchip_saradc: Add support for RK3588
> >   iio: adc: rockchip_saradc: Make use of devm_clk_get_enabled
> >   iio: adc: rockchip_saradc: Use of_device_get_match_data
> >   iio: adc: rockchip_saradc: Match alignment with open parenthesis
> >   iio: adc: rockchip_saradc: Use dev_err_probe
> >   arm64: dts: rockchip: Add DT node for ADC support in RK3588
> >   dt-bindings: iio: adc: Add rockchip,rk3588-saradc string
> > 
> >  .../bindings/iio/adc/rockchip-saradc.yaml     |   1 +
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  12 +
> >  drivers/iio/adc/rockchip_saradc.c             | 246 +++++++++++-------
> >  3 files changed, 168 insertions(+), 91 deletions(-)
> > 
> > -- 
> > 2.30.2
> >   
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
