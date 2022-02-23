Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E7FCC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Feb 2022 13:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4R6zouI7iBlmbHzDUNQq/zx5LZqkLTZs9UntDMFFjI0=; b=yNEuIfV7hHM0cd
	gXSV5u0Rf83jyMilgMCDClcBCRVNs+WWRaxd1iFvrng6hmLc7JW60+kMTihmKqoxMENqXtvNx7v4X
	yq2JDbxRjkMkxzOnqxZpWxxP+6YzeksBUVdDCVsHOlrp+medd57tG6e7+5h0mn+04P5meliZoiVfJ
	JK1OKYAvw6+36Bvk1VfIepUfKtu1gNnoJKehCvjsst2KnjKPuyrSrF5dxe/+grps+ZCoRrgcY1oEE
	a94yyXp1Z3gsDpfPG6+uBmi3Ua9U/Ocx0UX/UpbdB6MFwTXY+AZt9FK47LQD3JAu5kGBt0OYEXjtI
	tNzihlvUD+Ehfnqk7qkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMrYU-00ERH9-9y; Wed, 23 Feb 2022 13:19:42 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMrTo-00EPPg-3L
 for linux-rockchip@lists.infradead.org; Wed, 23 Feb 2022 13:14:54 +0000
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A55873F1DD
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Feb 2022 13:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1645622090;
 bh=luA2pGmBUiuoHCIdDEpQqIZrDzzhrlzhl8j+UonA2Ac=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=SE/wFLOUyXOiI4eiUTQNM7fAxLnoIYhR0HPH+u6H6P/Pa1pOEgkj3WiFpX3JyShGL
 6iU6BbSuC834ylUIxvstAaOls101s58kWPTD41GyeW1Yzhd16Ps5IS8AdziwLskueY
 wBmULKIn6Y6f1KrdohkDc91NRfQY3VfwH3eEkN4VL0vwzCjLFngIknP8uaFfKNgqcM
 2p7MoMj4AxwPvkOn5WABQIJpRH2yuF0x9g6C9U69e4TccYdlCc7XxJGYVzDXxahJ9H
 QXop5hjEQMjag48iRyadReWYoEDR+jAJvLyHv5dnpqpE5QCCO+dMzv82SBJ3XuhNuC
 n4uIC7I+LNNNw==
Received: by mail-ej1-f72.google.com with SMTP id
 qa30-20020a170907869e00b006cee5e080easo7040901ejc.3
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Feb 2022 05:14:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=luA2pGmBUiuoHCIdDEpQqIZrDzzhrlzhl8j+UonA2Ac=;
 b=fneZgJXfizwnHqV+iDS6KaTHz8N+OwzE8lhBzbPtMvERi1a1IlxZkTcEr4D/Qq2dRz
 jItUXI0YAp4TCpnsuUkfpJIwVFYzPDOdgh8K26xEo/7iayUVe/adTVQJHbfO3QwQcUIK
 Fj9LtOHpFTt4nVVV6QwKEGxtln22OSF0//yhkcwu18sdOqGdx8/pozk/lTuLwVtc+6JT
 JUgQLCw5trEKxWqY1mSnmPc8gXBzxDO3rLazmVoQaZ61/acMlra+KoSfJEjKNw2gqYMl
 5tROG3/rkA/ZWZVI8gnH3cDEERkCeJ0eiQTCMVSq/fL/iQrF8W4CJpMvzlu6Nlg6kOFB
 ZBFw==
X-Gm-Message-State: AOAM530o6OJ0iU/sBn5FCshGNXRqOLnfX2xe2ieRgGdfNBGY72sOpUJD
 rUOQoBBMu+d3RlFCjrll3Br4DGs0bAxrxU30gZulQy24zpnENA8HxqHZqHmBCMBjjDIcDkZmFF6
 1QJNJ6u4C0htm9wi4H+ZvsSQ4fjNg53scdLeTGNRtVvHopqB1nQ==
X-Received: by 2002:a17:906:af79:b0:6ce:61d3:7e9b with SMTP id
 os25-20020a170906af7900b006ce61d37e9bmr23249846ejb.191.1645622089865; 
 Wed, 23 Feb 2022 05:14:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzPXOdScuO9l5oh+CHacL1L0JeFIZjGDBcMotv+/pc0BsZ6IXhLfsZQvcbVqSbjklwZ5f51Fg==
X-Received: by 2002:a17:906:af79:b0:6ce:61d3:7e9b with SMTP id
 os25-20020a170906af7900b006ce61d37e9bmr23249825ejb.191.1645622089612; 
 Wed, 23 Feb 2022 05:14:49 -0800 (PST)
Received: from [192.168.0.125] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108])
 by smtp.gmail.com with ESMTPSA id z13sm603406edb.54.2022.02.23.05.14.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Feb 2022 05:14:49 -0800 (PST)
Message-ID: <99c673e7-09ea-ce0f-f8b7-b03ca35e8740@canonical.com>
Date: Wed, 23 Feb 2022 14:14:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] dt-bindings: crypto: convert rockchip-crypto to yaml
Content-Language: en-US
To: LABBE Corentin <clabbe@baylibre.com>, Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, herbert@gondor.apana.org.au, davem@davemloft.net
References: <20220211115925.3382735-1-clabbe@baylibre.com>
 <f078ac6f-5605-7b86-5734-cbbf7dc52c71@gmail.com> <YhYxLmBYa+DMCnuz@Red>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <YhYxLmBYa+DMCnuz@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_051452_393360_EF650924 
X-CRM114-Status: GOOD (  19.63  )
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

T24gMjMvMDIvMjAyMiAxNDowNSwgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgVHVlLCBGZWIg
MTUsIDIwMjIgYXQgMDM6MDc6NTZQTSArMDEwMCwgSm9oYW4gSm9ua2VyIGEgw6ljcml0IDoKPj4g
SGkgSGVpa28sCj4+Cj4+IE9uIDIvMTEvMjIgMTI6NTksIENvcmVudGluIExhYmJlIHdyb3RlOgo+
Pj4gQ29udmVydCByb2NrY2hpcC1jcnlwdG8gdG8geWFtbAo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IENvcmVudGluIExhYmJlIDxjbGFiYmVAYmF5bGlicmUuY29tPgo+Pj4gLS0tCj4+PiBDaGFuZ2Vz
IHNpbmNlIHYxOgo+Pj4gLSBmaXhlZCBleGFtcGxlCj4+PiAtIHJlbmFtZWQgdG8gYSBuZXcgbmFt
ZQo+Pj4gLSBmaXhlZCBzb21lIG1heEl0ZW1zCj4+Pgo+Pj4gQ2hhbmdlIHNpbmNlIHYyOgo+Pj4g
LSBGaXhlZCBtYWludGFpbmVycyBzZWN0aW9uCj4+Pgo+Pj4gIC4uLi9jcnlwdG8vcm9ja2NoaXAs
cmszMjg4LWNyeXB0by55YW1sICAgICAgICB8IDY2ICsrKysrKysrKysrKysrKysrKysKPj4+ICAu
Li4vYmluZGluZ3MvY3J5cHRvL3JvY2tjaGlwLWNyeXB0by50eHQgICAgICAgfCAyOCAtLS0tLS0t
LQo+Pj4gIDIgZmlsZXMgY2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0p
Cj4+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9jcnlwdG8vcm9ja2NoaXAscmszMjg4LWNyeXB0by55YW1sCj4+Cj4+IHJvY2tjaGlwLGNyeXB0
by55YW1sCj4gCj4gCj4gSGVsbG8KPiAKPiBEVCBtYWludGFpbmVyIGFza2VkIGZvciByb2NrY2hp
cCxyazMyODgtY3J5cHRvLCBzbyBJIHdpbGwga2VlcCBpdC4KCkkgZG9uJ3QgaW5zaXN0IG9uIGtl
ZXBpbmcgcmszMjg4MGNyeXB0byBuYW1lLiBJdCBkZXBlbmRzIHdoZXRoZXIgdGhlCmJpbmRpbmdz
IGFyZSBmb3IgYSBmYW1pbHkgb2YgZGV2aWNlcyBvciByYXRoZXIgc3BlY2lmaWMgb25lIG9yIGZl
dwpkZXZpY2VzLiBCYXNlZCBvbiBjb21tZW50cyBoZXJlLCBpdCBpcyBxdWl0ZSBwb3NzaWJsZSB0
aGF0IGFsbCBSb2NrY2hpcApjcnlwdG8gYmxvY2tzIHdpbGwgZml0IGludG8gdGhpcyBiaW5kaW5n
cywgc28gdGhlIG5hbWUgY291bGQgYmUgZ2VuZXJpYy4KCkhhdmluZyBhIHNwZWNpZmljIG5hbWUs
IGV2ZW4gaWYgaXQgY29udGFpbnMgbXVsdGlwbGUgZGV2aWNlcywgaXMgYWxzbyBmaW5lLgoKV2hh
dCBJIHdvdWxkIHByZWZlciB0byBhdm9pZCBpcyB0byBoYXZlIGEgZ2VuZXJpYyBuYW1lCiJyb2Nr
Y2hpcCxjcnlwdG8ueWFtbCIgYW5kIHRoZW4gaW4gdHdvIG1vbnRocyBvbmUgbW9yZSBnZW5lcmlj
CiJyb2NrY2hpcCxjcnlwdG8yLnlhbWwiLCBhbmQgdGhlbiBhZGQgdGhpcmQuLi4KCj4gCj4+Cj4+
PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9j
cnlwdG8vcm9ja2NoaXAtY3J5cHRvLnR4dAo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5cHRvL3JvY2tjaGlwLHJrMzI4OC1jcnlwdG8ueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vcm9ja2NoaXAscmsz
Mjg4LWNyeXB0by55YW1sCj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAw
MDAwMDAwLi4yZTFlOWZhNzExYzQKPj4+IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vcm9ja2NoaXAscmszMjg4LWNyeXB0by55
YW1sCj4+PiBAQCAtMCwwICsxLDY2IEBACj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCj4+PiArJVlBTUwgMS4yCj4+PiArLS0tCj4+
PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9jcnlwdG8vcm9ja2NoaXAscmsz
Mjg4LWNyeXB0by55YW1sIwo+Pgo+PiByb2NrY2hpcCxjcnlwdG8ueWFtbAo+Pgo+Pj4gKyRzY2hl
bWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+Pj4gKwo+
Pj4gK3RpdGxlOiBSb2NrY2hpcCBFbGVjdHJvbmljcyBBbmQgU2VjdXJpdHkgQWNjZWxlcmF0b3IK
Pj4+ICsKPj4+ICttYWludGFpbmVyczoKPj4+ICsgIC0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KPj4+ICsKPj4+ICtwcm9wZXJ0aWVzOgo+Pj4gKyAgY29tcGF0aWJsZToKPj4KPj4g
ICAgIG9uZU9mOgo+PiAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMyODgtY3J5cHRvCj4+ICAg
ICAgIC0gaXRlbXM6Cj4+ICAgICAgICAgICAtIGVudW06Cj4+ICAgICAgICAgICAgICAgLSByb2Nr
Y2hpcCxyazMyMjgtY3J5cHRvCj4+ICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazMzMjgtY3J5
cHRvCj4+ICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazMzNjgtY3J5cHRvCj4+ICAgICAgICAg
ICAgICAgLSByb2NrY2hpcCxyazMzOTktY3J5cHRvCj4+ICAgICAgICAgICAtIGNvbnN0OiByb2Nr
Y2hpcCxyazMyODgtY3J5cHRvCj4+Cj4+IHJrMzI4OCB3YXMgdGhlIGZpcnN0IGluIGxpbmUgdGhh
dCBoYWQgc3VwcG9ydCwgc28gd2UgdXNlIHRoYXQgYXMgZmFsbAo+PiBiYWNrIHN0cmluZy4KPiAK
PiBJIHdpbGwgZG9udCBhZGQgY29tcGF0aWJsZSB3aGljaCBhcmUgbm90IGhhbmRsZWQgYnkgdGhl
IGRyaXZlciB1bmxlc3MgRFQgbWFpbnRhaW5lciBzYWlkIEkgc2hvdWxkLgoKVGhleSBjb3VsZCBi
ZSBhZGRlZCBmb3IgY29tcGxldGVuZXNzIGJlY2F1c2UgYmluZGluZ3MgZGVzY3JpYmUgcmF0aGVy
CmhhcmR3YXJlLCBub3QgTGludXggZHJpdmVyIHN0YXRlLCBidXQgdGhlcmUgaXMgbm8gc3VjaCBt
dXN0LiBJdCBjYW4gYWxzbwpiZSBhZGRlZCBsYXRlciBieSBhbm90aGVyIGNvbnRyaWJ1dG9yLgoK
CkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
