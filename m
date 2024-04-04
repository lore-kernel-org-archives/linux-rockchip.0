Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35F23CD1292
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 17:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyW3qauI8S/AqJwJQtcaTxFRFKFOLWGigaPoy6ayXSU=; b=gCU2KsZI1iNCAO
	Mo133O4DpZdUk6GzTI7pdXNsVBfcZADz+9hbD692VrhTxR77PbIsEdwmlxF67/eQZmNg8LUA8ukzc
	EfmgHXj8F425+IUeD7HrLQL7gp907e5WFh7AOKvhyxqvRUwQcWNK0akL8+udOp3x9JLqcDaxT+nL2
	diw8wzz/P2ojdIg+coTTrZZuAPNQTRlkW3G8JxegE34CAGiJz+aJd2pGHFtYEwdu9LLAb4FQI1YKJ
	fraufpqgBwY5YzoM4ZHfgnAqSy3V0+mNc3kvYdSC3gsUmG4TnlW+hF0VSqTFiHglxSax6px9E6hcU
	K+6SSAklNWb6TQ8tToUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsRBR-00000003hOB-33Ax;
	Thu, 04 Apr 2024 17:47:29 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsRBM-00000003hMC-2mey
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 17:47:27 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-69935d567a0so4691466d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Apr 2024 10:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1712252842; x=1712857642; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bh4syO4yTXa1buMPAEQiJy3KlJ/ZvLVegoAl1qaUj7k=;
        b=bsiQ20ew3q0FWeL3YtTR102XsroAcEM/ouZ/NW/05ti0mf3n5tASmV95Q7TqBR0pTK
         eQsHKANgNwjDuWXfl8wg1KcCy1HbIZtRgi7r4Ov/9nIax4yGa4hSckkL1HtFKV3Xf43P
         S9d54JtsUv0LwAnCWnvSptL75W8+PAqIyWp6OsPi6Zu4tNFu6urygBjHr5UodeLx73j3
         0rnny9kcqyEUcd2KzQGxaWWxNuzVMbqtQWLS7Nk0gsL2JUaqgWJDWjlILRzRkTNKeLKs
         0hKDMpMc1MQC6tpwefhBFNRr/ZGQMkx3ag5qdXl79JPo7Jww4DvIbvNB0SX96dkY2Gk7
         ZtGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712252842; x=1712857642;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bh4syO4yTXa1buMPAEQiJy3KlJ/ZvLVegoAl1qaUj7k=;
        b=LWwjYI1cB6jN7ArEgadcDtTJKxyM2zVAmbrLfDm8ocgIKqDewTXXRrJIVaI+ohYHOo
         9P4d+tlj0LYYxQcpSdvS0dxAo3fOTZ2XgOR0HgBmESrydRmEuWWYP/ZVgFg2i8qQ79kf
         8pt4YnCQB3cga4GAFb9ssgX6cwNvnX9Y4y/VtusTVfWsRhkxwkk6n4FPMmJrzQQmKe86
         BxpQKQsAavrj6o9n02uaL1uHgyK5uUZIqCNlv4W+sKOrQXum1Snp5AymEajxsI01pSaJ
         Y/OApMhJe4e4vvs87BwQJPCyuNteJE/QHLfbdGGAf7iRIsP5hq23vjj1DaYhtSK7IAh/
         KmRg==
X-Forwarded-Encrypted: i=1; AJvYcCVxjdn7kSpHkvR3xhMop8YwJask7/mFA6a8cMUhLP0lXAS1FeroPGt2rWLJ/fp9K/13mBwamq9P/nlszljvS4jFHzIRyflbIu08B638Bw9eF7SD
X-Gm-Message-State: AOJu0YxoSE6NaEVPlZ9WbhhepFVAbrUlqtxEr6QoMYOPL0+1RZ8RKf6f
	Zb4/kygRymgZ4og7cJSd/fWfzVmaXRPlBmAD3iSTzpGMY6K2ddYOD86dlyeeJA4=
X-Google-Smtp-Source: AGHT+IG4zBdkV6V/ZyVOK3aZ5bvPMw6tYO7Y3Ma8A6A6AqVPlienLH1DcvIkKVgvPkWN6NmWDpr8Rg==
X-Received: by 2002:a05:6214:5084:b0:699:2071:6c64 with SMTP id kk4-20020a056214508400b0069920716c64mr3544763qvb.0.1712252842440;
        Thu, 04 Apr 2024 10:47:22 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6448:fa75:a4ff:fe45:b56])
        by smtp.gmail.com with ESMTPSA id 3-20020ad45b83000000b00698f7eb9997sm2586753qvp.54.2024.04.04.10.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 10:47:22 -0700 (PDT)
Message-ID: <85b4deecf8306562fe798af6ee07af27369692d3.camel@ndufresne.ca>
Subject: Re: [PATCH v2 1/2] media: dt-binding: media: Document
 =?UTF-8?Q?rk3588=E2=80=99s?= VEPU121
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Conor Dooley <conor@kernel.org>, Emmanuel Gil Peyrot
	 <linkmauve@linkmauve.fr>
Cc: linux-kernel@vger.kernel.org, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>,  Heiko Stuebner <heiko@sntech.de>, Joerg Roedel
 <joro@8bytes.org>, Will Deacon <will@kernel.org>,  Robin Murphy
 <robin.murphy@arm.com>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Cristian Ciocaltea
 <cristian.ciocaltea@collabora.com>, Dragan Simic <dsimic@manjaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>, Chris Morgan
 <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>, Nicolas
 Frattaroli <frattaroli.nicolas@gmail.com>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  iommu@lists.linux.dev
Date: Thu, 04 Apr 2024 13:47:19 -0400
In-Reply-To: <20240327-doze-uncheck-475f3feaee57@spud>
References: <20240327134115.424846-1-linkmauve@linkmauve.fr>
	 <20240327134115.424846-2-linkmauve@linkmauve.fr>
	 <20240327-doze-uncheck-475f3feaee57@spud>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_104724_733793_9FE6E997 
X-CRM114-Status: GOOD (  18.00  )
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

TGUgbWVyY3JlZGkgMjcgbWFycyAyMDI0IMOgIDE3OjIzICswMDAwLCBDb25vciBEb29sZXkgYSDD
qWNyaXTCoDoKPiBPbiBXZWQsIE1hciAyNywgMjAyNCBhdCAwMjo0MToxMVBNICswMTAwLCBFbW1h
bnVlbCBHaWwgUGV5cm90IHdyb3RlOgo+ID4gVGhpcyBlbmNvZGVyLW9ubHkgZGV2aWNlIGlzIHBy
ZXNlbnQgZm91ciB0aW1lcyBvbiB0aGlzIFNvQywgYW5kIHNob3VsZAo+ID4gc3VwcG9ydCBldmVy
eXRoaW5nIHRoZSByazM1NjggdmVwdSBzdXBwb3J0cyAoc28gSlBFRywgSC4yNjQgYW5kIFZQOAo+
ID4gZW5jb2RpbmcpLgo+ID4gCj4gPiBBY2NvcmRpbmcgdG8gdGhlIFRSTVsxXSwgdGhlcmUgaXMg
YWxzbyB0aGUgVkVQVTU4MCBlbmNvZGVyIHdoaWNoCj4gPiBzdXBwb3J0cyBILjI2NCBhbmQgSC4y
NjUsIGFuZCB2YXJpb3VzIFZEUFUqIGRlY29kZXJzLCBvZiB3aGljaCBvbmx5IHRoZQo+ID4gVkRQ
VTk4MSBpcyBjdXJyZW50bHkgc3VwcG9ydGVkLiAgVGhpcyBwYXRjaCBkZXNjcmliZXMgb25seSB0
aGUgVkVQVTEyMS4KPiA+IAo+ID4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9GYW5YLVRlay9yazM1
ODgtVFJNLWFuZC1EYXRhc2hlZXQKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRW1tYW51ZWwgR2ls
IFBleXJvdCA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4KPiAKPiBBY2tlZC1ieTogQ29ub3IgRG9v
bGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4KCkknZCBsaWtlIHRvIHByZXZlbnQgdGhp
cyBjaGFuZ2UgdW50aWwgd2UgZml4IHRoZSBkcml2ZXIuIEl0IHNob3VsZCBub3QgZXhwb3NlIDEK
dmlkZW8gZGV2aWNlIHBlciBjb3JlLCBpdCBzaG91bGQgaW5zdGVhZCBkbyBzY2hlZHVsZSBhcm91
bmQgdGhlc2UgY29yZXMuCgpOaWNvbGFzCgo+IAo+IFRoYW5rcywKPiBDb25vci4KPiAKPiA+IC0t
LQo+ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLHJrMzU2OC12ZXB1
LnlhbWwgICB8IDggKysrKysrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLHJrMzU2OC12ZXB1LnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAscmszNTY4LXZlcHUueWFt
bAo+ID4gaW5kZXggOWQ5MGQ4ZDA1NjVhLi40YzZjYjIxZGEwNDEgMTAwNjQ0Cj4gPiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAscmszNTY4LXZl
cHUueWFtbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlh
L3JvY2tjaGlwLHJrMzU2OC12ZXB1LnlhbWwKPiA+IEBAIC0xNSw4ICsxNSwxMiBAQCBkZXNjcmlw
dGlvbjoKPiA+ICAKPiA+ICBwcm9wZXJ0aWVzOgo+ID4gICAgY29tcGF0aWJsZToKPiA+IC0gICAg
ZW51bToKPiA+IC0gICAgICAtIHJvY2tjaGlwLHJrMzU2OC12ZXB1Cj4gPiArICAgIG9uZU9mOgo+
ID4gKyAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU2OC12ZXB1Cj4gPiArICAgICAgLSBpdGVt
czoKPiA+ICsgICAgICAgICAgLSBlbnVtOgo+ID4gKyAgICAgICAgICAgICAgLSByb2NrY2hpcCxy
azM1ODgtdmVwdTEyMQo+ID4gKyAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1NjgtdmVw
dQo+ID4gIAo+ID4gICAgcmVnOgo+ID4gICAgICBtYXhJdGVtczogMQo+ID4gLS0gCj4gPiAyLjQ0
LjAKPiA+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
