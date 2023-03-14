Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 932D0C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 16:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0APz3EVBdmgQYvJJVt2Rn9jv5juno0K9zhSIT2jyrkA=; b=OUxgIDoskr5TbO
	9jxwsb2AkCv2xTR6RD6kzPWLKjcUP3UHyChyJYUtzhyPn1jLvXzrwiEpFjjxxvGNBRN1KpcIllp/9
	x9ay0yOUMn6fdNOaJkLsmPwA0Pp0Cp00U3MBwhKb64ukA8xzbaGPtG/x8fI4F3SZq5rTFms8/LBtM
	9yYnsKe/toQje/BnobgoGgMhDwzfTw0Gy/Z/dKwlG6tZ+WJtc9e9CcIstBpkiQKxxEGeiAwX7d+dv
	QDt1u9W9nwY3fLIMTxFcIYNC3/e4ZGRbKp9qwy64uxYgYxLS3Ur+zgQkEcvwRgC+nPbI8vIvUmYT3
	XOIdDe/NaQL89xYBwRdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc7Yq-00AqP6-24;
	Tue, 14 Mar 2023 16:31:40 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc7Yn-00AqMJ-2x
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Mar 2023 16:31:39 +0000
Received: by mail-ed1-x52e.google.com with SMTP id o12so64393251edb.9
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Mar 2023 09:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678811494;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6Z20n8EovjQK6WWHRBaG09kppsRVXiyp2olQcDL0XJ8=;
        b=JK44/SsDXBuPDZzc56hUjt+1W7VutqTow1gDp4b7GRufbuYANwBW3zJWk/Fdr5oy1V
         5NvGdMpCt9KdMMZ0wXSMshyMmavoyRhfXn4dByC3Ra59ZWEliXiB8mN8v7xyWYoY+EKx
         9NbExJxy4XW5gsNpzG0e2gSwtq/3tG8E45K4EBifKcy720nyV6KKjD8tKWWC0RxYMvI4
         CZgvENMmgS4n83pA7Klyg+owq9LWy3TuivG7ClIC6BZPRDK/whWULBNFJTPomgpe6M8U
         PpRFx1/qm8hUiI8BU9FhfgfI7bFQIDM024dDiYyf9bSQQj+BqJ/PDrxtzbJWxOGY3L03
         zCCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678811494;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Z20n8EovjQK6WWHRBaG09kppsRVXiyp2olQcDL0XJ8=;
        b=zgOciWSq6MT8PGzT2PJQEcIOL+1gJs0HVcj/fig3S/vVBzE5SwTwbKT/2RCE8rPdUR
         U5nF+Cwtl95MzKm57sbhWf/5KkweRpaYkLkALl9nBCWqflfNxmtgQtfSNEdnrleuQCAo
         p3oamtSpBFzzNz1CTztTO3vpxWgh/fyp8K4mdsKSQtu2FjTxbDdQ1/XR3+5Ain0lZq3N
         DKTCVYKZItlDiaWfK0D96S/rN+4+A9UbPveC56HWBmabSiVlsnCjIpvNwz1gJa2Mcatt
         tPvE8tNSG8W7SuqtQzDbEDwUV+vqyuYW5qjTZzeAguCeR8Eh4/rixsefycb7/uw3tgtR
         A5Zg==
X-Gm-Message-State: AO0yUKWWOK+Y/T3fYG75WyZFHYFokGKaILMkheRG5Ov2oweUIcJHzekR
	/Kt/8nKssJrUM4JD/1HkHjSKMg==
X-Google-Smtp-Source: AK7set/vSQlRu82Czuk12ElmMiD/0af+VwTO3KMyjJOjl9VfNhfnYkq0M4g5zeFFPauB5KWKj9oZYg==
X-Received: by 2002:a17:907:31c1:b0:92d:6078:3878 with SMTP id xf1-20020a17090731c100b0092d60783878mr2427954ejb.33.1678811493961;
        Tue, 14 Mar 2023 09:31:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id 18-20020a508e12000000b004fa380a14e7sm1281024edw.77.2023.03.14.09.31.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 09:31:33 -0700 (PDT)
Message-ID: <5092a0b0-6a31-f984-e28c-ca11bafef6bb@linaro.org>
Date: Tue, 14 Mar 2023 17:31:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 01/28] media: cec: ch7322: drop of_match_ptr for ID table
Content-Language: en-US
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Joe Tessler <jrt@google.com>,
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
 <4ee5e059-6e9f-0804-30ec-ff073f436780@xs4all.nl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4ee5e059-6e9f-0804-30ec-ff073f436780@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_093137_953354_AF778C43 
X-CRM114-Status: GOOD (  11.69  )
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

T24gMTMvMDMvMjAyMyAxMjo0NiwgSGFucyBWZXJrdWlsIHdyb3RlOgo+IE9uIDEyLzAzLzIwMjMg
MTQ6MTIsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IFRoZSBkcml2ZXIgY2FuIG1hdGNo
IG9ubHkgdmlhIHRoZSBEVCB0YWJsZSBzbyB0aGUgdGFibGUgc2hvdWxkIGJlIGFsd2F5cwo+PiB1
c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRyIGRvZXMgbm90IGhhdmUgYW55IHNlbnNlICh0aGlzIGFs
c28gYWxsb3dzIEFDUEkKPj4gbWF0Y2hpbmcgdmlhIFBSUDAwMDEsIGV2ZW4gdGhvdWdoIGl0IG1p
Z2h0IG5vdCBiZSByZWxldmFudCBoZXJlKS4KPj4KPj4gICBkcml2ZXJzL21lZGlhL2NlYy9pMmMv
Y2g3MzIyLmM6NTgzOjM0OiBlcnJvcjog4oCYY2g3MzIyX29mX21hdGNo4oCZIGRlZmluZWQgYnV0
IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9y
Zz4KPiAKPiBSZXZpZXdlZC1ieTogSGFucyBWZXJrdWlsIDxodmVya3VpbC1jaXNjb0B4czRhbGwu
bmw+Cj4gCj4gSSBhc3N1bWUgeW91IHdhbnQgdG8gdGFrZSB0aGlzIHNlcmllcywgYnV0IGlmIHlv
dSBwcmVmZXIgdG8gaGF2ZSB1cyBkbyBpdCwgdGhlbgo+IGp1c3QgbGV0IG1lIGtub3cuCgpJIHBy
ZWZlciBpZiB5b3UgdG8gdGFrZSBpdC4gUGxlYXNlIGdyYWIgaXQhIDopCgpCZXN0IHJlZ2FyZHMs
CktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
