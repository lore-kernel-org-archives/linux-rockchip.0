Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDA82CCD18E
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 21:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMxGIQaJqgrfX5AlFcFzsgNjmigJn0dB71jej8NvjuU=; b=zCoDedleEY2x0O
	PEouh4Bhxwgj24cjoNxOesGvrvYAz9NtwG1Q1gGP7tSn6SIaQ8zWogGn9Bdmbec4HaZVzbqtkisb2
	Px/p0A3Bc0DYoZ+RhnooDp5o5lyJsXFoydeSk7lyHjg8evEhEGlWGHarU9vmzqXfLNQrwXut3uylf
	9/R9QFHRMOwlj47yWTZ1Kd9Ezy0PML9dAhiGAtN7+o8Li8NFlkrLRFs2RPGVmdOedrorSjNiXibUw
	CMrs5pIfb50cyPEnj87y02n9cTM/Msx/BzanTDTZmrQUnKJI3lr2SaLvuLSMV3Z2HmAtK66SKyMLg
	dXl5J6up+OLhfhIO528w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8mI0-0000000HQFB-1Bdn;
	Tue, 14 Oct 2025 21:10:36 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8mHw-0000000HQCq-0GzN
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 21:10:34 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-46e61ebddd6so62584305e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Oct 2025 14:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760476230; x=1761081030; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oIqDBu+bnb+H785D5/vHRnkCuDzXg4G0wmJXPEv+JqU=;
        b=hQx4DoV3W4dpEK6dEobq2QEK2uOw/ISHlg6hGmrE/mqlIMhaHHYvBoWlLr36qbW9qc
         G9pthLE832y94NlXiVDxNKJREhJ6PE9Nky/yNBY50sy7irxCYb4ON+wRNR2KqXMWvU59
         gLHIBR99VOEhzIJzATMpIr7Lp0AUxRRO+Pu0HHGC9uz+It+S3TpRY4DqwdBZ9cnCrcj9
         cU8nleKaDqbnHpOBASAzFtdLHJ9o2zHl2Q/7G0JIT1zNWhMdAvi3toJ1zh6Y9rnj8Ify
         hvzyvdOI48Vt0tyn+5b9KtQpxxyPLNtFe6Yq/G0OcuuSVGvlmqdRDuM2SS0KaHXEwxgJ
         ye7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760476230; x=1761081030;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oIqDBu+bnb+H785D5/vHRnkCuDzXg4G0wmJXPEv+JqU=;
        b=m2MTgaYFg6+2bAPqXcY9d6yEoZ/dfLLKjVpXeoW0Cff8j3F1GE5uurClDb609SlOsw
         jkVcQquGXtbXf6BNw68iGO9viF5H4mYALiVipQOp2mzyve9aesqueOUpHeLFWhwq82bF
         a/4CfFxUrLKTP8KsjAZgvfFAajwCD9IbBwI8rGT7mcOfkO7bF1tdPiLOSqIwRx4dio1V
         wfRITjH7j12UuuvVvtT2z0im0CQ3qcsJnzWTwtjtFZiiprn57eu/U7Q+IfTp7dAF+mlb
         g+S/85yKzkjfm3C1eyu6+v+XUe69xHTcbjcW27zhOga7z1JZqpmaAYWxyJcKsdSLYjhy
         uMdw==
X-Forwarded-Encrypted: i=1; AJvYcCXEBK5EOCq6EFY8ywPlPKJYeYcXZ9ye08X6YSXGg0ZOX0yL67+OpIeqc64z9vh4CtEjFr3h1Vidll9IEr4R1w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwvI9mZUNRHX/IOjw9riBelqDtPfZ4kXwNSdqMzWTLJ4eU68efE
	YrG6Y4Aqe0amDyvl6pqQE+OXnRoTa3sMkESWzkJizAEuy3+W0RjJvrgmj8Tas5Q43Yk=
X-Gm-Gg: ASbGncs0V5X+ZclwzF65td7Gr+x5Q/o3b3uWgRFRNG/vEWEw42wez8UEn5mr9Db57Ef
	X81tCG5yqbmRbwJ/EDNixYOuwlz2vPRCNPzFJfnjFyGc93b7iNxtmJMuohzoDXPzOaj+Jd3VKEp
	3W7mHMPtJkV2p9Kv7Do2x+R/eqXCuN9XKf7AgXQ2ocYmRQu4R4pfclZo1F4PzYSYnS0D65eCgbN
	J9n8s7H2xNfQH6hjTygYWV0wNy9BQf5dC0Ze4pmGfmmMgZMH2mtCB0OnmQKnpOc4mcTxSNgTr+r
	JfCDEtn04pcfCc9G1IgyZe/5n57AQBZFFpJaD1WR5r2mZIYsvW9YC3aBW3FTYuj9ZmPMRp5dG//
	McKbXvDdo17j+XgNKtaY0hW7z8+9WLTV7LjiDoPkDRxlzuAfcMHgKq8ofMZcCzcbmzygCAEl/D8
	pz2vF5UmxJ0j4=
X-Google-Smtp-Source: AGHT+IEbhID2cy30VH28xdYyFKoHwK5zb9GEgSYaTfKLNAL9ivTZVl5Wqfb64+N4E6V8zmftUTcSQw==
X-Received: by 2002:a05:600c:502c:b0:46e:45d3:82fa with SMTP id 5b1f17b1804b1-46fa9aa0eacmr170991135e9.10.1760476230196;
        Tue, 14 Oct 2025 14:10:30 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5cfe74sm25122327f8f.35.2025.10.14.14.10.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 14:10:29 -0700 (PDT)
Message-ID: <269f3575-b315-4855-a2f8-243a91cd62f4@linaro.org>
Date: Tue, 14 Oct 2025 22:10:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/32] media: i2c: ov5675: Use %pe format specifier
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
 <mtwaxgCCtRmzwKQWossgjGCuiRpYsskzaiJXACP41oCx5DY1kIZtPt-agjTCBTTa_kRJb5g4XI-AoGUeIQ8nmQ==@protonmail.internalid>
 <20251013-ptr_err-v1-16-2c5efbd82952@chromium.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251013-ptr_err-v1-16-2c5efbd82952@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_141032_122588_46DB0CD4 
X-CRM114-Status: GOOD (  16.00  )
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
> ./i2c/ov5675.c:1188:9-16: WARNING: Consider using %pe to print PTR_ERR()
> 
> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>   drivers/media/i2c/ov5675.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/i2c/ov5675.c b/drivers/media/i2c/ov5675.c
> index 30e27d39ee445c2603b8fecf7a1107969eb97df3..ea26df328189eef449ce121c0f62a4ef02631830 100644
> --- a/drivers/media/i2c/ov5675.c
> +++ b/drivers/media/i2c/ov5675.c
> @@ -1184,8 +1184,8 @@ static int ov5675_get_hwcfg(struct ov5675 *ov5675)
>   	ov5675->xvclk = devm_v4l2_sensor_clk_get(dev, NULL);
>   	if (IS_ERR(ov5675->xvclk))
>   		return dev_err_probe(dev, PTR_ERR(ov5675->xvclk),
> -				     "failed to get xvclk: %ld\n",
> -				     PTR_ERR(ov5675->xvclk));
> +				     "failed to get xvclk: %pe\n",
> +				     ov5675->xvclk);
> 
>   	xvclk_rate = clk_get_rate(ov5675->xvclk);
>   	if (xvclk_rate != OV5675_XVCLK_19_2) {
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
