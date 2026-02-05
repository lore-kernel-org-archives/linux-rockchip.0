Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD6C6EC1EB2
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Feb 2026 13:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cNVQVQYPY449OVEt0VJuWAV7Dp9en6EPy27FxXXoDw=; b=MUn6Il395/hGat
	uF74/3ja+O+Ewo0Ky+HDH3VW5ffrh/YYQhQyB8Ca7knPUn2FMnsoiVGeH8X7UCQRSVbazfn8f4KwG
	E2Fsdz7l/RiWiHgAANyD3U0s1wDYXPIUket9L2CPVJnDd0NBJ7rhmqgoG2dUYOvsVhXJsQYNlAKxX
	uz2ScqXQq2WfmoSQTs/gdCS3QpO/9fNP0Xp6fflagDjbYGZOIm8rRNFbdncjQ/TW9hx1f/FYU3GFy
	qyPK+iRw8PGEqN0Cg/f35fdx0m/q8XihgeVo0a1OykcRi0gefLplzzigjhvJsF7CXBERbfe77YcJ2
	aB7PvHpxqCRlATLoVhRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnzPC-00000009wsI-2beo;
	Thu, 05 Feb 2026 13:28:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnzPB-00000009wrm-05kh;
	Thu, 05 Feb 2026 13:28:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 71CBE60010;
	Thu,  5 Feb 2026 13:28:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10184C4CEF7;
	Thu,  5 Feb 2026 13:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770298100;
	bh=RVwIHojJPFtR1L6mECLDirnCU93wad5+Ug+yqXZvlGY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hCy9lXRU7VwFbtpEzZC8tJW3BxP0Y+kkOtXRSjO0Y/EbAqe2ZZTbmD3BTi+LY6IvV
	 3VDoNHBAthurR5saMIBgCknSgSKPY2kGtXATsfjShk+vrtTpIeuOCp/3+PRWt4h+7V
	 NfsIGMCSL9N8FHQWjGcnLmRfl9x363lCi8STV4b2xUCDb+V5S7N4RZFBFOyHW5eVAh
	 p+nrJ0Y1mgPjQ2mbhzLmSLjkiqokuvr17PC7JJzYeMGiQeTE4nPNaH4ako1HCiqwT/
	 303Cny++W7VOs+ai2NNL3LA5Vh9EvxCBWwE1HqldlEbOWmjNfjQjG11uvFZZKfRlIm
	 Z5WIAf475MuMg==
Date: Thu, 5 Feb 2026 14:28:13 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: Ricardo Pardini <ricardo@pardini.net>, lpieralisi@kernel.org,
	kwilczynski@kernel.org, bhelgaas@google.com, helgaas@kernel.org,
	heiko@sntech.de, mani@kernel.org, yue.wang@amlogic.com,
	pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 0/2] PCI: Configure Root Port MPS during host probing
Message-ID: <aYSa7d8G1adGho0z@ryzen>
References: <20251127170908.14850-1-18255117159@163.com>
 <f5322597-c6dd-494a-863b-2caf24363f2d@pardini.net>
 <1ff0d069-14f0-439a-afca-4ecc1b569834@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ff0d069-14f0-439a-afca-4ecc1b569834@163.com>
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

T24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgMDk6MjY6NDVQTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiBPbiAyMDI1LzEyLzMxIDEwOjU4LCBSaWNhcmRvIFBhcmRpbmkgd3JvdGU6Cj4gPiBPbiAy
Ny8xMS8yMDI1IDE4OjA5LCBIYW5zIFpoYW5nIHdyb3RlOgo+ID4gPiBDdXJyZW50IFBDSWUgaW5p
dGlhbGl6YXRpb24gZXhoaWJpdHMgYSBrZXkgb3B0aW1pemF0aW9uIGdhcDogUm9vdCBQb3J0cwo+
ID4gPiBtYXkgb3BlcmF0ZSB3aXRoIG5vbi1vcHRpbWFsIE1heGltdW0gUGF5bG9hZCBTaXplIChN
UFMpIHNldHRpbmdzLiBXaGlsZQo+ID4gPiBkb3duc3RyZWFtIGRldmljZSBjb25maWd1cmF0aW9u
IGlzIGhhbmRsZWQgZHVyaW5nIGJ1cyBlbnVtZXJhdGlvbiwgUm9vdAo+ID4gPiBQb3J0IE1QUyB2
YWx1ZXMgaW5oZXJpdGVkIGZyb20gZmlybXdhcmUgb3IgaGFyZHdhcmUgZGVmYXVsdHMgb2Z0ZW4g
ZmFpbAo+ID4gPiB0byB1dGlsaXplIHRoZSBmdWxsIGNhcGFiaWxpdGllcyBzdXBwb3J0ZWQgYnkg
Y29udHJvbGxlciBoYXJkd2FyZS4gVGhpcwo+ID4gPiByZXN1bHRzIGluIHN1Ym9wdGltYWwgZGF0
YSB0cmFuc2ZlciBlZmZpY2llbmN5IHRocm91Z2hvdXQgdGhlIFBDSWUKPiA+ID4gaGllcmFyY2h5
Lgo+ID4gPiAKPiA+ID4gVGhpcyBwYXRjaCBzZXJpZXMgYWRkcmVzc2VzIHRoaXMgYnk6Cj4gPiA+
IAo+ID4gPiAxLiBDb3JlIFBDSSBlbmhhbmNlbWVudCAoUGF0Y2ggMSk6Cj4gPiA+IC0gUHJvYWN0
aXZlbHkgY29uZmlndXJlcyBSb290IFBvcnQgTVBTIGR1cmluZyBob3N0IGNvbnRyb2xsZXIgcHJv
YmluZwo+ID4gPiAtIFNldHMgaW5pdGlhbCBNUFMgdG8gaGFyZHdhcmUgbWF4aW11bSAoMTI4IDw8
IGRldi0+cGNpZV9tcHNzKQo+ID4gPiAtIENvbmRpdGlvbmFsIG9uIFBDSWUgYnVzIHR1bmluZyBi
ZWluZyBlbmFibGVkIChQQ0lFX0JVU19UVU5FX09GRiB1bnNldCkKPiA+ID4gwqDCoCBhbmQgbm90
IGluIFBDSUVfQlVTX1BFRVIyUEVFUiBtb2RlICh3aGljaCByZXF1aXJlcyBkZWZhdWx0IDEyOCBi
eXRlcykKPiA+ID4gLSBNYWludGFpbnMgYmFja3dhcmQgY29tcGF0aWJpbGl0eSB2aWEgUENJRV9C
VVNfVFVORV9PRkYgY2hlY2sKPiA+ID4gLSBQcmVzZXJ2ZXMgc3RhbmRhcmQgTVBTIG5lZ290aWF0
aW9uIGR1cmluZyBkb3duc3RyZWFtIGVudW1lcmF0aW9uCj4gPiA+IAo+ID4gPiAyLiBEcml2ZXIg
Y2xlYW51cCAoUGF0Y2ggMik6Cj4gPiA+IC0gUmVtb3ZlcyByZWR1bmRhbnQgTVBTIGNvbmZpZ3Vy
YXRpb24gZnJvbSBNZXNvbiBQQ0llIGNvbnRyb2xsZXIgZHJpdmVyCj4gPiA+IC0gRnVuY3Rpb25h
bGl0eSBpcyBub3cgY2VudHJhbGl6ZWQgaW4gUENJIGNvcmUKPiA+ID4gLSBTaW1wbGlmaWVzIGRy
aXZlciBtYWludGVuYW5jZSBsb25nLXRlcm0KPiA+ID4gCj4gPiA+IC0tLQo+ID4gPiBDaGFuZ2Vz
IGluIHY3Ogo+ID4gPiAtIEV4Y2x1ZGUgUENJRV9CVVNfUEVFUjJQRUVSIG1vZGUgZnJvbSBSb290
IFBvcnQgTVBTIGNvbmZpZ3VyYXRpb24KPiA+ID4gLSBSZW1vdmUgcmVkdW5kYW50IGNoZWNrIGZv
ciB1cHN0cmVhbSBicmlkZ2UgKFJvb3QgUG9ydHMgZG9uJ3QgaGF2ZSBvbmUpCj4gPiA+IC0gSW1w
cm92ZSBjb21taXQgbWVzc2FnZSBhbmQgY29kZSBjb21tZW50cyBhcyBwZXIgQmpvcm4uCj4gPiBI
aSBIYW5zLAo+ID4gCj4gPiBJJ3ZlIHRlc3RlZCBvbiBhbiBPZHJvaWQtSEM0IHdpdGggYSBTQVRB
IFNTRCAodmlhIGFuIEFTTTEwNjEpIGJ5Cj4gPiBhcHBseWluZyB5b3VyIHY3IG9uIHY2LjE5LXJj
MyArIEJqb3JuJ3MgMjAyNTExMDMyMjE5MzAuMTgzMTM3Ni0xLQo+ID4gaGVsZ2Fhc0BrZXJuZWwu
b3JnICgiUENJOiBtZXNvbjogUmVtb3ZlIG1lc29uX3BjaWVfbGlua191cCgpIHRpbWVvdXQsCj4g
PiBtZXNzYWdlLCBzcGVlZCBjaGVjayIgd2hpY2ggaXMgcmVxdWlyZWQgdG8gZ2V0IHRoZSBtZXNv
biBQQ0llIHRvIHdvcmsgYXQKPiA+IGFsbCBzaW5jZSA2LjE4KS4gV2l0aCB0aGF0IHNldHVwIEkg
Z2V0Ogo+ID4gCj4gPiAjIGhkcGFybSAtLWRpcmVjdCAtdCAvZGV2L3NkYQo+ID4gIMKgVGltaW5n
IE9fRElSRUNUIGRpc2sgcmVhZHM6IDgzMiBNQiBpbsKgIDMuMDAgc2Vjb25kcyA9IDI3Ny4zMyBN
Qi9zZWMKPiA+IAo+ID4gSSd2ZSBhbiBpZGVudGljYWwgbWFjaGluZSwgd2l0aCBhIHNpbWlsYXIg
ZGlzayAoZXZlbiBzbGlnaHRseSBmYXN0ZXIsIG9uCj4gPiBwYXBlciksIHJ1bm5pbmcgcGxhaW4g
Ni4xMi55IGFuZCB0aGVyZSBJIGdldDoKPiA+IAo+ID4gIyBoZHBhcm0gLS1kaXJlY3QgLXQgL2Rl
di9zZGEKPiA+ICDCoFRpbWluZyBPX0RJUkVDVCBkaXNrIHJlYWRzOiA3NjQgTUIgaW7CoCAzLjAw
IHNlY29uZHMgPSAyNTQuMjYgTUIvc2VjCj4gPiAKPiA+IEkgcmVwZWF0ZWQgdGhvc2UgYSBmZXcg
dGltZXMsIG5vdCB2ZXJ5IHNjaWVudGlmaWMsIEkga25vdzsgYnV0IGFueXdheToKPiA+IAo+ID4g
VGVzdGVkLWJ5OiBSaWNhcmRvIFBhcmRpbmkgPHJpY2FyZG9AcGFyZGluaS5uZXQ+ICMgb24gT2Ry
b2lkLUhDNAo+ID4gCj4gPiBJJ3ZlIGFsc28gZmVlZGJhY2sgZnJvbSBhbm90aGVyIHVzZXIgcnVu
bmluZyB3aXRoIHRoaXMgc2VyaWVzIHdpdGgKPiA+IHN1Y2Nlc3Mgb24gYSBkaWZmZXJlbnQgbWVz
b24gUENJZSBtYWNoaW5lLCB3aWxsIGFzayB0aGVtIHRvIFRCIGFzIHdlbGw7Cj4gPiB0aGV5IGhh
ZCByZXBvcnRlZCBhIHNpZ25pZmljYW50IGRyb3AgaW4gcGVyZm9ybWFuY2Ugc2luY2UgdjYuMTgg
d2l0aG91dAo+ID4gdGhpcy4KPiBIaSwKPiAKPiBUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3Vy
IHRlc3QuIExldCdzIHdhaXQgZm9yIEJqb3JuJ3MgcmVwbHkuCgpQcm9iYWJseSB0b28gbGF0ZSBm
b3IgdGhlIDYuMjAgLyA3LjAgbWVyZ2Ugd2luZG93Li4uCgpCdXQuLiBpdCB3b3VsZCBiZSBuaWNl
IHdpdGggc29tZSBraW5kIG9mIGZlZWRiYWNrIGZyb20gQmpvcm4uCgpJcyB0aGVyZSBhbnkgY2hh
bmNlIHRoYXQgdGhpcyBnZXRzIGFwcGxpZWQgZm9yIDYuMjEvNy4xIG9yIGlzIHRoZXJlCmFueSBm
dW5kYW1lbnRhbCBvYmplY3Rpb24gYWdhaW5zdCB0aGlzIHNlcmllcz8KCgpLaW5kIHJlZ2FyZHMs
Ck5pa2xhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
