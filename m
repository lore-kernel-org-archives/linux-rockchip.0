Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D46CC32774
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6d7uEkd8mAwnIyzbr0XLuVSJbzfzSLHJsHbVmgYylSI=; b=HiZyoWdu8uVnfs
	vZGdDLMls+jKLFGothU1Ck6jsBjkIkMnT9lEExtYxVwkDTLeMpQKJ+mtZU/R3Mj6XQ7OLjoBHGBBo
	t7CLIwVsv+W/qmjUIVG5vapvYEPALvPJQZ0yV1KinOBZmbVV8xPVBrKuHR89JjiNHJ4LllKLi23yY
	1OkrsyIf8M0J4TBYP8a0WaKqQuGoSB1Jh/zjEO7hjA+2j6zU9NbXMyh2QueUhYYXos+DB+3SPKJM+
	fgQv3+dWgBKTryVslunR+bNfxtqueGuHA5KaXD+bNc2r8fwe0hIsrc0cqvTyDhrtCYHAwHccxu6ON
	FxtxlWSRaBLFfJhdIlsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT37-005t1o-FG; Tue, 23 Aug 2022 12:30:29 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT1e-005s7f-BS
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:29:00 +0000
Received: by mail-lf1-x130.google.com with SMTP id z6so19442886lfu.9
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 05:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Dc5g/C8kXCBcPltpYg2hLFaxQYkbvJEJ0uKDAhN+pVI=;
        b=fznsZedjG+nuHrakP2ez08sz7DmIxeKkkp4sAjUA1ohXWNl4xwnCp1ZkYquCgHlgoP
         9HVHfgpOREJ0HpC5cjF8tfgT8Zps5JPBIPJ33O3lm88HBIIcGcSHCzDCeGXWeMHeHoda
         luZ1CX5dC4nFAeAqs/YS1vAzjheudvbFuTOw5rjNEbzfWZ6DIrVKWo9jmO9g8TE/I7P4
         onfoi8GicVeI2n+SBYllv/7Dx8XTzmb4+km5Q2m+MBG2I3h0ZokZollxBAUNO9U4cfFP
         6yHbIXlqUfDxLWvHMxNUKuORCAHEkgp7Y79Fzelhn5JBsIWgrQ0rrL1BsMaqVdi12PtC
         IAbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Dc5g/C8kXCBcPltpYg2hLFaxQYkbvJEJ0uKDAhN+pVI=;
        b=x/b78X8Io15xLPVe2M7rl/nIfEMNIDNJuF679VlTvgoDRUz/Ixxx+7pvHgyjLFA+20
         E1H1DuLMhjF29+6oPXjKKfKHStdudjCEWdyUEnvJv3bWzsuIaQIm+I29YkKAdqiSPFEQ
         reLGJIQ8uEvE4rOCsc+Q8/DE2Hck2ruALldX9Gtgg1C6/+4WZV4Epm+EYSWD9pvQ55Kp
         p20/LHci3sBaEyday10BJYDc0SpbiY5ZlD3iR7P7ALdFGpIPDNbytE8rzOGV97m5OywN
         fP5pXeV+Ciu+U4BPLX4yiBDwRruXYNugcOTkZnCWUx6U97lzzMhG+qwQtvNtNTUAc5fT
         766A==
X-Gm-Message-State: ACgBeo3VnUqYF+5yh7MnaDRcA87RwUtFWed/yHC8/liDUwWN9Ndp9SuL
	COJ0pexsvWGwxloWKOn2j3RiAw==
X-Google-Smtp-Source: AA6agR6ACQj2GwEEwBIH8ZHWclsvTK1Y4vzmy3hRXbmJByv+iTsqx13N3vkDwV5RzJzry5tYIkfuWA==
X-Received: by 2002:a05:6512:3e11:b0:492:c5ef:442b with SMTP id i17-20020a0565123e1100b00492c5ef442bmr8116501lfv.434.1661257733766;
        Tue, 23 Aug 2022 05:28:53 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id 28-20020ac25f5c000000b00492db7f47f2sm1436971lfz.275.2022.08.23.05.28.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 05:28:53 -0700 (PDT)
Message-ID: <21c798fc-bfc5-ed67-bcea-a213890e5ef1@linaro.org>
Date: Tue, 23 Aug 2022 15:28:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Chris Morgan <macroalpha82@gmail.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: devicetree <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Peter Geis <pgwipeout@gmail.com>, Chris Healy <cphealy@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
 <45694752.fMDQidcC6G@diego>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <45694752.fMDQidcC6G@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_052858_428219_292F11CB 
X-CRM114-Status: GOOD (  14.49  )
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

T24gMjMvMDgvMjAyMiAxNToxNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gU2Ftc3RhZywg
MjAuIEF1Z3VzdCAyMDIyLCAxMDo0MDozNCBDRVNUIHNjaHJpZWIgTWF5YSBNYXR1c3pjenlrOgo+
PiBzb2IuLCAyMCBzaWUgMjAyMiBvIDAwOjI2IENocmlzIE1vcmdhbiA8bWFjcm9hbHBoYTgyQGdt
YWlsLmNvbT4gbmFwaXNhxYIoYSk6Cj4+Pgo+Pj4gRnJvbTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21v
cmdhbkBob3RtYWlsLmNvbT4KPiAKPiBbLi4uXQo+IAo+Pj4gKyZncGlvX2tleXNfY29udHJvbCB7
Cj4+PiArICAgICAgIGJ1dHRvbi01IHsKPj4+ICsgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3Bp
bzMgUktfUEE1IEdQSU9fQUNUSVZFX0xPVz47Cj4+PiArICAgICAgICAgICAgICAgbGFiZWwgPSAi
RFBBRC1MRUZUIjsKPj4+ICsgICAgICAgICAgICAgICBsaW51eCxjb2RlID0gPEJUTl9EUEFEX1JJ
R0hUPjsKPj4+ICsgICAgICAgfTsKPj4+ICsKPj4+ICsgICAgICAgYnV0dG9uLTYgewo+Pj4gKyAg
ICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMyBSS19QQTYgR1BJT19BQ1RJVkVfTE9XPjsKPj4+
ICsgICAgICAgICAgICAgICBsYWJlbCA9ICJEUEFELVJJR0hUIjsKPj4+ICsgICAgICAgICAgICAg
ICBsaW51eCxjb2RlID0gPEJUTl9EUEFEX0xFRlQ+Owo+Pj4gKyAgICAgICB9Owo+Pj4gKwo+Pj4g
KyAgICAgICBidXR0b24tOSB7Cj4+PiArICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8zIFJL
X1BCMyBHUElPX0FDVElWRV9MT1c+Owo+Pj4gKyAgICAgICAgICAgICAgIGxhYmVsID0gIlRSIjsK
Pj4+ICsgICAgICAgICAgICAgICBsaW51eCxjb2RlID0gPEJUTl9UUjI+Owo+Pj4gKyAgICAgICB9
Owo+Pj4gKwo+Pj4gKyAgICAgICBidXR0b24tMTAgewo+Pj4gKyAgICAgICAgICAgICAgIGdwaW9z
ID0gPCZncGlvMyBSS19QQjQgR1BJT19BQ1RJVkVfTE9XPjsKPj4+ICsgICAgICAgICAgICAgICBs
YWJlbCA9ICJUUjIiOwo+Pj4gKyAgICAgICAgICAgICAgIGxpbnV4LGNvZGUgPSA8QlROX1RSPjsK
Pj4+ICsgICAgICAgfTsKPj4+ICsKPj4+ICsgICAgICAgYnV0dG9uLTE0IHsKPj4+ICsgICAgICAg
ICAgICAgICBncGlvcyA9IDwmZ3BpbzMgUktfUEMxIEdQSU9fQUNUSVZFX0xPVz47Cj4+PiArICAg
ICAgICAgICAgICAgbGFiZWwgPSAiV0VTVCI7Cj4+PiArICAgICAgICAgICAgICAgbGludXgsY29k
ZSA9IDxCVE5fV0VTVD47Cj4+PiArICAgICAgIH07Cj4+PiArCj4+PiArICAgICAgIGJ1dHRvbi0x
NSB7Cj4+IEkgZG9uJ3QgdGhpbmsganVzdCBoYXZpbmcgdGhlIGJ1dHRvbnMgbnVtYmVyZWQgc2Vx
dWVudGlhbGx5Cj4+IGlzIHRoZSBiZXN0IGNvdXJzZSBvZiBhY3Rpb24sIGJ1dCB0aGlzIHByZXNl
cnZlcyB0aGUgR1BJTwo+PiBvcmRlcmluZyB3aGlsZSBvdGhlciBvcHRpb25zIGRvbid0Li4uCj4+
IEknbSB0aGlua2luZyBhYm91dCBlaXRoZXIgaGF2aW5nIHRoZW0gbmFtZWQgYWZ0ZXIKPj4gdGhl
aXIgZnVuY3Rpb24sIG9yIG5hbWVkIGFmdGVyIHdoYXQgdGhleSdyZSBsYWJlbGVkCj4+IG9uIHRo
ZSBQQ0Igb2YgdGhlIGRldmljZS4KPj4gQ2FuIGFueSBvZiBEVCBtYWludGFpbmVycyBnaXZlIHRo
ZWlyIGlucHV0IG9uIHRoaXM/Cj4gCj4gUGVyc29uYWxseSwgSSdkIHByZWZlciBnb2luZyB3aXRo
IHdoYXQgaXMgb24gdGhlIFBDQgo+IG9yIGRlZmluZWQgaW4gdGhlIHNjaGVtYXRpY3MuCj4gCj4g
VGhpcyBtYWtlcyBpdCB3YXkgZWFzaWVyIGZpbmRpbmcgZHQtZWxlbWVudHMgZWl0aGVyIGluCj4g
c2NoZW1hdGljcyBvciBvbiB0aGUgYm9hcmQgaXRzZWxmLgo+IAo+IFRoaXMgaXMgdHJ1ZSBmb3Ig
YWxsIG5hbWVzIDstKQo+IAo+IE9uIHRoZSBPZHJvaWQtR28gZm9yIGV4YW1wbGUgYnV0dG9ucyBh
cmUgcmVhbGx5IG5hbWVkCj4gc3cxLCBzdzIsIC4uLiBzbyB0aGUgZHQtbmFtZSBiZWNhbWUgYnV0
dG9uLXN3MSBldGMuCj4gCgpNYXRjaGluZyB3aGF0J3Mgb24gdGhlIHNjaGVtYXRpY3MvYm9hcmQg
bWFrZXMgc2Vuc2UuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
