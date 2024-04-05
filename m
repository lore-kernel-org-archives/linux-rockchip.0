Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C64B1CD11C2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 14:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cd3wL3tnxHx5L7arh/pUr3XliUlyJpxTHID7AN80sv8=; b=2mIuVLMz2hwDWc
	W9ZYT2g4+uZwjptO7NtrVeIbB8P9AFV8ojKzEpu+rx3A72mrCbHq08QW8KcmLtWfkEqBIecNf52cD
	XHT8deCYSIBtlmduAnrOTeNgxoGjySYruJaOXxV+XOwe+Mc/Ej6N54hDQKfec5gCARVNBGbUjGFJq
	PqlMDJii2NodnRTqKhO5wupw7BIelaPplqYc9w2Kh0EilY+EyfHUf2M9ipRTQzSzRa/JITk/NU/e5
	TwXJP+IHXZ7tuXE+fckumRk/V0pCBrz23E9vrx0eZNeF62Kbhy5nrnXpQulh61LKfVO5cQKLkSylW
	edFeE/GskhMZKDUzBL+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskRq-00000007Qvg-1ZJB;
	Fri, 05 Apr 2024 14:21:42 +0000
Received: from luna.linkmauve.fr ([82.65.109.163])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskRl-00000007Qtp-3Ge9;
	Fri, 05 Apr 2024 14:21:39 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id BA81A106966F; Fri,  5 Apr 2024 16:21:30 +0200 (CEST)
Date: Fri, 5 Apr 2024 16:21:30 +0200
From: Link Mauve <linkmauve@linkmauve.fr>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	linux-kernel@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev
Subject: Re: [PATCH v2 0/2] Enable JPEG encoding on rk3588
Message-ID: <ZhAI6tQZTD7BTosI@desktop>
References: <20240327134115.424846-1-linkmauve@linkmauve.fr>
 <bbcb66e9499120a86b367e7abdac2d8e2e704bfb.camel@ndufresne.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bbcb66e9499120a86b367e7abdac2d8e2e704bfb.camel@ndufresne.ca>
Jabber-ID: linkmauve@linkmauve.fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_072138_070154_18E1E012 
X-CRM114-Status: GOOD (  38.23  )
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

T24gVGh1LCBBcHIgMDQsIDIwMjQgYXQgMDE6NDE6MTVQTSAtMDQwMCwgTmljb2xhcyBEdWZyZXNu
ZSB3cm90ZToKPiBIaSwKCkhpLAoKPiAKPiBMZSBtZXJjcmVkaSAyNyBtYXJzIDIwMjQgw6AgMTQ6
NDEgKzAxMDAsIEVtbWFudWVsIEdpbCBQZXlyb3QgYSDDqWNyaXTCoDoKPiA+IE9ubHkgdGhlIEpQ
RUcgZW5jb2RlciBpcyBhdmFpbGFibGUgZm9yIG5vdywgYWx0aG91Z2ggdGhlcmUgYXJlIHBhdGNo
ZXMKPiA+IGZvciB0aGUgdW5kb2N1bWVudGVkIFZQOCBlbmNvZGVyIGZsb2F0aW5nIGFyb3VuZFsw
XS4KPiAKPiBbMF0gc2VlbXMgbGlrZSBhIGJyb2tlbiBsaW5rLiBUaGUgVlA4IGVuY29kZXIgUkZD
IGlzIGZvciBSSzMzOTkgKGFuZCBIYW50cm8gSDEKPiBwb3N0ZWQgYnkgU1QgbW9yZSByZWNlbnRs
eSkuIFRoZSBUUk0gc2F5cyAiVkVQVTEyMShKUEVHIGVuY29kZXIgb25seSkiLCB3aGljaAo+IHN1
Z2dlc3QgdGhhdCB0aGUgSC4yNjQgYW5kIFZQOCBlbmNvZGVycyB1c3VhbGx5IGZvdW5kIG9uIHRo
ZSBWRVBVMTIxIGFyZQo+IHJlbW92ZWQuIEFzIFJvY2tjaGlwIGhhdmUgcmVtb3ZlIHRoZSBzeW50
aGVzaXplIHJlZ2lzdGVyIHdoaWxlIG1vZGlmeWluZyB0aGUgSDEKPiBJUCwgaXQgaXMgZGlmZmlj
dWx0IHRvIHZlcmlmeS4gQ29uZnVzaW5nbHkgdGhlIEguMjY0IHNwZWNpZmljIHJlZ2lzdGVycyBh
cmUKPiBkb2N1bWVudGVkIGluIHRoZSBUUk0gYXJvdW5kIFZFUFUxMjEuCgpBaCwgdGhlIGxpbmsg
YmVjYW1lLCBhbmQgd2FzIGluZGVlZCBTVOKAmXMgc2VyaWVzOgpodHRwczovL3BhdGNod29yay5r
ZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAvbGlzdC8/c2VyaWVzPTc4OTg4NSZhcmNo
aXZlPWJvdGgKCkJ1dCB0aGUgVFJNIHBhcnQgMSBzYXlzIHRoZSBWRVBVMTIxIHN1cHBvcnRzIEgu
MjY0IGVuY29kaW5nIChwYWdlIDM2NyksCmFuZCBpdOKAmXMgbGlrZWx5IHRoZXkgZGlkbuKAmXQg
cmVtb3ZlIGp1c3QgVlA4IHN1cHBvcnQgc2luY2UgdGhlIGNvZGVjCmZlYXR1cmVzIGFyZSBwcmV0
dHkgY2xvc2UgdG8gSC4yNjTigJlzLgoKPiAKPiA+IAo+ID4gVGhpcyBoYXMgYmVlbiB0ZXN0ZWQg
b24gYSByb2NrLTViLCByZXN1bHRpbmcgaW4gZm91ciAvZGV2L3ZpZGVvKgo+ID4gZW5jb2RlcnMu
ICBUaGUgdXNlcnNwYWNlIHByb2dyYW0gSeKAmXZlIGJlZW4gdXNpbmcgdG8gdGVzdCB0aGVtIGlz
Cj4gPiBPbml4WzFdLCB1c2luZyB0aGUganBlZy1lbmNvZGVyIGV4YW1wbGUsIGl0IHdpbGwgcGlj
ayBvbmUgb2YgdGhlc2UgZm91cgo+ID4gYXQgcmFuZG9tIChidXQgZGlzcGxheXMgdGhlIG9uZSBp
dCBwaWNrZWQpOgo+ID4gJSBmZm1wZWcgLWkgPGlucHV0IGltYWdlPiAtcGl4X2ZtdCB5dXZqNDIw
cCB0ZW1wLnl1dgo+ID4gJSBqcGVnLWVuY29kZXIgdGVtcC55dXYgPHdpZHRoPiA8aGVpZ2h0PiBO
VjEyIDxxdWFsaXR5PiBvdXRwdXQuanBlZwo+IAo+IEkgZG9uJ3QgbGlrZSB0aGF0IHdlIGV4cG9z
aW5nIGVhY2ggaWRlbnRpY2FsIGNvcmVzIGEgc2VwYXJhdGUgdmlkZW8gbm9kZXMuIEkKPiB0aGlu
ayB3ZSBzaG91bGQgYWltIGZvciAxIGRldmljZSwgYW5kIHRoZW4gbXVsdGktcGxleCBhbmQgc2No
ZWR1bGUgZGUgY29yZXMgZnJvbQo+IGluc2lkZSB0aGUgTGludXgga2VybmVsLgoKSSBhZ3JlZSwg
YnV0IHRoaXMgc2hvdWxkIGJlIGhhbmRsZWQgaW4gdGhlIGRyaXZlciBub3QgaW4gdGhlIGRldmlj
ZQp0cmVlLCBhbmQgaXQgY2FuIGJlIGRvbmUgbGF0ZXIuCgo+IAo+IE5vdCBkb2luZyB0aGlzIG5v
dyBtZWFucyB3ZSdsbCBuZXZlciBoYXZlIGFuIG9wdGltYWwgaGFyZHdhcmUgdXNhZ2UKPiBkaXN0
cmlidXRpb24uIEp1c3QgY29uc2lkZXIgdHdvIHVzZXJzcGFjZSBzb2Z0d2FyZSB3YW50aW5nIHRv
IGRvIGpwZWcgZW5jb2RpbmcuCj4gSWYgdGhleSBib3RoIHRha2UgYSBndWVzcywgdGhleSBtYXkg
ZW5kdXAgdXNpbmcgYSBzaW5nbGUgY29yZS4gV2hlcmUgd2l0aCBwcm9wZXIKPiBzY2hlZHVsaW5n
IGluIFY0TDIsIHRoZSBrZXJuZWwgd2lsbCBiZSBhYmxlIHRvIHByb3Blcmx5IGRpc3RyaWJ1dGUg
dGhlIGxvYWQuIEkKPiBpbnNpc3Qgb24gdGhpcywgc2luY2UgaWYgd2UgbWVyZ2UgeW91IGNoYW5n
ZXMgaXQgYmVjb21lcyBhbiBBQkkgYW5kIHdlIGNhbid0Cj4gY2hhbmdlIGl0IGFueW1vcmUuCgpX
aWxsIGl0IHJlYWxseSBiZWNvbWUgQUJJIGp1c3QgbGlrZSB0aGF0PyAgVXNlcnNwYWNlIHNob3Vs
ZCBhbHdheXMKZGlzY292ZXIgdGhlIHZpZGVvIG5vZGVzIGFuZCB0aGVpciBjYXBhYmlsaXRpZXMg
YW5kIG5vdCBoYXJkY29kZSBlLmcuIGEKc3BlY2lmaWMgL2Rldi92aWRlb04gZmlsZSBmb3IgYSBz
cGVjaWZpYyBjb2RlYy4gIEkgd291bGQgYXJndWUgdGhhdCB0aGlzCnNlcmllcyB3b3VsZCBsZXQg
dXNlcnNwYWNlIGRvIEpQRUcgZW5jb2RpbmcgcmlnaHQgYXdheSwgZXZlbiBpZiBpbiBhCmxlc3Mg
b3B0aW1hbCB3YXkgdGhhbiBpZiB0aGUgZHJpdmVyIHdvdWxkIHJvdW5kLXJvYmluIHRoZW0gdGhy
b3VnaCBhCnNpbmdsZSB2aWRlbyBub2RlLCBidXQgdGhhdCBjYW4gYWx3YXlzIGJlIGFkZGVkIGlu
IGEgZnV0dXJlIHZlcnNpb24uCgo+IAo+IEkgdW5kZXJzdGFuZCB0aGF0IHRoaXMgaW1wb3NlIGEg
cmV3b3JrIG9mIHRoZSBtZW0ybWVtIGZyYW1ld29yayBzbyB0aGF0IHdlIGNhbgo+IHJ1biBtdWx0
aXBsZSBqb2JzLCBidXQgdGhpcyB3aWxsIGJlIG5lZWRlZCBhbnl3YXkgb24gUkszNTg4LCBzaW5j
ZSB0aGUgcmt2ZGVjMiwKPiB3aGljaCB3ZSBkb24ndCBoYXZlIGEgZHJpdmVyIHlldCBpcyBhbHNv
IG11bHRpLWNvcmUsIGJ1dCB5b3UgbmVlZCB0byB1c2UgMiBjb3Jlcwo+IHdoZW4gdGhlIHJlc29s
dXRpb24gaXMgY2xvc2UgdG8gOEsuCgpJIHRoaW5rIHRoZSBtZWRpYXRlayBKUEVHIGRyaXZlciBh
bHJlYWR5IHN1cHBvcnRzIHRoYXQsIHdvdWxkIGl0IGJlIG9rCnRvIGRvIGl0IHRoZSBzYW1lIHdh
eT8KCj4gCj4gTmljb2xhcwo+IAo+ID4gCj4gPiBbMF0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlwL2xpc3QvP3Nlcmllcz03ODk4ODUKPiA+IFsxXSBo
dHRwczovL2NyYXRlcy5pby9jcmF0ZXMvb25peAo+ID4gCj4gPiBDaGFuZ2VzIHNpbmNlIHYxOgo+
ID4gLSBEcm9wcGVkIHBhdGNoZXMgMSBhbmQgNC4KPiA+IC0gVXNlIHRoZSBwcm9wZXIgY29tcGF0
aWJsZSBmb3JtLCBzaW5jZSB0aGlzIGRldmljZSBzaG91bGQgYmUgZnVsbHkKPiA+ICAgY29tcGF0
aWJsZSB3aXRoIHRoZSBWRVBVIG9mIHJrMzU2eC4KPiA+IC0gRGVzY3JpYmUgd2hlcmUgdGhlIFZF
UFUxMjEgbmFtZSBjb21lcyBmcm9tLCBhbmQgbGlzdCBvdGhlciBlbmNvZGVycwo+ID4gICBhbmQg
ZGVjb2RlcnMgcHJlc2VudCBpbiB0aGlzIFNvQy4KPiA+IC0gUHJvcGVybHkgdGVzdCB0aGUgZGV2
aWNlIHRyZWUgY2hhbmdlcywgSSBwcmV2aW91c2x5IGNvdWxkbuKAmXQgc2luY2UgSQo+ID4gICB3
YXMgdXNpbmcgYSB0b28gcmVjZW50IHZlcnNpb24gb2YgcHl0aG9uLWpzb25zY2hlbWHigKYKPiA+
IAo+ID4gRW1tYW51ZWwgR2lsIFBleXJvdCAoMik6Cj4gPiAgIG1lZGlhOiBkdC1iaW5kaW5nOiBt
ZWRpYTogRG9jdW1lbnQgcmszNTg44oCZcyBWRVBVMTIxCj4gPiAgIGFybTY0OiBkdHM6IHJvY2tj
aGlwOiBBZGQgVkVQVTEyMSB0byByazM1ODgKPiA+IAo+ID4gIC4uLi9iaW5kaW5ncy9tZWRpYS9y
b2NrY2hpcCxyazM1NjgtdmVwdS55YW1sICB8ICA4ICstCj4gPiAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kgICAgIHwgODAgKysrKysrKysrKysrKysrKysrKwo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgODYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+
IAoKLS0gCkxpbmsgTWF1dmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
