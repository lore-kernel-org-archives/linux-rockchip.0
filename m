Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D38FC5320E
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 20:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Qz4qHlqFMkMTRkmWg3n+Q9/BeYf1eaKajJyCaCLgpM=; b=mLQTrBToOr0MkHJz0q+MvQ/iHP
	9MqiMsG8bW4ZwPOTCNnIGZP3+R4BDoduT3xWa26MgGxoIewhFEUkU8F7nwpVpeHHuThN/dYCEkSn+
	5p3h/TMsV5ruZwh2OcKK6oZrzhHsB7CPVLpB9fBx2pCpUulb4Ev/2NyyzlQimxAi2Oo/cElGDtHDg
	nIyewAf59HBMFsdB5oxqJlNMkDETU2qPxIRH9gIs3tX7Rnr69TzMcDWSyqsNz3PDWydNbsd3okST0
	jvFFPLl/IRKfEENg5q2l1OMmYDNjevCaGQG7EU5AIT/tfn33lGiJnwgy/BcBE4045o8sk24C3lSK2
	FWmqwYkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfmUE-0000000HCwJ-1T14;
	Sun, 18 Aug 2024 20:26:50 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfmTW-0000000HCsC-0UvR;
	Sun, 18 Aug 2024 20:26:09 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724012764;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LoF+vbchm17LMfasv0YbGns6ehOlp2E0hnsjTQ7EaHg=;
	b=V6jLkkeQuGWSmeFNRiuW2DjUeJl1EXtcalhwzICuy4nk9Y/aE5uajMMzQpvlDDAarDSxWv
	PgqOnIGlIt3lh26j7ENfczvzcsWXwPjAdIbxj4on+sna1MZIaxFfDm+1IvPgSKmmlvieGm
	7hXMpRjQGEfK8XpWARWTAAr2YU7EMcnlFGiPv4UNAto0PcG1QWb66K1uWRfRPnu5cUoyaG
	m79uLxHPdFMpNbWfiAqsI06droltmBei5iJYtpgrWLsQGwY8NVkxOyDhkieKSnrxRR6Yfw
	sdSP+vdEnpUXVfH7X3LBwt8W+gL/gVROptGdNdRlIYhjGdozTwuAn2WgKF1Z3A==
Date: Sun, 18 Aug 2024 22:26:03 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Vicente Bergas <vicencb@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
In-Reply-To: <CAAMcf8CpkZHY6Awyo3LWZXfkqbZ1z3YcvF5W_08uv-XNov2j-A@mail.gmail.com>
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
 <d35a5c5216ee3d0321c725aea61e0326@manjaro.org>
 <CAAMcf8CFED71FKUBpRy+FZNf8XKim1fuxW1C+ErZQqLsaWm1yQ@mail.gmail.com>
 <4455b5175d3c372c15d9732f03b9eb20@manjaro.org>
 <CAAMcf8CpkZHY6Awyo3LWZXfkqbZ1z3YcvF5W_08uv-XNov2j-A@mail.gmail.com>
Message-ID: <58bcd9fad47377e4ccf203b3f11caf21@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_132606_719422_AAEC528C 
X-CRM114-Status: GOOD (  28.48  )
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

T24gMjAyNC0wOC0xOCAyMjoxMCwgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4gT24gU3VuLCBBdWcg
MTgsIDIwMjQgYXQgOToyMOKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiAK
PiB3cm90ZToKPj4gT24gMjAyNC0wOC0xOCAyMDo1NSwgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4+
ID4gT24gU3VuLCBBdWcgMTgsIDIwMjQgYXQgODoyNuKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWlj
QG1hbmphcm8ub3JnPgo+PiA+IHdyb3RlOgo+PiA+PiBPbiAyMDI0LTA4LTE4IDIwOjEzLCBWaWNl
bnRlIEJlcmdhcyB3cm90ZToKPj4gPj4gPiBpIGFtIGEgdXNlciBvZiB0aGUgQ09ORklHX1NQSV9T
UElERVYgZGV2aWNlLgo+PiA+PiA+IEl0IHN0b3BwZWQgd29ya2luZyBiZXR3ZWVuIDYuOCBhbmQg
Ni4xMC41Lgo+PiA+PiA+IFRoZSBTUEkgYnVzIGl0c2VsZiByZXBvcnRzIG5vIGVycm9ycyB0byB1
c2Vyc3BhY2UsIGJ1dCBubyBkZXZpY2VzCj4+ID4+ID4gYXBwZWFyIGNvbm5lY3RlZCB0byB0aGUg
YnVzLgo+PiA+PiA+IFRoZSBwbGF0Zm9ybSB1c2VkIGlzIFJLMzMyOC4KPj4gPj4gPiBUaGUgb25s
eSBzcGktcmVsYXRlZCBtZXNzYWdlIGluIGRtZXNnIGlzOgo+PiA+PiA+IHJvY2tjaGlwLXNwaSBm
ZjE5MDAwMC5zcGk6IFJ1bnRpbWUgUE0gdXNhZ2UgY291bnQgdW5kZXJmbG93IQo+PiA+Pgo+PiA+
PiBJJ20gd29ya2luZyBvbiBhIHJlbGF0ZWQgcGF0Y2guICBDb3VsZCB5b3UsIHBsZWFzZSwgZGVz
Y3JpYmUgeW91cgo+PiA+PiB1c2UgY2FzZSBmb3IgdGhlIHNwaWRldiBkcml2ZXIsIGkuZS4gd2hh
dCBib2FyZCBhcmUgeW91IHVzaW5nIGl0IG9uLAo+PiA+PiBhbmQgZm9yIHdoYXQgcHVycG9zZT8K
Pj4gPgo+PiA+IFRoZSBib2FyZCBpcyBST0NLNjQgYW5kIHRoZSBwdXJwb3NlIGlzIHRvIHVwZGF0
ZSBhbGwgdGhlIHNvZnR3YXJlIHRoYXQKPj4gPiBib2FyZCBydW5zLCB3aGljaCBpcyBzdG9yZWQg
b24gdGhlIFNQSSBOT1IgZmxhc2ggb25ib2FyZC4KPj4gCj4+IFNvLCBpZiBJIGdvdCBpdCByaWdo
dCwgeW91IGJvb3QgeW91ciBSb2NrNjQgZnJvbSB0aGUgU1BJIGNoaXAgdGhhdAo+PiBjb250YWlu
cyBhbGwgdGhlIHNvZnR3YXJlIGl0IHJ1bnMsIGJ1dCB5b3UgYWxzbyBib290IExpbnV4IG9uIGl0
IGZyb20KPiAKPiBjb3JyZWN0Cj4gCj4+IGEgbWljcm9TRCBjYXJkLCB0byB1cGRhdGUgdGhlIGNv
bnRlbnRzIG9mIHRoZSBTUEkgY2hpcD8gIEknbSBndWVzc2luZwo+PiBpdCB0aGF0IHdheSwgYmVj
YXVzZSB0aGUgc2l6ZSBvZiBhbiBTUEkgY2hpcCBpcyBoYXJkbHkgbGFyZ2UgZW5vdWdoCj4+IGZv
ciBzdG9yaW5nIGV2ZW4gYW4gZXh0cmVtZWx5IHNpemUtb3B0aW1pemVkIExpbnV4IHN5c3RlbS4K
PiAKPiBObywgZXZlcnl0aGluZyBpcyBpbiB0aGUgU1BJIE5PUiBmbGFzaCwgd2hpY2ggaXMgMTZN
QiBpbiBzaXplIGFuZCBpdAo+IGlzIGVub3VnaCBmb3IgbXkgYXBwbGljYXRpb24uCgpUaGFua3Mg
Zm9yIHRoZSBjbGFyaWZpY2F0aW9uLgoKPj4gQW55d2F5LCBJIHdvbmRlciB3aHkgZG8geW91IGhh
dmUgdG8gdXNlIHRoZSBzcGlkZXYgZHJpdmVyIGZvciB0aGF0Cj4+IHB1cnBvc2U/ICBXaHkgY2Fu
J3QgeW91IHVzZSAnY29tcGF0aWJsZSA9ICJqZWRlYyxzcGktbm9yIjsnIHRvIGFjY2Vzcwo+PiB0
aGUgU1BJIGNoaXAgdGhyb3VnaCAvZGV2L210ZDAgdW5kZXIgTGludXg/Cj4gCj4gVGhlIGJ1ZyBy
ZXBvcnQgaXMgYWJvdXQgdGhlIFNQSSBidXMsIE1URCBpcyBhIHNlcnZpY2UgcHJvdmlkZWQgb24g
dG9wCj4gb2YgdGhlIFNQSSBidXMuCj4gSWYgdGhlIGJ1cyBmYWlscywgdGhlbiB0aGVyZSBpcyBu
byBNVEQuCj4gVGhhdCBzYWlkLCBpIGRvbid0IHVzZSBNVEQuIFRoZSBib290bG9hZGVyIHJlYWRz
IHRoZSBrZXJuZWwsIGR0YiBhbmQKPiBpbml0cmFtZnMgZnJvbSB0aGUgU1BJIGZsYXNoIGludG8g
UkFNIGFuZCBib290cyBsaW51eCBlbnRpcmVseSBvbiBSQU0uCj4gVGhlcmUgaXMgbm8gcGVyc2lz
dGVudCBmaWxlc3lzdGVtIG9uIHRvcCBvZiBNVEQuCgpBbHJpZ2h0LCBidXQgeW91IHdyb3RlIGlu
aXRpYWxseSB0aGF0IHlvdSB1c2UgQ09ORklHX1NQSV9TUElERVYsCndoaWNoIG1lYW5zIHRoYXQg
dXNlIHRoZSBzcGlkZXYgZHJpdmVyLCBhbmQgeW91IGFsc28gd3JvdGUgdGhhdCBpdApoYXMgc3Rv
cHBlZCB3b3JraW5nLiAgQWxsIHRoYXQgbWVhbnQgdG8gbWUgdGhhdCB0aGUgc3BpZGV2IGRyaXZl
cgpubyBsb25nZXIgd29ya3MgZm9yIHlvdSwgd2hpY2ggaXMgc29tZXdoYXQga25vd24gaXNzdWUu
CgpBbnl3YXksIHBsZWFzZSBsZXQgbWUga25vdyBhcmUgdGhlIGZvbGxvd2luZyBkaXJlY3Rvcmll
cyBwcmVzZW50Cm9uIHlvdXIgUm9jazY0IHJ1bm5pbmcgdGhlIHRyb3VibGVzb21lIHZlcnNpb24g
b2YgTGludXgga2VybmVsLApwcmVzdW1hYmx5IDYuMTAuNSwgYW5kIGlmIHRoZXkgYXJlLCBwbGVh
c2Ugc2VuZCBvdmVyIHRoZSBsaXN0aW5ncwpvZiB0aGVpciBjb250ZW50czoKCiAgIC0gL3N5cy9i
dXMvc3BpCiAgIC0gL3N5cy9idXMvc3BpL2RldmljZXMKICAgLSAvc3lzL2J1cy9zcGkvZHJpdmVy
cwoKPj4gPiBJIGhhdmUgbm90IHRlc3RlZCB0aGlzIGtlcm5lbCB2ZXJzaW9uIG9uIFJLMzM5OSwg
YnV0IGl0IG1heSBhbHNvCj4+ID4gYWZmZWN0IHRoYXQgb3RoZXIgdXNlIGNhc2U6Cj4+ID4gaHR0
cHM6Ly9naXRsYWIuY29tL3ZpY2VuY2Iva2V2aW5ib290CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
