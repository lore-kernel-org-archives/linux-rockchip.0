Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BC97109446F
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Mar 2026 17:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKMgE/qCoOkaVFk7GDirZcCvIIZTAIJRmuL5VbrKZ8U=; b=iW3oYuxgwZBoIV
	FbKm2TFxlN3EYxY+Y7SqTLuLP5baQRwq5p0zv3aRPThlRxBYf1IQc1iJSWA7mvpMHp92DZrlovrEK
	T8a+KsVimsU3ipFQgw6CEDwqEzx5bDSLfF7I7fktu8SfqFYgU9WJ4vlyt87N5Opa8CUQ/2kzrvK8X
	yFKKhOMf1yRIr2LbAxOItTZOMRejMJ9IleRoOc6gFgCBg1nhtNZQgHGudnLUt4T9hZhFC+tOVDcIf
	R7g3yvvATAdgmXrNd0+mwRXKkFXRvWlSHSQNFdiS/+aOqgS88SuHqGc7Uhe+Wm8mr2gy3nJ6FEOxZ
	I9qXZQ2qkRA20HF7eYZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w40TJ-0000000Eh6a-156F;
	Sat, 21 Mar 2026 17:50:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w40TG-0000000Eh6B-3z58
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Mar 2026 17:50:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2C820441ED;
	Sat, 21 Mar 2026 17:50:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1203DC19421;
	Sat, 21 Mar 2026 17:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774115446;
	bh=WlpfjXMa/ChNrQGYBFa320G/kg7Eakf+zjKpza9XjK8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=KfBmtXwKANmSjP+03gkIx0drmQPmqoFWSfqh5v2dldKaysB+9Th/3/cIGboh1llZj
	 W7BWswiQdlntgjS2nfzidLAhgN+Z9YY6jzFzCrCoB8DDhWvo3B6R6f8FpV0trVF9Dd
	 w7dOB1T+cJbDbiROqx0fxxlpN2fy04q5bW20pnkoNwwVZksYZFurh8ecib1jA4/tgm
	 zWwCu3hE7VqbCFqcpn2nBPKK1vvnlMg2VpBn+4WK9GB2j8gDE7l8RKS38yByDlLr7O
	 Xb+oGRbrNVlq0EABMNruJ6lDZXz2aqc9i4tRY+4T5a0tz2cOnvYUv75hViMq2aAUlp
	 6xTtKT5G64jQg==
Date: Sat, 21 Mar 2026 17:50:36 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 2/5] iio: imu: inv_icm42600: Add support for using
 alternate registers
Message-ID: <20260321175036.50c6a29f@jic23-huawei>
In-Reply-To: <20260319182956.146976-3-macroalpha82@gmail.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
	<20260319182956.146976-3-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260321_105047_017714_F295783E 
X-CRM114-Status: GOOD (  12.70  )
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

On Thu, 19 Mar 2026 13:29:38 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support to the existing inv_icm42600 to support similar hardware
> with slightly different register layouts. For example the icm42607
> and icm42607p has most of the same functionality and even many of
> the same registers, but the addresses for indiviual registers differ.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

> diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c b/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c
> index 11339ddf1da3..32aa2e52df2e 100644
> --- a/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c
> +++ b/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c

> @@ -775,13 +774,13 @@ struct iio_dev *inv_icm42600_gyro_init(struct inv_icm42600_state *st)
>  	ret = devm_iio_kfifo_buffer_setup(dev, indio_dev,
>  					  &inv_icm42600_buffer_ops);
>  	if (ret)
> -		return ERR_PTR(ret);
> +		return ret;
>  
>  	ret = devm_iio_device_register(dev, indio_dev);

return devm_iio_device_register() now make sense.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
