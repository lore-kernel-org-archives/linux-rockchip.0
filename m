Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2430C02199
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Feb 2025 17:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXErvM0T6jfkvrIEJ5rShmQ1VDlFhfHpV3XH4pcSvD0=; b=s55XHyHPFXmzrl
	NlooWTwNSU16q0e9u3gRfEWybepRrejbGcCZzSBxh6LtKU9dCsmSxy4yWYRgqjchJbhlwxfpHQMXf
	xVdBKA9FbsU7ENwHfLXpm4f46AgiVnjs+3KHmIPL24zHJgPfRo++6LavFg+sx0TC9fHvvtKZyXAQP
	6E8V6m7eNugKB/f7bx3NkYoQ8kxElPsORlhPfhS0Oqsqljc8mOklDGRPkoEH3DIkHmwL3PdhjHAZq
	JbeYj17rAkmnPT/ln+sv+qWVpjKZHdZRlFiZUyEprUPrIsuFs3CbxgDWlPoyDZp1a6Jn9iU8OVeR0
	E0HRWKD7gOcyMRCmb/VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfjVE-0000000495J-3Eky;
	Wed, 05 Feb 2025 17:47:56 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfjM6-000000047dq-2Zdz;
	Wed, 05 Feb 2025 17:38:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A8064A438D1;
	Wed,  5 Feb 2025 17:36:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9547EC4CEE2;
	Wed,  5 Feb 2025 17:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738777109;
	bh=6QJJPtO3WlYPPGSP0H8aWwAJg0ctvHWUXT0e2WNEeHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MsLyFODUcEFb8uO9sgi4xZpO9PYRDdZOES/lZgiqBuN8wK0rpYCZyyFUZPsRV/815
	 eVszkZ84dPOVH3oi7rt+AbIWKXy03058S4pFxx7l5DQ6Z1/aI1g+IVpQn6g+cxDIl9
	 QOWiN0BSBHDQPpDQV2dp7S8V+JJQ0tqEreVR/ejFgVrEBi2Hq+i8UV5e3i8elKKxMy
	 3Qgndet8XKwPQTJJutsYvw441+bty+yDxo5KIBzoW3wbIaIspA/f+NL7dZuOf89MPr
	 a6l+h/rNIdMjTWZXDTh2TVMGC4DGBrLzpraW+eHCTJqhl6aVLcGhtxSEM1mV8dmDyy
	 1VNweqr9a9gzA==
Date: Wed, 5 Feb 2025 17:38:24 +0000
From: Simon Horman <horms@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Steven Price <steven.price@arm.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	stable@vger.kernel.org
Subject: Re: [PATCH netdev] net: stmmac: dwmac-rk: Provide FIFO sizes for
 DWMAC 1000
Message-ID: <20250205173824.GJ554665@kernel.org>
References: <20250204161359.3335241-1-wens@kernel.org>
 <20250204134331.270d5c4e@kernel.org>
 <CAGb2v641vvtVKv8QbiEfHnMWngcKYTJZAgfH5k+G_nOvZcbC9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v641vvtVKv8QbiEfHnMWngcKYTJZAgfH5k+G_nOvZcbC9g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_093830_721532_B244FBCC 
X-CRM114-Status: GOOD (  13.32  )
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

T24gV2VkLCBGZWIgMDUsIDIwMjUgYXQgMTE6NDU6MTdBTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+IE9uIFdlZCwgRmViIDUsIDIwMjUgYXQgNTo0M+KAr0FNIEpha3ViIEtpY2luc2tpIDxr
dWJhQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIFdlZCwgIDUgRmViIDIwMjUgMDA6MTM6
NTkgKzA4MDAgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gPiBTaW5jZSBhIGZpeCBmb3Igc3RtbWFj
IGluIGdlbmVyYWwgaGFzIGFscmVhZHkgYmVlbiBzZW50IFsxXSBhbmQgYSByZXZlcnQKPiA+ID4g
d2FzIGFsc28gcHJvcG9zZWQgWzJdLCBJJ2xsIHJlZnJhaW4gZnJvbSBzZW5kaW5nIG1pbmUuCj4g
Pgo+ID4gTm8sIG5vLCBwbGVhc2UgZG8uIFlvdSBuZWVkIHRvIF9zdWJtaXRfIHRoZSByZXZlcnQg
bGlrZSBhIG5vcm1hbCBwYXRjaC4KPiA+IFdpdGggYWxsIHRoZSB1c3VhbCBkZXRhaWxzIGluIHRo
ZSBjb21taXQgbWVzc2FnZS4KPiAKPiBNaW5lIGlzbid0IGEgcmV2ZXJ0LCBidXQgc2ltcGx5IGRv
d25ncmFkaW5nIHRoZSBlcnJvciB0byBhIHdhcm5pbmcuCj4gU28uLi4geWV0IGFub3RoZXIgd29y
a2Fyb3VuZCBhcHByb2FjaC4KCkkgdGhpbmsgdGhlIHBvaW50IGlzIHRoYXQgc29tZW9uZSBuZWVk
cyB0byBmb3JtYWxseQpzdWJtaXQgdGhlIHJldmVydC4gQW5kIEkgYXNzdW1lIGl0IHNob3VsZCB0
YXJnZXQgdGhlIG5ldCB0cmVlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
