Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45B63C54FB9
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Nov 2023 10:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3Cw6wTNAA1TM5VuB6gHGcKIy23ebDbI2nPI6JwcxdQ=; b=2tI2NDxla/EfLt
	DSUuk/ffPClKsmL2IzSFCdhFDFRTvtnx3RwsTdHQ05JSD5V3osXVbao+LgPe5ys1jF+eXarQDDZQ2
	xqRwDCLStnz4JXB/GA5ewFB2vVq7u6sp4oH3cxjS1MEOu9/WtEdLsAAlHm602LtdPTzyuEGoki+Q8
	EP1vNCDafFULcgfS6VKAadigZhzG7BPpmToBic8O4aF4TsiN95BuCHA2JlpFJYnZDzYpMVsxo5kMt
	4hHZZe7uMUwsBoAxseb5yDDin70xUjvmvAKwNZMQPCi+HlpgkdGjRUYEGLNpzMmfwLSwngieQZADo
	Nkk3zypQLYIBz93hoqvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5Nzk-00GGCE-2m;
	Tue, 21 Nov 2023 10:28:40 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5Nzh-00GGAg-01
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Nov 2023 10:28:39 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5079f6efd64so7023563e87.2
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Nov 2023 02:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700562514; x=1701167314; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aVRDDBzCiN0yGxEcaavJVtsWWKQ26OPLgFyvV4vi+f4=;
        b=M94I/yVzrZp9zR0JzJfpcPDWpwkdzwAkyBtoKcO3QdIO4cxjVEithirwbuSU/MwVUH
         VNaec18YDpBCrfozyN6VLkaG4i42q1q/y5xm78kokC1jOus/jHmvLysc98VdlwbQgYTs
         9s3/QnZ6hPEM+jHARTOhC4/1FwOBHpTsdjiRXw5zpvTw+2oqRHUu3GlWDfy025UBx6sU
         Yet217FGXQEgT717s4uXcgIEVZ9Q1+3SyVhvnYCe0k5B/Fk9e3330LfM5e7zE6RItlwn
         Bq4ewcq1usei9t7Ul5znI21d+AgFQjBn+8Wg8ov/Sg4tHO/Vbb7SjeTp1D4Q35aWT+8Z
         gVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700562514; x=1701167314;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aVRDDBzCiN0yGxEcaavJVtsWWKQ26OPLgFyvV4vi+f4=;
        b=wQZN74vCn6fGagw4syqubJbjo9e+zw2QvUELC5LkAylPSvbZiDYrWYUJCo6EAhyHFO
         RsezXhVOR/RuK8YSUlSX/ITk0zfCUTSGp7T8LXNN7Sbtl2JKtIUnlTeWCnPsH5947ks5
         5sdeNFaaBdAxFQaiCpI7xj8soEgJ82quuISI3Xs89pu0ZIKnBuX9aUGSja7iXTK+rNji
         UsEKMHvYJnQnqwxghlHPkYBy5Z7txlaHAFaJuzcYFNy1SeuQB38wu9tO08Tvw2Updk6H
         JDTA+yx4T5t4c47u8XXZZ4p+J7FxhGow3OHvYL8UJe97TilGl21hVVvU45ofe7nqNYXL
         gNtA==
X-Gm-Message-State: AOJu0YxWL8qo5zutwN058Dg7B7OMqLxKZu84VO9oJh7CpXLZWPhutEoP
	duy5zVShDVEsf4GdpY0KBNbDXw==
X-Google-Smtp-Source: AGHT+IGZaa1oBQkynmiTPevxZGR7T6fEl8l2wzgn95wwSGErbTaWSpzMf7eZdzAfeYCOnmxlnDyWLQ==
X-Received: by 2002:a19:384c:0:b0:509:8e9e:a416 with SMTP id d12-20020a19384c000000b005098e9ea416mr5987611lfj.47.1700562513839;
        Tue, 21 Nov 2023 02:28:33 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.11])
        by smtp.gmail.com with ESMTPSA id w11-20020a056402070b00b005489d3b0a58sm2752349edx.55.2023.11.21.02.28.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Nov 2023 02:28:33 -0800 (PST)
Message-ID: <6513aefa-b0be-4a29-8c9c-483822217ebf@linaro.org>
Date: Tue, 21 Nov 2023 11:28:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>
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
 <CAMuHMdW4WPJT0Km7w8RWrGJaztk6QDGoFAn0bdGbrEsw81R1FA@mail.gmail.com>
 <acfdce81-f117-4a1a-a9fe-e2b4b8922adb@linaro.org>
 <bd49f17c-7ebf-4e19-b77b-b5ec95375f7d@amd.com>
 <b48293f3-16e3-4980-b900-add0cb7d69f6@linaro.org>
 <CAMuHMdV_gqmf2=cXmZmYgE3aLxvPBr1DVp0cz0C+YrfBVG-8mg@mail.gmail.com>
 <CAA8EJpo6w9N_opJkfDaF-20zwZmn6JHrYYhakqzLFqVtgXaV=Q@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAA8EJpo6w9N_opJkfDaF-20zwZmn6JHrYYhakqzLFqVtgXaV=Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_022837_055261_CC9DFC9B 
X-CRM114-Status: GOOD (  18.30  )
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

T24gMjEvMTEvMjAyMyAxMToxMywgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBUdWUsIDIx
IE5vdiAyMDIzIGF0IDEwOjA5LCBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsu
b3JnPiB3cm90ZToKPj4KPj4gSGkgS3J6eXN6dG9mLAo+Pgo+PiBPbiBUdWUsIE5vdiAyMSwgMjAy
MyBhdCA4OjQ34oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraQo+PiA8a3J6eXN6dG9mLmtvemxvd3Nr
aUBsaW5hcm8ub3JnPiB3cm90ZToKPj4+IE9uIDIxLzExLzIwMjMgMDg6MzMsIE1pY2hhbCBTaW1l
ayB3cm90ZToKPj4+PiBPbiAxMS8yMC8yMyAyMDozMSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPj4+Pj4gT24gMjAvMTEvMjAyMyAyMDoxOCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+
Pj4+Pj4gT24gTW9uLCBOb3YgMjAsIDIwMjMgYXQgMzo1M+KAr1BNIEtyenlzenRvZiBLb3psb3dz
a2kKPj4+Pj4+IDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Pj4+Pj4+
IE9uIDIwLzExLzIwMjMgMTU6MDEsIE1pY2hhbCBTaW1layB3cm90ZTo+ID4KPj4+Pj4+Pj4gT24g
MTEvMjAvMjMgMDk6NDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4+Pj4+PiBEb2N1
bWVudCBwcmVmZXJyZWQgY29kaW5nIHN0eWxlIGZvciBEZXZpY2V0cmVlIHNvdXJjZXMgKERUUyBh
bmQgRFRTSSksCj4+Pj4+Pj4+PiB0byBicmluZyBjb25zaXN0ZW5jeSBhbW9uZyBhbGwgKHN1Yilh
cmNoaXRlY3R1cmVzIGFuZCBlYXNlIGluIHJldmlld3MuCj4+Pj4+Pgo+Pj4+Pj4+Pj4gK09yZ2Fu
aXppbmcgRFRTSSBhbmQgRFRTCj4+Pj4+Pj4+PiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+
Pj4+Pj4+ICsKPj4+Pj4+Pj4+ICtUaGUgRFRTSSBhbmQgRFRTIGZpbGVzIHNob3VsZCBiZSBvcmdh
bml6ZWQgaW4gYSB3YXkgcmVwcmVzZW50aW5nIHRoZSBjb21tb24KPj4+Pj4+Pj4+ICsoYW5kIHJl
LXVzYWJsZSkgcGFydHMgb2YgdGhlIGhhcmR3YXJlLiAgVHlwaWNhbGx5IHRoaXMgbWVhbnMgb3Jn
YW5pemluZyBEVFNJCj4+Pj4+Pj4+PiArYW5kIERUUyBmaWxlcyBpbnRvIHNldmVyYWwgZmlsZXM6
Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiArMS4gRFRTSSB3aXRoIGNvbnRlbnRzIG9mIHRoZSBlbnRp
cmUgU29DICh3aXRob3V0IG5vZGVzIGZvciBoYXJkd2FyZSBub3QgcHJlc2VudAo+Pj4+Pj4+Pj4g
KyAgIG9uIHRoZSBTb0MpLgo+Pj4+Pj4+Pj4gKzIuIElmIGFwcGxpY2FibGU6IERUU0kgd2l0aCBj
b21tb24gb3IgcmUtdXNhYmxlIHBhcnRzIG9mIHRoZSBoYXJkd2FyZSAoZS5nLgo+Pj4+Pj4+Pj4g
KyAgIGVudGlyZSBTeXN0ZW0tb24tTW9kdWxlKS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gRFRTL0RUU0kg
LSBTT01zIGNhbiBhY3R1YWxseSBydW4gYXMgdGhleSBhcmUgdGhhdCdzIHdoeSBpdCBpcyBmYWly
IHRvIHNheSB0aGF0Cj4+Pj4+Pj4+IHRoZXJlIGRvZXNuJ3QgbmVlZCB0byBiZSBEVFMgcmVwcmVz
ZW50aW5nIHRoZSBib2FyZC4KPj4+Pj4+Pgo+Pj4+Pj4+IEkgaGF2ZSBuZXZlciBzZWVuIGEgU29N
IHdoaWNoIGNhbiBydW4gd2l0aG91dCBlbGFib3JhdGUgaGFyZHdhcmUtaGFja2luZwo+Pj4+Pj4+
IChlLmcuIGNvbm5lY3RpbmcgbXVsdGlwbGUgd2lyZXMgdG8gdGhlIFNvTSBwaW5zKS4gVGhlIGRl
ZmluaXRpb24gb2YgdGhlCj4+Pj4+Pj4gU29NIGlzIHRoYXQgaXQgaXMgYSBtb2R1bGUuIE1vZHVs
ZSBjYW4gYmUgcmUtdXNlZCwganVzdCBsaWtlIFNvQy4KPj4+Pj4+Cj4+Pj4+PiAvbWUgbG9va3Mg
YXQgaGlzIGJvYXJkIGZhcm0uLi4KPj4KPj4+Pj4+IEkgZ3Vlc3MgdGhlcmUgYXJlIChtYW55KSBv
dGhlciBleGFtcGxlcy4uLgo+Pj4+Pgo+Pj4+PiBPSywgSSBuZXZlciBoYWQgc3VjaCBpbiBteSBo
YW5kcy4gQW55d2F5LCB0aGUgU29NIHdoaWNoIGNhbiBydW4KPj4+Pj4gc3RhbmRhbG9uZSAgaGFz
IGEgbWVhbmluZyBvZiBhIGJvYXJkLCBzbyBob3cgZXhhY3RseSB5b3Ugd2FudCB0bwo+Pj4+PiBy
ZXBocmFzZSB0aGUgcGFyYWdyYXBoPwo+Pj4+Cj4+Pj4gV2hhdCBhYm91dD8KPj4+Pgo+Pj4+IDIu
IElmIGFwcGxpY2FibGU6IERUU0kgd2l0aCBjb21tb24gb3IgcmUtdXNhYmxlIHBhcnRzIG9mIHRo
ZSBoYXJkd2FyZSAoZS5nLgo+Pj4+IGVudGlyZSBTeXN0ZW0tb24tTW9kdWxlKS4gRFRTIGlmIHJ1
bnMgc3RhbmRhbG9uZS4KPj4+Cj4+PiBPSywgYnV0IHRoZW4gaXQncyBkdXBsaWNhdGluZyB0aGUg
b3B0aW9uIDMuIEl0IGFsc28gc3VnZ2VzdHMgdGhhdCBTb00KPj4+IHNob3VsZCBiZSBhIERUUywg
d2hpY2ggaXMgbm90IHdoYXQgd2Ugd2FudCBmb3Igc3VjaCBjYXNlLiBTdWNoIFNvTXMgbXVzdAo+
Pj4gaGF2ZSBEVFNJK0RUUy4KPj4KPj4gU28geW91IHdhbnQgdXMgdG8gaGF2ZSBhIG9uZS1saW5l
IDxTb00+LmR0cywgd2hpY2gganVzdCBpbmNsdWRlcyA8U29NPi5kdHNpPwo+IAo+IFdlbGwsIEkg
dGhpbmsgaXQgaXMgaW1wb3NzaWJsZSB0byBydW4gU29NIGRpcmVjdGx5LiBUaGVyZSBpcyBhIGNh
cnJpZXIKPiBib2FyZCBhbnl3YXksIHdoaWNoIGluY2x1ZGVzIGF0IGxlYXN0IHJlZ3VsYXRvcnMu
IFNvLCBJIGd1ZXNzLCB0aGUKPiBTb00uZHRzIHdpbGwgbm90IGJlIGEgb25lbGluZSBmaWxlLgoK
R2VlcnQgY2xhaW1zIGhlIGhhcyBTb00gd2l0aCBhbiBVU0IgY29ubmVjdG9yIHdoaWNoIGNhbiBy
dW4gd2hlbiBwb3dlcgppcyBzdXBwbGllZCBieSB0aGF0IFVTQiBjb25uZWN0b3IuIEkgY2FuIGlt
YWdpbmUgYSBDUFUgYm9hcmQgKHNvIGEgU29NCmluIGZvcm1hdCBvZiBhIGJvYXJkLCBub3Qgc21h
bGwgRElNTS1jYXJkKSB3aGljaCBoYXMgY29ubmVjdG9ycyBlLmcuIGZvcgpwb3dlciBhbmQgYSBz
bG90IGZvciBleHRlcm5hbCBtb3RoZXJib2FyZCBmb3IgYWRkaXRpb25hbCwgb3B0aW9uYWwKaW50
ZXJmYWNlcy4KCkxvb2sgYXQgcGljdHVyZSBvbiAxNHRoIHBhZ2U6Cmh0dHBzOi8vd3d3LnJlbmVz
YXMuY29tL3VzL2VuL2RvY3VtZW50L21hdC9yemEybS1jcHUtYm9hcmQtdXNlcnMtbWFudWFsCgpU
aGlzIGxvb2tzIGxpa2Ugc29tZSBjYXNlIG9mIFNvTSwgYWx0aG91Z2ggbWF5YmUgbm90IHRoYXQg
cG9wdWxhcgpvdXRzaWRlIG9mIFJlbmVzYXMgOikKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
