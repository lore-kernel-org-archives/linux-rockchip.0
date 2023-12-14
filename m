Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDCDCC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 15:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KX6vhC3GDCR+HnDM7FUSw/usI+2InpmOWvYVt7kcQhM=; b=PpeUgIvQfGJY74
	C+re7hsb91dM7ABJSFemDt9mbTNTZ5TlMxiUfD4IqyZpRcE4v+06uMXfc5Eb2ZRYWXoiVQjQjYCgm
	Y+briy479F6NShBToVWrNUXcUTzzx966tjtbsnrPACu6gl00XO8DiWP0a8VeWzmJNrSE0CWJzphBD
	ULuD930QrJoMHmEONW0+54l5PjgTXpxVA6hgjTKLbD40iieL14PaJ+5vV+XDfzzwBugx9c1dkj2C3
	Cj2B9a3JkSmMbhaF9xixqWeXk/Joaxr0pAvczGFTWVtpwUh4XIyNPOkTdjvIqhTatHlRCyL8hCnDr
	230zdpy9Mhd5cA73UsQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnYE-000fJT-0Z;
	Thu, 14 Dec 2023 15:23:02 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnY8-000fHW-06;
	Thu, 14 Dec 2023 15:22:57 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c580ba223so28079605e9.3;
        Thu, 14 Dec 2023 07:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702567372; x=1703172172; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8729+GpJIaJexZ1ARUqsjnhie8XgW0co3vRcD9snPkc=;
        b=JNHS3h+Iv5FzmuWXSVGN2JVZeNlTjrD0uBqTSGuiL0Qt/XVWQ4dgOm1AfUec5pdnxF
         dMPS0LHwcakx2AJfN9nlU3e+VIAZTtAUlD0MWx1Wi2NT5jxHfpzrKl4uS3H7Ffr4IIan
         aF5vy1MAYKQ79xzv3nczhKa7RadreEzj40u83XjNoRXIzJRonsXj0taIFqlepDldy0Yb
         /iv8s461sccdD/1x8NxkR34nRKsdeALUtcS6uOIax3eIjy0hqJRGVkm1vvGT1eVcXDQ5
         7rq0HfKJkeViqYsQ15vB+E0zE2qoOIUcXGtEL9Wy6Svi1NIbDOMO86WQQ5g7Zbr1Fmmt
         cWlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702567372; x=1703172172;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8729+GpJIaJexZ1ARUqsjnhie8XgW0co3vRcD9snPkc=;
        b=LEvcvSZgZ1nyOmQC40IGGED2RWk1jAQqACWJkTddnRJnnIUw3DQzpWZVA8tma0rkzc
         wLj2S9SszhU90G4w1CIcLE7RbYk9YQJjSluzDJ731bMFH5VEdor7AQSj0ZMFS/14XUEL
         GhVwM8/ZADaxR8PxzYEvQg8JJkIevINWfX8GDcOw/hcBWxypcg2Yg+QGNWH2TsLaopqQ
         2ePePpQIueWRgIgYDB33aHxJzlxhmGtaZ/LI7y2PdIMNTc/6bJrnFtMhZYy7SUo7tOGR
         MiAaI/ySYNl4Dvv+KnWNrVvC2iFnWbeaSf9KrxW/gR6KsCB53VT9YjZxDMEN6OfPU4Qa
         jo6w==
X-Gm-Message-State: AOJu0YybK7CYDBjO3OLW266I8uxGCBAJn1lFOuhfvQfNuxOZHkxjorFS
	YvAUahkcG1QC6c0YoxtYcQ==
X-Google-Smtp-Source: AGHT+IFSSfoKJnB1Fn5EpXxKahq1aL1UT1b1HTYMrjLf8nAPnhLq7mpyYAelUamEJbOffEM85r3ZpA==
X-Received: by 2002:a05:600c:3794:b0:40b:56f3:df64 with SMTP id o20-20020a05600c379400b0040b56f3df64mr5492295wmr.40.1702567371645;
        Thu, 14 Dec 2023 07:22:51 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:fb6a:140c:b21d:7387? ([2a02:810b:f40:4300:fb6a:140c:b21d:7387])
        by smtp.gmail.com with ESMTPSA id s7-20020a05600c45c700b0040c45071c18sm17050981wmo.39.2023.12.14.07.22.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 07:22:51 -0800 (PST)
Message-ID: <288857ab-bebd-4f80-9cdc-9b04fa6c7386@gmail.com>
Date: Thu, 14 Dec 2023 16:22:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/11] dt-bindings: display: rockchip,inno-hdmi: Document
 RK3128 compatible
Content-Language: en-US, de-DE
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andyshrk@163.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <20231213195125.212923-2-knaerzche@gmail.com>
 <c4e394c6-c21f-4102-8c3a-f9530c0ca547@linaro.org>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <c4e394c6-c21f-4102-8c3a-f9530c0ca547@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_072256_070661_5C513B39 
X-CRM114-Status: GOOD (  17.44  )
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

CkFtIDE0LjEyLjIzIHVtIDA4OjUzIHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiBPbiAx
My8xMi8yMDIzIDIwOjUxLCBBbGV4IEJlZSB3cm90ZToKPj4gRG9jdW1lbnQgdGhlIGNvbXBhdGli
bGUgZm9yIFJLMzEyOCdzIEhETUkgY29udHJvbGxlciBibG9jay4KPj4gVGhlIGludGVncmF0aW9u
IGZvciB0aGlzIFNvQyBpcyBzb21ld2hhdCBkaWZmZXJlbnQgaGVyZTogSXQgbmVlZHMgdGhlIFBI
WSdzCj4gUGxlYXNlIHdyYXAgY29tbWl0IG1lc3NhZ2UgYWNjb3JkaW5nIHRvIExpbnV4IGNvZGlu
ZyBzdHlsZSAvIHN1Ym1pc3Npb24KPiBwcm9jZXNzIChuZWl0aGVyIHRvbyBlYXJseSBub3Igb3Zl
ciB0aGUgbGltaXQpOgo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjQtcmMx
L3NvdXJjZS9Eb2N1bWVudGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCNMNTk3
Ck9LLiBOb3Qgc3VyZSB3aHkgY2hlY2twYXRjaCAtLXN0cmljdMKgIGRpZG4ndCB0ZWxsIG1lIHRo
YXQgSSdtIG92ZXIgdGhlIApsaW1pdCBoZXJlLgo+Cj4+IHJlZmVyZW5jZSBjbG9jayByYXRlIHRv
IGNhbGN1bGF0ZSB0aGUgZGRjIGJ1cyBmcmVxdWVuY3kgY29ycmVjdGx5LiBUaGlzCj4+IGNsb2Nr
IGlzIHBhcnQgb2YgYSBwb3dlci1kb21haW4gKFBEX1ZJTyksIHNvIHRoaXMgZ2V0cyBhZGRlZCBh
cyBhbiBvcHRpb25hbAo+PiBwcm9wZXJ0eSB0b28uCj4gSWYgY2xvY2sgaXMgcGFydCBvZiBwb3dl
ciBkb21haW4sIHRoZW4gdGhlIHBvd2VyIGRvbWFpbiBtdXN0IGJlIGluIHRoZQo+IGNsb2NrIGNv
bnRyb2xsZXIsIG5vdCBoZXJlLiBTbyBlaXRoZXIgeW91IHB1dCBwb3dlciBkb21haW4gaW4gd3Jv
bmcKPiBwbGFjZSBvciB5b3UgdXNlZCBpbmNvcnJlY3QgcmVhc29uIGZvciBhIGNoYW5nZS4KIMKg
Um9ja2NoaXAgZGVmaW5lcyBpdCdzIHBvd2VyZG9tYWlucyBwZXIgY2xvY2sgYW5kIEkgd2FzIGxp
dHRsZSB0byBtdWNoIAppbiB0aGF0IHdvcmxkIHdoZW4gd3JpdGluZyB0aGlzLiBBY3R1YWxseSB0
aGUgY29udHJvbGxlciBpdHNlbGYgaXMgcGFydCAKb2YgdGhlIHBvd2VyZG9tYWluLiBXaWxsIHJl
cGhyYXNlLgo+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4K
Pj4gLS0tCj4+ICAgLi4uL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsaW5uby1oZG1pLnlhbWwg
IHwgMzAgKysrKysrKysrKysrKysrKystLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsaW5uby1oZG1pLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9y
b2NrY2hpcCxpbm5vLWhkbWkueWFtbAo+PiBpbmRleCA5Njg4OWM4Njg0OWEuLjlmMDBhYmNiZmIz
OCAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvcm9ja2NoaXAvcm9ja2NoaXAsaW5uby1oZG1pLnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsaW5uby1oZG1p
LnlhbWwKPj4gQEAgLTE0LDYgKzE0LDcgQEAgcHJvcGVydGllczoKPj4gICAgIGNvbXBhdGlibGU6
Cj4+ICAgICAgIGVudW06Cj4+ICAgICAgICAgLSByb2NrY2hpcCxyazMwMzYtaW5uby1oZG1pCj4+
ICsgICAgICAtIHJvY2tjaGlwLHJrMzEyOC1pbm5vLWhkbWkKPj4gICAKPj4gICAgIHJlZzoKPj4g
ICAgICAgbWF4SXRlbXM6IDEKPj4gQEAgLTIyLDEwICsyMywyMSBAQCBwcm9wZXJ0aWVzOgo+PiAg
ICAgICBtYXhJdGVtczogMQo+PiAgIAo+PiAgICAgY2xvY2tzOgo+PiAtICAgIG1heEl0ZW1zOiAx
Cj4+ICsgICAgbWluSXRlbXM6IDEKPj4gKyAgICBpdGVtczoKPj4gKyAgICAgIC0gZGVzY3JpcHRp
b246IFRoZSBIRE1JIGNvbnRyb2xsZXIgbWFpbiBjbG9jawo+PiArICAgICAgLSBkZXNjcmlwdGlv
bjogVGhlIEhETUkgUEhZIHJlZmVyZW5jZSBjbG9jawo+PiAgIAo+PiAgICAgY2xvY2stbmFtZXM6
Cj4+IC0gICAgY29uc3Q6IHBjbGsKPj4gKyAgICBtaW5JdGVtczogMQo+PiArICAgIGl0ZW1zOgo+
PiArICAgICAgLSBjb25zdDogcGNsawo+PiArICAgICAgLSBlbnVtOgo+PiArICAgICAgICAgIC0g
cGNsawo+PiArICAgICAgICAgIC0gcmVmCj4gVGhhdCdzIHdheSBvdmVyY29tcGxpY2F0ZWQuIEp1
c3QgaXRlbXMgbGlzdGluZyB0aGUgbmFtZXMgYW5kIG1pbkl0ZW1zOgo+IDEuIFNlZSBvdGhlciBi
aW5kaW5ncyBob3cgdGhpcyBpcyBkb25lLgpPSy4KPj4gKwo+PiArICBwb3dlci1kb21haW5zOgo+
PiArICAgIG1heEl0ZW1zOiAxCj4gSXMgaXQgcmVsZXZhbnQgdG8gZXhpc3RpbmcgZGV2aWNlPwoK
V2lsbCBtb3ZlIHRvIG5ldyB2YXJpYW50IG9ubHkuCgpBbGV4Cgo+PiAgIAo+PiAgICAgcG9ydHM6
Cj4+ICAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydHMKPj4g
QEAgLTU1LDYgKzY3LDIwIEBAIHJlcXVpcmVkOgo+PiAgICAgLSBwaW5jdHJsLW5hbWVzCj4+ICAg
ICAtIHBvcnRzCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
