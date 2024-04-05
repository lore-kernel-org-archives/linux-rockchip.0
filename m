Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15130CD11C2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 13:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trmQGl0YNBpMhkn5lfe8autduhSoqQiEjlNin9dMg8s=; b=X6aon1JvJeF3n/
	93l8EjO6p9X8NmEgJ/k6HmccmJZ5zru1YYDq+mEenMdREERc82wzkMNde1OIox3LDj6MiHtY2n+p5
	H0V95B1uc6rptOU5IDLrdYc7vgJ+Ju226XMFHgypfd0ivIa4y2ctWTPYU7HRaaIqSvgmluUxYXALj
	wqg5vOotVNvwJpN4a/z2vVUsg1nagRPcw7orlHqg9xLoQdpDT5lCQl2T5qulH55IZx7uV7v2yVJJc
	HOexAJqQVvjeTMxj3eEtGOrn9n++X+9Kksj4k6bI/X71/nfOjJMeC07n4tLGcdxssxjX8A+oRXIIf
	bkWUEHVY6qQzsubcuNeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsjne-00000007Gzr-1wsx;
	Fri, 05 Apr 2024 13:40:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsjna-00000007Gxf-2tuQ;
	Fri, 05 Apr 2024 13:40:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 26610618F9;
	Fri,  5 Apr 2024 13:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F528C43390;
	Fri,  5 Apr 2024 13:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712324405;
	bh=3at59mEmgC+L0KoA8pMOqcydnzZkiW0Wf9PDxwZlAb8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PGDRvRl0Ip++MuCGskt5HMFYe9MozdxozZ/cROLlrICeVbR3g7aivBcsEW7CHAxYB
	 YqCiKc2PnSDxylDO2z8Bb/ctA9OqSNBotw5PcLgXEj7Dgo5rZnGlzQfI5hWghzbEVR
	 ulz0dEMODvuGx51/CuKJ8FO2kOz/+gTTgFhHthWEe/cfU45jmcaqPb04+zY5yaH7Y3
	 mBYGtjp4aLn0SjC9++qDkcJoqkosFnhcoHzxTb7T7HMssuNHyU/bVbib6ZqqTccw+d
	 /vlQBy+zi826O80lNPJ+2Pxb7CQIWQPX8dwx1DKU64mNVja3RhmfZHouIILLJ/iHux
	 wGUgTN4iKtdtg==
Date: Fri, 5 Apr 2024 15:39:58 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: Re: [PATCH v2 06/18] PCI: endpoint: test: Implement link_down event
 operation
Message-ID: <Zg//LiMg0Wh7LfT8@x1-carbon>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-7-dlemoal@kernel.org>
 <20240403074823.GE25309@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240403074823.GE25309@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_064006_820612_2F7948C0 
X-CRM114-Status: GOOD (  21.39  )
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

T24gV2VkLCBBcHIgMDMsIDIwMjQgYXQgMDE6MTg6MjNQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFNhdCwgTWFyIDMwLCAyMDI0IGF0IDAxOjE5OjE2UE0gKzA5MDAs
IERhbWllbiBMZSBNb2FsIHdyb3RlOgo+ID4gSW1wbGVtZW50IHRoZSBsaW5rX2Rvd24gZXZlbnQg
b3BlcmF0aW9uIHRvIHN0b3AgdGhlIGNvbW1hbmQgZXhlY3V0aW9uCj4gPiBkZWxheWVkIHdvcmsg
d2hlbiB0aGUgZW5kcG9pbnQgY29udHJvbGxlciBub3RpZmllcyBhIGxpbmsgZG93biBldmVudC4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRsZW1vYWxAa2VybmVsLm9y
Zz4KPiAKPiBUaGlzIHBhdGNoIGlzIGFscmVhZHkgcGFydCBvZiBhbm90aGVyIHNlcmllcyBJIHBv
c3RlZCBbMV0gYW5kIHVuZGVyIHJldmlldy4gU28KPiB0aGlzIGNhbiBiZSBkcm9wcGVkLgo+IAo+
IC0gTWFuaQo+IAo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kvMjAyNDA0
MDEtcGNpLWVwZi1yZXdvcmstdjItOS05NzBkYmU5MGI5OWRAbGluYXJvLm9yZy8KCk1hbmksIHlv
dXIgcGF0Y2ggZG9lcyBub3QgdXNlIF9zeW5jKCksCnNvIEkgZG9uJ3QgdGhpbmsgdGhhdCB3ZSBj
YW4gc2ltcGx5IGRyb3AgdGhpcyBwYXRjaC4KCgpLaW5kIHJlZ2FyZHMsCk5pa2xhcwoKPiAKPiA+
IFJldmlld2VkLWJ5OiBGcmFuayBMaSA8RnJhbmsuTGlAbnhwLmNvbT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLXRlc3QuYyB8IDEwICsrKysrKysr
KysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdGVzdC5jIGIvZHJp
dmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdGVzdC5jCj4gPiBpbmRleCBhYjQw
YzMxODI2NzcuLmU2ZDRlMTc0N2M5ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2VuZHBv
aW50L2Z1bmN0aW9ucy9wY2ktZXBmLXRlc3QuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvZW5kcG9p
bnQvZnVuY3Rpb25zL3BjaS1lcGYtdGVzdC5jCj4gPiBAQCAtODI0LDkgKzgyNCwxOSBAQCBzdGF0
aWMgaW50IHBjaV9lcGZfdGVzdF9saW5rX3VwKHN0cnVjdCBwY2lfZXBmICplcGYpCj4gPiAgCXJl
dHVybiAwOwo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgaW50IHBjaV9lcGZfdGVzdF9saW5rX2Rv
d24oc3RydWN0IHBjaV9lcGYgKmVwZikKPiA+ICt7Cj4gPiArCXN0cnVjdCBwY2lfZXBmX3Rlc3Qg
KmVwZl90ZXN0ID0gZXBmX2dldF9kcnZkYXRhKGVwZik7Cj4gPiArCj4gPiArCWNhbmNlbF9kZWxh
eWVkX3dvcmtfc3luYygmZXBmX3Rlc3QtPmNtZF9oYW5kbGVyKTsKPiA+ICsKPiA+ICsJcmV0dXJu
IDA7Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19ldmVudF9v
cHMgcGNpX2VwZl90ZXN0X2V2ZW50X29wcyA9IHsKPiA+ICAJLmNvcmVfaW5pdCA9IHBjaV9lcGZf
dGVzdF9jb3JlX2luaXQsCj4gPiAgCS5saW5rX3VwID0gcGNpX2VwZl90ZXN0X2xpbmtfdXAsCj4g
PiArCS5saW5rX2Rvd24gPSBwY2lfZXBmX3Rlc3RfbGlua19kb3duLAo+ID4gIH07Cj4gPiAgCj4g
PiAgc3RhdGljIGludCBwY2lfZXBmX3Rlc3RfYWxsb2Nfc3BhY2Uoc3RydWN0IHBjaV9lcGYgKmVw
ZikKPiA+IC0tIAo+ID4gMi40NC4wCj4gPiAKPiAKPiAtLSAKPiDgrq7grqPgrr/grrXgrqPgr43g
rqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
