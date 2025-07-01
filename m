Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE64FC87FD1
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q73tfaKtu7dm+ljUX+nPsAccSNn+UhoZjo+4iZ5RACM=; b=hcADxp+V3MT6XE
	O7uSDrjjjlMm7gf4ePkGeCpEgBNiORoh3lvBE9aqAwIq/dvrSh71S4btkYJQoCWDSvvGe/Ir0yZQ3
	2B2YWvKwh2NxHzgM55soodrtIOb4xAWEUygQEkke/lR5GPYulm6Fgfeasq0JPYdy8txnPQG5s8x5h
	ihbR+aKv68zrB3xzbGXFzFNeFGLXG0/l3b0YiuwPE6+17LSKIMNMu+LJjs6+/tCdVug5AJpTmxZhA
	ffMlVfAnU0DM+a1zn5xRohW0glCwwkObtigd9pPd2e1d1mhY25h4WekL/SbkDAL+qTLPgmx+8jlZO
	KHYNsxj4kC7FfN+xigrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbcD-0000000Evo6-2KfZ;
	Wed, 06 Aug 2025 10:43:25 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWfEj-00000006Hb6-2RDW;
	Tue, 01 Jul 2025 17:57:42 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-adfb562266cso971625366b.0;
        Tue, 01 Jul 2025 10:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751392659; x=1751997459; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pXjfR544OdpbJ9besQg+JvGQxJKjojQewq85hiTyzvw=;
        b=Sgxx4ynusHtXr2gqt5JkpK/jVHJHsNDpgyowH75ey3xbyafu07Wok+tiAvj4hfSLsf
         BYojsJCsrnDFxBCVJFktGJqgNvFK3Zmnh48pYLpW7oTxHejko/VreV5QrTjSFY0gVmcH
         9h5Tu6imCJrW/IRvFJuKk9LeTj8YqAjEvRuYuwNplT6EGUnSMtsc5gpzQGT4vYI3PP5A
         dH4wNfTo7PuVTlBpdpdDIVcx8Si3qHCGKB5GjyhIYy1XlVOqnJlC3hoJw22n4ry1cYNu
         6KnZgpDlxrtWC72yAQ+CfurgCtIjIeCELiM2uQfj/8+WHz+Ac04+dnlQRBPZqHzAVqwC
         A/rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751392659; x=1751997459;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pXjfR544OdpbJ9besQg+JvGQxJKjojQewq85hiTyzvw=;
        b=KkVhZor4JmL6hLm2YVAEdy6DwlE84QXlnUTxs0b3A+/7m43vAN/w+Nmhq3rCjJZQUM
         gz1wQsFdzXUAiBAjZWRYys6b5HHM9aaNq+qPYvISAh09t6v9nawUJ1kDeGmzQdu4ey2+
         Obh/uFUNf3gmMSUtgvSeuGKWwo4mzkJGNBYz0hvAvL3FiRIOIpsx5mSZbsxxK4cjusce
         mJHyVWmJZF4vYwpOiXXJH62JV4u8CXHDnSuG77qXZbf8ED+Sj+I27Tqx3SdM/sgGovlk
         lEIklVI66Vo9J0eTeDAxkz7yiQlxKE1eWl84VOiRHFzL9kAoh0Nz9aV1uGjRJClQWjxi
         9YmA==
X-Forwarded-Encrypted: i=1; AJvYcCUMDIXIBdcekB17ifXdjnGj3BANbaDdCTVZcjlPbeHq5LCVPgRL8zO6DoOtnUsWfqzLvi7UCyqxokXA@lists.infradead.org, AJvYcCWdohrLbtFuaIwkv9kXXHs3byQ0e0EnqXX3MgfEbq2MF2AIzeeiY4Tf0e9lmXQ4KMnejWEAh4AiLflrpBidGuv1ng==@lists.infradead.org, AJvYcCWoIW2FjiNjdWBchD+1pAikOYNEN3VCdgHKJM+GjnNWrnsSQ5EktXoC4kCvBqpSckiZ56Ap0eBQa6Bz6knK0Ok=@lists.infradead.org, AJvYcCWpgzTPs7f/grxgVxEzkalUowO8RZzoY95AKLMNQKrSaaianxydeInztVKb5sSDuzxA6ep0r+sT6TKyEljrxTE=@lists.infradead.org, AJvYcCWzdYrq6xucNSP/8PVn6L6wOUQmP+OZOmkYD3gefTkLksc7ZMEnZYONLW6Pyzk6cVYBP4N069owxVNAnpRq@lists.infradead.org
X-Gm-Message-State: AOJu0YykT2oSnwUDlH05LyUqiplNuUToGp7slkX/+dUzif2f88k8hdny
	I6GtWP/PNi96el0Ku0urVA/EJ03X/+9Wz2siqUY7N9yw3kXhVVia57UTFhMT/59cwb3WY0wg0/Y
	GFXyJZnBS2DcyZfzKXwZxgCHImuacKa4=
X-Gm-Gg: ASbGncvyRnASguFtYnVprwRDAE6sjM58juAcBtDUiDQF9LGmNcZnR0i+Xt8ugk1fhpW
	kMNCvHvqoisqiV5neI2FVawgHMqKK/iBUfASJSYJjvSX48x6ny499xs0E88eZIzpCyN9S9O6Bow
	IMpP0iZw7VIJQYJkmvwP/yzxH61HxwMcnvmWVJp2CdVFU=
X-Google-Smtp-Source: AGHT+IFi2mQZLuvuKUJ5Vmbx2bMFhgEtTB1rODdhMnUJkkTAqMfdBOcO66FNReafO5ChqP0c8B6r5Lro21q2uCkd3k4=
X-Received: by 2002:a17:907:1c18:b0:ae0:4410:47e3 with SMTP id
 a640c23a62f3a-ae3501a58a6mr1915225466b.51.1751392659068; Tue, 01 Jul 2025
 10:57:39 -0700 (PDT)
MIME-Version: 1.0
References: <pnd7c0s6ji2.fsf@axis.com> <ylr7cuxldwb24ccenen4khtyddzq3owgzzfblbohkdxb7p7eeo@qpuddn6wrz3x>
In-Reply-To: <ylr7cuxldwb24ccenen4khtyddzq3owgzzfblbohkdxb7p7eeo@qpuddn6wrz3x>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 1 Jul 2025 20:57:02 +0300
X-Gm-Features: Ac12FXyruF9twzstORuqQqTbcXFq7Oy0k32bhmiSfPFWKw8o7JRMkyPmwEAJIYk
Message-ID: <CAHp75Ve=Zas8=6YKoPeTRrvjCaTyyRAyJG1gBLripqZgQpfg7g@mail.gmail.com>
Subject: Re: [PATCH] Remove error prints for devm_add_action_or_reset()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>
Cc: Waqar Hameed <waqar.hameed@axis.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Julien Panis <jpanis@baylibre.com>, William Breathitt Gray <wbg@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Peter Rosin <peda@axentia.se>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Cosmin Tanislav <cosmin.tanislav@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matteo Martelli <matteomartelli3@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Francesco Dolcini <francesco@dolcini.it>, 
	=?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>, 
	Hugo Villeneuve <hvilleneuve@dimonoff.com>, Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>, 
	Mudit Sharma <muditsharma.info@gmail.com>, Gerald Loacker <gerald.loacker@wolfvision.net>, 
	Song Qiang <songqiang1304521@gmail.com>, Crt Mori <cmo@melexis.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Karol Gugala <kgugala@antmicro.com>, Mateusz Holenko <mholenko@antmicro.com>, 
	Gabriel Somlo <gsomlo@gmail.com>, Joel Stanley <joel@jms.id.au>, 
	Claudiu Manoil <claudiu.manoil@nxp.com>, Vladimir Oltean <vladimir.oltean@nxp.com>, 
	Wei Fang <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sebastian Reichel <sre@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Han Xu <han.xu@nxp.com>, 
	Haibo Chen <haibo.chen@nxp.com>, Yogesh Gaur <yogeshgaur.83@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, 
	Souradeep Chowdhury <quic_schowdhu@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, 
	Bard Liao <yung-chuan.liao@linux.intel.com>, 
	Ranjani Sridharan <ranjani.sridharan@linux.intel.com>, Daniel Baluta <daniel.baluta@nxp.com>, 
	Kai Vehmanen <kai.vehmanen@linux.intel.com>, 
	Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, kernel@axis.com, linux-iio@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org, 
	linux-mmc@vger.kernel.org, imx@lists.linux.dev, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-pwm@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-spi@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-usb@vger.kernel.org, sound-open-firmware@alsa-project.org, 
	linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_105741_628790_56F45E41 
X-CRM114-Status: GOOD (  15.82  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:42:49 -0700
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

T24gVHVlLCBKdWwgMSwgMjAyNSBhdCA4OjQ04oCvUE0gVXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVp
bmVrQGtlcm5lbC5vcmc+IHdyb3RlOgo+IE9uIFR1ZSwgSnVsIDAxLCAyMDI1IGF0IDA1OjAzOjMz
UE0gKzAyMDAsIFdhcWFyIEhhbWVlZCB3cm90ZToKCi4uLgoKPiBXaXRoIHRoYXQKPgo+ICAgICAg
ICAgcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgbWVzb25fcHdtX3M0X3B1dF9j
bGssCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWVzb24tPmNoYW5u
ZWxzW2ldLmNsayk7Cj4gICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICByZXR1cm4g
ZGV2X2Vycl9wcm9iZShkZXYsIHJldCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIkZhaWxlZCB0byBhZGQgY2xrX3B1dCBhY3Rpb25cbiIpOwo+Cj4gZnJvbSBkcml2ZXJz
L3B3bS9wd20tbWVzb24uYyBpcyBvcHRpbWl6ZWQgdG8KPgo+ICAgICAgICAgcmV0ID0gZGV2bV9h
ZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgbWVzb25fcHdtX3M0X3B1dF9jbGssCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWVzb24tPmNoYW5uZWxzW2ldLmNsayk7Cj4g
ICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+Cj4gLgo+Cj4g
SSB3b3VsZCBwcmVmZXIgdGhpcyBhcHByb2FjaCwgYmVjYXVzZSBhKSB0aGVyZSBpcyBubyBuZWVk
IHRvIGRyb3AgYWxsCj4gZGV2X2Vycl9wcm9iZSgpcyBhZnRlciBkZXZtX2FkZF9hY3Rpb25fb3Jf
cmVzZXQoKSBhbmQgYikgdGhlCj4gZGV2X2Vycl9wcm9iZSgpcyBjb3VsZCBzdGF5IGZvciBjb25z
aXN0ZW5jeSBpbiB0aGUgZXJyb3IgcGF0aHMgb2YgYQo+IGRyaXZlci4KCldoeSBkbyB3ZSBuZWVk
IGEgZGV2X2Vycl9wcm9iZSgpIGFmdGVyIGRldm1fYWRkX2FjdGlvbiooKT8gSSB3b3VsZApleHBl
Y3QgdGhhdCB0aGUgb3JpZ2luYWwgY2FsbCAoaWYgbmVlZGVkKSBjYW4gc3BpdCBvdXQgYSBtZXNz
YWdlLgoKCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
