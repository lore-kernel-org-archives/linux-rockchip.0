Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 973EAC4707B
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 19:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lKjNL34XfMmAHGqW1/k2gWhSp/4vRXRtfYFh11XOWs=; b=eBC9J7YG8/1peA
	JlCswcZD9bWqfoMPZQB8s4FwPrNtEt0sr/cGCZj5cemTp9JjjLHKOu4fbs0T8Ba6HG8WeqAprXVB2
	u2IkC+Yxj9TsSO73xelQeigyieu8za38CLX7JOmu72BJTbeWPFa6VZAFq10/oBuQhNN1MQqTxty3i
	Bza36KvdxPgJ9lMQ69splXx9DcXwEamXCdTyWqVwAIttqKM80g/4F+pNGRdyXFHinZf/ytK6PJw5u
	JFmZDMZerKaMQo+O6clsNYtAK0nL57rsRDguc23y08Vr1nbAa+nztB7nzoNvAqHZq7PrsYrSG1Jbe
	dF9iQJhS2TUNu1O07/Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNHYm-009FPA-1y;
	Tue, 09 Jan 2024 19:14:48 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNHYj-009FNt-0a
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jan 2024 19:14:46 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3368abe1093so2893585f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Jan 2024 11:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704827680; x=1705432480; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m2MeK/V2qBqsbBcpViEfyXZnDNgIZUZI/pYNdPHh1Hs=;
        b=TdxURkyhczys1s4uM+V/WXg5O56kB3dN/e7y0iKZzneGJ+Wra7HMrZS2XvqR4VKt2z
         vW5kS1Vy10F2xcfDUq08lF8yx2UQw3dbQ0lNaXqobmhDcNmhUevWF2XZvpQnmNxkthXG
         GXj2EN42uwwXPni50LGpJye0oJiY821dBeQKorI5T75Wl1Dm42iEsWuOW7Slf7Arij1V
         OdzCselMACf/XMDapUwrWRobISEZPU5Xz5nia+3WtLciGwvp1B3hI6mSOTOUSHrmKX1t
         MN7lfK4TgmB+nuNte/5UOUsIA9WLib92zyRcgr3pDOAr70G75X9fhvzyd9g3RWK6dTe/
         y2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704827680; x=1705432480;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m2MeK/V2qBqsbBcpViEfyXZnDNgIZUZI/pYNdPHh1Hs=;
        b=UCW4UD40t+GP5r1xI2JY8N+fILAT+KI28Rc1fvHWfx/8+t9W4aG7zFCCteoB2610l+
         s2KL6siC65kDRzlD2sJ4BJCmks4f0V1zU09qtLqoeS0wCQkc5SqPJ48gMCKWZUXkkImY
         tkjW6LH3wufNzK8GFR/wbQp1RtKGXOp8NLELRenOVTK4+dhOUwVwNtkvERuXFpSnWThn
         RygYXcaIKPdKdRepa87y+XICmw658uU6yMKLoW0YVswrBNfvxbicClReLPlsIm0kI/xL
         Bha/VcaVc/IIIFtqR7ofsYDIc+vWHe3wGSSv4Ol/mfIO1zQx7c+ZyENbt+o+6dEScRQj
         yTQg==
X-Gm-Message-State: AOJu0YxqNnErbWX1HkQHI/E6yKVEn7ZghutN//DvjOdXQSqDvs8r+cyZ
	7/gCVLHAk3+BPO3Z4J2OFGmNLTDFf4E6Rw==
X-Google-Smtp-Source: AGHT+IEPveZme1aSJDCbiFj3sdF937DxVzMA8fHTv7ZXHrgv/NjeESUoLtztsUyMtXcXvv+38V2v8g==
X-Received: by 2002:a5d:4a45:0:b0:337:7680:8ccf with SMTP id v5-20020a5d4a45000000b0033776808ccfmr779186wrs.56.1704827680169;
        Tue, 09 Jan 2024 11:14:40 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id c15-20020adffb0f000000b003374d8306cesm3102746wrr.86.2024.01.09.11.14.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jan 2024 11:14:39 -0800 (PST)
Message-ID: <48f1b3cb-0a98-4b14-89f6-e1ca6b858512@linaro.org>
Date: Tue, 9 Jan 2024 20:14:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: remove duplicate SPI aliases
 for helios64
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
References: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
 <20240109-rk3399-spi-aliases-v1-2-2009e44e734a@theobroma-systems.com>
 <103b45c8-3e16-480d-9f39-c677da747090@linaro.org> <2258938.QZUTf85G27@diego>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <2258938.QZUTf85G27@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_111445_237047_4F4E3CC1 
X-CRM114-Status: GOOD (  11.57  )
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

T24gMDkvMDEvMjAyNCAxNjoyMywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRGllbnN0YWcs
IDkuIEphbnVhciAyMDI0LCAxNjoxNjoxNSBDRVQgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tp
Ogo+PiBPbiAwOS8wMS8yMDI0IDE0OjM1LCBRdWVudGluIFNjaHVseiB3cm90ZToKPj4+IEZyb206
IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4+
Pgo+Pj4gQW4gZWFybGllciBjb21taXQgZGVmaW5lZCBhbiBhbGlhcyBmb3IgYWxsIFNQSSBjb250
cm9sbGVycyBmb3VuZCBvbiB0aGUKPj4+IFJLMzM5OSwgc28gdGhlcmUncyBubyBuZWVkIHRvIGR1
cGxpY2F0ZSB0aGUgYWxpYXNlcyBpbiBoZWxpb3M2NCdzIGRldmljZQo+Pj4gdHJlZS4KPj4KPj4g
VGhhdCdzIG5vdCB3aGF0IHdlIHdhbnQuIEJvYXJkcyBzaG91bGQgZGVmaW5lIGFsaWFzZXMgZm9y
IHdoYXQgaXMKPj4gYXZhaWxhYmxlLCBhY2NvcmRpbmcgdG8gdGhlIGJvYXJkIGxhYmVsaW5nLgo+
IAo+IGFuZCB0aGUgYm9hcmQgbGFiZWxpbmcgZm9yIHNwaTIgaGFzIGFsd2F5cyBiZWVuIHNwaTIt
bWlzbywgc3BpMi1taXNvIGV0Yy4KPiBJbiB0aGUgbGFzdCAxMCB5ZWFycyBvZiBkb2luZyBSb2Nr
Y2hpcCBzdHVmZiwgSSBoYXZlbid0IHNlZW4gYW55IHNjaGVtYXRpYwo+IGRvaW5nIGl0IGRpZmZl
cmVudGx5LgoKT0ssIHRoaXMgY291bGQgYmUgYSBjYXNlLi4uIGJ1dCB0aGVuIHlvdSBhZGQgYWxp
YXNlcyBmb3IgdGhpbmdzIHdoaWNoCmFyZSBub3QgbGFiZWxlZCBvbiB0aGUgYm9hcmQuCgpMZXQn
cyBicmluZyBBcm5kIGFnYWluOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hp
cC9DQUs4UDNhMEFMZ2JoVFZKN3QzWFJYQUxzOXZCTT1YQnZrR2hOS1h4QitRVGVwby0zQVFAbWFp
bC5nbWFpbC5jb20vCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
