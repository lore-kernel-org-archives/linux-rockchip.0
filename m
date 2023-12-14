Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A306BC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 11:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7nmf/eg5NZ4pqmF8GtEWPWHdleRMwFvnoXP/Bjui0A=; b=Rt3406axbsgGMm
	xYqnQ+4n0FL8T1nmJEXRGmqppwSxG/lkhes/8+gvhfFt7WX9b5VA2dJi+KsC1pjyMT12Za2jL1AWi
	WA1YymSTpCXN+eAP1SriXq1Dr1vYA6CY/IP6NbYqr4Niq1uYmk2qqpMkWaP3wzF2945QV7tpR6AFr
	LpamJ3UvPIaKu3zm8cDZMFcagkAQlV9qppdU0EebQI12t2UQXwxlyQyuwof0nU1j5SzIcIT0w+ifY
	QF3kNkTAPnM9Iyx2RQt7SLj1sI97sLvpO5iajNYJWZiP8qbPmQX0LsA3h63JzYt65O9Ddcs52KOaW
	bI7rSStfQyf1DvuXUU/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjdX-00HavC-13;
	Thu, 14 Dec 2023 11:12:15 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjdU-00Haug-0K;
	Thu, 14 Dec 2023 11:12:13 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40c39e936b4so55560065e9.1;
        Thu, 14 Dec 2023 03:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702552330; x=1703157130; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jt3J4/XVejxY3vgug3dZf1dqYgtLiD4GN4h1GZSs4D4=;
        b=B5GHEWlV4W7QeHNgGc0oTrbE+JZSAJntVug6kFyVZkVz/rpjnohDy1+vadFNIG1NsI
         R5Sit1zH1HnZCwXb7Cou5P61GnNy3635nGUbwprr4ex03/U/bXKpIYm5vednaU8vsGCa
         KR5IFiNCJ9dUAPzDldPrrXjZ+C3QO+7uSD0o9JxXReBna9bfP0OYPApDbZzWymoVUUDA
         NRh0/47vmqqfq+lBFsAXrFeIRKVff7EM36+5s07s5TREFAR2XWEz32NLbYuzl6g0866J
         rWSaO4sSi1J6ISYcRILah9WrKvOsxvPsz/7raL6RkeUYPkaSG6NMHaBhrh7YtG+FW3iV
         6ObQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702552330; x=1703157130;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jt3J4/XVejxY3vgug3dZf1dqYgtLiD4GN4h1GZSs4D4=;
        b=UZmOIYR4vfqjgsnvz15SKvyR08zuOSXMtSecwsw9gOsiGxrnQQiUagcVPo+xVxKby2
         Y7CZ7P69jepBVzq0bJeMkBspyUBE6XMViHWe+34BeCNFJFXwc58tG6me1wpiE5a5WK6M
         4DtScOHm0MtUA2MS0cnWWzOWVhky/Dd7YfpbwWee2ltPkLQ/b8/42nIVlxLdWPv/LwqT
         nvbBQPo0q/PZCfk6It9hdqqYiSoG+AO0PtXe8hoYHtFnmw9FgeTWAGryVFxesRoa2dSq
         +s96EclPaJGYEUc2GxgKw5Jdb+wzR5msdbdZEGcf50emrqLHZ5sS0JrXybqHkY875nhs
         hEag==
X-Gm-Message-State: AOJu0YwXB8kF9qVXz5dul9KuRWr6RDflcRfWaM96NFbRSVKf+6vOoRD2
	AG/wHPUVPMzQNWbSNmETOg==
X-Google-Smtp-Source: AGHT+IH6qQC1lEItZ7W1lmW+7AIvLe0ftRHmT6AJLFYLNgUi45vN5PWdueQZ+pgIonqZbP1xpBjkFg==
X-Received: by 2002:a05:600c:3657:b0:40c:35b3:b797 with SMTP id y23-20020a05600c365700b0040c35b3b797mr2444927wmq.35.1702552329884;
        Thu, 14 Dec 2023 03:12:09 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:bca3:dfc6:dafa:abb2? ([2a02:810b:f40:4300:bca3:dfc6:dafa:abb2])
        by smtp.gmail.com with ESMTPSA id l39-20020a05600c1d2700b0040c2c5f5844sm24347188wms.21.2023.12.14.03.12.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 03:12:09 -0800 (PST)
Message-ID: <5f4fc919-681f-44ec-bd44-5788e5b718ca@gmail.com>
Date: Thu, 14 Dec 2023 12:12:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/11] drm/rockchip: inno_hdmi: Correctly setup HDMI
 quantization range
Content-Language: en-US, de-DE
To: Maxime Ripard <mripard@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andyshrk@163.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <20231213195125.212923-5-knaerzche@gmail.com>
 <w7cj24se5gjomfynp5yindnh3s2pea4p3f46u6y7lcci7hri32@62i6hg26pheb>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <w7cj24se5gjomfynp5yindnh3s2pea4p3f46u6y7lcci7hri32@62i6hg26pheb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_031212_143887_61F7D9D9 
X-CRM114-Status: GOOD (  28.17  )
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

SGkgTWF4aW1lCgpBbSAxNC4xMi4yMyB1bSAwODo1NiBzY2hyaWViIE1heGltZSBSaXBhcmQ6Cj4g
SGkgQWxleCwKPgo+IFRoYW5rcyBmb3Igd29ya2luZyBvbiB0aGlzIQo+Cj4gT24gV2VkLCBEZWMg
MTMsIDIwMjMgYXQgMDg6NTE6MThQTSArMDEwMCwgQWxleCBCZWUgd3JvdGU6Cj4+IFRoZSBkaXNw
bGF5IGNvbnRyb2xsZXIgd2lsbCBhbHdheXMgZ2l2ZSBmdWxsIHJhbmdlIFJHQiByZWdhcmRsZXNz
IG9mIHRoZQo+PiBtb2RlIHNldCwgYnV0IEhETUkgcmVxdWlyZXMgY2VydGFpbiBtb2RlcyB0byBi
ZSB0cmFuc21pdHRlZCBpbiBsaW1pdGVkCj4+IHJhbmdlIFJHQi4gVGhpcyBpcyBlc3BlY2lhbGx5
IHJlcXVpcmVkIGZvciBIRE1JIHNpbmtzIHdoaWNoIGRvIG5vdCBzdXBwb3J0Cj4+IG5vbi1zdGFu
ZGFyZCBxdWFudGl6YXRpb24gcmFuZ2VzLgo+Pgo+PiBUaGlzIGVuYWJsZXMgY29sb3Igc3BhY2Ug
Y29udmVyc2lvbiBmb3IgdGhvc2UgbW9kZXMgYW5kIHNldHMgdGhlCj4+IHF1YW50aXphdGlvbiBy
YW5nZSBhY2NvcmRpbmdseSBpbiB0aGUgQVZJIGluZm9mcmFtZS4KPj4KPj4gRml4ZXM6IDQxMmQ0
YWU2YjdhNSAoImRybS9yb2NrY2hpcDogaGRtaTogYWRkIElubm9zaWxpY29uIEhETUkgc3VwcG9y
dCIpCj4+IFNpZ25lZC1vZmYtYnk6IEFsZXggQmVlIDxrbmFlcnpjaGVAZ21haWwuY29tPgo+PiAt
LS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMgfCA0MCArKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMo
KyksIDggZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvaW5ub19oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMK
Pj4gaW5kZXggMzQ1MjUzZTAzM2M1Li4zMjYyNmE3NTcyM2MgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvaW5ub19oZG1pLmMKPj4gQEAgLTMzLDYgKzMzLDcgQEAgc3RydWN0IGhkbWlfZGF0
YV9pbmZvIHsKPj4gICAJdW5zaWduZWQgaW50IGVuY19pbl9mb3JtYXQ7Cj4+ICAgCXVuc2lnbmVk
IGludCBlbmNfb3V0X2Zvcm1hdDsKPj4gICAJdW5zaWduZWQgaW50IGNvbG9yaW1ldHJ5Owo+PiAr
CWJvb2wgcmdiX2xpbWl0ZWRfcmFuZ2U7Cj4+ICAgfTsKPj4gICAKPj4gICBzdHJ1Y3QgaW5ub19o
ZG1pX2kyYyB7Cj4+IEBAIC0zMDgsNiArMzA5LDE4IEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX2Nv
bmZpZ192aWRlb19hdmkoc3RydWN0IGlubm9faGRtaSAqaGRtaSwKPj4gICAJZWxzZQo+PiAgIAkJ
ZnJhbWUuYXZpLmNvbG9yc3BhY2UgPSBIRE1JX0NPTE9SU1BBQ0VfUkdCOwo+PiAgIAo+PiArCWlm
IChoZG1pLT5oZG1pX2RhdGEuZW5jX291dF9mb3JtYXQgPT0gSERNSV9DT0xPUlNQQUNFX1JHQikg
ewo+PiArCQlkcm1faGRtaV9hdmlfaW5mb2ZyYW1lX3F1YW50X3JhbmdlKCZmcmFtZS5hdmksCj4+
ICsJCQkJCQkgICAmaGRtaS0+Y29ubmVjdG9yLCBtb2RlLAo+PiArCQkJCQkJICAgaGRtaS0+aGRt
aV9kYXRhLnJnYl9saW1pdGVkX3JhbmdlID8KPj4gKwkJCQkJCSAgIEhETUlfUVVBTlRJWkFUSU9O
X1JBTkdFX0xJTUlURUQgOgo+PiArCQkJCQkJICAgSERNSV9RVUFOVElaQVRJT05fUkFOR0VfRlVM
TCk7Cj4+ICsJfSBlbHNlIHsKPj4gKwkJZnJhbWUuYXZpLnF1YW50aXphdGlvbl9yYW5nZSA9IEhE
TUlfUVVBTlRJWkFUSU9OX1JBTkdFX0RFRkFVTFQ7Cj4+ICsJCWZyYW1lLmF2aS55Y2NfcXVhbnRp
emF0aW9uX3JhbmdlID0KPj4gKwkJCUhETUlfWUNDX1FVQU5USVpBVElPTl9SQU5HRV9MSU1JVEVE
Owo+PiArCX0KPj4gKwo+PiAgIAlyZXR1cm4gaW5ub19oZG1pX3VwbG9hZF9mcmFtZShoZG1pLCBy
YywgJmZyYW1lLCBJTkZPRlJBTUVfQVZJLCAwLCAwLCAwKTsKPj4gICB9Cj4+ICAgCj4+IEBAIC0z
MzQsMTQgKzM0NywyMiBAQCBzdGF0aWMgaW50IGlubm9faGRtaV9jb25maWdfdmlkZW9fY3NjKHN0
cnVjdCBpbm5vX2hkbWkgKmhkbWkpCj4+ICAgCWlmIChkYXRhLT5lbmNfaW5fZm9ybWF0ID09IGRh
dGEtPmVuY19vdXRfZm9ybWF0KSB7Cj4+ICAgCQlpZiAoKGRhdGEtPmVuY19pbl9mb3JtYXQgPT0g
SERNSV9DT0xPUlNQQUNFX1JHQikgfHwKPj4gICAJCSAgICAoZGF0YS0+ZW5jX2luX2Zvcm1hdCA+
PSBIRE1JX0NPTE9SU1BBQ0VfWVVWNDQ0KSkgewo+PiAtCQkJdmFsdWUgPSB2X1NPRl9ESVNBQkxF
IHwgdl9DT0xPUl9ERVBUSF9OT1RfSU5ESUNBVEVEKDEpOwo+PiAtCQkJaGRtaV93cml0ZWIoaGRt
aSwgSERNSV9WSURFT19DT05UUkwzLCB2YWx1ZSk7Cj4+IC0KPj4gLQkJCWhkbWlfbW9kYihoZG1p
LCBIRE1JX1ZJREVPX0NPTlRSTCwKPj4gLQkJCQkgIG1fVklERU9fQVVUT19DU0MgfCBtX1ZJREVP
X0MwX0MyX1NXQVAsCj4+IC0JCQkJICB2X1ZJREVPX0FVVE9fQ1NDKEFVVE9fQ1NDX0RJU0FCTEUp
IHwKPj4gLQkJCQkgIHZfVklERU9fQzBfQzJfU1dBUChDMF9DMl9DSEFOR0VfRElTQUJMRSkpOwo+
PiAtCQkJcmV0dXJuIDA7Cj4+ICsJCQlpZiAoZGF0YS0+ZW5jX2luX2Zvcm1hdCA9PSBIRE1JX0NP
TE9SU1BBQ0VfUkdCICYmCj4+ICsJCQkgICAgZGF0YS0+ZW5jX291dF9mb3JtYXQgPT0gSERNSV9D
T0xPUlNQQUNFX1JHQiAmJgo+PiArCQkJICAgIGhkbWktPmhkbWlfZGF0YS5yZ2JfbGltaXRlZF9y
YW5nZSkgewo+PiArCQkJCWNzY19tb2RlID0gQ1NDX1JHQl8wXzI1NV9UT19SR0JfMTZfMjM1XzhC
SVQ7Cj4+ICsJCQkJYXV0b19jc2MgPSBBVVRPX0NTQ19ESVNBQkxFOwo+PiArCQkJCWMwX2MyX2No
YW5nZSA9IEMwX0MyX0NIQU5HRV9ESVNBQkxFOwo+PiArCQkJCWNzY19lbmFibGUgPSB2X0NTQ19F
TkFCTEU7Cj4+ICsJCQl9IGVsc2Ugewo+PiArCQkJCXZhbHVlID0gdl9TT0ZfRElTQUJMRSB8IHZf
Q09MT1JfREVQVEhfTk9UX0lORElDQVRFRCgxKTsKPj4gKwkJCQloZG1pX3dyaXRlYihoZG1pLCBI
RE1JX1ZJREVPX0NPTlRSTDMsIHZhbHVlKTsKPj4gKwkJCQloZG1pX21vZGIoaGRtaSwgSERNSV9W
SURFT19DT05UUkwsCj4+ICsJCQkJCSAgbV9WSURFT19BVVRPX0NTQyB8IG1fVklERU9fQzBfQzJf
U1dBUCwKPj4gKwkJCQkJICB2X1ZJREVPX0FVVE9fQ1NDKEFVVE9fQ1NDX0RJU0FCTEUpIHwKPj4g
KwkJCQkJICB2X1ZJREVPX0MwX0MyX1NXQVAoQzBfQzJfQ0hBTkdFX0RJU0FCTEUpKTsKPj4gKwkJ
CQlyZXR1cm4gMDsKPj4gKwkJCX0KPj4gICAJCX0KPj4gICAJfQo+PiAgIAo+PiBAQCAtNDU4LDYg
KzQ3OSw5IEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX3NldHVwKHN0cnVjdCBpbm5vX2hkbWkgKmhk
bWksCj4+ICAgCWVsc2UKPj4gICAJCWhkbWktPmhkbWlfZGF0YS5jb2xvcmltZXRyeSA9IEhETUlf
Q09MT1JJTUVUUllfSVRVXzcwOTsKPj4gICAKPj4gKwloZG1pLT5oZG1pX2RhdGEucmdiX2xpbWl0
ZWRfcmFuZ2UgPQo+PiArCQlkcm1fZGVmYXVsdF9yZ2JfcXVhbnRfcmFuZ2UobW9kZSkgPT0gSERN
SV9RVUFOVElaQVRJT05fUkFOR0VfTElNSVRFRDsKPj4gKwo+IFRoaXMgcGF0Y2ggY29uZmxpY3Rz
IGhlYXZpbHkgd2l0aCBteSBpbm5vX2hkbWkgcGF0Y2hlcyBoZXJlIChwYXRjaGVzIDIyIHRvIDM4
KToKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMzEyMDcta21zLWhkbWkt
Y29ubmVjdG9yLXN0YXRlLXY1LTAtNjUzOGUxOWQ2MzRkQGtlcm5lbC5vcmcvCkknbSBhd2FyZSBv
ZiB0aGF0IGFuZCBJIG1lbnRpb25lZCBpdCBpbiB0aGUgY292ZXIgbGV0dGVyLiBZb3VyIHNlcmll
cyBpcyAKbm90IG1lcmdlZCB5ZXQgYW5kIGl0IGRpZG4ndCBnZXQgbXVjaCBmZWVkYmFjayBzbyBm
YXIuIFdoYXQgaXMgdGhlIApzdGF0dXMgdGhlcmU/IEVzcGVjaWFsbHkgYmVjYXVzZSB5b3UgYXJl
IHJlbW92aW5nIHRoaW5ncyBmcm9tIGlubm8taGRtaSAKZHJpdmVyICh3aGljaCBhcmVuJ3QgcmVh
bGx5IHJlcXVpcmVkIHRvIHJlbW92ZSB0aGVyZSkgd2hpY2ggd2lsbCBJIGhhdmUgCnRvIHJlaW50
cm9kdWNlLgoKPiBJIHdvdWxkIGFwcHJlY2lhdGUgaWYgeW91IGNvdWxkIHRlc3QgYW5kIG1lcmdl
IHRoZW0gaW50byB5b3VyIHNlcmllcy4KPgo+IEluIHBhcnRpY3VsYXIsIHRoZXJlJ3Mgbm8gbmVl
ZCB0byBzdG9yZSB0aGUgcmFuZ2UgaGVyZTogZW5jX291dF9mb3JtYXQKcmdiX2xpbWl0ZWRfcmFu
Z2UgaXMgY3VycmVudGx5IG5vdCBvbmx5IHVzZWQgZm9yIGNzYywgYnV0IGFsc28gZm9yIGZvciAK
aW5mb2ZyYW1lIGNyZWF0aW9uLiBTbyBpdCBtYWtlcyBzZW5zZSB0byBoYXZlIHRoaXMgc3RvcmVk
wqAgdG8gYXZvaWQgCmNhbGxpbmcgZHJtX2RlZmF1bHRfcmdiX3F1YW50X3JhbmdlIHR3aWNlLgoK
PiBpcyBhbHdheXMgUkdCLCBzbyB5b3UnbGwgYWx3YXlzIGVuZCB1cCBjYWxsaW5nCj4gZHJtX2hk
bWlfYXZpX2luZm9mcmFtZV9xdWFudF9yYW5nZSgpLCBhbmQgeW91J2xsIGFsd2F5cyBoYXZlIHRo
ZSBzYW1lIGNzYyB2YWx1ZXMuCgpJIGRvbid0IHRoaW5rIHRoYXQncyB0cnVlLiBOb24tVklDIG1v
ZGVzIGxpa2UgODAweDYwMCBvciAxMDI0eDc2NCB3YW50IApmdWxsIHJhbmdlIFJHQiBhbmQgY3Nj
IG11c3Qgbm90IGJlIGRvbmUgaW4gdGhvc2UgY2FzZXMuCgpBbGV4Cgo+Cj4gTWF4aW1lCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
