Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 367AECEBF81
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 08:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vuepw+ojxTTIH/PCeh6U/+a0rNMG+ofxskzpea/JMe8=; b=AmRddmZYv9rVOM
	42vmNvRtYqTldQZHpCmwWte58Y+RISA2lhKoSgTr0/BVZFlwaSy0VREljVZJwDJx3W6d6rU0tusDJ
	w4fq5DljCCF2Er2DqRx0tq1uWdQdsmt7y4QrweVEX3Inwm9c98f6G+4EqtASS2O+cT77a8dx9KPlq
	YxSSg5M79ftVRYySZZywmj+GFCTNhdkFNhBOQ1fM3MfCHUlBqs72Zqmvk13uDJ6gai8Zc1toPpj1X
	Qu+cOQQ9pmucB+TPUrM0spWvjrtJRiOFNhjHrqUoBgGe9xiflgGej121AKaTzfeTxaM37K2N/OgUL
	cwKcFBP/1dMJvSDh4jEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su5u1-0000000AQJG-3s9f;
	Fri, 27 Sep 2024 08:00:37 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su5sh-0000000APzr-1HWD;
	Fri, 27 Sep 2024 07:59:21 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-20b411a1d60so139375ad.2;
        Fri, 27 Sep 2024 00:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727423954; x=1728028754; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7HwX6OI4gIIHbN/hK9fjNZGmVtettbN++9lE7NDiTf8=;
        b=KLUvfISG56uuuYI+GXDCWfjmXNwpOpuYPDZayIxrJJ8A7vY3+6aY6+2GCZgfnvfUgw
         czNie+N5fJ2aDWxbFonGbcykTVcCZrDtU1XBuzaJ5Xy2H7uAlQYB9lAE8SsQuM/HWu8f
         otG5QWqtjWlaDM4nO7I6FMcCmdmpodQ+CoTQRoNXECCTf3QFZ1A9pm1qEHo4GchTmMPZ
         xwXiJ7TUPvcdaF+4HYyudts3momiGnqLMlzSHir1cu6xyPd9x/r8b/9etpslkL43OnZv
         oR/m2/HdMpK2TFiovghw8tFPgRCKw1gz2lhVyXdqPxL9NdxP0P4mbOAN4tvDWwQcr0XE
         n90g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727423954; x=1728028754;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7HwX6OI4gIIHbN/hK9fjNZGmVtettbN++9lE7NDiTf8=;
        b=a3Z0oLSgqubEIkuurz2RFbRuumQJ7tU7AXVwmi6nu5PjkJcGNBsPc1RlUJ92g0D2Mx
         GtHGWOcZ9v+DWdOMqaStMHxC8u0fjBAz8dIS/3SldzWO5MpWUNVCBY+OYf/gi/K1m4my
         SFFTzPjHnCC9E8A85Ne9YeAe5ZxA2YjlgySge3yTNFcjUQIHHYLcQ/qfsv5o1zV5ALPP
         ZAxsFNK+q59DC/CEz4Xu9mbenIhthW/XpqC9gJCp+6vWWi4UazWwdQyb75uaKZTKb9Am
         C+mUcMNUzYvWRXKeVNif09hwyZCVVQPcMbuH9BBFxcDJ7xyX22oLl5ElhNrm7ekMf/Mj
         j4JQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBcV33F+6Xw/PkGvmZ3GX8CopEoXPIBqe5EUFNs/ZdV9ci5xhCHFeFUglVTBX8kA1Nq7f9U6ZmoFtnAB4sSq+H@lists.infradead.org, AJvYcCVsU8dZfxThPtvSpVzzK9ohb/cC0Byp0wXvdh42tk3ylY07op16e7muCBZhN+nqZNq1qjT1GSjn4oEyj4RF05U=@lists.infradead.org
X-Gm-Message-State: AOJu0YwkgaHn/mnWsgVh5TfsDfMqz0r72XnFp2rpYmFp0YcNNEuAuEn6
	odyW61iGWqA5tPVR5z0J2RhNzY89P3xe6TRvdW1+7U2gvhIHc6ZW
X-Google-Smtp-Source: AGHT+IE8JYRGGpZv4q306yHVh3sNMzBl8mIZYgoblrNJM7FaZO2kvA7WslMeA3lBcRj9DzjVCS+SCA==
X-Received: by 2002:a05:6a00:39a8:b0:714:1bcf:adbe with SMTP id d2e1a72fcca58-71b25dacbdemr1720656b3a.0.1727423954093;
        Fri, 27 Sep 2024 00:59:14 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b265249b7sm1060789b3a.148.2024.09.27.00.59.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Sep 2024 00:59:13 -0700 (PDT)
Message-ID: <a06af01a-656b-4ef6-84a6-bc1c35d5bafa@gmail.com>
Date: Fri, 27 Sep 2024 15:59:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, frank.wang@rock-chips.com
References: <20240926103223.29538-1-frawang.cn@gmail.com>
 <ed829240-d4f7-471f-84f6-3509f87f11a1@kernel.org>
 <7944f4dd-96f0-40df-8c91-523409e3cb20@gmail.com>
 <4b98196a-c898-4d08-9101-31feb4e59b5c@kernel.org>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <4b98196a-c898-4d08-9101-31feb4e59b5c@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_005915_372585_C3364C62 
X-CRM114-Status: GOOD (  11.82  )
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

SGkgS3J6eXN6dG9mLAoKT24gMjAyNC85LzI3IDE1OjMwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9uIDI3LzA5LzIwMjQgMDk6MDEsIEZyYW5rIFdhbmcgd3JvdGU6Cj4+IEhpIEtyenlz
enRvZiwKPj4KPj4gT24gMjAyNC85LzI2IDIyOjE5LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3Rl
Ogo+Pj4gT24gMjYvMDkvMjAyNCAxMjozMiwgRnJhbmsgV2FuZyB3cm90ZToKPj4+PiArICAtIGlm
Ogo+Pj4+ICsgICAgICBwcm9wZXJ0aWVzOgo+Pj4+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4+Pj4g
KyAgICAgICAgICBjb250YWluczoKPj4+PiArICAgICAgICAgICAgZW51bToKPj4+PiArICAgICAg
ICAgICAgICAtIHJvY2tjaGlwLHJrMzU3Ni11c2IycGh5Cj4+Pj4gKyAgICB0aGVuOgo+Pj4+ICsg
ICAgICBwcm9wZXJ0aWVzOgo+Pj4+ICsgICAgICAgIGNsb2NrczoKPj4+PiArICAgICAgICAgIG1p
bkl0ZW1zOiAzCj4+Pj4gKyAgICAgICAgICBtYXhJdGVtczogMwo+Pj4gUmVhZCBvbmUgbW9yZSB0
aW1lIHRoZSBleGFtcGxlIEkgZ2F2ZSB5b3UuIFRvcC1sZXZlbCBjb25zdHJhaW50cyBhcmUKPj4+
IHNheWluZyBtYXggb25lIGNsb2NrLgo+Pj4KPj4+IEJlc3QgcmVnYXJkcywKPj4+IEtyenlzenRv
Zgo+Pj4KPj4gU29ycnkgZm9yIG92ZXJsb29raW5nIHRoaXMsIEkgd2lsbCBzZXQgYm90aCAiY2xv
Y2tzIiBhbmQgImNsb2NrLW5hbWVzIgo+PiB0byB0cnVlLCBhbmQgYWRkIHRoZSBlbHNlIGNhc2Ug
YmVsb3cgdGhlIGFib3ZlIGNvZGVzIGZvciB0aGUgIm9sZCIgU29Dcy4KPj4gSnVzdCBsaWtlIHRo
ZSBiZWxvdy4KPj4KPj4gLcKgIGNsb2NrczoKPj4gLcKgwqDCoCBtYXhJdGVtczogMQo+PiArwqAg
Y2xvY2tzOiB0cnVlCj4+Cj4+IC3CoCBjbG9jay1uYW1lczoKPj4gLcKgwqDCoCBjb25zdDogcGh5
Y2xrCj4+ICvCoCBjbG9jay1uYW1lczogdHJ1ZQo+IEZvciB0aGUgdGhpcmQgdGltZSwgcmVhZCB0
aGUgY29kZSBJIGdhdmUgeW91LiBEbyB5b3Ugc2VlIHNvbWV0aGluZyBsaWtlCj4gdGhpcyB0aGVy
ZT8gV2h5IGRvaW5nIGFsbCB0aGUgdGltZSBzb21ldGhpbmcgZGlmZmVyZW50IHRoYW4gZXhpc3Rp
bmcgY29kZT8KClJlZmVyIHRvIHRoZSBsaW5rIHlvdSBzZW50IG1lIHRoYXQgSSBtdXN0IGFkZCBt
aW5JdGVtcyBwcm9wZXJ0eSBmb3IgCmNsb2NrcywganVzdCBsaWtlIHRoZSBiZWxvdyBjb2RlczoK
CkBAIC0zNSw3ICszNSw4IEBAIHByb3BlcnRpZXM6CiDCoMKgwqDCoCBjb25zdDogMAoKIMKgwqAg
Y2xvY2tzOgotwqDCoMKgIG1heEl0ZW1zOiAxCivCoMKgwqAgbWluSXRlbXM6IDEKK8KgwqDCoCBt
YXhJdGVtczogMwoKVGhhdCBjYW4gcGFzcyBkdF9iaW5kaW5nIGFuZCBkdGIgY2hlY2tpbmcsIGhv
d2V2ZXIsICJjbG9ja3MiIGlzIHRoZSAKb3B0aW9uYWwgcHJvcGVydHkgZm9yIHNvbWUgb2xkIFJv
Y2tjaGlwIFBIWXMswqAgSSBhbSBub3Qgc3VyZSBpcyBpdCByaWdodCAKdG8gZm9yY2Ugc2V0wqAg
bWluSXRlbXMgYXMgMSAuCklmIGp1c3Qga2VlcCBtYXhJdGVtcywgdGhlIGR0X2JpbmRpbmcgY2hl
Y2tpbmcgaXMgZmFpbHVyZS4KCgpCZXN0IHJlZ2FyZHMsCkZyYW5rCgo+IEJlc3QgcmVnYXJkcywK
PiBLcnp5c3p0b2YKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
