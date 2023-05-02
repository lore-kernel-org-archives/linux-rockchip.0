Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CC49C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 22:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vc+vZetZFQFE1Ny5/6sR/r29dnjxT585py5on8vIp2M=; b=j8X61/ybU3iI0c
	orzSw8WoEBulGPID+OgDv+Z9XG51hP/v6EYcW8qFE4JoOVvbrZnzNWyfCkrrdd3u8x+i3svM2zb/9
	T9qDCPoM6G2Ic+dt1L+j089CkBO4UyuzARZwX5Q2WB8z0XuPezbkAkbEEEaILE//B7lhJV+0rHEyv
	EHIvEF0oXRH97MgclXOPynb1JBWZCkrrDhlbw4kLKfzvl6vtjOvQJ1Vv3XNGcYL3pMVIZKfr0BoYt
	hO07IQ5NFFwAPSfuI2vm5vnF+DaWBnWhAkan2i/pifoB2o2e4yPIknMoWLzc059jLAAKoRymXceGJ
	Y85sZ25sikYVAoELEVoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptyrK-002p5X-18;
	Tue, 02 May 2023 22:52:34 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptyrF-002p2O-3C
	for linux-rockchip@lists.infradead.org;
	Tue, 02 May 2023 22:52:32 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f0108a7d20so5140717e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 02 May 2023 15:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683067945; x=1685659945;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T1p8PAJD9DFCngojw0T3kSd1c2uyqBORxfNEmDK3GJ4=;
        b=BUUnQw61aCluaeaOfOjylr17lq4wyiS3svEJzNGaImPvwBFbxjY1AYjKa65LSPa2ym
         yE16k3jpuP3N8wCSlIVKGAALWKur7gs6Ffzu8U/kGAiuA1Xyx/x2hK/JJfWNLEFbZFh+
         gw5Uv9OoWoi9etQy1IAyVFsO7YWXlAUhhQim+LNTWB6y3zMhsYaevaqfbTuzGPLNMccY
         J+vqS7x9RyTltzOUQDkaayM18bum3WFZAKA4wqgFiMMBPsbYfXaNiW1/rSr4VdyK3Fqn
         5j1I0Zeq+WoDj447GF++RwHlJ/hGKjEKpd2ivZT8M021uOxvON7tTCA8VLC+2Vt7SgLR
         uLMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683067945; x=1685659945;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T1p8PAJD9DFCngojw0T3kSd1c2uyqBORxfNEmDK3GJ4=;
        b=Y3ayk+2CnAofPnK9hJW5WyQrPrMZoGRzJDnKyQBseS740dTXP7Fy6aHr7hozHbDyLv
         hu0FKW4jqV211/vpfd+bi01ycOa5JGle33Ny5j5znr7Estuahm+iwfJ/1KlDjwJfcAYM
         HpSfQ9DvUdNyJIPXys0uBvQ5QyUIVv+eQ6Xh3dQOYw0atBCQ2vcRmlvSkVaGl0qAkHeq
         Zq5/UY/Voocyxc6JXilEXHyLVuMxX3iU6Yev+ez4hdNh2WVolUk3oDWi2wfhsvrgGAHL
         6ATg7pJgoZkaPZobZg9NUwP6bgC2JJlkgBSBC+pSId9wwU6M29cmsLC+VXXlI45OjrC3
         JQVg==
X-Gm-Message-State: AC+VfDxj6uPHvQWi66qzMBhFgvMoVGMkwSiaY37KHaIM9sARJVi8iW0c
	yawbawJtZt1zO6HEPx7iQTHNTQ==
X-Google-Smtp-Source: ACHHUZ6Oo6CNJusINV9/L7Xt1q+0o1hyr6U1jjDYvnM0ZlUDdwA1vrQ5KYtmvDXiiUxPR0FKQ1HT5g==
X-Received: by 2002:a19:c204:0:b0:4f1:223c:dc83 with SMTP id l4-20020a19c204000000b004f1223cdc83mr355945lfc.48.1683067945539;
        Tue, 02 May 2023 15:52:25 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id r16-20020ac24d10000000b004ddaea30ba6sm5607156lfi.235.2023.05.02.15.52.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 15:52:24 -0700 (PDT)
Message-ID: <bce93654-fc36-3d12-282d-76fafb8f51ce@linaro.org>
Date: Wed, 3 May 2023 01:52:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Content-Language: en-GB
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Olof Johansson
 <olof@lixom.net>, Christian Marangi <ansuelsmth@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Linux-OMAP <linux-omap@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
 linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@dh-electronics.com, linux-mediatek@lists.infradead.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>,
 linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
 <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_155230_152373_ECA7553A 
X-CRM114-Status: GOOD (  26.74  )
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

T24gMDIvMDUvMjAyMyAyMjo0MCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gVHVlLCBNYXkgMiwg
MjAyMyBhdCAzOjE14oCvQU0gQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4gd3JvdGU6Cj4+
Cj4+IE9uIFR1ZSwgQXByIDI1LCAyMDIzLCBhdCAxNzo1NywgUm9iIEhlcnJpbmcgd3JvdGU6Cj4+
PiBPbiBUdWUsIEFwciAyNSwgMjAyMyBhdCAyOjI44oCvQU0gR2VlcnQgVXl0dGVyaG9ldmVuIDxn
ZWVydEBsaW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4+Pgo+Pj4+IERvZXMgeW91ciBzY3JpcHQgYWxz
byBjYXRlciBmb3IgLmR0cyBmaWxlcyBub3QgbWF0Y2hpbmcgYW55IHBhdHRlcm4sCj4+Pj4gYnV0
IGluY2x1ZGluZyBhIC5kdHNpIGZpbGUgdGhhdCBkb2VzIG1hdGNoIGEgcGF0dGVybj8KPj4+Cj4+
PiBJIGFzc3VtZSBJIGJ1aWx0IGV2ZXJ5dGhpbmcgYWZ0ZXIgbW92aW5nLCBidXQgbWF5YmUgbm90
Li4uCj4+Pgo+Pj4gVGhhdCdzIGFsbCBqdXN0ICJkZXRhaWxzIi4gRmlyc3QsIHdlIG5lZWQgYWdy
ZWVtZW50IG9uIGEpIG1vdmluZwo+Pj4gdGhpbmdzIHRvIHN1YmRpcnMgYW5kIGIpIGRvaW5nIGl0
IDEtYnktMSBvciBhbGwgYXQgb25jZS4gU28gZmFyIHdlJ3ZlCj4+PiBiZWVuIHN0dWNrIG9uIGEp
IGZvciBiZWluZyAndG9vIG11Y2ggY2h1cm4nLgo+Pgo+PiBTb3JyeSBmb3IgbWlzc2luZyBtb3N0
IG9mIHRoZSBkaXNjdXNzaW9uIGxhc3Qgd2Vlay4gVGhlIHNjcmlwdCBzb3VuZHMKPj4gZmluZSB0
byBtZSwgdGhlIG9ubHkgcmVhc29uIEkgZGlkbid0IHdhbnQgdG8gZG8gdGhpcyBpbiB0aGUgcGFz
dCBpcyB0aGF0Cj4+IHdlIGhhZCB0aGUgcGxhbiB0byBtb3ZlIHBsYXRmb3JtcyBvdXQgb2YgdGhl
IGtlcm5lbCB0cmVlIHRvIGFuIGV4dGVybmFsCj4+IHJlcG9zaXRvcnkgYW5kIEkgd2FudGVkIHRv
IGRvIHRoaXMgcGxhdGZvcm0gYXQgYSB0aW1lIGFuZCBhbHNvIG9ubHkgbW92ZQo+PiBlYWNoIG9u
ZSBvbmNlLiBJIGRvbid0IHRoaW5rIHRoYXQgaXMgZ29pbmcgdG8gaGFwcGVuIGFueXRpbWUgc29v
biBub3csCj4+IHNvIGxldCdzIGp1c3QgZG8geW91ciBzY3JpcHQuCj4+Cj4+IENhbiB5b3Ugc2Vu
ZCBtZSB0aGUgc2NyaXB0IGFuZC9vciBhIHB1bGwgcmVxdWVzdCBvZiB0aGUgcmVzdWx0aW5nCj4+
IHRyZWUgYmFzZWQgb24gbXkgc29jL2R0IGJyYW5jaD8gRXZlcnl0aGluZyBpcyBtZXJnZWQgdXBz
dHJlYW0sCj4+IGFuZCBJIHRoaW5rIGdpdC1tZXJnZSB3b3VsZCBoYW5kbGUgdGhlIHJlbWFpbmlu
ZyBtZXJnZXMgd2l0aCBhbnkKPj4gb3RoZXIgY2hhbmdlcyBpbiBtYWlubGluZS4KPiAKPiBJJ3Zl
IGR1c3RlZCBvZmYgbXkgc2NyaXB0IGFuZCBtYWRlIGEgYnJhbmNoWzFdIHdpdGggdGhlIHJlc3Vs
dC4KPiBUaGVyZSdzIGp1c3QgYSBjb3VwbGUgb2YgZml4ZXMgbmVlZGVkIGFmdGVyIHRoZSBzY3Jp
cHQgaXMgcnVuIChzZWUgdGhlCj4gdG9wIGNvbW1pdCkuIFRoZSBjcm9zcyBhcmNoIGluY2x1ZGVz
IGFyZSBhbGwgZml4ZWQgdXAgYnkgdGhlIHNjcmlwdC4KPiBkdGJzX2luc3RhbGwgbWFpbnRhaW5z
IGEgZmxhdCBpbnN0YWxsLiBJIGNvbXBhcmVkIHRoZSBudW1iZXIgb2YgLmR0YnMKPiBiZWZvcmUg
YW5kIGFmdGVyIHRvIGNoZWNrIHRoZSBzY3JpcHQuCj4gCj4gSSB0aGluayB0aGUgb25seSBpc3N1
ZSByZW1haW5pbmcgaXMgZmluYWxpemluZyB0aGUgbWFwcGluZyBvZgo+IHBsYXRmb3JtcyB0byBz
dWJkaXJzLiBXaGF0IEkgaGF2ZSBjdXJyZW50bHkgaXMgYSBtaXh0dXJlIG9mIFNvQwo+IGZhbWls
aWVzIGFuZCB2ZW5kb3JzLiBUaGUgbW9zdCBub3RhYmxlIGFyZSBhbGwgdGhlIEZyZWVzY2FsZS9O
WFAKPiBwbGF0Zm9ybXMsIHB4YSwgc29jZnBnYSwgYW5kIHN0bTMyLiBJdCdzIG5vdCBjb25zaXN0
ZW50IHdpdGggYXJtNjQKPiBlaXRoZXIuIE9uY2UgdGhhdCdzIGZpbmFsaXplZCwgSSBzdGlsbCBu
ZWVkIHRvIGdvIHVwZGF0ZSBNQUlOVEFJTkVSUy4KPiAKPiBIZXJlJ3MgdGhlIGN1cnJlbnQgbWFw
cGluZzoKPiAKPiB2ZW5kb3JfbWFwID0gewo+ICAgICAgJ2FscGhhc2NhbGUnIDogJ2FscGhhc2Nh
bGUnLAo+ICAgICAgJ2FscGluZScgOiAnYWxwaW5lJywKPiAgICAgICdhcnRwZWMnIDogJ2F4aXMn
LAo+ICAgICAgJ2F4bScgOiAnbHNpJywKPiAgICAgICdjeDknIDogJ2NueHQnLAo+ICAgICAgJ2Vj
eCcgOiAnY2FseGVkYScsCj4gICAgICAnaGlnaGJhbmsnIDogJ2NhbHhlZGEnLAo+ICAgICAgJ2Vw
NycgOiAnY2lycnVzJywKPiAgICAgICdteHMnOiAnbXhzJywKPiAgICAgICdpbXgyMyc6ICdteHMn
LAo+ICAgICAgJ2lteDI4JzogJ214cycsCj4gICAgICAnc3VuJyA6ICdhbGx3aW5uZXInLAo+ICAg
ICAgJ2lteCc6ICdpbXgnLAo+ICAgICAgJ2U2JyA6ICdpbXgnLAo+ICAgICAgJ2U3JyA6ICdpbXgn
LAo+ICAgICAgJ21iYTYnIDogJ2lteCcsCj4gICAgICAnbHMnOiAnZnNsJywKPiAgICAgICd2Zic6
ICdmc2wnLAo+ICAgICAgJ3Fjb20nOiAncWNvbScsCj4gICAgICAnYW0zJyA6ICd0aScsCj4gICAg
ICAnYW00JyA6ICd0aScsCj4gICAgICAnYW01JyA6ICd0aScsCj4gICAgICAnZHJhJyA6ICd0aScs
Cj4gICAgICAna2V5c3RvbmUnIDogJ3RpJywKPiAgICAgICdvbWFwJyA6ICd0aScsCj4gICAgICAn
Y29tcHVsYWInIDogJ3RpJywKPiAgICAgICdsb2dpY3BkJyA6ICd0aScsCj4gICAgICAnZWxwaWRh
JyA6ICd0aScsCj4gICAgICAnbW90b3JvbGEnIDogJ3RpJywKPiAgICAgICd0d2wnIDogJ3RpJywK
PiAgICAgICdkYScgOiAndGknLAo+ICAgICAgJ2RtJyA6ICd0aScsCj4gICAgICAnbnNwaXJlJyA6
ICduc3BpcmUnLAo+ICAgICAgJ2FybWFkYScgOiAnbWFydmVsbCcsCj4gICAgICAnZG92ZScgOiAn
bWFydmVsbCcsCj4gICAgICAna2lya3dvb2QnIDogJ21hcnZlbGwnLAo+ICAgICAgJ29yaW9uJyA6
ICdtYXJ2ZWxsJywKPiAgICAgICdtdmVidScgOiAnbWFydmVsbCcsCj4gICAgICAnbW1wJyA6ICdt
YXJ2ZWxsJywKPiAgICAgICdiZXJsaW4nIDogJ2JlcmxpbicsCj4gICAgICAncHhhMicgOiAncHhh
JywKPiAgICAgICdweGEzJyA6ICdweGEnLAo+ICAgICAgJ3B4YScgOiAnbWFydmVsbCcsCgpJJ2Qg
cXVlc3Rpb24gaWYgaXQgbWFrZXMgc2Vuc2UgdG8gc3BsaXQgdGhlIHB4YSBsaW5lLiBZZXMsIGl0
IHdhcyBzb2xkIApieSBJbnRlbCB0byBNYXJ2ZWxsLCBidXQgSUlSQyB0aGUgZGV2aWNlcyBzdGls
bCBoYWQgc29tZSBpbmhlcml0YW5jZS4gClNvLCBpZiB3ZSBoYXZlIHRoZSAncHhhJyBzdWJkaXIs
IEknZCBtb3ZlIE1hcnZlbGwgUFhBcyB0byB0aGF0IGRpciB0b28uCgo+ICAgICAgJ2FybS0nIDog
J2FybScsCj4gICAgICAnaW50ZWcnIDogJ2FybScsCj4gICAgICAnbXBzJyA6ICdhcm0nLAo+ICAg
ICAgJ3ZlJyA6ICdhcm0nLAo+ICAgICAgJ2FzcGVlZCcgOiAnYXNwZWVkJywKPiAgICAgICdhc3Qy
JyA6ICdhc3BlZWQnLAo+ICAgICAgJ2ZhY2Vib29rJyA6ICdhc3BlZWQnLAo+ICAgICAgJ2libScg
OiAnYXNwZWVkJywKPiAgICAgICdvcGVuYm1jJyA6ICdhc3BlZWQnLAo+ICAgICAgJ2VuNycgOiAn
YWlyb2hhJywKPiAgICAgICdhdDkxJyA6ICdtaWNyb2NoaXAnLAo+ICAgICAgJ3NhbWEnIDogJ21p
Y3JvY2hpcCcsCj4gICAgICAnc2FtOScgOiAnbWljcm9jaGlwJywKPiAgICAgICd1c2JfJyA6ICdt
aWNyb2NoaXAnLAo+ICAgICAgJ3RueV8nIDogJ21pY3JvY2hpcCcsCj4gICAgICAnbXBhMTYwMCcg
OiAnbWljcm9jaGlwJywKPiAgICAgICdhbmltZW9faXAnIDogJ21pY3JvY2hpcCcsCj4gICAgICAn
YWtzLWNkdScgOiAnbWljcm9jaGlwJywKPiAgICAgICdldGhlcm51dDUnIDogJ21pY3JvY2hpcCcs
Cj4gICAgICAnZXZrLXBybzMnIDogJ21pY3JvY2hpcCcsCj4gICAgICAncG05ZzQ1JyA6ICdtaWNy
b2NoaXAnLAo+ICAgICAgJ2dlODYnIDogJ21pY3JvY2hpcCcsCj4gICAgICAnYmNtJyA6ICdicmNt
JywKPiAgICAgICdleHlub3MnIDogJ3NhbXN1bmcnLAo+ICAgICAgJ3MzYycgOiAnc2Ftc3VuZycs
Cj4gICAgICAnczVwJyA6ICdzYW1zdW5nJywKPiAgICAgICdnZW1pbmknIDogJ2dlbWluaScsCj4g
ICAgICAnaGkzJyA6ICdoaXNpbGljb24nLAo+ICAgICAgJ2hpcCcgOiAnaGlzaWxpY29uJywKPiAg
ICAgICdoaXNpJyA6ICdoaXNpbGljb24nLAo+ICAgICAgJ3NkNScgOiAnaGlzaWxpY29uJywKPiAg
ICAgICdocGUnIDogJ2hwZScsCj4gICAgICAnaW50ZWwnOiAnaW50ZWwnLAo+ICAgICAgJ210JyA6
ICdtZWRpYXRlaycsCj4gICAgICAnbWVzb24nIDogJ21lc29uJywKPiAgICAgICdtb3hhJyA6ICdt
b3hhJywKPiAgICAgICdtc3RhcicgOiAnbXN0YXInLAo+ICAgICAgJ251dm8nIDogJ251dm90b24n
LAo+ICAgICAgJ2xwYycgOiAnbHBjJywKPiAgICAgICdsYW45NicgOiAnbWljcm9jaGlwJywKPiAg
ICAgICdvd2wnIDogJ2FjdGlvbnMnLAo+ICAgICAgJ294OCcgOiAnb3hzZW1pJywKPiAgICAgICdy
ZGEnIDogJ3JkYScsCj4gICAgICAncnRkJyA6ICdyZWFsdGVrJywKPiAgICAgICdyNycgOiAncmVu
ZXNhcycsCj4gICAgICAncjgnIDogJ3JlbmVzYXMnLAo+ICAgICAgJ3I5JyA6ICdyZW5lc2FzJywK
PiAgICAgICdlbWV2MicgOiAncmVuZXNhcycsCj4gICAgICAnc2g3M2EnIDogJ3JlbmVzYXMnLAo+
ICAgICAgJ2dyLScgOiAncmVuZXNhcycsCj4gICAgICAnaXdnJyA6ICdyZW5lc2FzJywKPiAgICAg
ICdyaycgOiAncm9ja2NoaXAnLAo+ICAgICAgJ3J2MTEnIDogJ3JvY2tjaGlwJywKPiAgICAgICdy
b2NrY2hpcCcgOiAncm9ja2NoaXAnLAo+ICAgICAgJ3NvY2ZwZ2EnIDogJ3NvY2ZwZ2EnLAo+ICAg
ICAgJ3N0bScgOiAnc3RtMzInLAo+ICAgICAgJ3N0aScgOiAnc3RpJywKPiAgICAgICdzdC1waW4n
IDogJ3N0aScsCj4gICAgICAnc3RlJyA6ICdzdC1lcmljc3NvbicsCj4gICAgICAnc3BlYXInIDog
J3NwZWFyJywKPiAgICAgICdheHAnIDogJ2FsbHdpbm5lcicsCj4gICAgICAndGVncmEnIDogJ252
aWRpYScsCj4gICAgICAnbWlsYmVhdXQnIDogJ3NvY2lvbmV4dCcsCj4gICAgICAndW5pcGgnIDog
J3NvY2lvbmV4dCcsCj4gICAgICAndnQ4NTAwJyA6ICd2dDg1MDAnLAo+ICAgICAgJ3dtOCcgOiAn
dnQ4NTAwJywKPiAgICAgICd4ZW4nIDogJ3hlbicsCj4gICAgICAnengnIDogJ3p0ZScsCj4gICAg
ICAnenlucScgOiAneGlsaW54JywKPiB9Cj4gCj4gUm9iCj4gCj4gWzFdIGdpdDovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9yb2JoL2xpbnV4LmdpdCBhcm0tZHRzLW1v
dmUtdjIKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
