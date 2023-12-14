Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC219C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 16:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQAwqHQjdF7npgX/d0RbYUfQb+oNIZw9P5CRy8qIfvE=; b=KT9umLOGL8Eha+
	AJcrxblgDWPcRwj0FhbYQ1+IHWiRgM9xytyJltuCGZ8dEjZx2STzPtOJoFBwRgc9W0LLC4qrm96Xj
	XLBZo7Ah1nJFHL7ba/5s/mwqaCcuv9LTQl/cXzAA59hUT15WFK3r0jxL0OFBvbEGHmdb9ShgWxHz+
	nxZRbE4OB3mjKMRFSZwxOr3k+n+z0/iWzh+Ynmv+ob4QMMXCUtAcUGDGxlcMNJpy6gTBPfJsFIHC4
	UONYswAzJDkCP1fUXbyCoytkDerpza5eqToDOt9y6TP0tj0aLvDG97iFjkMVIkfDHcenaU2WDsXRO
	3FpXoH4+MXUz2nTZA1Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDoXo-000nMi-1J;
	Thu, 14 Dec 2023 16:26:40 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDoXl-000nLl-1O
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 16:26:39 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3363eba94ebso1499421f8f.3
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Dec 2023 08:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702571195; x=1703175995; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=d3HeMFEjkwHLi7a2aWd2MzxpoFFChdWdBBE6lzLD8F4=;
        b=GHJ/P3eenFzrvM9K/VrKmBpY1Pgsj0iorUj5qYy9tt7+rIC+slXy8tVMWjZQjj1z/S
         ITnni7iKI66Jf2oyqzzXVWDySXh8fRniYKXQ74kc6hELMzUoq9oQE+dq/b/3coidQZ5o
         u7Q7BRvgrchD7PRUgsbEqf/7wTOTXXzxXz4n5B0Wc9KpuKJH9YfSjq/7oDwxm58CraXU
         /esNOW8HN9Ia8/9SgbQYLt33IJTmq8J9jxPMmPM7ZvcwUa78HjpfgSAi+aJOtzk91ZQU
         D1MXoKbd4yZrqDwKS3Dsp7Dw6sWb9WsGVtBueLY8gMICMfNC242qhtC7RqyaSIUarHhL
         9dxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702571195; x=1703175995;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d3HeMFEjkwHLi7a2aWd2MzxpoFFChdWdBBE6lzLD8F4=;
        b=w9Ag/mSfOsPtpjFoWraXjHDCxoYJGYzWZ5562qYYirZ44d1Bu9xUM6+gOasKhnbSO1
         MoE/xtkRwDXrC2Xxn3iZFfZUmKvWPhnQ/7wA05Lzigw9mBiuhHUKU/9ExdQZ7GOUrxd4
         +7SaVWIMq0+B0YOx/MRcF2qABwp8gz4Gv9EknepFva6MfAVDh8vhT2/FO6xEtv891nqp
         WgU7MUcWQLPkoVdDisGLB1kLD0JHoBWOOZktgUm7SyH6frSoMmXCj/URnj+9wuQJvldX
         /QSFavLTd9pOe8ylIMSIytjm9FDPWDfpLq7EMBNlT+MwlOqYjflNOlRLuYFApcr43y0k
         +2IQ==
X-Gm-Message-State: AOJu0Yy7RJbZyo5kLNDSSH7TMQzbZ4CBrhOYvPkUkXQB5emXTD3kmYU/
	002DQ6Tns4qT1J58MhTQ7jCQxg==
X-Google-Smtp-Source: AGHT+IESLwwtCRBsH1tvNGs61R1lIWDuRr9DdZreW/J14JEfwpuA8biE1eOR+NhxMzWS4jy1tttlpg==
X-Received: by 2002:a5d:4652:0:b0:336:344d:8d41 with SMTP id j18-20020a5d4652000000b00336344d8d41mr1276005wrs.221.1702571194831;
        Thu, 14 Dec 2023 08:26:34 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id w18-20020a5d5452000000b00336367631efsm5557996wrv.65.2023.12.14.08.26.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 08:26:34 -0800 (PST)
Message-ID: <6df9fb93-85cf-4c03-b0cd-781d4f42db30@linaro.org>
Date: Thu, 14 Dec 2023 17:26:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/11] dt-bindings: display: rockchip,inno-hdmi: Document
 RK3128 compatible
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Alex Bee <knaerzche@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <288857ab-bebd-4f80-9cdc-9b04fa6c7386@gmail.com>
 <df84a0cc-cb38-431f-864b-012ada7bb0d5@linaro.org> <2221612.3VsfAaAtOV@diego>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <2221612.3VsfAaAtOV@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_082637_526253_02C2C02B 
X-CRM114-Status: GOOD (  11.70  )
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

T24gMTQvMTIvMjAyMyAxNzoyMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRG9ubmVyc3Rh
ZywgMTQuIERlemVtYmVyIDIwMjMsIDE3OjA3OjI3IENFVCBzY2hyaWViIEtyenlzenRvZiBLb3ps
b3dza2k6Cj4+IE9uIDE0LzEyLzIwMjMgMTY6MjIsIEFsZXggQmVlIHdyb3RlOgo+Pj4KPj4+IEFt
IDE0LjEyLjIzIHVtIDA4OjUzIHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPj4+PiBPbiAx
My8xMi8yMDIzIDIwOjUxLCBBbGV4IEJlZSB3cm90ZToKPj4+Pj4gRG9jdW1lbnQgdGhlIGNvbXBh
dGlibGUgZm9yIFJLMzEyOCdzIEhETUkgY29udHJvbGxlciBibG9jay4KPj4+Pj4gVGhlIGludGVn
cmF0aW9uIGZvciB0aGlzIFNvQyBpcyBzb21ld2hhdCBkaWZmZXJlbnQgaGVyZTogSXQgbmVlZHMg
dGhlIFBIWSdzCj4+Pj4gUGxlYXNlIHdyYXAgY29tbWl0IG1lc3NhZ2UgYWNjb3JkaW5nIHRvIExp
bnV4IGNvZGluZyBzdHlsZSAvIHN1Ym1pc3Npb24KPj4+PiBwcm9jZXNzIChuZWl0aGVyIHRvbyBl
YXJseSBub3Igb3ZlciB0aGUgbGltaXQpOgo+Pj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29t
L2xpbnV4L3Y2LjQtcmMxL3NvdXJjZS9Eb2N1bWVudGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1w
YXRjaGVzLnJzdCNMNTk3Cj4+PiBPSy4gTm90IHN1cmUgd2h5IGNoZWNrcGF0Y2ggLS1zdHJpY3Qg
IGRpZG4ndCB0ZWxsIG1lIHRoYXQgSSdtIG92ZXIgdGhlIAo+Pj4gbGltaXQgaGVyZS4KPj4+Pgo+
Pj4+PiByZWZlcmVuY2UgY2xvY2sgcmF0ZSB0byBjYWxjdWxhdGUgdGhlIGRkYyBidXMgZnJlcXVl
bmN5IGNvcnJlY3RseS4gVGhpcwo+Pj4+PiBjbG9jayBpcyBwYXJ0IG9mIGEgcG93ZXItZG9tYWlu
IChQRF9WSU8pLCBzbyB0aGlzIGdldHMgYWRkZWQgYXMgYW4gb3B0aW9uYWwKPj4+Pj4gcHJvcGVy
dHkgdG9vLgo+Pj4+IElmIGNsb2NrIGlzIHBhcnQgb2YgcG93ZXIgZG9tYWluLCB0aGVuIHRoZSBw
b3dlciBkb21haW4gbXVzdCBiZSBpbiB0aGUKPj4+PiBjbG9jayBjb250cm9sbGVyLCBub3QgaGVy
ZS4gU28gZWl0aGVyIHlvdSBwdXQgcG93ZXIgZG9tYWluIGluIHdyb25nCj4+Pj4gcGxhY2Ugb3Ig
eW91IHVzZWQgaW5jb3JyZWN0IHJlYXNvbiBmb3IgYSBjaGFuZ2UuCj4+PiAgIFJvY2tjaGlwIGRl
ZmluZXMgaXQncyBwb3dlcmRvbWFpbnMgcGVyIGNsb2NrIGFuZCBJIHdhcyBsaXR0bGUgdG8gbXVj
aCAKPj4+IGluIHRoYXQgd29ybGQgd2hlbiB3cml0aW5nIHRoaXMuIEFjdHVhbGx5IHRoZSBjb250
cm9sbGVyIGl0c2VsZiBpcyBwYXJ0IAo+Pj4gb2YgdGhlIHBvd2VyZG9tYWluLiBXaWxsIHJlcGhy
YXNlLgo+Pgo+PiBEb2VzIGl0IG1lYW4geW91IGhhdmUgbGlrZSAyMDAgZGlmZmVyZW50IHBvd2Vy
IGRvbWFpbnMgaW4gb25lIFNvQz8gVGhlbgo+PiBob3cgYXJlIHRoZXkgZGlmZmVyZW50IHRoYW4g
Y2xvY2sgaWYgdGhlcmUgaXMgb25lLXRvLW9uZSBtYXBwaW5nPwo+IAo+IEl0J3MgbW9yZSBsaWtl
IHRoZSBvdGhlciB3YXkgYXJvdW5kLiBDb250cm9sbGVycyBhbmQgdGhlaXIgY2xvY2tzIGJlbG9u
Zwo+IHRvIHNwZWNpZmljIHBvd2VyLWRvbWFpbnMuIFNvIHRoZXJlIGFyZSBvZiBjb3Vyc2UgbW9y
ZSBjbG9ja3MgdGhhbiBkb21haW5zLgoKVGhhdCdzIGZpbmUgYW5kIGV4cGVjdGVkLiBIZXJlIHRo
ZSBjb21tZW50IHdhcyBzdWdnZXN0ZWQgdGhhdCB5b3UgbmVlZAp0byBhZGQgcG93ZXItZG9tYWlu
IGJlY2F1c2UgY2xvY2sgaXMgaW4gcG93ZXItZG9tYWluLiBUaGF0IHdvdWxkIGJlCmNsZWFybHkg
d3JvbmcgYW5kIGluc3RlYWQgdGhlIGNsb2NrIGNvbnRyb2xsZXIgc2hvdWxkIG1vZGVsIHRoZSBw
b3dlcgpkb21haW4gcmVsYXRpb25zaGlwLgo+IAo+IAo+IAo+IAoKQmVzdCByZWdhcmRzLApLcnp5
c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
