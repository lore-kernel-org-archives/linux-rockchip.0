Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55F93ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 20:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNooHxFBibiyzSKcVEAtinDNr16Y0lAVKseEVBBeNxQ=; b=aDVw1iRgqxYLSq
	/uC4WoT2mx1G3J/XKqP63NcXGURewHPauX1eDaaUQk4Ouo6EPA/lHQHx341iQFZJWeZ3ZBa/XN/Sz
	h3TKu7aDQlveKiSTl8UAWgdh9ZkiuXFAeTf5SRIMy35NxIDE560cJSySWBEow6EYlFunUrnzu2Eyp
	Y06o3BzbuyPEPy1f8ao46lHg2Wc/Lgl+H51xaMiH84xXBoHsBhXsAieWDmLiSmhx9gQAd7At2hsrU
	v/H/+Iu5d5FtPMzF4VVZWNj5SmqY+jOxI7ffErDTf1vCgYjqoUan2Y8lCbT6yWSNmsXrug3CiqtbT
	XJQwtqvB+OZFIP69X77g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVISD-00A3ni-M3; Mon, 05 Sep 2022 20:12:21 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVI5M-009e7i-V8
	for linux-rockchip@lists.infradead.org; Mon, 05 Sep 2022 19:48:47 +0000
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 78001240002;
	Mon,  5 Sep 2022 19:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662407316;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ah8jhfH/D4OHctEuafBp7keddC3pHmg23KQPpgxMUeI=;
	b=jhHYq4+I9MSB+Ly1n8jyvSuHllpQTiPzXiRw7MElH5ucKMXCO1FybW1iqz12PkpJSEtaUa
	Ioa7L310FqZo/cJQS15pbBoFkyOCDFRZwPtEA39JoOEFplwNY0yrcgy8OEIPga4lUmWHel
	C081uf7a22GVboVyOGSGBDqMk6GW3caWUjL4BW8H7xEEaNbciyw3dYTNz4ITUHfa39URt/
	scZd13aBniiuqa+DHsVqBktKjASze0JIfsglGLvIm2crvHpE0XND795yG0wvqb7R3S5smk
	pJm7VHicH6Pt7dlxstGqQRLNVkoE0BYEPOM1x6nB3wA9MAKnjOVT2b7A5KAivA==
Date: Mon, 5 Sep 2022 21:48:34 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 05/13] rtc: rk808: reduce 'struct rk808' usage
Message-ID: <YxZSknMfmq//grDb@mail.local>
References: <20220831215437.117880-1-sebastian.reichel@collabora.com>
 <20220831215437.117880-6-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220831215437.117880-6-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_124845_481119_2366392B 
X-CRM114-Status: GOOD (  25.43  )
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

On 31/08/2022 23:54:29+0200, Sebastian Reichel wrote:
> Reduce usage of 'struct rk808' (driver data of the parent MFD), so
> that only the chip variant field is still being accessed directly.
> This allows restructuring the MFD driver to support SPI based
> PMICs.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/rtc/rtc-rk808.c | 47 ++++++++++++++++++-----------------------
>  1 file changed, 20 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-rk808.c b/drivers/rtc/rtc-rk808.c
> index e920da8c08da..2d9bcb3ce1e3 100644
> --- a/drivers/rtc/rtc-rk808.c
> +++ b/drivers/rtc/rtc-rk808.c
> @@ -14,7 +14,6 @@
>  #include <linux/bcd.h>
>  #include <linux/mfd/rk808.h>
>  #include <linux/platform_device.h>
> -#include <linux/i2c.h>
>  
>  /* RTC_CTRL_REG bitfields */
>  #define BIT_RTC_CTRL_REG_STOP_RTC_M		BIT(0)
> @@ -51,7 +50,7 @@ struct rk_rtc_compat_reg {
>  };
>  
>  struct rk808_rtc {
> -	struct rk808 *rk808;
> +	struct regmap *regmap;
>  	struct rtc_device *rtc;
>  	struct rk_rtc_compat_reg *creg;
>  	int irq;
> @@ -97,12 +96,11 @@ static void gregorian_to_rockchip(struct rtc_time *tm)
>  static int rk808_rtc_readtime(struct device *dev, struct rtc_time *tm)
>  {
>  	struct rk808_rtc *rk808_rtc = dev_get_drvdata(dev);
> -	struct rk808 *rk808 = rk808_rtc->rk808;
>  	u8 rtc_data[NUM_TIME_REGS];
>  	int ret;
>  
>  	/* Force an update of the shadowed registers right now */
> -	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
> +	ret = regmap_update_bits(rk808_rtc->regmap, rk808_rtc->creg->ctrl_reg,
>  				 BIT_RTC_CTRL_REG_RTC_GET_TIME,
>  				 BIT_RTC_CTRL_REG_RTC_GET_TIME);
>  	if (ret) {
> @@ -116,7 +114,7 @@ static int rk808_rtc_readtime(struct device *dev, struct rtc_time *tm)
>  	 * 32khz. If we clear the GET_TIME bit here, the time of i2c transfer
>  	 * certainly more than 31.25us: 16 * 2.5us at 400kHz bus frequency.
>  	 */
> -	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
> +	ret = regmap_update_bits(rk808_rtc->regmap, rk808_rtc->creg->ctrl_reg,
>  				 BIT_RTC_CTRL_REG_RTC_GET_TIME,
>  				 0);
>  	if (ret) {
> @@ -124,7 +122,7 @@ static int rk808_rtc_readtime(struct device *dev, struct rtc_time *tm)
>  		return ret;
>  	}
>  
> -	ret = regmap_bulk_read(rk808->regmap, rk808_rtc->creg->seconds_reg,
> +	ret = regmap_bulk_read(rk808_rtc->regmap, rk808_rtc->creg->seconds_reg,
>  			       rtc_data, NUM_TIME_REGS);
>  	if (ret) {
>  		dev_err(dev, "Failed to bulk read rtc_data: %d\n", ret);
> @@ -148,7 +146,6 @@ static int rk808_rtc_readtime(struct device *dev, struct rtc_time *tm)
>  static int rk808_rtc_set_time(struct device *dev, struct rtc_time *tm)
>  {
>  	struct rk808_rtc *rk808_rtc = dev_get_drvdata(dev);
> -	struct rk808 *rk808 = rk808_rtc->rk808;
>  	u8 rtc_data[NUM_TIME_REGS];
>  	int ret;
>  
> @@ -163,7 +160,7 @@ static int rk808_rtc_set_time(struct device *dev, struct rtc_time *tm)
>  	rtc_data[6] = bin2bcd(tm->tm_wday);
>  
>  	/* Stop RTC while updating the RTC registers */
> -	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
> +	ret = regmap_update_bits(rk808_rtc->regmap, rk808_rtc->creg->ctrl_reg,
>  				 BIT_RTC_CTRL_REG_STOP_RTC_M,
>  				 BIT_RTC_CTRL_REG_STOP_RTC_M);
>  	if (ret) {
> @@ -171,14 +168,14 @@ static int rk808_rtc_set_time(struct device *dev, struct rtc_time *tm)
>  		return ret;
>  	}
>  
> -	ret = regmap_bulk_write(rk808->regmap, rk808_rtc->creg->seconds_reg,
> +	ret = regmap_bulk_write(rk808_rtc->regmap, rk808_rtc->creg->seconds_reg,
>  				rtc_data, NUM_TIME_REGS);
>  	if (ret) {
>  		dev_err(dev, "Failed to bull write rtc_data: %d\n", ret);
>  		return ret;
>  	}
>  	/* Start RTC again */
> -	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
> +	ret = regmap_update_bits(rk808_rtc->regmap, rk808_rtc->creg->ctrl_reg,
>  				 BIT_RTC_CTRL_REG_STOP_RTC_M, 0);
>  	if (ret) {
>  		dev_err(dev, "Failed to update RTC control: %d\n", ret);
> @@ -191,12 +188,11 @@ static int rk808_rtc_set_time(struct device *dev, struct rtc_time *tm)
>  static int rk808_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
>  {
>  	struct rk808_rtc *rk808_rtc = dev_get_drvdata(dev);
> -	struct rk808 *rk808 = rk808_rtc->rk808;
>  	u8 alrm_data[NUM_ALARM_REGS];
>  	uint32_t int_reg;
>  	int ret;
>  
> -	ret = regmap_bulk_read(rk808->regmap,
> +	ret = regmap_bulk_read(rk808_rtc->regmap,
>  			       rk808_rtc->creg->alarm_seconds_reg,
>  			       alrm_data, NUM_ALARM_REGS);
>  	if (ret) {
> @@ -212,7 +208,7 @@ static int rk808_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
>  	alrm->time.tm_year = (bcd2bin(alrm_data[5] & YEARS_REG_MSK)) + 100;
>  	rockchip_to_gregorian(&alrm->time);
>  
> -	ret = regmap_read(rk808->regmap, rk808_rtc->creg->int_reg, &int_reg);
> +	ret = regmap_read(rk808_rtc->regmap, rk808_rtc->creg->int_reg, &int_reg);
>  	if (ret) {
>  		dev_err(dev, "Failed to read RTC INT REG: %d\n", ret);
>  		return ret;
> @@ -228,10 +224,9 @@ static int rk808_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
>  
>  static int rk808_rtc_stop_alarm(struct rk808_rtc *rk808_rtc)
>  {
> -	struct rk808 *rk808 = rk808_rtc->rk808;
>  	int ret;
>  
> -	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->int_reg,
> +	ret = regmap_update_bits(rk808_rtc->regmap, rk808_rtc->creg->int_reg,
>  				 BIT_RTC_INTERRUPTS_REG_IT_ALARM_M, 0);
>  
>  	return ret;
> @@ -239,10 +234,9 @@ static int rk808_rtc_stop_alarm(struct rk808_rtc *rk808_rtc)
>  
>  static int rk808_rtc_start_alarm(struct rk808_rtc *rk808_rtc)
>  {
> -	struct rk808 *rk808 = rk808_rtc->rk808;
>  	int ret;
>  
> -	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->int_reg,
> +	ret = regmap_update_bits(rk808_rtc->regmap, rk808_rtc->creg->int_reg,
>  				 BIT_RTC_INTERRUPTS_REG_IT_ALARM_M,
>  				 BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);
>  
> @@ -252,7 +246,6 @@ static int rk808_rtc_start_alarm(struct rk808_rtc *rk808_rtc)
>  static int rk808_rtc_setalarm(struct device *dev, struct rtc_wkalrm *alrm)
>  {
>  	struct rk808_rtc *rk808_rtc = dev_get_drvdata(dev);
> -	struct rk808 *rk808 = rk808_rtc->rk808;
>  	u8 alrm_data[NUM_ALARM_REGS];
>  	int ret;
>  
> @@ -272,7 +265,7 @@ static int rk808_rtc_setalarm(struct device *dev, struct rtc_wkalrm *alrm)
>  	alrm_data[4] = bin2bcd(alrm->time.tm_mon + 1);
>  	alrm_data[5] = bin2bcd(alrm->time.tm_year - 100);
>  
> -	ret = regmap_bulk_write(rk808->regmap,
> +	ret = regmap_bulk_write(rk808_rtc->regmap,
>  				rk808_rtc->creg->alarm_seconds_reg,
>  				alrm_data, NUM_ALARM_REGS);
>  	if (ret) {
> @@ -313,20 +306,18 @@ static int rk808_rtc_alarm_irq_enable(struct device *dev,
>  static irqreturn_t rk808_alarm_irq(int irq, void *data)
>  {
>  	struct rk808_rtc *rk808_rtc = data;
> -	struct rk808 *rk808 = rk808_rtc->rk808;
> -	struct i2c_client *client = rk808->i2c;
>  	int ret;
>  
> -	ret = regmap_write(rk808->regmap, rk808_rtc->creg->status_reg,
> +	ret = regmap_write(rk808_rtc->regmap, rk808_rtc->creg->status_reg,
>  			   RTC_STATUS_MASK);
>  	if (ret) {
> -		dev_err(&client->dev,
> +		dev_err(&rk808_rtc->rtc->dev,
>  			"%s:Failed to update RTC status: %d\n", __func__, ret);
>  		return ret;
>  	}
>  
>  	rtc_update_irq(rk808_rtc->rtc, 1, RTC_IRQF | RTC_AF);
> -	dev_dbg(&client->dev,
> +	dev_dbg(&rk808_rtc->rtc->dev,
>  		 "%s:irq=%d\n", __func__, irq);
>  	return IRQ_HANDLED;
>  }
> @@ -404,10 +395,12 @@ static int rk808_rtc_probe(struct platform_device *pdev)
>  		break;
>  	}
>  	platform_set_drvdata(pdev, rk808_rtc);
> -	rk808_rtc->rk808 = rk808;
> +	rk808_rtc->regmap = dev_get_regmap(pdev->dev.parent, NULL);
> +	if (!rk808_rtc->regmap)
> +		return -ENODEV;
>  
>  	/* start rtc running by default, and use shadowed timer. */
> -	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
> +	ret = regmap_update_bits(rk808_rtc->regmap, rk808_rtc->creg->ctrl_reg,
>  				 BIT_RTC_CTRL_REG_STOP_RTC_M |
>  				 BIT_RTC_CTRL_REG_RTC_READSEL_M,
>  				 BIT_RTC_CTRL_REG_RTC_READSEL_M);
> @@ -417,7 +410,7 @@ static int rk808_rtc_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	ret = regmap_write(rk808->regmap, rk808_rtc->creg->status_reg,
> +	ret = regmap_write(rk808_rtc->regmap, rk808_rtc->creg->status_reg,
>  			   RTC_STATUS_MASK);
>  	if (ret) {
>  		dev_err(&pdev->dev,
> -- 
> 2.35.1
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
