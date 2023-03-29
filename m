Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14A8AC74A5B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 07:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5udTCS7scQkY1yeB45ymtft8zhHVoIdU+suTmDSOI+Y=; b=rSumV3I5t5kdm4
	P5tCVtwmlZk4TomRckl/zeEWFjDjTzI9hGKWKOnWusFu9fRy9ykyVMa5xtk4Zk37I68lqLksTtudI
	gx+9ZxcM1XwglQ8Pwl1XlBFF4xLA/wqC9KbLl5s04wfANUNjoqQspJH78vkUAWr1XqGbEZ+N/vdh6
	Y8DWPGxZMSG76DF9wK29bxRKCN0bGYGPHU7QCUlHbO2eeZ7raOTZ9pt5m7HRW86Bo0YjB5eXwbki1
	dDvbGzYQo8/9h0OkoJ//jCYqXu1F5TycH0ZcO1qsJhn9izg8wJuYUnaXyxJg25Bc2rfSExL18dkHX
	16HJgSt3+kIAQ98nsuaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phPzm-00GseH-33;
	Wed, 29 Mar 2023 07:13:22 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phPzi-00GscZ-2Y
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Mar 2023 07:13:20 +0000
Received: by mail-lj1-x22c.google.com with SMTP id h9so15075466ljq.2
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Mar 2023 00:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680073997;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tjz4YY6475MDr5O8cC77sTPGv7vBqMb5/BBOLn/SVfo=;
        b=MRtmY6Sh0Urs9hIQEFX25PAVvlSXcMe+uCuWyT0FSHfRII2WE6jEemrt3H/G97TI8g
         UaO0l6ZMoo4Dw0W8Bu2wDUhT68ebAGzQn5ud84/RJC26Q5aHkW443xy9ifd/mJ22N7Ex
         vkRgCmSLtUp+BKq/Jo78BLRkrH2a77RS4aD/NOWUkBeAQ6RXWQTWqxIoJewmPI8+mjuo
         B07ke0nHNqkz99Lw+Z5uVD2NkIxAH8CgjxW21q3pDMuXgofb9yox5n5IkvSHPTUvqdzO
         T4ypTATDANkBPDFLxe0SzFMnsOOrl/ZEp0Ud0aiJGqas5o3aHapXgjglf5kpIn2/Ex+o
         YI7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680073997;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tjz4YY6475MDr5O8cC77sTPGv7vBqMb5/BBOLn/SVfo=;
        b=Fy2yV7ZnCEWtNCdVaJXkgzl0VXekUhOTw7OS1rrEEBKEtJEBL5VHPDZReGSQd/0BKK
         NLi1YI8NZ4wAwYz4/mqoFrWJsxhC/mg7OYyPm7vY0CiyVW6ygsvUWJO7TyUJ2aav1RAW
         5+ljqOKsh7+VpuUQOt8lLMmLmkrgZnFscxzWCBoigk89mChHtEBWsy1BNjponZn4QrI7
         qhD9lAxx+aV2/ii14cyMRZvnNVTBkMKtcqXwXvtAbcaq7aVeF3F2g9FA+/PwNGk9DawV
         WI5HFp7DQqviqXG08P8F4GqDwFsruIKbrcGFHkf02zBOwbDx1gBubux/h3skXovfmCqk
         1Gaw==
X-Gm-Message-State: AAQBX9fa9ZQFzVxuOjIk49+7MNFvu95zMbbFBzHJRnMCrLgbi3c/q2xs
	6DmCgH4+LHfGYlq3Wu+eAEntGw==
X-Google-Smtp-Source: AKy350Z3U5ebYnTlRO47AoMVt8i3K/fuetG/Bfiu2U0Js/vspmuVMfQmnKLBM1VvfiYcYbjVFKhcKw==
X-Received: by 2002:a2e:9d0c:0:b0:29e:4fa5:1708 with SMTP id t12-20020a2e9d0c000000b0029e4fa51708mr5731177lji.3.1680073996921;
        Wed, 29 Mar 2023 00:13:16 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x26-20020a2e9dda000000b0029bd4365c95sm4697519ljj.87.2023.03.29.00.13.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 00:13:16 -0700 (PDT)
Message-ID: <6e1f4885-e8b9-8031-c25f-a9b18c187e56@linaro.org>
Date: Wed, 29 Mar 2023 09:13:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 02/16] spi: mtk-pmif: Drop of_match_ptr for ID table
To: Stephen Boyd <sboyd@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Andi Shyti <andi@etezian.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Daniel Mack <daniel@zonque.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Jerome Brunet <jbrunet@baylibre.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, Mark Brown <broonie@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
 <20230310222857.315629-2-krzysztof.kozlowski@linaro.org>
 <7e58e5c86bd602932b762f9364209e31.sboyd@kernel.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7e58e5c86bd602932b762f9364209e31.sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_001318_868260_ACAC2B67 
X-CRM114-Status: GOOD (  11.47  )
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

T24gMjkvMDMvMjAyMyAwNjoxNywgU3RlcGhlbiBCb3lkIHdyb3RlOgo+IFF1b3RpbmcgS3J6eXN6
dG9mIEtvemxvd3NraSAoMjAyMy0wMy0xMCAxNDoyODo0MykKPj4gVGhlIGRyaXZlciBjYW4gbWF0
Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBzaG91bGQgYmUgYWx3YXlzCj4+
IHVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBhbnkgc2Vuc2UgKHRoaXMg
YWxzbyBhbGxvd3MgQUNQSQo+PiBtYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZlbiB0aG91Z2ggaXQg
aXMgbm90IHJlbGV2YW50IGhlcmUpLgo+Pgo+PiAgIGRyaXZlcnMvc3BtaS9zcG1pLW10ay1wbWlm
LmM6NTE3OjM0OiBlcnJvcjog4oCYbXRrX3NwbWlfbWF0Y2hfdGFibGXigJkgZGVmaW5lZCBidXQg
bm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3Jn
Pgo+PiAtLS0KPiAKPiBJJ2xsIGZpeCB0aGUgc3ViamVjdC4KPiAKPiBBcHBsaWVkIHRvIHNwbWkt
bmV4dAoKVGhhbmtzLiBBcG9sb2dpZXMgZm9yIHRoZSB0eXBvIGluIHRoZSBzdWJqZWN0LgoKQmVz
dCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
