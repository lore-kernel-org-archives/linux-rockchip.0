Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A194BCCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 21:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sVGjvNSsOHlbCR0VUyIMgn0Aq10PX/6jJ9QmAVBUF0=; b=ETBkPk307mr8oF
	nnXIblcU3carPK2GUg9lAEfRHqu4qFSQ3xHVTvHGBLn6n/lf8RZsRMXoTLAFiOsm2fGTGAPHAfZf/
	1YAxNwSqX4KuJLtkTrB8YmN8lR8YzvvF9wuPtAnyhOmlSavq2coVfpEMHzcxYX3YiU2tAzq9QGEF3
	Hj841VY8xcQfOzIdpDpwDMjJJi9xof+PN9aNPlvcuDOCY8al48OrTKhmuIqnScSxmAkobtZgkFk6G
	n/XNo3ypFCeBzlFk8mEeEmvG6aJk8icovHKJXpYehlVH0w31tJQddkwzWJrvaIWo6itqFVuR1xUh7
	rJ2FA3cWISW4K822oGFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8mHO-0000000HQ3F-3wcE;
	Tue, 14 Oct 2025 21:09:58 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8mHM-0000000HQ2E-2rb4
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 21:09:58 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-46e326e4e99so1807125e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Oct 2025 14:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760476194; x=1761080994; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aAFIy48SiNIefLRd1BAuON2DcAPzB6rd2TTAzyi/zmQ=;
        b=KRf0BrQC3Mum/DQusG040TA3cREvouGllyIX1jBzpy5fg/jm1kvV7TsEGM60byVU7K
         vcD/cuBh/nZMjwcWOa9sdWxcjxPUHybkwyvAFmvD17HnWpK+7KnkUpZNe5RRnEdIqZEe
         y5vwRBCiWNuqAGSkMGEBAAb4Q6i/+vWTFeb25YkWF0/uHmEU3jfNQU1KSIPCbKDRyO2J
         rw/sJZmIKnvib4XMylFNIX6YB5f13qi0hHMxzaVtrBImjPfk8DLu9Vyyr2+brVVAcjaV
         NnUGK2uaHdVCfCMA5FQc7tZrHRq6AgvvGc2QFIK4kNPocKgcNiif5AEMyDcyoYOavKls
         VHvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760476194; x=1761080994;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aAFIy48SiNIefLRd1BAuON2DcAPzB6rd2TTAzyi/zmQ=;
        b=ICE5zg6Roc2Ijb68NZqyRxkNqumc6HgEUvgeIGhMbrxblZktnjqF75m7BAHniYd69H
         PF63Bk5GTv0hC0bb2gba2qSuRKzP3o4kiIejM+jKmuUsfncPz8C8SXoQGjtIntIId5ZA
         oIEV3dVsy4jngUSTF94scXcKuTN9z84Ylu28yZu5H3aqaqrAqPCP+F0AOvNRWd+QEnM5
         XJWbpmETuE4+I2CVAQZa6QdkjFdW4r9NwxvvS7qraBu9SxVvwOSnPGWn9y0ZPvRMGhXY
         +k+LGKk8SZj0DmnXTuIZ0JnCu7zb6JViRwcdkF4wkkPMHK4H4LetyjYOljIRDgRT1Yhi
         cGUw==
X-Forwarded-Encrypted: i=1; AJvYcCU9qVG+bHsvWWNAw/tfVQ27w1SY0bQd7MnDrtnjJYXdNh8ckJG7BxvapiXMz7f9WcPMEOTVMN7GOoLk/ZZsyg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxHGFTQ5cnMDD1gDE/6S3HYLKESYnUn0DiheAJJfo+K8mdZhSH7
	+cZaWHCLNW4AF+CWOR/AMugSAfZtsg0Q8zubbUuaouvMNxa0JEcbL7H8LfZLRYz+zik=
X-Gm-Gg: ASbGnctQMTmGutUy7FB4bEJ6k8LoceY3jIzu0REASAmdSXE6K58ShvHNI3DEa8YPifw
	o2haseBU0HCPY+Jrbs7Gwv2R4vvHdf3uir5PBUKulWMOLNTzCOFzLDC46ql85Vs0R6z4WYuG0Cr
	4UtYU9oX7b3NiJIfBxKhPXtcgFU8/x7qsSgNxgS/zTXU5SFI7NT4Vuj/qCLnHl0LO5wChu2v73W
	1cBY3jWovDIYsqdT3BHYCIkB0wAEnN7LheQjpY9FnuQFEBxHuUap71Dkp0yu5cOhrXRn5fBIWZW
	DMpaYvv31AcRKenQAd2MIuHexNP6BvRKMtiIdkIwLBQLB5pkBDRPqg/TkQqRVN3NpdmRO00Aupn
	V8Bu6szcXSAAmBPPStevf+3TV3iJ1TI5pERmNYKHy8BpastWKFC2hppOUCT5QET6XGGWVrrj9N7
	aX7V6839LfNeaQJslpP/uBYQ==
X-Google-Smtp-Source: AGHT+IHMLDEl/2OUqyd6dsVKt1UGXh3BaRNNfQRox5yRqmlsYRCZeNTg0aqnPOJfK+LSUdRcw9kJiQ==
X-Received: by 2002:a05:6000:2389:b0:411:3c14:3ad9 with SMTP id ffacd0b85a97d-4266e7c7b2fmr20416940f8f.21.1760476194354;
        Tue, 14 Oct 2025 14:09:54 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce582b39sm25169444f8f.15.2025.10.14.14.09.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 14:09:53 -0700 (PDT)
Message-ID: <ebc5be79-7184-4a91-92fc-8a181ba096b5@linaro.org>
Date: Tue, 14 Oct 2025 22:09:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/32] media: i2c: imx412: Use %pe format specifier
To: Ricardo Ribalda <ribalda@chromium.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 =?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Leon Luo <leonl@leopardimaging.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Julien Massot <julien.massot@collabora.com>, Jacopo Mondi
 <jacopo@jmondi.org>, Daniel Scally <djrscally@gmail.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Sylvain Petinot <sylvain.petinot@foss.st.com>, Yong Zhi
 <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, Tiffany Lin
 <tiffany.lin@mediatek.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rui Miguel Silva <rmfrfs@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Martin Kepplinger <martink@posteo.de>, Purism Kernel Team <kernel@puri.sm>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Sylwester Nawrocki
 <s.nawrocki@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Yemike Abhilash Chandra <y-abhilashchandra@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, imx@lists.linux.dev,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev
References: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org>
 <U1BUWm68sWNPUXHr6NOsnc48bb6eXIL5tcAzrNijItgutDvPaBTmCI0qf2ERLQB_2BFYEBVNvWTQdmx5z_UU-g==@protonmail.internalid>
 <20251013-ptr_err-v1-11-2c5efbd82952@chromium.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251013-ptr_err-v1-11-2c5efbd82952@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_140956_904106_36566F25 
X-CRM114-Status: GOOD (  16.53  )
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

On 13/10/2025 15:14, Ricardo Ribalda wrote:
> The %pe format specifier is designed to print error pointers. It prints
> a symbolic error name (eg. -EINVAL) and it makes the code simpler by
> omitting PTR_ERR().
> 
> This patch fixes this cocci report:
> ./i2c/imx412.c:931:3-10: WARNING: Consider using %pe to print PTR_ERR()
> 
> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>   drivers/media/i2c/imx412.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/i2c/imx412.c b/drivers/media/i2c/imx412.c
> index 7bbd639a9ddfa7fa76d3a4594be1e1c4d002c98a..b3826f80354703b17b416dc233854da3f5736e38 100644
> --- a/drivers/media/i2c/imx412.c
> +++ b/drivers/media/i2c/imx412.c
> @@ -927,8 +927,8 @@ static int imx412_parse_hw_config(struct imx412 *imx412)
>   	imx412->reset_gpio = devm_gpiod_get_optional(imx412->dev, "reset",
>   						     GPIOD_OUT_LOW);
>   	if (IS_ERR(imx412->reset_gpio)) {
> -		dev_err(imx412->dev, "failed to get reset gpio %ld\n",
> -			PTR_ERR(imx412->reset_gpio));
> +		dev_err(imx412->dev, "failed to get reset gpio %pe\n",
> +			imx412->reset_gpio);
>   		return PTR_ERR(imx412->reset_gpio);
>   	}
> 
> 
> --
> 2.51.0.760.g7b8bcc2412-goog
> 
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
