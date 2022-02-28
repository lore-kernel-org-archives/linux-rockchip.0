Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B22FC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 22:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRObE8d/BKS/0FGRt/zpc0kg0qxLWcUVIJznjagKCwk=; b=tIIs/F/kM93F7a
	M7HXdGvSZp4eJ+JTWlh4RxRb9DZMCcgdimYp3czRnqF+INXbmRljtYBvoGh3kV7C7BZ8fkzU8p1l4
	NFfnbuyXM7KXBqaRQZODjeXL/kqwm1I3raurIQ8P3meAM76JZEpVY6EhKBpdVlieGFWjBl3aM9xVd
	awq+vZj0Cl6ZH/JVN77ksDC8XpjF37ytbaQORCTQQWS4utp5VI6FM6DQpONe4V6fbCUw3EGRiJNoE
	h3IxyNGBEqZILa8B7D1MmRpAuFqhuCIAjSc9BXl/BJOZntzgNhbi8JoVtJ4BQKvYMowDXWahwoWOa
	TwEmXPVK7BmzCa7V6jBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOoxC-00ELU0-0K; Mon, 28 Feb 2022 22:57:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOowy-00ELS6-Pp; Mon, 28 Feb 2022 22:57:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 3042A1F423B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1646089023;
 bh=tDw4/9z1BWN6uQ1DtFf3OuzY4gvXbQTpmRSQj18ThTk=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=jdt+ei0FRFhky8k2CoBDWEhaMiwgX1P5OLn4fNp4PXsGVCniC4TQ5nJ+ISqWKgqFS
 6iGxkpeCQDa4YoyJAGnngj1VnBVN3tlRJL5WkpsB+f6TnZCzIxA0TsbVPHR+NvXKMy
 LQaOTEbEzgz+Uqe6+v+yNpHt5qCuHD8qcuVAGog1cF574gPY1JuEoy1PyO8cmbnYSF
 g3iy3aPcLwLzSZsZyN8EE+g2gro3AdY7xcVTbNjAY3lhtWUMNAz1y3BQg/72FG8LDA
 YZ2p++yhi6099uCOJT1LWsCKDS+CIpeKDKpX51QzGDT7sxYUEepTOFrbKgUOvOuvU3
 lCtpQuC05Aqxg==
Message-ID: <43eb78d9-4252-938e-aaaa-8d353730314a@collabora.com>
Date: Tue, 1 Mar 2022 01:56:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, Robin Murphy <robin.murphy@arm.com>
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, kernel@pengutronix.de,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Peter Geis <pgwipeout@gmail.com>, Andy Yan <andy.yan@rock-chips.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
 <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
 <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
 <20220225131154.GE19585@pengutronix.de>
 <20220228141921.GN19585@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220228141921.GN19585@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_145705_162186_CD09314D 
X-CRM114-Status: GOOD (  27.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMi8yOC8yMiAxNzoxOSwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9uIEZyaSwgRmViIDI1LCAy
MDIyIGF0IDAyOjExOjU0UE0gKzAxMDAsIFNhc2NoYSBIYXVlciB3cm90ZToKPj4gT24gRnJpLCBG
ZWIgMjUsIDIwMjIgYXQgMTI6NDE6MjNQTSArMDAwMCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+Pj4g
T24gMjAyMi0wMi0yNSAxMToxMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+Pj4+IDI1LjAyLjIw
MjIgMTM6NDksIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+Pj4+PiBPbiBGcmksIEZlYiAyNSwg
MjAyMiBhdCAwMToyNjoxNFBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+Pj4+PiAy
NS4wMi4yMDIyIDEwOjUxLCBTYXNjaGEgSGF1ZXIg0L/QuNGI0LXRgjoKPj4+Pj4+PiBUaGUgcmsz
NTY4IEhETUkgaGFzIGFuIGFkZGl0aW9uYWwgY2xvY2sgdGhhdCBuZWVkcyB0byBiZSBlbmFibGVk
IGZvciB0aGUKPj4+Pj4+PiBIRE1JIGNvbnRyb2xsZXIgdG8gd29yay4gVGhlIHB1cnBvc2Ugb2Yg
dGhhdCBjbG9jayBpcyBub3QgY2xlYXIuIEl0IGlzCj4+Pj4+Pj4gbmFtZWQgImhjbGsiIGluIHRo
ZSBkb3duc3RyZWFtIGRyaXZlciwgc28gdXNlIHRoZSBzYW1lIG5hbWUuCj4+Pj4+Pj4KPj4+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+
Pj4+Pj4gLS0tCj4+Pj4+Pj4KPj4+Pj4+PiBOb3RlczoKPj4+Pj4+PiAgICAgIENoYW5nZXMgc2lu
Y2UgdjU6Cj4+Pj4+Pj4gICAgICAtIFVzZSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwgcmF0aGVyIHRo
YW4gZGV2bV9jbGtfZ2V0Cj4+Pj4+Pj4KPj4+Pj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9kd19oZG1pLXJvY2tjaGlwLmMgfCAxNiArKysrKysrKysrKysrKysrCj4+Pj4+Pj4gICAxIGZp
bGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+Pj4+Pj4+Cj4+Pj4+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jCj4+Pj4+Pj4gaW5kZXggZmU0Zjk1NTYy
MzlhYy4uYzZjMDBlODc3OWFiNSAxMDA2NDQKPj4+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jCj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYwo+Pj4+Pj4+IEBAIC03Niw2ICs3Niw3IEBAIHN0
cnVjdCByb2NrY2hpcF9oZG1pIHsKPj4+Pj4+PiAgIAljb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfaGRt
aV9jaGlwX2RhdGEgKmNoaXBfZGF0YTsKPj4+Pj4+PiAgIAlzdHJ1Y3QgY2xrICpyZWZfY2xrOwo+
Pj4+Pj4+ICAgCXN0cnVjdCBjbGsgKmdyZl9jbGs7Cj4+Pj4+Pj4gKwlzdHJ1Y3QgY2xrICpoY2xr
X2NsazsKPj4+Pj4+PiAgIAlzdHJ1Y3QgZHdfaGRtaSAqaGRtaTsKPj4+Pj4+PiAgIAlzdHJ1Y3Qg
cmVndWxhdG9yICphdmRkXzB2OTsKPj4+Pj4+PiAgIAlzdHJ1Y3QgcmVndWxhdG9yICphdmRkXzF2
ODsKPj4+Pj4+PiBAQCAtMjI5LDYgKzIzMCwxNCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2hkbWlf
cGFyc2VfZHQoc3RydWN0IHJvY2tjaGlwX2hkbWkgKmhkbWkpCj4+Pj4+Pj4gICAJCXJldHVybiBQ
VFJfRVJSKGhkbWktPmdyZl9jbGspOwo+Pj4+Pj4+ICAgCX0KPj4+Pj4+PiArCWhkbWktPmhjbGtf
Y2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKGhkbWktPmRldiwgImhjbGsiKTsKPj4+Pj4+PiAr
CWlmIChQVFJfRVJSKGhkbWktPmhjbGtfY2xrKSA9PSAtRVBST0JFX0RFRkVSKSB7Cj4+Pj4+Pgo+
Pj4+Pj4gSGF2ZSB5b3UgdHJpZWQgdG8gaW52ZXN0aWdhdGUgdGhlIGhjbGs/IEknbSBzdGlsbCB0
aGlua2luZyB0aGF0J3Mgbm90Cj4+Pj4+PiBvbmx5IEhETUkgdGhhdCBuZWVkcyB0aGlzIGNsb2Nr
IGFuZCB0aGVuIHRoZSBoYXJkd2FyZSBkZXNjcmlwdGlvbgo+Pj4+Pj4gZG9lc24ndCBsb29rIGNv
cnJlY3QuCj4+Pj4+Cj4+Pj4+IEkgYW0gc3RpbGwgbm90IHN1cmUgd2hhdCB5b3UgbWVhbi4gWWVz
LCBpdCdzIG5vdCBvbmx5IHRoZSBIRE1JIHRoYXQKPj4+Pj4gbmVlZHMgdGhpcyBjbG9jay4gVGhl
IFZPUDIgbmVlZHMgaXQgYXMgd2VsbCBhbmQgdGhlIGRyaXZlciBoYW5kbGVzIHRoYXQuCj4+Pj4K
Pj4+PiBJJ20gY3VyaW91cyB3aGV0aGVyIERTSS9EUCBhbHNvIG5lZWQgdGhhdCBjbG9jayB0byBi
ZSBlbmFibGVkLiBJZiB0aGV5Cj4+Pj4gZG8sIHRoZW4geW91IGFyZW4ndCBtb2RlbGluZyBoL3cg
cHJvcGVybHkgQUZBSUNTLgo+Pj4KPj4+IEFzc3VtaW5nIG5vYm9keSBhdCBSb2NrY2hpcCBkZWNp
ZGVkIHRvIG1ha2UgdGhpbmdzIG5lZWRsZXNzbHkgaW5jb25zaXN0ZW50Cj4+PiB3aXRoIHByZXZp
b3VzIFNvQ3MsIEhDTEtfVk9QIHNob3VsZCBiZSB0aGUgY2xvY2sgZm9yIHRoZSBWT1AncyBBSEIg
c2xhdmUKPj4+IGludGVyZmFjZS4gVXN1YWxseSwgaWYgdGhhdCBhZmZlY3RlZCBhbnl0aGluZyBv
dGhlciB0aGFuIGFjY2Vzc2luZyBWT1AKPj4+IHJlZ2lzdGVycywgaW5kZWVkIGl0IHdvdWxkIHNt
ZWxsIG9mIHNvbWV0aGluZyBiZWluZyB3cm9uZyBpbiB0aGUgY2xvY2sgdHJlZSwKPj4+IGJ1dCBp
biB0aGlzIGNhc2UgSSdkIGFsc28gYmUgc3VzcGljaW91cyBvZiB3aGV0aGVyIGl0IG1pZ2h0IGhh
dmUgZW5kZWQgdXAKPj4+IGNsb2NraW5nIHJlbGF0ZWQgR1JGIHJlZ2lzdGVycyBhcyB3ZWxsIChl
aXRoZXIgZGlyZWN0bHksIG9yIGluZGlyZWN0bHkgdmlhCj4+PiBzb21lIGdhdGUgdGhhdCB0aGUg
Y2xvY2sgZHJpdmVyIGhhc24ndCBtb2RlbGxlZCB5ZXQpLgo+Pgo+PiBPaywgSSBhbSBiZWdpbm5p
bmcgdG8gdW5kZXJzdGFuZC4gSSB2ZXJpZmllZCB0aGF0IGhkbWksIG1pcGkgYW5kIGRwIGFyZQo+
PiBoYW5naW5nIHdoZW4gSENMS19WT1AgaXMgZGlzYWJsZWQgYnkgZGlzYWJsaW5nIHRoYXQgY2xv
Y2sgdmlhIHN5c2ZzCj4+IHVzaW5nIENMT0NLX0FMTE9XX1dSSVRFX0RFQlVHRlMuIFdoZW4gaXQn
cyBkaXNhYmxlZCB0aGVuIHRoZSByZWdpc3RlcnMKPj4gb2YgdGhhdCB1bml0cyBjYW4ndCBiZSBh
Y2Nlc3NlZC4gSG93ZXZlciwgd2hlbiBJIGRpc2FibGUgSENMS19WT1AgYnkKPj4gZGlyZWN0bHkg
d3JpdGluZyB0byB0aGUgZ2F0ZSBiaXQgUkszNTY4X0NMS0dBVEVfQ09OKDIwKSB0aGVuIG9ubHkK
Pj4gYWNjZXNzaW5nIFZPUCByZWdpc3RlcnMgaGFuZ3MsIHRoZSBvdGhlciB1bml0cyBzdGF5IGZ1
bmN0aW9uYWwuCj4+IFNvIGl0IHNlZW1zIGl0IG11c3QgYmUgdGhlIHBhcmVudCBjbG9jayB3aGlj
aCBtdXN0IGJlIGVuYWJsZWQuIFRoZQo+PiBwYXJlbnQgY2xvY2sgaXMgaGNsa192by4gVGhpcyBj
bG9jayBzaG91bGQgYmUgaGFuZGxlZCBhcyBwYXJ0IG9mIHRoZQo+PiBSSzM1NjhfUERfVk8gcG93
ZXIgZG9tYWluOgo+Pgo+PiAJcG93ZXItZG9tYWluQFJLMzU2OF9QRF9WTyB7Cj4+ICAgICAgICAg
ICAgICAgICByZWcgPSA8UkszNTY4X1BEX1ZPPjsKPj4gICAgICAgICAgICAgICAgIGNsb2NrcyA9
IDwmY3J1IEhDTEtfVk8+LAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgUENMS19W
Tz4sCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNydSBBQ0xLX1ZPUF9QUkU+Owo+PiAg
ICAgICAgICAgICAgICAgIHBtX3FvcyA9IDwmcW9zX2hkY3A+LAo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwmcW9zX3ZvcF9tMD4sCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZx
b3Nfdm9wX20xPjsKPj4gICAgICAgICAgICAgICAgICAjcG93ZXItZG9tYWluLWNlbGxzID0gPDA+
Owo+PiAgICAgICAgIH07Cj4gCj4gRm9yZ2V0IHRoaXMuIFRoZSBjbG9ja3MgaW4gdGhpcyBub2Rl
IGFyZSBvbmx5IGVuYWJsZWQgZHVyaW5nIGVuYWJsaW5nIG9yCj4gZGlzYWJsaW5nIHRoZSBwb3dl
ciBkb21haW4sIHRoZXkgYXJlIGRpc2FibGVkIGFnYWluIGltbWVkaWF0ZWx5IGFmdGVyd2FyZHMu
Cj4gCj4gT0ssIEkgbmVlZCBIQ0xLX1ZPIHRvIGFjY2VzcyB0aGUgSERNSSByZWdpc3RlcnMuIEkg
dmVyaWZpZWQgdGhhdCBieQo+IGRpc2FibGluZyBIQ0xLX1ZPIGF0IHJlZ2lzdGVyIGxldmVsIChD
UlVfR0FURV9DT04oMjApIEJJVCgxKSkuIFRoZQo+IEhETUkgcmVnaXN0ZXJzIGJlY29tZSBpbmFj
Y2Vzc2libGUgdGhlbi4gVGhpcyBtZWFucyBJJ2xsIHJlcGxhY2UKPiBIQ0xLX1ZPUCBpbiB0aGUg
SERNSSBub2RlIHdpdGggSENMS19WTy4gRG9lcyB0aGlzIHNvdW5kIHNhbmU/CgpUaGUgUkszNTY4
X1BEX1ZPIGFscmVhZHkgaGFzIEhDTEtfVk8gYW5kIHRoZSBkb21haW4gc2hvdWxkIGJlCmF1dG8t
ZW5hYmxlZCBiZWZvcmUgSERNSSByZWdpc3RlcnMgYXJlIGFjY2Vzc2VkLCBoZW5jZSB5b3Ugc2hv
dWxkIGRvIHRoZQpvcHBvc2l0ZSBhbmQgcmVtb3ZlIHRoZSBIQ0xLX1ZPL1AgY2xvY2sgZnJvbSB0
aGUgSERNSSBEVCwgbm90IGFkZCBpdC4gSWYKdGhlIEhDTEtfVk8gY2xvY2sgaXNuJ3QgZW5hYmxl
ZCBieSB0aGUgZG9tYWluIGRyaXZlciwgdGhlbiB5b3UgbmVlZCB0bwpjaGVjayB3aHkuIE9yIGFt
IEkgbWlzc2luZyBzb21ldGhpbmc/CgpXaGF0IGFib3V0IERTSSBhbmQgRFA/IERvbid0IHRoZXkg
ZGVwZW5kIG9uIFJLMzU2OF9QRF9WTyBhcyB3ZWxsPwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
