Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3070C61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 17:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7WNAeXBZdD/IzI/5vNL3lyhYwYnYvFfRi+gHPCrp1V0=; b=4PRIpiw678tsPsLFdLc4SA9Gg7
	SCt5QUs3v/vl6rWEj0YeR3P3cdEeORzfFQIOpozOk8059ryCDk21GZ3o5sEOkcrOh3YXMwDNbyCh/
	bCCJIBh6oXTSnKYTwn6h7ta+5XqoMC66Zpzoh3s/Q6b0yOQQhegmVWeXe0979OyGhiZIx2KHDqmQj
	NWMG/tobpxV2QjJ5vZT+us67tW9nlePH9i/+BCqOOAM/oh8SGZBWyLpOeD6/+WBUIs0dJ6M0814ic
	90My5y/6bajWXzwK+cgYtxDbo3i05ZgZ8MxwAKfjjHy9chfFronRZOKs7BCHCYwB/EoL5vP8r15RA
	HJM2ON0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbloQ-0072iZ-G8; Mon, 13 Mar 2023 17:18:18 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pblfF-006yzC-7U; Mon, 13 Mar 2023 17:08:50 +0000
Received: by mail-lj1-x236.google.com with SMTP id z42so13313430ljq.13;
        Mon, 13 Mar 2023 10:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678727325; x=1681319325;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nWFcn3N7fdkggfCAU6N3AWS2AJpujTNFZCDcDG29DDU=;
        b=e6YN891exTz6RBgawDES0963ZDWFQA9+8aQ63Im7BP5Fy9eEvzBxMIuHAuqWbCZeLw
         xA2sSa6/cZiN6mHF3/+fIb3pnqq2MewlfLzR48koCbD8whXbKfA8Zs0+dFs89Cfy5m36
         ROVsAU6bQljGOx/ykPtOQO0r6I8XBemOEF326xWZ5gIBuu5RpWt0wZITremU5bdqxJ5e
         fWUkITbc/MzS3k5YZE74vlNgxyJd3l+n9CkKH1MRvz0jG8OdZSEUnRN+n0e89kMgUyKp
         rroBKHNdNE45XtTz8XbWd27Z63Nu8HES9mhzKxEJUTEcdgqTB5zYtiSB6fEQbd4byozN
         7IwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678727325; x=1681319325;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nWFcn3N7fdkggfCAU6N3AWS2AJpujTNFZCDcDG29DDU=;
        b=1GZIOGPAFPxtmTyFrjZZqcpAma/2GGysZ4DBZnejCrC+QsvaPUidLW5gl/8OwSEbdm
         cVn27oWWcbfXnHYwhFwlzuo4h+B4Bv82m8ez0m31WLFqeiRC59Qrpi2NjramjBelhWKj
         CwGoyAcE1i1SkD97L+BfwCJce7g1v3PxTXIdIsAkMEVfRtb4A8G3VBqpxm87GokA75FI
         fMxlt2T+mBduHmSruAu7XOV1lqcfbzWiYVmdL29HAAYKnOcF1sOPJZEHfW6PFHLm8ipC
         sMirxgyhUmlinRn0u60sx64BsQOUh6a4vTV3bC91cRyWIBDA826VsJAeMi+gkN4+4hHd
         BlEA==
X-Gm-Message-State: AO0yUKXZxnG/a+oH79lvfin2k2sUDY88yQ4bMehC4IyiU0Ays8DW1FXE
	+wqf/JeL6sftDHOgRCZKDUI=
X-Google-Smtp-Source: AK7set9A23LXz84FY4nbulp8BmwRuZb6BzjELqJTA00c9/JbdQSh2qRKdHRdbHkxYlALuU7kCLrMgg==
X-Received: by 2002:a05:651c:222b:b0:294:7422:479e with SMTP id y43-20020a05651c222b00b002947422479emr6188608ljq.1.1678727324631;
        Mon, 13 Mar 2023 10:08:44 -0700 (PDT)
Received: from [192.168.0.192] ([194.146.248.75])
        by smtp.gmail.com with ESMTPSA id e2-20020a2e9302000000b0029571d505a1sm69136ljh.80.2023.03.13.10.08.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 10:08:44 -0700 (PDT)
Message-ID: <66b78cd3-0d0d-cee8-6a93-996ade3a07a9@gmail.com>
Date: Mon, 13 Mar 2023 18:08:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 09/28] media: platform: samsung: s5p-jpeg: drop
 of_match_ptr for ID table
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Joe Tessler <jrt@google.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
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
 <20230312131318.351173-9-krzysztof.kozlowski@linaro.org>
From: Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>
In-Reply-To: <20230312131318.351173-9-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_100849_379938_67A35198 
X-CRM114-Status: GOOD (  19.08  )
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

SGksCgoKVyBkbml1IDEyLjAzLjIwMjMgb8KgMTQ6MTIsIEtyenlzenRvZiBLb3psb3dza2kgcGlz
emU6Cj4gVGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0
YWJsZSBzaG91bGQgYmUgYWx3YXlzCj4gdXNlZCBhbmQgdGhlIG9mX21hdGNoX3B0ciBkb2VzIG5v
dCBoYXZlIGFueSBzZW5zZSAodGhpcyBhbHNvIGFsbG93cyBBQ1BJCj4gbWF0Y2hpbmcgdmlhIFBS
UDAwMDEsIGV2ZW4gdGhvdWdoIGl0IG1pZ2h0IG5vdCBiZSByZWxldmFudCBoZXJlKS4gIFRoaXMK
PiBhbHNvIGZpeGVzICFDT05GSUdfT0YgZXJyb3I6Cj4gCj4gICAgZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9zYW1zdW5nL3M1cC1qcGVnL2pwZWctY29yZS5jOjMxMjQ6MzQ6IGVycm9yOiDigJhzYW1z
dW5nX2pwZWdfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNv
bnN0LXZhcmlhYmxlPV0KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgpBY2tlZC1ieTogQW5kcnplaiBQaWV0cmFz
aWV3aWN6IDxhbmRyemVqdHAyMDEwQGdtYWlsLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3NhbXN1bmcvczVwLWpwZWcvanBlZy1jb3JlLmMgfCAyICstCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zYW1zdW5nL3M1cC1qcGVnL2pwZWctY29yZS5jIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9zYW1zdW5nL3M1cC1qcGVnL2pwZWctY29yZS5jCj4gaW5kZXgg
NTU4MTQwNDFiOGQ4Li44YmU4ZTM1OTZlMDcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9zYW1zdW5nL3M1cC1qcGVnL2pwZWctY29yZS5jCj4gKysrIGIvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9zYW1zdW5nL3M1cC1qcGVnL2pwZWctY29yZS5jCj4gQEAgLTMxNjYsNyArMzE2
Niw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHM1cF9qcGVnX2RyaXZlciA9IHsK
PiAgIAkucHJvYmUgPSBzNXBfanBlZ19wcm9iZSwKPiAgIAkucmVtb3ZlID0gczVwX2pwZWdfcmVt
b3ZlLAo+ICAgCS5kcml2ZXIgPSB7Cj4gLQkJLm9mX21hdGNoX3RhYmxlCT0gb2ZfbWF0Y2hfcHRy
KHNhbXN1bmdfanBlZ19tYXRjaCksCj4gKwkJLm9mX21hdGNoX3RhYmxlCT0gc2Ftc3VuZ19qcGVn
X21hdGNoLAo+ICAgCQkubmFtZQkJPSBTNVBfSlBFR19NMk1fTkFNRSwKPiAgIAkJLnBtCQk9ICZz
NXBfanBlZ19wbV9vcHMsCj4gICAJfSwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
