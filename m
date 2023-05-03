Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18C7EC77B7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 12:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+zFAcq/Cs6XvuvNppNMC+DOy0b8aEi4UXX6BZxPZLg=; b=uly5EZWVra2cfg
	9xiUbiGrcoLtSuEQh9+cZS9tE8spT/DXagucECufeA4ryhCGBn4uK2AFm4m3ViN397H6O5dQW+7sX
	ygUbY2qnunG+zquYBe6Prl7h81vfXPQNYLA/Ykd43288A+DC0MDtbN7yPs2KX9L3z+pUq0xioEc0S
	nbRA9Fj7nDAJIrzcHZPKav44H0K5tRJIHBjWvKe9f9eqYrEVyz4GDgEelKkr0ukiuCFxcOSz3J0U/
	xQdnKapnB5+n1cgAFwzWW3qLGt5UPJ49KVIfPg60r7wbsUihwhurf6n9vdqwUnAwOW1eCqalUM+yg
	Z43tR5AQ8WGCTcHuvGaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puBAl-004UgM-1E;
	Wed, 03 May 2023 12:01:27 +0000
Received: from smtp2.axis.com ([195.60.68.18])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puBAh-004UeI-0Z;
	Wed, 03 May 2023 12:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1683115284;
  x=1714651284;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=Ix7N5q3ZVqpzch8HgBmAf+2RPj4ErJP5ku/rS3Udqzo=;
  b=AcVKgBxHfhQn4WeIYDWNjsO8TyCEHpjZkJDDAPlpqbzNutOYP+WJjpGt
   DQ4Trc98lIuNZX/SurcxDMTnTRo2hPNABV2PbBHmr+V9kKvana9Sr35lY
   tA1J55zSOSgWIy0+gI3uitp1B3qoSuLkqV6C/V+hi5vk7CWKdsqg39ift
   UjNE2frBu9aHRzg3c0r/PjbAwqtWmH9YQr0f9R6UG0eC+ykHYX2JRA0fA
   Nk37xJMHt5qO2QVYKafRET0r0bSkBry+qIP/abnkeiNxW7vK15cRPrIgd
   Js/vVses32NX4U70/c4o8UWi0Zpds7Lnb0+CAolL1jQiV1u51b0HrjI67
   g==;
Date: Wed, 3 May 2023 14:01:12 +0200
From: Jesper Nilsson <jesper.nilsson@axis.com>
To: Rob Herring <robh+dt@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>, <linux-aspeed@lists.ozlabs.org>,
	<linux-realtek-soc@lists.infradead.org>, <linux-arm-kernel@axis.com>,
	<linux-stm32@st-md-mailman.stormreply.com>,
	<chrome-platform@lists.linux.dev>, <linux-samsung-soc@vger.kernel.org>,
	<openbmc@lists.ozlabs.org>, Krzysztof Kozlowski <krzk@kernel.org>,
	<linux-rockchip@lists.infradead.org>, Geert Uytterhoeven
	<geert@linux-m68k.org>, <linux-sunxi@lists.linux.dev>,
	<devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
	<linux-actions@lists.infradead.org>, <linux-unisoc@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <linux-rpi-kernel@lists.infradead.org>,
	<linux-tegra@vger.kernel.org>, <linux-amlogic@lists.infradead.org>,
	Linux-OMAP <linux-omap@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>, Linux-Renesas
	<linux-renesas-soc@vger.kernel.org>, <kernel@dh-electronics.com>, "Olof
 Johansson" <olof@lixom.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"linux-oxnas@groups.io" <linux-oxnas@groups.io>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Message-ID: <20230503120112.GC19396@axis.com>
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
 <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_050124_038777_6BDB8076 
X-CRM114-Status: GOOD (  13.05  )
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

T24gVHVlLCBNYXkgMDIsIDIwMjMgYXQgMDI6NDA6MTlQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gVHVlLCBNYXkgMiwgMjAyMyBhdCAzOjE14oCvQU0gQXJuZCBCZXJnbWFubiA8YXJu
ZEBhcm5kYi5kZT4gd3JvdGU6Cj4gSSd2ZSBkdXN0ZWQgb2ZmIG15IHNjcmlwdCBhbmQgbWFkZSBh
IGJyYW5jaFsxXSB3aXRoIHRoZSByZXN1bHQuCj4gVGhlcmUncyBqdXN0IGEgY291cGxlIG9mIGZp
eGVzIG5lZWRlZCBhZnRlciB0aGUgc2NyaXB0IGlzIHJ1biAoc2VlIHRoZQo+IHRvcCBjb21taXQp
LiBUaGUgY3Jvc3MgYXJjaCBpbmNsdWRlcyBhcmUgYWxsIGZpeGVkIHVwIGJ5IHRoZSBzY3JpcHQu
Cj4gZHRic19pbnN0YWxsIG1haW50YWlucyBhIGZsYXQgaW5zdGFsbC4gSSBjb21wYXJlZCB0aGUg
bnVtYmVyIG9mIC5kdGJzCj4gYmVmb3JlIGFuZCBhZnRlciB0byBjaGVjayB0aGUgc2NyaXB0Lgo+
IAo+IEkgdGhpbmsgdGhlIG9ubHkgaXNzdWUgcmVtYWluaW5nIGlzIGZpbmFsaXppbmcgdGhlIG1h
cHBpbmcgb2YKPiBwbGF0Zm9ybXMgdG8gc3ViZGlycy4gV2hhdCBJIGhhdmUgY3VycmVudGx5IGlz
IGEgbWl4dHVyZSBvZiBTb0MKPiBmYW1pbGllcyBhbmQgdmVuZG9ycy4gVGhlIG1vc3Qgbm90YWJs
ZSBhcmUgYWxsIHRoZSBGcmVlc2NhbGUvTlhQCj4gcGxhdGZvcm1zLCBweGEsIHNvY2ZwZ2EsIGFu
ZCBzdG0zMi4gSXQncyBub3QgY29uc2lzdGVudCB3aXRoIGFybTY0Cj4gZWl0aGVyLiBPbmNlIHRo
YXQncyBmaW5hbGl6ZWQsIEkgc3RpbGwgbmVlZCB0byBnbyB1cGRhdGUgTUFJTlRBSU5FUlMuCj4g
Cj4gSGVyZSdzIHRoZSBjdXJyZW50IG1hcHBpbmc6Cj4gCj4gdmVuZG9yX21hcCA9IHsKPiBbLi4u
XQo+ICAgICAnYXJ0cGVjJyA6ICdheGlzJywKCkxvb2tzIGdvb2QgZm9yIG91ciBwbGF0Zm9ybXMg
YWxzbywgdGhhbmtzIQoKL15KTiAtIEplc3BlciBOaWxzc29uCi0tIAogICAgICAgICAgICAgICBK
ZXNwZXIgTmlsc3NvbiAtLSBqZXNwZXIubmlsc3NvbkBheGlzLmNvbQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
