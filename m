Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F81AC77B7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 May 2023 15:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40pbnGlMtPn94i4j0kvS/soB+O3EJ6Hm6WnLhnenJiY=; b=uQ7YGEkWeC+w+1
	P9/qKXjJcv66iIAIo6MJUnCVca9xzjEjz3Km5xE+SPGwRvP1iLbgBFoFguCDw6vJ5bFuiDXI0WRB3
	51poXzlHxadX86/kOtUe/KLul4ajQrcStR6GgdJ6/vfwREoSad+KWZAEe8yxKia8HdXf7Mq5dK9CM
	LVoGhWKgXbaITfUEN8baUQXk8PJ3MftM9vKmlGZAUoneSmgX9cH4HAY7d2EOIn6r1Eplq91HE8eaU
	t2s+2PkkX+vVAi8vqLir0h+yW8op5KLRshJl6a9frdPsNZe/AXc7DJDKb1xR8fLp9WSF49BEQggWn
	PC7AcBpNySVoGSbCjhfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0Ohf-001nQI-2z;
	Sat, 20 May 2023 15:41:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0OhY-001nOt-3A;
	Sat, 20 May 2023 15:41:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4E76B60AB4;
	Sat, 20 May 2023 15:41:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5CF6C433D2;
	Sat, 20 May 2023 15:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684597259;
	bh=9Ps1xvHyEdQpdoqJaEeCbsAna43Ebewm5CkBpwanu2U=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=oA1jURKODqVIMIR07QZUqj8P0EAwJYmfUC43ursKlC6SK3C3hlntNXzXTsh7MoDLE
	 S4v38CrFsXmdYUg7WmsQFI+Mj11qBUdxNH3voE0X9zGRE+dA4k17WewdGBofvBOfjy
	 FJjuHnp/WR6zIj/8XX/qNEsfSdGNVmQOewgZ/dEcaWI46Bj7mFXhksYykFVDObxS3A
	 f/cdIdfOeA2AfTdliPQq+RzX0AIpsaQ1laI/45Ny8Lbh2STxYzUxyGHN+QwYKUGbnS
	 06ehIM6DmkW4aqDYhZ+4XZSkKMpdWLNT2Iq6bGg6kWSk1YhucU+WPEW9bvPWpJCLk4
	 cSMi10hTLRyrg==
Date: Sat, 20 May 2023 16:57:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com, Simon Xue
 <xxm@rock-chips.com>
Subject: Re: [PATCH 1/7] iio: adc: rockchip_saradc: Add support for RK3588
Message-ID: <20230520165707.695de520@jic23-huawei>
In-Reply-To: <20230516230051.14846-2-shreeya.patel@collabora.com>
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
	<20230516230051.14846-2-shreeya.patel@collabora.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230520_084101_060116_4B7F08FB 
X-CRM114-Status: GOOD (  15.98  )
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

On Wed, 17 May 2023 04:30:45 +0530
Shreeya Patel <shreeya.patel@collabora.com> wrote:

> Refactor conversion operation to support rk3588 saradc and
> add separate start, read, powerdown in respective hooks.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Hi Shreeya,

This particular chain of tags has unclear authorship.
If Simon wrote the driver, then the author (from address) of the
patch should be Simon's.  If it is a codeveloped situation look
at how to use the co-developed-by tag


Generally the nicest way to add new callbacks is to do them in their
own patch.  Then introduce new devices with different callbacks in a follow
on patch.  That means the first one can be reviewed to ensure there
is no functional change separate from the new code in the following patch.



> +static const struct rockchip_saradc_data rk3588_saradc_data = {
> +	.channels = rockchip_rk3588_saradc_iio_channels,
> +	.num_channels = ARRAY_SIZE(rockchip_rk3588_saradc_iio_channels),
> +	.clk_rate = 1000000,
> +	.start = rockchip_saradc_start_v2,

As mentioned above, I'd like to see the changes for old devices done in patch
1 and the support for new device in a new patch.

> +	.read = rockchip_saradc_read_v2,
>  };



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
