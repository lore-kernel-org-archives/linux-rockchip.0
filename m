Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF2DCC61D92
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 08:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iROOo7nqCx21hiwosDuVmW0MnnYkUBro968cEYw9qfU=; b=jKFKLld32xWDyx
	2g4yYsBxXgFp9uN1uOk9hXCQ8XKqF7/0KhZb/nw9jpbeH6EHB+EipZkIp+Jg8F6Tln8q+yXh3y/gq
	ePl8LseoDAVRADo/kRf+At708KV1OO5OjHcIrSaUs8AOGcS633PvFApagFWRxxIS0wxhHyR1GUqVY
	kcQ905bFtRtcB7T3WTDGEJr7NBXotE/dvx32Q7ZENApDqqdhYoXd6cShXWFN+NjExphxKw1wsZ+JT
	e1iAPo0gFwF2qgglUhq4HhXMv6U/GQWpYhyrvXWmbeOOn74e9tjXqL9DPFSk2a2+jHIvyfwoFWcID
	PE3cXxFlfsOAaloE0/tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iB3-000zJ5-0f;
	Wed, 22 Nov 2023 08:01:41 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iB0-000zHc-1X
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Nov 2023 08:01:39 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-32f7c44f6a7so4287153f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Nov 2023 00:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700640097; x=1701244897; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vpRyQaYW4/vL4ShXm+d0nPFyBue7kCdABCWcnGkyFTo=;
        b=cOzRW4U4fchS+DF1aqWkAuB3RuncL3aNHdpBB65vUsxta3L4dJeE6hKpCuTnYMwMJw
         bQFIwU8UyhpPWFgtqBLr4c8ljzuiwD2G93rPcvN1R6hr0INzRQh9NRCAPJOnGB58maeL
         cvbHONk14oL2eZFY09m1TnTxfqZmMpVyO5Yc4TP+EChEUzQITUrSi62IYCreBDiTQ/Gz
         LEZrshE0Wtl94YH42xubQ280g1Zc8gPwk5xQycl/mUaxw7WgVc7KaKCzCwc3iG2AdmlW
         LnbPPFviT9hsJ5dRthsD2hdhPClrc2xF0wGheSPnLSatPS0uZt8H3XzpTq3xlSVF4Xv6
         WK5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700640097; x=1701244897;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vpRyQaYW4/vL4ShXm+d0nPFyBue7kCdABCWcnGkyFTo=;
        b=SWnH/YY51x+1ot2L4OIyQQL3FDghISnoJ4j74kbjfSpWq4y8j/IPeq4MVmfHa3mOkI
         PwAxe+Y89zBUiZnQ3+YbXvdLERsveBkHgj/artpZB/6poFZAb2U48WY7VQUN2IWvee7n
         dal5oGfTczUDAr4vkDa9sedxh6+yjyeaf1vLMl3ZL5nLomzl6nS9I1djssagG2gv3kp+
         8c7962cvbKc5LuVlYiSxjORbPzLKMw68rp0YgSTz7asXDoSCPC2W062bFXUnLzC+HHtD
         NvVzPJZhv351wjlnYd956E5eEgvE+APEy41xIXV9tQOkVOj+1286GFVU3TwCVy0RxSxT
         SVpA==
X-Gm-Message-State: AOJu0YxbUL2FXWtLvky7zAyNAmxVYAVxva4edCNFNgYsZGHoQjB90Qkk
	rubYQxEfcqcAWAqQV3UPZgQO6g==
X-Google-Smtp-Source: AGHT+IHBBXBgRDaK4VuhpKuYj7C0ExJ0pHqrpwD5pPYmWDdTv56w/nwhnJbUDu1/dAKqdyvyZV4g1Q==
X-Received: by 2002:a05:6000:b87:b0:32d:89b5:7fd9 with SMTP id dl7-20020a0560000b8700b0032d89b57fd9mr977755wrb.56.1700640096302;
        Wed, 22 Nov 2023 00:01:36 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id n4-20020a5d4004000000b003316b3d69b3sm15605462wrp.46.2023.11.22.00.01.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 00:01:35 -0800 (PST)
Message-ID: <26b5fd29-fcd0-4c68-8bfe-a73a660fb2c9@linaro.org>
Date: Wed, 22 Nov 2023 09:01:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Michal Simek <michal.simek@amd.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Andrew Davis <afd@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <19358871-009d-4498-9c13-90d5338b1e9f@amd.com>
 <76fa8f61-fe31-4040-a38d-cc05be3f4f17@linaro.org>
 <6c80a285-27fc-4d61-9eef-af4744a9decc@amd.com>
 <cc57dcf1-3c32-426e-920c-6f0741027797@linaro.org>
 <CAMuHMdVGyXizPw9Rggj8fQeNdbx3udRcsHFhz_sqYZzjN1CnZQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAMuHMdVGyXizPw9Rggj8fQeNdbx3udRcsHFhz_sqYZzjN1CnZQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_000138_539534_D26BEB62 
X-CRM114-Status: GOOD (  16.28  )
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

T24gMjEvMTEvMjAyMyAxNzowNCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+IEhpIEtyenlz
enRvZiwKPiAKPiBPbiBUdWUsIE5vdiAyMSwgMjAyMyBhdCAxOjM24oCvUE0gS3J6eXN6dG9mIEtv
emxvd3NraQo+IDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+PiBPbiAy
MS8xMS8yMDIzIDEyOjU1LCBNaWNoYWwgU2ltZWsgd3JvdGU6Cj4+Pj4+IGRldmljZS10cmVlIHNw
ZWNpZmljYXRpb24gdjAuNC4gQ2hhcHRlciAyLjIuMS9UYWJsZSAyLjEgaXMgZGVzY3JpYmluZyBt
dWNoIG1vcmUKPj4+Pj4gdmFsaWQgY2hhcmFjdGVycyBmb3Igbm9kZSBuYW1lcy4KPj4+Pj4gSXQg
bWVhbnMgYWJvdmUgZGVzY3JpcHRpb24gaXMgbm90IGFjY3VyYXRlIG9yIERUIHNwZWMgc2hvdWxk
IGJlIHVwZGF0ZWQuCj4+Pj4KPj4+PiBTcGVjIGFsbG93cyB3YXkgdG8gbXVjaC4gZHRjIGRvZXNu
J3QuCj4+Pj4gT25lIHRoaW5nIGlzIHRoZSBzcGVjLCBzZWNvbmQKPj4+PiB0aGluZyBpcyBjb2Rp
bmcgc3R5bGUuCj4+Pgo+Pj4gIEZyb20gbXkgcG9pbnQgb2YgdmlldyBzcGVjIGlzIHByaW1hcnkg
c291cmNlIG9mIHRydXRoLiBJZiBzcGVjIGlzIHNheWluZyBuYW1lCj4+PiBjYW4gdXNlIHVwcGVy
IGNhc2UgdGhlbiBJIGNhbiB1c2UgaXQuIElmIHVwcGVyIGNhc2UgaXMgbm90Cj4+PiByZWNvbW1l
bmRlZC9kZXByZWNhdGVkIGJlY2F1c2Ugb2Ygd2hhdGV2ZXIgcmVhc29uIHNwZWMgc2hvdWxkIGJl
IHVwZGF0ZWQgdG8KPj4+IHJlZmxlY3QgaXQuCj4+PiBJIGtub3cgdGhhdCBEVEMgaXMgcmVwb3J0
aW5nIG90aGVyIGlzc3VlcyBidXQgaXNuJ3QgaXQgdGhlIHJpZ2h0IHdheSB0byByZWZsZWN0Cj4+
PiBpdCBiYWNrIHRvIHRoZSBzcGVjPwo+Pgo+PiBUaGVuIHdoeSBhcmVuJ3QgeW91IHB1dHRpbmcg
TGludXggQ29kaW5nIFN0eWxlIGludG8gQyBzcGVjPyBJIGRvIG5vdCBzZWUKPj4gYW55IHJlbGF0
aW9uIGJldHdlZW4gc3BlY2lmaWNhdGlvbiBvZiB0aGUgbGFuZ3VhZ2UgYW5kIHRoZSBjb2Rpbmcg
c3R5bGUKPj4gY2hvc2VuIGZvciBnaXZlbiBwcm9qZWN0Lgo+Pgo+PiBaZXBoeXIgY2FuIGdvIHdp
dGggdXBwZXItY2FzZS4gV2h5IGl0IHNob3VsZCBiZSBkaXNhbGxvd2VkIGJ5IHRoZSBzcGVjPwo+
IAo+IEkgdGhvdWdodCB0aGVyZSB3YXMgb25seSBPbmUgRFQgdG8gYmluZCB0aGVtIGFsbD8KPiBJ
TUhPIGl0IHdvdWxkIGJlIGJldHRlciB0byBhbGlnbiBEVCB1c2FnZSBvZiBaZXBoeXIgYW5kIExp
bnV4IChhbmQKPiBhbnl0aGluZyBlbHNlKS4KCkkgYWN0dWFsbHkgZG9uJ3Qga25vdyB3aGF0IFpl
cGh5ciBkZWNpZGVzLCBidXQgdXNlZCBpdCBhcyBleGFtcGxlIHRoYXQKaXQgbWlnaHQgd2FudCBk
aWZmZXJlbnQgY29kaW5nIHN0eWxlLiBKdXN0IGxpa2UgQyBzdGFuZGFyZCBhbGxvd3MgdG8KaGF2
ZSBhbGwgdmFyaWFibGVzIChpbmNsdWRpbmcgbG9jYWwgb25lcykgdXBwZXItY2FzZSwgd2UgZG8g
bm90IGhhdmUKc3VjaCBjb2Rpbmcgc3R5bGUuIEFuZCBubyBvbmUgcHJvcG9zZXMgdG8gdXBkYXRl
IEMgc3BlYyB0byBtYXRjaCBMaW51eApjb2Rpbmcgc3R5bGUuIDopCgpCZXN0IHJlZ2FyZHMsCkty
enlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
