Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23927CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 08:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjCppTysOFnSqn6Gc14Ii9bxnoOXWYt5tczcSp2qlyg=; b=CTEjMYUPZ7+8CR
	mVr28nLKYCa+XANdOCbWQlvi1jl8EKrEdevn935Id3MLlAFAfP26YngpMVWhF9tHCdeqiU1Bus6UF
	2nm0KZ2IXlFIVuWyUNe5QikYlLC3PLtLtYfTS2rrbPxDgI3n3oI2F5s1hclo2UQIhOShtU4yuZb0o
	vZeEDA6dF2ZEXA9sxH2tK6wu1wp9r9fnSV1uBdiQljTDkO0aV9h35383o0MScywYdyozfjy4fvdVo
	gAHBfmw1CotqsYivzPohfC+8YqE4Ds/8OjlgsQM7aIqo0WfpvCWsmQau6/6aEV5ly4gPkkcFG2k4j
	dQ28iWthpoXWFGYPmvYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAlJ8-0000000CPbh-2snX;
	Mon, 20 Oct 2025 08:31:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAlJ6-0000000CPaP-1ioA;
	Mon, 20 Oct 2025 08:31:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xZ91Gwi5gifJjpKKisGxIOuvBzMpfG2m0X4OcVippnU=; b=mPDgNYmBcwiY902BXGH+5TCCcB
	5zONyq1MWAa8X2urnLL60sGhBpmiWQriEPjndquGrDH9sR7EIIwJFpbyFfRnZ1m1Zdfkrb4SXN2SP
	8ODciQWSVOYgmjZm4qcsUiw8ZFf1kzDuyZscjXj/8mLqh+YAHfgOXt7aBiohFFGHWT8xVr7a0WKxa
	qykeuoyBnvJ4ntaiGa1CwD6yEwtkGym3u4SqTHUmyR9rgfWb1Oxb0Dt5Aqc8Vq9KlwOTQzVBi3HZd
	ffYWNR7JzDZ5kR9uoh7VUfxOBwDH4cmDVEyjRJ16xPeewI/PxzDDQwAX67X+grdRGu353fN+3m9rn
	A/WKdVwA==;
Received: from [141.76.253.240] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vAlJ3-0007Cv-TS; Mon, 20 Oct 2025 10:31:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alexey Charkov <alchark@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add DSI LCD display on rk3576-evb1
Date: Mon, 20 Oct 2025 10:31:53 +0200
Message-ID: <5143458.iZASKD2KPV@phil>
In-Reply-To: <CABjd4YwVfrzxYKM4cAG=-fMbw9OcQGZD20CVCG8FvC8phDsw+Q@mail.gmail.com>
References: <20250925-rk3576-evb1-dsi-v1-1-c76fc3740abc@gmail.com>
 <CABjd4YwVfrzxYKM4cAG=-fMbw9OcQGZD20CVCG8FvC8phDsw+Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_013156_446888_C6082A26 
X-CRM114-Status: GOOD (  19.46  )
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

QW0gTW9udGFnLCAyMC4gT2t0b2JlciAyMDI1LCAxMDoxOTo1MSBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEFsZXhleSBDaGFya292Ogo+IE9uIFRodSwgU2VwIDI1LCAyMDI1
IGF0IDEyOjM44oCvQU0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPiB3cm90ZToK
PiA+Cj4gPiBBZGQgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIFc1NTI3OTNEQkEtVjEwIExDRCt0
b3VjaHNjcmVlbiBhc3NlbWJseSB3aGljaAo+ID4gY29tZXMgcGh5c2ljYWxseSBhdHRhY2hlZCB0
byBSb2NrY2hpcCBSSzM1NzYgRVZCMSBib2FyZHMuCj4gPgo+ID4gVGhlIGRpc3BsYXkgcGFydCBp
cyBkcml2ZW4gYnkgdGhlIG9uLWNoaXAgTUlQSSBEU0kgY29udHJvbGxlciwgYW5kIHRoZQo+ID4g
dG91Y2hzY3JlZW4gaXMgY29ubmVjdGVkIG92ZXIgSTJDLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6
IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gTm90ZSB0aGF0
IGJhY2tsaWdodCBzdXBwb3J0IGlzIGxlZnQgb3V0IGZvciBub3csIGFzIGl0IGRlcGVuZHMgb24g
UFdNCj4gPiBzdXBwb3J0IFswXSB3aGljaCBoYXMgbm90IHlldCBiZWVuIG1lcmdlZC4KPiA+Cj4g
PiBBIHdvcmthcm91bmQgaXMgc2ltcGx5IGBncGlvc2V0IC1jIDAgMTM9MWAgdG8gc2V0IHRoZSBy
ZXNwZWN0aXZlIEdQSU8KPiA+IHBpbiBoaWdoIGFuZCB0aHVzIHRvIGxpZ2h0IHVwIHRoZSBkaXNw
bGF5IHVuY29uZGl0aW9uYWxseS4KPiA+Cj4gPiBbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGttbC8yMDI1MDYwMi1yazM1NzYtcHdtLXYyLTAtYTY0MzRiMGNlNjBjQGNvbGxhYm9yYS5jb20v
Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1ldmIxLXYx
MC5kdHMgfCA4OSArKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwg
ODkgaW5zZXJ0aW9ucygrKQo+IAo+IEhpIEhlaWtvLAo+IAo+IEFueSB0aG91Z2h0cyBhYm91dCB0
aGlzIG9uZT8gQ2FuIHdlIHBlcmhhcHMgZ2V0IGl0IG1lcmdlZCBmb3IgLW5leHQ/CgpEb2VzIHRo
ZSBncGlvLWJhY2tsaWdodCB3b3JrIG9uIHRoYXQgZGV2aWNlPwpUaGF0IHdvdWxkIG1ha2UgdGhl
IGdwaW9zZXQgaGFjayB1bm5lY2Vzc2FyeS4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
