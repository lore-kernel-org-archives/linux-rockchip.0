Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C025ACA0FED
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 14:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50EYfcvhKRzYyfybO695VM1quqRDVnvf/9I9ghOQTqU=; b=4M4UbrhVJ7zay9
	yva4q30uJ4rq47ZrvQQ/0JnAhQ6nTF/0m+ng1mK5/5v9kmn80n+7YSZlA7Zbc0oDsgyv4RTy+UpNb
	AWTlrXLM6ZG91t/mBiyqP+xZtJfrOV0mohSLpGbygpMDyJebvJ7Hcxe+Atvi3pARFOjjHHf5TW+LR
	mXY6sl3mL5TcJ9trTtNeH0e0RBUQ39qKvHnEGHWntu32gVmUAde40sB2JTm76YYSbUFMqsrQuyTfd
	7dfxtK9W+e1dQKxLsb3brXh6Bw8+Dys2op51dYEik8oKnSX7olc/Z6RGttfny45TywqBR5jj2Vepe
	8q12JmGDgtTA0/lGNS4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXV8-00000002KNc-0AJR;
	Fri, 05 Sep 2025 14:33:18 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuSq0-00000000lyL-03ry;
	Fri, 05 Sep 2025 09:34:33 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-b04770a25f2so286710166b.2;
        Fri, 05 Sep 2025 02:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757064870; x=1757669670; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ZXKC69S7By8Ya1ZMREMZuen7JwS2/FHlmhonyDWpnQ=;
        b=AAo8qrsy7uTG0iSUMTsW7tD6Y1S8V6VCghZxIRCGl5VdTt8eXrue0rvuprjOHNrE5Z
         /hVTIUbR0j5yd5SNvG0NrY2WPekyR+i8jyM36s12u38+PBiqeu/7ogLsnhpjA9jWkyCo
         H0aFNkNvJcAS9jyr2P1xUVbmXHFiiMWWAqLPniMd2TOs206pIRytzEEUK98bC2Dd9lB6
         eyf8cRA2jYIEWK4bLx5n+pQUe0AaguMql32YDu3ftwoC/y0zVi+1TjrnAQpKsPUXr1Qs
         H1bNytK/CX9TtuC0tZV09prhhyyqNHlBVKZ6Z97++rHTY9W/mAeuDrPJZ4BIEqvDGyTH
         xDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757064870; x=1757669670;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ZXKC69S7By8Ya1ZMREMZuen7JwS2/FHlmhonyDWpnQ=;
        b=VZXmrCEnLiECCDxfGOUFwE+JiN3zF8fX9gZw67BETMQKbYgrPcalyjPGz8bTEgS8Fo
         EGSJKzePGd8QW1jUD/zmBtMHRwqu3jci8w8FvAwr58K3bAKCV5VgLmXADp+H1ibtzEcN
         LQyIV+lCHiXrieI1cW5nMIgXvDXrPUcNkm+mWi+fznu6Vsxd2Xh6G1PrObc+DvKjViaY
         QjhOSV5dDgONf26JT2WGAyKXMMvfCxKKJ+W+58GKEBjQrt1oWmEVqROxEUPForDMP1S8
         xLiu19q8a8/1aEjv9RJajk2Nxgke75Wh+haYx0+9SnHHnUgq83cDRbU4/HK0FdhONddg
         9Iyg==
X-Forwarded-Encrypted: i=1; AJvYcCW6Cwupwcf1RgJMozFnOTY50IXPBfYCpesWCYKGhRntLGyfUpHMqFJ9qUPc1y9D+dYz/YSYzWJuBb3Bsp9ron0=@lists.infradead.org, AJvYcCWC0zvKZlFA66e6pp5CVTS7TU3PzqsvQCfZn7S45WGzTDKJNezxZOvCleI0dFOmsva4f5jXXEMTdg890aRvbepGvA==@lists.infradead.org, AJvYcCXCHFaGs+1ehlAFLPd59MHchEQ3pxoJJjQvfZojRDQIUTUgQgf2aBj0aXa5GIqUcUBrhYq3lSvDOGUac0c3@lists.infradead.org, AJvYcCXfc0nuh5cZnhdR+KkiWR97yyafuc+CeBsfqOqV/S2p5hl5XScPir7FmVgutx2i7FP2JM4Fu/uvB79UCPJqa8aqig==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/1yK3VXGgAlinFXLWs5AChZtYD5aHjz0NYQmAvVNUXakVbvqu
	vDxZqTSoiF96u01k9SeULBiFIWsDdR73269AxO1X/UN+pCOIcoaQLZpqPe8+yNuJalO2FFyM5wA
	fIp1VPcwXLyESMrjkXtpjutSTaY4V/qk=
X-Gm-Gg: ASbGncsirY5ojSyb60Zd++wcsFjVR+v3FjKHc2kZzxOUXlzxd/UhWD/0aTlFYaHSJak
	kmIm/HEGf5NRK+8V8YGyJN3nW/V8D9eZjBjTRO34XkOVD97c8Dnj+5MAOTYTFjhxrrqNoemAEbS
	ZQQcCzPz3LjrgA39aFKrcjHMUmaijStHITBixM9WTQEfMbpI3vw8EiL8YA9LpJJ/sxtd+9nCYmd
	V1enndJQ2HGS/dd7PIl
X-Google-Smtp-Source: AGHT+IFNrkynh+/Ymp/HCHyA5XGYRylr5jF6GjIL2qDKGYyZpbM+uW2yDfuf4gc8lpHjzkwCg5YwNrLoynQjYkyhMFI=
X-Received: by 2002:a17:907:928a:b0:b04:5b3d:c31f with SMTP id
 a640c23a62f3a-b045b3dc692mr1195506366b.49.1757064869658; Fri, 05 Sep 2025
 02:34:29 -0700 (PDT)
MIME-Version: 1.0
References: <20250905072423.368123-1-zhao.xichao@vivo.com> <20250905072423.368123-2-zhao.xichao@vivo.com>
In-Reply-To: <20250905072423.368123-2-zhao.xichao@vivo.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Sep 2025 12:33:53 +0300
X-Gm-Features: Ac12FXxbms9z4N7jI4jHPwNjVwlV8d4OiE5hmfmL25yynmREhxdRP_mz9jzg-_c
Message-ID: <CAHp75VforxjsHWzxrxfD_YOshvg0Y=KwrpmAPWwhyarNm2wNjQ@mail.gmail.com>
Subject: Re: [PATCH 01/12] thermal: of: Add error handling in devm_thermal_*_register()
To: Xichao Zhao <zhao.xichao@vivo.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Guillaume La Roque <glaroque@baylibre.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
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
X-CRM114-CacheID: sfid-20250905_023432_056896_04528165 
X-CRM114-Status: GOOD (  16.87  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBTZXAgNSwgMjAyNSBhdCAxMDoyNeKAr0FNIFhpY2hhbyBaaGFvIDx6aGFvLnhpY2hh
b0B2aXZvLmNvbT4gd3JvdGU6Cj4KPiBkZXZtX3RoZXJtYWxfb2Zfem9uZV9yZWdpc3RlcigpIGRv
ZXMgbm90IHByaW50IGFueSBlcnJvciBtZXNzYWdlCj4gd2hlbiByZWdpc3RlcmluZyBhIHRoZXJt
YWwgem9uZSB3aXRoIGEgZGV2aWNlIG5vZGUgc2Vuc29yIGZhaWxzCj4gYW5kIGFsbG9jYXRpbmcg
ZGV2aWNlIHJlc291cmNlIGRhdGEgZmFpbHMuCj4KPiBUaGlzIGZvcmNlcyBlYWNoIGRyaXZlciB0
byBpbXBsZW1lbnQgcmVkdW5kYW50IGVycm9yIGxvZ2dpbmcuCj4gQWRkaXRpb25hbGx5LCB3aGVu
IHVwcGVyLWxheWVyIGZ1bmN0aW9ucyBwcm9wYWdhdGUgdGhlc2UgZXJyb3JzCj4gd2l0aG91dCBs
b2dnaW5nLCBjcml0aWNhbCBkZWJ1Z2dpbmcgaW5mb3JtYXRpb24gaXMgbG9zdC4KPgo+IEFkZCBk
ZXZfZXJyX3Byb2JlKCkgaW4gZGV2bV90aGVybWFsX29mX3pvbmVfcmVnaXN0ZXIoKSB0byB1bmlm
eQo+IGVycm9yIHJlcG9ydGluZy4KCi4uLgoKPiAgICAgICAgIHB0ciA9IGRldnJlc19hbGxvYyhk
ZXZtX3RoZXJtYWxfb2Zfem9uZV9yZWxlYXNlLCBzaXplb2YoKnB0ciksCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgR0ZQX0tFUk5FTCk7Cj4gLSAgICAgICBpZiAoIXB0cikKPiArICAgICAg
IGlmICghcHRyKSB7Cgo+ICsgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBh
bGxvY2F0ZSBkZXZpY2UgcmVzb3VyY2UgZGF0YVxuIik7CgpXZSBkbyBub3QgYWRkIGVycm9yIG1l
c3NhZ2VzIGZvciBFTk9NRU0uCgo+ICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5P
TUVNKTsKCkV2ZW4gaWYgeW91IHdhbnQgc28gZWFnZXJseSB0byBkbyB0aGF0LCBpdCBzaG91bGQg
YmUKCiAgIHJldHVybiBkZXZfZXJyX3Byb2JlKCk7CgpCdXQsIGl0IHdpbGwgaWdub3JlIHRoZSBF
Tk9NRU0gZXJyb3IgY29kZSBmb3IgcHJpbnRpbmcuCgo+ICsgICAgICAgfQoKU28sIHRoZSBib3R0
b20gbGluZSwgbm8gbmVlZCB0byBhZGQgdGhpcyBtZXNzYWdlIGhlcmUuCgouLi4KCj4gICAgICAg
ICB0emQgPSB0aGVybWFsX29mX3pvbmVfcmVnaXN0ZXIoZGV2LT5vZl9ub2RlLCBzZW5zb3JfaWQs
IGRhdGEsIG9wcyk7Cj4gICAgICAgICBpZiAoSVNfRVJSKHR6ZCkpIHsKPiArICAgICAgICAgICAg
ICAgZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIodHpkKSwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiRmFpbGVkIHRvIHJlZ2lzdGVyIHRoZXJtYWwgem9uZSBzZW5zb3JbJWRdXG4i
LCBzZW5zb3JfaWQpOwo+ICAgICAgICAgICAgICAgICBkZXZyZXNfZnJlZShwdHIpOwo+ICAgICAg
ICAgICAgICAgICByZXR1cm4gdHpkOwoKSSBkb24ndCBzZWUgaG93IHB0ciBpcyByZWxhdGVkIHRv
IHRoZSBtZXNhc2dlLiBDYW4ndCB3ZSB1c2UKCiAgcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQ
VFJfRVJSKC4uLiksIC4uLik7CgppbnN0ZWFkPwoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5
IFNoZXZjaGVua28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
