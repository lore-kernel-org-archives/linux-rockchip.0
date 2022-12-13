Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50D1DC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Dec 2022 08:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpFLEliq76Mm9YZIBFmT36l1K8kzoM7h4w7KJuvazng=; b=LnebwBrEajGhm7
	FuHwelO0VLHdtqa/8NXD6eXkgPwY90g7K1/qp/RFqMaWjz/JcKZiiXlOhtKgfLkQbGctN9F/NQ3ON
	BE2CvCybBzeuYoRdmCpNI0BqlC8Jd7+3BG66velfrZ1Uey1KlMbft3W6jyQ2GGauMyhtsKhBr2z9V
	pubi3CCU0bDB9I0t0gnXTV4IkHUU5VAyB2rg9TnxcCcDQOXNvS/ht0lbaS+rU6CHc44t3oWyQrfO2
	UOTKDp03gZRN927zKLb0cVP6/oZtprzMxsAdIQKGUZFJEuAneUKp6jNc1b2MMQRtzXc5miyFEiCQ5
	haHlgvd7kcyzdRubAC5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p50xV-00E3uW-ST; Tue, 13 Dec 2022 08:48:17 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p50xK-00E3n2-2P
	for linux-rockchip@lists.infradead.org; Tue, 13 Dec 2022 08:48:09 +0000
Received: by mail-wr1-x434.google.com with SMTP id u12so14828226wrr.11
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Dec 2022 00:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V8Zjj3N/Rus1SUj60QIPVCtKEcMrA/Mh+KnOE6zWGQQ=;
        b=DzbTaCKlcSRjCYFGuV+AZ+zl/Uk7/q5BX8CDbZivcZks1YBMRajl9TsAkGpQ8v9ecE
         I3MtFlh7um6HblRxWKty5U9MxWUbjN9TJ3Ov7+ASBwvX7+HiGZWQYY0iQPLD9W+RE3Kl
         RD1qyyLXzyPS0qjGZWyKg5bjR5f5mTylrem2U7o369tYA0iCFjmMunGkqL9K1O4mT0QO
         LHgwQ1xn5j0llsiso4O/tkKLQ7BKwlYN2CD40/94h0vCwvmmngCUdrnEaQJHSw+DNA+6
         W/Epk2p9U4txXabivW0zNOc3exw0YMvEeCnvWgPHxpHKwghTNPomqJ5BsxbLP/Um6AIS
         nl3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V8Zjj3N/Rus1SUj60QIPVCtKEcMrA/Mh+KnOE6zWGQQ=;
        b=EdLOeZ/HZzXNgQX171tJ5utycqd6sJPbU1xmr176UbuwCimOenJ7uDg3nrE7Z+TPLn
         FROgJP2cvAFwyqReOlpxiSAeS8XDuu6/C+CC7yxljphEMGERJ9xHa79RykZnW1sfX1EI
         enE17GOXgGPQK6knakEF/m7us3ZKUBAr1agcAzpd8di63mw3PfZNsFGxehUo0JYw/Ou4
         ZJSQyVymkIoyKcRnPcvHRu8vD6aZvKbtUJvdBi4bXfkDMxKgZWk12bqLhRbiZY3gkve7
         DVRQtkPqpKBYO0rMKdq2AnCFphY0L1czD1vSVN3EjwS+wvgAmbC4TMzT48MFhZmlB4kj
         oogQ==
X-Gm-Message-State: ANoB5pkOqMBT3ocMPs2/HR2ROMQmAm6WmgSE42UvErv8a55vHSVgsiId
	IwQlWi9rL4VUYume8wL2zd2O4g==
X-Google-Smtp-Source: AA0mqf5rUlKo1swuyzbiW4JK9YiojP4ez25mYVh7JGfYdULVwWzXg+jgiRlAHFdeXqfNSS59HxvDfQ==
X-Received: by 2002:a05:6000:1c2:b0:242:63e5:fdaa with SMTP id t2-20020a05600001c200b0024263e5fdaamr10915979wrx.62.1670921283123;
        Tue, 13 Dec 2022 00:48:03 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id x1-20020a5d60c1000000b00241c712916fsm12953578wrt.0.2022.12.13.00.48.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 00:48:02 -0800 (PST)
Message-ID: <11c88b9c-00f0-d1b0-8a98-059a58e456f7@linaro.org>
Date: Tue, 13 Dec 2022 09:48:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v8 2/8] dt-bindings: timer: rk-timer: Add rktimer for
 rv1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>
References: <20221123183124.6911-1-jagan@edgeble.ai>
 <20221123183124.6911-3-jagan@edgeble.ai>
 <CA+VMnFwVt=t6kmYrvGgSJdkZDnHMuxKPHtyFCU7vBaGHa4hc6Q@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CA+VMnFwVt=t6kmYrvGgSJdkZDnHMuxKPHtyFCU7vBaGHa4hc6Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_004806_166907_A6E56BB9 
X-CRM114-Status: UNSURE (   9.62  )
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

T24gMTMvMTIvMjAyMiAwODo1MCwgSmFnYW4gVGVraSB3cm90ZToKPiBPbiBUaHUsIDI0IE5vdiAy
MDIyIGF0IDAwOjAyLCBKYWdhbiBUZWtpIDxqYWdhbkBlZGdlYmxlLmFpPiB3cm90ZToKPj4KPj4g
QWRkIHJvY2tjaGlwIHRpbWVyIGNvbXBhdGlibGUgc3RyaW5nIGZvciByb2NrY2hpcCBydjExMjYu
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGVkZ2VibGUuYWk+Cj4+IC0t
LQo+IAo+IERhbmllbCBvciBDYW4gc29tZW9uZSBwbGVhc2UgcGljayB0aGlzPyBIZWlrbyBpcyBo
b2xkaW5nIHRoaXMgc2VyaWVzCj4gZHVlIHRvIHRoaXMgcGF0Y2guCgpBcHBsaWVkLCB3aXRoIGEg
dHJpdmlhbCBjb25mbGljdCBmaXgKClRoYW5rcwoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcv
PiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxv
dyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9v
ayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93
d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
