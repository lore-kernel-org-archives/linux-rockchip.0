Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADD40C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 09:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VzUpAJnSsgy62xk5Ozj3Ij8lh8yaDObkED2SQASmxw=; b=UY6UGetCT4nSx+
	0/Bd/GudYqTVUSSP7UaRSoU8DOF1riq5NFww31maVPvOGNIYDc0D+bMTdhkWORCcZlZTXiEzPPY7e
	mDdUMC1HJU/5GmxmP89rkVbxqQszOn7MxFiUGooY6d5esUozR91x6ai+srU2lblepK/Ur+C2Pt8Hd
	TQiJ8/ggwq8XGCwYfxmLJQ1hAiddkIucCEw+BKY+Jrs2wOWObRN3MRvqt0DYA0ioWc0LG6vpiFs1P
	iH9AKaAS68lnD4MrmBe/R3uQIBpcb/yZT43M3Z0tu6ZtIWn8Zo/m/AB52HTXiEqP9itL67joDenhY
	i34EQK3ai63uURevin+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ27u-00F4Gr-3D;
	Wed, 17 Jan 2024 09:22:27 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ27q-00F4Cn-1a
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jan 2024 09:22:25 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a28a6cef709so1192807066b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jan 2024 01:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705483338; x=1706088138; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qRmXVvhWhoxEmcKKaFlNQWbRI1Exhmn/kr3PCN1HDEw=;
        b=z7SJMm6u0n24TUJayRIzloQNkd6jEuzhz2ckxzaj4CdGCivSoJjNuvR9zPsvvSjRi/
         +4dMJ/tMv8KcOKeR0LBq2qWGuBP79kxhyLw0MkDxR/5CD6NRj11I7wIrel4s1MbYtUFN
         v3tHUlCVGJIcIezSjk1uIbstfUGMbsesCIYzQNHeW59vg47cCFWwEB8BQVe+CJitWjD9
         pGeGOG5MJsIjw1VaGwDQSSmCEV4CF4lrZxpJl2dxbavB6O+6psnicmV5o5Jo6MF9L+TI
         SesY+hONeCLUhL14rRzjKYq/I81/LeCF/NMyDLsiG/6r0L1w2+30EX/vIkATuu0VQzua
         zwkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705483338; x=1706088138;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qRmXVvhWhoxEmcKKaFlNQWbRI1Exhmn/kr3PCN1HDEw=;
        b=oY/VLkZrzMO9qWEGM9UIN1yXNCKpfbizWd78as1aVF4RrI8Hx7S1k0FqaO97vUvK6g
         rilE9GYpujpXUzdOteHr4FoJbAWgev5k4pP1J7jtt/s8lC9fM1iOjDDIjmb+oQ6PAhn9
         svFwjEsf87wYsNO/FMMs9s17OXmP4MTrbwlVYpAjTnZA+r9fg066yDKzef18E5eD/+ay
         +7kRADSyG97bZiC3mBXcDARMoDFnIBkhkFSh5p/bbdz8ctVH9bqsxhocktp191FRQLLv
         aq1ctdojy8ArMk5ZRPVEy1/WfmcVvMRp+b3sc1+ez1kxOfOo2lXkQqsYkYTtloRayilt
         T9Uw==
X-Gm-Message-State: AOJu0YxNZRBQX+ffk0brZGxSB6qgfVZF57kdBFyLYaHuWJ8Qsx46vI57
	DOuy6UKyQNvZTHtFAOvr/46GRDFF3+nyaw==
X-Google-Smtp-Source: AGHT+IESdSba8yshOtaaMo6hhj4oAlQExRWri+qaeiNrgD572/lV8nV1nkko9YqY6Zi1G8lMN3EXLw==
X-Received: by 2002:a17:906:4907:b0:a28:e0a7:258e with SMTP id b7-20020a170906490700b00a28e0a7258emr4610787ejq.22.1705483338586;
        Wed, 17 Jan 2024 01:22:18 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906561200b00a2e99c12ea5sm1286967ejq.157.2024.01.17.01.22.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 01:22:18 -0800 (PST)
Message-ID: <b798a7cc-c9fd-4bc3-bb14-401e10e4eeb8@linaro.org>
Date: Wed, 17 Jan 2024 10:22:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: rockchip: Document rk809 support for
 rk817 audio codec
Content-Language: en-US
To: Tim Lunn <tim@feathertop.org>, Conor Dooley <conor@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116132102.3272682-2-tim@feathertop.org>
 <20240116-mangle-parish-93b5cd672d17@spud>
 <72ed509c-f754-4e65-a65e-130185777c53@feathertop.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <72ed509c-f754-4e65-a65e-130185777c53@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_012223_681374_38A45B4D 
X-CRM114-Status: GOOD (  17.35  )
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

T24gMTcvMDEvMjAyNCAxMDoxOSwgVGltIEx1bm4gd3JvdGU6Cj4gCj4gT24gMS8xNy8yNCAwNDow
NiwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+PiBPbiBXZWQsIEphbiAxNywgMjAyNCBhdCAxMjoyMTow
MEFNICsxMTAwLCBUaW0gTHVubiB3cm90ZToKPj4+IFJvY2tjaGlwIFJLODA5IHNoYXJlcyB0aGUg
c2FtZSBhdWRpbyBjb2RlYyBhcyB0aGUgcms4MTcgbWZkLCBpdCBpcyBhbHNvCj4+PiB1c2luZyB0
aGUgc2FtZSByazgxN19jb2RlYyBkcml2ZXIuIEhvd2V2ZXIgaXQgaXMgbWlzc2luZyBmcm9tIHRo
ZQo+Pj4gYmluZGluZ3MuCj4+Pgo+Pj4gVXBkYXRlIGR0LWJpbmRpbmcgZG9jdW1lbnRhdGlvbiBm
b3Igcms4MDkgdG8gaW5jbHVkZSB0aGUgYXVkaW8gY29kZWMKPj4+IHByb3BlcnRpZXMuIFRoaXMg
Zml4ZXMgdGhlIGZvbGxvd2luZyB3YXJuaW5nIGZyb20gZHRiIGNoZWNrOgo+Pj4KPj4+IHBtaWNA
MjA6ICcjc291bmQtZGFpLWNlbGxzJywgJ2Fzc2lnbmVkLWNsb2NrLXBhcmVudHMnLCAnYXNzaWdu
ZWQtY2xvY2tzJywKPj4+ICAgICAnY2xvY2stbmFtZXMnLCAnY2xvY2tzJywgJ2NvZGVjJyBkbyBu
b3QgbWF0Y2ggYW55IG9mIHRoZSByZWdleGVzOgo+Pj4gICAgICdwaW5jdHJsLVswLTldKycKPj4+
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBUaW0gTHVubjx0aW1AZmVhdGhlcnRvcC5vcmc+Cj4+PiAtLS0K
Pj4+Cj4+PiAobm8gY2hhbmdlcyBzaW5jZSB2MSkKPj4+Cj4+PiAgIC4uLi9iaW5kaW5ncy9tZmQv
cm9ja2NoaXAscms4MDkueWFtbCAgICAgICAgICB8IDMwICsrKysrKysrKysrKysrKysrKy0KPj4+
ICAgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2Nr
Y2hpcCxyazgwOS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9y
b2NrY2hpcCxyazgwOS55YW1sCj4+PiBpbmRleCA4MzljMDUyMWYxZTUuLmJhYzJlNzUxZTJmMiAx
MDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9j
a2NoaXAscms4MDkueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21mZC9yb2NrY2hpcCxyazgwOS55YW1sCj4+PiBAQCAtMTIsNyArMTIsNyBAQCBtYWludGFp
bmVyczoKPj4+ICAgCj4+PiAgIGRlc2NyaXB0aW9uOiB8Cj4+PiAgICAgUm9ja2NoaXAgUks4MDkg
c2VyaWVzIFBNSUMuIFRoaXMgZGV2aWNlIGNvbnNpc3RzIG9mIGFuIGkyYyBjb250cm9sbGVkIE1G
RAo+Pj4gLSAgdGhhdCBpbmNsdWRlcyByZWd1bGF0b3JzLCBhbiBSVEMsIGFuZCBwb3dlciBidXR0
b24uCj4+PiArICB0aGF0IGluY2x1ZGVzIHJlZ3VsYXRvcnMsIGFuIFJUQywgYSBwb3dlciBidXR0
b24sIGFuZCBhbiBhdWRpbyBjb2RlYy4KPj4+ICAgCj4+PiAgIHByb3BlcnRpZXM6Cj4+PiAgICAg
Y29tcGF0aWJsZToKPj4+IEBAIC05Myw2ICs5MywzNCBAQCBwcm9wZXJ0aWVzOgo+Pj4gICAgICAg
ICAgIHVuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKPj4+ICAgICAgIHVuZXZhbHVhdGVkUHJv
cGVydGllczogZmFsc2UKPj4+ICAgCj4+PiArICBjbG9ja3M6Cj4+PiArICAgIGRlc2NyaXB0aW9u
Ogo+Pj4gKyAgICAgIFRoZSBpbnB1dCBjbG9jayBmb3IgdGhlIGF1ZGlvIGNvZGVjLgo+Pj4gKwo+
Pj4gKyAgY2xvY2stbmFtZXM6Cj4+PiArICAgIGRlc2NyaXB0aW9uOgo+Pj4gKyAgICAgIFRoZSBj
bG9jayBuYW1lIGZvciB0aGUgY29kZWMgY2xvY2suCj4+PiArICAgIGl0ZW1zOgo+Pj4gKyAgICAg
IC0gY29uc3Q6IG1jbGsKPj4gWW91IGhhdmUgb25lIGNsb2NrIG9ubHksIHdoeSBkbyB5b3UgbmVl
ZCB0byBoYXZlIGNsb2NrLW5hbWVzPwo+IFRoaXMgaXMganVzdCBkb2N1bWVudGluZyB0aGUgZXhp
c3Rpbmcgcms4MTcgY29kZWMgZHJpdmVyLCB3aGljaCBpcyB1c2luZyAKPiB0aGUgbmFtZSB0byBn
ZXQgdGhlIGNsb2NrOgo+IAo+IGRldm1fY2xrX2dldChwZGV2LT5kZXYucGFyZW50LCAibWNsayIp
Owo+IAo+IFRodXMgaSBkb250IHRoaW5rIGNsb2NrLW5hbWVzIGNhbsKgIGJlIHJlbW92ZWQgaW4g
dGhpcyBjYXNlPyBhdGxlYXN0IG5vdCAKPiB3aXRob3V0IHBhdGNoaW5nIHRoZSBkcml2ZXIgYXMg
d2VsbD8KPj4KCllvdXIgY29tbWl0IG1zZyBjbGFpbXMgdGhpcyBpcyBmb3IgZXhpc3RpbmcgZHJp
dmVyIHVzaW5nIHJrODE3X2NvZGVjLiBTbwp3aGF0IGFib3V0IHJrODE3PyBJdCBkb2VzIG5vdCB1
c2UgY2xvY2tzPwoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
