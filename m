Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28433C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 11:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgPZN2bPdXGqjW4ngJsVOukDXbB+w6ylKadakW4GcGI=; b=Pqp+qy/qHbGvSt
	GmBz08V4i/LG8Zf/8W3GuuQK+/Ff9rNrBSV4MufxALooVuHix1cZw32XV0WfoYPnxSV6OAAD7p9SO
	VDi3qgmeT5uSTJYIPruIDQwjqBwXZKb+STlggj6a21P2SdDEmz2N/H+xXZrFR4nboB+X+4Mr0SVJR
	yYs70Df3O5emsR1DejkFvNe1ntV9yUmuyzNXt8OU+7L15eIQ5r+GaZo34HV/fXFoNnBEXj3zNMEt4
	zAI4Il5DT7Aud1V3QcJsUYVrNc1GhWGlZWp2JseaIBCAGJ53Zt4cyTdlrnRWsy4d2S2D+tPhAZFLt
	fJFv9E0JJ1J0kfuKYwug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjit-0000rP-1P;
	Thu, 14 Dec 2023 11:17:47 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjiq-0000p3-0S;
	Thu, 14 Dec 2023 11:17:45 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3333a3a599fso272978f8f.0;
        Thu, 14 Dec 2023 03:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702552661; x=1703157461; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C6K0WZ0aorShhSqsnEfIUTq66rUOD4bR1wUC+mAh/Go=;
        b=ZFGy33awKqmUGqa+PtP+9ijsO2FHFVOUNhjHqEYbi5L8PbeF7BIZjzeIUhUstMVV0v
         Mii6XYv3bG6xjt8irQh5h1Tje+ldk5UW2k21pIOwXgZjctONGKgVFVxVnWQM3Ql6rEOo
         Ds9QSiP9id0AGEASb8W+sbdfiH1rKG7h/BE4ZKe42iuohZqrLLf+nE6QHNPgU2wksSSj
         KvEab1GMjddzqBhUojk7L7f71y9TMfGu9d4YlSnCuQuTYoGcwdxfDjBdf39BtjrP4prQ
         AUmp5/vT5mTo6is9o6CAJTiwmP/AVZAQMrIcQ8WVAjwmWaLCkjwtYEVSjaekcPHEShPP
         WB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702552661; x=1703157461;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C6K0WZ0aorShhSqsnEfIUTq66rUOD4bR1wUC+mAh/Go=;
        b=sxnrn5omUrPERPC8jPfND+fWi8iSaTVEE1qYw9MPBlJjyryV/iJyLGpXixfnQ9qGsI
         9Sq3QoDlPvEhlfkcPhuckQ5di9zE9fS/OfCUeBOtZtbr/HtAso7zXv88dHqFsCTFJ/Ap
         rKeX0PxV1bcb0sjaIALKQR2ECzSTgLQPlONmXI4j1J+3FzMWa7nVUagUjG/ZhZflHNzk
         mIDxzKU2ftAyS18d9Zs5MKb0BOWEtZnRGa8d060CYzq8TZ1DPhJ03fJ64WGSjpQqGyFi
         11KBb2f28ZIWNnJfl1DGRQjZuST8CgrQjrIeLJC0Jz6NSzgCpbpsJvqtR4SO/W4R29kl
         h5Jw==
X-Gm-Message-State: AOJu0YxEhN/R24b1XRT9Qrv2QZ+d0OJKG4vjZZ5WWCCAj0aR9nOJohiQ
	0EhnWdxF+J8vKwb/AhKrzg==
X-Google-Smtp-Source: AGHT+IEevINjdmtXYe++Uxj7j+jPTBOYKKNzmXYywCsfxlRMvG2q2Cm/KTwBw8dNerafqLJmB7glqA==
X-Received: by 2002:a05:600c:3d91:b0:40b:5e56:7b4c with SMTP id bi17-20020a05600c3d9100b0040b5e567b4cmr4959384wmb.149.1702552660830;
        Thu, 14 Dec 2023 03:17:40 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:bca3:dfc6:dafa:abb2? ([2a02:810b:f40:4300:bca3:dfc6:dafa:abb2])
        by smtp.gmail.com with ESMTPSA id e12-20020a05600c4e4c00b0040b398f0585sm24766579wmq.9.2023.12.14.03.17.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 03:17:40 -0800 (PST)
Message-ID: <1b7402b2-ec03-420b-a81b-3e6ea46e402a@gmail.com>
Date: Thu, 14 Dec 2023 12:17:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/11] drm/rockchip: inno_hdmi: Add basic mode validation
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
 <20231213195125.212923-8-knaerzche@gmail.com>
 <wz4e43ateg3gb7745mz22wwyruwavevvpfbqsdxeynejcjxhzn@qbqldsnkktei>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <wz4e43ateg3gb7745mz22wwyruwavevvpfbqsdxeynejcjxhzn@qbqldsnkktei>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_031744_180230_0863DF5C 
X-CRM114-Status: GOOD (  28.27  )
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

SGkgTWF4aW1lLAoKQW0gMTQuMTIuMjMgdW0gMDk6MDUgc2NocmllYiBNYXhpbWUgUmlwYXJkOgo+
IEhpLAo+Cj4gT24gV2VkLCBEZWMgMTMsIDIwMjMgYXQgMDg6NTE6MjFQTSArMDEwMCwgQWxleCBC
ZWUgd3JvdGU6Cj4+IEFzIHBlciBUUk0gdGhpcyBjb250cm9sbGVyIHN1cHBvcnRzIHBpeGVsY2xv
Y2tzIHN0YXJ0aW5nIGZyb20gMjUgTUh6LiBUaGUKPj4gbWF4aW11bSBzdXBwb3J0ZWQgcGl4ZWxj
bG9ja3MgYXJlIGRlZmluZWQgYnkgdGhlIHBoeSBjb25maWd1cmF0aW9ucyB3ZQo+PiBoYXZlLiBB
bHNvIGl0IGNhbid0IHN1cHBvcnQgbW9kZXMgdGhhdCByZXF1aXJlIGRvdWJsZWQgY2xvY2tzLgo+
PiBJZiB0aGVyZSBpcyBhIHBoeSByZWZlcmVuY2UgY2xvY2sgd2UgY2FuIGFkZGl0aW9uYWxseSB2
YWxpZGF0ZSBhZ2FpbnN0Cj4+IFZFU0EgRE1UJ3MgcmVjb21tZW5kYXRpb25zLgo+PiBUaG9zZSBj
aGVja3MgYXJlIGFkZGVkIHRvIHRoZSBtb2RlX3ZhbGlkIGhvb2sgb2YgdGhlIGNvbm5lY3RvciBh
bmQKPj4gZW5jb2RlcidzIG1vZGVfZml4dXAgaG9vay4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQWxl
eCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9pbm5vX2hkbWkuYyB8IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrLS0KPj4g
ICAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwo+PiBpbmRleCBmN2YwYmVjNzI1ZjkuLjJm
ODM5ZmYzMWMxYyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9f
aGRtaS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwo+PiBA
QCAtMzgsNiArMzgsOCBAQCBzdHJ1Y3QgaW5ub19oZG1pX3ZhcmlhbnQgewo+PiAgIAlzdHJ1Y3Qg
aW5ub19oZG1pX3BoeV9jb25maWcgKmRlZmF1bHRfcGh5X2NvbmZpZzsKPj4gICB9Owo+PiAgIAo+
PiArI2RlZmluZSBJTk5PX0hETUlfTUlOX1RNRFNfQ0xPQ0sgIDI1MDAwMDAwVQo+PiArCj4+ICAg
c3RydWN0IGhkbWlfZGF0YV9pbmZvIHsKPj4gICAJaW50IHZpYzsKPj4gICAJYm9vbCBzaW5rX2hh
c19hdWRpbzsKPj4gQEAgLTU3Miw2ICs1NzQsMzQgQEAgc3RhdGljIGludCBpbm5vX2hkbWlfc2V0
dXAoc3RydWN0IGlubm9faGRtaSAqaGRtaSwKPj4gICAJcmV0dXJuIDA7Cj4+ICAgfQo+PiAgIAo+
PiArc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzIGlubm9faGRtaV9tb2RlX3ZhbGlkKHN0cnVj
dCBpbm5vX2hkbWkgKmhkbWksCj4+ICsJCQkJCQkgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1v
ZGUpCj4+ICt7Cj4gU28sIG1vZGVfdmFsaWQgaXMgb25seSBjYWxsZWQgdG8gZmlsdGVyIG91dCB0
aGUgbW9kZXMgcmV0cmlldmVkIGJ5Cj4gZ2V0X21vZGVzLCBidXQgaXQgd29uJ3QgYmUgY2FsbGVk
IHdoZW4gdXNlcnNwYWNlIHByb2dyYW1zIGEgbW9kZS4gVGhhdCdzCj4gYXRvbWljX2NoZWNrJ3Mg
am9iLgo+Cj4gU28geW91IHByb2JhYmx5IHdhbnQgdG8gY3JlYXRlIGEgc2hhcmVkIGZ1bmN0aW9u
IGJldHdlZW4gYXRvbWljX2NoZWNrCj4gYW5kIG1vZGVfdmFsaWQsIGFuZCBjYWxsIGl0IGZyb20g
Ym90aCBwbGFjZXMgKG9yIGNhbGwgbW9kZV92YWxpZCBmcm9tCj4gYXRvbWljX2NoZWNrKS4KVGhp
cyBhY3R1YWxseSBfaXNfIGEgc2hhcmVkIGZ1bmN0aW9uIGNhbGxlZCBpbiAKaW5ub19oZG1pX2Nv
bm5lY3Rvcl9tb2RlX3ZhbGlkIGFuZCBpbm5vX2hkbWlfZW5jb2Rlcl9tb2RlX2ZpeHVwLiBZZXMs
IEnCoCAKcHJvYmFibHkgc2hvdWxkIHVzZSBpdCBpbiBhdG9taWNfY2hlY2sgX2Fsc29fLgo+Cj4+
ICsJLyogTm8gc3VwcG9ydCBmb3IgZG91YmxlLWNsb2NrIG1vZGVzICovCj4+ICsJaWYgKG1vZGUt
PmZsYWdzICYgRFJNX01PREVfRkxBR19EQkxDTEspCj4+ICsJCXJldHVybiBNT0RFX0JBRDsKPj4g
Kwo+PiArCXVuc2lnbmVkIGludCBtcGl4ZWxjbGsgPSBtb2RlLT5jbG9jayAqIDEwMDA7Cj4gVmFy
aWFibGVzIHNob3VsZCBiZSBkZWNsYXJlZCBhdCB0aGUgdG9wIG9mIHRoZSBmdW5jdGlvbi4KT29v
a2F5IC4uLiBjYW4gbW92ZSB0aGVtLgo+PiArCWlmIChtcGl4ZWxjbGsgPCBJTk5PX0hETUlfTUlO
X1RNRFNfQ0xPQ0spCj4+ICsJCXJldHVybiBNT0RFX0NMT0NLX0xPVzsKPiBZb3UgcHJvYmFibHkg
d2FudCB0byBjaGVjayB0aGUgbWF4IFRNRFMgY2xvY2sgdG9vPwpOb3Qgc3VyZSB3aGF0IHlvdSBt
ZWFuIGhlcmUuIEZvciB0aGUgY3VycmVudGx5IHN1cHBvcnRlZCBmb3JtYXRzIG9mIHRoaXMgCmRy
aXZlciAocmdiIG9ubHkpIHRtZHMgY2xvY2sgYW5kIHBpeGVsIGNsb2NrIGFyZSBhbHdheXMgdGhl
IHNhbWUuCj4KPj4gKwlpZiAoaW5ub19oZG1pX2ZpbmRfcGh5X2NvbmZpZyhoZG1pLCBtcGl4ZWxj
bGspIDwgMCkKPj4gKwkJcmV0dXJuIE1PREVfQ0xPQ0tfSElHSDsKPj4gKwo+PiArCWlmIChoZG1p
LT5yZWZjbGspIHsKPj4gKwkJbG9uZyByZWZjbGsgPSBjbGtfcm91bmRfcmF0ZShoZG1pLT5yZWZj
bGssIG1waXhlbGNsayk7Cj4+ICsJCXVuc2lnbmVkIGludCBtYXhfdG9sZXJhbmNlID0gbXBpeGVs
Y2xrIC8gNTAwMDsKPj4gKwo+PiArCQkvKiBWZXNhIERNVCBzdGFuZGFyZCBtZW50aW9ucyArLy0g
MC41JSBtYXggdG9sZXJhbmNlICovCj4+ICsJCWlmIChhYnMocmVmY2xrIC0gbXBpeGVsY2xrKSA+
IG1heF90b2xlcmFuY2UgfHwKPj4gKwkJICAgIG1waXhlbGNsayAtIHJlZmNsayA+IG1heF90b2xl
cmFuY2U7Cj4+ICsJCQlyZXR1cm4gTU9ERV9OT0NMT0NLOwo+IFlvdSBzaG91bGQgdXNlIGFic19k
aWZmIGhlcmUuIGFicygpIHdpbGwgZ2V0IGNvbmZ1c2VkIGJ5IHRoZSB1bnNpZ25lZCB2cwo+IHNp
Z25lZCBjb21wYXJpc29uLgpBY2suCj4KPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4gTU9ERV9PSzsK
Pj4gK30KPj4gKwo+PiAgIHN0YXRpYyB2b2lkIGlubm9faGRtaV9lbmNvZGVyX21vZGVfc2V0KHN0
cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwKPj4gICAJCQkJICAgICAgIHN0cnVjdCBkcm1fZGlz
cGxheV9tb2RlICptb2RlLAo+PiAgIAkJCQkgICAgICAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUg
KmFkal9tb2RlKQo+PiBAQCAtNjAyLDcgKzYzMiw5IEBAIHN0YXRpYyBib29sIGlubm9faGRtaV9l
bmNvZGVyX21vZGVfZml4dXAoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyLAo+PiAgIAkJCQkJ
IGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlLAo+PiAgIAkJCQkJIHN0cnVjdCBk
cm1fZGlzcGxheV9tb2RlICphZGpfbW9kZSkKPj4gICB7Cj4+IC0JcmV0dXJuIHRydWU7Cj4+ICsJ
c3RydWN0IGlubm9faGRtaSAqaGRtaSA9IGVuY29kZXJfdG9faW5ub19oZG1pKGVuY29kZXIpOwo+
PiArCj4+ICsJcmV0dXJuIGlubm9faGRtaV9tb2RlX3ZhbGlkKGhkbWksIGFkal9tb2RlKSA9PSBN
T0RFX09LOwo+PiAgIH0KPiBXaHkgZG8geW91IGNhbGwgbW9kZV92YWxpZCBpbiBtb2RlX2ZpeHVw
PwoKSSdtIGNhbGxpbmcgdGhlIHNoYXJlZCBmdW5jdGlvbiB5b3UgYXNrZWQgbWUgdG8gaW50cm9k
dWNlIAooaW5ub19oZG1pX2Nvbm5lY3Rvcl9tb2RlX3ZhbGlkICE9IGlubm9fbW9kZV92YWxpZCkK
CkFsZXgKCj4KPiBNYXhpbWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
