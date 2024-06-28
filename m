Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 187F0C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 00:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SiG57Dkn+DBIA38Rmd4CfPkiJrUsT0qSePN+S7icv8=; b=pzjfNx4DF3KQ0a
	E6u/jv2rHBCqcS0MWJhWdOaVKggvvvKzEZuIhXwcThmYAQcqWWbJ/ndOIYlhs5NtoGM2QA8a3CF8O
	710a5xxQ40sAC3TGLUQpV2/6tcwWSmPyQnw5a6Fh7uPo5MGpeqONuOw0Xi0q1eWcWHCyt4rCe0JsB
	obC4IciRydrDayLorMu+w+//Fcqz7MRiv1JmvRK/pHunJZ2k4UASXACEVS9pLbPtWi5BN1ey2L4aj
	xOr0fYkmh04cd+DyPcKjMmgYW+EwcdjTBrE6iH9mJ90mAqO+TyWiqvvYAcdMOaN/v7r5rICeRkpGL
	Em2pLIw7kOVa7xMpzZww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMz7x-0000000C2iq-0yRx;
	Fri, 28 Jun 2024 00:06:09 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMz7n-0000000C2h9-44Iq;
	Fri, 28 Jun 2024 00:06:01 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1f70c457823so14065ad.3;
        Thu, 27 Jun 2024 17:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719533159; x=1720137959; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=q0ZSvkaYPL0aMiPJTdyZjWw4rhkAuBmNQ840zqqrBqw=;
        b=K4bnJ3pv5FGUdIVI5G+16sVEx3e6j/y5aUI85DxgFXJ3N15StDTfk1ckSIqFmtCV++
         6PS6PGlMBaJGRMHLKX06oblIgvB2cQp2W0PfUBF1ufqboekzFWguBSpgm3Cr/jZwoNLv
         PuiPrM1+xx4PMqbcAarywtFlgQMdoSfm5VRW9inrFqUIVrYZyEwzxtc4QTwMHkdaM8Jq
         mxfMwdxbu97JvSLchFnZpedyn2MjyDe3mkSRt+cvhRq1s7xoZqE13d3J3hBoiU9KdEJd
         3udqA6M4FoHXNZGCL7ivIksuLsLxhBJHEAP5xvl+I7UQ2pth6r+hvNB/Y5l5d6KKwzf+
         LdVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719533159; x=1720137959;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q0ZSvkaYPL0aMiPJTdyZjWw4rhkAuBmNQ840zqqrBqw=;
        b=pLMswoHGjaDxPm1rml16hyDGyDEdqWq6k20TuIuLM2L71jjy8JS5GCGr9YRrGja4rn
         BlwW7mYvuHlDPiXVFjBsPTQ6Y0Jkp1YAwuPNJ8RCUKAIEsfCbAMtzekLMINxdYu9cBUj
         liaROX4imqyC0D6/4ME2LUWGEbB0Pg705HCWsBqpIVPR/yhCjXe7FBD3u3OzFR4tEFGr
         q12Kq9W+U5ckILakhD9Ee9t0HRtbWR8DEr8wPZ30lBzDN71Id/n44KfJM0vtVAM7kmtY
         SO/ebZIC1F988FgDJzfmj+hbpNtLfEWyL9D8ISDnispTQMFVy1n30fU2l2FFkk+L+WzG
         HUsQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8aLOXUBPV8tQkdli+H4GXU6yrudPjV3sggHFNLPSqwQeRmc3xLvEaAS5dEpF9mrDwzzM+JWGgMccKyXnqByVDXTnM22UDMXCYgLvw83cgSqXPalHpCbRbBQv67peHkHqrjpQ7+EMVU98GgjalrMHKf3DGGk++Gcg=
X-Gm-Message-State: AOJu0Yz2T8By6/uC7UWpLhJ9YoXqh/I3tQj7YBXjKSPO4oV6Ta0zr2m5
	wHxhfvakelrwTwSqfeb09yZk976LxqVGUvYBz584DMWtaynxFbCC
X-Google-Smtp-Source: AGHT+IH/QWpADj9D7MciL00kSwES1GkfECaQH7fjfH0/mq7eWSZ/ccaxiPO/zqqPT6IKLCNy18Co4w==
X-Received: by 2002:a17:902:a501:b0:1fa:d77:21f8 with SMTP id d9443c01a7336-1fa23f158c6mr108575135ad.42.1719533158537;
        Thu, 27 Jun 2024 17:05:58 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac1596675sm3333215ad.249.2024.06.27.17.05.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 17:05:57 -0700 (PDT)
Message-ID: <dbfa52ab-c6fa-4c11-89bd-87445941bac3@roeck-us.net>
Date: Thu, 27 Jun 2024 17:05:55 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/9] Add Mule MFD support
To: Farouk Bouabid <farouk.bouabid@cherry.de>,
 Quentin Schulz <quentin.schulz@cherry.de>, Jean Delvare <jdelvare@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Peter Rosin <peda@axentia.se>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
 <fdeea79f-4568-4e70-9b49-0c02abc91170@roeck-us.net>
 <4f92528b-8311-4c0b-998b-f0221d7bd474@cherry.de>
 <c2803eed-b4f4-44cf-a7f7-9557d05e798e@roeck-us.net>
 <19ee521d-298d-4718-bdc6-f282666de371@cherry.de>
 <2a1ae708-3718-4f70-9837-bcc50b7c8f66@roeck-us.net>
 <85b2061a-9f5b-4998-b9cb-21308ee1965f@cherry.de>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <85b2061a-9f5b-4998-b9cb-21308ee1965f@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_170600_041811_16E8835D 
X-CRM114-Status: GOOD (  24.47  )
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

T24gNi8yNC8yNCAwOToxMywgRmFyb3VrIEJvdWFiaWQgd3JvdGU6Cj4gSGkgR3VlbnRlciwKPiAK
PiBPbiAxOS4wNi4yNCAxNTozMSwgR3VlbnRlciBSb2VjayB3cm90ZToKPj4gT24gNi8xOS8yNCAw
MDo0NSwgRmFyb3VrIEJvdWFiaWQgd3JvdGU6Cj4+Cj4+Pj4KPj4+PiBJZiBpdCBpcyBwcm9wZXJs
eSBkZWZpbmVkIGluIGRldmljZXRyZWUsIHRoZSBlbXVsYXRlZCBBTUM2ODIxIHNob3VsZCBiZQo+
Pj4+IGFuIGkyYyBkZXZpY2UsIHBvc3NpYmx5IHNpdHRpbmcgYmVoaW5kIGFuIGkyYyBtdWx0aXBs
ZXhlciwgbm90IGEKPj4+PiBwbGF0Zm9ybSBkZXZpY2UuCj4+Pgo+Pj4KPj4+IFRoZSBlbXVsYXRl
ZCBBTUM2ODIxIGFuZCB0aGUgTXVsZSBJMkMgbXV4IGFyZSBib3RoIHJlYWNoYWJsZSB1c2luZyBJ
MkMgYWRkcmVzcyAoMHgxOCksIGFuZCBoZW5jZSB0aGUgdXNlIG9mIE1GRCBhcyB0aGUgbXV4IG9u
bHkgdXNlcyBvbmUgSTJDIHJlZ2lzdGVyIHRoYXQgaXMgbm90IHVzZWQgYnkgQU1DNjgyMS4KPj4+
Cj4+Cj4+IFdoYXRldmVyIHlvdSBkbywgdGhlIGFtYyBjaGlwIGlzIHN0aWxsIGFuIGkyYyBkcml2
ZXIgYW5kIG5lZWRzIHRvIHJlbWFpbiBvbmUuCj4+IE1vZGVsaW5nIGl0IGFzIHBsYXRmb3JtIGRy
aXZlciBpcyBzaW1wbHkgd3JvbmcsIGFuZCBJIHdvbid0IGFjY2VwdCB0aG9zZSBwYXRjaGVzLgo+
Pgo+IAo+IFRoZSBpc3N1ZSB0aGF0IHdlIGhhdmUgY2Fubm90IGJlIGhhbmRsZWQgYnkgYW4gSTJD
IG11eCBiZWNhdXNlIGluIHRoYXQgY2FzZSBib3RoIHRoZSBtdXggYW5kIGl0cyBjaGlsZCB3b3Vs
ZCBoYXZlIHRoZSBzYW1lIGFkZHJlc3Mgd2hpY2ggaXMgbm90IHN1cHBvcnRlZCBpbiB0aGXCoEky
QyBzdWJzeXN0ZW06Cj4gCj4gCj4gaTJjLW11eEAxOCB7Cj4gCj4gIMKgwqDCoCDCoMKgwqAgY29t
cGF0aWJsZSA9ICJ0c2QsbXVsZS1pMmMtbXV4IjsKPiAKPiAgwqDCoMKgIMKgwqDCoCByZWcgPSA8
MHgxOD47Cj4gCj4gIMKgwqDCoCDCoMKgwqAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gCj4gIMKg
wqAgwqDCoMKgwqAgI3NpemUtY2VsbHMgPSA8MD47Cj4gCj4gCj4gIMKgwqAgwqDCoMKgwqAgaTJj
MTA6IGkyY0AwIHsKPiAKPiAgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoMKgIHJlZyA9IDwweDA+
Owo+IAo+ICDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgwqAgI2FkZHJlc3MtY2VsbHMgPSA8MT47
Cj4gCj4gIMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwwPjsKPiAK
PiAKPiAgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoMKgIGZhbjogZmFuQDE4IHsKPiAKPiAgwqDC
oCDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJ0aSwg
YW1jNjgyMSI7Cj4gCj4gIMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoMKg
IHJlZyA9IDwweDE4PjsKPiAKPiAgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoMKgIH07Cj4gCj4g
IMKgwqAgwqDCoMKgwqAgfTsKPiAKPiB9Owo+IAo+IAo+IFRoZSBJMkMgbWFpbnRhaW5lciByZWpl
Y3RlZCBzdXBwb3J0aW5nIHRoaXMgdXNlIGNhc2UgYW5kIHN1Z2dlc3RlZCB0aGF0IGFuIE1GRCBj
b3VsZCBwcm9iYWJseSBiZSBtb3JlIHN1aXRhYmxlLgo+IAo+IAo+IE9uIG9uZSBoYW5kLCB0aGUg
TUZEIGxvb2tzIGluZGVlZCBtb3JlIGFwcHJvcHJpYXRlIGFuZCBhIGxvdCBvZsKgSTJDIGRldmlj
ZXMgYXJlIG1vZGVsZWQgdGhyb3VnaCBwbGF0Zm9ybSBzdWIgZGV2aWNlcy4gT24gdGhlIG90aGVy
IGhhbmQgd2UgYXJlIGVtdWxhdGluZyB0aGUgYW1jNjgyMSBpbiBvdXIgZGV2aWNlIHdoaWNoIHJl
cXVpcmVzIHVzIHRvIGhhdmUgaXQgbW9kZWxlZCBhcyBwbGF0Zm9ybToKPiAKClRoZSBkaWZmZXJl
bmNlIGlzIHRoYXQgdGhvc2Ugb3RoZXIgaTJjIGRldmljZXMgYXJlIHJlYWwgbXVsdGktZnVuY3Rp
b24KZGV2aWNlcy4KCj4gCj4gIMKgwqDCoMKgwqAgKy0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0r
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICDCoMKgwqDCoMKgIHzCoCBNdWxlwqDC
oMKgwqDCoMKgwqDCoCAoTUZEKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfAo+ICDCoDB4MTggfMKgwqDCoMKgwqDC
oMKgICstLS0tLS0tLS0tLS0tLS0tK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfAo+IC0tLS0tLS0tKy0tLS0tPnzCoMKgwqAgYW1jNjgy
McKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHwKPiAgwqDCoMKgwqDCoCB8IHzCoMKgwqDCoMKgICstLS0tLS0tLS0tLS0t
LS0tK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfAo+ICDCoMKgwqDCoMKgIHwgKy0tLS0tPnzCoMKgwqDCoMKgIE11eMKgwqDCoMKgwqDC
oCB8LS0tLS0rwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
Cj4gIMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgICstLS0tLS0tLS0tLS0tLS0tK8KgwqDCoMKg
IHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwKPiAgwqDC
oMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIFZfX8KgwqDCoMKgwqDCoMKgwqDCoCArLS0tLS0tLS0tKyB8Cj4gIMKgwqDC
oMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgwqAgXC0tLS0tLS0tPnwgaXNsMTIwOCB8IHwKPiAgwqDCoMKgwqDCoCB8wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqDCoCB8wqDCoMKgwqDCoMKgwqDCoCArLS0tLS0tLS0tKyB8Cj4gIMKgMHg2ZiB8wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IE0gfC0t
LS0tLS0tPnwgZGV2ICMxwqAgfCB8Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tPnwgVSB8wqDCoMKgwqDCoMKgwqDCoCArLS0tLS0tLS0tKyB8Cj4gIMKgwqDCoMKgwqAgfMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fCBYIHwtLS0tLS0tLT58IGRldiAjMsKgIHwgfAo+ICDCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIHzCoMKg
wqDCoMKgwqDCoMKgICstLS0tLS0tLS0rIHwKPiAgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAvLS0tLS0t
LS0+fCBkZXYgIzPCoCB8IHwKPiAgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8X18vwqDCoMKgwqDCoMKgwqDCoMKg
ICstLS0tLS0tLS0rIHwKPiAgwqDCoMKgwqDCoCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4gCj4gCgpJdCB3b3VsZCBoYXZlIGJlZW4g
bXVjaCBtb3JlIGFwcHJvcHJpYXRlIHRvIHVzZSBhIGRpZmZlcmVudCBJMkMgYWRkcmVzcyBmb3Ig
dGhlIG11eC4KCj4gSWYgd2UgY2Fubm90IHByb2NlZWQgd2l0aCB0aGF0IHRoZW4gd2UgY291bGQg
YWRkIGEgY29tcGF0aWJsZSB0byB0aGUgYW1jNjgyMSBkcml2ZXIgdG8gYWRkIHRoZSBtdXggZGV2
aWNlIChCYXNpY2FsbHkgdGhlICJ0c2QsbXVsZSIgY29tcGF0aWJsZSBpbiBhbWM2ODIxIGNvbXBh
dGlibGUgbGlzdCB3b3VsZCBiZSBhIGNvbWJvIGRyaXZlciB3aXRoIG11eCBsb2dpYyArIGFtYzY4
MjEpLiBEbyB5b3UgdGhpbmsgdGhhdCBpcyBtb3JlIGFwcHJvcHJpYXRlID8KPiAKCkltcGxlbWVu
dCB0aGUgbXV4IGFzIHBhcnQgb2YgdGhlIGFtYzY4MjEgZHJpdmVyID8gTm8uIFdlIGNvdWxkIGRp
c2N1c3MKaW5zdGFudGlhdGluZyB0aGUgaTJjIG11eCBkcml2ZXIgZnJvbSB0aGUgYW1jNjgyMSBk
cml2ZXIuCgpHdWVudGVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
