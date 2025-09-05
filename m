Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 988EDCA1010
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 14:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L73jJB9E9gAMGcmUFbYKlrkxTsy+v0ONzS68rDS9f6Y=; b=RM5/0CGV1HBI9I
	urvFCe1E6Lm9Yx0Ugddrqcg+b1X0dSMVKSE1x1ZydVjqq050Lo4yf9ErmwaiGkbQ+pU7jhrg+FvE9
	Z8N+mUqfpRh1JD5F2hanksHhfc/pJaSTRFSdSB5iybWx0ViC5d70IyFXMvTWRAWztRxEz5GoU32Fc
	yDX0lww4RAGX17OClyz7/bPjsOWJiL2hkiN7RhOzUuza/JDJrFSyHPuUajEJz5bFlJgZp+8Bc8F5h
	FAUDcTZSvYvPpwybdGU26H9ascnOrCtmGEETorYYjt+KEcc6d4k5E/nBdZPtce+wv66MP3TftGzsU
	r+OH/1fZO/qbxxSozwGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXVE-00000002KYd-2zDh;
	Fri, 05 Sep 2025 14:33:24 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuSrb-00000000mTV-3TjI;
	Fri, 05 Sep 2025 09:36:12 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-afebb6d4093so386124166b.1;
        Fri, 05 Sep 2025 02:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757064970; x=1757669770; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nqf6D6Y//+lOVA7z+yQJwo2jJaSIwyijSnsvcGjMTK4=;
        b=LSQXBfKruOe+NfW+a7uJ8uhgx/L19hw166cj71jefUZ0d887pgdHLSHWWxjYQrDgFp
         5EVJt4/6RcTZ8X7DIw6cZ0hwm2h2+X6xUdM5+fB1iMVjxG0m69YkJUilpxAt875WKiK9
         Yebz6xjCcHOiux94g/vvHYmXVoWje40Zyj3oCP2mydIluyZWACoqkZZRSBN+Xlwm0cAU
         K1fwH7GBQMe68cdf0BaHjaVYdZT+U6UIHtFvvuSnZXqgD8JHlZTPCgJlURTNAft4OSwE
         L2Jh9zr731anRCG4Sb6QQmNuJb6o/2Ly2lR9iytUOizrhTKLCBZNy777bnvzg0SoZ8Zt
         oBUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757064970; x=1757669770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nqf6D6Y//+lOVA7z+yQJwo2jJaSIwyijSnsvcGjMTK4=;
        b=AHJceyFfVQ5Qq1+dnRj8w7QlOOZH+IofO+Qffe01gGis7qYO/UuIda2JbxpCJ51tzY
         hCbPw4WmI9wpTpmfGn3ZAgTJwDYc2zw/NTgTt3L3StFZVmkAEoEOgIS4txiRU3sJS592
         6vn7QYdkwVbJ5U6e89smDd4fwKwT/D2P/6XAFF9n+Nr3lYkekjnCIjlHR4IYg2cPj9N7
         cMxbIs0FgySOY5i0fbZu1Hk0yiBa/pD84eFPjH3r9kmfOCRyCQzqlZPntZXtLnTuHIQ1
         jq9nCERODJKQ53D9hsqKY44FU7alaMdLreetrAg20KXE8cgw7j8JXhaeEdL6b5FuguG8
         PJKA==
X-Forwarded-Encrypted: i=1; AJvYcCV9/L2ER6uokIHGavHvyq+zLu7r/tQ/fatsM2Q6CYqbwW3zzmrsgzBTx4SToT0YJTWk1Ncosb6tfxSqhwKQ3andkQ==@lists.infradead.org, AJvYcCVFidGUxiJshWPpyHp8qn3cLLO00OAVXxPg1sRrK7KjxmRG7efbd7XXrASbgiREAplYg1dzopIgliux575n@lists.infradead.org, AJvYcCVtMb/t8nNX4dtiIo7IW20Xh1VqnrX845+wEb1IBssGdmrtjggbLxfu7qg89CJ77Kw6jkr5sFNzQtlo1mqObT2lXg==@lists.infradead.org, AJvYcCW4CJCF3nvAvTBlFBm7WM7bDJDkAYQj2cbr6cvEcfaOV+CMAUnhJ1/bIL4GApurrV0Zr0n7AjFkCzPrCWmyHvs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxePRAdjjeoO94Lod+CnkHaUj5Dvr1szKOiqlBXtHySCozV6C6K
	Li593oN5qmqPMyOB2rkczLP6nNIAZhF5Uw1HG3W7VBGwc46XCzL2GrmTnE4PFSo9V1ZEosYIUW0
	Qm3CQSnAqd8qU/LGtX5IAVfrV8+n0t74=
X-Gm-Gg: ASbGncsK2x0fI8sBLkg8oSxjJrp59+NVoDGLdEt02CQ/AwVyEN6cHp880P2aXIpZ3zY
	/L82urA6cx0f4eKV59aoR5dxRncGejiWew/CNEazo7oMvjL2Z1K99F5C950GxambSX5SEmBP5ip
	MymvsG3/k0gXJDxpA6IHN5/McOVlECOh0InE3/L1gXRoe9CSyNRLUDfUAsNGs8IjHsO/w27SLQk
	5hmP+lWoC0z4vEZJpYg
X-Google-Smtp-Source: AGHT+IH7OMu1dd1ZlYosPz3SPqptVrWuN6c3SeVJCBYbCfoyYDh6z1nFqhk/368zJOb4WYqLr166BLEihh9LvFYDNYs=
X-Received: by 2002:a17:906:48c9:b0:b04:10d9:48d4 with SMTP id
 a640c23a62f3a-b0410d9523dmr1630508566b.35.1757064970102; Fri, 05 Sep 2025
 02:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <20250905072423.368123-1-zhao.xichao@vivo.com> <20250905072423.368123-2-zhao.xichao@vivo.com>
 <CAHp75VforxjsHWzxrxfD_YOshvg0Y=KwrpmAPWwhyarNm2wNjQ@mail.gmail.com>
In-Reply-To: <CAHp75VforxjsHWzxrxfD_YOshvg0Y=KwrpmAPWwhyarNm2wNjQ@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Sep 2025 12:35:33 +0300
X-Gm-Features: Ac12FXxkIEGZA5-qHqK-CmbOa_oJh7A8t90OuTImqynr4N5GOyYLVDsnRsxsyg0
Message-ID: <CAHp75VdRn1qnoiCr7aeZfHF9GEyQshOA5awTjiJ9oJiY6Q+Gsw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20250905_023611_866596_DBD7DF16 
X-CRM114-Status: GOOD (  19.16  )
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

T24gRnJpLCBTZXAgNSwgMjAyNSBhdCAxMjozM+KAr1BNIEFuZHkgU2hldmNoZW5rbwo8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gRnJpLCBTZXAgNSwgMjAyNSBhdCAxMDoy
NeKAr0FNIFhpY2hhbyBaaGFvIDx6aGFvLnhpY2hhb0B2aXZvLmNvbT4gd3JvdGU6CgouLi4KCj4g
PiAgICAgICAgIHB0ciA9IGRldnJlc19hbGxvYyhkZXZtX3RoZXJtYWxfb2Zfem9uZV9yZWxlYXNl
LCBzaXplb2YoKnB0ciksCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICBHRlBfS0VSTkVM
KTsKPiA+IC0gICAgICAgaWYgKCFwdHIpCj4gPiArICAgICAgIGlmICghcHRyKSB7Cj4KPiA+ICsg
ICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBhbGxvY2F0ZSBkZXZpY2UgcmVz
b3VyY2UgZGF0YVxuIik7Cj4KPiBXZSBkbyBub3QgYWRkIGVycm9yIG1lc3NhZ2VzIGZvciBFTk9N
RU0uCj4KPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKPgo+IEV2
ZW4gaWYgeW91IHdhbnQgc28gZWFnZXJseSB0byBkbyB0aGF0LCBpdCBzaG91bGQgYmUKPgo+ICAg
IHJldHVybiBkZXZfZXJyX3Byb2JlKCk7Cj4KPiBCdXQsIGl0IHdpbGwgaWdub3JlIHRoZSBFTk9N
RU0gZXJyb3IgY29kZSBmb3IgcHJpbnRpbmcuCj4KPiA+ICsgICAgICAgfQo+Cj4gU28sIHRoZSBi
b3R0b20gbGluZSwgbm8gbmVlZCB0byBhZGQgdGhpcyBtZXNzYWdlIGhlcmUuCgouLi4KCj4gPiAg
ICAgICAgIHR6ZCA9IHRoZXJtYWxfb2Zfem9uZV9yZWdpc3RlcihkZXYtPm9mX25vZGUsIHNlbnNv
cl9pZCwgZGF0YSwgb3BzKTsKPiA+ICAgICAgICAgaWYgKElTX0VSUih0emQpKSB7Cj4gPiArICAg
ICAgICAgICAgICAgZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIodHpkKSwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICJGYWlsZWQgdG8gcmVnaXN0ZXIgdGhlcm1hbCB6b25lIHNl
bnNvclslZF1cbiIsIHNlbnNvcl9pZCk7Cj4gPiAgICAgICAgICAgICAgICAgZGV2cmVzX2ZyZWUo
cHRyKTsKPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gdHpkOwo+Cj4gSSBkb24ndCBzZWUgaG93
IHB0ciBpcyByZWxhdGVkIHRvIHRoZSBtZXNzYWdlLiBDYW4ndCB3ZSB1c2UKPgo+ICAgcmV0dXJu
IGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKC4uLiksIC4uLik7Cj4KPiBpbnN0ZWFkPwoKT24g
dG9wIG9mIHRoYXQgY2FuIHdlIGFjdHVhbGx5IHVzZSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQo
KT8KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
