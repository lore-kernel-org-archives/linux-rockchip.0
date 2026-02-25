Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B299AC44519
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqLbGJsxY6IMaH+iN29kCsSJ5DYfYiYyfEXZG2Oiy3A=; b=Z3CToSF0mvmhIe
	58nx/ECiLbv5zfi7ufpraa+KPzOavEvBk8R5g0I/j8418cjCo8kjnVN2TB9S2Ahd5igd1UHM1DwLm
	b3CZJzdB4LGvcguINP9WapCg1MCDX43OJxXijGX6IEOG1YS9UWtemvjPI+CP5BXNJPbPlNHi7DnLG
	c3SWtivbmE5bWg44edMtdlSyyV/RApp3l71S4VL3wDzvo5hzKH81PEWJRXK9x62iJ/dG9+GdLnbZH
	aBRTAZvcdkUMBVOWWpqEuNUzAHAwV9GMrimVd2zfJ7RpU2klucOfIgpBzUM7jKbSesTAX0ogJ73ru
	QDVn5o2M7d+PiBssKF5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQo-00000001Url-3j03;
	Thu, 09 Jul 2026 08:48:30 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvMPS-00000004vJq-32MI
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Feb 2026 21:27:09 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7d4ba9abbecso60144a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Feb 2026 13:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772054825; x=1772659625; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6qd3od5gT9Y56WsM6DlqnASWYdZTTGBmXPSgA7J3iS4=;
        b=pe1s+URMgQRuN7jzSiHB8jGvhr35M3eBn1nr23Hv2oBBncBb6MSs1vCugKG0u/OgYH
         x6cldFOTGYXArxFHy/f3ay6wAG6Q5j9vmpAlZZGgQTpR9w5MRbybnBJvtkYKrgMP9WCP
         G+pUlND+5IQb88YqdEi/i/AqLn94Lc6nUCcNIcS2BHLEZoYiPuCuGmjkqFI8nj1oSmay
         u2KHt/FNynn15A8U3BIjYn8Fu+jSJSMR9QhNau1ACdZKQMcDXI8/dswJCfSOrIrGSi0g
         BiJdUv2140m+pJ1VAwZ9f8wBL3PmDB+d5d6GBOBMVrojkGb7vSO1kGEQe6GUn1SvjJkC
         QV5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772054825; x=1772659625;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6qd3od5gT9Y56WsM6DlqnASWYdZTTGBmXPSgA7J3iS4=;
        b=iQ7nLcy8svtJY2YwUN6j7KSRSm5502KftgBvKq5+P1NCN386KDsPs5UTxJL1JsyHR8
         MrJNzfnRQ1/PiTx6lMXP9209QV71vPROSBKUVyuWXGZTutfo/kN5g34bijQ8BtuRAgDq
         BoqoXRQ6MWnfJUG4p8d2Epz+wARIhqKcp5bcmbZhFhFn04vq1z302yXxxfsGgUzssl5Q
         olY0VPTX7sK0WOqSVgp2wc4MXdOhFicGyWLoKNwLAAf/NNvauDf+4YX9bgGKdsfVxo0j
         Ji+8FndKwGhN7oGzKcDjd6KKM8Zt7TxmToYI11fiHezno6FQP8nWtwECcoVb12pGvxe6
         RjpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZgvVsd0318HbdblSoOYLttiCGZhgRu1f/Wjv3Ceol7yW+A6BOe0CmjvbtrnWbbcQ2y9NHtlhTdjMrEbXMbQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyIIs4GTy9zCgB4dOoHyK5hjBk/NXLUrPV/M0n1h0IjgVUdmLtD
	9iGWQI5pn0ziLldFlLhjsiJU3oi1hu3+KjlJv2/upD+j0YxyCVfjtswhST/n4riRkrc=
X-Gm-Gg: ATEYQzylGQOL5r8qn8br6pe/HUeJGtWnOHUb0yRftyUjrgwuQoO/ukfqZhaHLnP36K6
	AJ3xTwsJx4Ma8rafAyrtreGoUtl00Sk+brsCia2PrPNJ/6cplnlaHiDo+SU/1nEAFTtoTaZZk8s
	aCvZHcP8qtoHFPDDXwopuSDz1AV1MGh2JPQmXAO8t2++8PGxsBhXZ+WA2e15glK341GupQE8CAg
	i/Zv6t1OsDJHwxWmuDwORgKCptwBFq0MBj2rigAybjrh8MlKiBw3ut7YSbSRTBeFX6ZBsOTzwPt
	uHTOKI77ZtzVCqMyqDRY+Y2f3MymcSpd9RMVuiTYmGec+xFPdAJqMYl6e5YjAZvgmjaPTnfrS+Y
	wPpgPwdfP6au8IlOFn2y7SvMh+tpJ0jFr7FGEww8+76DLqQ9xyN4SikHuSjGrXPnJlmeNuCXICu
	5DbrWu7DpmTLyKCT+qgvMPYQ6Wlzf6denNxIA3IJhAU0C4pgcph9JkpouvnNCKAlOy3uurRjs=
X-Received: by 2002:a05:6870:2188:b0:3e8:8e56:671a with SMTP id 586e51a60fabf-4157b210230mr8655778fac.54.1772054824819;
        Wed, 25 Feb 2026 13:27:04 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:146:def2:caeb:cb1f? ([2600:8803:e7e4:500:146:def2:caeb:cb1f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160cf2572bsm64198fac.2.2026.02.25.13.27.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 13:27:04 -0800 (PST)
Message-ID: <120c7f33-4ca1-4d35-ac1b-b65362f1adfc@baylibre.com>
Date: Wed, 25 Feb 2026 15:27:01 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/7] iio: Rename 'sign' field to `format` in struct
 iio_scan_type
To: Francesco Lavra <flavra@baylibre.com>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Lucas Stankus <lucas.p.stankus@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Puranjay Mohan <puranjay@kernel.org>,
 Cosmin Tanislav <cosmin.tanislav@analog.com>,
 Ramona Gradinariu <ramona.gradinariu@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Petre Rodan <petre.rodan@subdimension.ro>,
 Dan Robertson <dan@dlrobertson.com>, Benson Leung <bleung@chromium.org>,
 Guenter Roeck <groeck@chromium.org>, Jiri Kosina <jikos@kernel.org>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Esteban Blanc <eblanc@baylibre.com>, Jorge Marques
 <jorge.marques@analog.com>, Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 Trevor Gamblin <tgamblin@baylibre.com>, Renato Lui Geh
 <renatogeh@gmail.com>, Eugen Hristev <eugen.hristev@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, Andreas Klinger
 <ak@it-klinger.de>, Paul Cercueil <paul@crapouillou.net>,
 Ramona Bolboaca <ramona.bolboaca@analog.com>,
 Marcus Folkesson <marcus.folkesson@gmail.com>,
 Kent Gustavsson <kent@minoris.se>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Matteo Martelli <matteomartelli3@gmail.com>,
 Marius Cristea <marius.cristea@microchip.com>,
 Heiko Stuebner <heiko@sntech.de>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Kurt Borja <kuurtb@gmail.com>,
 Francesco Dolcini <francesco@dolcini.it>,
 =?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?=
 <jpaulo.silvagoncalves@gmail.com>, =?UTF-8?Q?Leonard_G=C3=B6hrs?=
 <l.goehrs@pengutronix.de>, Oleksij Rempel <o.rempel@pengutronix.de>,
 Haibo Chen <haibo.chen@nxp.com>, Salih Erim <salih.erim@amd.com>,
 Conall O'Griofa <conall.ogriofa@amd.com>, Michal Simek
 <michal.simek@amd.com>, Gustavo Silva <gustavograzs@gmail.com>,
 Tomasz Duszynski <tduszyns@gmail.com>, Roan van Dijk <roan@protonic.nl>,
 Jyoti Bhayana <jbhayana@google.com>, Mariel Tinaco
 <Mariel.Tinaco@analog.com>, Nishant Malpani <nish.malpani25@gmail.com>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Linus Walleij <linusw@kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Alex Lanzano
 <lanzano.alex@gmail.com>, Jagath Jog J <jagathjog1996@gmail.com>,
 Jean-Baptiste Maneyrol <jean-baptiste.maneyrol@tdk.com>,
 Remi Buisson <remi.buisson@tdk.com>, Christian Eggers <ceggers@arri.de>,
 Mudit Sharma <muditsharma.info@gmail.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>, =?UTF-8?Q?Ond=C5=99ej_Jir?=
 =?UTF-8?Q?man?= <megi@xff.cz>, Song Qiang <songqiang1304521@gmail.com>,
 Dixit Parmar <dixitparmar19@gmail.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 chrome-platform@lists.linux.dev, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, imx@lists.linux.dev,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
References: <20260225100421.2366864-1-flavra@baylibre.com>
 <20260225101735.2368252-1-flavra@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260225101735.2368252-1-flavra@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_132706_963164_3B4E5ED9 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

On 2/25/26 4:17 AM, Francesco Lavra wrote:
> This field is used to differentiate between signed and unsigned integers.
> A following commit will extend its use to in order to add support for non-
> integer scan elements; therefore, change its name from 'sign' to a more
> generic 'format'.
> 

Maybe Jonathan is OK with doing this all at once, but another alternative
could be to introduce a union to allow both names at the same time, then
we could make the change more gradually.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
