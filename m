Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA4EC47082
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 23:38:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4B40613D3
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 23:38:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D4B40613D3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pPy56e5MJSyRt/OQsdI6tzbajMYs3grUh3jcCEt5JXI=; b=AtUcZ4LaXKO7YNI7UzHH3uXhN5
	teblHACKJXTV0dDId7ObUy+tbYIzDfT1FyGUv5NSlHN6z91OFafWopoxNU37VRFzAPrzpWWhVTNxM
	RwmWIakboEOHVk9wzBHF4vXqx6v5MNlsvKppbuL4TselthChWlKAYODc8p2NG0StS3WE4jG9wplKR
	vsvyRCPHawN5wOr+K2WKaFk6uNSbDNRMJPlCg/I2ycfgcTscCJtwPtXXlmN7GGhWCoEm194NJd4HD
	f0/GxYbZkcEb280VPoxsKM+LnHZIVJzQVn8XlJbZJd8qsliM5ZKAgPM6k4ypz4NUrf8YZjrAGnIiO
	7dbdi7zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lm36Q-000sEu-Me; Wed, 26 May 2021 23:38:18 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lm36C-000s9Q-RM; Wed, 26 May 2021 23:38:06 +0000
Received: by mail-ed1-x535.google.com with SMTP id df21so3552398edb.3;
 Wed, 26 May 2021 16:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=msqRgqFp5nTxCgVxwFT3u/oYhUS3myZ12JA80hALidA=;
 b=Af/o3nP3riejK6SjwqE/sz95Jrpry8tSeySDzbJUA+HVhyx0nS7wRUUM8uOrU94K0j
 YnnAOwAwXALkSgAUQqRxu5ey+r09rcndtYLZ7m7+iFc3DBL+2CkA0ApArCt/stAN8RgC
 gjXL2jgY0HrJEVf7upgZ5zUUDRmE4QAVySGuktu3BgyZftI/wLN0NC1naULCApB4WhyJ
 Q4pXjoolk84cipsvSRRHFSN9h0UWpFzIn1CNMOspEV75mvEn43n5LqkBc30NCJDfVz4u
 floZhk7XybJjeHJ/8l3Ru+swuvyh/zjxMHeiomdLjB+rGXygtmikMN9lQIEpvBNoiB01
 PDnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=msqRgqFp5nTxCgVxwFT3u/oYhUS3myZ12JA80hALidA=;
 b=W6CN4Qmt+UOx5VcQkIMsr9UA7hj35qpFEZXVbTCr+bOGkV3FN8zwBXUqFnRrDD6rZs
 YXPMfJx2bX38izVLS44xrowcdMmUs0VeHKlssJktWAWWTLN2QQ8kXavA8J6p1kShnZKN
 fuA+cZr8nFLUwFTZXAnFwgkl06qlH26Zm69vpDp5nKosreCvRuBRr4M/6hx+ycQM1Ml1
 J75x2+fH4dvIkhHKoyqIFwEr4MXdhGJOfq80n8d2FtRhxWmtfYnVj4xviqCEyXh98hyn
 P6LNGH0vlHti2mV0btV3BWTMq/W9YyOKi6qPkbXZ6f0CWriayMeHPgpqNMqS/bpCH/qx
 deDQ==
X-Gm-Message-State: AOAM531j0yRZ0DI8t8QBU/Qtl9miULsKqIKoRX4GDQ5g8ndssHHGFewP
 M2xerBqgQckXSRRGcOj32w==
X-Google-Smtp-Source: ABdhPJxBEO3pN9mWH42KxreaxywnAA9WNgga47+nXNKMT1SoL9FvuXfoHtJ6EnXrLvwaG5Yckb9dAw==
X-Received: by 2002:a50:ed13:: with SMTP id j19mr781442eds.190.1622072283316; 
 Wed, 26 May 2021 16:38:03 -0700 (PDT)
Received: from ?IPv6:2a02:810b:f40:e00:bdfb:c34e:3af8:76da?
 ([2a02:810b:f40:e00:bdfb:c34e:3af8:76da])
 by smtp.gmail.com with ESMTPSA id rn2sm207346ejb.45.2021.05.26.16.38.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 May 2021 16:38:02 -0700 (PDT)
Subject: Re: [PATCH 00/10] Add support for older Rockchip SoCs to V4L2 hantro
 and rkvdec drivers
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <38327082.10thIPus4b@diego>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <bef97a10-bbc3-c23e-0f0a-bf3ec81293ec@gmail.com>
Date: Thu, 27 May 2021 01:38:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <38327082.10thIPus4b@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_163804_929705_F0A512D4 
X-CRM114-Status: GOOD (  27.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgSGVpa28sIEV6ZXF1aWVsLCBSb2IgYW5kIExpc3QsCgp0aGFua3MgZm9yIHlvdXIgZmVlZGJh
Y2suCgpBbSAyNi4wNS4yMSB1bSAwMTowMSBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+IEhpIEFs
ZXgsCj4KPiBBbSBEaWVuc3RhZywgMjUuIE1haSAyMDIxLCAxNzoyMjoxNSBDRVNUIHNjaHJpZWIg
QWxleCBCZWU6Cj4+IEhpIGxpc3QsCj4+Cj4+IHRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3Ig
b2xkZXIgUm9ja2NoaXAgU29DcyAoUkszMDM2LCBSSzMwNjYsIFJLMzE4OAo+PiBhbmQgUkszMjJ4
KSB0byB0aGUgZXhpc3RpbmcgVjRMMiB2aWRlbyBkZWNvZGVyLy1lbmNvZGVyIGRyaXZlcnMgLSBu
YW1lbHkKPj4gaGFudHJvIGFuZCBya3ZkZWMuCj4+IFRoZXkgY2FuIGJlIHVzZWQgYXMtaXMgb3Ig
d2l0aCB2ZXJ5IGxpdHRsZSBtb2RpZmljYXRpb25zLgo+Pgo+PiBJbiBwcmVwYXJhdGlvbiB0byB0
aGF0IHBhdGNoZXMgMS0zIGFkZCBwb3dlci1jb250cm9sbGVyIHN1cHBvcnQgZm9yIFJLMzAzNgo+
PiBhbmQgUkszMjJ4LCBzaW5jZSBib3RoIGRyaXZlcnMgcmVseSBvbiBwbS4gVGhlIGRyaXZlcnMg
Zm9yIHRoZW0gZXhpc3QKPj4gYWxyZWFkeSBpbiB0aGUgY29tbW9uIFJvY2tjaGlwIHBtIGRyaXZl
ciwgdGhleSBqdXN0IGhhdmVuJ3QgYmUgYWRkZWQgdG8KPj4gdGhlIGRldmljZSB0cmVlcyB5ZXQu
Cj4gb24gZmlyc3QgZ2xhbmNlLCBsb29rcyBnb29kLiBKdXN0IGEgc21hbGwgb3JkZXJpbmcgbml0
LCBpZiB5b3UgbmVlZCB0byByZXNlbmQKPiB0aGUgc2VyaWVzIGZvciBvdGhlciByZWFzb25zOgo+
Cj4gUGxlYXNlIHRyeSB0byBvcmRlciBwYXRjaGVzIGxpa2U6Cj4gKDEpIGR0LWJpbmRpbmcgLSBj
b21wYXRpYmxlIGFkZGl0aW9uCj4gKDIpIGRyaXZlciBwYXRjaGVzCj4gKDMpIGRldmljZXRyZWUg
bm9kZSBwYXRjaGVzCj4KPiBUaGF0IG1ha2VzIGl0IHdheSBlYXNpZXIgdG8ga2VlcCB0cmFjayBv
ZiBkZXBlbmRlbmNpZXMgd2hlbiBnbGFuY2luZyBhdAo+IHRoZSBzZXJpZXMuIExpa2UgZm9yIHBh
dGNoZXMgMSsyLCBJIG5lZWQgdG8gd2FpdCBmb3IgTGVlIHRvIGFwcGx5IChvciBBY2spIHRoZQo+
IGJpbmRpbmcgYWRkaXRpb24gaW4gcGF0Y2ggMy4KPgo+IFNhbWUgZm9yIHRoZSBoYW50cm8gZGV2
aWNldHJlZSBhZGRpdGlvbnMsIHRoYXQgbmVlZCB0byB3YWl0IGZvciBib3RoCj4gYmluZGluZ3Mg
KGFuZCBkcml2ZXIpIGNoYW5nZXMgdG8gZ2V0IGFwcGxpZWQgdG8gdGhlIG1lZGlhIHRyZWUuCj4K
PiBUaGFua3MKPiBIZWlrbwo+Cj4KPj4gVGhhbmtzIGZvciB5b3VyIGZlZWRiYWNrLAo+PiBBbGV4
Lgo+Pgo+PiBBbGV4IEJlZSAoMTApOgo+PiAgICBBUk06IGR0czogcm9ja2NoaXA6IGFkZCBwb3dl
ciBjb250cm9sbGVyIGZvciBSSzMyMngKPj4gICAgQVJNOiBkdHM6IHJvY2tjaGlwOiBhZGQgcG93
ZXIgY29udHJvbGxlciBmb3IgUkszMDM2Cj4+ICAgIGR0LWJpbmRpbmdzOiBtZmQ6IHN5c2Nvbjog
YWRkIFJvY2tjaGlwIFJLMzAzNi9SSzMyMjggcW9zIGNvbXBhdGlibGVzCj4+ICAgIG1lZGlhOiBo
YW50cm86IGFkZCBzdXBwb3J0IGZvciBSb2NrY2hpcCBSSzMwNjYKPj4gICAgbWVkaWE6IGhhbnRy
bzogYWRkIHN1cHBvcnQgZm9yIFJvY2tjaGlwIFJLMzAzNgo+PiAgICBBUk06IGR0czogcm9ja2No
aXA6IGFkZCB2cHUgbm9kZXMgZm9yIFJLMzA2NiBhbmQgUkszMTg4Cj4+ICAgIEFSTTogZHRzOiBy
b2NrY2hpcDogYWRkIHZwdSBub2RlIGZvciBSSzMyMngKPj4gICAgbWVkaWE6IGR0LWJpbmRpbmdz
OiBtZWRpYTogcm9ja2NoaXAtdnB1OiBhZGQgbmV3IGNvbXBhdGlibGVzCj4+ICAgIEFSTTogZHRz
OiByb2NrY2hpcDogYWRkIHZkZWMgbm9kZSBmb3IgUkszMjJ4Cj4+ICAgIG1lZGlhOiBkdC1iaW5k
aW5nczogbWVkaWE6IHJvY2tjaGlwLXZkZWM6IGFkZCBSSzMyMjggY29tcGF0aWJsZQo+Pgo+PiAg
IC4uLi9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcCx2ZGVjLnlhbWwgICAgICAgICB8ICAxMCArLQo+
PiAgIC4uLi9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC12cHUueWFtbCAgICAgICAgICB8ICAzMyAr
KystCj4+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sICAgICAgIHwg
ICAyICsKPj4gICBhcmNoL2FybS9ib290L2R0cy9yazMwMzYuZHRzaSAgICAgICAgICAgICAgICAg
fCAgNTEgKysrKysrCj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMDY2YS5kdHNpICAgICAgICAg
ICAgICAgIHwgICA0ICsKPj4gICBhcmNoL2FybS9ib290L2R0cy9yazMxODguZHRzaSAgICAgICAg
ICAgICAgICAgfCAgIDUgKwo+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzIyeC5kdHNpICAgICAg
ICAgICAgICAgICB8IDEzOSArKysrKysrKysrKysrKy0KPj4gICBhcmNoL2FybS9ib290L2R0cy9y
azN4eHguZHRzaSAgICAgICAgICAgICAgICAgfCAgMTIgKysKPj4gICBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyAgICAgfCAgIDIgKwo+PiAgIGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vaGFudHJvX2h3LmggICAgICB8ICAgMiArCj4+ICAgZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9yazMyODhfdnB1X2h3LmMgIHwgMTY1ICsrKysrKysrKysrKysrKysr
Kwo+PiAgIDExIGZpbGVzIGNoYW5nZWQsIDQxNCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMo
LSkKPj4KPj4KPj4gYmFzZS1jb21taXQ6IDVkNzY1NDUxYzI0MDllNjM1NjNmYTZhM2U4MDA1YmQw
M2FiOWU4MmYKPj4KPgo+Cj4KSSdsbCBhZGRyZXNzIHlvdXIgY29tbWVudHMgaW4gdjIgLSBzZWUg
aW5kaXZpZHVhbCBwYXRjaGVzIGZvciBzcGVjaWZpYyAKcmVwbGllcyAoaWYgYW55KS4KClRoYW5r
cywKCkFsZXgKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
