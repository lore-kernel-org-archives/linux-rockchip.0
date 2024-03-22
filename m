Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4577FC47DD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 14:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44SSN2kHIP1kbxbdBSqcqPy3kvOR7PrqCgj0lW4eWm4=; b=z+6q0s5ELyH57K
	Bluo2bWY6TjMsKahnZevnIgA83x5nct9wyfjPHLgG2RpIptlfoefELla+R5XkXD34gjtQEpe9Wpnl
	P9pKxFORmtyRgXMo3cMqnXIeyHdoiNpKb1fH4pv2Ox8z7LAYyYt5uRG2iwkr/WCcsdX1pwLRssDKP
	zAkLtd1oIvTE17zgLeMm30TzTwWH50ibqDas3+edbjJ9mrh3hBXkB7gRV976Bvw6qDp/LE4JYcIk/
	P94DddTylxktt0ueHJM9rXKPX3OGFzj3mgoxw1AboSdYrT/+vO0I70lqrBSzNACsmCnIhwKslF9aT
	vpUBP7d3izOpCOIgoVqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rngKf-00000007df9-1K1s;
	Fri, 22 Mar 2024 14:57:21 +0000
Received: from mail-ua1-x929.google.com ([2607:f8b0:4864:20::929])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rngKc-00000007dc6-0K9p
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Mar 2024 14:57:20 +0000
Received: by mail-ua1-x929.google.com with SMTP id a1e0cc1a2514c-7e06168551eso810146241.2
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Mar 2024 07:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1711119434; x=1711724234; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZorJDZHV3S35zuqaxSThGm8XOeoTPpTjb5tz8dN4eJI=;
        b=My2SubehXdii6GZMgd+jEPq3X1v+GjXvKc2qaAmFztZaak+msw7dAUO2vAZqZC0W/x
         IxbApVViFKN15ndjz3rKTwmEen2YirNfhyM3No7yuc3UznPNmld8/aiZFbDzSMGSBZyn
         rzkJLqb0rdo3+cNizQ1uamY3DIpifdmxflJyZpXEwN7eoxhhT0zuir2PoI27sazHvLBw
         8EkJlV8NJjBUtbSvJNW5b9k1ODZHBHz93BBzlJNqNOO9sNvjU0rMELhsc9GSXR5/fe+4
         nhKsx3NLUS3PGMTxlwiX5baEuc8F7+l+m+Ixf1Aj9MpAkfSUDZXuDYIGFRBn9Q4byDpl
         4BGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711119434; x=1711724234;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZorJDZHV3S35zuqaxSThGm8XOeoTPpTjb5tz8dN4eJI=;
        b=AmwKKxTQ9t8mlp17s7DkI31TstrjZ0jUbjV+h9iZ89YOnK//NNIf2Acw5SiCgc77n6
         as1AdAT1Bqis1U0nCW1aen9zbKF0eI939Ge1qy6dbmhaytjhTNv2duC61LfJTBTDoU3E
         Rtvh06N39kgL3qJjOKXEw0WhNrdnwmaNPBody5i+3wdSlfBu4Cv0wB8noOx5G8hyPUbl
         LKwvgZcqlElutMOZYzQho/4SH8oMlN+Ty4+SSg7LnUMK/KJSp6SJsU2dcGns70sRfb3C
         9baWuh0YIvy4NJfteubA3UzFMVDjJDoYNqQSQdvEZnE2K1iJFjzIKetDoa/iNpV53Cz1
         A8Ag==
X-Forwarded-Encrypted: i=1; AJvYcCXqnCxpzDjnXApA0rH/bkdUgPPCw1CRyQzwvebYkc43cyf6DEhm3Woo/v5OK+TJuvRD92hdkJ16YtS7lES6iI9gMR1mQdbsPwJ2d8c4AxsjOLy1
X-Gm-Message-State: AOJu0YyQiu83r/VF5wl0reR2O1Nh61Wd1DGz5IgglxSrjTix9+3i94sJ
	4bzP2+SiMqh3DJV38QH4rwzMxb1/5K+WXaBUp7pM7J3w8abanBtYYkNHSRNlHZM=
X-Google-Smtp-Source: AGHT+IF7KOamQ/ZSV2W2kGIMahMBrt6DfYcXh8dFA2yNq70TGAUvTUROE3goyGZT3KN/zY040q01ew==
X-Received: by 2002:a05:6102:1789:b0:476:577f:aad8 with SMTP id je9-20020a056102178900b00476577faad8mr2952736vsb.14.1711119434492;
        Fri, 22 Mar 2024 07:57:14 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:10:d05::7a9])
        by smtp.gmail.com with ESMTPSA id e10-20020a37db0a000000b00789fc91dcf1sm816098qki.87.2024.03.22.07.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 07:57:14 -0700 (PDT)
Message-ID: <f490bd15fd8ee36cd3e759483bbcfb3288cace74.camel@ndufresne.ca>
Subject: Re: [PATCH 2/4] media: dt-binding: media: Document
 =?UTF-8?Q?rk3588=E2=80=99s?= vepu121
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Emmanuel Gil Peyrot
 <linkmauve@linkmauve.fr>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy
 <robin.murphy@arm.com>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Cristian Ciocaltea
 <cristian.ciocaltea@collabora.com>, Dragan Simic <dsimic@manjaro.org>, 
 Shreeya Patel <shreeya.patel@collabora.com>, Chris Morgan
 <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>, Nicolas
 Frattaroli <frattaroli.nicolas@gmail.com>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  iommu@lists.linux.dev
Date: Fri, 22 Mar 2024 10:57:12 -0400
In-Reply-To: <2798331.BEx9A2HvPv@diego>
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
	 <855507987.0ifERbkFSE@diego>
	 <70439a01-7949-46bf-a701-c82ba961171a@linaro.org>
	 <2798331.BEx9A2HvPv@diego>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_075718_400613_5355B5E8 
X-CRM114-Status: GOOD (  20.66  )
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

TGUgamV1ZGkgMjEgbWFycyAyMDI0IMOgIDEwOjMyICswMTAwLCBIZWlrbyBTdMO8Ym5lciBhIMOp
Y3JpdMKgOgo+IEFtIERvbm5lcnN0YWcsIDIxLiBNw6RyeiAyMDI0LCAxMDoxOTo1NCBDRVQgc2No
cmllYiBLcnp5c3p0b2YgS296bG93c2tpOgo+ID4gT24gMjEvMDMvMjAyNCAwOTo0NywgSGVpa28g
U3TDvGJuZXIgd3JvdGU6Cj4gPiA+ID4gPiAgICAgIGVudW06Cj4gPiA+ID4gPiAgICAgICAgLSBy
b2NrY2hpcCxyazM1NjgtdmVwdQo+ID4gPiA+ID4gKyAgICAgIC0gcm9ja2NoaXAscmszNTg4LXZl
cHUxMjEKPiA+ID4gPiAKPiA+ID4gPiBXaGF0IGlzIDEyMT8KPiA+ID4gCj4gPiA+IFRoYXQgaXMg
dGhlIHN0cmFuZ2UgbmFtaW5nIG9mIHRoZSBpcCBibG9jayBpbnNpZGUgdGhlIHNvYy4KPiA+ID4g
Cj4gPiA+IEkuZS4gdGhlIHJrMzU4OCBUUk0gbGlzdHMgYSBudW1iZXIgb2YgZGlmZmVyZW50IHZp
ZGVvIGVuY29kZXJzIGFuZCBkZWNvZGVyczoKPiA+ID4gLSBWRFBVMTIxIGlzIGRlY29kaW5nIGgu
MjYzIGFuZCBtcGVnMSwyLDQKPiA+ID4gLSBWRFBVMzgxIGlzIGRlY29kaW5nIGguMjY1LCBoLjI2
NCBhbmQgc29tZSBtb3JlCj4gPiA+IC0gVkRQVTcyMCBpcyBkZWNvZGluZyBqcGVnCj4gPiA+IC0g
VkRQVTk4MSBkZWNvZGVzIEFWMQo+ID4gPiAtIFZFUFUxMjEgaXMgdGhlIGpwZWcgZW5jb2RlciBh
Ym92ZQo+ID4gPiAtIFZFUFU1ODAgZW5jb2RlcyBoLjI2NCBhbmQgaC4yNjUKPiA+ID4gCj4gPiA+
IEVhY2ggb2YgdGhvc2UgYXJlIHNlcGFyYXRlIElQIGJsb2NrcyB3aXRoIHRoZWlyIG93biBpby1t
ZW1vcnksIHRoZWlyIG93bgo+ID4gPiBpbnRlcnJ1cHRzIGFuZCB0aGVpciBvd24gaW9tbXVzLCBl
dGMuCj4gPiAKPiA+IFRoYW5rcyBmb3IgZXhwbGFuYXRpb24uIFNob3J0IGludHJvZHVjdGlvbiBp
biBjb21taXQgbXNnIHdvdWxkIGJlIG5pY2UKPiA+IChlLmcuIFZFUFUxMjEsIG9uZSBvZiB0d28g
VkVQVSBlbmNvZGVycykuIE9UT0gsIHdoeSBub3QgZG9jdW1lbnRpbmcgYWxsCj4gPiBvZiB0aGVt
PyBCaW5kaW5ncyBhcmUgc3VwcG9zZWQgdG8gYmUgYXMgY29tcGxldGUgYXMgcG9zc2libGUuCj4g
Cj4gV2UgaGF2ZSBhIGNvbmN1cnJlbnQgc2VyaWVzIGZvciB0aGUgdmRwdTEyMSBydW5uaW5nIGF0
Cj4gICBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDAzMTYwNzExMDAuMjQxOTM2OS0x
LWxpdWppYW5mZW5nMTk5NEBnbWFpbC5jb20KPiAKPiBJIHRoaW5rIG5vdCBhbGwgb2YgdGhvc2Ug
ZW5jb2RlcnMvZGVjb2RlcnMgYXJlIGJhc2VkIG9uIHRoZSBIYW50cm8gSVAKPiBvciBhdCBsZWFz
dCBhdCB0aGUgbW9tZW50IHdlIGRvbid0IGtub3cgdGhpcyB5ZXQuCj4gSGVuY2UgcGVvcGxlIGFk
ZGluZyBjb21wYXRpYmxlcyBmb3IgdGhlIGJsb2NrcyB0aGV5IGhhdmUgYWN0dWFsbHkKPiBtYW5h
Z2VkIHRvIHJ1biBvbiB0aGVpciBoYXJkd2FyZS4KCkNvcnJlY3QsIG9uIHRvcCBvZiB0aGlzIGxl
Z2FjeSBjb3JlLCBvbmx5IFZEUFU5ODEgKEFWMSBkZWNvZGUpIGlzIGEgY2hpcCBmcm9tCkhhbnRy
byAvIFZlcmlzaWxpY29uLiBFdmVyeXRoaW5nIGVsc2UgbG9va3MgbGlrZSB0aGVpciBvd24gZGVz
aWduIGFuZCBkZXJpdmVkCmZyb20gdGhlaXIgb3JpZ2luYWwgcmt2ZGVjIGNvZGVjIHBhY2suIFdl
IGRpZG4ndCBuYW1lIHRoaXMgQVYxIGRlY29kZXIgYWZ0ZXIgVlNJCmJyYW5kIGFzIHdlIGRpZG4n
dCBoYXZlIHRoZSBwcm9wZXIgdmVyc2lvbiBpbmZvcm1hdGlvbiBhdmFpbGFibGUsIGJ1dCB3ZSBz
dXNwZWN0CnRoYXQgaXMgdmFyaWFudCBvZiB0aGVpciBWU0k5MDAwRCBjb3Jlcy4gSW4gc2hvcnQs
IHdlIHRyaWVkIHRvIGF2b2lkIGRvY3VtZW50aW5nCm91ciBzcGVjdWxhdGlvbiwgZXZlbiBpZiB3
ZSBiZWxpZXZlIHdlIGFyZSByaWdodC4KCj4gCj4gQmluZGluZ3MgYXJlIHN1cHBvc2VkIHRvIGJl
IGFzIGNvbXBsZXRlIGFzIHBvc3NpYmxlLCBidXQgcmV2aXNpbmcgYSB3cm9uZwo+IGJpbmRpbmcg
bGF0ZXIgaXMgdmVyeSBoYXJkLiBBbmQgdGhlIHdob2xlIG1lZGlhIHBhcnQgaXMgZnVsbCBvZiBi
aW5hcnkgbGlicmFyaWVzCj4gaW4gdGhlIHZlbmRvciBrZXJuZWwgYW5kIGhhcyBub3QgdGhlIGJl
c3QgZG9jdW1lbnRhdGlvbi4KCkkgYWdyZWUgd2l0aCB0aGlzLCBidXQgSSBtdXN0IGdpdmUgdG8g
UksgdGhhdCBkZXNwaXRlIHRoZSBsYWNrIG9mIGRvY3VtZW50YXRpb24sCnRoZWlyIENPREVDIHNv
ZnR3YXJlIGlzIGZ1bGx5IG9wZW4tc291cmNlIGFuZCBibG9iIGZyZWUgb24gdGhpcyBwbGF0Zm9y
bS4KCj4gCj4gU28gSSBndWVzcyBwZW9wbGUgYXJlIGp1c3QgY2F1dGlvdXMgOy0pCj4gCgpleGFj
dGx5IQoKTmljb2xhcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
