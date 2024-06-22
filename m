Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64948C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 16:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOyjnqGu7oCF8tLiaS/q6KyJZApVQK0bK3FRRGkNGQ4=; b=E52RwEo/lYyt97
	KBbqeSiN85U5Ct39qBz5elE18BUkiFi/m58wjQpnIEpNZIboK6cCYbcUVsjR6XidgwRQv7jre8eI5
	uyFYb6kXMN7VY8yYT8vnyxO2V0XCZT02940lo1zGfYF+TPxh8W7TUYjSFkwrE35fVoG0dM8J9tHNj
	JDwzSUVIjGgE+J2eGklD+wHifff5RimIHpH/7Nb08sMhUSDAkegP3owk4EhmvZpRXWgmdOKEir4+2
	LoPhrtFmm9qUZgrFUSY/I32FkqwmIZwYf/OXAZqhd4hnC5Q4uQ6UTK7joCKt6lqLWIpba9UTeX9X8
	nemT4eVgLCqHOKwRNbJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL3hF-0000000CQVV-1aPi;
	Sat, 22 Jun 2024 16:34:37 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL3hC-0000000CQV0-0rOX
	for linux-rockchip@lists.infradead.org;
	Sat, 22 Jun 2024 16:34:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A1A10CE0A5F;
	Sat, 22 Jun 2024 16:34:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E24FC3277B;
	Sat, 22 Jun 2024 16:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719074069;
	bh=t2xrxpY7g42zaDbzrTJjSd8KnoDUVB/HebWYFWAP4o8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JJIYs7YtCwIYcOwlFMs3woKlHviODVXAHA1Xgb+VD+qZrJjrdWN8V59kY6vwlH9AJ
	 MJ6vhkIu56Pf1u2OLb2hkg3Gdz6UFFw/bKJIxOlxYq62N+IlQjinp9U4Mpxlkg8say
	 gLNXiUKllAHSKTU0CZG3uwOqcDyIZpoUnn+1XEpZ/fWeQI+axvbYEo9QMXJDgmHImm
	 vzXM27JSmHk2knHUop8ec00x5+CB32fTzLu+uipn/6X9dO0cm3sdV4Ym1kH1130+Ma
	 UxNv1f0RDw1Gc61CcAKWJ0f69Xc9fdrtZWhaXCqVnZgfwoUlI6A7v2rG0ZSN4SF/Sk
	 DyrxuU+jmKd2A==
Date: Sat, 22 Jun 2024 18:34:23 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 00/13] PCI: dw-rockchip: Add endpoint mode support
Message-ID: <Znb9D7AouKxaqiFW@ryzen.lan>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
 <Zm_tGknJe5Ttj9mC@ryzen.lan>
 <20240621193937.GB3008482@rocinante>
 <ZnbUHI5GEMCmaK2V@ryzen.lan>
 <20240622154324.GA391376@rocinante>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240622154324.GA391376@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_093434_445919_F4CEEBB7 
X-CRM114-Status: GOOD (  15.32  )
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

T24gU3VuLCBKdW4gMjMsIDIwMjQgYXQgMTI6NDM6MjRBTSArMDkwMCwgS3J6eXN6dG9mIFdpbGN6
ecWEc2tpIHdyb3RlOgo+IEhlbGxvLAo+IAo+IFsuLi5dCj4gPiBDb3VsZCB5b3UgcG9zc2libHkg
aW5jbHVkZSB0aGUgY29tbWl0Ogo+ID4gM2QyZTQyNTI2M2UyICgiUENJOiBkd2M6IGVwOiBBZGQg
YSBnZW5lcmljIGR3X3BjaWVfZXBfbGlua2Rvd24oKSBBUEkgdG8gaGFuZGxlIExpbmsgRG93biBl
dmVudCIpCj4gPiBmcm9tIHRoZSBjb250cm9sbGVyL2R3YyBicmFuY2ggaW4gdGhlIGNvbnRyb2xs
ZXIvcm9ja2NoaXAgYXMgd2VsbCwKPiA+IG9yIHJlYmFzZSB0aGUgY29udHJvbGxlci9yb2NrY2hp
cCBicmFuY2ggb24gdG9wIG9mIHRoZSBjb250cm9sbGVyL2R3YyBicmFuY2gsCj4gPiBvciBtZXJn
ZSB0aGUgY29udHJvbGxlci9kd2MgYnJhbmNoIHRvIHRoZSBjb250cm9sbGVyL3JvY2tjaGlwIGJy
YW5jaD8KPiA+IAo+IAo+IERvbmUuCj4gCj4gPiBBZGRpdGlvbmFsbHksIHNpbmNlIHlvdSBwaWNr
ZWQgdXAgTWFuaSdzIHNlcmllcyB3aGljaCByZW1vdmVzCj4gPiBkd19wY2llX2VwX2luaXRfbm90
aWZ5KCkgb24gdGhlIGNvbnRyb2xsZXIvZHdjIGJyYW5jaDoKPiA+IDllYmEyZjcwMzYyZiAoIlBD
STogZHdjOiBlcDogUmVtb3ZlIGR3X3BjaWVfZXBfaW5pdF9ub3RpZnkoKSB3cmFwcGVyIikKPiA+
IAo+ID4gWW91IHdpbGwgbmVlZCB0byBwaWNrIHVwIHRoaXMgcGF0Y2ggYXMgd2VsbDoKPiA+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS8yMDI0MDYyMjEzMjAyNC4yOTI3Nzk5LTIt
Y2Fzc2VsQGtlcm5lbC5vcmcvVC8jdQo+ID4gT3RoZXJ3aXNlIHRoZXJlIHdpbGwgYmUgYSBidWls
ZCBlcnJvciB3aGVuIG1lcmdpbmcgdGhlIGNvbnRyb2xsZXIvZHdjCj4gPiBhbmQgdGhlIGNvbnRy
b2xsZXIvcm9ja2NoaXAgYnJhbmNoIHRvIGZvci1uZXh0Lgo+ID4gVGhlIHBhdGNoIHRoYXQgSSBz
ZW50IG91dCBjYW4gYmUgcGlja2VkIHVwIHRvIHRoZSBjb250cm9sbGVyL3JvY2tjaGlwIHJpZ2h0
Cj4gPiBub3cgKHNpbmNlIHRoZSBBUEkgdGhhdCBNYW5pIGlzIHN3aXRjaGluZyB0byBhbHJlYWR5
IGV4aXN0cyBpbiBMaW51cydzIHRyZWUpLgo+IAo+IERvbmUuCj4gCj4gSG9wZWZ1bGx5LCB0aGlz
IHNldHRsZXMgdGhpbmdzIGZvciBhIGJpdC4KCkV2ZXJ5dGhpbmcgbG9va3MgZ29vZCEgOikKCkkn
bSBnbGFkIHRoYXQgd2UgZ290IHRoaXMgc29ydGVkIHF1aWNrbHksIHRoYW5rIHlvdSBLcnp5c3p0
b2YhCgoKS2luZCByZWdhcmRzLApOaWtsYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
