Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B37ACE7B04
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 07:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ko09pduzUaCgBCKUdPWQeEUI4zPxWRqAdnSfUVQszRQ=; b=FnagucyTMyzk8w
	9tF0pSGhQ7sgj+hLrzu/HXxmT+PmVq2akaCGYt9MJbvcK8pOJ97Hx/PBDsdwRYGVxr4uQPGovWDXd
	MYIxupDRHxm2SffSWhSLMA7orZHqhm9cVdGgSr1tv4mJk1ei+SVzf06uJNIQ3gmrSsejSKAr2EqRK
	Bsa5klxsXTc9UL9/c4X5dE1j5yQ8YZuLYNXkwee6ragYsIpwayOoZg2jvAKBKgNtKiY5I8wrsHCGc
	vU48Rfk100+/dokIaEiXzUWgN8xlgrauqbKcLm2w72UWjvu7focWVfZwDZdVTVQYTbse2HU2X9EDJ
	fNYDHnbh64qF+d1/hB3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qll5X-002RXv-0q;
	Thu, 28 Sep 2023 07:05:31 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qll5U-002RW0-0A
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 07:05:29 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3231df054c4so8514585f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Sep 2023 00:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695884723; x=1696489523; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JK5FKcmSKFk/poFkH6WaIiPHJq3+6nK77MGlhBlv5xc=;
        b=MzWBLRAXSSoEm2MxVLYb3S9McXjqGB9uQYhqISJVSWr5x9vVdNtV8U/Fjj2J3fkDXI
         Di3IWPLr+VttP48PLn9mQR63wIjmYQy3QA81C/pdCCChujwx/Wk9pPciNa0WX9n3XF53
         JA0eF2hg/7W42qxmY9lP+HwnlN5Kh4oFME1XoJqHrORMs3uyENG3YzS+xqEp+pr0Yj0j
         BA2qcJ3YwGIHTd/yIUqNlpDBh1S0EC7qX3dWSphYW5eHx1EfwJYl7sjVnoUtK5GeM1Z3
         /HG0V8rwcYUQwhmPqzLB4CwwVpnADvNAR+S4TsQP1Y/I+oWO6iEvKdH0dyzjJABNoi9z
         Rf9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695884723; x=1696489523;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JK5FKcmSKFk/poFkH6WaIiPHJq3+6nK77MGlhBlv5xc=;
        b=qSHZpqN9v+2cs7wwxRcyNqWh5LKUlbCXan8YBGTlnR2PDyieb/IecDgFKFee5sMMf1
         O7r4HPDv7POAZf2HuacYVdUHph4wFL+GcirTnDv9ZgO0GED/YwBg53oY/F8aF/vXF8gk
         qEpUBzDTnmCVgstQbmpyKRV/l/J1WR75SlDPqt/e8tqhfgN2mKW0V38tLTX8KjAipw6/
         5WqvrPAx97f76nce2N7lBD2Uc7RyWkipcFhFFD6X+0/QgHNdHv+ynAnGKvBS19xfrB0X
         Oz1xDxeke/JNknt/l9K8k1J1hCWOLnmCTiIvB0AXgykLvHqhvYAD2BsZsge5KUk2EzbY
         UXXg==
X-Gm-Message-State: AOJu0Yxc5TN9gbaWRmozGAEGm4jGKwbILPgrImc+MS7gmk+hB0glsmi8
	UMY/Np/VygCVVHSEywKSb/7SZA==
X-Google-Smtp-Source: AGHT+IHtRxKk7CXcPNdMQTTEBVfCDemBFx4pebeQoAgF8nP7IxdEu3s1ozmEdmztrqIM2F97b6iYUw==
X-Received: by 2002:a5d:5b17:0:b0:31f:a4fa:130a with SMTP id bx23-20020a5d5b17000000b0031fa4fa130amr465227wrb.14.1695884723076;
        Thu, 28 Sep 2023 00:05:23 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id bv19-20020a0560001f1300b0032327b70ef6sm10037825wrb.70.2023.09.28.00.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Sep 2023 00:05:22 -0700 (PDT)
Message-ID: <d8515a00-4d41-2d23-09ca-30f474fcbabd@linaro.org>
Date: Thu, 28 Sep 2023 09:05:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 00/31] thermal: Convert to platform remove callback
 returning void
Content-Language: en-US
To: "Rafael J. Wysocki" <rafael@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Guillaume La Roque <glaroque@baylibre.com>,
 Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org,
 kernel@pengutronix.de, Miquel Raynal <miquel.raynal@bootlin.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Heiko Stuebner <heiko@sntech.de>, ye xingchen <ye.xingchen@zte.com.cn>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Balsam CHIHI <bchihi@baylibre.com>,
 Adam Ward <DLG-Adam.Ward.opensource@dm.renesas.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Yang Yingliang <yangyingliang@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Alexandre Mergnat <amergnat@baylibre.com>, Chen-Yu Tsai
 <wenst@chromium.org>, Chen Jiahao <chenjiahao16@huawei.com>,
 linux-mediatek@lists.infradead.org, Thara Gopinath
 <thara.gopinath@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Rob Herring <robh@kernel.org>,
 Minghao Chi <chi.minghao@zte.com.cn>,
 linux-stm32@st-md-mailman.stormreply.com,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Johan Hovold <johan+linaro@kernel.org>, linux-tegra@vger.kernel.org,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Eduardo Valentin <edubezval@gmail.com>, Keerthy <j-keerthy@ti.com>,
 linux-omap@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>
References: <20230927193736.2236447-1-u.kleine-koenig@pengutronix.de>
 <CAJZ5v0guyQ-SpNHXYBG2F_WyCSvgjXocGBy61Ep1Cy5-H-MOsQ@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CAJZ5v0guyQ-SpNHXYBG2F_WyCSvgjXocGBy61Ep1Cy5-H-MOsQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_000528_095615_844A21F9 
X-CRM114-Status: GOOD (  16.70  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjcvMDkvMjAyMyAyMTo0NSwgUmFmYWVsIEouIFd5c29ja2kgd3JvdGU6Cj4gSGksCj4gCj4g
T24gV2VkLCBTZXAgMjcsIDIwMjMgYXQgOTozOOKAr1BNIFV3ZSBLbGVpbmUtS8O2bmlnCj4gPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4+Cj4+IEhlbGxvLAo+Pgo+PiB0
aGlzIHNlcmllcyBjb252ZXJ0cyBhbGwgcGxhdGZvcm0gZHJpdmVycyBiZWxvdyBkcml2ZXJzL3Ro
ZXJtYWwgdG8gdXNlCj4+IC5yZW1vdmVfbmV3KCkuIFRoZSBtb3RpdmF0aW9uIGlzIHRvIGdldCBy
aWQgb2YgYW4gaW50ZWdlciByZXR1cm4gY29kZQo+PiB0aGF0IGlzIChtb3N0bHkpIGlnbm9yZWQg
YnkgdGhlIHBsYXRmb3JtIGRyaXZlciBjb3JlIGFuZCBlcnJvciBwcm9uZSBvbgo+PiB0aGUgZHJp
dmVyIHNpZGUuCj4+Cj4+IFNlZSBjb21taXQgNWM1YTc2ODBlNjdiICgicGxhdGZvcm06IFByb3Zp
ZGUgYSByZW1vdmUgY2FsbGJhY2sgdGhhdAo+PiByZXR1cm5zIG5vIHZhbHVlIikgZm9yIGFuIGV4
dGVuZGVkIGV4cGxhbmF0aW9uIGFuZCB0aGUgZXZlbnR1YWwgZ29hbC4KPj4KPj4gVGhlcmUgYXJl
IG5vIGludGVyZGVwZW5kZW5jaWVzIGJldHdlZW4gdGhlIHBhdGNoZXMuIEFzIHRoZXJlIGFyZSBz
dGlsbAo+PiBxdWl0ZSBhIGZldyBkcml2ZXJzIHRvIGNvbnZlcnQsIEknbSBoYXBweSBhYm91dCBl
dmVyeSBwYXRjaCB0aGF0IG1ha2VzCj4+IGl0IGluLiBTbyBldmVuIGlmIHRoZXJlIGlzIGEgbWVy
Z2UgY29uZmxpY3Qgd2l0aCBvbmUgcGF0Y2ggdW50aWwgeW91Cj4+IGFwcGx5IG9yIGEgc3ViamVj
dCBwcmVmaXggaXMgc3Vib3B0aW1hbCwgcGxlYXNlIGFwcGx5IHRoZSByZW1haW5kZXIgb2YKPj4g
dGhpcyBzZXJpZXMgYW55aG93Lgo+IAo+IEkgdGhpbmsgSSdsbCBnbyBhaGVhZCBhbmQgYXBwbHkg
YWxsIG9mIHRoaXMgaW4gb25lIGdvIChmb3IgNi43KS4KPiAKPiBEYW5pZWwsIGFueSBvYmplY3Rp
b25zPwoKTm8gb2JqZWN0aW9uLCBmb3IgdGhlIHNlcmllczoKCkFja2VkLWJ5OiBEYW5pZWwgTGV6
Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KCi0tIAo8aHR0cDovL3d3dy5saW5hcm8u
b3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpG
b2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFj
ZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRw
Oi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
