Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6D77C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 06:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkEPjpit0lHbEXlEjr9af8aY9+msXmH5g3sXqbB6S00=; b=c2AAQpujeHmJKl
	0yL1GE5sCBbwrQfMyakgWmgeSVJ4nKIWjkU9aa0puzCqSz1zcpRbpvK4euqynOAuVjA3La539jf0Y
	PZkecLAr0ha2d47UM1IIyUOHLDkvotePwnITkG1cBydj20Vlpn1GC841vwBohfpeFXrwN5othu4Aq
	cf1fSBShqe4wAER+7SaqyU8oqjJGRQ1h5WVYuW7S7qq11QivzPyOnNYoxtXJmjbWFwm3y+9R9kC9D
	cTSo49O1Mwg5tswTym1TPwfA4Aus9/Z9X7thMGDjMJ0PQh+GAfBt+6jd0MDf5Yy/Y1z5D+7puq9Mr
	MYAG8d8RF3+0301XrhDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF6fa-00000008X5w-2xAT;
	Thu, 06 Jun 2024 06:32:18 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF6fX-00000008X5M-0myr
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Jun 2024 06:32:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AC5D7CE1A0B;
	Thu,  6 Jun 2024 06:30:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDDB1C2BD10;
	Thu,  6 Jun 2024 06:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717655254;
	bh=/keuf3dCVugAEdTMAjTPla8xo+au+QS7B3jnvFRay+4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B8OBtjMZQ9zqWvnO92ecqm1YB3+k3fZnbc2UGOW3j2MonYFrXFMO72E1ksdpxVXqG
	 eI/zq5X4D+EvJU9/AOSG4hiqAKz5TMLf965wPG6sh1qstN1cY1ag3M98QjKfWebeCd
	 YfER2U+eKamuB6a+ZnlZ0U0mkgK9McKHZRh7iDm5+mOiPgx8EZRFrnXYaCfEAbrNQx
	 2q67Nql6oujxuRiCMBq04v0Z6bwqo5cjiGjsM10Ctl7WGUmA4reIiqfbGCt4zll6Ov
	 NCGkOVDSl0knhxIb6OETPPoRpGqWdxPcv6QzKE+qFm2H76n5xalChKl20LM28fWmZH
	 woNmAsitiX6eg==
Date: Thu, 6 Jun 2024 11:57:18 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 09/13] PCI: dw-rockchip: Refactor the driver to
 prepare for EP mode
Message-ID: <20240606062718.GB4441@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-9-3dc00fe21a78@kernel.org>
 <20240605080640.GJ5085@thinkpad>
 <ZmCm-Lt3yZpE84EG@ryzen.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZmCm-Lt3yZpE84EG@ryzen.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_233215_609460_B60D23D0 
X-CRM114-Status: GOOD (  21.13  )
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

T24gV2VkLCBKdW4gMDUsIDIwMjQgYXQgMDc6NTc6MTJQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBXZWQsIEp1biAwNSwgMjAyNCBhdCAwMTozNjo0MFBNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBXZWQsIE1heSAyOSwgMjAyNCBhdCAxMDoyOTow
M0FNICswMjAwLCBOaWtsYXMgQ2Fzc2VsIHdyb3RlOgo+ID4gPiBUaGlzIHJlZmFjdG9ycyB0aGUg
ZHJpdmVyIHRvIHByZXBhcmUgZm9yIEVQIG1vZGUuCj4gPiA+IEFkZCBvZi1tYXRjaCBkYXRhIHRv
IHRoZSBleGlzdGluZyBjb21wYXRpYmxlLCBhbmQgZXhwbGljaXRseSBkZWZpbmUgaXQgYXMKPiA+
ID4gRFdfUENJRV9SQ19UWVBFLiBUaGlzIHdheSwgd2Ugd2lsbCBiZSBhYmxlIHRvIGFkZCBFUCBt
b2RlIGluIGEgZm9sbG93LXVwCj4gPiA+IGNvbW1pdCBpbiBhIG11Y2ggbGVzcyBpbnRydXNpdmUg
d2F5LCB3aGljaCBtYWtlcyB0aGUgZm9sbHVwLXVwIGNvbW1pdCBtdWNoCj4gPiA+IGVhc2llciB0
byByZXZpZXcuCj4gPiA+IAo+ID4gPiBObyBmdW5jdGlvbmFsIGNoYW5nZSBpbnRlbmRlZC4KPiA+
ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3Jn
Pgo+ID4gCj4gPiBGZXcgbml0cGlja3MgYmVsb3cuIFdpdGggdGhvc2UgYWRkcmVzc2VkLAo+ID4g
Cj4gPiBSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhh
c2l2YW1AbGluYXJvLm9yZz4KPiA+IAo+ID4gPiAtLS0KPiAKPiAoc25pcCkKPiAKPiA+ID4gQEAg
LTI5NCwxMyArMjkyLDM1IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfcGNpZV9vcHMgZHdfcGNp
ZV9vcHMgPSB7Cj4gPiA+ICAJLnN0YXJ0X2xpbmsgPSByb2NrY2hpcF9wY2llX3N0YXJ0X2xpbmss
Cj4gPiA+ICB9Owo+ID4gPiAgCj4gPiA+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfY29uZmln
dXJlX3JjKHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiA+ID4gK3sKPiA+ID4gKwlz
dHJ1Y3QgZHdfcGNpZV9ycCAqcHA7Cj4gPiA+ICsJdTMyIHZhbDsKPiA+ID4gKwo+ID4gPiArCS8q
IExUU1NNIGVuYWJsZSBjb250cm9sIG1vZGUgKi8KPiA+ID4gKwl2YWwgPSBISVdPUkRfVVBEQVRF
X0JJVChQQ0lFX0xUU1NNX0VOQUJMRV9FTkhBTkNFKTsKPiA+ID4gKwlyb2NrY2hpcF9wY2llX3dy
aXRlbF9hcGIocm9ja2NoaXAsIHZhbCwgUENJRV9DTElFTlRfSE9UX1JFU0VUX0NUUkwpOwo+ID4g
PiArCj4gPiA+ICsJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlwLCBQQ0lFX0NMSUVO
VF9SQ19NT0RFLAo+ID4gPiArCQkJCSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTlRST0wpOwo+ID4g
PiArCj4gPiA+ICsJcHAgPSAmcm9ja2NoaXAtPnBjaS5wcDsKPiA+ID4gKwlwcC0+b3BzID0gJnJv
Y2tjaGlwX3BjaWVfaG9zdF9vcHM7Cj4gPiA+ICsKPiA+ID4gKwlyZXR1cm4gZHdfcGNpZV9ob3N0
X2luaXQocHApOwo+ID4gPiArfQo+ID4gPiArCj4gPiA+ICBzdGF0aWMgaW50IHJvY2tjaGlwX3Bj
aWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gIHsKPiA+ID4gIAlz
dHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ID4gPiAgCXN0cnVjdCByb2NrY2hpcF9w
Y2llICpyb2NrY2hpcDsKPiA+ID4gLQlzdHJ1Y3QgZHdfcGNpZV9ycCAqcHA7Cj4gPiA+ICsJY29u
c3Qgc3RydWN0IHJvY2tjaGlwX3BjaWVfb2ZfZGF0YSAqZGF0YTsKPiA+ID4gIAlpbnQgcmV0Owo+
ID4gPiAgCj4gPiA+ICsJZGF0YSA9IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YShkZXYpOwo+ID4g
PiArCWlmICghZGF0YSkKPiA+ID4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gPiAKPiA+IC1FTk9EQVRB
Pwo+IAo+IC1FSU5WQUwgc2VlbXMgdG8gYmUgbW9zdCBjb21tb246Cj4gJCBnaXQgZ3JlcCAtQSA1
IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSBkcml2ZXJzL3BjaS8KPiAKClllYWgsIGJ1dCB3ZSBh
YnVzZWQgLUVJTlZBTCBhIGxvdCA7KSBOb3dhZGF5cywgSSBwcmVmZXIgdG8gdXNlIG1vcmUgYXB0
IGVycm9yCmNvZGVzLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCu
muCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
