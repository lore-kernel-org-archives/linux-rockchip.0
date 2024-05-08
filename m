Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0113CC25B5F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 12:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/3ghas2xQRm8F9fUwIYlM4ZhpMQj+6ojnnoeagsZ8A=; b=IreK/mWqFfdoNF
	kjPH4EctH4DzuHGNfSrqJqEW/x4y1MHn0gwU3iY+uhS3weDA2M476tK02qa9k7hMMnSKv4dGnCTpV
	u2gBo4CN1N4E+wWCC4ftlyNN5ztJSNU2Tpvdl45XfMa+Rm811jEPPRsxBp/qOrwI3lBd5uHSldrfG
	YQm3chvAtgpoUbUU4hUrL/G0oMYT7jLqfGrgy0mEUVlyNQ5myw3M0SyQJuFrsGA1jj19ogw4ygs5q
	fF3WoW6vAe3358MxtOI7RIS56pIPe4VGW1354rxfCnvAbyvdslWUhQ1ugVvD5WVLR0BTq4jSIfzhk
	l8DW4zz31WrqPK+vefWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4glp-0000000FW4T-0rGy;
	Wed, 08 May 2024 12:51:41 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4glk-0000000FW2n-2jG8;
	Wed, 08 May 2024 12:51:39 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5b25cee6b7bso137432eaf.3;
        Wed, 08 May 2024 05:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715172694; x=1715777494; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hktVQAvADFWmrIMeYBp/UjfrNNVGa5etZaPbkoRNU1U=;
        b=U8Ns+tpcGn0R08q8F273hAitXhrMICErmahzS9gpP4Bio5YFl9qQnRDhLivloGx7n/
         0B0Jq55YOCnLoQ/+TcsKtKyJwtVqIT1/BU9tsxTu7HvOi9ibkCtBXkl3Jmnt9GnRYHAZ
         5y/XDpb8u2wbwUNdGtqR3lgfmvL01KC9/Knpl3pvbftuTj7Wu7/vlSl55w83TpKf7aDz
         Z+6z3nupsbwdCHjB7C542CXx9+z3cEa0qx4paFRyv9MyhsoOW3H2Lw5knyf1xGz8cUSc
         f8ZNp4V9sCLjp3s9hDDr1A6Plm9/rG45IjToyrmsvB6Htbq7n18eg8drnjQC3QBgGMr2
         sc/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715172694; x=1715777494;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hktVQAvADFWmrIMeYBp/UjfrNNVGa5etZaPbkoRNU1U=;
        b=FIasnTg/bSc9lIN9f1nW+FeQUnAIrkyg4E4s8tySj+kmz8pnZvv3Y7hnSYAFGVg2zi
         0nbJK6+OF50ojM37tEpZ6E1CZhFcTTklebF9S05rNvRIy26i3iE82nmZZEdvse2U9MGu
         jVG1KXXfdZfmuWqrd89jvU7yfEEYegn4d20ODX1zXt3vtoIC1MSToXxvggsjyuBWnrXV
         rAsjVpW2kQj+QpG4xaE4p+p18jboIay21xsIObveKFIbHFC2gYzuoS1zof9EcGgHs4Tv
         pzkGqT8t5p0400iPjdFouUoBy37IPxVm1bK+o+BI8hs0VX3o/ffxzHe8SnN4fNVpEGAz
         gnmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdQgEZiWH4ksUCGLZsFZ/b3aqMJCzsyBfFNekHIuAYbIz7MgUaA2xhdodBMAMmPrYoo9YNLZkoA7FsymD9vdakU4b8GGdROIGi8wA9v+A0XWcGcmk97egiXgAy4PxJ2NnK9BHkdiHoS1zDwot5O3xY9wBC/5hGyOw=
X-Gm-Message-State: AOJu0YzoeB8M7XpSLW3WSLMzzNr1i7nX+EXN+0xcD0Pm/KN4G9+g/AFK
	EITbJAZKgKh9fS7Nr+qSM8lgClrlgK2PyqWE68xb8+CUUh2XVW4x2miikjx7h2q6rtYSWSyOpKg
	wHAk1uM7u679HqeJdQbr374y9IaM=
X-Google-Smtp-Source: AGHT+IHXyYtAELOQYY1GekTOBPTT6BceVgA1zGGyIv2RI6xCofIfdNTh/HCPD5CnNLFokQaVb0DNiyH4RAKwGaYgVkk=
X-Received: by 2002:a4a:aa09:0:b0:5af:c4b3:7c6d with SMTP id
 006d021491bc7-5b24d5e69dfmr2472033eaf.5.1715172694506; Wed, 08 May 2024
 05:51:34 -0700 (PDT)
MIME-Version: 1.0
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com> <2543817.5xW6y1K4kI@bagend>
 <CABjd4Yw-JA5=SfcgtVNYZN37hFbqf14Ut1yHTSz1YZiZ3NQ-pw@mail.gmail.com>
 <CANAwSgTU7UF_RaNnVSZR7SehQqC7Eo6D=JqT11gN7jK2diN_Ug@mail.gmail.com>
 <a1fb157c88f420cd85d56edff2a4d85b@manjaro.org> <CABjd4YwHGYRrpMFn1uoQMRh3Tp4-py111tZiCGgf7afWxNGXnQ@mail.gmail.com>
 <36ecf59460430bb7267b71c1f49fe123@manjaro.org>
In-Reply-To: <36ecf59460430bb7267b71c1f49fe123@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 8 May 2024 18:21:17 +0530
Message-ID: <CANAwSgTKkFQNW5egYu5cdWx4nkwVL1tXigYUvdnAJRUOdCrxpw@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on
 all RK3588 boards
To: Dragan Simic <dsimic@manjaro.org>
Cc: Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_055136_717847_C6B95C3C 
X-CRM114-Status: GOOD (  52.38  )
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

SGkgRHJhZ2FuLCBBbGV4ZXksCgpPbiBXZWQsIDggTWF5IDIwMjQgYXQgMTg6MDgsIERyYWdhbiBT
aW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIEFsZXhleSwKPgo+IE9u
IDIwMjQtMDUtMDggMTQ6MzAsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gT24gV2VkLCBNYXkg
OCwgMjAyNCBhdCAzOjQ24oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdy
b3RlOgo+ID4+IE9uIDIwMjQtMDUtMDggMTM6NDAsIEFuYW5kIE1vb24gd3JvdGU6Cj4gPj4gPiBP
biBNb24sIDYgTWF5IDIwMjQgYXQgMTg6MjQsIEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPj4gPj4gT24gTW9uLCBNYXkgNiwgMjAyNCBhdCA0OjI54oCvUE0gRGll
ZGVyaWsgZGUgSGFhcwo+ID4+ID4+IDxkaWRpLmRlYmlhbkBja25vdy5vcmc+IHdyb3RlOgo+ID4+
ID4+ID4gT24gTW9uZGF5LCA2IE1heSAyMDI0IDExOjM2OjMzIENFU1QgQWxleGV5IENoYXJrb3Yg
d3JvdGU6Cj4gPj4gPj4gPiA+IFRoaXMgZW5hYmxlcyB0aGUgb24tY2hpcCB0aGVybWFsIG1vbml0
b3Jpbmcgc2Vuc29yIChUU0FEQykgb24gYWxsCj4gPj4gPj4gPiA+IFJLMzU4OChzKSBib2FyZHMg
dGhhdCBkb24ndCBoYXZlIGl0IGVuYWJsZWQgeWV0LiBJdCBwcm92aWRlcyB0ZW1wZXJhdHVyZQo+
ID4+ID4+ID4gPiBtb25pdG9yaW5nIGZvciB0aGUgU29DIGFuZCBlbWVyZ2VuY3kgdGhlcm1hbCBz
aHV0ZG93bnMsIGFuZCBpcyB0aHVzCj4gPj4gPj4gPiA+IGltcG9ydGFudCB0byBoYXZlIGluIHBs
YWNlIGJlZm9yZSBDUFUgRFZGUyBpcyBlbmFibGVkLCBhcyBoaWdoIENQVQo+ID4+ID4+ID4gPiBv
cGVyYXRpbmcgcGVyZm9ybWFuY2UgcG9pbnRzIGNhbiBvdmVyaGVhdCB0aGUgY2hpcCBxdWlja2x5
IGluIHRoZQo+ID4+ID4+ID4gPiBhYnNlbmNlIG9mIHRoZXJtYWwgbWFuYWdlbWVudC4KPiA+PiA+
PiA+ID4KPiA+PiA+PiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtA
Z21haWwuY29tPgo+ID4+ID4+ID4gPiAtLS0KPiA+PiA+PiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzICAgICAgICAgICAgICAgfCA0ICsrKysKPiA+
PiA+PiA+ID4gIDggZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKQo+ID4+ID4+ID4gPgo+
ID4+ID4+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtcm9jay01Yi5kdHMKPiA+PiA+PiA+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1yb2NrLTViLmR0cyBpbmRleAo+ID4+ID4+ID4gPiBiOGUxNWI3NmE4YTYuLjIxZTk2
YzIxMmRkOCAxMDA2NDQKPiA+PiA+PiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+PiA+PiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+PiA+PiA+ID4gQEAgLTc0Miw2ICs3
NDIsMTAgQEAgcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4gPj4gPj4gPiA+ICAgICAgIH07Cj4gPj4g
Pj4gPiA+ICB9Owo+ID4+ID4+ID4gPgo+ID4+ID4+ID4gPiArJnRzYWRjIHsKPiA+PiA+PiA+ID4g
KyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4+ID4+ID4gPiArfTsKPiA+PiA+PiA+ID4gKwo+ID4+
ID4+ID4gPiAgJnVhcnQyIHsKPiA+PiA+PiA+ID4gICAgICAgcGluY3RybC0wID0gPCZ1YXJ0Mm0w
X3hmZXI+Owo+ID4+ID4+ID4gPiAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPj4gPj4gPgo+ID4+
ID4+ID4gSSBidWlsdCBhIGtlcm5lbCB3aXRoIHYzIG9mIHlvdXIgcGF0Y2ggc2V0IGFuZCBzb21l
b25lIHRlc3RlZCBpdCBvbiBhIFJPQ0sgNUIKPiA+PiA+PiA+ICdmb3IgbWUnIGFuZCBpdCBoYWQg
dGhlIGZvbGxvd2luZyBsaW5lIGluIGRtZXNnOgo+ID4+ID4+ID4KPiA+PiA+PiA+IHJvY2tjaGlw
LXRoZXJtYWwgZmVjMDAwMDAudHNhZGM6IE1pc3Npbmcgcm9ja2NoaXAsZ3JmIHByb3BlcnR5Cj4g
Pj4gPj4gPgo+ID4+ID4+ID4gSSdtIGd1ZXNzaW5nIHRoYXQgdHVybmVkIHVwIGR1ZSB0byBlbmFi
bGluZyB0c2FkYywgYnV0IChhbHNvKSBpbiB2NCBJIGRpZG4ndAo+ID4+ID4+ID4gc2VlIGEgY2hh
bmdlIHdydCAicm9ja2NoaXAsZ3JmIi4KPiA+PiA+PiA+IFNob3VsZCB0aGF0IGJlIGRvbmU/IChh
c2tpbmc7IEkgZG9uJ3Qga25vdykKPiA+PiA+Pgo+ID4+ID4+IEknbSBnZXR0aW5nIHRoZSBzYW1l
LiBOZWl0aGVyIHRoZSBtYWlubGluZSBUU0FEQyBkcml2ZXIgWzFdLCBub3IgdGhlCj4gPj4gPj4g
ZG93bnN0cmVhbSBvbmUgWzJdIHNlZW1zIHRvIHVzZSB0aGUgZ3JmIHBvaW50ZXIgb24gUkszNTg4
IGF0IGFsbC4gSXQKPiA+PiA+PiBzdGlsbCB3b3JrcyBpbiBzcGl0ZSBvZiB0aGF0IHdhcm5pbmcs
IGFsdGhvdWdoIEkgY2FuJ3Qgc2VlIGhvdyAob3IgaWYpCj4gPj4gPj4gaXQgY29uZmlndXJlcyB0
aGUgcmVzZXQgbWVjaGFuaXNtIHdpdGhvdXQgdGhvc2UgR1JGIHJlZ2lzdGVycy4KPiA+PiA+Pgo+
ID4+ID4+IEJlc3QgcmVnYXJkcywKPiA+PiA+PiBBbGV4ZXkKPiA+PiA+Pgo+ID4+ID4+IFsxXQo+
ID4+ID4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rv
cnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMj
bjgxOAo+ID4+ID4+IFsyXQo+ID4+ID4+IGh0dHBzOi8vZ2l0aHViLmNvbS9yYWR4YS9rZXJuZWwv
YmxvYi9zdGFibGUtNS4xMC1yb2NrNS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5j
I0w5NjEKPiA+PiA+Pgo+ID4+ID4KPiA+PiA+IElmIHRoZSBmb2xsb3dpbmcgY2hhbmdlcyBmaXgg
dGhlIHdhcm5pbmcuCj4gPj4gPgo+ID4+ID4gQ2hlY2tpbmcgdGhlIFJvY2tjaGlwIFJLMzU4OCBU
Uk0gVjEuMC1QYXJ0MS0yMDIyMDMwOS5wZGYKPiA+PiA+IFBNVTFHUkZfU09DX0NPTjMgd2hpY2gg
aGFzIHRzYWRjX3NodXRfcmVzZXRfdHJpZ2dlcl9lbiBiaXQKPiA+PiA+IHRvIGNvbnRyb2wgdGhl
IEVuYWJsZSBUU0FEQyBzaHV0IHJlc2V0IHRyaWdnZXIgZm9yIEREUiBmYWlsIHNhZmUuCj4gPj4g
Pgo+ID4+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
cy5kdHNpCj4gPj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNp
Cj4gPj4gPiBpbmRleCA4NWMyNWQ1ZWZkYWQuLjU0OTBhNDRlMDkzZSAxMDA2NDQKPiA+PiA+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4gPj4gPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+ID4+ID4gQEAgLTI2
NjIsNiArMjY2Miw3IEBAIHRzYWRjOiB0c2FkY0BmZWMwMDAwMCB7Cj4gPj4gPiAgICAgICAgICAg
ICAgICAgcm9ja2NoaXAsaHctdHNodXQtdGVtcCA9IDwxMjAwMDA+Owo+ID4+ID4gICAgICAgICAg
ICAgICAgIHJvY2tjaGlwLGh3LXRzaHV0LW1vZGUgPSA8MD47IC8qIHRzaHV0IG1vZGUgMDpDUlUK
PiA+PiA+IDE6R1BJTyAqLwo+ID4+ID4gICAgICAgICAgICAgICAgIHJvY2tjaGlwLGh3LXRzaHV0
LXBvbGFyaXR5ID0gPDA+OyAvKiB0c2h1dCBwb2xhcml0eQo+ID4+ID4gMDpMT1cgMTpISUdIICov
Cj4gPj4gPiArICAgICAgICAgICAgICAgcm9ja2NoaXAscG11ID0gPCZwbXUxZ3JmPjsKPiA+PiA+
ICAgICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnRzYWRjX2dwaW9fZnVuYz47Cj4gPj4gPiAg
ICAgICAgICAgICAgICAgcGluY3RybC0xID0gPCZ0c2FkY19zaHV0PjsKPiA+PiA+ICAgICAgICAg
ICAgICAgICBwaW5jdHJsLW5hbWVzID0gImdwaW8iLCAib3Rwb3V0IjsKPiA+Pgo+ID4+IEJhc2lj
YWxseSwgdGhlIHJvY2tjaGlwX3RoZXJtYWwgZHJpdmVyIGRvZXNuJ3QgdXNlIEdSRiBhdCBhbGwg
b24KPiA+PiB0aGUgUkszNTg4KHMpLCBzbyB2aXJ0dWFsbHkgYW55IHZhbHVlIHNwZWNpZmllZCBh
cyAicm9ja2NoaXAscG11Igo+ID4+IGNhbiBlbGltaW5hdGUgdGhlIHdhcm5pbmcuCj4gPgo+ID4g
VG8gbWUsIHNwZWNpZnlpbmcgYW4gYXJiaXRyYXJ5IEdSRiBpbiB0aGUgZGV2aWNlIHRyZWUganVz
dCB0byBzaWxlbmNlCj4gPiBhIHdhcm5pbmcgdGhhdCB0aGUgY3VycmVudCBkcml2ZXIgZW1pdHMg
c291bmRzIGJhZC4gSWYgdGhlIEdSRiBpcyBub3QKPiA+IG5lZWRlZCBmb3IgVFNBREMgaW5pdGlh
bGl6YXRpb24gb24gUkszNTg4LCB0aGVuIGl0IHNob3VsZCBub3QgYmUgaW4KPiA+IHRoZSBkZXZp
Y2UgdHJlZSAoYW5kIGl0IGxvb2tzIGxpa2UgdGhlIGNhc2UgaGVyZSkgLSBvdGhlcndpc2UgdGhl
Cj4gPiBkZXZpY2UgdHJlZSBjZWFzZXMgdG8gYmUgYSB0cnV0aGZ1bCBkZXNjcmlwdGlvbiBvZiB0
aGUgaGFyZHdhcmUuCj4KPiBBZnRlciB0aGlua2luZyBhIGJpdCBtb3JlIGFib3V0IGl0LCBJIHRo
aW5rIHlvdSdyZSByaWdodC4gIElmIHRoZQo+IHJvY2tjaGlwX3RoZXJtYWwgZHJpdmVyIGV2ZXIg
Z2V0cyBjaGFuZ2VkIHRvIHJlcXVpcmUgdXNlIG9mIEdSRiBvbgo+IHRoZSBSSzM1ODgocyksIG9u
bHkgdGhlbiBhZGRpbmcgdGhhdCBwcm9wZXJ0eSB0byB0aGUgRFQgd291bGQgYmUKPiB0aGUgcmln
aHQgdGhpbmcgdG8gZG8uCj4KPiA+IEknbSBub3Qgc3VyZSBpZiB3ZSBuZWVkIHRoYXQgIkREUiBm
YWlsIHNhZmUiIGxvZ2ljIG1lbnRpb25lZCBpbiB0aGUKPiA+IFRSTSB0aGF0IEFuYW5kIHF1b3Rl
ZCwgZ2l2ZW4gdGhhdCBuZWl0aGVyIFJvY2tjaGlwIGRvd25zdHJlYW0gbm9yCj4gPiBjdXJyZW50
IG1haW5saW5lIGRyaXZlciBpbXBsZW1lbnQgaXQsIGFuZCBmdXJ0aGVybW9yZSBub25lIG9mIHRo
ZQo+ID4gb3RoZXIgU29DIHJldmlzaW9ucyBzdXBwb3J0ZWQgYnkgdGhlIGRyaXZlciBtZW50aW9u
IGl0LiBJZiB3ZSBkbyBpbgo+ID4gZmFjdCBuZWVkIGl0LCB3ZSBzaG91bGQgcHJvYmFibHkgZmly
c3QgdGVzdCBpdCBhbG9uZyB3aXRoIHJlc3BlY3RpdmUKPiA+IGRyaXZlciBjb2RlIGJlZm9yZSBj
b21taXR0aW5nIHRvIGFuIHVwc3RyZWFtIERUIGFuZCB0aHVzIG1ha2luZyBpdAo+ID4gcGFydCBv
ZiB0aGUgQUJJLgo+ID4KPiA+IElNTyB0aGlzIGlzIG1vcmUgb2YgYSBkcml2ZXIgaXNzdWUgdGhh
biBhIGRldmljZSB0cmVlIGlzc3VlOiBtYXliZSBhCj4gPiBzbWFsbCBwYXRjaCB0byBkZW1vdGUg
dGhpcyB3YXJuaW5nIHRvIGFuIGluZm8gbWVzc2FnZSB3b3VsZCBiZSBiZXR0ZXI/Cj4gPiBJdCdz
IGhhcm1sZXNzIGFueXdheS4KPgo+IEFmdGVyIGhhdmluZyBzZWNvbmQgdGhvdWdodHMsIEknbGwg
c2VlIHRvIGltcHJvdmUgdGhlIHJvY2tjaGlwX3RoZXJtYWwKPiBkcml2ZXIgdG8gZW1pdCB0aGF0
IHdhcm5pbmcgb25seSB3aGVuIGhhdmluZyAicm9ja2NoaXAsZ3JmIiBzcGVjaWZpZWQKPiBpcyBh
Y3R1YWxseSBuZWVkZWQgZm9yIHRoZSBwYXJ0aWN1bGFyIFJvY2tjaGlwIFNvQy4gIFRoYXQncyBo
b3cgaXQKPiBzaG91bGQKPiBiZWhhdmUsIHllbGxpbmcgYWJvdXQgdGhlIHdyb25nIGhhcmR3YXJl
IGRlc2NyaXB0aW9uIG9ubHkgd2hlbiB0aGF0J3MKPiBhY3R1YWxseSB0aGUgY2FzZS4KCldlIG5l
ZWQgdG8gaGFuZGxlIHRoZSBHUkYgVFNBREMgZm9yIHJrMzU4OCB0bXUgZHJpdmVyLgoKRm9yIHJr
MzU2OCB3ZSBjb250cm9sIHRoZSBHUkYgVFNBREMgd2hpY2ggc2VlbXMgdG8gYmUgbWlzc2luZyBp
biByazM1ODgKCltbMF0gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuOC45L3Nv
dXJjZS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jI0w3OTgKClRoYW5rcwotQW5h
bmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
