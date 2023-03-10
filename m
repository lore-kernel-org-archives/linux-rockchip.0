Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC3CC6FD1E
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 22:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dlb+aai5pnfPO8GMZfQcfJJpxjDZEVBj32v+8P2yT2o=; b=qVaeSQhJarK2w29EwaxfU25jgp
	k0esl+OeWTYYFbhZt4+acTOdC8JRnqMVybtIcmgURnnCP9lLrbD+kglEx8OdkmNE0ecQnpQ0MTXvp
	TrG2czJP5EQaf4oS/8e1QIoNGYTMlCt+cGK2O9QP7qG89NZo+Y/08wFpedIAACfWA/SG2YLbhfprj
	MVF/x+v7LmzrEYekaQcz46pf9USwOaZ86GI6CoNsvgMdTcEIvd1zhkOTBL9raKOGnr2LvUF7aJPlC
	QC/mi18pi1hTme5aNj0+P/NcvrEM1kOm80NZJHZbKj7i13GL5WNNU7cY4dSV/Ni5WIGRgV9VD/6V7
	qMWoq0Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palLh-00GQ13-0K; Fri, 10 Mar 2023 22:36:29 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palLW-00GPw8-3y; Fri, 10 Mar 2023 22:36:19 +0000
Received: by mail-pl1-x62b.google.com with SMTP id h8so7138556plf.10;
        Fri, 10 Mar 2023 14:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678487776;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fdktugCeDYX7Xr0TGxaeM93AvHbyY1/wFRGjyxUuajs=;
        b=M1ZMRujq71QwNYOMXmSJfUAnJ1DSMCIGcvzxhEOotk682w9u9GEHysFIMuExQ7ZRAA
         +/D7VhQJAQM9USbfZQmmO9kgulOmmwjifP2lqS1qe/UgjP+H5pUWcJ4p+zq/k3eX26M5
         nE6IuGepTTXbHdzhNu/8PpHzHnRMxu7hsx4bql1bRc1kXMp/5jOGKGL2AzkIjr2YlnEn
         7XBIhyBxAuu/IVU0elGOSz0lLVKyr/Y3ohuxBqc9k9zJQTJFJM1crBoz3e52T5Hembkg
         2yS4GGCW3Isgcqyyp1vp3e1re3Bor6nDZam2Jv2enrKjHXS+wZfFMcjCnSfzOoMS+XNs
         YLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487776;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fdktugCeDYX7Xr0TGxaeM93AvHbyY1/wFRGjyxUuajs=;
        b=G1h7j0h46giuqeBashSqdAxqiAmG8spBcEKH+wxrTE06BSWJBWCyELG8wJGjMvBSoR
         3RG5UfTZmr1JR6xBv8wTYpI+G9HO41tb9w15CpGQF0bfdYQ3U3bWZmuk5MyPoNeY3nZE
         eOUNUwZXFucb9mc9TCT0oBpbZ5+RYMkW0QSsIzxoRsvb6IwKV+KNwH6UQZ3ZdWF0Se43
         rYbLg/4Ma567LCNplcyK4L1C6e1O+y1XjrkVZMfpz8TBMhyB/DNz+U3ZTkwUMTRirFii
         Uy/I3taq0UUNP2rGcHEauwUVIPIC0FcH8PizKJlFqro/c/9ZrXBpWK4S3TUrqumikK7f
         N7OQ==
X-Gm-Message-State: AO0yUKUChPqJS/3OT+C3cV7hO6dvopgKbDqH0Efhu6XM/mfR3jHMBPAU
	U5+1YYcIWDMuepuxkrC+3kY=
X-Google-Smtp-Source: AK7set9K8J5zoNaziqXtI5ePAA7X83vRqfUPykoAs++3T/PClevhmaBdF8gk1RK17qwYtdSNKjM8Pg==
X-Received: by 2002:a17:90b:4f49:b0:234:190d:e655 with SMTP id pj9-20020a17090b4f4900b00234190de655mr28911929pjb.44.1678487776377;
        Fri, 10 Mar 2023 14:36:16 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id y15-20020a17090a390f00b002339195a47bsm365387pjb.53.2023.03.10.14.36.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 14:36:15 -0800 (PST)
Message-ID: <35216994-c834-73aa-a702-d4d75bb87897@gmail.com>
Date: Fri, 10 Mar 2023 14:36:13 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 13/16] spi: bcm-qspi: Mark OF related data as maybe unused
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Mark Brown <broonie@kernel.org>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>,
 Andi Shyti <andi@etezian.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
 <20230310222857.315629-13-krzysztof.kozlowski@linaro.org>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20230310222857.315629-13-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_143618_198461_0EEC991D 
X-CRM114-Status: UNSURE (   9.07  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMy8xMC8yMyAxNDoyOCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBUaGUgZHJpdmVy
IGNhbiBiZSBjb21waWxlIHRlc3RlZCB3aXRoICFDT05GSUdfT0YgbWFraW5nIGNlcnRhaW4gZGF0
YQo+IHVudXNlZDoKPiAKPiAgICBkcml2ZXJzL3NwaS9zcGktYmNtLXFzcGkuYzoxNDYwOjM0OiBl
cnJvcjog4oCYYmNtX3FzcGlfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJy
b3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2Yg
S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgpBY2tlZC1ieTogRmxv
cmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tIApGbG9yaWFuCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
