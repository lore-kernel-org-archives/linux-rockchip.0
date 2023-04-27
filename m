Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D919EC7EE2A
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Apr 2023 07:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jb+mGFP6WvXhjnbL6jFJEwF3M1NURE8QNfCATcZS+Pc=; b=TKccyg7jeo6KTU
	7NvnQ5pYupsg/Oc6zTJ9x1x3kXXLjTJzrePnGrB3jRhzTUJOzLAq8ksLNBRb3BH8gLgCNtPP3U0vb
	F3w3aDdYeBybCTSjWM/P4GovOxklIM1gKdruZ+wUX/USf96EVQM5CuxJZQ5UVAnHePokOJOojJHzz
	79jgq6U91h3SMnHpER6GcoZguCjpnLyRF8R7yQspdrzOA8ZhTj19aOdxVYw2iyXJOOdLSle50Pspx
	g7N+CB5UTyxtyGEbNcyEZpiI3sDgF00rsXI5s+Sy1xjHJPP4/bnj5Wnbn1LyxDvgGB3Sds7XxuQW5
	BMmhYFi6I0CukLeeck+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prwN8-005j3U-37;
	Thu, 27 Apr 2023 07:48:58 +0000
Received: from muru.com ([72.249.23.125])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prwN3-005j0O-0n;
	Thu, 27 Apr 2023 07:48:54 +0000
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id AA15480A4;
	Thu, 27 Apr 2023 07:48:46 +0000 (UTC)
Date: Thu, 27 Apr 2023 10:48:45 +0300
From: Tony Lindgren <tony@atomide.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	Ansuel Smith <ansuelsmth@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-omap@vger.kernel.org,
	linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
	linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
	chrome-platform@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com,
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org,
	linux-tegra@vger.kernel.org, linux-oxnas@groups.io,
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-realtek-soc@lists.infradead.org
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Message-ID: <20230427074845.GG14287@atomide.com>
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <1cfc224b-f8b0-3143-42d2-188b56368c61@gmail.com>
 <CAMuHMdU91NtZeFKe6mB3B48TNb64wfPu77xRbOEVX4tV65e38w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdU91NtZeFKe6mB3B48TNb64wfPu77xRbOEVX4tV65e38w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_004853_342926_5895B11C 
X-CRM114-Status: GOOD (  22.33  )
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

KiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPiBbMjMwNDI3IDA3OjQ3
XToKPiBPbiBUaHUsIEFwciAyNywgMjAyMyBhdCA5OjM34oCvQU0gTWF0dGhpYXMgQnJ1Z2dlciA8
bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiBPbiAyNS8wNC8yMDIzIDE3OjU3LCBS
b2IgSGVycmluZyB3cm90ZToKPiA+ID4gT24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgMjoyOOKAr0FN
IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+ID4gPj4g
T24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgMTI6MTbigK9BTSBSb2IgSGVycmluZyA8cm9iaCtkdEBr
ZXJuZWwub3JnPiB3cm90ZToKPiA+ID4+PiBJIGhhdmUgYSBzY3JpcHRbMV0gdGhhdCBkb2VzIHRo
ZSBjb252ZXJzaW9uIHdyaXR0ZW4gdGhlIGxhc3QgdGltZSB0aGlzCj4gPiA+Pj4gY2FtZSB1cC4g
SnVzdCBoYXZlIHRvIGFncmVlIG9uIGRpcmVjdG9yeSBuYW1lcy4gSSB0aGluayB0aGUgZWFzaWVz
dAo+ID4gPj4+IHdvdWxkIGJlIGZvciBBcm5kL09sb2YgdG8gcnVuIGl0IGF0IHRoZSBlbmQgb2Yg
YSBtZXJnZSB3aW5kb3cgYmVmb3JlCj4gPiA+Pj4gcmMxLgo+ID4gPj4KPiA+ID4+ICJlbWV2MiIg
YW5kICJzaDciIGFyZSBtaXNzaW5nIGZvciByZW5lc2FzLgo+ID4gPgo+ID4gPiBObyBkb3VidCBp
dCdzIGJlZW4gYml0cm90dGluZyAob3IgSSBtYXkgaGF2ZSBtaXNzZWQgc29tZSkuCj4gPiA+Cj4g
PiA+PiBEb2VzIHlvdXIgc2NyaXB0IGFsc28gY2F0ZXIgZm9yIC5kdHMgZmlsZXMgbm90IG1hdGNo
aW5nIGFueSBwYXR0ZXJuLAo+ID4gPj4gYnV0IGluY2x1ZGluZyBhIC5kdHNpIGZpbGUgdGhhdCBk
b2VzIG1hdGNoIGEgcGF0dGVybj8KPiA+ID4KPiA+ID4gSSBhc3N1bWUgSSBidWlsdCBldmVyeXRo
aW5nIGFmdGVyIG1vdmluZywgYnV0IG1heWJlIG5vdC4uLgo+ID4gPgo+ID4gPiBUaGF0J3MgYWxs
IGp1c3QgImRldGFpbHMiLiBGaXJzdCwgd2UgbmVlZCBhZ3JlZW1lbnQgb24gYSkgbW92aW5nCj4g
PiA+IHRoaW5ncyB0byBzdWJkaXJzIGFuZCBiKSBkb2luZyBpdCAxLWJ5LTEgb3IgYWxsIGF0IG9u
Y2UuIFNvIGZhciB3ZSd2ZQo+ID4gPiBiZWVuIHN0dWNrIG9uIGEpIGZvciBiZWluZyAndG9vIG11
Y2ggY2h1cm4nLgo+ID4gPgo+ID4KPiA+IEkgdGhpbmsgaXQgbWFrZXMgc2Vuc2UgdG8gbW92ZSB0
aGVtIGFuZCBwcm9iYWJseSB0aGUgYmVzdCB3YXkgdG8gZG8gc28gaXMsIGFzCj4gPiB5b3UgcHJv
cG9zZWQ6IHRoYXQgQXJuZCBvciBPbG9mIHJ1biB0aGUgc2NyaXB0IHRvIG1vdmUgdGhlbSBqdXN0
IGJlZm9yZSAtcmMxCj4gCj4gRlRSLCBubyBvYmplY3Rpb25zIGZyb20gbXkgc2lkZS4KClNvdW5k
cyBnb29kIHRvIG1lLgoKUmVnYXJkcywKClRvbnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
