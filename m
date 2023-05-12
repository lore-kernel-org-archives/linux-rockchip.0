Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72A44C7EE23
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 May 2023 16:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i03XtjNHGGZSCIdzU0Q+vqXbF1pWHHTKOoPO4NNVh7k=; b=aeoy/m18e9Odx3
	KWHJeB51oNtEt2UpuOfLUa1mM6BAeqlg2kmxYw7cakl0MF7Lm6A6dFq18XI2xN6YE4AlYuiMgw02D
	QFdHaIY2sB4S/GMVfLr/DIujDpH7NXP3cxQhfv6navdc6MiFdeAqEuLyO3LeKZ2UVDdSdFAc1dat9
	nr3rIM3l0UZr2nM7+XFZsMcHm7izvZE9LAe16AsL6fxJOUw+4vISAiDM5ZU60Ht0Wk3SKVro8Yd3d
	S86Y8nGCjVz56dZI0Vjl3PMD2e4KCBS8nt1cVX2O/TjOrzk+60s0wYU+hWHGs8KJmA/Z60nzXHzGQ
	GXS0R+DnSHmUuj9eTRKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxVjk-00CUjF-2P;
	Fri, 12 May 2023 16:35:20 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxVjh-00CUhL-2V
	for linux-rockchip@lists.infradead.org;
	Fri, 12 May 2023 16:35:19 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-50bcae898b2so17973665a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 May 2023 09:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683909316; x=1686501316;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oj3vBLYi0VGg7znZN4GARmcXM9pKwrBpVwIV9KkQbec=;
        b=cX9t50W3qWgc+/ZaeMekhrhK1HUSgn6pR9RA6For+1pKOyNl38tWsLSYOfttWTB89c
         Vr2S7zudABZH+b7KSDqiMNpgQAWPYU7rpl+r5I9fF147w2jcxg6cRplVOIq4PYhRJSuX
         1H2dQdesYD3RgRF+wtsb5y2D+cBLKlR/go2UbTI757Xu/FfM2oQTSbndCZzd6iGc2Wvh
         Wg+KeqlAtEUQbqigYT559PDPA5RPd2OVmYiP4zXf3PP3bsJ6e/ZtLEtAfaGvZO3NIjOc
         L4BCIFXPgs9MbOyq4n0ZUayjP7HhqQcTqVmuYAtJnYBi9943hkimGEBt6m7DAqjRCsuJ
         ZEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683909316; x=1686501316;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Oj3vBLYi0VGg7znZN4GARmcXM9pKwrBpVwIV9KkQbec=;
        b=CuoXmY5ZZovVUfwYtwsFlDmIa7GJufEDycl3gwmNcvPCNK5Sedt2ukmSgNiklge0e/
         9/d5ev+95QHYzaIwBozH9lITM3GKhIIWSU7zmotfawDArR+rqs6msvIddfLemd/2AImY
         iAyWeyS07l2TrJtGeP6oIqNnRYNdU/ZMZbVIM7fdB57SFiw5/ng6ieGz/fNCmaht/CXL
         dc/aC7RxW+Ja9rM+TwrNSa5xGKJT8aW2JO4o/q3962N0WiT0JtHt3OT476qo++aMAPSK
         3qweWuvAob6UE/vX5ce6RUQiu9WywBeo03pmzBxyw3rnBLAjeABvasa9aE5EPbrdVK99
         jujw==
X-Gm-Message-State: AC+VfDy/yJdsiFnuDdxsinZf6/C3Z/KNymaRCFwLLqjjjVhbgrJRsmNW
	uTzUyTV0tOYscBSUC1W32LGfdA==
X-Google-Smtp-Source: ACHHUZ4ot459mbkMzA1b+DbStmTsgAlYaGVvjjMaw+ecLAMB38L9UcblvQxLt2/wAAYALelHBjLbFA==
X-Received: by 2002:a17:907:3e9e:b0:96a:29c0:8515 with SMTP id hs30-20020a1709073e9e00b0096a29c08515mr8774854ejc.58.1683909315994;
        Fri, 12 May 2023 09:35:15 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7ede:fc7b:2328:3883? ([2a02:810d:15c0:828:7ede:fc7b:2328:3883])
        by smtp.gmail.com with ESMTPSA id lt14-20020a170906fa8e00b0094efdfe60dcsm5490714ejb.206.2023.05.12.09.35.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 09:35:15 -0700 (PDT)
Message-ID: <98a77653-ec58-56c4-9893-3b424f67c87e@linaro.org>
Date: Fri, 12 May 2023 18:35:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 01/28] media: cec: ch7322: drop of_match_ptr for ID table
Content-Language: en-US
To: Joe Tessler <jrt@google.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Wenyou Yang
 <wenyou.yang@microchip.com>, Bin Liu <bin.liu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Yong Deng <yong.deng@magewell.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 "Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_093517_860152_C6B593BC 
X-CRM114-Status: GOOD (  10.74  )
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

T24gMTIvMDMvMjAyMyAxNDoxMiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBUaGUgZHJp
dmVyIGNhbiBtYXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUgc28gdGhlIHRhYmxlIHNob3VsZCBi
ZSBhbHdheXMKPiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRyIGRvZXMgbm90IGhhdmUgYW55IHNl
bnNlICh0aGlzIGFsc28gYWxsb3dzIEFDUEkKPiBtYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZlbiB0
aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLgo+IAo+ICAgZHJpdmVycy9tZWRp
YS9jZWMvaTJjL2NoNzMyMi5jOjU4MzozNDogZXJyb3I6IOKAmGNoNzMyMl9vZl9tYXRjaOKAmSBk
ZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+IAo+
IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lA
bGluYXJvLm9yZz4KPiAtLS0KCkhhbnMsIFNha2FyaSwKCkNhbiB5b3UgcGljayB1cCB0aGUgcGF0
Y2hzZXQ/IFRoZXJlIHdhcyBwb3NpdGl2ZSBmZWVkYmFjazoKaHR0cHM6Ly9wYXRjaHdvcmsubGlu
dXh0di5vcmcvcHJvamVjdC9saW51eC1tZWRpYS9wYXRjaC8yMDIzMDMxMjEzMTMxOC4zNTExNzMt
MS1rcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmcvCgpidXQgaXQgc2VlbXMgaXQgd2FzIG5v
dCBhcHBsaWVkLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
