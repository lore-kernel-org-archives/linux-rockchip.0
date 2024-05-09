Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E265C10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 13:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQQ5b4wunfd5DcCoYE0IBnKv+ZAdtq8AvI5Vdx5Hq+k=; b=p8fNYsFr2Ry8i3
	Fg8kIkD4KOlMlTAKXV3lBt6hKF1P5MkQHgXhZGlBFMI/XjzTLuZ5XmhIPLHedPV9hGJqP5WVoZd0H
	1n1lWdG88cGu4OM/baudwJQzrI1mqpTT0eD3IJhM9ZY1U0Od+JX330Sw/MCuhEg6Yn/hWzK6SW9jn
	CPCtjSHNFJFlWFd6qCoDW0SBJ1G3inecfWRz/4BCvxl8fYPbijpbwOFkKC+E1s6By5pem1SedJPs2
	tf/mBVhOEQi1rIvkB0RLaC+FgtxUIiwFLYc2Q6Lj4VMJiDrd8bJz7EMrjBP0AwM8+eJi0N4tyuciR
	keppeJSmr9ei89EBh+Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s53Zw-00000001XPX-2e1d;
	Thu, 09 May 2024 13:12:56 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s53Zt-00000001XNj-31Vy;
	Thu, 09 May 2024 13:12:54 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-346359c8785so611201f8f.0;
        Thu, 09 May 2024 06:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715260366; x=1715865166; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AeqYlf9c4EFhi9TNIZzRvyO42T/eA+jGpWv1NKDPZXk=;
        b=G7vY6KVx/r5596sehLpzI1VFBYQhfiucHTxAp1jji+JchddNQMr71hV5LSGEEYG9SY
         pUTjrrP980BGCeJ/X7tbh+JAyAKlTwjHutwYjmZSGv5psVy64RVvuJ83G/tU176XdUQd
         BaT1DPICYYheMWIDH/RjTeYqzyacKw+MGE29V9QWqbQAZjs4Tl1POzwpNW+eXV7B5SEo
         1oDrNPa1EgmDlkBxstaNB+zYrHtaYZoi1a5MUXulri/xmo1xvdqBnHs/pxPrbYmgnNYu
         KDppkTPIx+sZjKBYOTW/CaGC/c0sqVigVgOMn5zq/BChYmBww/hrYFxj+fc060a4OMqy
         Bm+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715260366; x=1715865166;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AeqYlf9c4EFhi9TNIZzRvyO42T/eA+jGpWv1NKDPZXk=;
        b=Rkh9hNuY5Ysiy+5oq6FdlNEjKn9Nznt+YwhFQKDURLCmNCBq/kJ4AMfe64S879xYzo
         Pe/Jhx6RvcCpDr1uUyLhwUxtTLpzYXPc+iPDaFCQ4VAW1nL1i91xbRm7gDcqe4uj9AYU
         nh7B80m4UAOGrj/TXxcwS55q0X555ev17qEOX+ClqgOMH3BNx/24ZiWQF6FnPWKVqFqD
         L5MIge81miAspNoBngNhq+f2Lg8lqkwIQPT6wExGkHLOyt7kMSf1ByVtiiD2HJRirhp8
         1GaFNsIMnpDULnL6DP11IAH279AmV1paJJHPaDJUyKSBuW+v8tHKrquqgrbV5hGDvyB8
         zsRw==
X-Forwarded-Encrypted: i=1; AJvYcCWrbo4rNROX9bPyABAinj+o00wp8BS0B9shX6lsA3NxTe9FAFNO3DOXGyxlyQV2rqFYSoVEovd3PeItnE85LtjYHmOhNbL3HG/JL9j1aZgcy1NlJELVkYy3jJ/iDH0EAfTz7mPWiU/Y/k0h+uV7PRc8CagnEdmrACA=
X-Gm-Message-State: AOJu0Yx6EWi45Lt7aMOXXEGujyXr3fQtPgkqv4s1NBe1EvhVMSfUyG4Z
	icbr1u6Eo2LUbbAUFxBi6BR2IFAGYB0gtmpapykmnfAcb5xpDjnUms6A
X-Google-Smtp-Source: AGHT+IEC7WafECIZydYUdeAbxXAmqunwb457qqLbk5bNV+opK2hsUeI5mP0GAZJxRMOafc4vJyH5uQ==
X-Received: by 2002:adf:cd89:0:b0:343:65a8:406d with SMTP id ffacd0b85a97d-34fcb3acc64mr4369892f8f.64.1715260366006;
        Thu, 09 May 2024 06:12:46 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:b44:d8c3:6fa8:c46f? ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b896a45sm1697584f8f.39.2024.05.09.06.12.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 May 2024 06:12:45 -0700 (PDT)
Message-ID: <d5fcf678-741b-48c0-988e-4722ac756a11@gmail.com>
Date: Thu, 9 May 2024 15:12:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] Add DSI support for RK3128
From: Alex Bee <knaerzche@gmail.com>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 sebastian.reichel@collabora.com, Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Maxime Ripard <mripard@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
References: <20240509120715.86694-1-knaerzche@gmail.com>
 <38423821.XM6RcZxFsP@diego> <1190cfb6-e2d1-4910-ad57-f7566343ff19@gmail.com>
Content-Language: en-US
In-Reply-To: <1190cfb6-e2d1-4910-ad57-f7566343ff19@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_061253_767533_DD3907D3 
X-CRM114-Status: GOOD (  21.09  )
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

QW0gMDkuMDUuMjQgdW0gMTQ6NDMgc2NocmllYiBBbGV4IEJlZToKCj4gSGkgSGVpa28KPgo+IEFt
IDA5LjA1LjI0IHVtIDE0OjIxIHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4+IEhpIEFsZXgsCj4+
Cj4+IEFtIERvbm5lcnN0YWcsIDkuIE1haSAyMDI0LCAxNDowNzowOCBDRVNUIHNjaHJpZWIgQWxl
eCBCZWU6Cj4+PiBUaGlzIHNlcmllcyBhaW1zIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgRGVzaWdu
V2FyZSBNSVBJIERTSSAKPj4+IGNvbnRyb2xsZXIgYW5kCj4+PiB0aGUgSW5ub3NsaWNvbiBELVBI
WSBmb3VuZCBpbiBSSzMxMjggU29Dcy4gVGhlIGNvZGUgYWRkaXRpb25zIGFyZSAKPj4+IHJhdGhl
cgo+Pj4gdGlueTogSXQgb25seSBuZWVkIHNvbWUgY29kZSBpbiB0aGUgUm9ja2NoaXAgZHctbWlw
aS1kc2kgZ2x1ZSBsYXllciBmb3IKPj4+IHRoaXMgU29DLCBhZGQgc3VwcG9ydCBmb3IgYW4gYWRk
aXRpb25hbCBjbG9jayBhbmQgZG8gc29tZSBjaGFuZ2VzIGluIAo+Pj4gdGhlCj4+PiBTb0MncyBj
bG9jayBkcml2ZXIuIFN1cHBvcnQgZm9yIHRoZSBwaHkgd2FzIGFscmVhZHkgYWRkZWQgd2hlbiB0
aGUKPj4+IElubm9zaWxpY29uIEQtUEhZIGRyaXZlciB3YXMgaW5pdGlhbGx5IHN1Ym1pdHRlZC4g
SSB0ZXN0ZWQgaXQgd2l0aCBhCj4+PiA4MDB4MTI4MCBEU0kgcGFuZWwgd2hlcmUgYWxsIDQgbGFu
ZXMgdGhhdCBhcmUgc3VwcG9ydGVkIGFyZSB1c2VkLgo+Pj4KPj4+IGNoYW5nZXMgaW4gdjI6Cj4+
PiDCoMKgIFRvIGltcHJvdmUgcG93ZXItZWZmaWNpZW5jeSB3aGVuIHRoZSBEU0kgY29udHJvbGxl
ciBpcyBub3QgaW4gdXNlLCBJCj4+PiDCoMKgIGRyb3BwZWQgdGhlIHBhdGNoIHdoaWNoIG1hZGUg
aGNsa192aW9faDJwIGEgY3JpdGljYWwgY2xvY2sgYW5kIAo+Pj4gaW5zdGVhZAo+Pj4gwqDCoCBh
ZGRlZCBzdXBwb3J0IGZvciBhbiBBSEIgY2xvY2sgdG8gdGhlIERTSSBjb250cm9sbGVyIGRyaXZl
ciBhbmQgCj4+PiB1cGRhdGVkCj4+PiDCoMKgIHRoZSBiaW5kaW5ncyBhbmQgdGhlIGFkZGl0aW9u
IHRvIHRoZSBTb0MgRFQgYWNjb3JkaW5nbHkuCj4+IFRoZSBuYW1pbmcgYWxyZWFkeSBzdWdnZXN0
cyB0aGF0IGhjbGtfdmlvX2gycCBpcyBub3QgYSBjbG9jay1wYXJ0IG9mCj4+IHRoZSBhY3R1YWwg
ZHNpIGNvbnRyb2xsZXIsIGJ1dCBtb3JlIGFuIGludGVybmFsIHRoaW5nIGluc2lkZSB0aGUgY2xv
Y2sKPj4gY29udHJvbGxlci4KPj4KPj4gQXQgbGVhc3QgbmFtaW5nIGFuZCBwZXJjZWl2ZWQgZnVu
Y3Rpb25hbGl0eSB3b3VsZCBzdWdnZXN0IGEgY2hhaW4gb2YKPj4gwqDCoMKgwqBoY2xrX3ZpbyAt
PiBoY2xrX3Zpb19oMnAgLT4gcGNsa19taXBpCj4gSSBwZXJzb25hbGx5IHdvdWxkbid0IGdpdmUg
dG8gbXVjaCBvbiBuYW1pbmcgd2hlbiBpdCBjb21lcyB0byBSb2NrY2hpcAo+IENSVXMuIEFjdHVh
bGx5IGxvb2tpbmcgYXQgIkZpZy4gMi01IENoaXAgQ2xvY2sgQXJjaGl0ZWN0dXJlIERpYWdyYW0g
NCIgb2YKPiBSSzMxMnggaXRzOgo+Cj4KPiAuLi4gLT4gaGNsa192aW8KPgo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtPiBoY2xrX2gycCAoY2xvY2sgaW4gcXVlc3Rpb24p
Cj4gwqDCoCDCoMKgwqDCoCDCoCDCoCDCoCDCoCDCoMKgIC0+IHBjbGtfbWlwaSAoRFNJIEFQQiBj
bG9jaykKPiDCoMKgIMKgwqDCoMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0+IGhjbGtfcmdhCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0+IGhjbGtfdm9wCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC4uLi4KPgo+IEFsc28gdGhlcmUgaXMgbm8g
b3RoZXIgZGlzcGxheSBvdXRwdXQgcGF0aCAoSERNSSwgTFZEUykgd2hpY2ggcmVxdWlyZXMgCj4g
dGhpcwo+IGNsb2NrIHRvIGJlIGVuYWJsZWQuIFRoZXkgYWxsIHdvcmsgd2hlbiBpdCdzIGRpc2Fi
bGVkLiBUaGF0IHJlYWxseSAKPiBtYWtlcyBtZQo+IHRoaW5rIGl0J3MganVzdCB0aGUgQUhCIGNs
b2NrIGxpbmUgZm9yIHRoZSBEU0kgY29udHJvbGxlci4gTWF5YmUgQW5keSBjYW4KPiBzaGFyZSBz
b21lIGRldGFpbHM/CgpBbnl3YXk6IEkganVzdCBsb29rZWQgYXQgdGhlICJNSVBJIENvbnRyb2xs
ZXIgYXJjaGl0ZWN0dXJlIiBwYXJ0IG9mIHRoZSAKVFJNIC0gdGhlcmUgaXMgbm90IGV2ZW4gQUhC
IGNsb2NrIGxpbmUsIG9ubHkgQVBCLiBTbyBJIHJldmVydCB0aGUgY2hhbmdlIAp3aXRoIHRoZSBh
ZGRpdGlvbmFsIGNsb2NrLCBtYWtlIHRoZSBoMnAtY2xvY2sgY3JpdGljYWwgYWdhaW4gYW5kIHJl
c2VuZC4KCkFsZXgKCj4+IEluIGFueSBjYXNlLCBJIHJlYWxseSBkb24ndCBzZWUgaGNsa192aW9f
aDJwIHRvIGJlIGluIHRoZSByZWFsbSBvZiB0aGUKPj4gYWN0dWFsIERTSSBjb250cm9sbGVyLCBi
dXQgbW9yZSBhIHBhcnQgb2YgY2xvY2stY29udHJvbGxlciAvIAo+PiBpbnRlcmNvbm5lY3QuCj4+
IFNpbWlsYXIgdG8gdGhlIE5JVSBjbG9ja3MgZm9yIHRoZSBpbnRlcmNvbm5lY3QuCj4+Cj4+IHJr
MzU4OCBhY3R1YWxseSB0cmllcyB0byBpbXBsZW1lbnQgdGhpcyBhbHJlYWR5IGFuZCB3aGlsZSB0
aGUKPj4gZ2F0ZS1saW5rIGNsb2NrcyBhcmUgZGVzY3JpYmVkIGFzICJyZWNlbnQiLCBJIHRoaW5r
IHRoaXMgZGVmaW5pdGx5IAo+PiB0aGUgc2FtZQo+PiBjb25jZXB0IHVzZWQgYSBtb3N0L2FsbCBv
bGRlciBSb2NrY2hpcCBTb0NzLCBqdXN0IG5vYm9keSBjYXJlZCBhYm91dCAKPj4gdGhhdAo+PiB0
aWxsIG5vdyA7LSkgWzBdIC4KPj4KPj4gU28gVEw7RFIgSSdkIHJlYWxseSBwcmVmZXIgdG8gbm90
IGxlYWsgQ1JVLWRldGFpbHMgaW50byB0aGUgRFNJIAo+PiBjb250cm9sbGVyLgo+Pgo+Pgo+PiBI
ZWlrbwo+Pgo+PiBbMF0gV2hpY2ggcmVtaW5kcyBtZSB0aGF0IEkgc2hvdWxkIGxvb2sgYXQgU2Vi
YXN0aWFuJ3MgbWFrZSBHQVRFLUxJTksKPj4gYWN0dWFsbHktd29yay1wYXRjaC4KPj4KPj4KPj4K
Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
