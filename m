Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CDE8EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 17:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8e0Jr0z0n5D0p+SI4WssFKOfZsXEofzSsn8rRKlZT0=; b=GWxVQ6j+kOb6qP
	DcYc8hlfZBxSiCYblQ5rEv+7ml1/bTL6WdsPltchjzaORPp3tadAa15c16M6yqRmJPmpLoNVOMK9y
	1T93bptlS6/5XG1dtIZGsy/UybYjv7CvAta8tA40tKk38TgzCEDniSk0lpcN93K3tOOjk40BxZj4W
	XvmL8p7d8DlsfIxfm9D6qDvHlyyc3/gMkiCMJ/55L5hHb5ZB/TBjpB5rcc9C7mspKnqy6bEEUsqQ7
	wP8bJ2ji7A98/LKFGyztDco9jBlNRNSLk+EVqklGdnQPd2pdeX4w3djNOfBijt9O4pYQq8y2OeZ3k
	C3v3hWBRt3kQE9Ucj9dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAZwe-0041HL-1j;
	Sat, 17 Jun 2023 17:42:40 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAZwc-0041FB-20
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Jun 2023 17:42:39 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9829a5ae978so296638366b.2
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Jun 2023 10:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687023752; x=1689615752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3wWvAWGQ6I3uVKkcwPxaCb9XbFnbEdfsJNuIbFzDQyw=;
        b=aRdxjDw/1uvXnJ//jlaQwyS/TqDcl1/7LzBQg/R1EXypY+rnCSK/aDPHd6Q+4ARnv4
         +NGnyV7dsW8AqrGmOwr/rR/VMnnoMMuDleT1XolFanwT3Kgg/pD9yP/t1KZl2GV3AH2j
         AZ7OuposYBI5ZkMMLmh/SKduk8jAxGkr6PFfpHHDhqjOcr/g2KkxXV+a6lk/CygopQ3j
         x/+8JctmHVdvEvaDP4TZBDZi5y2qR8yQMAKQwdTO1UPbtICOJVQ4Tmk/vjKUUT3+kWPG
         9Bb4KFGsv84LnW8l0rr4tltcD4pVuRDZD9jAHZhRxHlAgdpSDg/6P5R8vxdC0LmUzS/2
         rMpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687023752; x=1689615752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3wWvAWGQ6I3uVKkcwPxaCb9XbFnbEdfsJNuIbFzDQyw=;
        b=PZG2bco6bHjddq+BQCySlYBvKgmZu0JxFRjT3vCq65OCsATEE9R/PyqFj7uFTP2JUK
         myQcj67vgPhYTsfRVevQtsfWV7HBov1JngoTl+NLLo1eJ90fOcnwwQYSmlBBAmw98LFN
         MxMm9hbwUd8+lBBE2JPCUvsNcv9KLe4YTZlvs8ZMI7Wxqe3EVsvndupFonERubB2ZmFW
         WcgskQ8sXCVQZGeWJ0FqRA87Bg8JUkyhiSP7NoAJjuTHV7dmhm7hFXIEpNW5oQqxSjGp
         ZFUTwpDZ9OJyyQyLden46TYJN3eK8RwZgAD2j7IeqYv82DURJjNearEu7v3IR9jWH5ZN
         xowg==
X-Gm-Message-State: AC+VfDwqtWTEdJOlwjBTduD3iPrpjxumjMRAWDI7rufmkTJiGWm434mu
	bA+1cwP+zWox/0b0/CofCvPVEQ==
X-Google-Smtp-Source: ACHHUZ5PyeAyyYwAOEyIOLQVoZ7ixv/ktFKK7Bl05nXnE2sYt17DPKOVjyphVc5AwypZukVfvRQ7mg==
X-Received: by 2002:a17:907:a41e:b0:978:8ecd:fa75 with SMTP id sg30-20020a170907a41e00b009788ecdfa75mr5415289ejc.9.1687023751850;
        Sat, 17 Jun 2023 10:42:31 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id m22-20020a056402051600b0051a4efed295sm51678edv.7.2023.06.17.10.42.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 10:42:31 -0700 (PDT)
Message-ID: <c29b2b0c-2b0c-f79c-9de5-58a67edd5c87@linaro.org>
Date: Sat, 17 Jun 2023 19:42:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/3] dt-bindings: backlight: lm3630a: add entries to
 control boost frequency
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Maximilian Weigand <mweigand2017@gmail.com>, Lee Jones <lee@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>,
 Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Maximilian Weigand <mweigand@mweigand.net>
References: <20230602-lm3630a_boost_frequency-v1-0-076472036d1a@mweigand.net>
 <20230602-lm3630a_boost_frequency-v1-2-076472036d1a@mweigand.net>
 <17576d81-a342-0b77-367a-eb9f2b97b734@linaro.org> <7491264.lOV4Wx5bFT@diego>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7491264.lOV4Wx5bFT@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_104238_664524_ADA626E6 
X-CRM114-Status: GOOD (  13.14  )
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

T24gMTcvMDYvMjAyMyAxODozNCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gU2Ftc3RhZywg
MTcuIEp1bmkgMjAyMywgMTI6MTI6MTcgQ0VTVCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6
Cj4+IE9uIDE0LzA2LzIwMjMgMjE6MDgsIE1heGltaWxpYW4gV2VpZ2FuZCB3cm90ZToKPj4+IEZy
b206IE1heGltaWxpYW4gV2VpZ2FuZCA8bXdlaWdhbmRAbXdlaWdhbmQubmV0Pgo+Pj4KPj4+IEFk
ZCAndGksYm9vc3RfdXNlXzFtaHonIHRvIHN3aXRjaCBiZXR3ZWVuIDUwMCBrSHogYW5kIDEgTUh6
IGJvb3N0Cj4+PiBjb252ZXJ0ZXIgc3dpdGNoaW5nIGZyZXF1ZW5jeSwgYW5kIGFkZCAndGksYm9v
c3RfZnJlcXVlbmN5X3NoaWZ0JyB0bwo+Pj4gYWN0aXZhdGUgYSBmcmVxdWVuY3kgc2hpZnQgdG8g
NTYwIGtIeiBvciAxLjEyIE1IeiwgcmVzcGVjdGl2ZWx5Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IE1heGltaWxpYW4gV2VpZ2FuZCA8bXdlaWdhbmRAbXdlaWdhbmQubmV0Pgo+Pj4gLS0tCj4+PiAg
Li4uL2JpbmRpbmdzL2xlZHMvYmFja2xpZ2h0L2xtMzYzMGEtYmFja2xpZ2h0LnlhbWwgICAgICAg
ICAgIHwgMTIgKysrKysrKysrKysrCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2xlZHMvYmFja2xpZ2h0L2xtMzYzMGEtYmFja2xpZ2h0LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbGVkcy9iYWNrbGlnaHQvbG0zNjMwYS1iYWNrbGlnaHQueWFtbAo+
Pj4gaW5kZXggM2M5YjQwNTRlZDlhLi5lZjdlYTBhZDJkMjUgMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbGVkcy9iYWNrbGlnaHQvbG0zNjMwYS1iYWNr
bGlnaHQueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2xl
ZHMvYmFja2xpZ2h0L2xtMzYzMGEtYmFja2xpZ2h0LnlhbWwKPj4+IEBAIC0zMyw2ICszMywxOCBA
QCBwcm9wZXJ0aWVzOgo+Pj4gICAgICBkZXNjcmlwdGlvbjogR1BJTyB0byB1c2UgdG8gZW5hYmxl
L2Rpc2FibGUgdGhlIGJhY2tsaWdodCAoSFdFTiBwaW4pLgo+Pj4gICAgICBtYXhJdGVtczogMQo+
Pj4gIAo+Pj4gKyAgdGksYm9vc3RfdXNlXzFtaHo6Cj4+Cj4+IE5vIHVuZGVyc2NvcmVzIGluIHBy
b3BlcnR5IG5hbWVzLgo+Pgo+Pj4gKyAgICBkZXNjcmlwdGlvbjogfAo+Pgo+PiBEbyBub3QgbmVl
ZCAnfCcgdW5sZXNzIHlvdSBuZWVkIHRvIHByZXNlcnZlIGZvcm1hdHRpbmcuCj4+Cj4+PiArICAg
ICAgSWYgcHJlc2VudCwgY2hhbmdlIHRoZSBib29zdCBjb252ZXJ0ZXIgc3dpdGNoaW5nIGZyZXF1
ZW5jeSBmcm9tIHRoZQo+Pj4gKyAgICAgIGRlZmF1bHQgNTAwIGtIeiB0byAxIE1Iei4gUmVmZXIg
dG8gZGF0YSBzaGVldCBmb3IgaGFyZHdhcmUgcmVxdWlyZW1lbnRzLgo+Pj4gKyAgICB0eXBlOiBi
b29sZWFuCj4+PiArCj4+PiArICB0aSxib29zdF9mcmVxdWVuY3lfc2hpZnQ6Cj4+PiArICAgIGRl
c2NyaXB0aW9uOiB8Cj4+PiArICAgICAgSWYgcHJlc2VudCwgY2hhbmdlIGJvb3N0IGNvbnZlcnRl
ciBzd2l0Y2hpbmcgZnJlcXVlbmN5IGZyb20gNTAwIGtIeiB0bwo+Pj4gKyAgICAgIDU2MCBrSHog
b3IgZnJvbSAxIE1oeiB0byAxLjEyIE1oeiwgcmVzcGVjdGl2ZWx5Lgo+Pgo+PiBTbyBqdXN0IG1h
a2UgaXQgYSBwcm9wZXJ0eSBjaG9vc2luZyB0aGUgZnJlcXVlbmN5LCBub3QgYm9vbHMsIHdpdGgK
Pj4gcHJvcGVyIHVuaXQgc3VmZml4Lgo+IAo+IGkuZS4KPiB0aSxib29zdC1mcmVxdWVuY3ktaHog
PSA8eD47Cj4gd2l0aCB4IGJlaW5nIDUwMDAwMCwgNTYwMDAwLCAxMDAwMDAwLCAxMTIwMDAwCj4g
Cj4gd2l0aCB0aGUgZHJpdmVyIGZhaWxpbmcgd2hlbiB0aGUgZnJlcXVlbmN5IGlzIG5vdCBhY2hp
ZXZhYmxlCj4gd2l0aCB0aGUgdHdvIGtub2JzIG9mIDFtaHogYW5kIHNoaWZ0LgoKWWVhaCwgd2l0
aCBhIGRlZmF1bHQgdmFsdWUgKDUwMDAwMCwgSSBndWVzcykuCgpCZXN0IHJlZ2FyZHMsCktyenlz
enRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
