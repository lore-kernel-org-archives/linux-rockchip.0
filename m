Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80347CCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmsTqVWBoZYK2+dTqO/hh7rA1+bglzH29+MdXi4LrXA=; b=3BQdNEvMorYFH9
	1zNtqqsLctpk5qBWqDets0cSEbeM6JbTi7f/dpVw0jxRVdwaIVdmsiiRszlU/HVxjC8nLFqxOeY5Y
	9j452aqVBlVJhJCjyHbHElLmSwtIHAUtJ0yl/oczMe2eN4GN2IF4hS3kcqsE5+iM0ygRUmWBSA5jb
	MGE95nHWzh2bWz26fwWLtE88TYTwD6KQ8NzerFU0lodaDw4uIy9lFg3PIggJJryxIDDMto/mBESO6
	CecVHuVvSkTFSeuC5EZ2C7DCk48OoKL7dCewZ3xqruN+KApHREozU9qkCITrQLq1uWVQvJaPjktNY
	eUht8MUApAkBf2J0SyMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAocN-0000000DHbW-41VK;
	Mon, 20 Oct 2025 12:04:03 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzv9s-00000005DBe-25Yf
	for linux-rockchip@lists.infradead.org;
	Sat, 20 Sep 2025 10:49:38 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-b07d4d24d09so480494466b.2
        for <linux-rockchip@lists.infradead.org>; Sat, 20 Sep 2025 03:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758365374; x=1758970174; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QJc0EGzS/+BK6QuDuFmI2nY7ewfLLXuJxl0wU299He8=;
        b=hRwpbrK2l1ukW+cj2b6TbA8wQbsM663QZ+gF/AaKQVZk/YaUwbmmaroaHPMwHoxd/E
         YHGh2VWvvFfCiNvIWT54rYItr9yhFjQ2RE2UKe8M1mVhi8F1REzctDWCBwDWntMDvUuh
         xaZVq02UFCFVbnDXy3E8fztJubFQiqT8/KCVgV0u1d/0XNr2f46vKVthRFFoWF4UtSEF
         AEsOBwx/jbIuR42cLJ7gB81JA01Z/pWovicwi6jTZCXbsk7feyB0m+uhaiGM3BO7xrkq
         57XmG5dJ8jBgehZsfe81GEJbrF/2prftdJ96f9DkqKiUdlVdOL6zNrmQk/0dPHX6/njR
         sFlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758365374; x=1758970174;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QJc0EGzS/+BK6QuDuFmI2nY7ewfLLXuJxl0wU299He8=;
        b=AHMJx3CtCSinEB6F8+Za/AGNPDBLFWOEFUEF6nHoAUloSNu/AH05TVKR9PxAsy8rKf
         tq6tzIkoZEgAe/Q32X7EYAndF5e/AZm9D1YV+OBrb2whkn6RS/GPz5Jq2JXCpufOS+YD
         B/eQ0zLou7ptVzpZzflK2ZlObXAxozFojbwn+tmU5+1grGBxgylIucDCgvFrsUmphmkC
         19DJj7RfTJ5DIAieu5Jx/Vq3Zg80fFPu6a8kASPU6vgFLkAf/rmTZ9Ls7kiyHKuFyQRf
         64TsStL02EGmO0Pg0jkUQVGdxnP17P0pwyNTwjl94Yd61pyROI2D4qJGEhe87IJOYiE5
         J2vw==
X-Forwarded-Encrypted: i=1; AJvYcCWcZZfjqOS9WftzeFp5L89lzWjD0SZxFPD+IjQsaHB5ufW1V6XuhpAGARDgvVKFPlhSAr0Qx6Wr/KozIhwTRQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxfk22scbmwvFzAK3coGTY1jM+sWEbgVAgVT6Cz/3qyu6Y1GPLy
	pzJWxPl6VNlzJPmk8qJEMiLfgXdvNu9u3/2kGYhd7RXyfwdgaQU4fYOuFDKru0tz98wH3FgttRZ
	GR2FqBui+23J4+FM44g0Vtxl6y7eglW4=
X-Gm-Gg: ASbGncsp7wedAyMYbjbmK78sIfmUDETj4ySkFLbwLWlZ2t63NHCBgpoaiEGN2MFi07v
	REFUi96NkUxY35tzif1S+swq3jcWYczOSkFizwbdkfDQHWLmvrajCOntd5bs6oRq5XrWUq+cIx1
	9Jtp4AVo7Mw09eN1Ab4dUwqxVPyTjfiz61dD/0WiV0mgK+xMAox4DJtfrtrHS2FoMYuwFuC2d88
	EkERDQ=
X-Google-Smtp-Source: AGHT+IHHbhBTYGUaEQMbVjyA0lAj2luPxy2XsbzoJZ2rvsPEEjKDVfN8Ekg2zTb0h70UHa/ky/mxQ7DHX1RPk/WuHD8=
X-Received: by 2002:a17:907:2d86:b0:afe:f418:2294 with SMTP id
 a640c23a62f3a-b24f4cd1612mr662812666b.49.1758365373591; Sat, 20 Sep 2025
 03:49:33 -0700 (PDT)
MIME-Version: 1.0
References: <20250919-vdev-state-v2-0-b2c42426965c@ideasonboard.com>
In-Reply-To: <20250919-vdev-state-v2-0-b2c42426965c@ideasonboard.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 20 Sep 2025 13:48:57 +0300
X-Gm-Features: AS18NWAsgghzm2kBTHVAUWgTvM4Rjv6fz5BEJyNeWi6WNSHflPsd2h04LFjYcyQ
Message-ID: <CAHp75Vfx9kyP-rVtfvyyMK4VH+oiRVjP1fZOtbVH14iLh98Jxw@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] media: Introduce video device state management
To: Jai Luthra <jai.luthra@ideasonboard.com>
Cc: Hans Verkuil <hverkuil@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, linux-media@vger.kernel.org, Ricardo Ribalda <ribalda@chromium.org>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Al Viro <viro@zeniv.linux.org.uk>, Ma Ke <make24@iscas.ac.cn>, linux-kernel@vger.kernel.org, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Hans de Goede <hansg@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Nick Dyer <nick@shmanahar.org>, Tomasz Figa <tfiga@chromium.org>, Marek Szyprowski <m.szyprowski@samsung.com>, Matt Ranostay <matt@ranostay.sg>, Andy Walls <awalls@md.metrocast.net>, Yong Zhi <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Dan Scally <djrscally@gmail.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, Martin Tuma <martin.tuma@digiteqautomotive.com>, Bluecherry Maintainers <maintainers@bluecherrydvr.com>, Andrey Utkin <andrey_utkin@fastmail.com>, Ismael Luceno <ismael@iodev.co.uk>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Corentin Labbe <clabbe@baylibre.com>, Michael Tretter <m.tretter@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Keke Li <keke.li@amlogic.com>, Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Ming Qian <ming.qian@nxp.com>, Zhou Peng <eagle.zhou@nxp.com>, Eddie James <eajames@linux.ibm.com>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, Eugen Hristev <eugen.hristev@linaro.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Florian Fainelli <florian.fainelli@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Philipp Zabel <p.zabel@pengutronix.de>, Nas Chung <nas.chung@chipsnmedia.com>, Jackson Lee <jackson.lee@chipsnmedia.com>, Devarsh Thakkar <devarsht@ti.com>, Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Minghsiu Tsai <minghsiu.tsai@mediatek.com>, Houlong Wei <houlong.wei@mediatek.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>, Tiffany Lin <tiffany.lin@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>, Joseph Liu <kwliu@nuvoton.com>, Marvin Lin <kflin@nuvoton.com>, Dmitry Osipenko <digetx@gmail.com>, Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, Xavier Roumegue <xavier.roumegue@oss.nxp.com>, Mirela Rabulea <mirela.rabulea@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Rui Miguel Silva <rmfrfs@gmail.com>, Martin Kepplinger <martink@posteo.de>, Purism Kernel Team <kernel@puri.sm>, Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Vikash Garodia <vikash.garodia@oss.qualcomm.com>, Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, Abhinav Kumar <abhinav.kumar@linux.dev>, =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, Jacob Chen <jacob-chen@iotwrt.com>, Heiko Stuebner <heiko@sntech.de>, Dafna Hirschfeld <dafna@fastmail.com>, Detlev Casanova <detlev.casanova@collabora.com>, Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Fabien Dessenne <fabien.dessenne@foss.st.com>, Hugues Fruchet <hugues.fruchet@foss.st.com>, Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Alain Volmat <alain.volmat@foss.st.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Yong Deng <yong.deng@magewell.com>, Paul Kocialkowski <paulk@sys-base.io>, Shreeya Patel <shreeya.patel@collabora.com>, "Lad, Prabhakar" <prabhakar.csengg@gmail.com>, Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, Jai Luthra <jai.luthra@linux.dev>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Michal Simek <michal.simek@amd.com>, Alexey Klimov <alexey.klimov@linaro.org>, Eduardo Valentin <edubezval@gmail.com>, Shuah Khan <skhan@linuxfoundation.org>, Daniel Almeida <daniel.almeida@collabora.com>, Michael Krufky <mkrufky@linuxtv.org>, Mike Isely <isely@pobox.com>, Andy Shevchenko <andy@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Steve Longerbeam <slongerbeam@gmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Parthiban Veerasooran <parthiban.veerasooran@microchip.com>, Christian Gromm <christian.gromm@microchip.com>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, Ingo Molnar <mingo@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Plamen Atanasov <tigerment@mail.bg>, Sean Young <sean@mess.org>, Ariel Otilibili <ariel.otilibili-anieli@eurecom.fr>, "Dr. David Alan Gilbert" <linux@treblig.org>, Jiasheng Jiang <jiashengjiangcool@gmail.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, Biju Das <biju.das.jz@bp.renesas.com>, Daniel Scally <dan.scally+renesas@ideasonboard.com>, Matthew Majewski <mattwmajewski@gmail.com>, Yunseong Kim <ysk@kzalloc.com>, Chen Ni <nichen@iscas.ac.cn>, Fabio Luongo <f.langufo.l@gmail.com>, Mark Brown <broonie@kernel.org>, Yang Yingliang <yangyingliang@huawei.com>, Ludwig Disterhof <ludwig@disterhof.eu>, "Everest K.C." <everestkc@everestkc.com.np>, Stefan Wahren <wahrenst@gmx.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Michael Grzeschik <m.grzeschik@pengutronix.de>, Akash Kumar <quic_akakum@quicinc.com>, linux-input@vger.kernel.org, mjpeg-users@lists.sourceforge.net, linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org, linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org, imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, kernel@collabora.com, linux-staging@lists.linux.dev, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_034936_588106_0A618F99 
X-CRM114-Status: GOOD (  20.78  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:25 -0700
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

T24gRnJpLCBTZXAgMTksIDIwMjUgYXQgMTI6NTfigK9QTSBKYWkgTHV0aHJhIDxqYWkubHV0aHJh
QGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBUaGlzIHBhdGNoIHNlcmllcyBp
bnRyb2R1Y2VzIHN0YXRlIG1hbmFnZW1lbnQgZm9yIHZpZGVvIGRldmljZXMuCj4KPiBDdXJyZW50
bHksIFY0TDIgc3ViZGV2aWNlcyBoYXZlIGEgd2VsbC1lc3RhYmxpc2hlZCBzdGF0ZSBtYW5hZ2Vt
ZW50Cj4gc3lzdGVtIFsxXSB0aGF0IGFsbG93cyB0aGUgZnJhbWV3b3JrIHRvIHN0b3JlIHRoZSBz
dWJkZXZpY2Ugc3RhdGUKPiBhdCBhIGNlbnRyYWwgbG9jYXRpb24uCj4KPiBWaWRlbyBkZXZpY2Vz
IGhvd2V2ZXIgbGFjayB0aGlzLCBsZWFkaW5nIHRvIGluY29uc2lzdGVudCBzdGF0ZSBoYW5kbGlu
Zwo+IGFjcm9zcyBkcml2ZXJzIGFuZCBtYWtpbmcgaXQgZGlmZmljdWx0IHRvIGltcGxlbWVudCBm
ZWF0dXJlcyBsaWtlCj4gaGFyZHdhcmUgbXVsdGlwbGV4aW5nIGluIGNvbXBsZXggbWVkaWEgcGlw
ZWxpbmVzIFsyXS4KPgo+IFRoZSBzZXJpZXMgaXMgY29tcG9zZWQgb2YgdGhyZWUgcGFydHM6Cj4K
PiAtIENvcmUgSW5mcmFzdHJ1Y3R1cmUgKFBBVENIIDEtNCkKPiAgICAgICAgIEludHJvZHVjZXMg
dGhlIGJhc2ljIHN0YXRlIHN0cnVjdHVyZSwgdHJ5IHN0YXRlIHN1cHBvcnQsCj4gICAgICAgICBp
bml0aWFsaXphdGlvbiBjYWxsYmFja3MsIGFuZCBkcml2ZXIgaGVscGVycwo+IC0gRnJhbWV3b3Jr
IEludGVncmF0aW9uIChQQVRDSCA1LTcpCj4gICAgICAgICBJbnRlZ3JhdGVzIHN0YXRlIHBhc3Np
bmcgdGhyb3VnaCB0aGUgaW9jdGwgd3JhcHBlcnMgYW5kIGRyaXZlcgo+ICAgICAgICAgaW1wbGVt
ZW50YXRpb25zCj4gLSBEcml2ZXIgRXhhbXBsZXMgKFBBVENIIDgtMTApCj4gICAgICAgICBVc2Ug
dGhlIHN0YXRlIHRvIHN0b3JlIGZvcm1hdHMgaW4gVEkgSjcyMUUgQ1NJMlJYIGFuZCBSb2NrY2hp
cAo+ICAgICAgICAgUktJU1AxIGRyaXZlcnMKPgo+IFRoaXMgc2hvdWxkIGFsc28gcHJvdmlkZSBh
IGZvdW5kYXRpb24gZm9yIGRyaXZlcnMgdG8gZXh0ZW5kIG9yIHN1YmNsYXNzCj4gdGhlIHN0YXRl
IHN0cnVjdHVyZSB3aXRoIGRldmljZS1zcGVjaWZpYyB2YXJpYWJsZXMgaW4gZnV0dXJlLgo+Cj4g
SSBoYXZlIHRlc3RlZCBjYXB0dXJlIGFuZCBmb3JtYXQgbmVnb3RpYXRpb24gd2l0aCB0aGUgY29u
dmVydGVkIGRyaXZlcnMKPiBvbiBTSyBBTTYyQSAoajcyMWUtY3NpMnJ4KSBhbmQgRGViaXggTW9k
ZWwgQSAocmtpc3AxKS4KPgo+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVk
aWEvMjAyMTA2MTAxNDU2MDYuMzQ2ODIzNS0xLXRvbWkudmFsa2VpbmVuQGlkZWFzb25ib2FyZC5j
b20vCj4gWzJdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tZWRpYS8yMDI1MDcyNC1t
dWx0aWNvbnRleHQtbWFpbmxpbmUtMjAyNS12Mi0wLWM5YjMxNjc3MzQ4NkBpZGVhc29uYm9hcmQu
Y29tLwoKV2hlbiB5b3UgYWRkIGEgQ2MgbGlzdC4sIGRvIGl0IGFmdGVyIHRoZSAnLS0tJyAodGhy
ZWUgbWludXMgc2lnbnMpCmxpbmUsIG90aGVyd2lzZSB0aGF0IGh1Z2UgdW5uZWVkZWQgbm9pc2Ug
d2lsbCBiZWNvbWUgcGFydCBvZiB0aGUKY29tbWl0IG1lc3NhZ2UuCgoKLS0gCldpdGggQmVzdCBS
ZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
