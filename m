Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACB01C61D92
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 08:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/XeENrHv8uLsJCZxsE2XBuEADHe9Tj9gTKgWo3x79A=; b=dZuDBK5i3MVSqD
	89qDwU3xoYU5pFZdxNoWORcr31Qm4bTmZL03JC1rgg2xYnUHUvFy8Bxs6a+2sfCT6X+ysNMBw0No+
	twl+pb1dbCDqEOw7dSsY4AB9KiPf+Yvqvn4ej83JCGZyVCEGkidxvoadNgcVj7gALfh+cfHqxW0uG
	oHBnr5fHKmIYWUa3/OM5KKT330lGgA1UfZktNOcSTR8Ekl2WYI7wJvtIKc91ujQwk/RqF7FXeyxIL
	VKmZYKMyEOXKjCgXCXP1OIx1YjWSILDCJ4LGk1JxkP93Bm1iNa7tXrz+GrlhfFosuZvENIE7HwAGb
	KQ7AnB1nWvK5whgBvnog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iUM-0012Va-1T;
	Wed, 22 Nov 2023 08:21:38 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iUH-0012Sp-0s
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Nov 2023 08:21:35 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a00a9c6f1e9so335364166b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Nov 2023 00:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700641291; x=1701246091; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dWZXWR10yN3RjItd4uVERoZZUJiKuZqt9/puLFdDo8c=;
        b=P5SSImFGAyBerz0OMEjBJW504S1kgbgCmb9jAdDebZagMtUAYwcs/m8o5Q1QLTAXlg
         EVmAGmpgI+U2s36YIG9xK1cSS4qeNr3QJTNRuOwUJSmgKnKrdyaoirno0oUfuPholU7C
         NyguEfPHGSsZ590s8+PksccylET/RdlVUOnJIMX6xw6P8/UCf/cXMaJjV3+4UvcYIUK6
         8t3GP6pThQjRKakzCe647JU5gXODF/gGBjkv3YhrJM3XfhOUpdYxca4Zg/VH0woEYO4w
         8F3x4g/rhP1R7AUjSVM7LHGWrUXQzbmgT9gXTejBcOd++yix/gYNR8qt4khtE62o++LR
         XM4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700641291; x=1701246091;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dWZXWR10yN3RjItd4uVERoZZUJiKuZqt9/puLFdDo8c=;
        b=lls2oRY86hCI/z+n6m/PRR8Q2LOvr9SGRxLclrS21FYjCzaagJmhbx8TCknI6GWO4/
         xhkXGzrrNGNOxryeOil/J7KJBSGvYG3VDE37DEMpC/WrAnytXxLRzemM8jpht5wHV3yQ
         5WEaLZ4CooJlTiDYz6qjtVR2EnhpAq2AIfFkaHcMa7x5GKsvPPcZtxQwMKaYiPtT+uuA
         9enKMXAT9eBuYWHzEpIaebSpba9iaFMWXqbZCBNMjV5COecDU2ZrZI3mMt+A7q0Nv6wX
         eTVhD4U00vFjpOPF5UGeGM2zs2pGMDD02e2oLgLEv2sLpxVrgraGOEgJ6aspTGE7ytZO
         v5/A==
X-Gm-Message-State: AOJu0YzgDwy4btZ0YBUJqm3mAC+9SE+XDNzeQyTXvOjuQ4G56tnLhGwi
	b2ppEfvuqUa3FIK9sX7flW/tOQ==
X-Google-Smtp-Source: AGHT+IGimlEAf2nqN7DdSTRsvU00zMY71afscJi/CVlHORRd9wbC6UZk2rO3GUlFA+T+gwzhBkLv6A==
X-Received: by 2002:a17:907:cbc9:b0:a00:1c9a:a472 with SMTP id vk9-20020a170907cbc900b00a001c9aa472mr1438483ejc.7.1700641291154;
        Wed, 22 Nov 2023 00:21:31 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id g1-20020a170906538100b009fef7d22c98sm3269289ejo.35.2023.11.22.00.21.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 00:21:30 -0800 (PST)
Message-ID: <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org>
Date: Wed, 22 Nov 2023 09:21:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: wens@kernel.org
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
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
 Michal Simek <michal.simek@amd.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com>
 <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
 <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_002133_308176_793493EF 
X-CRM114-Status: GOOD (  20.35  )
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

T24gMjIvMTEvMjAyMyAwOTowOSwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+IE9uIFdlZCwgTm92IDIy
LCAyMDIzIGF0IDQ6MDXigK9QTSBLcnp5c3p0b2YgS296bG93c2tpCj4gPGtyenlzenRvZi5rb3ps
b3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4+Cj4+IE9uIDIxLzExLzIwMjMgMTQ6NTAsIFJhZmHF
giBNacWCZWNraSB3cm90ZToKPj4+PiArT3JkZXIgb2YgTm9kZXMKPj4+PiArLS0tLS0tLS0tLS0t
LS0KPj4+PiArCj4+Pj4gKzEuIE5vZGVzIHdpdGhpbiBhbnkgYnVzLCB0aHVzIHVzaW5nIHVuaXQg
YWRkcmVzc2VzIGZvciBjaGlsZHJlbiwgc2hhbGwgYmUKPj4+PiArICAgb3JkZXJlZCBpbmNyZW1l
bnRhbGx5IGJ5IHVuaXQgYWRkcmVzcy4KPj4+PiArICAgQWx0ZXJuYXRpdmVseSBmb3Igc29tZSBz
dWItYXJjaGl0ZWN0dXJlcywgbm9kZXMgb2YgdGhlIHNhbWUgdHlwZSBjYW4gYmUKPj4+PiArICAg
Z3JvdXBlZCB0b2dldGhlciAoZS5nLiBhbGwgSTJDIGNvbnRyb2xsZXJzIG9uZSBhZnRlciBhbm90
aGVyIGV2ZW4gaWYgdGhpcwo+Pj4+ICsgICBicmVha3MgdW5pdCBhZGRyZXNzIG9yZGVyaW5nKS4K
Pj4+PiArCj4+Pj4gKzIuIE5vZGVzIHdpdGhvdXQgdW5pdCBhZGRyZXNzZXMgc2hvdWxkIGJlIG9y
ZGVyZWQgYWxwaGEtbnVtZXJpY2FsbHkgYnkgdGhlIG5vZGUKPj4+PiArICAgbmFtZS4gIEZvciBh
IGZldyB0eXBlcyBvZiBub2RlcywgdGhleSBjYW4gYmUgb3JkZXJlZCBieSB0aGUgbWFpbiBwcm9w
ZXJ0eQo+Pj4+ICsgICAoZS5nLiBwaW4gY29uZmlndXJhdGlvbiBzdGF0ZXMgb3JkZXJlZCBieSB2
YWx1ZSBvZiAicGlucyIgcHJvcGVydHkpLgo+Pj4+ICsKPj4+PiArMy4gV2hlbiBleHRlbmRpbmcg
bm9kZXMgaW4gdGhlIGJvYXJkIERUUyB2aWEgJmxhYmVsLCB0aGUgZW50cmllcyBzaG91bGQgYmUK
Pj4+PiArICAgb3JkZXJlZCBhbHBoYS1udW1lcmljYWxseS4KPj4+Cj4+PiBKdXN0IGFuIGlkZWEu
IFdvdWxkIHRoYXQgbWFrZSAobW9yZSkgc2Vuc2UgdG8gbWFrZSAmbGFiZWwtbGlrZSBlbnRyaWVz
Cj4+PiBtYXRjaCBvcmRlciBvZiBub2RlcyBpbiBpbmNsdWRlZCAuZHRzKGkpPwo+Pj4KPj4+IEFk
dmVudGFnZXM6Cj4+PiAxLiBXZSBrZWVwIHVuaXQgYWRkcmVzcyBpbmNyZW1lbnRhbCBvcmRlciB0
aGF0IGlzIHVubGlrZWx5IHRvIGNoYW5nZQo+Pj4KPj4+IERpc2FkdmVudGFnZXM6Cj4+PiAxLiBN
b3JlIGRpZmZpY3VsdCB0byB2ZXJpZnkKPj4KPj4gUm9iIGFsc28gcHJvcG9zZWQgdGhpcyBhbmQg
SSBiZWxpZXZlIGFib3ZlIGRpc2FkdmFudGFnZSBoZXJlIGlzIGNydWNpYWwuCj4+IElmIHlvdSBh
ZGQgbmV3IFNvQyB3aXRoIGJvYXJkIERUUyB5b3UgYXJlIGZpbmUuIEJ1dCBpZiB5b3UgYWRkIG9u
bHkgbmV3Cj4+IGJvYXJkLCB0aGUgb3JkZXIgb2YgZW50cmllcyBsb29rIHJhbmRvbSBpbiB0aGUg
ZGlmZiBodW5rLiBSZXZpZXdlciBtdXN0Cj4+IG9wZW4gU29DIERUU0kgdG8gYmUgYWJsZSB0byBy
ZXZpZXcgdGhlIHBhdGNoIHdpdGggYm9hcmQgRFRTLgo+Pgo+PiBJZiByZXZpZXcgaXMgdHJpY2t5
IGFuZCB3ZSBkbyBub3QgaGF2ZSB0b29sIHRvIHBlcmZvcm0gaXQgYXV0b21hdGljYWxseSwKPj4g
SSBhbSBzdXJlIHN1Ym1pc3Npb25zIHdpbGwgaGF2ZSBkaXNvcmRlcmVkIGJvYXJkIERUUy4KPj4K
Pj4+Cj4+Pgo+Pj4+ICtFeGFtcGxlOjoKPj4+PiArCj4+Pj4gKyAgICAvLyBTb0MgRFRTSQo+Pj4+
ICsKPj4+PiArICAgIC8gewo+Pj4+ICsgICAgICAgICAgICBjcHVzIHsKPj4+PiArICAgICAgICAg
ICAgICAgICAgICAvLyAuLi4KPj4+PiArICAgICAgICAgICAgfTsKPj4+PiArCj4+Pj4gKyAgICAg
ICAgICAgIHBzY2kgewo+Pj4+ICsgICAgICAgICAgICAgICAgICAgIC8vIC4uLgo+Pj4+ICsgICAg
ICAgICAgICB9Owo+Pj4+ICsKPj4+PiArICAgICAgICAgICAgc29jQCB7Cj4+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgZG1hOiBkbWEtY29udHJvbGxlckAxMDAwMCB7Cj4+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAvLyAuLi4KPj4+PiArICAgICAgICAgICAgICAgICAgICB9Owo+Pj4+
ICsKPj4+PiArICAgICAgICAgICAgICAgICAgICBjbGs6IGNsb2NrLWNvbnRyb2xsZXJAODAwMDAg
ewo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gLi4uCj4+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgfTsKPj4+PiArICAgICAgICAgICAgfTsKPj4+PiArICAgIH07Cj4+Pj4gKwo+
Pj4+ICsgICAgLy8gQm9hcmQgRFRTCj4+Pj4gKwo+Pj4+ICsgICAgJmNsayB7Cj4+Pj4gKyAgICAg
ICAgICAgIC8vIC4uLgo+Pj4+ICsgICAgfTsKPj4+PiArCj4+Pj4gKyAgICAmZG1hIHsKPj4+PiAr
ICAgICAgICAgICAgLy8gLi4uCj4+Pj4gKyAgICB9Owo+Pj4+ICsKPj4+PiArCj4+Pj4gK09yZGVy
IG9mIFByb3BlcnRpZXMgaW4gRGV2aWNlIE5vZGUKPj4+PiArLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+Pj4+ICsKPj4+PiArRm9sbG93aW5nIG9yZGVyIG9mIHByb3BlcnRpZXMg
aW4gZGV2aWNlIG5vZGVzIGlzIHByZWZlcnJlZDoKPj4+PiArCj4+Pj4gKzEuIGNvbXBhdGlibGUK
Pj4+PiArMi4gcmVnCj4+Pj4gKzMuIHJhbmdlcwo+Pj4+ICs0LiBTdGFuZGFyZC9jb21tb24gcHJv
cGVydGllcyAoZGVmaW5lZCBieSBjb21tb24gYmluZGluZ3MsIGUuZy4gd2l0aG91dAo+Pj4+ICsg
ICB2ZW5kb3ItcHJlZml4ZXMpCj4+Pj4gKzUuIFZlbmRvci1zcGVjaWZpYyBwcm9wZXJ0aWVzCj4+
Pj4gKzYuIHN0YXR1cyAoaWYgYXBwbGljYWJsZSkKPj4+PiArNy4gQ2hpbGQgbm9kZXMsIHdoZXJl
IGVhY2ggbm9kZSBpcyBwcmVjZWRlZCB3aXRoIGEgYmxhbmsgbGluZQo+Pj4+ICsKPj4+PiArVGhl
ICJzdGF0dXMiIHByb3BlcnR5IGlzIGJ5IGRlZmF1bHQgIm9rYXkiLCB0aHVzIGl0IGNhbiBiZSBv
bWl0dGVkLgo+Pj4KPj4+IEkgdGhpbmsgaXQgd291bGQgcmVhbGx5IGhlbHAgdG8gaW5jbHVkZSBw
b3NpdGlvbiBvZiAjYWRkcmVzcy1jZWxscyBhbmQKPj4+ICNzaXplLWNlbGxzIGhlcmUuIEluIHNv
bWUgZmlsZXMgSSBzYXcgdGhlbSBhYm92ZSAiY29tcGF0aWJsZSIgdGhhdCBzZWVtcwo+Pj4gdW5p
bnR1aXRpdmUuIFNvbWUgcHJlZmVyIHB1dHRpbmcgdGhlbSBhdCBlbmQgd2hpY2ggSSB0aGluayBt
YWtlcyBzZW5zZQo+Pj4gYXMgdGhleSBhZmZlY3QgY2hpbGRyZW4gbm9kZXMuCj4+Pgo+Pj4gV2hh
dGV2ZXIgeW91IGNob29zZSBpdCdkIGJlIGp1c3QgbmljZSB0byBoYXZlIHRoaW5ncyBjb25zaXN0
ZW50Lgo+Pgo+PiBUaGlzIGlzIGEgc3RhbmRhcmQvY29tbW9uIHByb3BlcnR5LCB0aHVzIGl0IGdv
ZXMgdG8gKDQpIGFib3ZlLgo+IAo+IEl0J3MgcHJvYmFibHkgYSBtaXgsIGJ1dCBBRkFJSyBhIGxv
dCBvZiB0aGUgZGV2aWNlIHRyZWVzIGluIHRyZWUgaGF2ZQo+ICMqLWNlbGxzIGFmdGVyICJzdGF0
dXMiLiBJbiBzb21lIGNhc2VzIHRoZXkgYXJlIGFkZGVkIGluIHRoZSBib2FyZAo+IC5kdHMgZmls
ZXMsIG5vdCB0aGUgY2hpcC9tb2R1bGUgLmR0c2kgZmlsZXMuCgpFeGlzdGluZyBEVFMgaXMgbm90
IGEgZ29vZCBleGFtcGxlIDopCgo+IAo+ICsxIHRoYXQgaXQgbWFrZXMgc2Vuc2UgYXQgdGhlIGVu
ZCBhcyB0aGV5IGFmZmVjdCBjaGlsZCBub2Rlcy4KCkkgc3RpbGwgaW5zaXN0IHRoYXQgc3RhdHVz
IG11c3QgYmUgdGhlIGxhc3QsIGJlY2F1c2U6CjEuIE1hbnkgU29DIG5vZGVzIGhhdmUgYWRkcmVz
cy9zaXplIGNlbGxzIGJ1dCBkbyBub3QgaGF2ZSBhbnkgY2hpbGRyZW4KKEkyQywgU1BJKSwgc28g
d2UgcHV0IHVzZWxlc3MgaW5mb3JtYXRpb24gYXQgdGhlIGVuZC4KMi4gU3RhdHVzIHNob3VsZCBi
ZSB0aGUgZmluYWwgaW5mb3JtYXRpb24gdG8gc2F5IHdoZXRoZXIgdGhlIG5vZGUgaXMKcmVhZHkg
b3IgaXMgbm90LiBJIHJlYWQgdGhlIG5vZGUsIGNoZWNrIHByb3BlcnRpZXMgYW5kIHRoZW4gbG9v
ayBhdCB0aGUgZW5kOgphLiBMYWNrIG9mIHN0YXR1cyBtZWFucyBpdCBpcyByZWFkeS4KYi4gc3Rh
dHVzPWRpc2FibGVkIG1lYW5zIGRldmljZSBzdGlsbCBuZWVkcyBib2FyZCByZXNvdXJjZXMvY3Vz
dG9taXphdGlvbgoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
