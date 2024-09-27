Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA17ECEBF8F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCqpKuHvv+Fm9OC2FUhsm7gS/X+UIIP8KCznbmmZzJM=; b=ro3BhmlXQxx7r7
	sz5AjlUZTEnEAe2M0OamnvZ79s9wZC+4nldvbWWxwFbLIKyowCxOJTdcupWV0xurpsEXd5QQGgE7x
	9RhWlKHzqjw5d22hPEx5Bp80DZv7LJLu4qCaxOTxWG+er/gWeH/IPVhGqgF3PCWa9JLc8V6Nim9xJ
	QJqvfx4b5yugD6JW5Cyudhd7kImAIo6DchF1z50o/6/Pwhga3+kQqoQv0Dk32sLYyI4WzyBenebfy
	5cBZbFH9w5IOLeNtXsfnskEmYSpOC584kNp3qihCURAvjpdY5xLeYIHWA1NEIMcDpbMmIEjUiZYTM
	U3oPkQWDT6U0YMBDHzgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8ZE-0000000AszL-3gvR;
	Fri, 27 Sep 2024 10:51:20 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Y1-0000000AskE-1h7b;
	Fri, 27 Sep 2024 10:50:07 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-20b0c5895aaso2143555ad.1;
        Fri, 27 Sep 2024 03:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727434204; x=1728039004; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0Cm/CaH+7rnCuQElMA0wHSDFr0ElI/GNiHs3+I9HxOc=;
        b=h+pbkia1DS4iDjuqKylsWa6RhoQe4qxFuQG4ZYl4f1m99h7jGhJu22f5bSVIgQYhP6
         dx/iucShP0VZLK0MQ+4V3scZpxGO0398/oDi2a5wyBvl+X7iwfLEom2O3E4242CEYexZ
         3NfwqzGIzx/CNPkd3dNEduC9d02nptb9uGrmdin4n/PU/psM2aR5reR4KRvp8QtXxPAV
         o2mjvNpPjiKdUT5RvT6BZI4Gz2ut+tFuKnyRi1vHNLpc2nMs9zc7/VMgVxpNfDRYPCXK
         M6rWGioUK0EDCI9Dfn81zVsgfsowZus0YV285ex7/HcTBp8z9wZClOav1KpICaMno4n1
         xn5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727434204; x=1728039004;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0Cm/CaH+7rnCuQElMA0wHSDFr0ElI/GNiHs3+I9HxOc=;
        b=TaKhOZfPeAQ2LNmGD/zh0/pT5oYt3M1VjIoHAAwS75FAkbOIW5AFNqnXmsvU80TFIB
         UdSYUtuGUHgzk/wciCmTuoMthN92GFvdUVdqeXo8gFxCmS+z7JHQIEz0mLA2+b7IgV9F
         Etkv7qhuqTk0Ko7fgW4QjINEvoMXI7Rdoj5NnueRZI870uUaH4EeRXHiU2woTfpVo9oI
         g/hmY7Zca50XaYXuITJLJN63lqBQRmTm8GYzkiApioqy8vAEDkvohn4XaweSQDP2iGAY
         nqX/xDDP63SP5ia24C8ymL7hXf/1TxTFys9L71Ixs9Vx8w6N0OTm644O45OBy0UkIPzj
         U5wg==
X-Forwarded-Encrypted: i=1; AJvYcCUoLgQlpxnRvxSuw/OKBLAmA+/UrfRS21rNluu3Zmt0b0XB9Gdt4KWRljqdeIdz+5lzcyG/umX3Hc5Bs/+E2gE=@lists.infradead.org, AJvYcCXMHxcxbPuP4nfJKfdRRZmjoHlEvr60R8021FPteDFwZy3ZxcoJBPj4q/zjvJGjmVttcJOr0NheZRDFs7/YQRBX@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3mbcYK4buo2rLM8DMG/BKwY8f66j1glfw7W8kFaYs5+JSch0j
	oOt90s9a401U2MxnxqbvPCwKtF8Cglwd8I5e+I8MGuZOlMY4fHW1
X-Google-Smtp-Source: AGHT+IHSYMyuGVO/gtIn+YKc6BCcgImGwsAagdTinej2ygKLLnFEyRNG87k8Y5G0jBj0H9zg6u8HXA==
X-Received: by 2002:a05:6a20:1590:b0:1cf:2be2:8dd1 with SMTP id adf61e73a8af0-1d4fa7adf82mr1868218637.10.1727434203743;
        Fri, 27 Sep 2024 03:50:03 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b2653726csm1315488b3a.205.2024.09.27.03.49.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Sep 2024 03:50:03 -0700 (PDT)
Message-ID: <7eead817-fe37-472d-ab5a-f46133031e18@gmail.com>
Date: Fri, 27 Sep 2024 18:49:57 +0800
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
 <a06af01a-656b-4ef6-84a6-bc1c35d5bafa@gmail.com>
 <2815219e-3a20-4a5b-8573-d8a4ad2df1c9@kernel.org>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <2815219e-3a20-4a5b-8573-d8a4ad2df1c9@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_035005_470922_89BD8FFE 
X-CRM114-Status: GOOD (  12.03  )
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

SGkgS3J6eXN6dG9mLAoKT24gMjAyNC85LzI3IDE3OjUyLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9uIDI3LzA5LzIwMjQgMDk6NTksIEZyYW5rIFdhbmcgd3JvdGU6Cj4+Pj4gLcKgIGNs
b2NrczoKPj4+PiAtwqDCoMKgIG1heEl0ZW1zOiAxCj4+Pj4gK8KgIGNsb2NrczogdHJ1ZQo+Pj4+
Cj4+Pj4gLcKgIGNsb2NrLW5hbWVzOgo+Pj4+IC3CoMKgwqAgY29uc3Q6IHBoeWNsawo+Pj4+ICvC
oCBjbG9jay1uYW1lczogdHJ1ZQo+Pj4gRm9yIHRoZSB0aGlyZCB0aW1lLCByZWFkIHRoZSBjb2Rl
IEkgZ2F2ZSB5b3UuIERvIHlvdSBzZWUgc29tZXRoaW5nIGxpa2UKPj4+IHRoaXMgdGhlcmU/IFdo
eSBkb2luZyBhbGwgdGhlIHRpbWUgc29tZXRoaW5nIGRpZmZlcmVudCB0aGFuIGV4aXN0aW5nIGNv
ZGU/Cj4+IFJlZmVyIHRvIHRoZSBsaW5rIHlvdSBzZW50IG1lIHRoYXQgSSBtdXN0IGFkZCBtaW5J
dGVtcyBwcm9wZXJ0eSBmb3IKPj4gY2xvY2tzLCBqdXN0IGxpa2UgdGhlIGJlbG93IGNvZGVzOgo+
Pgo+PiBAQCAtMzUsNyArMzUsOCBAQCBwcm9wZXJ0aWVzOgo+PiAgIMKgwqDCoMKgIGNvbnN0OiAw
Cj4+Cj4+ICAgwqDCoCBjbG9ja3M6Cj4+IC3CoMKgwqAgbWF4SXRlbXM6IDEKPj4gK8KgwqDCoCBt
aW5JdGVtczogMQo+PiArwqDCoMKgIG1heEl0ZW1zOiAzCj4gWWVzLCBmb3IgYWxsIHZhcmlhYmxl
IHByb3BlcnRpZXMsIHNvIGFsc28gbmFtZXMuCj4KPj4gVGhhdCBjYW4gcGFzcyBkdF9iaW5kaW5n
IGFuZCBkdGIgY2hlY2tpbmcsIGhvd2V2ZXIsICJjbG9ja3MiIGlzIHRoZQo+PiBvcHRpb25hbCBw
cm9wZXJ0eSBmb3Igc29tZSBvbGQgUm9ja2NoaXAgUEhZcyzCoCBJIGFtIG5vdCBzdXJlIGlzIGl0
IHJpZ2h0Cj4+IHRvIGZvcmNlIHNldMKgIG1pbkl0ZW1zIGFzIDEgLgo+PiBJZiBqdXN0IGtlZXAg
bWF4SXRlbXMsIHRoZSBkdF9iaW5kaW5nIGNoZWNraW5nIGlzIGZhaWx1cmUuCj4gUGxlYXNlIHNw
ZWNpZnkgdGhlIHF1ZXN0aW9uIHlvdSB3YW50IHRvIGFzay4KPgoKUTE6IFRoZSAiY2xvY2tzIiBp
cyBhbiBvcHRpb25hbCBwcm9wZXJ0eSBmb3Igc29tZSBvbGQgUm9ja2NoaXAgUEhZcywgc28gCnNl
dCAibWluSXRlbXM6IDEiIGxpa2VzIHRoZSBiZWxvdywgaXMgdGhpcyBhIHN1aXRhYmxlIHNldHRp
bmc/CgogwqDCoCBjbG9ja3M6Ci3CoMKgwqAgbWF4SXRlbXM6IDEKK8KgwqDCoCBtaW5JdGVtczog
MQorwqDCoMKgIG1heEl0ZW1zOiAzUTI6IERvIHlvdSB3YW50IG1lIHRvIGFtZW5kIHRoZSBjb2Rl
IHRvIGxpa2UgdGhpcz8gCmNsb2NrczogbWluSXRlbXM6IDEgbWF4SXRlbXM6IDMgY2xvY2stbmFt
ZXM6IG1pbkl0ZW1zOiAxIG1heEl0ZW1zOiAzIAphbGxPZjogWy4uLl0gLSBpZjogcHJvcGVydGll
czogY29tcGF0aWJsZTogY29udGFpbnM6IGVudW06IC0gCnJvY2tjaGlwLHB4MzAtdXNiMnBoeSAt
IHJvY2tjaGlwLHJrMzEyOC11c2IycGh5IC0gCnJvY2tjaGlwLHJrMzIyOC11c2IycGh5IC0gcm9j
a2NoaXAscmszMzA4LXVzYjJwaHkgLSAKcm9ja2NoaXAscmszMzI4LXVzYjJwaHkgLSByb2NrY2hp
cCxyazMzNjYtdXNiMnBoeSAtIApyb2NrY2hpcCxyazMzOTktdXNiMnBoeSAtIHJvY2tjaGlwLHJr
MzU2OC11c2IycGh5IC0gCnJvY2tjaGlwLHJrMzU4OC11c2IycGh5IC0gcm9ja2NoaXAscnYxMTA4
LXVzYjJwaHkgdGhlbjogcHJvcGVydGllczogCmNsb2NrczogbWF4SXRlbXM6IDEgY2xvY2stbmFt
ZXM6IGNvbnN0OiBwaHljbGsgLSBpZjogcHJvcGVydGllczogCmNvbXBhdGlibGU6IGNvbnRhaW5z
OiBlbnVtOiAtIHJvY2tjaGlwLHJrMzU3Ni11c2IycGh5IHRoZW46IHByb3BlcnRpZXM6IApjbG9j
a3M6IG1pbkl0ZW1zOiAzIG1heEl0ZW1zOiAzIGNsb2NrLW5hbWVzOiBpdGVtczogLSBjb25zdDog
cGh5Y2xrIC0gCmNvbnN0OiBhY2xrIC0gY29uc3Q6IGFjbGtfc2x2CgoKQmVzdCByZWdhcmRzLApG
cmFuawoKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
