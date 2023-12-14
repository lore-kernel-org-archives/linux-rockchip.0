Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DFB5C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 16:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExIx++jEEDQK+a1811B/R3pjADiG44aykGdgQ+pMQr4=; b=y+XxSAJcCWAflD
	/qWGCAoc8CRtgMlNQs6sERllMUKsrUfh2fZk1XjOfP2IVyOgRUDxvNnTxEaQh/obK96M2NhrCNE2D
	1k4h6F3RdjIWEOphdkkx4tkex7WNgML9oySN+it7Qrn60w6twa/Se7ewodrUz5JEBk5peCVkON5R2
	t+5pdX2nfPUuUtA5pZJPLcppClxWTA0hFaNlR4UBMmI0fyTyaY8SJkVxN8F7zYVqFvgqF11gnVhWS
	cPBfqfreH3fdba16xs3A/U8RMA0ubDGhP8XLXg/xxQ+rwvd1g5H9b07gZcEbUXKtc7N0dZawI3MY4
	fLmi9BVhpBfSY7u3Qnww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDofz-000otb-1C;
	Thu, 14 Dec 2023 16:35:07 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDofv-000osh-0N;
	Thu, 14 Dec 2023 16:35:04 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3364c9ff8e1so95739f8f.0;
        Thu, 14 Dec 2023 08:35:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702571701; x=1703176501; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XbG+eAMrQaBWQ+wuswfsb9grx3t71hV/JH/fBc408/Q=;
        b=ZUEYRSTSEtI6uttwYBKk07LE0B3qlRvOX9zPuPQmxV6PuDCRyh8W6ehrwvjty2eABN
         3zdUfYnKah4V2DiOO56TzmEBNw7gn3Lace7V078g25yuW1yJCUjrDyvMMntJ7qF2QZ7H
         4gqrahwubgUdSwwoAhwT0niBiaXhkeUBIktwodsDg2VzTYzm34UcIZ1lefVXBlelF94E
         HchTLoGRi52z0EAv5ciCLc1uQ6iXfsxlTfwbz/UZbWIojqNx3WDzkhJAEw+j2U8BMW4b
         NOXmcASo4sTchQ3hhSJhx3cR1jM5CIMHbFMQen9rMh2We8GKLkqHwFGdF8jnilOnpFEk
         K7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702571701; x=1703176501;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XbG+eAMrQaBWQ+wuswfsb9grx3t71hV/JH/fBc408/Q=;
        b=a9DWsVMlrNp+cmCkYpMpEcoPpV3WGVrbyXbCtSM7GgDyI7alBQmVtpDnL2yuIAX6UG
         CWVJQm4BhlgVNqGkOlRoRqc5JqkevpZ7klOtbxKoEBRoZHG+4kS52Ez0IbTIGu08VBuW
         CmEV/VVhlMVz/5wvtz9YZf935ifmOg8KwcKypSGc7+1eGyB0UA+n5Az/xIEKiNb6EuXE
         pOfYbeYZhwwvYKorGLgDv9tXPGSLH9NGpN4upC8jI6UaOEcmlranAKyuCM1fOgkhiKbX
         bWP3pcvob3HEDnWYmV2x6yKy4bj2moU8Hi9WtCckX6Mhmsxh/JgmamVG2lmjJXSCx/vY
         QNyA==
X-Gm-Message-State: AOJu0YwFX3fUj0ZsbpPWgid7TTRU/wMvOFG0ZkemUL8Rtd5jIRc6t2dJ
	HPNciKg+02iCO6A/dgh/4Q==
X-Google-Smtp-Source: AGHT+IHEhJt9TnAC+6/28vyZWFHxbmVh3rWrJ5sW42wi+b946fK82gifA8YHOhMiGtePzXIRfssCoQ==
X-Received: by 2002:a05:600c:4d82:b0:40b:5e56:7b36 with SMTP id v2-20020a05600c4d8200b0040b5e567b36mr4568736wmp.127.1702571701014;
        Thu, 14 Dec 2023 08:35:01 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:fb6a:140c:b21d:7387? ([2a02:810b:f40:4300:fb6a:140c:b21d:7387])
        by smtp.gmail.com with ESMTPSA id h5-20020a05600c314500b0040b56f2cce3sm27378055wmo.23.2023.12.14.08.35.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 08:35:00 -0800 (PST)
Message-ID: <3f970571-f454-4615-8234-64ea68a3d63c@gmail.com>
Date: Thu, 14 Dec 2023 17:34:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/11] drm/rockchip: inno_hdmi: Correctly setup HDMI
 quantization range
Content-Language: en-US, de-DE
To: Maxime Ripard <mripard@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andyshrk@163.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <w7cj24se5gjomfynp5yindnh3s2pea4p3f46u6y7lcci7hri32@62i6hg26pheb>
 <5f4fc919-681f-44ec-bd44-5788e5b718ca@gmail.com> <3053311.k3LOHGUjKi@diego>
 <qr7if2k76wdqgevdcwqxj2dkcbga72owjqlk3qaazujhejjloo@cnvmuq27qqns>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <qr7if2k76wdqgevdcwqxj2dkcbga72owjqlk3qaazujhejjloo@cnvmuq27qqns>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_083503_160283_783B673C 
X-CRM114-Status: GOOD (  26.31  )
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

SGkgSGVpa28sIEhpIE1heGltZSwKCkFtIDE0LjEyLjIzIHVtIDEyOjM2IHNjaHJpZWIgTWF4aW1l
IFJpcGFyZDoKPiBPbiBUaHUsIERlYyAxNCwgMjAyMyBhdCAxMjoxNzozNFBNICswMTAwLCBIZWlr
byBTdMO8Ym5lciB3cm90ZToKPj4gQW0gRG9ubmVyc3RhZywgMTQuIERlemVtYmVyIDIwMjMsIDEy
OjEyOjA4IENFVCBzY2hyaWViIEFsZXggQmVlOgo+Pj4gSGkgTWF4aW1lCj4+Pgo+Pj4gQW0gMTQu
MTIuMjMgdW0gMDg6NTYgc2NocmllYiBNYXhpbWUgUmlwYXJkOgo+Pj4+IEhpIEFsZXgsCj4+Pj4K
Pj4+PiBUaGFua3MgZm9yIHdvcmtpbmcgb24gdGhpcyEKPj4+Pgo+Pj4+IE9uIFdlZCwgRGVjIDEz
LCAyMDIzIGF0IDA4OjUxOjE4UE0gKzAxMDAsIEFsZXggQmVlIHdyb3RlOgo+Pj4+PiBUaGUgZGlz
cGxheSBjb250cm9sbGVyIHdpbGwgYWx3YXlzIGdpdmUgZnVsbCByYW5nZSBSR0IgcmVnYXJkbGVz
cyBvZiB0aGUKPj4+Pj4gbW9kZSBzZXQsIGJ1dCBIRE1JIHJlcXVpcmVzIGNlcnRhaW4gbW9kZXMg
dG8gYmUgdHJhbnNtaXR0ZWQgaW4gbGltaXRlZAo+Pj4+PiByYW5nZSBSR0IuIFRoaXMgaXMgZXNw
ZWNpYWxseSByZXF1aXJlZCBmb3IgSERNSSBzaW5rcyB3aGljaCBkbyBub3Qgc3VwcG9ydAo+Pj4+
PiBub24tc3RhbmRhcmQgcXVhbnRpemF0aW9uIHJhbmdlcy4KPj4+Pj4KPj4+Pj4gVGhpcyBlbmFi
bGVzIGNvbG9yIHNwYWNlIGNvbnZlcnNpb24gZm9yIHRob3NlIG1vZGVzIGFuZCBzZXRzIHRoZQo+
Pj4+PiBxdWFudGl6YXRpb24gcmFuZ2UgYWNjb3JkaW5nbHkgaW4gdGhlIEFWSSBpbmZvZnJhbWUu
Cj4+Pj4+Cj4+Pj4+IEZpeGVzOiA0MTJkNGFlNmI3YTUgKCJkcm0vcm9ja2NoaXA6IGhkbWk6IGFk
ZCBJbm5vc2lsaWNvbiBIRE1JIHN1cHBvcnQiKQo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEJl
ZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+ICAgIGRyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9pbm5vX2hkbWkuYyB8IDQwICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0K
Pj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
Cj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19o
ZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMKPj4+Pj4gaW5kZXgg
MzQ1MjUzZTAzM2M1Li4zMjYyNmE3NTcyM2MgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwo+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvaW5ub19oZG1pLmMKPj4+Pj4gQEAgLTMzLDYgKzMzLDcgQEAgc3RydWN0IGhkbWlfZGF0
YV9pbmZvIHsKPj4+Pj4gICAgCXVuc2lnbmVkIGludCBlbmNfaW5fZm9ybWF0Owo+Pj4+PiAgICAJ
dW5zaWduZWQgaW50IGVuY19vdXRfZm9ybWF0Owo+Pj4+PiAgICAJdW5zaWduZWQgaW50IGNvbG9y
aW1ldHJ5Owo+Pj4+PiArCWJvb2wgcmdiX2xpbWl0ZWRfcmFuZ2U7Cj4+Pj4+ICAgIH07Cj4+Pj4+
ICAgIAo+Pj4+PiAgICBzdHJ1Y3QgaW5ub19oZG1pX2kyYyB7Cj4+Pj4+IEBAIC0zMDgsNiArMzA5
LDE4IEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX2NvbmZpZ192aWRlb19hdmkoc3RydWN0IGlubm9f
aGRtaSAqaGRtaSwKPj4+Pj4gICAgCWVsc2UKPj4+Pj4gICAgCQlmcmFtZS5hdmkuY29sb3JzcGFj
ZSA9IEhETUlfQ09MT1JTUEFDRV9SR0I7Cj4+Pj4+ICAgIAo+Pj4+PiArCWlmIChoZG1pLT5oZG1p
X2RhdGEuZW5jX291dF9mb3JtYXQgPT0gSERNSV9DT0xPUlNQQUNFX1JHQikgewo+Pj4+PiArCQlk
cm1faGRtaV9hdmlfaW5mb2ZyYW1lX3F1YW50X3JhbmdlKCZmcmFtZS5hdmksCj4+Pj4+ICsJCQkJ
CQkgICAmaGRtaS0+Y29ubmVjdG9yLCBtb2RlLAo+Pj4+PiArCQkJCQkJICAgaGRtaS0+aGRtaV9k
YXRhLnJnYl9saW1pdGVkX3JhbmdlID8KPj4+Pj4gKwkJCQkJCSAgIEhETUlfUVVBTlRJWkFUSU9O
X1JBTkdFX0xJTUlURUQgOgo+Pj4+PiArCQkJCQkJICAgSERNSV9RVUFOVElaQVRJT05fUkFOR0Vf
RlVMTCk7Cj4+Pj4+ICsJfSBlbHNlIHsKPj4+Pj4gKwkJZnJhbWUuYXZpLnF1YW50aXphdGlvbl9y
YW5nZSA9IEhETUlfUVVBTlRJWkFUSU9OX1JBTkdFX0RFRkFVTFQ7Cj4+Pj4+ICsJCWZyYW1lLmF2
aS55Y2NfcXVhbnRpemF0aW9uX3JhbmdlID0KPj4+Pj4gKwkJCUhETUlfWUNDX1FVQU5USVpBVElP
Tl9SQU5HRV9MSU1JVEVEOwo+Pj4+PiArCX0KPj4+Pj4gKwo+Pj4+PiAgICAJcmV0dXJuIGlubm9f
aGRtaV91cGxvYWRfZnJhbWUoaGRtaSwgcmMsICZmcmFtZSwgSU5GT0ZSQU1FX0FWSSwgMCwgMCwg
MCk7Cj4+Pj4+ICAgIH0KPj4+Pj4gICAgCj4+Pj4+IEBAIC0zMzQsMTQgKzM0NywyMiBAQCBzdGF0
aWMgaW50IGlubm9faGRtaV9jb25maWdfdmlkZW9fY3NjKHN0cnVjdCBpbm5vX2hkbWkgKmhkbWkp
Cj4+Pj4+ICAgIAlpZiAoZGF0YS0+ZW5jX2luX2Zvcm1hdCA9PSBkYXRhLT5lbmNfb3V0X2Zvcm1h
dCkgewo+Pj4+PiAgICAJCWlmICgoZGF0YS0+ZW5jX2luX2Zvcm1hdCA9PSBIRE1JX0NPTE9SU1BB
Q0VfUkdCKSB8fAo+Pj4+PiAgICAJCSAgICAoZGF0YS0+ZW5jX2luX2Zvcm1hdCA+PSBIRE1JX0NP
TE9SU1BBQ0VfWVVWNDQ0KSkgewo+Pj4+PiAtCQkJdmFsdWUgPSB2X1NPRl9ESVNBQkxFIHwgdl9D
T0xPUl9ERVBUSF9OT1RfSU5ESUNBVEVEKDEpOwo+Pj4+PiAtCQkJaGRtaV93cml0ZWIoaGRtaSwg
SERNSV9WSURFT19DT05UUkwzLCB2YWx1ZSk7Cj4+Pj4+IC0KPj4+Pj4gLQkJCWhkbWlfbW9kYiho
ZG1pLCBIRE1JX1ZJREVPX0NPTlRSTCwKPj4+Pj4gLQkJCQkgIG1fVklERU9fQVVUT19DU0MgfCBt
X1ZJREVPX0MwX0MyX1NXQVAsCj4+Pj4+IC0JCQkJICB2X1ZJREVPX0FVVE9fQ1NDKEFVVE9fQ1ND
X0RJU0FCTEUpIHwKPj4+Pj4gLQkJCQkgIHZfVklERU9fQzBfQzJfU1dBUChDMF9DMl9DSEFOR0Vf
RElTQUJMRSkpOwo+Pj4+PiAtCQkJcmV0dXJuIDA7Cj4+Pj4+ICsJCQlpZiAoZGF0YS0+ZW5jX2lu
X2Zvcm1hdCA9PSBIRE1JX0NPTE9SU1BBQ0VfUkdCICYmCj4+Pj4+ICsJCQkgICAgZGF0YS0+ZW5j
X291dF9mb3JtYXQgPT0gSERNSV9DT0xPUlNQQUNFX1JHQiAmJgo+Pj4+PiArCQkJICAgIGhkbWkt
PmhkbWlfZGF0YS5yZ2JfbGltaXRlZF9yYW5nZSkgewo+Pj4+PiArCQkJCWNzY19tb2RlID0gQ1ND
X1JHQl8wXzI1NV9UT19SR0JfMTZfMjM1XzhCSVQ7Cj4+Pj4+ICsJCQkJYXV0b19jc2MgPSBBVVRP
X0NTQ19ESVNBQkxFOwo+Pj4+PiArCQkJCWMwX2MyX2NoYW5nZSA9IEMwX0MyX0NIQU5HRV9ESVNB
QkxFOwo+Pj4+PiArCQkJCWNzY19lbmFibGUgPSB2X0NTQ19FTkFCTEU7Cj4+Pj4+ICsJCQl9IGVs
c2Ugewo+Pj4+PiArCQkJCXZhbHVlID0gdl9TT0ZfRElTQUJMRSB8IHZfQ09MT1JfREVQVEhfTk9U
X0lORElDQVRFRCgxKTsKPj4+Pj4gKwkJCQloZG1pX3dyaXRlYihoZG1pLCBIRE1JX1ZJREVPX0NP
TlRSTDMsIHZhbHVlKTsKPj4+Pj4gKwkJCQloZG1pX21vZGIoaGRtaSwgSERNSV9WSURFT19DT05U
UkwsCj4+Pj4+ICsJCQkJCSAgbV9WSURFT19BVVRPX0NTQyB8IG1fVklERU9fQzBfQzJfU1dBUCwK
Pj4+Pj4gKwkJCQkJICB2X1ZJREVPX0FVVE9fQ1NDKEFVVE9fQ1NDX0RJU0FCTEUpIHwKPj4+Pj4g
KwkJCQkJICB2X1ZJREVPX0MwX0MyX1NXQVAoQzBfQzJfQ0hBTkdFX0RJU0FCTEUpKTsKPj4+Pj4g
KwkJCQlyZXR1cm4gMDsKPj4+Pj4gKwkJCX0KPj4+Pj4gICAgCQl9Cj4+Pj4+ICAgIAl9Cj4+Pj4+
ICAgIAo+Pj4+PiBAQCAtNDU4LDYgKzQ3OSw5IEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX3NldHVw
KHN0cnVjdCBpbm5vX2hkbWkgKmhkbWksCj4+Pj4+ICAgIAllbHNlCj4+Pj4+ICAgIAkJaGRtaS0+
aGRtaV9kYXRhLmNvbG9yaW1ldHJ5ID0gSERNSV9DT0xPUklNRVRSWV9JVFVfNzA5Owo+Pj4+PiAg
ICAKPj4+Pj4gKwloZG1pLT5oZG1pX2RhdGEucmdiX2xpbWl0ZWRfcmFuZ2UgPQo+Pj4+PiArCQlk
cm1fZGVmYXVsdF9yZ2JfcXVhbnRfcmFuZ2UobW9kZSkgPT0gSERNSV9RVUFOVElaQVRJT05fUkFO
R0VfTElNSVRFRDsKPj4+Pj4gKwo+Pj4+IFRoaXMgcGF0Y2ggY29uZmxpY3RzIGhlYXZpbHkgd2l0
aCBteSBpbm5vX2hkbWkgcGF0Y2hlcyBoZXJlIChwYXRjaGVzIDIyIHRvIDM4KToKPj4+PiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMzEyMDcta21zLWhkbWktY29ubmVjdG9y
LXN0YXRlLXY1LTAtNjUzOGUxOWQ2MzRkQGtlcm5lbC5vcmcvCj4+PiBJJ20gYXdhcmUgb2YgdGhh
dCBhbmQgSSBtZW50aW9uZWQgaXQgaW4gdGhlIGNvdmVyIGxldHRlci4gWW91ciBzZXJpZXMgaXMK
Pj4+IG5vdCBtZXJnZWQgeWV0IGFuZCBpdCBkaWRuJ3QgZ2V0IG11Y2ggZmVlZGJhY2sgc28gZmFy
LiBXaGF0IGlzIHRoZQo+Pj4gc3RhdHVzIHRoZXJlPyBFc3BlY2lhbGx5IGJlY2F1c2UgeW91IGFy
ZSByZW1vdmluZyB0aGluZ3MgZnJvbSBpbm5vLWhkbWkKPj4+IGRyaXZlciAod2hpY2ggYXJlbid0
IHJlYWxseSByZXF1aXJlZCB0byByZW1vdmUgdGhlcmUpIHdoaWNoIHdpbGwgSSBoYXZlCj4+PiB0
byByZWludHJvZHVjZS4KPj4gU2FkbHkgSSBoYXZlbid0IGZvdW5kIHRoZSB0aW1lIHRvIGxvb2sg
Y2xvc2VyIGF0IE1heGltZSdzIHNlcmllcyBzbyBmYXIsCj4+IGJ1dCBJIGdvdCB0aGUgaW1wcmVz
c2lvbiB0aGF0IGl0IHNlcGFyYXRlcyBpbnRvIG11bHRpcGxlIGNsZWFudXAgc3RlcHMKPj4gZm9y
IGEgbnVtYmVyIG9mIGNvbnRyb2xsZXJzLgo+IFllYWgsIG9uZSBvZiB0aGUgcHJldmlvdXMgdmVy
c2lvbiBjb21tZW50IHdhcyB0byBzdXBwb3J0IG1vcmUKPiBjb250cm9sbGVycyB0aGFuIHZjNCwg
d2hpY2ggaXMgZmFpci4gU28gSSBlbmRlZCB1cCByZXdvcmtpbmcgYW5kCj4gY29udmVydGluZyBt
dWx0aXBsZSBjb250cm9sbGVycywgYnV0IG1vc3Qgb2YgdGhlIGNsZWFuIHVwIGNoYW5nZXMgY2Fu
IGJlCj4gYXBwbGllZCBvdXRzaWRlIG9mIHRoYXQgc2VyaWVzIGp1c3QgZmluZS4KPgo+IEkganVz
dCBkaWRuJ3QgZmluZCBzb21lb25lIHRvIHRlc3QgLyByZXZpZXcgdGhlbSB5ZXQgOikKCkknbSBu
b3QgZXhhY3RseSBzdXJlIGhvdyB0byBwcm9jZWVkIGhlcmUuIERvIHlvdSB3YW50IG1lIHRvOgoK
LSBiYXNlIG15IHBhdGNoZXMgb24gdG9wIG9mIE1heGltZSdzIHNlcmllcyBhbmQgcmVpbnRyb2R1
Y2UgY3NjIHRoaW5ncyAKKG9mIGNvdXJzZSBvbmx5IHRob3NlIHdoaWNoIHRvdWNoIGlubm8taGRt
aSB3L28gdGhlIGZyYW13b3JrIGNoYW5nZXMpCgotIG9ubHkgYXBwbHkgdGhlIHBhdGNoZXMgdGhh
dCBkbyBub3QgdG91Y2ggY3NjIHRoaW5ncyBhbmQgYmFzZSBteSAKc2VyaWVzwqAgb24gdG9wIG9m
IHRoYXQKCi0gYWRhcHQgTWF4aW1lJ3MgcGF0Y2hlcyBzbyB0aGF0IFJHQiBmdWxsIHRvIFJHQiBs
aW1pdGVkIHN0YXlzIGluIHRoZXJlCgotIHdhaXQgd2l0aCByZXNlbmQgdW50aWwgTWF4aW1lJ3Mg
c2VyaWVzIGlzIG1lcmdlZCBhbmQgcmVpbnRyb2R1Y2UgY3NjIAphZnRlciB0aGF0CgotIHNvbWV0
aGluZyBlbHNlCgo/CgpQbGVhc2UgYWR2aXNlLgoKVGhhbmtzLAoKQWxleAoKPiBNYXhpbWUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
