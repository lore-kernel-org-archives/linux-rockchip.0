Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7275FC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 12:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxKUFCsC46hBqTas5e41vNj3f+oV5cdBxHY1PowhpCI=; b=eCp7JhS/SaXb2y
	4UL1OxBZFhzNjVeIrfjn+v2++fzxxUmypqDR3PFVcs4Gpb8WtbwSP31W52wAOX7mFEFD3+YG4DRYN
	9GUhbjV2cMYL+Z8Hw5WCFcqwvFO1EPZiVIpFBAfV1WJcRiWPMtmo3EgVxlZBUGG2ko2aJvgjodci4
	f7NSsPZzoSprKGVI7nVzpn3amzbfCwfvtltyLGrZkjhH2pBUoHmVAUj1CpDDz8k2s2eyFS9foOCF/
	wiKUQ79/gQIRGaubMQ4uOTIZdZzq/XnEI0Jk3kqMaKFPFt7zjq1C5XRSW8Q+r0l211vPs7ZUTP/QL
	8WaKvzGk1MJNeWBJcKfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7y2W-00Edxe-UW; Wed, 21 Dec 2022 12:17:40 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7y06-00EdKT-P2
	for linux-rockchip@lists.infradead.org; Wed, 21 Dec 2022 12:15:12 +0000
Received: by mail-lf1-x12c.google.com with SMTP id cf42so23243727lfb.1
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Dec 2022 04:15:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ei2wiph6SuRSCb268ohc3SeGTY4BbHhEXYgk9wMq0ZE=;
        b=fOkt1qwQiyPyHPtxLQ/9osQZSDaOkjnadjiEydP8euo7M/ZodaIOHRLtnihPWzqHIx
         GkmmhxQTrEMfUF28TNtEMmpjdU2fFZvGVDUyd6rLD+G2lq3ESGQ+vvIFaLZ/lMclV9PF
         Zh90I4pN1TwrIBt3FNHSDIU/gy7RGWo+EaqXFAX9R82di/I6NzAbuqZ4z+YfgkRUp4jk
         T/vQVnvVcKwTJUXnkEywjlgaahRF8oaQCsqEyQF67EFc2fk1fG95OXd3ABq6lj1Z6h0U
         BeAlN8b5P6Y9jKuVi5016yudZ254mCZ+ycCFGJgF7nN+bcoON76MU+RGxcHwN132cO4X
         YxFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ei2wiph6SuRSCb268ohc3SeGTY4BbHhEXYgk9wMq0ZE=;
        b=gZyOu2svO6400v8x+8+sUJmVJOoxf/E97FnktGGp1pW5kXCeG3mwr/qa/86GRRQVi1
         /nhj2jnwRGc8hcdLerVTtjTWt4oiBhVegslkCKpaK//na1SzV+IP3C5B6NTEOm9akGVc
         vfEkU5L5lO/fUMo/uN6mcN1heFrTlK5ApJVlLjbZTubXDyps9Zg56zzuqLB6dpYMhtyW
         FkE0PSNB0vASqFgRaGQpKueKwMTv7B2KEJ7xMS6smTtlsx8yO2DY4DblG4wy96cB1/8Z
         syerqHwY/I8Re2jUM4SiBUSqXSsEUAtVBl7kmQzWJdli03llSZYdjaA+pZpmgKp6722R
         JPtg==
X-Gm-Message-State: AFqh2kogYAccs1vblQJpUQMPadxAqGWIkguFBPN08LnmK1733yJ6W7xN
	z1jfw5v2pcctFsmdicVsNBu0HA==
X-Google-Smtp-Source: AMrXdXvEIYapVwokYBeZ8T+UxGWSaE8AFmfC4fVrwgrdJTaZsXGiJjcvZGYGHW9hnz/52waurzdcJw==
X-Received: by 2002:a05:6512:2a8e:b0:4b6:e4b3:d82d with SMTP id dt14-20020a0565122a8e00b004b6e4b3d82dmr568449lfb.7.1671624908350;
        Wed, 21 Dec 2022 04:15:08 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u23-20020a196a17000000b004b5774726dcsm1817293lfu.236.2022.12.21.04.15.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 04:15:07 -0800 (PST)
Message-ID: <18f4b0f8-a11c-a706-aafd-063cd6af9e3f@linaro.org>
Date: Wed, 21 Dec 2022 13:15:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
Content-Language: en-US
To: ty <zonyitoo@gmail.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 DHDAXCW <lasstp5011@gmail.com>
References: <Y6KfFEChA67E7oX/@VM-66-53-centos>
 <5a7907e3-f79e-5de9-ed1b-ec24ea52c437@linaro.org>
 <CAMmci2UgwqDyPPJXwGRsMW1Y1Cy2c6LMybk+7v7pGz-LtYzGTw@mail.gmail.com>
 <2673859.iZASKD2KPV@diego>
 <CAMmci2XoF0M81mVt8zko3D3G2oTHq0ia_nZ9CPX9Xz20j92c9Q@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMmci2XoF0M81mVt8zko3D3G2oTHq0ia_nZ9CPX9Xz20j92c9Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_041510_948450_800384B6 
X-CRM114-Status: GOOD (  17.13  )
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

T24gMjEvMTIvMjAyMiAxMzoxMiwgdHkgd3JvdGU6Cj4gSGksIEtvemxvd3NraSBhbmQgU3TDvGJu
ZXIsCj4gCj4gVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgcG9pbnRpbmcgbWUgaW4gdGhlIHJpZ2h0
IGRpcmVjdGlvbi4KPiAKPj4gU28gaG93IGRpZCB5b3Ugc29sdmUgdGhlIGNvbW1lbnQgIkRvZXMg
bm90IGxvb2sgbGlrZSBwcm9wZXJseSBvcmRlcmVkLgo+PiBEb24ndCBhZGQgc3R1ZmYgYXQgdGhl
IGVuZCBvZiBmaWxlcy9saXN0cy4iPyBXaGF0IGRpZCB5b3UgY2hhbmdlIHRvCj4+IHNvbHZlIGl0
Pwo+IAo+PiBmb3IgY29udGV4dCBzb3J0aW5nIG9yZGVyIGluIHRoYXQgZmlsZSBpcyBhbHBoYWJl
dGljYWwgYnkgZGVzY3JpcHRpb24KPiAKPiBJIGZpbmFsbHkgZ290IGl0LiBJdCBzaG91bGQgYmUg
cHV0IHJpZ2h0IGFmdGVyIHRoZSAiRWxnaW4gUlYxMTA4IFIxIi4KPiAKPj4gWW91IGRvIG5vdCB3
cmFwIGF0IDc1LCBidXQgYXQgc29tZSBvdGhlciBwbGFjZS4gSnVzdCBwdXQgaXQgdG8gZWRpdG9y
Cj4+IGFuZCBjaGVjayB3aGVyZSBpcyB3cmFwcGluZyAoY291bnQgY2hhcmFjdGVycykuCj4gCj4g
VGhlIG9yaWdpbmFsIG1lc3NhZ2Ugd2FzOgo+IAo+PiAgZnJvbTogREhEQVhDVyA8bGFzc3RwNTAx
MUBnbWFpbC5jb20+Cj4+Cj4+IEx1YmFuQ2F0IDEgaXMgYSBSb2NrY2hpcCBSSzM1NjYgU0JDIGJh
c2VkCj4+IGlzIGRldmVsb3BlZCBieSBFbWJlZEZpcmUgRWxlY3Ryb25pY3MgQ28uLCBMdGQuCj4+
IE1pbmkgTGludXggQ2FyZCBUeXBlIENoZWFwIENvbXB1dGVyIERldmVsb3BtZW50IEJvYXJkCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IFl1dGVuZyBaaG9uZyA8em9ueWl0b29AZ21haWwuY29tPgo+PiBT
aWduZWQtb2ZmLWJ5OiBESERBWENXIDxsYXNzdHA1MDExQGdtYWlsLmNvbT4KPiAKPiBUaGUgbG9u
Z2VzdCBsaW5lIGlzICJNaW5pIExpbnV4IENhcmQgVHlwZSBDaGVhcCBDb21wdXRlciBEZXZlbG9w
bWVudAo+IEJvYXJkIiwgd2hpY2ggaGFzIDUzIGNoYXJhY3RlcnMuIE9yIC4uLiBJIHNob3VsZCB1
c2UgdGhlIHdob2xlIGxpbmUgYXMKPiBtdWNoIGFzIHBvc3NpYmxlPyBUaGVuIEkgc2VlIHdoeSBJ
IHdhcyBkb2luZyB3cm9uZy4gSXQgd2lsbCBiZSBmaXhlZAo+IGluIHRoZSBQQVRDSCB2NS4KClll
cywKYmVjYXVzZQpzdWNoCmNvbW1pdAptc2cKaXMKYWxzbwp3aXRoaW4KNzUKY2hhcmFjdGVycwpi
dXQKaXQKaXMKbm90CmNvcnJlY3QsCnJpZ2h0PwoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
