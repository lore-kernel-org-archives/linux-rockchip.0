Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17DF9D41C00
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 04:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgxEgTVdYnB3l31526Nv3+B5wA09JlODeym/AU3djVI=; b=HKxGZwzVEvxoBY
	fUbpu9q1GAgQcMF/nwfCqv6ztyXVqIMJQEnTT/HgOJr9Vq1b2W9PX1+SPHjgoyAieyISUisdSzh/l
	JW6vbupl+SKr5mdvPnFHmzuHv47wNi4PfVYXvrt4t228zaYnU6H0C89w8rX1j0D6h1tyDdO1g6a+U
	LzzRVmYJD8gTZ6tU2hvvkGG3ZAhMg0XugPoo9SOvEM8o/MWJ8PYuwzXDe68H29rgVnQIE+Uttn12/
	Ei0gYGGMRB4+LZWOA1mGJ/nCD1wey50/RuuBS/R0Roo0E5k8nKtPjQQLO4Ox4vDuMe2/o95ZYbY/c
	W1WAtKPy/rlXFcLBt0Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBRH8-00000008kLa-22dA;
	Thu, 14 Nov 2024 04:16:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBRFb-00000008k5F-2dah
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Nov 2024 04:14:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 587B65C4D13;
	Thu, 14 Nov 2024 04:13:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20960C4CED0;
	Thu, 14 Nov 2024 04:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731557674;
	bh=OGi2dRNe5tO8+2VRnUt3YjU4LnEZeMja9EiwcEWaM7g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=h5OrcJCgXXxwvA7j6mOF+WVdHHHIaUEb6bPrmmH8aEkakEF+HDO0GpZiJ9RTPc68S
	 G/edfQWhbg3BSeEVOzrGM7eOEXDz946JASKQvI8RFmMcfDW2wEKqD4koSoEjYkQx+z
	 N1Lg6sOoj7lnv4p2xPiLF3w6GlSarEO1Zwy+nyQ04ELj277kOFr5BswK/2xXZCPH7V
	 p+7fy3UFXLwEGvU6AsBDhHAMKCBmEIAS2Q/vRklKWqII2X6EkQgrUY1/lRzoiavARP
	 pK5GpIs5MOkl4gIfPvpnxOkz3hbOQynjTGbBXmuCdDVyEScw+zAVAfQtJZcq2L7btE
	 7Z7ed07XKdWCA==
Message-ID: <11cae8ab-a46b-47b4-b919-f7021057dc11@kernel.org>
Date: Thu, 14 Nov 2024 13:14:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 00/14] Fix and improve the Rockchip endpoint driver
To: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Niklas Cassel <cassel@kernel.org>
References: <20241017015849.190271-1-dlemoal@kernel.org>
 <117828c6-92c4-4af4-b47e-f049f9c2cb7b@kernel.org>
 <ed723fe1-e243-4a9e-8d1c-f29461d07cb7@kernel.org>
 <20241113175222.eh76hksyj6sptwvo@thinkpad>
 <20241113205900.GA1184086@rocinante>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241113205900.GA1184086@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_201435_796751_F99055F1 
X-CRM114-Status: GOOD (  12.77  )
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

T24gMTEvMTQvMjQgMDU6NTksIEtyenlzenRvZiBXaWxjennFhHNraSB3cm90ZToKPiBIZWxsbywK
PiAKPj4+Pj4gVGhlc2UgcGF0Y2hlcyB3ZXJlIHRlc3RlZCB1c2luZyBhIFBpbmUgUm9ja3BybzY0
IGJvYXJkIHVzZWQgYXMgYW4KPj4+Pj4gZW5kcG9pbnQgd2l0aCB0aGUgdGVzdCBlbmRwb2ludCBm
dW5jdGlvbiBkcml2ZXIgYW5kIGEgcHJvdG90eXBlIG52bWUKPj4+Pj4gZW5kcG9pbnQgZnVuY3Rp
b24gZHJpdmVyLgo+Pj4+Cj4+Pj4gUGluZyA/IElmIHRoZXJlIGFyZSBubyBpc3N1ZXMsIGNhbiB3
ZSBnZXQgdGhpcyBxdWV1ZWQgdXAgPwo+Pj4KPj4+IE1hbmksCj4+Pgo+Pj4gUGluZyBBR0FJTiAh
ISEhCj4+Pgo+Pj4gSSBkbyBub3Qgc2VlIGFueXRoaW5nIHF1ZXVlZCBpbiBwY2kvbmV4dC4gV2hh
dCBpcyB0aGUgYmxvY2tlciA/Cj4+PiBUaGVzZSBwYXRjaGVzIGhhdmUgYmVlbiBzaXR0aW5nIG9u
IHRoZSBsaXN0IGZvciBuZWFybHkgYSBtb250aCBub3csIFBMRUFTRSBETwo+Pj4gU09NRVRISU5H
LiBDb21tZW50IG9yIGFwcGx5LCBidXQgcGxlYXNlIHJlcGx5IHNvbWV0aGluZy4KPj4+Cj4+Cj4+
IERhbWllbiwKPj4KPj4gU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5LiBUaGluZ3MgZ290IGEgYml0
IGhlY3RpYyBkdWUgdG8gY29tcGFueSBvbnNpdGUgbWVldGluZy4KPj4gSSdtIGdvaW5nIHRocm91
Z2ggbXkgcXVldWUgbm93Lgo+IAo+IFRoYW5rIHlvdSwgTWFuaSEgIEkgdG9vayB0aGlzIG92ZXIg
YW5kIHB1bGxlZCB0aGlzIHNlcmllcy4KPiAKPiBZb3UgYW5kIEJqb3JuIGNhbiBoYXZlIGEgbG9v
ayBvdmVyIHRoZSBjaGFuZ2VzLCBpZiB5b3UgaGF2ZSBhIG1vbWVudC4gIFRoYXQKPiBzYWlkLCBh
dCBsZWFzdCB0byBtZSwgdGhlIGNoYW5nZXMgbG9va2VkIGdvb2QuCgpLcnp5c3p0b2YsCgpUaGFu
a3MuIEJ1dCB0aGUga2VybmVsIHRlc3Qgcm9ib3QgYWxyZWFkeSBjb21wbGFpbmVkIGFib3V0IGEg
YnVpbGQgZmFpbHVyZSBmb3IKdGhlIHJvY2tjaGlwIGJyYW5jaC4gVGhlIHNlcmllcyBuZWVkcyB0
byBnbyB0aHJvdWdoIHRoZSBlbmRwb2ludCBicmFuY2ggYXMgdGhlCi5hbGlnbl9hZGRyIG1ldGhv
ZCBpcyBvbmx5IGRlZmluZWQgaW4gdGhhdCBicmFuY2ggYXQgdGhlIG1vbWVudC4KCj4gCj4gCUty
enlzenRvZgoKCi0tIApEYW1pZW4gTGUgTW9hbApXZXN0ZXJuIERpZ2l0YWwgUmVzZWFyY2gKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
