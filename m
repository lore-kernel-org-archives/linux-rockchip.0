Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18357D3C54E
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 06:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8elwvHaCgD4zbYJGnp3/uV+G/Es2ie4MxJM32ibgMf4=; b=tXDR0fT9+vFc1v
	9AQCjFwMK74yJo0q2cLMCLin/YbKsUPX+YMLF+qX8nR3vuT8rIlTnkSmzjgv5a1ZmfGrxce/Sq85Z
	HCCYT1gnfjWj+R+6F97bQ1REVa14v9LIgmJdX2K+56iOMhIhSAC3mrRQchqrBaQIRySbcNFn7cXmF
	h86XaHpcYjpNa0FhcfX96387fsvhaUq+leHxTiaKWa3o1NPO50jmL9+Wisn3iV5ZYYFFjXfH9MI9s
	NwMgAjO8GLEF2FRz1Vala1Me5099EwE689MZgwmpVAiglj5l/49g5B2cO7V9WodCuOzgvIO5ZfmG+
	3gz35rTdr5tTzoDHbXpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1gLR-0000000H6yw-15hp;
	Fri, 18 Oct 2024 06:20:17 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1gJx-0000000H6rc-12se;
	Fri, 18 Oct 2024 06:18:47 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2e2a96b242cso257688a91.3;
        Thu, 17 Oct 2024 23:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729232323; x=1729837123; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ouUINbwY2JBh/LI60xwCfEtsQIXolR7Vwp/EQ6dj3+o=;
        b=XhqVVIG5NKdwq87s6PJHTylZc6S/Tn1LYlZtaUGID3HiKFMkO1F8xD7uc9w7Do5UHH
         PoCakYKiCul5JlZp3wwzV3FeDNe175sqtqo6JjahIhEhWj02wsYCDKv3f/pvh8zPKIon
         SCv4TIeOS5CYpbR0331f31Lv5GienCIEj7xEQ5Wk2/CGPVOdVVskrS8A4K+TxJTWdavL
         IO7pCDjWT8FX+R+48xajuOuy544DxmjzShYsdVXeoHIFOPi0nHX5K27+etIUSVRpfnbo
         uV+FW3NhU9JQkuTOY5O1GeDKvKtrRZxbupIZGGbjgPFvsFl9T4nGmhJNQX3g9W7AajyV
         yovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729232323; x=1729837123;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ouUINbwY2JBh/LI60xwCfEtsQIXolR7Vwp/EQ6dj3+o=;
        b=fhgM84pAJJPGh2kPWUZEbYCHw4gF1jQshyd8nr1r3UBLLc+jNw/WKisMb/zVC3chaE
         K/2QPVZZNYCvRqfkj8tEqvYHfDKUvlAUaMVUQ81QbhXunhtvhl14CpdintilpEzMvWUA
         xQ0jyD53x6owui3OpcSJXYhzHXnKn9KJ0tWQ0rlNHJH7QCbf6kTbtqcEkLG6ms7QPFSj
         QyNElbhmXx7gBvlR3Y5Z4FKkdEQzlcF7LLvAwU0ani7WYc7y9wivOP8roF4aNo5Jh3XG
         FyyzKJ+K3c6JJN4XVcNlT/DGBrglKy/IyPKzgrBjwIoyYJUHwBNGhan9sSIdUsxLJS5z
         mFmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDFQF8qB6jG43iArsSYNZA/HL+GeDQsgAb44dk/ieTr5jNmC17M0A8yz3/b5REidlNg+QSdw3y6xi68Jbc4Ds=@lists.infradead.org, AJvYcCWJOhr5pCbHFQXFyrA1TlCTqEH+jFVkX11dva1IUqNzXkmxckBt+689iA1W0Sn8S39iWrld6PMSSDjM@lists.infradead.org, AJvYcCXa4AaFdEBP0PrmVmtWJJ+HQnucNiLrbWCQj1ynIhO8EAPEn8GAs06OV3rM+NTMs+o/wjFUIzpZxpFF9lQwCKq5@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9hF/8Yrq5+wuTGUKBdKFEFJk0DUQzET9zNQMzVtG+bSXx+fZa
	AzuiBMgK/NJowaLhLQFi6Ca2nZeAC42tYL5jM/DZd7/Ea/Vt0efS
X-Google-Smtp-Source: AGHT+IHTa4o1U0/RWcsBQd2x+1sXi55hJr+ER1bPmWHpKN8wglThFLNxkxKayVdgTq2xyvVigaVFug==
X-Received: by 2002:a17:90b:1a81:b0:2e2:ada8:2984 with SMTP id 98e67ed59e1d1-2e5618d5990mr787518a91.4.1729232323248;
        Thu, 17 Oct 2024 23:18:43 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e5a8d6cf9sm5875815ad.143.2024.10.17.23.18.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2024 23:18:41 -0700 (PDT)
Message-ID: <d2a200aa-1301-4940-a39c-0412fe741994@gmail.com>
Date: Fri, 18 Oct 2024 14:18:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: soc: rockchip: add rk3576 vo1-grf
 syscon
To: Dragan Simic <dsimic@manjaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com,
 yubing.zhang@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
References: <20241017025230.28752-1-frawang.cn@gmail.com>
 <ca0ee8752791f53bac23933e1582dd86@manjaro.org>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <ca0ee8752791f53bac23933e1582dd86@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_231845_310617_A15FC050 
X-CRM114-Status: GOOD (  11.58  )
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

SGkgRHJhZ2FuLAoKT24gMjAyNC8xMC8xOCAxMzowMiwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhl
bGxvIEZyYW5rLAo+Cj4gT24gMjAyNC0xMC0xNyAwNDo1MiwgRnJhbmsgV2FuZyB3cm90ZToKPj4g
RnJvbTogRnJhbmsgV2FuZyA8ZnJhbmsud2FuZ0Byb2NrLWNoaXBzLmNvbT4KPj4KPj4gQWRkIHJv
Y2tjaGlwLHJrMzU3Ni12bzEtZ3JmIHN5c2NvbiBjb21wYXRpYmxlLCB0aGUgdm8xLWdyZiBpcwo+
PiBjb25maWd1cmVkIGluIHVzYmRwIHBoeSBkcml2ZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEZy
YW5rIFdhbmcgPGZyYW5rLndhbmdAcm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PiBDaGFuZ2Vsb2c6
Cj4+IHYyOgo+PiDCoC0gVGhpcyBpcyBhIG5ldyBwYXRjaCBhZGRzIHJrMzU3Ni12bzEtZ3JmIHN5
c2Nvbi4KPgo+IENvdWxkIHlvdSwgcGxlYXNlLCBjbGFyaWZ5IGEgYml0IHdoeSBpcyB0aGlzIGFk
ZGl0aW9uYWwgcGF0Y2gKPiBuZWVkZWQgaW4gdGhpcyBzZXJpZXM/Cj4KCkkgbWVudGlvbmVkIGlu
IHRoZSBjb21taXQgY29udGVudC4gVGhlIHVzYmRwLXBoeSBkcml2ZXIgc2VsZWN0IGRwIGxhbmVz
IAp2aWEgY29uZmlndXJpbmcgdGhlIHZvMS1ncmYuCgpCZXN0IHJlZ2FyZHMsCkZyYW5rCgo+PiB2
MToKPj4gwqAtIG5vbmUKPj4KPj4gwqBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
c29jL3JvY2tjaGlwL2dyZi55YW1sIHwgMiArKwo+PiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWwKPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc29jL3JvY2tjaGlwL2dyZi55YW1sCj4+IGluZGV4IDUwZDcyN2Y0Yjc2YzYuLmZk
NDIyMTdhYjg1ZTcgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+PiBAQCAtMzMsNiArMzMsNyBAQCBw
cm9wZXJ0aWVzOgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmsz
NTc2LXVzYi1ncmYKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJr
MzU3Ni11c2JkcHBoeS1ncmYKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tj
aGlwLHJrMzU3Ni12bzAtZ3JmCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tj
aGlwLHJrMzU3Ni12bzEtZ3JmCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2Nr
Y2hpcCxyazM1NzYtdm9wLWdyZgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9j
a2NoaXAscmszNTg4LWJpZ2NvcmUwLWdyZgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC0gcm9ja2NoaXAscmszNTg4LWJpZ2NvcmUxLWdyZgo+PiBAQCAtMjgzLDYgKzI4NCw3IEBAIGFs
bE9mOgo+PiDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGU6Cj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvbnRhaW5zOgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bToKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmszNTc2LXZvMS1ncmYKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJrMzU4OC12by1ncmYKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJrMzU4OC12bzAtZ3JmCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1ODgtdm8xLWdyZgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
