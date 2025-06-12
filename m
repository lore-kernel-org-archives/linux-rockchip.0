Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2795FC61CE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 00:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Io5ncksMUqfzdq3z1e0H7Xvj9u1S5y16x1xXmLwEy9k=; b=d8mcmINUkZHWd4
	KtCp+OgE4jvRtdmaxnnO6d6iyI/dkpgNQLie6ShbuFO1C50VLv+fbHIJdlfjfw11HJQW1b/TfxKGR
	I32zQsyeHu9kasFF+x02GXG6pyaELydeJ5/wqezqGJUmKTQT0IlnKjtXS73IrJ3ea3zur4nGVeT1t
	EHd8FQVNnXS6rbpG3mV9uk6rwNZKOHTRk6q2SLSluuY9rhRtUbwiQcdvqbMS01rpqpku0uXzxdK87
	bLhNdQ0nMgponpnb5YbXO5PdaeKz5iv2iJ4qiUfblmnlYl3KIxPugIfhD+aliB1PKUjXU8vySIqUV
	BasQszwTtO0zdfz0Oobw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPsDj-0000000EwrD-2d9Y;
	Fri, 13 Jun 2025 00:24:35 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPl98-0000000Dzih-44d7;
	Thu, 12 Jun 2025 16:51:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2AB1AA51EE3;
	Thu, 12 Jun 2025 16:51:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 711E2C4CEEA;
	Thu, 12 Jun 2025 16:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749747081;
	bh=l2F/3t+8SIJLEDbXAmzSF5v0PHC967ELWAyFEgyMaJU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lle5iPO1DNjbhLGB4VbOJYvB39anufxlTt++B3y6P+q/9kOzh84ujA9JjxGxoO4kX
	 P40/8Grk4pMEDUtI5Krs4LO8b2d44eg9et83HLw9o+ULE3lz9SLJDqSOiudL2hSM7p
	 LEzmLzuoQxsFsGsVjxxyOlWTByGWcXgfY1XWTGGqWkLPhXLnoxnl3+tvK65OxDUCgl
	 ZwPVFY+G2CUwONVRX6VgfdPzSDe61er5LVkbvNZQh/nriZ69t7QBnhUhVKSMdA7d9K
	 YecY3x5y/FsYk0z6yOEoHI7yflKAs9zuQLMphkpj80Cx4SePw6J9YBlibVT2pyITmM
	 3YU6Vt5qTUNbw==
Date: Thu, 12 Jun 2025 22:21:13 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Niklas Cassel <cassel@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Laszlo Fiat <laszlo.fiat@proton.me>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] PCI: dw-rockchip: Do not enumerate bus before
 endpoint devices are ready
Message-ID: <3sgjqqwpp57dn7wxbd32qmzwaf3tu5jmylklxnf3siwz7ysuxn@y2uoh3clqpgr>
References: <2e23r5i5kmju476fcakodccyqnwanbhtyul5prqpqdgqivy3t6@ci54hfghhbb7>
 <20250612152442.GA908790@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250612152442.GA908790@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_095123_136745_B3540353 
X-CRM114-Status: GOOD (  39.87  )
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

T24gVGh1LCBKdW4gMTIsIDIwMjUgYXQgMTA6MjQ6NDJBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBUaHUsIEp1biAxMiwgMjAyNSBhdCAwODozMzo1NFBNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBUaHUsIEp1biAxMiwgMjAyNSBhdCAwOTo0NDo0
N0FNIC0wNTAwLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4gPiBPbiBUaHUsIEp1biAxMiwgMjAy
NSBhdCAwNjozMDozN1BNICswNTMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+
ID4gT24gVGh1LCBKdW4gMTIsIDIwMjUgYXQgMDc6MjE6MDhBTSAtMDUwMCwgQmpvcm4gSGVsZ2Fh
cyB3cm90ZToKPiA+ID4gPiA+IE9uIFRodSwgSnVuIDEyLCAyMDI1IGF0IDAxOjQwOjIzUE0gKzAy
MDAsIE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFRodSwgSnVuIDEyLCAyMDI1
IGF0IDA2OjM4OjI3QU0gLTA1MDAsIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiA+ID4gPiA+ID4g
T24gVGh1LCBKdW4gMTIsIDIwMjUgYXQgMDE6MTk6NDVQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiA+ID4gPiA+ID4gPiA+IE9uIFdlZCwgSnVuIDExLCAyMDI1IGF0IDA0OjE0OjU2UE0g
LTA1MDAsIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+IE9uIFdlZCwgSnVu
IDExLCAyMDI1IGF0IDEyOjUxOjQyUE0gKzAyMDAsIE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4gPiA+
ID4gPiA+ID4gPiA+ID4gQ29tbWl0IGVjOWZkNDk5YjljNiAoIlBDSTogZHctcm9ja2NoaXA6IERv
bid0IHdhaXQgZm9yIGxpbmsgc2luY2Ugd2UgY2FuCj4gPiA+ID4gPiA+ID4gPiA+ID4gZGV0ZWN0
IExpbmsgVXAiKSBjaGFuZ2VkIHNvIHRoYXQgd2Ugbm8gbG9uZ2VyIGNhbGwgZHdfcGNpZV93YWl0
X2Zvcl9saW5rKCksCj4gPiA+ID4gPiA+ID4gPiA+ID4gYW5kIGluc3RlYWQgZW51bWVyYXRlIHRo
ZSBidXMgZGlyZWN0bHkgYWZ0ZXIgcmVjZWl2aW5nIHRoZSBMaW5rIFVwIElSUS4KPiA+ID4gPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiBUaGlzIG1lYW5zIHRoYXQgdGhlcmUgaXMg
bm8gbG9uZ2VyIGFueSBkZWxheSBiZXR3ZWVuIGxpbmsgdXAgYW5kIHRoZSBidXMKPiA+ID4gPiA+
ID4gPiA+ID4gPiBnZXR0aW5nIGVudW1lcmF0ZWQuCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
ID4gPiA+IEkgdGhpbmsgdGhlIGNvbW1lbnQgYXQgdGhlIFBDSUVfVF9SUlNfUkVBRFlfTVMgZGVm
aW5pdGlvbiBzaG91bGQgYmUKPiA+ID4gPiA+ID4gPiA+ID4gZW5vdWdoIChhbHRob3VnaCBpdCBt
aWdodCBuZWVkIHRvIGJlIHVwZGF0ZWQgdG8gbWVudGlvbiBsaW5rLXVwKS4KPiA+ID4gPiA+ID4g
PiA+ID4gVGhpcyBkZWxheSBpcyBnb2luZyB0byBiZSBhIHN0YW5kYXJkIHBpZWNlIG9mIGV2ZXJ5
IGRyaXZlciwgc28gaXQKPiA+ID4gPiA+ID4gPiA+ID4gd29uJ3QgcmVxdWlyZSBzcGVjaWFsIG5v
dGljZS4KPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gTG9va2luZyBhdCBwY2kuaCwg
d2UgYWxyZWFkeSBoYXZlIGEgY29tbWVudCBtZW50aW9uaW5nIGV4YWN0bHkgdGhpcwo+ID4gPiA+
ID4gPiA+ID4gKGxpbmstdXApOgo+ID4gPiA+ID4gPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL3Rv
cnZhbGRzL2xpbnV4L2Jsb2IvdjYuMTYtcmMxL2RyaXZlcnMvcGNpL3BjaS5oI0w1MS1MNjMKPiA+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gSSB3aWxsIGNoYW5nZSB0aGUgcGF0Y2hlcyB0
byB1c2UgUENJRV9SRVNFVF9DT05GSUdfREVWSUNFX1dBSVRfTVMgaW5zdGVhZC4KPiA+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gPiBJJ2xsIG1vcmUgY2xvc2VseSBsYXRlciwgYnV0IEkgdGhpbmsg
UENJRV9UX1JSU19SRUFEWV9NUyBhbmQKPiA+ID4gPiA+ID4gPiBQQ0lFX1JFU0VUX0NPTkZJR19E
RVZJQ0VfV0FJVF9NUyBhcmUgZHVwbGljYXRlcyBhbmQgb25seSBvbmUgc2hvdWxkCj4gPiA+ID4g
PiA+ID4gZXhpc3QuICBJdCBsb29rcyBsaWtlIHRoZXkgZ290IG1lcmdlZCBhdCBhYm91dCB0aGUg
c2FtZSB0aW1lIGJ5Cj4gPiA+ID4gPiA+ID4gZGlmZmVyZW50IHBlb3BsZSwgc28gd2UgZGlkbid0
IG5vdGljZS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEkgY2FtZSB0byB0aGUgc2FtZSBjb25j
bHVzaW9uLCBJIHdpbGwgc2VuZCBhIHBhdGNoIHRvIHJlbW92ZQo+ID4gPiA+ID4gPiBQQ0lFX1Rf
UlJTX1JFQURZX01TIGFuZCBjb252ZXJ0IHRoZSBvbmx5IGV4aXN0aW5nIHVzZXIgdG8gdXNlCj4g
PiA+ID4gPiA+IFBDSUVfUkVTRVRfQ09ORklHX0RFVklDRV9XQUlUX01TLgo+ID4gPiA+ID4gCj4g
PiA+ID4gPiBJIHRoaW5rIFBDSUVfVF9SUlNfUkVBRFlfTVMgZXhwcmVzc2VzIHRoZSBwdXJwb3Nl
IG9mIHRoZSB3YWl0IG1vcmUKPiA+ID4gPiA+IHNwZWNpZmljYWxseS4gIEl0J3Mgbm90IHRoYXQg
dGhlIGRldmljZSBpcyBjb21wbGV0ZWx5IHJlYWR5IGFmdGVyCj4gPiA+ID4gPiAxMDBtczsganVz
dCB0aGF0IGl0IHNob3VsZCBiZSBhYmxlIHRvIHJlc3BvbmQgd2l0aCBSUlMgaWYgaXQgbmVlZHMK
PiA+ID4gPiA+IG1vcmUgdGltZS4KPiA+ID4gPiAKPiA+ID4gPiBZZXMsIGJ1dCBub25lIG9mIHRo
ZSBkcml2ZXJzIGFyZSBjaGVja2luZyBmb3IgdGhlIFJSUyBzdGF0dXMKPiA+ID4gPiBjdXJyZW50
bHkuIFNvIHVzaW5nIFBDSUVfVF9SUlNfUkVBRFlfTVMgZ2l2ZXMgYSB3cm9uZyBpbXByZXNzaW9u
Cj4gPiA+ID4gdGhhdCB0aGUgZHJpdmVyIGlzIHdhaXRpbmcgZm9yIHRoZSBSUlMgc3RhdHVzIGZy
b20gdGhlIGRldmljZS4KPiA+ID4gCj4gPiA+IFRoZXJlJ3MgMTAwbXMgaW1tZWRpYXRlbHkgYWZ0
ZXIgcmVzZXQgb3IgbGluay11cCB3aGVuIHdlIGNhbid0IHNlbmQKPiA+ID4gY29uZmlnIHJlcXVl
c3RzIGJlY2F1c2UgdGhlIGRldmljZSBtYXkgbm90IGJlIGFibGUgdG8gcmVzcG9uZCBhdCBhbGwu
Cj4gPiA+IAo+ID4gPiBBZnRlciAxMDBtcywgdGhlIGRldmljZSBzaG91bGQgYmUgYWJsZSB0byBy
ZXNwb25kIHRvIGNvbmZpZyByZXF1ZXN0cwo+ID4gPiB3aXRoIFNDLCBVUiwgUlJTLCBvciBDQSBz
dGF0dXMgKHNlYyAyLjIuOS4xKS4gIElmIGl0IHJlc3BvbmRzIHdpdGgKPiA+ID4gUlJTLCB0aGUg
YWNjZXNzIHNob3VsZCBiZSByZXRyaWVkIGVpdGhlciBieSBoYXJkd2FyZSBvciAoaWYgUlJTIFNW
IGlzCj4gPiA+IGVuYWJsZWQpIGJ5IHNvZnR3YXJlLiAgVGhpcyBpcyB0aGUgb3JpZ2luIG9mICJS
UlNfUkVBRFkiIC0tIHRoZSBkZXZpY2UKPiA+ID4gY2FuIGF0IGxlYXN0IGRvIFJSUy4KPiA+IAo+
ID4gWWVhaCwgYnV0IHRoZSB1c2FnZSBvZiAxMDBtcyBpcyBvbmx5IHZhbGlkIGlmIFJSUyBTViBp
cyBlbmFibGVkIGJ5Cj4gPiB0aGUgc29mdHdhcmUgYXMgcGVyIHNlYyA2LjYuMToKPiA+IAo+ID4g
Ikl0IGlzIHN0cm9uZ2x5IHJlY29tbWVuZGVkIHRoYXQgc29mdHdhcmUgdXNlIDEwMCBtcyB3YWl0
IHBlcmlvZHMKPiA+IG9ubHkgaWYgc29mdHdhcmUgZW5hYmxlcyBDb25maWd1cmF0aW9uIFJSUyBT
b2Z0d2FyZSBWaXNpYmlsaXR5Ii4KPiAKPiBJIHNlZSB0aGF0IHN0YXRlbWVudCBidXQgZG9uJ3Qg
dW5kZXJzdGFuZCBpdC4gIERvIHlvdSB0aGluayBpdCdzIG1lYW50Cj4gYXMgYW4gZXhjZXB0aW9u
IHRvIHRoZSBmaXJzdCB0d28gcGFyYWdyYXBocyB0aGF0IHNheSAic29mdHdhcmUgbXVzdAo+IHdh
aXQgYSBtaW5pbXVtIG9mIDEwMCBtcyIgZm9sbG93aW5nIGVpdGhlciAiZXhpdCBmcm9tIENvbnZl
bnRpb25hbAo+IFJlc2V0IiBvciAiYWZ0ZXIgTGluayB0cmFpbmluZyBjb21wbGV0ZXMiPwo+IAoK
TWF5YmUgeWVzLgoKPiBJIGNhbid0IGltYWdpbmUgdGhhdCBpdCBtZWFucyAiaWYgdGhlIFJvb3Qg
UG9ydCBkb2Vzbid0IHN1cHBvcnQgUlJTIFNWCj4gb3Igc29mdHdhcmUgZG9lc24ndCBlbmFibGUg
UlJTIFNWLCBzb2Z0d2FyZSBuZWVkbid0IHdhaXQgYXQgYWxsIGJlZm9yZQo+IGlzc3VpbmcgY29u
ZmlnIHJlcXVlc3RzLiIKPiAKClllYWgsIGl0IGNhbm5vdCBiZS4KCj4gVGhpcyB3aG9sZSB0aGlu
ZyBpcyBhYm91dCB3aGV0aGVyIHRoZSBFbmRwb2ludCBpcyByZWFkeSB0byByZXNwb25kLgo+IEEg
Um9vdCBQb3J0IHByb3BlcnR5IChSUlMgU1Ygc3VwcG9ydCBvciBlbmFibGVtZW50KSBkb2Vzbid0
IHRlbGwgdXMKPiBhbnl0aGluZyBhYm91dCB0aGUgRW5kcG9pbnQuCgpJIHRoaW5rIHdlIHNob3Vs
ZCBqdXN0IGxlYXZlIHRoZSBSUlMgZm9yIGdvb2QgOikgSSB3YXMgaGF2aW5nIGEgZmVlbGluZyB0
aGF0IHRoZQpSUlMgZGVmaW5lIHdlIGhhdmUgZGlkbid0IGZpdCB0aGUgcHVycG9zZSBvZiB3YWl0
aW5nIGZvciB0aGUgZGV2aWNlIHRvIGJlIHJlYWR5CnBvc3QgbGluayB1cC4gSGVuY2UsIEkgbG9v
a2VkIGl0IHVwIGluIHRoZSBzcGVjIGFuZCBzcG90dGVkIHRoZSBhYm92ZSBzdGF0ZW1lbnQsCmp1
c3QgdG8gY29uZnVzZSB5b3UgYW5kIG15c2VsZi4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
