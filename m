Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B81CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 11:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hesZvUopEuzjA1y9dUYxZ19dTb+niVMas52kugfGKwQ=; b=nd3E0znrBJ3qCZ
	bRUiWi+uN3zcD1aK4/f5+ouLund8rc5OwD0WEb9L1JpzEC+80nZI4ShP+506SYioVakOmFoDAeQD+
	Guj/mw8jrIRQpbhaiz0nWFo0aDc3cv4yZGZDQkxNCjY8dp9fecqkMPGi16DMvo+25IhM1+XrFeJZ/
	in3zLzPWHRF808sdrhmCYKjRQ7twv6zQ5xMgzuZ87NsGR8FX/HBLMdblrgisBq2EZ+SDlKvb5XrIk
	0saGWAcnx38auUcRba36KAajTYuoc9z9s1aOSZooI9otPLSYDn9u+YhR8he4HScNSe8zCxPaQEM+f
	fVznkAjj0umKrGES5/DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nac8Z-008d5U-Lh; Sat, 02 Apr 2022 11:41:47 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nac8W-008d3D-7C
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 11:41:45 +0000
Received: by mail-wr1-x435.google.com with SMTP id d29so1571854wra.10
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 04:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=AvR1umnn7W1R+x4WzthY5v4HXESOD96tHh9j731yuyI=;
 b=Gb6gnH4BnPj01KZH7A4kXWQ8hmeq0ZH581OTlA9kouF5HlC/q7ghy/f13YADvbS+Jo
 hYeV0Lhen1057rY1ps9eXglxGWRJ+9oRLY9DfDek3HIVk4IYUe2lnyyslvpf2g1JYS7t
 I4dI75ExLKdFIlfv/0VN0wWhqI5a6PD4KNZzo2syvpF2dSYiOlo/0DCazPjtPcQdhRpT
 efWFjuBh+6qwnv9V7aXGZTJ+KvtHs3Oh6OMeLBrDsxPMfrOHqeuZr1GZda1mEBn8rk1D
 v97fMdC6ZSOKulNYUi/cNy4CqgI9CqL6iEE+owkBtFoodtinaSJk5F/iI8hsr4SePWhE
 jLHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=AvR1umnn7W1R+x4WzthY5v4HXESOD96tHh9j731yuyI=;
 b=EbO8+bY9W3YCrFcLtvwSrQ/DtqYSWMXNW+7ZkvP+/WOhzEhA4NXvYQdzHTcLloL2gF
 1uy9NYK9S+p6yP6unsJtxtwhliUbIBT4VgoAmfqc+BIlDRCEcjX6loJRhaFP3c9nRfeT
 jhhy/aYPNGSwsKhkaDMRmUnxKAclxJ3i7MRiJhbaR494iZOe8M7i6+vwRKAO42tcaz4m
 QN1u2xFEgLb4/H2qOo+NX0MlqNc0JS7yx9eJK7yDv0PgHcPdyZVitnPRSpAW0m7UNn9O
 oESV74P9pkGBhIsbhxy3O4KAB/EyiyEQQvFsAn0Pssdk70e6PPw9VmDg/RK0jdF1602D
 tiaA==
X-Gm-Message-State: AOAM533nXf/3Mz5vnZZZsq0VSUodxc2ituNwuimYFx2OFtQfwGUrnQcu
 If6bUgfjg4o/LTS4zuE0DHjRJQ==
X-Google-Smtp-Source: ABdhPJyW+SkwDs4JCR2UYWWgiflNxMZWrZjRmhyqzN/fVy0Es0dbeHwx6imdXZmBlennZaTR9okHog==
X-Received: by 2002:adf:f881:0:b0:203:f9b1:a6ab with SMTP id
 u1-20020adff881000000b00203f9b1a6abmr10755817wrp.410.1648899693983; 
 Sat, 02 Apr 2022 04:41:33 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 m63-20020a1c2642000000b0038e5fa06b50sm1932105wmm.31.2022.04.02.04.41.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 04:41:32 -0700 (PDT)
Message-ID: <c212c994-fc5d-6ad0-3cd6-88dc2c719e38@linaro.org>
Date: Sat, 2 Apr 2022 13:41:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: convert
 rockchip,rk3188-cru.txt to YAML
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, zhangqing@rock-chips.com,
 Stephen Boyd <sboyd@kernel.org>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329111323.3569-1-jbx6244@gmail.com>
 <20220331225134.7A0A9C340ED@smtp.kernel.org> <3107512.vfdyTQepKt@diego>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3107512.vfdyTQepKt@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_044144_285486_9A0FB84A 
X-CRM114-Status: GOOD (  16.41  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDEvMDQvMjAyMiAwOTo1NSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgU3RlcGhlbiwK
PiAKPiBBbSBGcmVpdGFnLCAxLiBBcHJpbCAyMDIyLCAwMDo1MTozMiBDRVNUIHNjaHJpZWIgU3Rl
cGhlbiBCb3lkOgo+PiBRdW90aW5nIEpvaGFuIEpvbmtlciAoMjAyMi0wMy0yOSAwNDoxMzoyMikK
Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2sv
cm9ja2NoaXAscmszMTg4LWNydS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzE4OC1jcnUueWFtbAo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPj4+IGluZGV4IDAwMDAwMDAwMC4uZGRkN2U0NmFmCj4+PiAtLS0gL2Rldi9udWxsCj4+PiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmsz
MTg4LWNydS55YW1sCj4+PiBAQCAtMCwwICsxLDc4IEBACj4+PiArIyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMAo+Pj4gKyVZQU1MIDEuMgo+Pj4gKy0tLQo+Pj4gKyRpZDogaHR0cDov
L2RldmljZXRyZWUub3JnL3NjaGVtYXMvY2xvY2svcm9ja2NoaXAscmszMTg4LWNydS55YW1sIwo+
Pj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1s
Iwo+Pj4gKwo+Pj4gK3RpdGxlOiBSb2NrY2hpcCBSSzMxODgvUkszMDY2IENsb2NrIGFuZCBSZXNl
dCBVbml0IChDUlUpCj4+PiArCj4+PiArbWFpbnRhaW5lcnM6Cj4+PiArICAtIEVsYWluZSBaaGFu
ZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+Pj4gKyAgLSBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgo+Pj4gKwo+Pj4gK2Rlc2NyaXB0aW9uOiB8Cj4+PiArICBUaGUgUkszMTg4
L1JLMzA2NiBjbG9jayBjb250cm9sbGVyIGdlbmVyYXRlcyBhbmQgc3VwcGxpZXMgY2xvY2tzIHRv
IHZhcmlvdXMKPj4+ICsgIGNvbnRyb2xsZXJzIHdpdGhpbiB0aGUgU29DIGFuZCBhbHNvIGltcGxl
bWVudHMgYSByZXNldCBjb250cm9sbGVyIGZvciBTb0MKPj4+ICsgIHBlcmlwaGVyYWxzLgo+Pj4g
KyAgRWFjaCBjbG9jayBpcyBhc3NpZ25lZCBhbiBpZGVudGlmaWVyIGFuZCBjbGllbnQgbm9kZXMg
Y2FuIHVzZSB0aGlzIGlkZW50aWZpZXIKPj4+ICsgIHRvIHNwZWNpZnkgdGhlIGNsb2NrIHdoaWNo
IHRoZXkgY29uc3VtZS4gQWxsIGF2YWlsYWJsZSBjbG9ja3MgYXJlIGRlZmluZWQgYXMKPj4+ICsg
IHByZXByb2Nlc3NvciBtYWNyb3MgaW4gdGhlIGR0LWJpbmRpbmdzL2Nsb2NrL3JrMzE4OC1jcnUu
aCBhbmQKPj4+ICsgIGR0LWJpbmRpbmdzL2Nsb2NrL3JrMzA2Ni1jcnUuaCBoZWFkZXJzIGFuZCBj
YW4gYmUgdXNlZCBpbiBkZXZpY2UgdHJlZSBzb3VyY2VzLgo+Pj4gKyAgU2ltaWxhciBtYWNyb3Mg
ZXhpc3QgZm9yIHRoZSByZXNldCBzb3VyY2VzIGluIHRoZXNlIGZpbGVzLgo+Pj4gKyAgVGhlcmUg
YXJlIHNldmVyYWwgY2xvY2tzIHRoYXQgYXJlIGdlbmVyYXRlZCBvdXRzaWRlIHRoZSBTb0MuIEl0
IGlzIGV4cGVjdGVkCj4+PiArICB0aGF0IHRoZXkgYXJlIGRlZmluZWQgdXNpbmcgc3RhbmRhcmQg
Y2xvY2sgYmluZGluZ3Mgd2l0aCBmb2xsb3dpbmcKPj4+ICsgIGNsb2NrLW91dHB1dC1uYW1lczoK
Pj4+ICsgICAgLSAieGluMjRtIiAgICAtIGNyeXN0YWwgaW5wdXQgICAgICAgICAgICAgICAgIC0g
cmVxdWlyZWQKPj4+ICsgICAgLSAieGluMzJrIiAgICAtIFJUQyBjbG9jayAgICAgICAgICAgICAg
ICAgICAgIC0gb3B0aW9uYWwKPj4+ICsgICAgLSAieGluMjdtIiAgICAtIDI3bWh6IGNyeXN0YWwg
aW5wdXQgb24gUkszMDY2IC0gb3B0aW9uYWwKPj4+ICsgICAgLSAiZXh0X2hzYWRjIiAtIGV4dGVy
bmFsIEhTQURDIGNsb2NrICAgICAgICAgIC0gb3B0aW9uYWwKPj4+ICsgICAgLSAiZXh0X2NpZjAi
ICAtIGV4dGVybmFsIGNhbWVyYSBjbG9jayAgICAgICAgIC0gb3B0aW9uYWwKPj4+ICsgICAgLSAi
ZXh0X3JtaWkiICAtIGV4dGVybmFsIFJNSUkgY2xvY2sgICAgICAgICAgIC0gb3B0aW9uYWwKPj4+
ICsgICAgLSAiZXh0X2p0YWciICAtIGV4dGVybmFsIEpUQUcgY2xvY2sgICAgICAgICAgIC0gb3B0
aW9uYWwKPj4KPj4gSSdkIGV4cGVjdCBhbGwgdGhlc2UgY2xrcyBoZXJlIHRvIGJlIGlucHV0cyB0
byB0aGlzIG5vZGUuCj4gCj4gVGhlIG9wdGlvbmFsIGNsb2NrcyBhcmUgYWxsIHBhcnQgb2YgYSBj
aXJjdWxhciBkZXBlbmRlbmN5Lgo+IAo+IFNvIGZvciBleGFtcGxlIHhpbjMyayBub3JtYWxseSBp
cyBnZW5lcmF0ZWQgYnkgdGhlIHBtaWMgYW5kIGZlZAo+IGJhY2sgaW50byB0aGUgc3lzdGVtLCBz
byB0byBnZXQgeGluMzJrLCB3ZSBuZWVkIHRoZSBwbWljIHRvIHByb2JlLAo+IHdoaWNoIG5lZWRz
IGkyYywgd2hpY2ggaW4gdHVybiBhbHJlYWR5IG5lZWRzIHRoZSBjbG9jayBjb250cm9sbGVyLgoK
QXJlIHlvdSBzdXJlIHRoYXQgeGluMzJrIChSVEMpIGNsb2NrIHNob3VsZCBiZSBpbnB1dCB0byB0
aGUgY2xvY2sKY29udHJvbGxlcj8gSSB3b3VsZCBleHBlY3QgaXQgaXMgdGhlIGlucHV0IHRvIHRo
ZSBTb0MgUlRDIGJsb2NrLCBzbwp0aGVyZSBpcyBubyBjaXJjdWxhciBkZXBlbmRlbmN5LgoKCkJl
c3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
