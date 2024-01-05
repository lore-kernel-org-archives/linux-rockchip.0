Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52DEBC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 17:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5Le2CnwKUXhtC9fG7Gd7758n2LLve1udC1ZuwHPpAY=; b=Q+G8g7n3CCva5u
	fookpBwOZ/T5eFp5/uslLzpN3lvVU5h9lF4HWmeKL0eCsCo+WTeRrFoPEnNoY5CJS0YiLooiGrXwe
	qKgbqeH2n8dtHA/nl6aZn+OO24xgVvPvgcGOHpyDqaFh23JHaVGqat/wyyd2Xb5GTXhQrgasEjCsd
	0LADNUrjeqCVKQpG85sworf0LtjS/qaGyUhQMFAcMgBUcNkvr+jWSwdFdnGRoV6l0zrxp+sSzCaUL
	vLNsG2wpJfcGgeWO5sMpb0nqqBEVJL5hyeJ3mm3FJUTW54/7jDDN1djNe/5XBD94ygIgOb5feRW25
	eCrWDb2veiMciIu78WxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLo4l-00HQbV-0O;
	Fri, 05 Jan 2024 17:33:43 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLo4h-00HQZY-16;
	Fri, 05 Jan 2024 17:33:40 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a28ab7ae504so190667966b.3;
        Fri, 05 Jan 2024 09:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704476015; x=1705080815; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fvRwdXp7STtyfwmA3TQz9ECnNAh+xTP7eSbKgSeWVxM=;
        b=mFSGNh/GGzeO897jnVz31IKRcWKR0bAGIZn9/+qe6Ur2N8JAsvKgaJ7fiChTuGoKEO
         1vkQa1I1FSipHYBewOPTJCgmYTB0oQ/ZCPp7D6mU+pLNeID+ZmGQcyga0/qhas+mmtOu
         PEQNDP3QgQSJPN2tEIQb5zVmXBw8F4VtOBL7L8R9ZQBLsugLcEuJ0NpWea5lTiohdtHd
         v+qsd4hApeANeSqQXJH/xIPMNKV73xqkpG+Ve/xRZZuXBWitsNMMI2nRxaCqZcxj6Gor
         5ophdV+HNDb7vMM5lxGoAvBz+EXEO171ltpfBcHGd5CfS1pMHOwWdIOwhCNSBKfHgpAT
         M++A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704476015; x=1705080815;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fvRwdXp7STtyfwmA3TQz9ECnNAh+xTP7eSbKgSeWVxM=;
        b=LqEdvV/aLyI8WwC1EbRSJhmDC68GnRqLQKh4vKBbIRCLu+4nvOskjXx3pBsruZhucT
         Xs7NpA9cAGEt/iXZrz57yizICo1mDJFdLWAlJcBSNkDozFvD/KJk2/ckUijD04q3AgGy
         nTgELVL2X/Oig+30vNkfmaRm/7P5v99Ohn8LKMeQwqtUrYw44la/etRfWxHH64U16fkK
         EaMnlvws3nw50GeSkTtuNG9+YE1V1KgCfNr+Iy+jJpjCo/RTAxuk5+2cEcDSYfGWaEb8
         rUo8EHOEwCBC5yP3qhKM1bBzbUpWWGf3l89rcdrlhJuHb7N3H49ABUloKU7hbiJ4dhEb
         vcjg==
X-Gm-Message-State: AOJu0Yx0OdCEdLE/Ha9W0XJ8zy+sjnW+ma4kRu+cc6CC86vSrol+4DC8
	jmdYbKM8aWmDPaCGG1rPXw==
X-Google-Smtp-Source: AGHT+IG2qdAwRrF2BoWjNp5Yp1uIidtzoXmQan0J2+VlX6wkeQ0tdJCag6miAoGA8iKd/ZQLd4emvg==
X-Received: by 2002:a17:906:4116:b0:a29:1648:6030 with SMTP id j22-20020a170906411600b00a2916486030mr771950ejk.86.1704476015535;
        Fri, 05 Jan 2024 09:33:35 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:890b:36c3:934f:6f56? ([2a02:810b:f40:4300:890b:36c3:934f:6f56])
        by smtp.gmail.com with ESMTPSA id h24-20020a17090791d800b00a235b01886dsm1102895ejz.10.2024.01.05.09.33.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jan 2024 09:33:35 -0800 (PST)
Message-ID: <31af9449-67df-4a1d-942c-60405f653409@gmail.com>
Date: Fri, 5 Jan 2024 18:33:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v4 00/29] Add HDMI support for RK3128
Content-Language: en-US, de-DE
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 David Airlie <airlied@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>
References: <20231222174220.55249-1-knaerzche@gmail.com>
 <170435598418.3166964.9367277671989164237.b4-ty@sntech.de>
 <3e7aa9f2-6e37-44c3-9361-5fa7c4ef203d@gmail.com> <2568547.3Lj2Plt8kZ@diego>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <2568547.3Lj2Plt8kZ@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_093339_377956_F00632F5 
X-CRM114-Status: GOOD (  21.55  )
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

CkFtIDA1LjAxLjI0IHVtIDE4OjAyIHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4gQW0gRnJlaXRh
ZywgNS4gSmFudWFyIDIwMjQsIDE3OjQ3OjIxIENFVCBzY2hyaWViIEFsZXggQmVlOgo+PiBIaSBI
ZWlrbywKPj4KPj4KPj4gQW0gMDQuMDEuMjQgdW0gMDk6MTQgc2NocmllYiBIZWlrbyBTdHVlYm5l
cjoKPj4+IE9uIEZyaSwgMjIgRGVjIDIwMjMgMTg6NDE6NTEgKzAxMDAsIEFsZXggQmVlIHdyb3Rl
Ogo+Pj4+IFRoaXMgaXMgdmVyc2lvbiA0IG9mIG15IHNlcmllcyB0aGF0IGFpbXMgdG8gYWRkIHN1
cHBvcnQgZm9yIHRoZSBkaXNwbGF5Cj4+Pj4gY29udHJvbGxlciAoVk9QKSBhbmQgdGhlIEhETUkg
Y29udHJvbGxlciBibG9jayBvZiBSSzMxMjggKHdoaWNoIGlzIHZlcnkKPj4+PiBzaW1pbGFyIHRv
IHRoZSBvbmUgZm91bmQgaW4gUkszMDM2KS4gVGhlIG9yaWdpbmFsIGludGVudGlvbiBvZiB0aGlz
IHNlcmllcwo+Pj4+IHdhcyB0byBhZGQgc3VwcG9ydCBmb3IgdGhpcyBzbGlnaHRseSBkaWZmZXJl
bnQgaW50ZWdyYXRpb24gYnV0IGlzIGJ5IG5vdywKPj4+PiBkcml2ZW4gYnkgbWFpbnRhaW5lcidz
IGZlZWRiYWNrLCBleHBsb2RlZCB0byBiZSBhIHJld29yayBvZiBpbm5vLWhkbWkKPj4+PiBkcml2
ZXIgaW4gbGFyZ2UgcGFydHMuIEl0IGlzLCBob3dldmVyLCBhIGNoYW5nZSBmb3IgdGhlIGJldHRl
ci4KPj4+Pgo+Pj4+IFsuLi5dCj4+PiBBcHBsaWVkLCB0aGFua3MhCj4+Pgo+Pj4gWzIzLzI5XSBk
cm0vcm9ja2NoaXA6IGlubm9faGRtaTogQWRkIHZhcmlhbnQgc3VwcG9ydAo+Pj4gICAgICAgICAg
IGNvbW1pdDogNWYyZTkzZTY3MTk3MDFhOTEzMDcwOTBmOGY3Njk2ZmQ2YjNiZmZkZgo+Pj4gWzI0
LzI5XSBkcm0vcm9ja2NoaXA6IGlubm9faGRtaTogQWRkIFJLMzEyOCBzdXBwb3J0Cj4+PiAgICAg
ICAgICAgY29tbWl0OiBhYTU0ZjMzNGMyOTFlZmZlMzIxYWE0YjlhYzBlNjdhODk1ZmQ3YjU4Cj4+
PiBbMjUvMjldIGRybS9yb2NrY2hpcDogaW5ub19oZG1pOiBBZGQgYmFzaWMgbW9kZSB2YWxpZGF0
aW9uCj4+PiAgICAgICAgICAgY29tbWl0OiA3MDEwMjk2MjFkNDE0MWQwYzlmOGI4MWE4OGEzN2I5
NWVjODRjZTY1Cj4+PiBbMjYvMjldIGRybS9yb2NrY2hpcDogaW5ub19oZG1pOiBEcm9wIGN1c3Rv
bSBmaWxsX21vZGVzIGhvb2sKPj4+ICAgICAgICAgICBjb21taXQ6IDUwYTNjNzcyYmQ5MjdkZDQw
OWM0ODQ4MzJkZGQ5ZjZiZjAwYjczODkKPj4+Cj4+Pgo+Pj4gRm9yIHJlZmVyZW5jZSwgUm9iIGhh
cyBhcHBsaWVkIHRoZSByazMxMjggY29tcGF0aWJsZSBpbgo+Pj4gaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvcm9iaC9saW51eC5naXQvY29tbWl0Lz9pZD0y
MTk2MGJkYTU5ODUyY2E5NjFmY2QyN2ZiYTlmOTI3NTBjYWNjZDA2Cj4+IHRoYW5rcyBmb3Iga2Vl
cGluZyB0cmFjayBvbiB0aGlzLgo+Pgo+PiBJcyB0aGVyZSBhbnkgcmVhc29uIHRoZSBEVCBwYWNo
ZXMgYXJlbid0IG1lcmdlZCB5ZXQ/IEZyb20gd2hhdCBJIGNhbiBzZWUKPj4gdGhleSBzaG91bGQg
YmUgZmluZSB0byBiZSBtZXJnZWQgaW4geW91ciB2Ni44LWFybXNvYy9kdHMzMiBicmFuY2ggd2hp
Y2ggaXMKPj4gNi43LXJjMSBiYXNlZC4gVGhlcmUgd2FzIG9ubHkgYSB0eHQtYmluZGluZyBhdCB0
aGlzIHBvaW50IGFuZCBpdCdzIHZlcnkKPj4gbGlrZWx5IHRoYXQgYm90aCB0aGUgcm9ja2NoaXAs
aW5uby1oZG1pLnlhbWwtY29udmVyc2lvbiBhbmQgdGhlIHJrMzEyOAo+PiBhZGRpdG9uIHdpbGwg
Ym90aCBsYW5kIGluIDYuOCAodGhleSBhcmUgYm90aCBpbiBsaW51eC1uZXh0KS4gTGludXMnIDYu
OAo+PiBtZXJnZS13aW5kb3cgd2lsbCBvcGVuIGVhcmxpZXN0IG5leHQgd2Vlay4KPiBFeGFjdGx5
IC4uLiBhbmQgdGhlIGFybSBzdWJhcmNoaXRlY3R1cmVzIChSb2NrY2hpcCwgZXRjKSBmZWVkIGlu
dG8gdGhlCj4gbW9yZSBnZW5lcmljIHNvYy10cmVlWzBdICBhbmQgZnJvbSB0aGVyZSBpbiBhIHNl
dCBvZiBwdWxsIHJlcXVlc3RzLgo+Cj4gTm9ybWFsbHkgZXZlcnl0aGluZyBuZWVkcyB0byBnbyB0
byB0aGUgc29jIHRyZWUgYmVmb3JlIC1yYzcgLgo+IFdpdGggdGhlIHdob2xlIHhtYXMgc3R1ZmYs
IEkgc2VudCBzb21lIHN0cmFnZ2xlcnMgaW4gYSBzZWNvbmQgcHVsbAo+IHJlcXVlc3Qgb24gbW9u
ZGF5LCBidXQgdGhhdCB3YXMgYWxyZWFkeSBiZWZvcmUgUm9iIGFwcGxpZWQgdGhlCj4gYmluZGlu
ZyBvbiB0dWVzZGF5Lgo+Cj4gU28gNi44IGRldmljZXRyZWUgc3R1ZmYgaXMgZXNzZW50aWFsbHkg
ZG9uZSBhbmQgdGhlIGR0cyBwYXRjaGVzCj4gZnJvbSB0aGlzIHNlcmllcyB3aWxsIGdvIGluIHRv
IDYuOSAuCj4KPgo+IEhvcGUgdGhhdCBleHBsYWlucyB0aGluZ3MgYSBiaXQgOi0pCkkgYXNzdW1l
ZCAoZm9yIHNvbWUgcmVhc29uKSB0aGF0IHN1Yi1hcmNoaXRlY3R1cmUgbWFpbnRhaW5lcnMgYXJl
IGFsbG93ZWQKdG8gc2VuZCBQUnMgdG8gdGhlIHJlc3BlY3RpdmUgdXBwZXIgdHJlZSB1bnRpbCB0
aGUgbWVyZ2Ugd2luZG93IG9wZW5zIGFuZAoiYWxsIHRoZSByZXN0IiBpcyBkb25lIHdpdGhpbiB0
aGlzwqAgfjIgd2Vla3MuClRoYW5rcyBmb3IgZXhwbGFpbmluZy4KCkFsZXgKPiBIZWlrbwo+Cj4g
WzBdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3NvYy9z
b2MuZ2l0Lwo+Cj4+IEknbSByZWFsbHkgbm90IHByZXNzdXJpbmcgaGVyZSBhbmQgSSdtIGZpbmUg
aWYgdGhleSBsYW5kIGluIDYuOSAtIGl0J3MganVzdAo+PiBmb3IgbXkgdW5kZXJzdGFuZGluZyBm
b3IgZnVydGhlciBzdWJtaXNzaW9ucy4KPj4KPj4gQWxleAo+Pgo+Pj4gQmVzdCByZWdhcmRzLAo+
Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
