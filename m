Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9BC5E743FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Sep 2023 08:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jsi0W4snIPBBhQIu18TMDq/srMzox6i03rpDWb2Ljc4=; b=wHcW+9g9LMKlbg
	gVl33UXoKEpjHILSw+R7tSyphoDQEhaipTtJRSDz4QIiV5ptnRu0guzlnJJ340tvluVylSgdtPG4S
	447Xh3qIwoyl4SWiWdMel6XpOH/xB0IQaW0wlO3asow9mEEDl2RkQb/IKKThrzeN73rWBncZw92NA
	2RtPbjt6A9jjwrUifXsjDQL0Yre4Ttpvm5arO2eb6+MoQycjJTtX55OlURmMXpSdjo1wHkRhH2oYw
	J0Fr7rI/bbhtxqcVmJCwP2rwisT03tok+FbdYJMO7YwJkLmq4z7Y4MEhQJLfFlpIB9hlg+YVMhazQ
	CQJylKNLCydwub3w2ERg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qm9Jr-007QIf-2G;
	Fri, 29 Sep 2023 08:57:55 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qm9Jm-007QEu-2z
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Sep 2023 08:57:53 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9ae2cc4d17eso1854007666b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Sep 2023 01:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695977866; x=1696582666; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nsBQLJ6Ogoic+1/xmfT0u8ONBi3qeWxubxgbbL3TF8o=;
        b=AeqaMFkiDHXOP2hAgSpk1f7k9d+jk9qtWTlqlL1REBRGzIuzfgnaWqD6lGNlOv09Rt
         f+9h4TMT7j277vTuB+qQLafIc034IuUzhR81CkJZJkaw//YbXogsBGFPFoiepI6lgHnp
         MEwkfRrcExn+f5PKDfTAKooB8iL7T8A4S9ExPFf1jwmfp4PwFrw/x9ipL8JFuVA1B6bJ
         u28Zt5l/pNiRTyiTz52c4ktrCbetJm0WSUb1++AAvUhPU9i7/DSeuB2ucvyBQELl8xYv
         IjoqRf3zaxvVFqyJCsyHGJhypyZtLk5V7AN7k9DrhLLtZNfSjjD3OBqORRDpOv+kWUvl
         Jhvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695977866; x=1696582666;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nsBQLJ6Ogoic+1/xmfT0u8ONBi3qeWxubxgbbL3TF8o=;
        b=UdSsIhkIeXLa6wercSE9UKmJfggtqSarbeguErQBtpvFA35z2ZBRknrhoOuTDwZfdC
         cBgUXb3V1BQPWg4Fsmi0URQ16Ng2FD6DJaYqILc5UKrTsbJRZpsE6arvVjoiAa/dNc8z
         QsR3cgTRDBVoIsZT1a29POI83LZVOcyk6af1IKUr47I740zU4dknfnq/xMeIuJpDl1Tb
         ByL3poPxvMF/9fvl+qHFBEFdk0YIfGI40myF9+UPO7LIwBwatPemKrmrzgKdnqbR0DvP
         uDgh2LFnHONWDkfXuFaSmKLzftpJczaBhGjd7o67jpApv0HvdpgnFif7iBlciQYrlLsi
         otVQ==
X-Gm-Message-State: AOJu0Yza5H4psIrypypHDD41cySnJ6ngmz/E6NgmLKnbI0vWk6TWopbs
	kYisg7Lq5xkI3BKCX7ginUE0AQ==
X-Google-Smtp-Source: AGHT+IEsrmtSBffKc4/0WejFkmq1arFW3oxGMi3C1GOThUgoHMTSmFySeXvpixD0/kTwmWhaMqbTUQ==
X-Received: by 2002:a17:906:28e:b0:9b2:b749:ff93 with SMTP id 14-20020a170906028e00b009b2b749ff93mr2957352ejf.24.1695977866113;
        Fri, 29 Sep 2023 01:57:46 -0700 (PDT)
Received: from srini-hackbase.lan ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id w27-20020a17090633db00b009a2235ed496sm12339806eja.141.2023.09.29.01.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 01:57:45 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Claudiu Beznea <claudiu.beznea@microchip.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Vincent Shih <vincent.sunplus@gmail.com>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Alessandro Zummo <a.zummo@towertech.it>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Evgeniy Polyakov <zbr@ioremap.net>, linux-mtd@lists.infradead.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, 
 linux-rtc@vger.kernel.org, Michael Walle <michael@walle.cc>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Michal Simek <michal.simek@amd.com>
In-Reply-To: <20230927204446.4231-1-zajec5@gmail.com>
References: <20230927204446.4231-1-zajec5@gmail.com>
Subject: Re: [PATCH V5] nvmem: add explicit config option to read old
 syntax fixed OF cells
Message-Id: <169597786418.99756.8731565742524355843.b4-ty@linaro.org>
Date: Fri, 29 Sep 2023 09:57:44 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_015750_982367_49C599E8 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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

Ck9uIFdlZCwgMjcgU2VwIDIwMjMgMjI6NDQ6NDYgKzAyMDAsIFJhZmHFgiBNacWCZWNraSB3cm90
ZToKPiBCaW5kaW5nIGZvciBmaXhlZCBOVk1FTSBjZWxscyBkZWZpbmVkIGRpcmVjdGx5IGFzIE5W
TUVNIGRldmljZSBzdWJub2Rlcwo+IGhhcyBiZWVuIGRlcHJlY2F0ZWQuIEl0IGhhcyBiZWVuIHJl
cGxhY2VkIGJ5IHRoZSAiZml4ZWQtbGF5b3V0IiBOVk1FTQo+IGxheW91dCBiaW5kaW5nLgo+IAo+
IE5ldyBzeW50YXggaXMgbWVhbnQgdG8gYmUgY2xlYXJlciBhbmQgc2hvdWxkIGhlbHAgYXZvaWRp
bmcgaW1wcmVjaXNlCj4gYmluZGluZ3MuCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5rcyEKClsx
LzFdIG52bWVtOiBhZGQgZXhwbGljaXQgY29uZmlnIG9wdGlvbiB0byByZWFkIG9sZCBzeW50YXgg
Zml4ZWQgT0YgY2VsbHMKICAgICAgY29tbWl0OiBlZTczYTlmYWU1NDBhZGJiNDMyYmQyODU0YTgy
NDA5NTE1YzdjODkyCgpCZXN0IHJlZ2FyZHMsCi0tIApTcmluaXZhcyBLYW5kYWdhdGxhIDxzcmlu
aXZhcy5rYW5kYWdhdGxhQGxpbmFyby5vcmc+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
