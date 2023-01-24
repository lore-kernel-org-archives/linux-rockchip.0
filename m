Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FC7AC25B4E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jan 2023 08:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hNKOhkZ7j444QK+fK/QaSzAF2NcPJxNVQnvYfpOuk4=; b=RKoeFMsxnFuB92
	FA8auUnzdbySYeTKMW4ofUNoLV6QGaq/sDfPupNhkhPRCE+PNNJYu1YQ1U+ZPXxXgHPAyEXTIhakB
	4wEEgo87eEqUWWdxeCIOPnEqEykn68veVGTFVz3giSYKnPdQogE1xPUY3fm2peAjpdJAJcwRfJRfB
	WTDSkTlnpfSHvccp4O/OGAmQ4NKoi6qWVnJtuQRBv6gvrCqBpGI1JScsLsudy9/IPDuPIvCyKyZFc
	YI0X8I85vdde5NvmbmZVqBEwTi/DuXry8nXi6EEywLvB9lIPwFJFndY9cqidlwAmTrFaZi7dUEwd1
	rWpy0xFSlZJ6/2n/zYPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKEUa-002iLX-MT; Tue, 24 Jan 2023 08:17:21 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKEUX-002iKC-M4
	for linux-rockchip@lists.infradead.org; Tue, 24 Jan 2023 08:17:18 +0000
Received: by mail-wr1-x42f.google.com with SMTP id h12so9051130wrv.10
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Jan 2023 00:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kLCH4vzF1S5fETKgbedPA51jeuB1hlnoXHacM1L7F8A=;
        b=PUCx69XU/ALNSOnNm3wvq0dYsW6xQff+/756CSvgawj5VkarkYeNnvrg5pkIHXeJvC
         tH6jWQZXJGE7SPgHqrLg7MYzAdvLRGLlYUkq5Ip8xwrNY1UH11hLEN22hByAXNFspFKz
         aZiO/3UlZaGGnmfbNQVMLEqgOxtE/FItMeLb3VFNY6HFcQIqWYJKC82PhT8+A4lF1xzN
         ives3T43i1wpt4rZaeNlGoK12ltSem8VVpphw5DSpJkrSdkNYAJAG+SJA/nv4iQKPwSE
         Hb6ajPifB6TjJitYVTr0H5+W327fGX0kdXDAr8Z8xIvJ51i/+rSc8RaavuRsdyXrWZ/k
         JXuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kLCH4vzF1S5fETKgbedPA51jeuB1hlnoXHacM1L7F8A=;
        b=7ardr2+n4oJBzbxLDkPBEJBxsHwmQ+0MTTHwsLf0q39qwIWhIuETR4XWDvc0js+kyD
         jTW/mC8q8HoQu0Uwl/YhgVa6LM/OZ1Hv+kThBl6hoCmBJvYQ0bJXDa4XsjZQjSDEZEeW
         C3DpbfkH+CYnUu0xQr1W/TZ+s8VtkkG75///c2mq1r5X/dGrJpXzxRNOsYmSn9Ae1hRO
         N9w3chAjb+IMusGJr8fh2BOO7AKwK1aDUXcJr546Ou7mvKya/MxuBtafSidJk7lp5YZG
         u4w2NuI353Iff49ME+cgSnE8F6Jo95tSRi+6rX+1monpdXGpsYMRYbWOUX7aQHQcXZSF
         ot6g==
X-Gm-Message-State: AFqh2kridnodL/rJieObmKTNPMFIk6SJCgXaDB2MuLVSvYGyU5bIvy5O
	dJaQNuwB8wIbMT75OAYoLpR/7w==
X-Google-Smtp-Source: AMrXdXuKhilEOYXCaWzj5MnYT6+XRh6z0kCNN3okw51LIYDecgd5E8Ez0G9+d3ehflLkb16p29wJdA==
X-Received: by 2002:a05:6000:608:b0:2bd:db84:d663 with SMTP id bn8-20020a056000060800b002bddb84d663mr21417965wrb.5.1674548235969;
        Tue, 24 Jan 2023 00:17:15 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x15-20020a5d650f000000b002bdda9856b5sm1263775wru.50.2023.01.24.00.17.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 00:17:15 -0800 (PST)
Message-ID: <955f4b2a-a750-11a2-0423-72023935723b@linaro.org>
Date: Tue, 24 Jan 2023 09:17:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 2/2] dt-bindings: mmc: correct pwrseq node names
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, =?UTF-8?Q?Andreas_F=c3=a4rber?=
 <afaerber@suse.de>, Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Tony Huang <tonyhuang.sunplus@gmail.com>, Li-hao Kuo <lhjeff911@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Markus Pargmann <mpa@pengutronix.de>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-actions@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <20230120085722.171965-1-krzysztof.kozlowski@linaro.org>
 <20230120085722.171965-2-krzysztof.kozlowski@linaro.org>
 <2138388.Mh6RI2rZIc@diego>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2138388.Mh6RI2rZIc@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_001717_751269_9A87E74F 
X-CRM114-Status: GOOD (  16.73  )
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

T24gMjAvMDEvMjAyMyAxMDozOCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRnJlaXRhZywg
MjAuIEphbnVhciAyMDIzLCAwOTo1NzoyMiBDRVQgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tp
Ogo+PiBOb2RlIG5hbWVzIHNob3VsZCBiZSBnZW5lcmljIGFuZCBzaG91bGQgbm90IGNvbnRhaW4g
dW5kZXJzY29yZXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPj4gLS0tCj4+ICBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbW1jL21tYy1wd3JzZXEtZW1tYy55YW1sICAgfCAyICstCj4+ICBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tYy1wd3JzZXEtc2Q4Nzg3Lnlh
bWwgfCAyICstCj4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tYy1w
d3JzZXEtc2ltcGxlLnlhbWwgfCAyICstCj4+ICAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tbWMvbW1jLXB3cnNlcS1lbW1jLnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tYy1wd3JzZXEtZW1tYy55YW1sCj4+IGluZGV4IDkx
MWE1OTk2ZTA5OS4uNTg4YmU3MzE2OGZhIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbW1jL21tYy1wd3JzZXEtZW1tYy55YW1sCj4+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvbW1jLXB3cnNlcS1lbW1jLnlhbWwKPj4g
QEAgLTQxLDcgKzQxLDcgQEAgYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4+ICBleGFtcGxl
czoKPj4gICAgLSB8Cj4+ICAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgo+
PiAtICAgIHNkaGNpMF9wd3JzZXEgewo+PiArICAgIHB3cnNlcSB7Cj4gCj4gW2FwcGxpY2FibGUg
Zm9yIGFsbCAzIGV4YW1wbGVzXQo+IAo+IGhtbSwgcG93ZXItc2VxdWVuY2VzIGFyZSBub3QgbmVj
ZXNzYXJpbHkgdGllZCB0byBhbiBhZGRyZXNzIGFuZCBJIGd1ZXNzCj4gaXQgd2lsbCBiZSB2ZXJ5
IG11Y2ggYSBjb21tb24gY2FzZSB0byBoYXZlIG11bHRpcGxlIG9uZXMgb24gYSBzeXN0ZW0uCj4g
Cj4gU28gbWlnaHQgaXQgYmUgYmV0dGVyIHRvIGZvbGxvdyBvdGhlciBwYXR0ZXJucyAobGlrZSBs
ZWRzKSB0byBudW1iZXIgdGhlbQo+IG9yIHN1Z2dlc3QgYSAiZm9vLXB3cnNlcSIgLyAicHdyc2Vx
LWZvbyI/CgpJbiBzdWNoIGNhc2VzIG9uZSBjYW4gYWRkIG51bWJlciBvciBkZXNjcmlwdGl2ZSBz
dWZmaXggKHB3cnNlcS0wLApwd3JzZXEtZm9vKSwganVzdCBsaWtlIHdlIGRvIGZvciByZWd1bGF0
b3JzLiBIb3dldmVyIHRoZSBleGFtcGxlcyBoYXZlCmhlcmUgb25seSBvbmUgbm9kZSBhbmQgaW4g
c3VjaCBjYXNlICJwd3JzZXEiIGlzIGVub3VnaC4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
