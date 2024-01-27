Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D1A2C47DA9
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 22:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09zgdF2vAH4GJtW43jfgJ60XREpWSSaHNJmfE9YlJ1Q=; b=oU7utgqjs3sIQZ
	C8pn0W3r2eGNVtwmT7MDd6oIE226g7G526UwRUPjf1DeP9ksWaiDVhuGcT6WBdc3qMWYdf+MP6EDi
	zjs4ziu6RvwY1vqTkhPOcIml4g1XnayuL7BBKMMVgUOhdIFPp3Hw/FgzMOdaaxSh7T5puuuDf6ytJ
	mfRNa4h031eRUfy5RkNqxw6M/6wg5+Crj0sBWeF/nHRMHFL7pyqx+yS5EaiA29dqKYpeTqTpABqAT
	v9c1I9hLa+Y+AbnncxS4MBbLFgq9vVczHTuvtz4V/OgC014YgeRDH1TdXtXUNsZVGj92r48PhQYbN
	z6aD2MLbgHBqXc/kvIFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTqjB-00000008FoB-0vCm;
	Sat, 27 Jan 2024 22:00:41 +0000
Received: from [50.53.50.0] (helo=[192.168.254.15])
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTqj6-00000008FnG-0a1X;
	Sat, 27 Jan 2024 22:00:36 +0000
Message-ID: <d757c5a7-bb3c-4dd9-bac4-e43ee7685a18@infradead.org>
Date: Sat, 27 Jan 2024 14:00:34 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/17] media: i2c: css-quirk.h: Fix kerneldoc
Content-Language: en-US
To: Ricardo Ribalda <ribalda@chromium.org>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Hans Verkuil <hverkuil@xs4all.nl>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Bin Liu <bin.liu@mediatek.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-amlogic@lists.infradead.org
References: <20240126-gix-mtk-warnings-v1-0-eed7865fce18@chromium.org>
 <20240126-gix-mtk-warnings-v1-6-eed7865fce18@chromium.org>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20240126-gix-mtk-warnings-v1-6-eed7865fce18@chromium.org>
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



On 1/26/24 15:16, Ricardo Ribalda wrote:
> Kerneldoc does not seem to understand that embed doc:
> drivers/media/i2c/ccs/ccs-quirk.h:50: warning: Excess struct member 'write' description in 'ccs_quirk'
> drivers/media/i2c/ccs/ccs-quirk.h:50: warning: Excess struct member 'reg' description in 'ccs_quirk'
> drivers/media/i2c/ccs/ccs-quirk.h:50: warning: Excess struct member 'val' description in 'ccs_quirk'
> 

Correct. It's never tried to understand that AFAIK.

> Convert into a standard doc.
> 
> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

> ---
>  drivers/media/i2c/ccs/ccs-quirk.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/i2c/ccs/ccs-quirk.h b/drivers/media/i2c/ccs/ccs-quirk.h
> index 0b1a64958d71..392c97109617 100644
> --- a/drivers/media/i2c/ccs/ccs-quirk.h
> +++ b/drivers/media/i2c/ccs/ccs-quirk.h
> @@ -28,11 +28,11 @@ struct ccs_sensor;
>   * @reg_access: Register access quirk. The quirk may divert the access
>   *		to another register, or no register at all.
>   *
> - *		@write: Is this read (false) or write (true) access?
> - *		@reg: Pointer to the register to access
> - *		@value: Register value, set by the caller on write, or
> + *		-write: Is this read (false) or write (true) access?
> + *		-reg:   Pointer to the register to access
> + *		-val:   Register value, set by the caller on write, or
>   *			by the quirk on read
> - *		@return: 0 on success, -ENOIOCTLCMD if no register
> + *		-return: 0 on success, -ENOIOCTLCMD if no register
>   *			 access may be done by the caller (default read
>   *			 value is zero), else negative error code on error
>   * @flags: Quirk flags
> 

-- 
#Randy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
