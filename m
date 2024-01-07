Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04F74C47074
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jan 2024 10:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmhA+kFZmOcEW6H6lGuJD18YVg6Zw33tOaYCpWS+LXs=; b=yZ9A161js46gsb
	L1U4tOBZ7jQxIEo6NX8PE7NLtFbGefPYD0l4hgbNqy4qcGd7CzHQHLylrEKYg8Vda0zb1P6lg5m+g
	dABofpYhvg1QkgsPu2gqIq8vkhWDVbPEjWIZsphfVHln4pDy0vtxBncDUbJGuGLQlAAjji9BglpDb
	cIYxuQ0KErxANi6IbK9nQ2oPQzGYqxUq8ex5MfwzqwcqY62zrHMBw5nkQtE/jwgB8vmly5X31oBO+
	xgcR4QU6NEw4sXVLnEsQdUppoVKLcPCqASgoxgayTBNMtwEnNVLQqjXCGa5lod6Oc7KhghfwirxIe
	vEHmrBqQeZbW/+gYcAFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMQQB-002lCU-0Y;
	Sun, 07 Jan 2024 10:30:23 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMQQ8-002lBl-0W
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Jan 2024 10:30:21 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40d8e7a50c1so12905065e9.2
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Jan 2024 02:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704623417; x=1705228217; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n6FcraxlGE1/DMmhL0QqfoIXdq5XuF0l5shF76vlze0=;
        b=ZFTS+qQ5Azq70hXv5vIxGV/W29rXRudhhrTS0lv3giHzkr7vJngISpk0yI3uE4pytg
         /HuS2JoSv8edwq54FU1zJLMs4ScmNmre+9SmDxaY6CWv+4C/g2Tub7jTAwz/5LKSB6uz
         AHjgnU9r6snAUHjDc+qoNK7nILBNeyxH07+VVugOlNfM8aA7X64w8MphL5dqMOGUaPFy
         MipdvFGKPmMBqikXWBJMejHBXhXLyo+5W97mLnW3XcgrV46DpMeqQySKeQ7Qw8SNFflg
         s+6RzNB+HZu2dxcZfd6OkiE31OKSJa6gQSteIy+7SS+olp4PaFNsMeB+Zz/g/u9NBUUb
         yjnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704623417; x=1705228217;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n6FcraxlGE1/DMmhL0QqfoIXdq5XuF0l5shF76vlze0=;
        b=fLFE6i6MERYFA9TMgEqRdd4kz1MXPWkEHYM41vQaOc8cohoU1g2NqeFW9UrgWMe998
         Qlxdi9oIDj6o42T+2Xq55uCP8IPdMTwOmBuDcqFXYPOMYr8uDDsexrHURzcHbepQ5dlU
         j76Dc8argCsSwta2ou5j6ZoQCTJOMaH6VXFsYxbwdpoIgWjkSOXKgXbWM7aOWq7ydKJu
         YVbkqpLTG9HYxruw9ZtSxsARuYTV2tA72TldM5FpBHzOSMB8o23W87ZodEZzV59+kYxS
         t1wIAf/FJts7iFAjCdKmX/ZE3kCPFvlunNcKgrWaIfwqBAwJ6+dAEf3ouxOmtsZEaKY2
         /BTQ==
X-Gm-Message-State: AOJu0YzmL5MbCjzc05FA8jCjl1bg+EWjGZJ5LA1eq/JyXk1fawzpRmgL
	uZzeGZ2Fwf1NWD6Cvk+zTZ9/ivymYggiZw==
X-Google-Smtp-Source: AGHT+IH6RM5E1nwg/foTgnT2LoBhhDt/Lz5BV6jgjqYVzskptkwkhVI2cX2dwIC0HCiRt3QB/gWadA==
X-Received: by 2002:a7b:cc99:0:b0:40d:88ba:130a with SMTP id p25-20020a7bcc99000000b0040d88ba130amr881874wma.206.1704623416863;
        Sun, 07 Jan 2024 02:30:16 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id p18-20020a170906615200b00a28ec89674bsm2918334ejl.173.2024.01.07.02.30.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jan 2024 02:30:16 -0800 (PST)
Message-ID: <210132de-a46b-4f9f-8546-0c36d8a34665@linaro.org>
Date: Sun, 7 Jan 2024 11:30:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: pwm: rockchip: Allow "interrupts" prooperty
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Johan Jonker <jbx6244@yandex.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-pwm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@pengutronix.de, devicetree@vger.kernel.org
References: <20240106142654.1262758-2-u.kleine-koenig@pengutronix.de>
 <7dea73a6-d733-4cd2-b2d5-02f09e2a6dd9@linaro.org>
 <94ad0f59-4095-40ee-963d-4ac379fc8852@yandex.com>
 <cvvifoctmgdsgqfadqbhgywfw2ff57fz33w26hghf5kyo5j5sw@mj75xtvczr2h>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <cvvifoctmgdsgqfadqbhgywfw2ff57fz33w26hghf5kyo5j5sw@mj75xtvczr2h>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240107_023020_271347_BD992130 
X-CRM114-Status: GOOD (  14.41  )
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

T24gMDcvMDEvMjAyNCAwMDoyNSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGVsbG8sCj4g
Cj4gT24gU2F0LCBKYW4gMDYsIDIwMjQgYXQgMTA6MjU6MTBQTSArMDEwMCwgSm9oYW4gSm9ua2Vy
IHdyb3RlOgo+PiBPbiAxLzYvMjQgMTg6MTAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+
PiBPbiAwNi8wMS8yMDI0IDE1OjI2LCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPj4+PiBUaGlz
IGZpeGVzIHRoZSBkdGJzX2NoZWNrIGVycm9yCj4+Pj4KPj4+PiAJYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcnYxMTA4LWVsZ2luLXIxLmR0YjogcHdtQDEwMjgwMDMwOiAnaW50ZXJydXB0cycg
ZG9lcyBub3QgbWF0Y2ggYW55IG9mIHRoZSByZWdleGVzOiAncGluY3RybC1bMC05XSsnCj4+Pj4g
CWZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcHdtL3B3bS1y
b2NrY2hpcC55YW1sIwo+Pj4+Cj4+Pj4gaW4gc2V2ZXJhbCBkZXZpY2UgdHJlZXMuCj4+Pj4KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1
dHJvbml4LmRlPgo+Pgo+Pj4gQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRv
Zi5rb3psb3dza2lAbGluYXJvLm9yZz4KPj4KPj4gTkFLCj4+Cj4+IFRoZXJlJ3MgYSByZWFzb24g
d2h5IHRoaXMgaXNuJ3QgaW1wbGVtZW50ZWQgYmVmb3JlOgo+Pgo+PiBbUkZDIFBBVENIIHYxIDEv
Ml0gZHQtYmluZGluZ3M6IHB3bTogcm9ja2NoaXA6IGFkZCBpbnRlcnJ1cHRzIHByb3BlcnR5IDxo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC9lZDNkZjJjOC1mZmI1LTE3MjMt
MGVkNy0zYTI3MjE5NzI4NTJAZ21haWwuY29tLyNyPgo+Pgo+PiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1yb2NrY2hpcC9lZDNkZjJjOC1mZmI1LTE3MjMtMGVkNy0zYTI3MjE5NzI4NTJA
Z21haWwuY29tLwo+Pgo+PiBbUEFUQ0ggMS8xXSBkdC1iaW5kaW5nczogcHdtOiByb2NrY2hpcDog
QWRkIGRlc2NyaXB0aW9uIGZvciByazM1ODggPGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXJvY2tjaGlwLzIwMjIwOTAxMTM1NTIzLjUyMTUxLTEtc2ViYXN0aWFuLnJlaWNoZWxAY29sbGFi
b3JhLmNvbS8jcj4KPj4KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAv
NjZiNWI2MTYtYWU5Zi1hMWFhLWUyYjUtNDUwZjU3MGNmY2RkQGdtYWlsLmNvbS8KPj4KPj4gW1BB
VENIIHYxIDAzLzExXSBkdC1iaW5kaW5nczogcHdtOiByb2NrY2hpcDogYWRkIHJvY2tjaGlwLHJr
MzEyOC1wd20gPGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwL2Y1ZGQwZWU0
LWQ5N2UtZDg3OC1mZmRlLWMwNmU5YjIzM2UzOEBnbWFpbC5jb20vPgo+Pgo+PiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC85NDZkOGFjMi02ZmYyLTA5M2EtYWQzYy1hYTc1
NWUwMGQxZGRAYXJtLmNvbS8KPj4KPj4KPj4gT24gaG93IHRvIGNvcnJlY3RseSBtb2RlbCB0aGUg
RFQgd2l0aCBjb21tb24gaW50ZXJydXB0cyAsIFBXTSBhbmQgb25lIHNob3QgYXMgYSBzb3J0IG9m
IE1GRCBldGMgdGhlcmUncyBubyBjb25zZW5zdXMgeWV0Lgo+Pgo+PiBMZWFmIGl0IGFzIGl0IGlz
IHRpbGwgc29tZW9uZSBtYWRlIGEgd29ya2luZyBkcml2ZXIgZGVtbywgc28gdGhhdCB0aGUgY29k
ZXIgaXMgZnJlZSB0byBtb2RlbCBhIERUIHNvbHV0aW9uIHRoYXQgZml0cyB0byBoaW0vaGVyLgo+
IAo+IEhhdmluZyB0aGUgd2FybmluZ3MgdW50aWwgdGhpcyBoYXBwZW5zIGlzIGJhZCB0aG91Z2gu
IElmIGRlc2NyaWJpbmcgdGhlCj4gaXJxcyBpbiB0aGUgc2NoZW1hIGlzIGNvbnNpZGVyZWQgd3Jv
bmcsIHdlIHNob3VsZCByZW1vdmUgdGhlIGludGVycnVwdHMKPiBwcm9wZXJ0aWVzIGZyb20gdGhl
IGRldmljZSB0cmVlIHNvdXJjZXMuCgpJIHRoaW5rIHRoZSBwcmV2aW91cyB0aHJlYWQgbWl4ZXMg
YmluZGluZ3Mgd2l0aCBkcml2ZXIuIERvZXMgdGhlCmhhcmR3YXJlIGhhdmUgaW50ZXJydXB0PyBZ
ZXM/IEFkZCBpdCB0byB0aGUgYmluZGluZ3MuIE5vPyBEb24ndCBhZGQgaXQuCgpIb3dldmVyIEpv
aGFuJ3MgcmVwbHkgaXMgc2F5aW5nIHNvbWV0aGluZyBhYm91dCBkcml2ZXIsIHNvIGhvdyBpcyBp
dApyZWxhdGVkPwoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
