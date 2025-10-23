Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48E64CCD1BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 20:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRBIkYoSsGYTMe51g0t7hF01NRnnZEEauTaGEsqEyvE=; b=vJS/ebAqKNgqvg
	ns5jdoyu2F+Px5QcwgR6GwSVlOjWipifXITecdqfCsrKRUndBayfmH97cn1gc3iPvZtkxIKgCWsE6
	qkLEh9+4I9g8uJEG5yO4ygNJ3yruP/9spP1nwbFfX27tyn/RNs/LvdXZyaCbp8m7nOLi7zsEBBoB5
	s6VxGPEKUF5U82+lh/U+CUNJKkWq5qdIGiRAFwwtMz4tXuO6LfTd4oWP+nhdG096xLcoKYyRKb+Dl
	vufs5mdzF+kI7tEZW2kyDfekApTTHazbyb9uCWGh/TpIduCU4fZWR2OzXhcvhUHC/1YbwhVmMPg3N
	wdJlAZJJfHWJ2uciPwEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC2FE-00000007YzU-1Ups;
	Thu, 23 Oct 2025 20:49:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC2FB-00000007Yyp-2a6W;
	Thu, 23 Oct 2025 20:49:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=q2PlpbC6DOPQ9Ag/NqmWzOb39YBV/wCJHBS+fST6+60=; b=zCYlvIKkaYPMPFlwDGw2mH+kHy
	ji2uFpc/zpY93YkSDpu9FoEHpcDKIgoLk3d1IJTG/hzYq/5XO3MmKUS6f9fNoEikBVPAWc5Vl+lzi
	3KhZBG2O91EzgXVm5p5so1G2MAY6t1oR5MkW/QY7Q+PkYFd1kqWnH7pSywWjMkvdujQQA/Plf79ZQ
	s8/pC2lPPs0WO2E9So/gzntHoL0cOf1DvFa/GswS6M03aMshumLFP2Rg20GIgpDkmUlsfJMQVKeT2
	EEjPhtFv8LuUNwN3Mpyt/p9Ic1TzdZuGW2dLOV41Xqm5dFDtBS8sJvd3R9ulA+lEZn/3nY1h0MZwH
	H48fS6tw==;
Received: from i53875a07.versanet.de ([83.135.90.7] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vC2Ey-00069O-2v; Thu, 23 Oct 2025 22:48:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jonas@kwiboo.se
Subject: Re: [PATCH v2 5/5] MAINTAINERS: add dwmac-rk glue driver to the main Rockchip
 entry
Date: Thu, 23 Oct 2025 22:48:55 +0200
Message-ID: <4664419.8F6SAcFxjW@phil>
In-Reply-To: <35567cda-0f49-4784-b873-97e378fcee16@lunn.ch>
References: <20251023111213.298860-1-heiko@sntech.de>
 <20251023111213.298860-6-heiko@sntech.de>
 <35567cda-0f49-4784-b873-97e378fcee16@lunn.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_134909_672585_0D356FE8 
X-CRM114-Status: GOOD (  12.35  )
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

SGkgQW5kcmV3LAoKQW0gRG9ubmVyc3RhZywgMjMuIE9rdG9iZXIgMjAyNSwgMjA6NTc6NTAgTWl0
dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBBbmRyZXcgTHVubjoKPiBPbiBUaHUs
IE9jdCAyMywgMjAyNSBhdCAwMToxMjoxMlBNICswMjAwLCBIZWlrbyBTdHVlYm5lciB3cm90ZToK
PiA+IFRoZSBkd21hYy1yayBnbHVlIGRyaXZlciBpcyBjdXJyZW50bHkgbm90IGNhdWdodCBieSB0
aGUgZ2VuZXJhbCBtYWludGFpbmVyCj4gPiBlbnRyeSBmb3IgUm9ja2NoaXAgU29Dcywgc28gYWRk
IGl0IGV4cGxpY2l0bHksIHNpbWlsYXIgdG8gdGhlIGkyYyBkcml2ZXIuCj4gPiAKPiA+IFRoZSBi
aW5kaW5nIGRvY3VtZW50IGluIG5ldC9yb2NrY2hpcC1kd21hYy55YW1sIGFscmVhZHkgZ2V0cyBj
YXVnaHQgYnkKPiA+IHRoZSB3aWxkY2FyZCBtYXRjaC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiAKPiBSZXZpZXdlZC1ieTogQW5kcmV3
IEx1bm4gPGFuZHJld0BsdW5uLmNoPgoKanVzdCBtZW50aW9uaW5nLCBJIHdhc24ndCBzdXJlIGlm
IHlvdXIgcmV2aWV3IGZvciBwYXRjaDQgd2FzIHN0aWxsCnZhbGlkIGFmdGVyIEkgYWRhcHRlZCB0
aGUgY2hhbmdlIHRvIEpvbmFzJyBzdWdnZXN0aW9ucywgc28gb25seSBhZGRlZAp0aGUgUi1iJ3Mg
ZnJvbSB2MSB0byBwYXRjaGVzIDEtMyAuCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
