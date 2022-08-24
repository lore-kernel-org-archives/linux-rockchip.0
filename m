Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07947C00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 12:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfHLh9dvZ1Go6PYXsEJo/zgOl0IE6qVa8iKHqlmXuX8=; b=XVHOCeiommRRDf
	aeeRrrtb3imQVg/5rJ28ywX0TmG/fN5npi9UbTAKK+t7/l/rze5CSs1JUxdPb/QvJ1zvB+UP1wLZ2
	JBvA3+dyc5043ZYk48NNwtM7SlWFFnQCm613M47g7WbSIUH92jY7Fb8gzXUmeOMN3Dky/xOhc89eh
	wfHS2VMurQGSuKt3alWAZmXNz0yfyOqjAmGNEccXDFvq2gNVa+68IR202yAWlVqVz8THNC/X6/Ckq
	Aay2JXpsIb6O6lwCxZHdnqbJGUBUzgOgaOMkmxr9wtV0rWHqFQ+SHs/6b4yKSFesCQo+y4CpF08PD
	bJJOB8Qj4WLYcnLoFkeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQpit-00CtWO-IQ; Wed, 24 Aug 2022 12:43:07 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQpiq-00CtU1-SH
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 12:43:06 +0000
Received: by mail-lj1-x230.google.com with SMTP id by6so16299659ljb.11
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Aug 2022 05:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=pxiXsQLkUIpn6DGyvkM4zbmFK0oHck5Mi5OKHLvklTs=;
        b=cL14yVias6q4TrCCRX8JyZ3WRtQmRBsKcXr0WFPwQ+W703goRyFeRJbmCMpi0Nyci6
         JN7SccWcpoEghRu5U5lpfLgsdxyvFXk7hQTkBnrO2jbLh57AhmsGzzitc1+aB8nkyP5D
         0boEkLKRLbMBuSXVwFJ5kMUOvJHWJEwDjv/cmPKRDpoU0rco0I0Kgyg/t/rsP53LLR0H
         MHkgYg7YZbsiQaXU2p3Bv+e5e2bJ9DPMWC7Sz2Y5c3Lo343sreSzbyngMTqhHk9Satre
         fDoJVyysQxNqA0vPEL4L3UYlZyLGoSA8+KXuxJuT7IDSdfUg32o5DAtPzIZ5Z6fWKGOD
         lqGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=pxiXsQLkUIpn6DGyvkM4zbmFK0oHck5Mi5OKHLvklTs=;
        b=LdmpY4nz9J6Ag+7Ss0PYBzAS46+9upOmhev+ghPNI/gmUSyWEvErrxqAFY41WNprUD
         oTI3UJPh0EWX7JSbufOuO1KOJpX73foohwsFa41s1x5HqcaYRmtM0AGVjGOAdQOPODEs
         QjEhRGcC4KVYaiNfPsqynvN9FD85vuEf38ux4W6azDEreulASki5WaxB4FdzZ4Ac4gL8
         14MwGmzIomi2Md5rU+gMA1sgyov/T5oPnleC4OmJjkcnukBPBCBP3aIOdGu+FoEnGV8w
         nj2YiBuvgoGlmuatJI4dcuUHnf38tBFGVLaeP9H0t5Gjbh50L0mK0LysPOcD5+HP0+YR
         EUyA==
X-Gm-Message-State: ACgBeo0DLFfAM0xdH1i83Ybi7+L4CEUkEgf9SmN3VZXF61UzLKGV93xT
	g/c6JWdlS0g0h5pS/J2h9ZY40w==
X-Google-Smtp-Source: AA6agR7ji62LjBNkX7cD+aGHg9cuNELrVZrVNcfWS9UyQUXEbBZM0ZZvylp8anfeha84FCHLouskfQ==
X-Received: by 2002:a2e:8844:0:b0:261:ae7e:bb93 with SMTP id z4-20020a2e8844000000b00261ae7ebb93mr8587585ljj.157.1661344980697;
        Wed, 24 Aug 2022 05:43:00 -0700 (PDT)
Received: from [10.243.4.185] ([193.94.200.84])
        by smtp.gmail.com with ESMTPSA id v27-20020ac2561b000000b0048a835a60f6sm1017666lfd.251.2022.08.24.05.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 05:43:00 -0700 (PDT)
Message-ID: <3df563de-1900-ad60-5771-618907d5fda0@linaro.org>
Date: Wed, 24 Aug 2022 15:42:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
References: <20220824080903.3696847-1-jagan@amarulasolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220824080903.3696847-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_054304_938139_0163B1B6 
X-CRM114-Status: UNSURE (   9.06  )
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

T24gMjQvMDgvMjAyMiAxMTowOSwgSmFnYW4gVGVraSB3cm90ZToKPiBEb2N1bWVudCB0aGUgZHQt
YmluZGluZ3MgZm9yIFJhZHhhIFJPQ0sgNEMrIFNCQy4KPiAKPiA0QysgcmVwbGFjZWQgRFAgd2l0
aCBIRE1JIGFuZCB1cGRhdGVkIEZQQyBjb25uZWN0b3JzCj4gZm9yIE1JUEkgRFNJL0NTSSBjb21w
YXJlZCB0byA0QyByZXZpc2lvbi4KPiAKPiBBbHNvLCBhbiBvZmZpY2lhbCBuYW1pbmcgY29udmVu
dGlvbsKgZnJvbSBSYWR4YSBtZW50aW9uCj4gdG8gcmVtb3ZlIFBpIGZyb20gYm9hcmQgbmFtZSwg
c28gdGhpcyA0QysgaXMgbmFtZWQgYXMKPiBSYWR4YSBST0NLIDRDKyBub3QgUmFkeGEgUk9DSyBQ
aSA0QysuCgpUaGlzIGRvZXMgbm90IGxvb2sgbGlrZSB3cmFwcGVkIGFjY29yZGluZyB0byBMaW51
eCBzdHlsZS4KCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjE4LXJjNC9zb3Vy
Y2UvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3QjTDU4NgoKV2l0
aCB3cmFwcGluZyBmaXhlczoKCkFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0
b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
