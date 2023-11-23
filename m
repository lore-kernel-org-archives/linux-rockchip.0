Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EAE1C5AD4C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Nov 2023 07:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUI18Q+5nYKGW7pN6n80SAgpyh4rzom+gOQOVVwd2/k=; b=cBtdmGKGzQFXOx
	7t/OgcNO3lP4maemf4qiLSUVtV8tHmEUzATm7q5QcinGHyeQSKa8/TnHBvTOCOBFIA1o2dyWCqQNt
	33Fw1BP8rg31b9Gs2sVtDXvc3hLrbcrL2GNDvjB6nCkAR1KSphGtUEy9WFdXD/SmRs4Nx463n8Qg9
	wLi0OtTur+Cn3pg3bgDRLzIogI8sjqK6ndh7cziP1fNELDHn+WtXoQYoLPB+86Qduob9333kwmliI
	4XjC/LaJGOxAH7NbDFiErlxF8nLKiSnRg9t5BkSOKivwyXdMzkN7lQsKcKc5CXgepKFWaKyzvU4Jw
	aIqr1ZBVtmWgOvlUXo/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r63wg-0040Ef-1B;
	Thu, 23 Nov 2023 07:16:18 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r63wd-0040DU-2t;
	Thu, 23 Nov 2023 07:16:17 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5409bc907edso770249a12.0;
        Wed, 22 Nov 2023 23:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700723772; x=1701328572; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=s1M3SJtzz5C3bUSDZkAmRVh+gZoP04r7fK3PelZP1IM=;
        b=nsjvI+fzJWYEIJL1hFtpWxcv9wVb46vKkNDJoXdedLJJ29PkOb3HkIedrXdKMyPL0q
         wfEmgMJDRIc8BiRHu1L/or6LVHeBQLx2DSPzuhV28LwStBIFrmi7neSQTwIAmzknmTw3
         iT+NVYxZc4ChYhl5wsiZ83p7j0kfqfbPngqsXIuY0xs2HSyM/JMMxwdQr41GYkNljfj6
         PZ4oN+rf52K0w7aapFQ2KKmV3mP5dl4olOqncgJyXeGeHjBiSotFT3uGi33CeW04ABQq
         Ua2dQsHPTiCHZnXqI2w4KYGjchlREhgBqnfNp4iScWqBJvnJvp3DDxNB0eGjRXIZU9qF
         Y6TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700723772; x=1701328572;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1M3SJtzz5C3bUSDZkAmRVh+gZoP04r7fK3PelZP1IM=;
        b=b64VsV9QwIBj4DKIoirqLu8KOC+r1BzW70F0Cmnh65HNvH/8VGxFtvA+oW6T6TaT2p
         tpuNgqcscrVfu0YbBFPUm0RfI5VhUgIBCucfN1AN7d7eqAm3Huc+qlfUYlCJ4FKFiL4S
         hzYCkN6vKQh1D/JbooAuc/w77OGQG5qoJVckQXPg4owy4vExRcvhSfzcCdKjMNvMAWAh
         oGkdESJMkprPxBSxvVgX5o0ynbhTG8aLcokabiYwuzIuFUCnSf52Opk6ar6tVU/V419U
         F3S7LWkRSj80Kapaoj8LtrRQPkbiZmu7g5A1idtBSqwp8et2JeMoWPcEGhL7KHR90hMN
         Pljw==
X-Gm-Message-State: AOJu0Ywd50qU6vLaUz7xWmEKhN5COqrZLrt7IBYClUb3l/BkSX4cgD+h
	fSdMCXKCRWrVfjzVVoc/JXQ=
X-Google-Smtp-Source: AGHT+IG2lzFXoBD5/YVWF8Wdre51d/r4yqSFQ+l4y0uTZy+JK3Ss3+SAA6KwfCsX+vsojVfzrw7Cfg==
X-Received: by 2002:a05:6402:31fc:b0:548:6870:7b73 with SMTP id dy28-20020a05640231fc00b0054868707b73mr1846198edb.41.1700723771352;
        Wed, 22 Nov 2023 23:16:11 -0800 (PST)
Received: from ?IPV6:2a01:c23:c0f2:3200:59ae:788f:5985:cbec? (dynamic-2a01-0c23-c0f2-3200-59ae-788f-5985-cbec.c23.pool.telefonica.de. [2a01:c23:c0f2:3200:59ae:788f:5985:cbec])
        by smtp.googlemail.com with ESMTPSA id y26-20020aa7ccda000000b0053635409213sm328230edt.34.2023.11.22.23.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 23:16:10 -0800 (PST)
Message-ID: <aeb96878-7ce0-48a9-b8f2-fdc9a3c0fc83@gmail.com>
Date: Thu, 23 Nov 2023 08:16:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/20] remove I2C_CLASS_DDC support
To: Thomas Zimmermann <tzimmermann@suse.de>, Wolfram Sang <wsa@kernel.org>,
 intel-gfx@lists.freedesktop.org
Cc: linux-i2c@vger.kernel.org, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-fbdev@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Jocelyn Falempe <jfalempe@redhat.com>, linux-sunxi@lists.linux.dev,
 linux-mediatek@lists.infradead.org, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Yongqin Liu
 <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>
References: <20231120214624.9378-1-hkallweit1@gmail.com>
 <4e0cc556-a7eb-48ce-8226-0f5281f3ef0a@suse.de>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
In-Reply-To: <4e0cc556-a7eb-48ce-8226-0f5281f3ef0a@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_231615_932275_D05328E1 
X-CRM114-Status: GOOD (  13.20  )
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

T24gMjMuMTEuMjAyMyAwNzo1NiwgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4gSGkKPiAKPiBB
bSAyMC4xMS4yMyB1bSAyMjo0NiBzY2hyaWViIEhlaW5lciBLYWxsd2VpdDoKPj4gQWZ0ZXIgcmVt
b3ZhbCBvZiB0aGUgbGVnYWN5IEVFUFJPTSBkcml2ZXIgYW5kIEkyQ19DTEFTU19EREMgc3VwcG9y
dCBpbgo+PiBvbHBjX2Rjb24gdGhlcmUncyBubyBpMmMgY2xpZW50IGRyaXZlciBsZWZ0IHN1cHBv
cnRpbmcgSTJDX0NMQVNTX0REQy4KPj4gQ2xhc3MtYmFzZWQgZGV2aWNlIGF1dG8tZGV0ZWN0aW9u
IGlzIGEgbGVnYWN5IG1lY2hhbmlzbSBhbmQgc2hvdWxkbid0Cj4+IGJlIHVzZWQgaW4gbmV3IGNv
ZGUuIFNvIHdlIGNhbiByZW1vdmUgdGhpcyBjbGFzcyBjb21wbGV0ZWx5IG5vdy4KPj4KPj4gUHJl
ZmVyYWJseSB0aGlzIHNlcmllcyBzaG91bGQgYmUgYXBwbGllZCB2aWEgdGhlIGkyYyB0cmVlLgo+
Pgo+PiB2MjoKPj4gLSBjaGFuZ2UgdGFnIGluIGNvbW1pdCBzdWJqZWN0IG9mIHBhdGNoIDAzCj4+
IC0gYWRkIGFjayB0YWdzCj4+IHYzOgo+PiAtIGZpeCBhIGNvbXBpbGUgZXJyb3IgaW4gcGF0Y2gg
NQo+PiB2NDoKPj4gLSBtb3JlIGFjayBhbmQgcmV2aWV3IHRhZ3MKPj4KPj4gU2lnbmVkLW9mZi1i
eTogSGVpbmVyIEthbGx3ZWl0IDxoa2FsbHdlaXQxQGdtYWlsLmNvbT4KPiAKPiBBY2tlZC1ieTog
VGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4gCj4gZm9yIHRoZSBwYXRj
aGVzIHRoYXQgZG9uJ3QgYWxyZWFkeSBoYXZlIG15IHItYi4KPiAKVGhpcyByZWZlcnMgdG8gd2hp
Y2ggcGF0Y2hlcyBvZiB0aGUgc2VyaWVzPwpQYXRjaGVzIDgsIDE2LCAxOCBhcmUgdGhlIHJlbWFp
bmluZyBvbmVzIHcvbyBBLWIgb3IgUi1iLgoKPiBCZXN0IHJlZ2FyZHMKPiBUaG9tYXMKPiAKVGhh
bmtzLCBIZWluZXIKCj4+Cj4+IC0tLQo+Pgo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfaTJjLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2
ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jIHzCoMKgwqAgMSAt
Cj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9hc3QvYXN0X2kyYy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL3N5bm9wc3lzL2R3LWhkbWkuY8KgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4gwqAg
ZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX2hlbHBlci5jwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfMKgwqDCoCAxIC0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX21zdF90
b3BvbG9neS5jwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2dtYTUw
MC9jZHZfaW50ZWxfZHAuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDC
oCBkcml2ZXJzL2dwdS9kcm0vZ21hNTAwL2ludGVsX2dtYnVzLmPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vZ21hNTAwL29ha3RyYWls
X2hkbWlfaTJjLmPCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vZ21hNTAwL3BzYl9pbnRlbF9zZHZvLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEg
LQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaGlzaWxpY29uL2hpYm1jL2hpYm1jX2RybV9pMmMuY8Kg
wqAgfMKgwqDCoCAxIC0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9n
bWJ1cy5jwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zZHZvLmPCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKg
IGRyaXZlcnMvZ3B1L2RybS9sb29uZ3Nvbi9sc2RjX2kyYy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hk
bWlfZGRjLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL2dw
dS9kcm0vbWdhZzIwMC9tZ2FnMjAwX2kyYy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKg
wqAgMSAtCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9tc20vaGRtaS9oZG1pX2kyYy5jwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vcmFk
ZW9uL3JhZGVvbl9pMmMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0K
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jr
MzA2Nl9oZG1pLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZl
cnMvZ3B1L2RybS9zdW40aS9zdW40aV9oZG1pX2kyYy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJfZGRjLmPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL3ZpZGVv
L2ZiZGV2L2N5YmVyMjAwMGZiLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDC
oMKgIDEgLQo+PiDCoCBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2k3NDBmYi5jwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZlcnMvdmlk
ZW8vZmJkZXYvaW50ZWxmYi9pbnRlbGZiX2kyYy5jwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxNSAr
KysrKy0tLS0tLS0tLS0KPj4gwqAgZHJpdmVycy92aWRlby9mYmRldi9tYXRyb3gvaTJjLW1hdHJv
eGZiLmPCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEyICsrKystLS0tLS0tLQo+PiDCoCBkcml2ZXJz
L3ZpZGVvL2ZiZGV2L3MzZmIuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4gwqAgZHJpdmVycy92aWRlby9mYmRldi90ZGZ4ZmIuY8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDC
oCBkcml2ZXJzL3ZpZGVvL2ZiZGV2L3RyaWRlbnRmYi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZlcnMvdmlkZW8vZmJkZXYvdmlhL3Zp
YV9pMmMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKg
IGluY2x1ZGUvbGludXgvaTJjLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4gwqAgMzEgZmlsZXMgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCA0NyBkZWxldGlvbnMoLSkKPiAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
