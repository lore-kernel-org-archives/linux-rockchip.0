Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54D5AC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 10:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xq5B7ptzoKZy7VH9lDEkNxr0KzcuRF5ST2T+jKrYCO4=; b=Zn1WxTSymfdPN+
	olMGbCHZN/J9Kt24PlXtidNBZOqvJTPXXYO4E+TKDVK57rWDqlVkYDoLBSMeY5q6KRK9jpDDixyrC
	5uEo3mau/zfdMUo1emd0P1h/Xh6NZYASIP3ZfeY7pQETpPefBJkUarFqyKGCFuPg5QO57wzEFtVsB
	GYGCvGdIxCpKVcnkt4mF+XQrJNiG/GrrtwYRGaJyrZgDo44cIDV5nTwLjcr26+QWFqsvIDfisMR5g
	QAllF4P64Mnh4ZN1m8t6Yq2YTO/h4qH2/y/WXAxPV5DPIgRPDGS4ZKHDsZK3Tn0RS+HeFNU7tWDWp
	Uc1Lfvgsul+upMy4d0hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPJiC-0000000Cs9K-1BMR;
	Thu, 04 Jul 2024 10:29:12 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPJhx-0000000Cs79-2XHa;
	Thu, 04 Jul 2024 10:28:59 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-58b447c51bfso622183a12.2;
        Thu, 04 Jul 2024 03:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720088935; x=1720693735; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W1n41ixNHOs7ND4dHyzhkd0g//JyZDb7AOEWRwz5JLA=;
        b=f7ajtVqdlQ2pBvnKPLrVzbg/KT2kVNkDkbhT1d5x5tX5LoseuqGqusaAyAEnuksESL
         85obx9DRsIZaATBKJbEh38XfaXNEbVuMJo8Rr982Egyw6P1Wq8sxElH57nqOFLtAGQoh
         jykfX7nR+8fHBi/lzpD3Nj/6TGYKDx/F1tQJCm486/cfOaZSCOWlCgMewju07awE5mal
         qz0sAbaLgjPI8Ui8yI+SJsmlZZHgcGgc7E3Xlndc7bOGl59wRzjr9VEVtmEgwYikHRiA
         Wh4HwMU6AnRDO/Ogv1qHur2CRzAaJ4hRXG08tPGAcCQZQM2Mp54IFhPtny3C93Eho3zy
         BsWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720088935; x=1720693735;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W1n41ixNHOs7ND4dHyzhkd0g//JyZDb7AOEWRwz5JLA=;
        b=FNaCZ7mK1BIBMZsjCB1nHCDlHnji9cyL1jgN4xZUjkVu7hB4l9xj+LTlyWV3SNzFtA
         WgtMCg10OYIEjU4/kan/fVHspPO6EPI8aDoY7P54YrGx4Ya+D1I9Sed4Y5GAr+8aI2MW
         AnFdvTzp5/gzt7la6SO1+ofZn+GuA5UJ1ArYcMkz1edKDBgy9YdX3e7KmVu/IDgpHQ8U
         KvzYeX8MOPs4wEnU8xxQOrHDHeZJsotZsLc7Kfc5VOPGs4oes5O6U8zG+rhDbVdH5kGH
         nvvF2iIjvhSivBnohCTFT/x+uJKfp/lfMNoF4Q3ztaunqvAno2kb9uY7dihKZj6PyZTp
         EK0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWuPaszo8NiFDiU++DH3167bOKb/Sg7HL95uEqd6jkxEcUb1xb7jSHRhXWGtnGa+Ny1TA+9rNRgaYYt9Hcp3N5vsVoPxVNWyDpHMXhnDz12RfuF
X-Gm-Message-State: AOJu0Yw+Csx0iRePAyXTTR+bwD7kLBsTugozTJ9y33r3k2N0j1rNKi1G
	Z3tZKmYkahhuupXoB2+6JsnHgij1AL9a6c/ss7pqyWq70ovdxnE=
X-Google-Smtp-Source: AGHT+IEq7rCkJ3goBqSiFAE3BU988m6dNO0UHFcNMG7KA3oE7u0dY94ILDMx5QFtaem3q5aXg9m0hg==
X-Received: by 2002:a05:6402:2754:b0:582:ca34:31b1 with SMTP id 4fb4d7f45d1cf-58e5984c1ddmr996419a12.16.1720088934848;
        Thu, 04 Jul 2024 03:28:54 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:5f4b:4104:ca7b:6efb? ([2a02:810b:f40:4600:5f4b:4104:ca7b:6efb])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-58612c838casm8325256a12.4.2024.07.04.03.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jul 2024 03:28:54 -0700 (PDT)
Message-ID: <61b8b328-b72a-4bb5-9fb6-c226c2b773c4@gmail.com>
Date: Thu, 4 Jul 2024 12:28:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 09/24] drm/rockchip: dw_hdmi: add regulator support
To: Diederik de Haas <didi.debian@cknow.org>,
 dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-10-s.hauer@pengutronix.de>
 <16078476.GIfNKF0EQE@bagend>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <16078476.GIfNKF0EQE@bagend>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_032857_683943_7D40C595 
X-CRM114-Status: GOOD (  27.43  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am 04.07.24 um 11:09 schrieb Diederik de Haas:
> On Friday, 22 April 2022 09:28:26 CEST Sascha Hauer wrote:
>> The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
>> for the HDMI port. add support for these to the driver for boards which
>> have them supplied by switchable regulators.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>> ---
>>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 41 +++++++++++++++++++--
>>   1 file changed, 38 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>> b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c index
>> b64cc62c7b5af..fe4f9556239ac 100644
>> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>> @@ -9,6 +9,7 @@
>>   #include <linux/platform_device.h>
>>   #include <linux/phy/phy.h>
>>   #include <linux/regmap.h>
>> +#include <linux/regulator/consumer.h>
>>
>>   #include <drm/bridge/dw_hdmi.h>
>>   #include <drm/drm_edid.h>
>> @@ -76,6 +77,8 @@ struct rockchip_hdmi {
>>   	struct clk *ref_clk;
>>   	struct clk *grf_clk;
>>   	struct dw_hdmi *hdmi;
>> +	struct regulator *avdd_0v9;
>> +	struct regulator *avdd_1v8;
>>   	struct phy *phy;
>>   };
>>
>> @@ -226,6 +229,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi
>> *hdmi) return PTR_ERR(hdmi->grf_clk);
>>   	}
>>
>> +	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
>> +	if (IS_ERR(hdmi->avdd_0v9))
>> +		return PTR_ERR(hdmi->avdd_0v9);
>> +
>> +	hdmi->avdd_1v8 = devm_regulator_get(hdmi->dev, "avdd-1v8");
>> +	if (IS_ERR(hdmi->avdd_1v8))
>> +		return PTR_ERR(hdmi->avdd_1v8);
>> +
>>   	return 0;
>>   }
>>
>> @@ -566,11 +577,23 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
>> struct device *master, return ret;
>>   	}
>>
>> +	ret = regulator_enable(hdmi->avdd_0v9);
>> +	if (ret) {
>> +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd0v9:
> %d\n", ret);
>> +		goto err_avdd_0v9;
>> +	}
>> +
>> +	ret = regulator_enable(hdmi->avdd_1v8);
>> +	if (ret) {
>> +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd1v8:
> %d\n", ret);
>> +		goto err_avdd_1v8;
>> +	}
>> +
>>   	ret = clk_prepare_enable(hdmi->ref_clk);
>>   	if (ret) {
>>   		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI
> reference clock: %d\n",
>>   			      ret);
>> -		return ret;
>> +		goto err_clk;
>>   	}
>>
>>   	if (hdmi->chip_data == &rk3568_chip_data) {
>> @@ -594,10 +617,19 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
>> struct device *master, */
>>   	if (IS_ERR(hdmi->hdmi)) {
>>   		ret = PTR_ERR(hdmi->hdmi);
>> -		drm_encoder_cleanup(encoder);
>> -		clk_disable_unprepare(hdmi->ref_clk);
>> +		goto err_bind;
>>   	}
>>
>> +	return 0;
>> +
>> +err_bind:
>> +	clk_disable_unprepare(hdmi->ref_clk);
>> +	drm_encoder_cleanup(encoder);
>> +err_clk:
>> +	regulator_disable(hdmi->avdd_1v8);
>> +err_avdd_1v8:
>> +	regulator_disable(hdmi->avdd_0v9);
>> +err_avdd_0v9:
>>   	return ret;
>>   }
>>
>> @@ -608,6 +640,9 @@ static void dw_hdmi_rockchip_unbind(struct device *dev,
>> struct device *master,
>>
>>   	dw_hdmi_unbind(hdmi->hdmi);
>>   	clk_disable_unprepare(hdmi->ref_clk);
>> +
>> +	regulator_disable(hdmi->avdd_1v8);
>> +	regulator_disable(hdmi->avdd_0v9);
>>   }
>>
>>   static const struct component_ops dw_hdmi_rockchip_ops = {
> 
> Is it possible to probe for those avdd_0v9 and avdd_1v8 regulators only on
> devices that should have them?
> 
Those regulators exist for _all_ RK SoCs that use dw-hdmi controller, as it
has to be supplied in same why (as it is always the same controller). In
particular case of rock64[0] its:

DVIDEO_AVDD_1V8P6 -> VCC_18
DVIDEO_AVDD_1V0M6 -> VDD_10

So: Just fix the device tree and your warnings are gone :)

[0] https://files.pine64.org/doc/rock64/ROCK64_Schematic_v2.0_20171019.pdf

> On a Rock64 (rk3328), but probably for all VOP1 devices, they're not present
> and that results in the following warnings:
> dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
> dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator
> 
> And those get repeated a number of times. In my last 6.10-rc5 boot it was 5
> each and in my last 6.10-rc6 boot it was 9 each. It seems the number varies
> per boot and is not connected to the specific kernel version.
> 
> In [1] I got 36 "dummy regulator" warnings, but some were from others.
> 
> [1] https://lore.kernel.org/linux-rockchip/2528743.FZeJfPzi8P@bagend/
> 
> Cheers,
>    Diederik
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
