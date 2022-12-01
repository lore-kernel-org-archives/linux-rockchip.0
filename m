Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3048CC43217
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 08:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhzjwo44R7OhhUU5kKc5jHhZGqQQPovanuhqH/kSgxo=; b=DRhmdrKeXg9Dpe
	ZSwSZ/qGXxhd539v8kJ4bY3VpwHqZJJ78fUwBCKiMNPSNS8bmRHLeXo6HnXxoSttzMRiMpLiTTxbe
	XwylnPmEHLTpcn4X8y8rHpFM/FTiAKcltqv0zsULlfBhacQkf0/pHkzpiY3KQt6il+POlNlx354QM
	Zfv4EIg5Ccmo7WBkrJyqunOwel6vM9gRyUT4NkqgQ9qYFEWfoAk8RYe7yC4seK6IbMdV5GuIArn4q
	It+Cz/V1Ip+O2pR/62n4HEdittSNFRqOnS/uLbPj3BqegC7aba75wsWWhOpxsHZFXkwqabQiIqQzl
	U85eixi4BVO3xizlPZhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0eY3-005iKq-35; Thu, 01 Dec 2022 08:03:59 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0eXw-005iGG-5J
	for linux-rockchip@lists.infradead.org; Thu, 01 Dec 2022 08:03:55 +0000
Received: by mail-wr1-x42e.google.com with SMTP id bs21so1380337wrb.4
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Dec 2022 00:03:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=RAIQbbxtK2nJ1NbUghrZ93yJMEm2LyReQuktQwQ+yXw=;
        b=Lo8p+aDFlKlZfG6pP0n7RZNEjwZK+wrouNetRK3rZv63MbeCUctT1ieDjkKZxl3LvQ
         1IUxcYuylIWjoy7vKgfrNL5bEmzdei5+43ayKtzqRIyOjWYlsoDieQD7IgspPDeYN4Rg
         g0Tg2r6urLUhUddkFA8F1g+Y6MZ6LYzNVPQKNUdc62bCqGXALe+tEuJdy6U6nHFQ1VTs
         pd9A/smgMPI5kbQN+yqEnGZNPKCbNRwE4VhlqdS4p01McAPr9GKRJDIzQjVNyphai7am
         M+pt/qh8ja70rWDWaq5xcHGdzPkZEr0JVoVeIN0FLdIf+5vnAZEi/TDzF6dIxj4puvKU
         V1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RAIQbbxtK2nJ1NbUghrZ93yJMEm2LyReQuktQwQ+yXw=;
        b=tev9QgmO2EwynWdbMe4ii9WxG7xksOIvSrmkAxRchvd48N2701pZrRYaMzfV+ThTQj
         nEjNmsU+09ym60pWsSbIapDP6B6PcXKqy9iQ2ohdOpMQe2oHRDkmYPtxMMFRivUciVcg
         c1fRNgmmvgR5DQxTH/FXTLLUyoD1QinAyeHKk8uApBrCtNeJs3iiJHaiktwB8g9X9ynb
         9bIG3edQvABS+z97waR04cURcbWzjI8fOhwVcbTHMafTQIQ9bS/8L24ot6uAJfIi5FV5
         vL1ChYTaATaXu70oUAsO/5MY5/VWkg2uqVJeJqOLhGonknhMqMCWx138GLhSd58gYAsk
         mT7Q==
X-Gm-Message-State: ANoB5plr1C+pV8XChe1DWiEZFLZkupfy40t4/wNaeO6t8w5UrqzP/e0c
	sme+HH24c+ZZ//EyQrvk/vxGnQ==
X-Google-Smtp-Source: AA0mqf54lvafHdVKKM2CGBzb3Ly91fbeS37TZTU/o75hgaix+kcG2rGxchFiaWC/vEjl7eP4KzxYJQ==
X-Received: by 2002:a05:6000:1d92:b0:241:6e0a:bfe6 with SMTP id bk18-20020a0560001d9200b002416e0abfe6mr31726074wrb.34.1669881828568;
        Thu, 01 Dec 2022 00:03:48 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bec0:73a:70e1:228f? ([2a01:e0a:982:cbb0:bec0:73a:70e1:228f])
        by smtp.gmail.com with ESMTPSA id az39-20020a05600c602700b003cf78aafdd7sm4517313wmb.39.2022.12.01.00.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 00:03:48 -0800 (PST)
Message-ID: <b19c4956-3f92-f6be-7d61-9b826e5d6fe1@linaro.org>
Date: Thu, 1 Dec 2022 09:03:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 01/11] pwm: Make .get_state() callback return an error
 code
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Thierry Reding <thierry.reding@gmail.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Douglas Anderson <dianders@chromium.org>,
 Pavel Machek <pavel@ucw.cz>, Claudiu Beznea <claudiu.beznea@microchip.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Benson Leung <bleung@chromium.org>,
 Guenter Roeck <groeck@chromium.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Michael Walle <michael@walle.cc>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai
 <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Hammer Hsieh <hammerh0314@gmail.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Sean Anderson <sean.anderson@seco.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Bjorn Andersson <andersson@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Satya Priya
 <quic_c_skakit@quicinc.com>, linux-pwm@vger.kernel.org,
 linux-gpio@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev, linux-amlogic@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev
References: <20221130152148.2769768-1-u.kleine-koenig@pengutronix.de>
 <20221130152148.2769768-2-u.kleine-koenig@pengutronix.de>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20221130152148.2769768-2-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_000352_223344_0CF3D7F9 
X-CRM114-Status: GOOD (  24.92  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMzAvMTEvMjAyMiAxNjoyMSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gLmdldF9zdGF0
ZSgpIG1pZ2h0IGZhaWwgaW4gc29tZSBjYXNlcy4gVG8gbWFrZSBpdCBwb3NzaWJsZSB0aGF0IGEg
ZHJpdmVyCj4gc2lnbmFscyBzdWNoIGEgZmFpbHVyZSBjaGFuZ2UgdGhlIHByb3RvdHlwZSBvZiAu
Z2V0X3N0YXRlKCkgdG8gcmV0dXJuIGFuCj4gZXJyb3IgY29kZS4KPiAKPiBUaGlzIHBhdGNoIHdh
cyBjcmVhdGVkIHVzaW5nIGNvY2NpbmVsbGUgYW5kIHRoZSBmb2xsb3dpbmcgc2VtYW50aWMgcGF0
Y2g6Cj4gCj4gQHAxQAo+IGlkZW50aWZpZXIgZ2V0c3RhdGVmdW5jOwo+IGlkZW50aWZpZXIgZHJp
dmVyOwo+IEBACj4gICBzdHJ1Y3QgcHdtX29wcyBkcml2ZXIgPSB7Cj4gICAgICAgICAgLi4uLAo+
ICAgICAgICAgIC5nZXRfc3RhdGUgPSBnZXRzdGF0ZWZ1bmMKPiAgICAgICAgICAsLi4uCj4gICB9
Owo+IAo+IEBwMkAKPiBpZGVudGlmaWVyIHAxLmdldHN0YXRlZnVuYzsKPiBpZGVudGlmaWVyIGNo
aXAsIHB3bSwgc3RhdGU7Cj4gQEAKPiAtdm9pZAo+ICtpbnQKPiAgIGdldHN0YXRlZnVuYyhzdHJ1
Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20sIHN0cnVjdCBwd21fc3Rh
dGUgKnN0YXRlKQo+ICAgewo+ICAgICAuLi4KPiAtICByZXR1cm47Cj4gKyAgcmV0dXJuIDA7Cj4g
ICAgIC4uLgo+ICAgfQo+IAo+IHBsdXMgdGhlIGFjdHVhbCBjaGFuZ2Ugb2YgdGhlIHByb3RvdHlw
ZSBpbiBpbmNsdWRlL2xpbnV4L3B3bS5oIChwbHVzIHNvbWUKPiBtYW51YWwgZml4aW5nIG9mIGlu
ZGVudGlvbnMgYW5kIGVtcHR5IGxpbmVzKS4KPiAKPiBTbyBmb3Igbm93IGFsbCBkcml2ZXJzIHJl
dHVybiBzdWNjZXNzIHVuY29uZGl0aW9uYWxseS4gVGhleSBhcmUgYWRhcHRlZAo+IGluIHRoZSBm
b2xsb3dpbmcgcGF0Y2hlcyB0byBtYWtlIHRoZSBjaGFuZ2VzIGVhc2llciByZXZpZXdhYmxlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVu
Z3V0cm9uaXguZGU+Cj4gLS0tCj4gICBkcml2ZXJzL2dwaW8vZ3Bpby1tdmVidS5jICAgICAgICAg
ICAgIHwgIDkgKysrKysrLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3RpLXNuNjVkc2k4
Ni5jIHwgMTQgKysrKysrKystLS0tLS0KPiAgIGRyaXZlcnMvbGVkcy9yZ2IvbGVkcy1xY29tLWxw
Zy5jICAgICAgfCAxNCArKysrKysrKy0tLS0tLQo+ICAgZHJpdmVycy9wd20vcHdtLWF0bWVsLmMg
ICAgICAgICAgICAgICB8ICA2ICsrKystLQo+ICAgZHJpdmVycy9wd20vcHdtLWJjbS1pcHJvYy5j
ICAgICAgICAgICB8ICA4ICsrKysrLS0tCj4gICBkcml2ZXJzL3B3bS9wd20tY3JjLmMgICAgICAg
ICAgICAgICAgIHwgMTAgKysrKysrLS0tLQo+ICAgZHJpdmVycy9wd20vcHdtLWNyb3MtZWMuYyAg
ICAgICAgICAgICB8ICA4ICsrKysrLS0tCj4gICBkcml2ZXJzL3B3bS9wd20tZHdjLmMgICAgICAg
ICAgICAgICAgIHwgIDYgKysrKy0tCj4gICBkcml2ZXJzL3B3bS9wd20taGlidnQuYyAgICAgICAg
ICAgICAgIHwgIDYgKysrKy0tCj4gICBkcml2ZXJzL3B3bS9wd20taW14LXRwbS5jICAgICAgICAg
ICAgIHwgIDggKysrKystLS0KPiAgIGRyaXZlcnMvcHdtL3B3bS1pbXgyNy5jICAgICAgICAgICAg
ICAgfCAgOCArKysrKy0tLQo+ICAgZHJpdmVycy9wd20vcHdtLWludGVsLWxnbS5jICAgICAgICAg
ICB8ICA2ICsrKystLQo+ICAgZHJpdmVycy9wd20vcHdtLWlxczYyMGEuYyAgICAgICAgICAgICB8
ICA2ICsrKystLQo+ICAgZHJpdmVycy9wd20vcHdtLWtlZW1iYXkuYyAgICAgICAgICAgICB8ICA2
ICsrKystLQo+ICAgZHJpdmVycy9wd20vcHdtLWxwc3MuYyAgICAgICAgICAgICAgICB8ICA2ICsr
KystLQo+ICAgZHJpdmVycy9wd20vcHdtLW1lc29uLmMgICAgICAgICAgICAgICB8ICA4ICsrKysr
LS0tCj4gICBkcml2ZXJzL3B3bS9wd20tbXRrLWRpc3AuYyAgICAgICAgICAgIHwgMTIgKysrKysr
Ky0tLS0tCj4gICBkcml2ZXJzL3B3bS9wd20tcGNhOTY4NS5jICAgICAgICAgICAgIHwgIDggKysr
KystLS0KPiAgIGRyaXZlcnMvcHdtL3B3bS1yYXNwYmVycnlwaS1wb2UuYyAgICAgfCAgOCArKysr
Ky0tLQo+ICAgZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMgICAgICAgICAgICB8IDEyICsrKysr
KystLS0tLQo+ICAgZHJpdmVycy9wd20vcHdtLXNpZml2ZS5jICAgICAgICAgICAgICB8ICA2ICsr
KystLQo+ICAgZHJpdmVycy9wd20vcHdtLXNsMjhjcGxkLmMgICAgICAgICAgICB8ICA4ICsrKysr
LS0tCj4gICBkcml2ZXJzL3B3bS9wd20tc3ByZC5jICAgICAgICAgICAgICAgIHwgIDggKysrKyst
LS0KPiAgIGRyaXZlcnMvcHdtL3B3bS1zdG0zMi1scC5jICAgICAgICAgICAgfCAgOCArKysrKy0t
LQo+ICAgZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgICAgICAgICAgICAgICB8IDEyICsrKysrKyst
LS0tLQo+ICAgZHJpdmVycy9wd20vcHdtLXN1bnBsdXMuYyAgICAgICAgICAgICB8ICA2ICsrKyst
LQo+ICAgZHJpdmVycy9wd20vcHdtLXZpc2NvbnRpLmMgICAgICAgICAgICB8ICA2ICsrKystLQo+
ICAgZHJpdmVycy9wd20vcHdtLXhpbGlueC5jICAgICAgICAgICAgICB8ICA4ICsrKysrLS0tCj4g
ICBpbmNsdWRlL2xpbnV4L3B3bS5oICAgICAgICAgICAgICAgICAgIHwgIDQgKystLQo+ICAgMjkg
ZmlsZXMgY2hhbmdlZCwgMTQ2IGluc2VydGlvbnMoKyksIDg5IGRlbGV0aW9ucygtKQo+IAoKPHNu
aXA+Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tbWVzb24uYyBiL2RyaXZlcnMvcHdt
L3B3bS1tZXNvbi5jCj4gaW5kZXggNTcxMTJmNDM4YzZkLi4xNmQ3OWNhNWQ4ZjUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9wd20vcHdtLW1lc29uLmMKPiArKysgYi9kcml2ZXJzL3B3bS9wd20tbWVz
b24uYwo+IEBAIC0zMTgsOCArMzE4LDggQEAgc3RhdGljIHVuc2lnbmVkIGludCBtZXNvbl9wd21f
Y250X3RvX25zKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwKPiAgIAlyZXR1cm4gY250ICogZmluX25z
ICogKGNoYW5uZWwtPnByZV9kaXYgKyAxKTsKPiAgIH0KPiAgIAo+IC1zdGF0aWMgdm9pZCBtZXNv
bl9wd21fZ2V0X3N0YXRlKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2Ug
KnB3bSwKPiAtCQkJCXN0cnVjdCBwd21fc3RhdGUgKnN0YXRlKQo+ICtzdGF0aWMgaW50IG1lc29u
X3B3bV9nZXRfc3RhdGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAq
cHdtLAo+ICsJCQkgICAgICAgc3RydWN0IHB3bV9zdGF0ZSAqc3RhdGUpCj4gICB7Cj4gICAJc3Ry
dWN0IG1lc29uX3B3bSAqbWVzb24gPSB0b19tZXNvbl9wd20oY2hpcCk7Cj4gICAJc3RydWN0IG1l
c29uX3B3bV9jaGFubmVsX2RhdGEgKmNoYW5uZWxfZGF0YTsKPiBAQCAtMzI3LDcgKzMyNyw3IEBA
IHN0YXRpYyB2b2lkIG1lc29uX3B3bV9nZXRfc3RhdGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBz
dHJ1Y3QgcHdtX2RldmljZSAqcHdtLAo+ICAgCXUzMiB2YWx1ZSwgdG1wOwo+ICAgCj4gICAJaWYg
KCFzdGF0ZSkKPiAtCQlyZXR1cm47Cj4gKwkJcmV0dXJuIDA7Cj4gICAKPiAgIAljaGFubmVsID0g
Jm1lc29uLT5jaGFubmVsc1twd20tPmh3cHdtXTsKPiAgIAljaGFubmVsX2RhdGEgPSAmbWVzb25f
cHdtX3Blcl9jaGFubmVsX2RhdGFbcHdtLT5od3B3bV07Cj4gQEAgLTM1Nyw2ICszNTcsOCBAQCBz
dGF0aWMgdm9pZCBtZXNvbl9wd21fZ2V0X3N0YXRlKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3Ry
dWN0IHB3bV9kZXZpY2UgKnB3bSwKPiAgIAkJc3RhdGUtPnBlcmlvZCA9IDA7Cj4gICAJCXN0YXRl
LT5kdXR5X2N5Y2xlID0gMDsKPiAgIAl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gICB9Cj4gICAKPiAg
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgcHdtX29wcyBtZXNvbl9wd21fb3BzID0gewoKPHNuaXA+CgpG
b3IgcHdtLW1lc29uOgoKUmV2aWV3ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9u
Z0BsaW5hcm8ub3JnPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
