Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A16DBC77B73
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Apr 2023 07:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhFqTiCtiRMzbuMqLhkh9jFclUdulCF2lQMEidsGeN8=; b=PuwjQdHSaLVGSp
	bMiAiew6ngsGgvznW/CGxNFYXlFjqKf+2NVz0OTPGKMrkx0MJot6tix3G8phhvO7X4+M+bsZFd2iD
	kGDXwPfNmy5AvCjYf6JRjGCD+9RhK7Zwx57ZZ/QQ2ta/knA4Q6BvwTQhEyRDmyUANCmX33rCQ0EkV
	pXwxqkqNl2P8JQIuDPdHcmQFE9IwqcCI3ZIFGbW7E9Ll3BPnvTgqDXiyQuYD/6jZAk7BtgSxck7Nc
	yb0y1kIdfobriRq2dvws8VLPmI8CmgArxN1L4v1WcDZdUXnDk/OqQKd6piqhc5fEJ4I1MRxKUkyQ4
	2h+0I7HfNrNODP6OlfNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prwBl-005h7i-24;
	Thu, 27 Apr 2023 07:37:13 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prwBg-005h56-1a;
	Thu, 27 Apr 2023 07:37:09 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-2f95231618aso5151754f8f.1;
        Thu, 27 Apr 2023 00:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682581024; x=1685173024;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oxehQfcmJryVNtOnqjPU8dcl4daH8QR4oPGx8PetHgc=;
        b=A9A1kf0aU5n5maWaTYSpwFq+dFDGkdZCkeAcCwkLD9kYlmE85jcd+hdkN4nKiQWQe+
         RVnhbx9f5wFVudnxQnUsSqLoUc+G3JM+O42GX9gNZfKeD8PN2HWTR2M+4STfmZxQqx7A
         ULQDVvEq1TUhKtYHjEQgZl7Jn4EVzSTkmRE2Oecxpq3Lqgdq1vonGcIN3aUKzLbJD2io
         FpSv3YS013V0nX3CVl5ec1a5D04GehDx526Kyx7RUB+XA1EFrTaBRu+mhMmPRXhFDy36
         7PFiOvnoAlRW92DFpieLR1YprFoJEGerJot6aeQ7uIG8PKhFuzZejCpTBKtwwOV0mzu8
         YerA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682581024; x=1685173024;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oxehQfcmJryVNtOnqjPU8dcl4daH8QR4oPGx8PetHgc=;
        b=WZMJBNagbdvRsGm5sXpq5Ea1iWNxHRmHUmTb5MaXCTQr0khtz+3EuXcx/jATSXJzDE
         Gb/ptTJxkUObjUcgOe0O2JuD8bqDFCRMuzDWPpakmL9GOT60TmtkwgPrOdtR5XwYj1WK
         XSnnhqIShrSI2OidVN+L6uwys9rxq7W1s2sb22QvmrlFr1/ZVLTwtcsYV5Lsve8nUTOl
         uy2vtVVlmKHAyCsOH787BdInO2xBrTGJO2CB5fUIqjakkOM7iTDuxns4HrPdHqamadNs
         0ODhSHULE+OoZuAfXykDplUT5vwpZR0GTTvuYrMNXKxWOgZxOHdRz8abSMisKkpNjIh3
         GvMw==
X-Gm-Message-State: AC+VfDzKG7XS4lEk9yfaMOIjTKxjl60U16fU1zAOi/g2R8Kr83GoG8Ds
	qHAjk5SfR9GdNgmXnQJRKxQ=
X-Google-Smtp-Source: ACHHUZ6j08kRlenxNEOxuCRn5D3dpBgWAxIWK0iOstSqplZ+yyO01YFGKwmwZRllZUj/HWkWlwS2Ow==
X-Received: by 2002:a5d:5312:0:b0:2f0:df59:1ea7 with SMTP id e18-20020a5d5312000000b002f0df591ea7mr504125wrv.31.1682581024316;
        Thu, 27 Apr 2023 00:37:04 -0700 (PDT)
Received: from [192.168.1.135] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id i6-20020a5d6306000000b002fed865c55esm17706733wru.56.2023.04.27.00.37.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 00:37:03 -0700 (PDT)
Message-ID: <1cfc224b-f8b0-3143-42d2-188b56368c61@gmail.com>
Date: Thu, 27 Apr 2023 09:37:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Content-Language: en-US, ca-ES, es-ES
To: Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Cc: Ansuel Smith <ansuelsmth@gmail.com>, Krzysztof Kozlowski
 <krzk@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-omap@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
 linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@dh-electronics.com, linux-mediatek@lists.infradead.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 linux-oxnas@groups.io, linux-arm-msm@vger.kernel.org,
 linux-unisoc@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_003708_535106_D105CB4A 
X-CRM114-Status: GOOD (  19.96  )
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

CgpPbiAyNS8wNC8yMDIzIDE3OjU3LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBUdWUsIEFwciAy
NSwgMjAyMyBhdCAyOjI44oCvQU0gR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhr
Lm9yZz4gd3JvdGU6Cj4+Cj4+IEhpIFJvYiwKPj4KPj4gT24gVHVlLCBBcHIgMjUsIDIwMjMgYXQg
MTI6MTbigK9BTSBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPiB3cm90ZToKPj4+IEkg
aGF2ZSBhIHNjcmlwdFsxXSB0aGF0IGRvZXMgdGhlIGNvbnZlcnNpb24gd3JpdHRlbiB0aGUgbGFz
dCB0aW1lIHRoaXMKPj4+IGNhbWUgdXAuIEp1c3QgaGF2ZSB0byBhZ3JlZSBvbiBkaXJlY3Rvcnkg
bmFtZXMuIEkgdGhpbmsgdGhlIGVhc2llc3QKPj4+IHdvdWxkIGJlIGZvciBBcm5kL09sb2YgdG8g
cnVuIGl0IGF0IHRoZSBlbmQgb2YgYSBtZXJnZSB3aW5kb3cgYmVmb3JlCj4+PiByYzEuCj4+Cj4+
ICJlbWV2MiIgYW5kICJzaDciIGFyZSBtaXNzaW5nIGZvciByZW5lc2FzLgo+IAo+IE5vIGRvdWJ0
IGl0J3MgYmVlbiBiaXRyb3R0aW5nIChvciBJIG1heSBoYXZlIG1pc3NlZCBzb21lKS4KPiAKPj4g
RG9lcyB5b3VyIHNjcmlwdCBhbHNvIGNhdGVyIGZvciAuZHRzIGZpbGVzIG5vdCBtYXRjaGluZyBh
bnkgcGF0dGVybiwKPj4gYnV0IGluY2x1ZGluZyBhIC5kdHNpIGZpbGUgdGhhdCBkb2VzIG1hdGNo
IGEgcGF0dGVybj8KPiAKPiBJIGFzc3VtZSBJIGJ1aWx0IGV2ZXJ5dGhpbmcgYWZ0ZXIgbW92aW5n
LCBidXQgbWF5YmUgbm90Li4uCj4gCj4gVGhhdCdzIGFsbCBqdXN0ICJkZXRhaWxzIi4gRmlyc3Qs
IHdlIG5lZWQgYWdyZWVtZW50IG9uIGEpIG1vdmluZwo+IHRoaW5ncyB0byBzdWJkaXJzIGFuZCBi
KSBkb2luZyBpdCAxLWJ5LTEgb3IgYWxsIGF0IG9uY2UuIFNvIGZhciB3ZSd2ZQo+IGJlZW4gc3R1
Y2sgb24gYSkgZm9yIGJlaW5nICd0b28gbXVjaCBjaHVybicuCj4gCgpJIHRoaW5rIGl0IG1ha2Vz
IHNlbnNlIHRvIG1vdmUgdGhlbSBhbmQgcHJvYmFibHkgdGhlIGJlc3Qgd2F5IHRvIGRvIHNvIGlz
LCBhcyAKeW91IHByb3Bvc2VkOiB0aGF0IEFybmQgb3IgT2xvZiBydW4gdGhlIHNjcmlwdCB0byBt
b3ZlIHRoZW0ganVzdCBiZWZvcmUgLXJjMQoKUmVnYXJkcywKTWF0dGhpYXMKCj4gT25lIG5pY2Ug
dGhpbmcgd2l0aCBzdWJkaXJzIGlzICdtYWtlIENIRUNLX0RUQlM9eQo+IGFyY2gvYXJtL2Jvb3Qv
ZHRzL2Zvby8nIGNhbiBidWlsZCBldmVyeXRoaW5nIGZvciBhIHBsYXRmb3JtIGZhbWlseQo+IHdp
dGhvdXQgaGF2aW5nIHRvIG1lc3Mgd2l0aCB0aGUga2NvbmZpZy4gTWF5YmUgbW9zdCBmb2xrcyBk
b24ndCBjYXJlLAo+IGJ1dCBJIGRvLiBNeSBDSSBqb2IgcnVubmluZyBzY2hlbWEgY2hlY2tzIGxv
b2tzIGxpa2UgdGhpcyB0byBkZWFsIHdpdGgKPiBncm91cGluZyB0aGUgYXJtIGR0cyBmaWxlcyAo
dGhpcyBsaXN0IGlzIHByb2JhYmx5IG91dCBvZiBkYXRlIHRvbywgYnV0Cj4gbGVzcyBzbyk6Cj4g
Cj4gICAgICAgICAgaWYgWyAiJEFSQ0giID0gImFybSIgXTsgdGhlbgo+ICAgICAgICAgICAgICBW
RU5ET1JfTElTVD0iYWxwaGFzY2FsZSBhbHBpbmUgYXJ0cGVjIGFzcGVlZCBheG0gYmNtIGN4OQo+
IChlY3h8aGlnaGJhbmspIFwKPiAgICAgICAgICAgICAgICBlZm0gZXA3IGlteDEgaW14MjMgaW14
MjggaW14MjcgaW14NSBpbXg2IGlteDcgbHMgdmYgcWNvbSBcCj4gICAgICAgICAgICAgICAgKGFt
M3xhbTR8YW01fGRyYXxrZXlzdG9uZXxvbWFwfGNvbXB1bGFifGxvZ2ljcGR8ZWxwaWRhfG1vdG9y
b2xhLWNwY2FwfGRhfGRtKQo+IFwKPiAgICAgICAgICAgICAgICBuc3BpcmUgYXJtYWRhIGRvdmUg
a2lya3dvb2Qgb3Jpb24gbXZlYnUgbW1wMiBiZXJsaW4gcHhhCj4gKGFybS18aW50ZWd8bXBzfHZl
KSBcCj4gICAgICAgICAgICAgICAgKGF0OTF8c2FtYXx1c2JffHRueV98bXBhMTYwMHxhbmltZW9f
aXB8YWtzLWNkdXxldGhlcm51dDV8ZXZrLXBybzN8cG05ZzQ1fGdlODYpCj4gXAo+ICAgICAgICAg
ICAgICAgIGV4eW5vcyBzM2MgczVwIGdlbWluaSAoaGlzaXxoaTN8aGlwKSBtdCBtZXNvbiBtb3hh
IG51dm8KPiBscGMgb3dsIG94OCBcCj4gICAgICAgICAgICAgICAgKHI3fHI4fHI5fGVtZXYyfHNo
NzNhfGdyLXxpd2cpIChya3xydjExKSBzb2NmcGdhIHN0bQo+IChzdGl8c3QtcGluKSBzdGUgXAo+
ICAgICAgICAgICAgICAgIHNwZWFyIChzdW58YXhwKSB0ZWdyYSB1bmlwaCAodnQ4NTAwfHdtOCkg
eGVuIHp5bnEiCj4gICAgICAgICAgZWxzZQo+ICAgICAgICAgICAgICBWRU5ET1JfTElTVD0kKGxz
IGFyY2gvJEFSQ0gvYm9vdC9kdHMvIHwgeGFyZ3MpCj4gICAgICAgICAgZmkKPiAKPiBSb2IKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
