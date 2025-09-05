Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAAF4CA1016
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 09:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vc8X44rc4Yv75d/cwgKdcpQS2P3eLviY2iV93c+WlLc=; b=axhC1q/Cy7XlSy
	QFTEhWbqpOEWfbfKnXHACaSvBV0kMJC0hObo9rtn3k8P2yxeWK7rEyYBq5imOm8t/Z9jQIOue080/
	UVfPPVMt+NQSm3SgH4co40Wwwi6tyx9zTgy55jkRBC/ofYijBk+b0wzbUTGYO3/sHiaFlkYrcUXV/
	59bUYbAkh7vCohhoCVMgHoMWKbgvzIECtuf2s1TEA+m0npVcQrHcBV1rg6YIV05QdPrUshOo9ipbL
	ENHaqT9va/vBV7j8EAgMSxTKKOzkgp2VVLxDeq535a761Vp3n45g+onI06zataqvvtvjDTn4IHD5r
	djTJJlvRMokpDK6vktiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuSJh-00000000ZCN-2GOo;
	Fri, 05 Sep 2025 09:01:09 +0000
Received: from mail-lj1-f179.google.com ([209.85.208.179])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuR8O-000000007BI-0MKq;
	Fri, 05 Sep 2025 07:45:25 +0000
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-336af63565dso15898671fa.1;
        Fri, 05 Sep 2025 00:45:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757058321; x=1757663121;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HUDpg8P80ENhLzXkkjoWR5Wm8BjOXjAXH7uDrrOc9Oo=;
        b=RIePygx26AzuMkJlcgEGi8I/KGCN5mMO5DUAeX0uOn0QTa4t7CIXs8GZVuxeOVA21n
         IxnrUqDn9ucKk9aZOsGC8VoI352dZtaDA3BAm3ldO03jdrB4sRjGLW+igFlRLb0486YE
         R2axAF0/YCxWikQQX/ejgV1LPOvE3Y6zj8fOfrtf+GkkgFbZ5foIBMZc7NJ3r5sQSPGG
         hGXNwjFLyD0kIzZ0Vxn8XTt1N6mpfF18sJPKL3t47RPJdQq5akQ0GZpUaSi3j3wIrckW
         izybBAzW9STET770ExY2dEPPQipl1UyH4klE0V0zaY0mWlvXdbdysl0BNU6OmUrdOv9i
         b8+A==
X-Forwarded-Encrypted: i=1; AJvYcCVKOI7C4O5OFIBDeMo73/o77fwXrBHlzsR9wIn5fMt7Ef0Plo72Y8N6/X5LUnYphRzmwmteMp//xlXAIDESWOlKWA==@lists.infradead.org, AJvYcCWu1Wagoaf/lYUOCiZNtOzZF5IUw/ZwK5XKnkgnJxssDjt19S3ADRxXvHkqymG72hXAXCxx8e1raAfwvfIN@lists.infradead.org, AJvYcCWvJMdlO7g+e4wqpckI35MU1PBkoIU7cRhhGmty6Ixaw1O4iWn8J9jn0+kDZJLkibX+GOJKOtcwOnQGzwBHN8vb9A==@lists.infradead.org, AJvYcCXwjwcwjp7owPZCXgq0E+n/T8clU0ItEaahJOofKuMYUask2xjmuRUP9iJZO+yH3F/b2vQEjvHw3/Eib6lLfUM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMmylCHh9IgUvkFX8aYFgqnF6HYrUnhtJZyvLnm30vvOFNMgz6
	sHk3J4rE+5JIwzELnsv9ZkKXqE9/SJia1LXbetu51CGequ/ULeW6vgqqZZuKELG91vI=
X-Gm-Gg: ASbGnctU8o5VMLpRLSAM/C6Cft1kWgYCjXGfUpnyYetmrOPLYqTxgwgoJVcAtHUecPc
	BmPuSrvMeYZnKlnSiydF3kUw2nHARhsybQgOxUDUgrMhrMh3Rghbd3RsfCQhLXa7j6bOAriApoE
	A9nGPMJ4gedJkD239hmtIsr/G6QgeEy7kTFG8pd7WDUssjQWh/pgDjeK+9KnH5iufIQyX4fjl1c
	9U/jt8VxYFolSwV5jB1hYQyBDYJFOgJUFntfLNzXmyufyvS5jhHz1om+CW4y68n45wLN22lzRBc
	JgD9xjLmSHQm8M08h8tBUaaS0Nyf7ctXqiY52oiVREmRcGvI/hDZeO9G398VDaCjLfySXHoJfE7
	9Qohyee2bUHRjXzWwbk0SotvtutcmHUTopChbsC28Y6YZgQ9oxPg=
X-Google-Smtp-Source: AGHT+IGMM57sVd3CZhJ8/fECIE8V3aZtY9IpQuzNMHZfBy+t9m0jG54g3qSWPJaeoOOU9kVgn3luIg==
X-Received: by 2002:a05:651c:23c5:20b0:32c:ab57:126b with SMTP id 38308e7fff4ca-336ca9a301emr56276951fa.16.1757058321339;
        Fri, 05 Sep 2025 00:45:21 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f5032d68sm19097211fa.33.2025.09.05.00.45.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 00:45:21 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5608bfae95eso2036977e87.1;
        Fri, 05 Sep 2025 00:45:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUK4htmmonVD+Q0p7f4cZu8LXftZw2Fg+0l146eT6X13ZTOqLTPT95/iY+e1kOsJ18khDjnSzo5ddsVHSwg6lE=@lists.infradead.org, AJvYcCWNT2gZ1Kd1a7IU1dN+aDYDA4hc3XYkxr11dcK4Bvb0CmUfhBylJlYL9jW5l88eOV8EBFOsEJaW48QRsvWr@lists.infradead.org, AJvYcCWvBbL5VYSxd/Tt5jbSUirxV0Qh+oEpCFooATFhNKM/ArQ5W6ULWB348BF5O3tn1auaupEEL+rsghmutPrPesH4TA==@lists.infradead.org, AJvYcCX0tqAdLjtljK5sZfQV+WcWyHQ+9dSVjQ0Qx7jwSr0ykzm0WnmCp3dcnpWQUccctt/jYJC7Qbx3893xCKtp6f/rBg==@lists.infradead.org
X-Received: by 2002:a05:651c:1545:b0:337:ed76:7212 with SMTP id
 38308e7fff4ca-337ed767a08mr38641871fa.40.1757057857304; Fri, 05 Sep 2025
 00:37:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250905072423.368123-1-zhao.xichao@vivo.com> <20250905072423.368123-4-zhao.xichao@vivo.com>
In-Reply-To: <20250905072423.368123-4-zhao.xichao@vivo.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 5 Sep 2025 15:37:24 +0800
X-Gmail-Original-Message-ID: <CAGb2v665Ukqdy2dxH7d=WKuLnWNz=Qwp3U+QxnrdfEPpwVL5mg@mail.gmail.com>
X-Gm-Features: Ac12FXwDAvrTIRtRT03_-9LcU10SU7B9zXfyLBZJD9DODV-PWNu2aOFrKkfI70k
Message-ID: <CAGb2v665Ukqdy2dxH7d=WKuLnWNz=Qwp3U+QxnrdfEPpwVL5mg@mail.gmail.com>
Subject: Re: [PATCH 03/12] iio: adc: Remove redundant error log prints
To: Xichao Zhao <zhao.xichao@vivo.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Guillaume La Roque <glaroque@baylibre.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Markus Mayer <mmayer@broadcom.com>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	zhanghongchen <zhanghongchen@loongson.cn>, Yinbo Zhu <zhuyinbo@loongson.cn>, 
	Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Talel Shenhar <talel@amazon.com>, 
	Eduardo Valentin <edubezval@gmail.com>, Keerthy <j-keerthy@ti.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	"open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>, 
	"moderated list:ARM/Allwinner sunXi SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Allwinner sunXi SoC support" <linux-sunxi@lists.linux.dev>, 
	"open list:THERMAL" <linux-pm@vger.kernel.org>, 
	"open list:THERMAL DRIVER FOR AMLOGIC SOCS" <linux-amlogic@lists.infradead.org>, 
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>, 
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>, 
	"open list:QUALCOMM TSENS THERMAL DRIVER" <linux-arm-msm@vger.kernel.org>, 
	"open list:RENESAS R-CAR THERMAL DRIVERS" <linux-renesas-soc@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	"open list:SAMSUNG THERMAL DRIVER" <linux-samsung-soc@vger.kernel.org>, 
	"moderated list:ARM/STM32 ARCHITECTURE" <linux-stm32@st-md-mailman.stormreply.com>, 
	"open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>, 
	"open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_004524_125225_7DFDA7A8 
X-CRM114-Status: GOOD (  19.90  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBTZXAgNSwgMjAyNSBhdCAzOjI24oCvUE0gWGljaGFvIFpoYW8gPHpoYW8ueGljaGFv
QHZpdm8uY29tPiB3cm90ZToKPgo+IGRldm1fdGhlcm1hbF9vZl96b25lX3JlZ2lzdGVyKCkgcHJp
bnRzIGVycm9yIGxvZyBtZXNzYWdlcyB3aGVuCj4gaXQgZmFpbHMsIHNvIHRoZXJlIGlzIG5vIG5l
ZWQgdG8gcHJpbnQgZXJyb3IgbG9nIG1lc3NhZ2VzIGFnYWluLgo+Cj4gU2lnbmVkLW9mZi1ieTog
WGljaGFvIFpoYW8gPHpoYW8ueGljaGFvQHZpdm8uY29tPgo+IC0tLQo+ICBkcml2ZXJzL2lpby9h
ZGMvc3VuNGktZ3BhZGMtaWlvLmMgfCA2ICstLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRj
L3N1bjRpLWdwYWRjLWlpby5jIGIvZHJpdmVycy9paW8vYWRjL3N1bjRpLWdwYWRjLWlpby5jCj4g
aW5kZXggNmI4ZDZiZWUxODczLi4zYjMzNDgwODEzZmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9p
aW8vYWRjL3N1bjRpLWdwYWRjLWlpby5jCj4gKysrIGIvZHJpdmVycy9paW8vYWRjL3N1bjRpLWdw
YWRjLWlpby5jCj4gQEAgLTY0MCwxMiArNjQwLDggQEAgc3RhdGljIGludCBzdW40aV9ncGFkY19w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgICAgICAgICAgKiBE
byBub3QgZmFpbCBkcml2ZXIgcHJvYmluZyB3aGVuIGZhaWxpbmcgdG8gcmVnaXN0ZXIgaW4KPiAg
ICAgICAgICAgICAgICAgICogdGhlcm1hbCBiZWNhdXNlIG5vIHRoZXJtYWwgRFQgbm9kZSBpcyBm
b3VuZC4KPiAgICAgICAgICAgICAgICAgICovCj4gLSAgICAgICAgICAgICAgIGlmIChJU19FUlIo
aW5mby0+dHpkKSAmJiBQVFJfRVJSKGluZm8tPnR6ZCkgIT0gLUVOT0RFVikgewo+IC0gICAgICAg
ICAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwKPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJjb3VsZCBub3QgcmVnaXN0ZXIgdGhlcm1hbCBzZW5zb3I6ICVsZFxuIiwK
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBUUl9FUlIoaW5mby0+dHpkKSk7Cj4g
KyAgICAgICAgICAgICAgIGlmIChJU19FUlIoaW5mby0+dHpkKSAmJiBQVFJfRVJSKGluZm8tPnR6
ZCkgIT0gLUVOT0RFVikKCkkgdGhpbmsgdGhlIGNvbW1lbnQgYWJvdmUgaXMgcHJldHR5IGNsZWFy
IHRoYXQgd2UgZG9uJ3Qgd2FudCBhIGZhaWx1cmUKb3IgYW4gZXJyb3IgbWVzc2FnZSB3aGVuIGl0
IGlzIGZhaWxpbmcganVzdCBiZWNhdXNlIHRoZSBEVCBpcyBtaXNzaW5nCnRoZXJtYWwgem9uZXMu
CgpDaGVuWXUKCj4gICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoaW5mby0+
dHpkKTsKPiAtICAgICAgICAgICAgICAgfQo+ICAgICAgICAgfQo+Cj4gICAgICAgICByZXQgPSBk
ZXZtX2lpb19kZXZpY2VfcmVnaXN0ZXIoJnBkZXYtPmRldiwgaW5kaW9fZGV2KTsKPiAtLQo+IDIu
MzQuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
