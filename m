Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4BB6C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 14:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPzHS/fQMxcKQABIp6TRH6PjzEGsNFhJ9IprWlpm1aY=; b=O5nJ6p95jEV8NL
	fkVIYYajBCbrXvYrFYOtqqAeNjrFZ8Z5bd3QSMp4LkSWBH73yuf0F+0G+m6Ebvoj3Cqa3UfOnob/p
	9ZusQj9qKNfzphY/m65W+SP6oKuoSFVgrlf0++guWvJlx39/N9vTWHkhPH9XteAQiAEcB7VCa7tHi
	nx6eDj8CtlrpPv/khtTK0HpiIwpAh73jFcy8GTlG4hveas01KaTycYxhJJf3ddvfYkRJEpnAEeGdI
	Ok+FLA0V/DIE7CsVmP2lHpvISQ10of5VA+Sevg/eKPu7vRNCc+/UKdMfmCOCDk5GvBKxuqtQYzHi0
	Yrrpqx+wZIbVZCxy4jbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDmLl-000V7U-1p;
	Thu, 14 Dec 2023 14:06:05 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDmLi-000V72-03;
	Thu, 14 Dec 2023 14:06:03 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40c2308faedso83977465e9.1;
        Thu, 14 Dec 2023 06:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702562760; x=1703167560; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pVJeJO1HsRZL15USbnvPbmKRRvrh/D+wF6I/BbjUvtY=;
        b=lIg+9+sdZhhn0+5JVt9hUswT5pmcrTzPrURKnocPDOgM4clisAg/BFAajzyZoKGwYI
         qoEl6/RLyeY6yQ5qQ8AAlh4RjTfH/dYYnGQehysWxD4W9Lec38NaE7nm4X26mQYzzbFM
         bSLcaxq415hETZ8MvS+xhiQd8XLXgwrOYFGHFwUrkA94MPV7yuOytjGokiteSdRUUYOw
         gY/KNMeLeh4Gw/gO60D9HjKtcXuUDewulBWvN3p0E6rS3g93t+XSlAc+fSw+gdFw49JE
         K9+lQ6NnuTpIMupuxkDoL/1jN99tzZbFX5gCtGw81mJ70q0Hkm4ZdyGUatJQpuHMWnBN
         GzYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702562760; x=1703167560;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pVJeJO1HsRZL15USbnvPbmKRRvrh/D+wF6I/BbjUvtY=;
        b=CqedImgYv9PRsawrxIvNaGpW0mtgjIIuqhXl0Dufo55krwJXXtB3b4X9K2aiC/tssh
         GBZfyK0w2voElP1RmmyJr6lJlMg+KdMfhZW4uVg3+wySzd6JnqXcyIZSdfr58FgJdtbx
         jB6rm009wyDwFegiBkvztZsuBNdR8+44AyRT7NGRhTsemwA7g7MlPiCyHE7pPrwxYpWY
         onH/Tw00B9GgL/bicYY7cyaXC+xohIvzg8s1Oi4ALweB5ecp8bTu8SP8+DaABbJWvLdP
         V0Cqq0xU/+dRgTJHtgb87n6y7ArFHJ/OItpm+MV4PbLhZilrRnrQNp4iwARfMFMxmYyp
         A28Q==
X-Gm-Message-State: AOJu0YyoT3c+PYUUCaHZtPUrd9F0zUmEEJPfHECHXa5HU/JoDc7qlAmv
	wTLOOIQ5iCYS6lzGB85/xg==
X-Google-Smtp-Source: AGHT+IGEibxucWSKbBiOsWTsKNrxSPrV0djit9jKX1j4/jyMouWXn8buCXt4pJ+c4g6ulVA7yUvrYw==
X-Received: by 2002:a05:600c:1c1f:b0:3fe:4cbc:c345 with SMTP id j31-20020a05600c1c1f00b003fe4cbcc345mr4925156wms.41.1702562760052;
        Thu, 14 Dec 2023 06:06:00 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:fb6a:140c:b21d:7387? ([2a02:810b:f40:4300:fb6a:140c:b21d:7387])
        by smtp.gmail.com with ESMTPSA id r20-20020a05600c35d400b0040b538047b4sm27230090wmq.3.2023.12.14.06.05.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 06:05:59 -0800 (PST)
Message-ID: <a8f13e19-7bb3-4a7f-a264-1e1ede1864e0@gmail.com>
Date: Thu, 14 Dec 2023 15:05:59 +0100
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
 <5f4fc919-681f-44ec-bd44-5788e5b718ca@gmail.com>
 <db3kdzy4ogf3o2fd6apr36s44qitcsxksfkfa2oc77s5y6dv2w@kfji4iszthxa>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <db3kdzy4ogf3o2fd6apr36s44qitcsxksfkfa2oc77s5y6dv2w@kfji4iszthxa>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_060602_058650_AB932161 
X-CRM114-Status: GOOD (  32.38  )
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

CkFtIDE0LjEyLjIzIHVtIDEyOjMzIHNjaHJpZWIgTWF4aW1lIFJpcGFyZDoKPiBPbiBUaHUsIERl
YyAxNCwgMjAyMyBhdCAxMjoxMjowOFBNICswMTAwLCBBbGV4IEJlZSB3cm90ZToKPj4gSGkgTWF4
aW1lCj4+Cj4+IEFtIDE0LjEyLjIzIHVtIDA4OjU2IHNjaHJpZWIgTWF4aW1lIFJpcGFyZDoKPj4+
IEhpIEFsZXgsCj4+Pgo+Pj4gVGhhbmtzIGZvciB3b3JraW5nIG9uIHRoaXMhCj4+Pgo+Pj4gT24g
V2VkLCBEZWMgMTMsIDIwMjMgYXQgMDg6NTE6MThQTSArMDEwMCwgQWxleCBCZWUgd3JvdGU6Cj4+
Pj4gVGhlIGRpc3BsYXkgY29udHJvbGxlciB3aWxsIGFsd2F5cyBnaXZlIGZ1bGwgcmFuZ2UgUkdC
IHJlZ2FyZGxlc3Mgb2YgdGhlCj4+Pj4gbW9kZSBzZXQsIGJ1dCBIRE1JIHJlcXVpcmVzIGNlcnRh
aW4gbW9kZXMgdG8gYmUgdHJhbnNtaXR0ZWQgaW4gbGltaXRlZAo+Pj4+IHJhbmdlIFJHQi4gVGhp
cyBpcyBlc3BlY2lhbGx5IHJlcXVpcmVkIGZvciBIRE1JIHNpbmtzIHdoaWNoIGRvIG5vdCBzdXBw
b3J0Cj4+Pj4gbm9uLXN0YW5kYXJkIHF1YW50aXphdGlvbiByYW5nZXMuCj4+Pj4KPj4+PiBUaGlz
IGVuYWJsZXMgY29sb3Igc3BhY2UgY29udmVyc2lvbiBmb3IgdGhvc2UgbW9kZXMgYW5kIHNldHMg
dGhlCj4+Pj4gcXVhbnRpemF0aW9uIHJhbmdlIGFjY29yZGluZ2x5IGluIHRoZSBBVkkgaW5mb2Zy
YW1lLgo+Pj4+Cj4+Pj4gRml4ZXM6IDQxMmQ0YWU2YjdhNSAoImRybS9yb2NrY2hpcDogaGRtaTog
YWRkIElubm9zaWxpY29uIEhETUkgc3VwcG9ydCIpCj4+Pj4gU2lnbmVkLW9mZi1ieTogQWxleCBC
ZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2lubm9faGRtaS5jIHwgNDAgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQo+
Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+
Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWku
YyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwo+Pj4+IGluZGV4IDM0NTI1
M2UwMzNjNS4uMzI2MjZhNzU3MjNjIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9pbm5vX2hkbWkuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9p
bm5vX2hkbWkuYwo+Pj4+IEBAIC0zMyw2ICszMyw3IEBAIHN0cnVjdCBoZG1pX2RhdGFfaW5mbyB7
Cj4+Pj4gICAgCXVuc2lnbmVkIGludCBlbmNfaW5fZm9ybWF0Owo+Pj4+ICAgIAl1bnNpZ25lZCBp
bnQgZW5jX291dF9mb3JtYXQ7Cj4+Pj4gICAgCXVuc2lnbmVkIGludCBjb2xvcmltZXRyeTsKPj4+
PiArCWJvb2wgcmdiX2xpbWl0ZWRfcmFuZ2U7Cj4+Pj4gICAgfTsKPj4+PiAgICBzdHJ1Y3QgaW5u
b19oZG1pX2kyYyB7Cj4+Pj4gQEAgLTMwOCw2ICszMDksMTggQEAgc3RhdGljIGludCBpbm5vX2hk
bWlfY29uZmlnX3ZpZGVvX2F2aShzdHJ1Y3QgaW5ub19oZG1pICpoZG1pLAo+Pj4+ICAgIAllbHNl
Cj4+Pj4gICAgCQlmcmFtZS5hdmkuY29sb3JzcGFjZSA9IEhETUlfQ09MT1JTUEFDRV9SR0I7Cj4+
Pj4gKwlpZiAoaGRtaS0+aGRtaV9kYXRhLmVuY19vdXRfZm9ybWF0ID09IEhETUlfQ09MT1JTUEFD
RV9SR0IpIHsKPj4+PiArCQlkcm1faGRtaV9hdmlfaW5mb2ZyYW1lX3F1YW50X3JhbmdlKCZmcmFt
ZS5hdmksCj4+Pj4gKwkJCQkJCSAgICZoZG1pLT5jb25uZWN0b3IsIG1vZGUsCj4+Pj4gKwkJCQkJ
CSAgIGhkbWktPmhkbWlfZGF0YS5yZ2JfbGltaXRlZF9yYW5nZSA/Cj4+Pj4gKwkJCQkJCSAgIEhE
TUlfUVVBTlRJWkFUSU9OX1JBTkdFX0xJTUlURUQgOgo+Pj4+ICsJCQkJCQkgICBIRE1JX1FVQU5U
SVpBVElPTl9SQU5HRV9GVUxMKTsKPj4+PiArCX0gZWxzZSB7Cj4+Pj4gKwkJZnJhbWUuYXZpLnF1
YW50aXphdGlvbl9yYW5nZSA9IEhETUlfUVVBTlRJWkFUSU9OX1JBTkdFX0RFRkFVTFQ7Cj4+Pj4g
KwkJZnJhbWUuYXZpLnljY19xdWFudGl6YXRpb25fcmFuZ2UgPQo+Pj4+ICsJCQlIRE1JX1lDQ19R
VUFOVElaQVRJT05fUkFOR0VfTElNSVRFRDsKPj4+PiArCX0KPj4+PiArCj4+Pj4gICAgCXJldHVy
biBpbm5vX2hkbWlfdXBsb2FkX2ZyYW1lKGhkbWksIHJjLCAmZnJhbWUsIElORk9GUkFNRV9BVkks
IDAsIDAsIDApOwo+Pj4+ICAgIH0KPj4+PiBAQCAtMzM0LDE0ICszNDcsMjIgQEAgc3RhdGljIGlu
dCBpbm5vX2hkbWlfY29uZmlnX3ZpZGVvX2NzYyhzdHJ1Y3QgaW5ub19oZG1pICpoZG1pKQo+Pj4+
ICAgIAlpZiAoZGF0YS0+ZW5jX2luX2Zvcm1hdCA9PSBkYXRhLT5lbmNfb3V0X2Zvcm1hdCkgewo+
Pj4+ICAgIAkJaWYgKChkYXRhLT5lbmNfaW5fZm9ybWF0ID09IEhETUlfQ09MT1JTUEFDRV9SR0Ip
IHx8Cj4+Pj4gICAgCQkgICAgKGRhdGEtPmVuY19pbl9mb3JtYXQgPj0gSERNSV9DT0xPUlNQQUNF
X1lVVjQ0NCkpIHsKPj4+PiAtCQkJdmFsdWUgPSB2X1NPRl9ESVNBQkxFIHwgdl9DT0xPUl9ERVBU
SF9OT1RfSU5ESUNBVEVEKDEpOwo+Pj4+IC0JCQloZG1pX3dyaXRlYihoZG1pLCBIRE1JX1ZJREVP
X0NPTlRSTDMsIHZhbHVlKTsKPj4+PiAtCj4+Pj4gLQkJCWhkbWlfbW9kYihoZG1pLCBIRE1JX1ZJ
REVPX0NPTlRSTCwKPj4+PiAtCQkJCSAgbV9WSURFT19BVVRPX0NTQyB8IG1fVklERU9fQzBfQzJf
U1dBUCwKPj4+PiAtCQkJCSAgdl9WSURFT19BVVRPX0NTQyhBVVRPX0NTQ19ESVNBQkxFKSB8Cj4+
Pj4gLQkJCQkgIHZfVklERU9fQzBfQzJfU1dBUChDMF9DMl9DSEFOR0VfRElTQUJMRSkpOwo+Pj4+
IC0JCQlyZXR1cm4gMDsKPj4+PiArCQkJaWYgKGRhdGEtPmVuY19pbl9mb3JtYXQgPT0gSERNSV9D
T0xPUlNQQUNFX1JHQiAmJgo+Pj4+ICsJCQkgICAgZGF0YS0+ZW5jX291dF9mb3JtYXQgPT0gSERN
SV9DT0xPUlNQQUNFX1JHQiAmJgo+Pj4+ICsJCQkgICAgaGRtaS0+aGRtaV9kYXRhLnJnYl9saW1p
dGVkX3JhbmdlKSB7Cj4+Pj4gKwkJCQljc2NfbW9kZSA9IENTQ19SR0JfMF8yNTVfVE9fUkdCXzE2
XzIzNV84QklUOwo+Pj4+ICsJCQkJYXV0b19jc2MgPSBBVVRPX0NTQ19ESVNBQkxFOwo+Pj4+ICsJ
CQkJYzBfYzJfY2hhbmdlID0gQzBfQzJfQ0hBTkdFX0RJU0FCTEU7Cj4+Pj4gKwkJCQljc2NfZW5h
YmxlID0gdl9DU0NfRU5BQkxFOwo+Pj4+ICsJCQl9IGVsc2Ugewo+Pj4+ICsJCQkJdmFsdWUgPSB2
X1NPRl9ESVNBQkxFIHwgdl9DT0xPUl9ERVBUSF9OT1RfSU5ESUNBVEVEKDEpOwo+Pj4+ICsJCQkJ
aGRtaV93cml0ZWIoaGRtaSwgSERNSV9WSURFT19DT05UUkwzLCB2YWx1ZSk7Cj4+Pj4gKwkJCQlo
ZG1pX21vZGIoaGRtaSwgSERNSV9WSURFT19DT05UUkwsCj4+Pj4gKwkJCQkJICBtX1ZJREVPX0FV
VE9fQ1NDIHwgbV9WSURFT19DMF9DMl9TV0FQLAo+Pj4+ICsJCQkJCSAgdl9WSURFT19BVVRPX0NT
QyhBVVRPX0NTQ19ESVNBQkxFKSB8Cj4+Pj4gKwkJCQkJICB2X1ZJREVPX0MwX0MyX1NXQVAoQzBf
QzJfQ0hBTkdFX0RJU0FCTEUpKTsKPj4+PiArCQkJCXJldHVybiAwOwo+Pj4+ICsJCQl9Cj4+Pj4g
ICAgCQl9Cj4+Pj4gICAgCX0KPj4+PiBAQCAtNDU4LDYgKzQ3OSw5IEBAIHN0YXRpYyBpbnQgaW5u
b19oZG1pX3NldHVwKHN0cnVjdCBpbm5vX2hkbWkgKmhkbWksCj4+Pj4gICAgCWVsc2UKPj4+PiAg
ICAJCWhkbWktPmhkbWlfZGF0YS5jb2xvcmltZXRyeSA9IEhETUlfQ09MT1JJTUVUUllfSVRVXzcw
OTsKPj4+PiArCWhkbWktPmhkbWlfZGF0YS5yZ2JfbGltaXRlZF9yYW5nZSA9Cj4+Pj4gKwkJZHJt
X2RlZmF1bHRfcmdiX3F1YW50X3JhbmdlKG1vZGUpID09IEhETUlfUVVBTlRJWkFUSU9OX1JBTkdF
X0xJTUlURUQ7Cj4+Pj4gKwo+Pj4gVGhpcyBwYXRjaCBjb25mbGljdHMgaGVhdmlseSB3aXRoIG15
IGlubm9faGRtaSBwYXRjaGVzIGhlcmUgKHBhdGNoZXMgMjIgdG8gMzgpOgo+Pj4gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjMxMjA3LWttcy1oZG1pLWNvbm5lY3Rvci1zdGF0
ZS12NS0wLTY1MzhlMTlkNjM0ZEBrZXJuZWwub3JnLwo+PiBJJ20gYXdhcmUgb2YgdGhhdCBhbmQg
SSBtZW50aW9uZWQgaXQgaW4gdGhlIGNvdmVyIGxldHRlci4KPiBTb3JyeSwgSSBtaXNzZWQgdGhh
dCBwYXJ0Lgo+Cj4+IFlvdXIgc2VyaWVzIGlzIG5vdCBtZXJnZWQgeWV0IGFuZCBpdCBkaWRuJ3Qg
Z2V0IG11Y2ggZmVlZGJhY2sgc28gZmFyLgo+PiBXaGF0IGlzIHRoZSBzdGF0dXMgdGhlcmU/Cj4g
SXQgZGlkbid0IGhhdmUgbXVjaCByZXZpZXdzLCBidXQgSSdsbCBob3BlIHRvIGNoYW5nZSB0aGF0
LiBGb3IgdGhlCj4gcGF0Y2hlcyAyMiB0byAzOCB0aG91Z2gsIGl0IGRvZXNuJ3QgcmVhbGx5IG1h
dHRlci4gVGhvc2UgY2hhbmdlcyBhcmUKPiBzZWxmLWNvbnRhaW5lZCBhbmQgY2FuIGJlIGFwcGxp
ZWQgYXMgaXMgb3V0c2lkZSBvZiB0aGUgc2VyaWVzLgo+Cj4+IEVzcGVjaWFsbHkgYmVjYXVzZSB5
b3UgYXJlIHJlbW92aW5nIHRoaW5ncyBmcm9tIGlubm8taGRtaSBkcml2ZXIgKHdoaWNoCj4+IGFy
ZW4ndCByZWFsbHkgcmVxdWlyZWQgdG8gcmVtb3ZlIHRoZXJlKSB3aGljaCB3aWxsIEkgaGF2ZSB0
byByZWludHJvZHVjZS4KPiBJJ20gbm90IGVudGlyZWx5IHN1cmUgd2hpY2ggcGFydCBJIHJlbW92
ZSB0aGF0IGFyZSBhY3R1YWxseSBnb2luZyB0byBiZQo+IHVzZWQgaGVyZS4KSSdtIHJlZmVyaW5n
IHRvIFtQQVRDSCB2NSAzMy80NF0gd2hpY2ggY29tcGxldGx5IHJlbW92ZXMgY3NjIGNvZWZmcyBi
dXQgCnRoaXMgc2VyaWVzIG5lZWRzIHRoZSBDU0NfUkdCXzBfMjU1X1RPX1JHQl8xNl8yMzVfOEJJ
VMKgIGNvZWZmcyBhbmTCoCAKW1BBVENIIHY1IDI5LzQ0XSB3aGljaCByZW1vdmVzIHdyaXRpbmcg
Y3NjX2NvZWZmcyB0byB0aGUgaGFyZHdhcmUuCj4KPj4+IEkgd291bGQgYXBwcmVjaWF0ZSBpZiB5
b3UgY291bGQgdGVzdCBhbmQgbWVyZ2UgdGhlbSBpbnRvIHlvdXIgc2VyaWVzLgo+Pj4KPj4+IElu
IHBhcnRpY3VsYXIsIHRoZXJlJ3Mgbm8gbmVlZCB0byBzdG9yZSB0aGUgcmFuZ2UgaGVyZTogZW5j
X291dF9mb3JtYXQKPj4gcmdiX2xpbWl0ZWRfcmFuZ2UgaXMgY3VycmVudGx5IG5vdCBvbmx5IHVz
ZWQgZm9yIGNzYywgYnV0IGFsc28gZm9yIGZvcgo+PiBpbmZvZnJhbWUgY3JlYXRpb24uIFNvIGl0
IG1ha2VzIHNlbnNlIHRvIGhhdmUgdGhpcyBzdG9yZWTCoCB0byBhdm9pZCBjYWxsaW5nCj4+IGRy
bV9kZWZhdWx0X3JnYl9xdWFudF9yYW5nZSB0d2ljZS4KPiBZb3UncmUgcmlnaHQsIEkgbWlzc2Vk
IG9uZS4gU3RpbGwsIGl0IHNob3VsZG4ndCBiZSBzdG9yZWQgaW4gdGhlCj4gaGRtaV9kYXRhX2lu
Zm8gc3RydWN0dXJlLCBpdCdzIHRpZWQgdG8gdGhlIG1vZGUsIGFuZCB0aGUgbW9kZSBpcyBwYXJ0
IG9mCj4gdGhlIHN0YXRlLCBzbyBpdCdzIG5vdCBhIHByb3BlcnR5IHRvIGEgZ2l2ZW4gZGV2aWNl
LCBidXQgaXQncyB0aWVkIHRvCj4gdGhlIGNvbm5lY3RvciBzdGF0ZS4KPgo+IFNvIGlmIHlvdSB3
YW50IHRvIGRvIHNvLCB5b3Ugc2hvdWxkIHJlYWxseSBjcmVhdGUgYSBjdXN0b20gc3RhdGUKPiBz
dHJ1Y3R1cmUgYW5kIHN0b3JlIHRoZSByYW5nZSB0aGVyZSwganVzdCBsaWtlIHZjNCBpcyBkb2lu
ZyBmb3IgZXhhbXBsZS4KCk9LIC0gSSdsbCBjaGVjay4KCkFsZXgKCj4KPiBNYXhpbWUKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
