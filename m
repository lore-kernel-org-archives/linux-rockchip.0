Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C7EAC5ACB3
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Nov 2023 07:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FryQMU99H0fpOv9SF+lc/SNVOXH+ez02yINTSujxcF4=; b=eepm17ip2ItqJV
	3q4sbI7Cv/jJBxUsrLvEQmZZqsADzITQcF6Yd2w0ndRXKBtX00KXaoKJIB/1BsKFZ3lRuH2jsoYEl
	XjbXDoDMtSf15RpKxu95XReyFYP1zr5YOKVGSIPxO6/myjVfqm7M5BuHGeCPsfI3lyM5PqCfjaHll
	HKOqkctsUZZsklXZJfJEjQsCqSEFX92PhSxHDTBYvgY+WMD54JDLyHP6Bn8IEph9Z1CY+PBD9+GMP
	hrYDoqwqy3LDBkFSN4ErFcKikwp23dDb2Fc0A2o1G0gqIcneRR5d9vgf9Oua5W3w+zUK1UcMDWIDn
	YMdHdnGZkxFORH4g/SSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5LTj-00Fvvm-1w;
	Tue, 21 Nov 2023 07:47:27 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5LTg-00FvuS-1K
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Nov 2023 07:47:25 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9dd6dc9c00cso715575566b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 23:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700552842; x=1701157642; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QqorQbljtFpA0x+MxGfUnzvUIXIXOJHNHwKUm5kHLXI=;
        b=GSGiWzkf/Y9N2qfaD7WLL1dmv4b2MlDcXHjC/VKUURQGK5a4NyNPGV1T+eXOf60MQY
         Bn6SW3qkNIwG4zkPwZg4FvjD/R8gdVRZQl7jLF5r3WWcsEHyK489qsq7iPhI+Qs06dAm
         ABaa6y7CkhZj6eH98HrRyT4v8P04ZLxJl7p0vKnHGKHEE/WmNV6SoCA9EBUXZZKFAggU
         p4xCTe+lfWHc40mLHzOm8XVGblNg8+YNPNeUHVfPtV4UlErFH9OySE9NgeaOf0JLe3fe
         Ud8NJvnlaW/CC+iXYGAQDZkFjH/aEHdnCmHJ6DbkmR/m0XgwUrvm2gxjCQbt9Z7KQPZk
         qQBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700552842; x=1701157642;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QqorQbljtFpA0x+MxGfUnzvUIXIXOJHNHwKUm5kHLXI=;
        b=qocGpeMz0YyNwAGFtdyPlG26Fci7WPkITQ5hq3ysSz2M1HeFug8ctso5VbZ2GZJ9dP
         oLeZMtwARVlwV9u2dhsqQkb+lJcII+aQDaicKZZ+f+00rnDGY/xRVZlrJT5cfltYFz5k
         pR8aKFS7wylj6K5xPzy8qTvxygGa+r6tGTHGAKLOm8C298cW4vMF7OVKKRahC+ZUbU2R
         phTU7q9y6iDjGEv09oFJgwbb7psA7FzPvijn+FQ4VaBrCTfVA/p+2Lyd3kOQcUR2DSdv
         Twgr7Dz4V1j3DKzQ18DhEG7UDhKW0W9dw1gHJtbXpUf9e1oawlkkR3++hLAcdezC/DLy
         zWmA==
X-Gm-Message-State: AOJu0YwBXL8c7ORigJQ/QnCH7Xh1e8jb356wLckO3iUy567d/zKT6yIu
	YUJumRhanb9kXCUyPGLiii/nHA==
X-Google-Smtp-Source: AGHT+IHueEI/LYzq8OnogdMBjjkgXmWFk8XwmxU9cgWy13QqTgMpQ8th6trg2y3LXbmauXNw3li19Q==
X-Received: by 2002:a17:906:bc53:b0:9fe:6349:d8ba with SMTP id s19-20020a170906bc5300b009fe6349d8bamr3789712ejv.27.1700552842316;
        Mon, 20 Nov 2023 23:47:22 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.11])
        by smtp.gmail.com with ESMTPSA id n21-20020a1709062bd500b00a015eac52dcsm752988ejg.108.2023.11.20.23.47.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 23:47:21 -0800 (PST)
Message-ID: <b48293f3-16e3-4980-b900-add0cb7d69f6@linaro.org>
Date: Tue, 21 Nov 2023 08:47:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Michal Simek <michal.simek@amd.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh+dt@kernel.org>,
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
 <CAMuHMdW4WPJT0Km7w8RWrGJaztk6QDGoFAn0bdGbrEsw81R1FA@mail.gmail.com>
 <acfdce81-f117-4a1a-a9fe-e2b4b8922adb@linaro.org>
 <bd49f17c-7ebf-4e19-b77b-b5ec95375f7d@amd.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <bd49f17c-7ebf-4e19-b77b-b5ec95375f7d@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_234724_475729_0CE39D25 
X-CRM114-Status: GOOD (  16.57  )
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

T24gMjEvMTEvMjAyMyAwODozMywgTWljaGFsIFNpbWVrIHdyb3RlOgo+IAo+IAo+IE9uIDExLzIw
LzIzIDIwOjMxLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBPbiAyMC8xMS8yMDIzIDIw
OjE4LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4+PiBIaSBLcnp5c3p0b2YsCj4+Pgo+Pj4g
T24gTW9uLCBOb3YgMjAsIDIwMjMgYXQgMzo1M+KAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPj4+
IDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Pj4+IE9uIDIwLzExLzIw
MjMgMTU6MDEsIE1pY2hhbCBTaW1layB3cm90ZTo+ID4KPj4+Pj4gT24gMTEvMjAvMjMgMDk6NDAs
IEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4+PiBEb2N1bWVudCBwcmVmZXJyZWQgY29k
aW5nIHN0eWxlIGZvciBEZXZpY2V0cmVlIHNvdXJjZXMgKERUUyBhbmQgRFRTSSksCj4+Pj4+PiB0
byBicmluZyBjb25zaXN0ZW5jeSBhbW9uZyBhbGwgKHN1YilhcmNoaXRlY3R1cmVzIGFuZCBlYXNl
IGluIHJldmlld3MuCj4+Pgo+Pj4+Pj4gK09yZ2FuaXppbmcgRFRTSSBhbmQgRFRTCj4+Pj4+PiAr
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+Pj4+ICsKPj4+Pj4+ICtUaGUgRFRTSSBhbmQgRFRT
IGZpbGVzIHNob3VsZCBiZSBvcmdhbml6ZWQgaW4gYSB3YXkgcmVwcmVzZW50aW5nIHRoZSBjb21t
b24KPj4+Pj4+ICsoYW5kIHJlLXVzYWJsZSkgcGFydHMgb2YgdGhlIGhhcmR3YXJlLiAgVHlwaWNh
bGx5IHRoaXMgbWVhbnMgb3JnYW5pemluZyBEVFNJCj4+Pj4+PiArYW5kIERUUyBmaWxlcyBpbnRv
IHNldmVyYWwgZmlsZXM6Cj4+Pj4+PiArCj4+Pj4+PiArMS4gRFRTSSB3aXRoIGNvbnRlbnRzIG9m
IHRoZSBlbnRpcmUgU29DICh3aXRob3V0IG5vZGVzIGZvciBoYXJkd2FyZSBub3QgcHJlc2VudAo+
Pj4+Pj4gKyAgIG9uIHRoZSBTb0MpLgo+Pj4+Pj4gKzIuIElmIGFwcGxpY2FibGU6IERUU0kgd2l0
aCBjb21tb24gb3IgcmUtdXNhYmxlIHBhcnRzIG9mIHRoZSBoYXJkd2FyZSAoZS5nLgo+Pj4+Pj4g
KyAgIGVudGlyZSBTeXN0ZW0tb24tTW9kdWxlKS4KPj4+Pj4KPj4+Pj4gRFRTL0RUU0kgLSBTT01z
IGNhbiBhY3R1YWxseSBydW4gYXMgdGhleSBhcmUgdGhhdCdzIHdoeSBpdCBpcyBmYWlyIHRvIHNh
eSB0aGF0Cj4+Pj4+IHRoZXJlIGRvZXNuJ3QgbmVlZCB0byBiZSBEVFMgcmVwcmVzZW50aW5nIHRo
ZSBib2FyZC4KPj4+Pgo+Pj4+IEkgaGF2ZSBuZXZlciBzZWVuIGEgU29NIHdoaWNoIGNhbiBydW4g
d2l0aG91dCBlbGFib3JhdGUgaGFyZHdhcmUtaGFja2luZwo+Pj4+IChlLmcuIGNvbm5lY3Rpbmcg
bXVsdGlwbGUgd2lyZXMgdG8gdGhlIFNvTSBwaW5zKS4gVGhlIGRlZmluaXRpb24gb2YgdGhlCj4+
Pj4gU29NIGlzIHRoYXQgaXQgaXMgYSBtb2R1bGUuIE1vZHVsZSBjYW4gYmUgcmUtdXNlZCwganVz
dCBsaWtlIFNvQy4KPj4+Cj4+PiAvbWUgbG9va3MgYXQgaGlzIGJvYXJkIGZhcm0uLi4KPj4+Cj4+
PiBUaGUgUmVuZXNhcyBXaGl0ZS1IYXdrIENQVSBib2FyZCBjYW4gYmUgdXNlZCBzdGFuZGFsb25l
LCBhbmQgaGFzIGEKPj4+IHNlcGFyYXRlIHBvd2VyIGlucHV0IGNvbm5lY3RvciBmb3IgdGhpcyBv
cGVyYXRpb24gbW9kZS4gIEFzIGl0IGhhcyBSQU0sCj4+PiBFdGhlcm5ldCwgc2VyaWFsIGNvbnNv
bGUsIGVNTUMsIGFuZCBldmVuIG1pbmktRFAsIGl0IGNhbiBzZXJ2ZSB1c2VmdWwKPj4+IHB1cnBv
c2VzIG9uIGl0cyBvd24uCj4+PiBJIGFncmVlIGl0J3Mgbm90IGEgc3VwZXItZ29vZCBleGFtcGxl
LCBhcyB0aGUgYm9hcmQgaXMgbm90IHJlYWxseSBhCj4+PiAiU29NIiwgYW5kIHdlIGN1cnJlbnRs
eSBkb24ndCBoYXZlIHI4YTc3OWcwLXdoaXRlLWhhd2stY3B1LmR0cywgb25seQo+Pj4gcjhhNzc5
ZzAtd2hpdGUtaGF3ay1jcHUuZHRzaS4KPj4+Cj4+PiBUaGUgUlovQTJNIENQVSBCb2FyZCBpcyBh
IHJlYWwgU29NLCB3aGljaCBjYW4gYmUgcG93ZXJlZCBvdmVyIFVTQi4KPj4+IEl0IGhhcyBsZXNz
IHN0YW5kYXJkIGNvbm5lY3RvcnMgKG1pY3JvU0QsIFVTQiwgTUlQSSBDU0ktMiksIGJ1dCBzdGls
bAo+Pj4gc3VmZmljaWVudCBmZWF0dXJlcyB0byBiZSB1c2FibGUgb24gaXRzIG93bi4KPj4+IEFn
YWluLCB3ZSdyZSBkb2luZyBhIGJhZCBqb2IsIGFzIHdlIG9ubHkgaGF2ZSBhIERUUyBmb3IgdGhl
IGZ1bGwgZXZhbAo+Pj4gYm9hcmQgKHI3czkyMTAtcnphMm1ldmIuZHRzKS4KPj4+Cj4+PiBJIGd1
ZXNzIHRoZXJlIGFyZSAobWFueSkgb3RoZXIgZXhhbXBsZXMuLi4KPj4KPj4gT0ssIEkgbmV2ZXIg
aGFkIHN1Y2ggaW4gbXkgaGFuZHMuIEFueXdheSwgdGhlIFNvTSB3aGljaCBjYW4gcnVuCj4+IHN0
YW5kYWxvbmUgIGhhcyBhIG1lYW5pbmcgb2YgYSBib2FyZCwgc28gaG93IGV4YWN0bHkgeW91IHdh
bnQgdG8KPj4gcmVwaHJhc2UgdGhlIHBhcmFncmFwaD8KPiAKPiBXaGF0IGFib3V0Pwo+IAo+IDIu
IElmIGFwcGxpY2FibGU6IERUU0kgd2l0aCBjb21tb24gb3IgcmUtdXNhYmxlIHBhcnRzIG9mIHRo
ZSBoYXJkd2FyZSAoZS5nLgo+IGVudGlyZSBTeXN0ZW0tb24tTW9kdWxlKS4gRFRTIGlmIHJ1bnMg
c3RhbmRhbG9uZS4KCk9LLCBidXQgdGhlbiBpdCdzIGR1cGxpY2F0aW5nIHRoZSBvcHRpb24gMy4g
SXQgYWxzbyBzdWdnZXN0cyB0aGF0IFNvTQpzaG91bGQgYmUgYSBEVFMsIHdoaWNoIGlzIG5vdCB3
aGF0IHdlIHdhbnQgZm9yIHN1Y2ggY2FzZS4gU3VjaCBTb01zIG11c3QKaGF2ZSBEVFNJK0RUUy4K
CkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
