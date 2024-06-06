Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3AF8C27C52
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 06:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUnI2Kj3SXt3EjsgwdVNEVt+N/P4bCOGG3mrbiLqAqQ=; b=Hyve4qFNPoUNco
	liEl88p7VtE3NERll4ZJfZct+mMpFRg+glCh+b1G5y5I5fVGyCZF3NBjmOhgbFPQ8CeK1qH2cwl2q
	7anj2JbL/dd089rz5uR+IydKrfYgT2Hj1u2kb5nO7Wpi8hJYnA09/H+H3uf6mogDG1SLeEUhmg3Ew
	uxHFwLWOxORVyPnBEF9/gBlKkvrzGNZU278Eq2trJwcRwiDvucx6REKq+/AGTfKrY/f6+uZEOmIeq
	SPZJJjcFEnMlkkaR0ZeoGWt5nG1WPQL4LdriVIZv+5+hUS47IvQPeUhaWCFxE5hORC5uFgsNL+ebd
	PI24qtW7rcbWEpbsqNrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF6ZW-00000008W4Y-1Lnr;
	Thu, 06 Jun 2024 06:26:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF6ZT-00000008W45-3o9w
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Jun 2024 06:26:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5831D61BB0;
	Thu,  6 Jun 2024 06:25:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB9B8C3277B;
	Thu,  6 Jun 2024 06:25:50 +0000 (UTC)
Date: Thu, 6 Jun 2024 11:55:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
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
Subject: Re: [PATCH v4 03/13] dt-bindings: PCI: snps,dw-pcie-ep: Add
 tx_int{a,b,c,d} legacy irqs
Message-ID: <20240606062538.GA4441@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-3-3dc00fe21a78@kernel.org>
 <20240605073402.GE5085@thinkpad>
 <ZmCQak-m7RWRxiix@ryzen.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZmCQak-m7RWRxiix@ryzen.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_232600_106204_11BFFC65 
X-CRM114-Status: GOOD (  30.93  )
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

T24gV2VkLCBKdW4gMDUsIDIwMjQgYXQgMDY6MjA6NThQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBXZWQsIEp1biAwNSwgMjAyNCBhdCAwMTowNDowMlBNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBXZWQsIE1heSAyOSwgMjAyNCBhdCAxMDoyODo1
N0FNICswMjAwLCBOaWtsYXMgQ2Fzc2VsIHdyb3RlOgo+ID4gPiBUaGUgRFdDIGNvcmUgaGFzIGZv
dXIgaW50ZXJydXB0IHNpZ25hbHM6IHR4X2ludGEsIHR4X2ludGIsIHR4X2ludGMsIHR4X2ludGQK
PiA+ID4gdGhhdCBhcmUgdHJpZ2dlcmVkIHdoZW4gdGhlIFBDSWUgY29udHJvbGxlciAod2hlbiBy
dW5uaW5nIGluIEVuZHBvaW50IG1vZGUpCj4gPiA+IGhhcyBzZW50IGFuIEFzc2VydF9JTlRBIE1l
c3NhZ2UgdG8gdGhlIHVwc3RyZWFtIGRldmljZS4KPiA+ID4KPiA+ID4gU29tZSBEV0MgY29udHJv
bGxlcnMgaGF2ZSB0aGVzZSBpbnRlcnJ1cHQgaW4gYSBjb21iaW5lZCBpbnRlcnJ1cHQgc2lnbmFs
Lgo+ID4gPgo+ID4gPiBBZGQgdGhlIGRlc2NyaXB0aW9uIG9mIHRoZXNlIGludGVycnVwdHMgdG8g
dGhlIGRldmljZSB0cmVlIGJpbmRpbmcuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IE5pa2xh
cyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+ID4KPiA+IE5pdDogV2UgcmVjZW50bHkgY2hh
bmdlZCB0aGUgZHJpdmVyIGluc3RhbmNlcyBvZiAnTEVHQUNZJyB0byAnSU5UWCcuIEJ1dCB0aGUK
PiA+IGJpbmRpbmcgaXQgc3RpbGwgdXNpbmcgJ2xlZ2FjeScuIENvbnNpZGVyaW5nIHRoYXQgdGhl
ICdsZWdhY3knIElSUSBhZGRlZCB0byB0aGUKPiA+IFJDIGJpbmRpbmcgcmVjZW50bHkgKGViY2U5
ZjY2MjNhNyksIHNob3VsZCB3ZSByZW5hbWUgaXQ/Cj4gPgo+ID4gVGhpcyB3aWxsIGZvcmNlIHRo
ZSBkcml2ZXIgdG8gc3VwcG9ydCBib3RoICdsZWdhY3knIGFuZCAnaW50eCcgZm9yIGJhY2t3YXJk
cwo+ID4gY29tcGF0aWJpbGl0eS4KPiAKPiBJIGRvbid0IHRoaW5rIHRoaXMgaXMgdHJ1ZS4KPiAK
PiAKPiBMb29rIGF0IHNucHMsZHctcGNpZS55YW1sIGluIDYuMTAtcmMyOgo+IAo+IFRoZSBpbmRp
dmlkdWFsIGludGVycnVwdHMgYXJlIGNhbGxlZDoKPiAgICAgICAgICAgICBMZWdhY3kgQS9CL0Mv
RCBpbnRlcnJ1cHQgc2lnbmFsLiBCYXNpY2FsbHkgaXQncyB0cmlnZ2VyZWQgYnkKPiAgICAgICAg
ICAgICByZWNlaXZpbmcgYSBBc3NlcnRfSU5Ue0EsQixDLER9L0Rlc2Fzc2VydF9JTlR7QSxCLEMs
RH0gbWVzc2FnZQo+ICAgICAgICAgICAgIGZyb20gdGhlIGRvd25zdHJlYW0gZGV2aWNlLgo+ICAg
ICAgICAgICBwYXR0ZXJuOiAiXmludChhfGJ8Y3xkKSQiCj4gCj4gVGhlIGNvbWJpbmVkIGludGVy
cnVwdCBpcyBjYWxsZWQ6Cj4gICAgICAgICAgICAgQ29tYmluZWQgTGVnYWN5IEEvQi9DL0QgaW50
ZXJydXB0IHNpZ25hbC4gU2VlICJeaW50KGF8YnxjfGQpJCIgZm9yCj4gICAgICAgICAgICAgZGV0
YWlscy4KPiAgICAgICAgICAgY29uc3Q6IGxlZ2FjeQo+IAo+IFNvIHlvdSB1c2UgJ2ludGEnLCAn
aW50YicsICdpbnRjJywgJ2ludGQnIGlmIHlvdXIgU29DIGhhcyBhIGRlZGljYXRlZAo+IGludGVy
cnVwdCBsaW5lIGZvciBlYWNoIG9mIHRoZXNlIGlycXMuCj4gCj4gSWYgdGhlIFNvQyBzaW1wbHkg
aGFzIGEgc2luZ2xlIGNvbWJpbmVkIGludGVycnVwdCBsaW5lIGZvciB0aGVzZSBpcnFzLAo+IHRo
ZW4geW91IHVzZSAnbGVnYWN5Jwo+IAo+IAo+IFRoaXMgcGF0Y2ggc2ltcGx5IGFkZHM6Cj4gJ3R4
X2ludGEnLCAndHhfaW50YicsICd0eF9pbnRjJywgJ3R4X2ludGQnIGFzIGluZGl2aWR1YWwgaW50
ZXJydXB0cwo+IGFuZCB0aGUgY29tYmluZWQgaW50ZXJydXB0ICdsZWdhY3knIHRvIHNucHMsZHct
cGNpZS1lcC55YW1sLgo+IAo+IAo+IFBhdGNoIGViY2U5ZjY2MjNhNyBzaW1wbHkgYWxsb3dlZCB0
aGUgY29tYmluZWQgaW50ZXJydXB0IGxpbmUgJ2xlZ2FjeScKPiB0byBiZSB1c2VkIGJ5IHRoZSBy
b2NrY2hpcC1kdy1wY2llLnlhbWwgYmluZGluZy4KPiBUaGlzIGlzIGJlY2F1c2UgdGhlIHdheSB0
aGF0IGRldmljZSB0cmVlIGlzIGRlc2lnbmVkLiBZb3UgbmVlZCB0byBzcGVjaWZ5Cj4gc29tZXRo
aW5nIGJvdGggaW4gdGhlIGdlbmVyaWMgYmluZGluZyAod2hpY2ggc3BlY2lmaWVzIGV2ZXJ5dGhp
bmcpLAo+IGFuZCBpbiB0aGUgZ2x1ZSBkcml2ZXIgYmluZGluZywgdG8gc3BlY2lmeSB0aGUgc3Vi
c2V0IHRoYXQgaXMgYWxsb3dlZCBieQo+IHRoZSBnbHVlIGRyaXZlci4KPiAKPiAKPiBTaW5jZSBh
IGNvbnRyb2xsZXIgY2Fubm90IHJ1biBpbiBib3RoIEVQIGFuZCBSQyBtb2RlIGF0IHRoZSBzYW1l
IHRpbWUsCj4gSSB0aGluayB0aGF0IGl0IGlzIGZpbmUgdGhhdCB0aGlzIHBhdGNoIHJldXNlcyB0
aGUgbmFtZSAnbGVnYWN5JyBmb3IgdGhlCj4gY29tYmluZWQgaW50ZXJydXB0Lgo+IAo+IEFuZCBh
cyB5b3UgY2FuIHNlZSBpbiBwYXRjaCA1IGluIHRoaXMgc2VyaWVzLCByazM1ODggYWN0dWFsbHkg
dXNlcyBhIHNpbmdsZQo+IGNvbWJpbmVkIElSUSAoY2FsbGVkIGxlZ2FjeSkgZm9yICdpbnRhJywg
J2ludGInLCAnaW50YycsICdpbnRkJywgJ3R4X2ludGEnLAo+ICd0eF9pbnRiJywgJ3R4X2ludGMn
LCAndHhfaW50ZCcuCj4gCgpJIHRoaW5rIHlvdSBtaXN1bmRlcnN0b29kIHdoYXQgSSB3YXMgYXNr
aW5nLiBJIHdhcyBqdXN0IGFza2luZyBpZiB3ZSBzdGlsbCB3YW50CnRvIGtlZXAgdGhlIHRlcm0g
J2xlZ2FjeScgZm9yIElOVHggSVJRcyBpbiBEVCBiaW5kaW5nIG9yIG5vdCwgc2luY2Ugd2UgcmVj
ZW50bHkKZ290IHJpZCBvZiB0aGF0IHRlcm1pbm9sb2d5IGluIFBDSSBkcml2ZXJzLgoKQnV0IGlm
IHRoZSByb2NrY2hpcCBUUk0gZGVmaW5lcyBpdCBhcyAnbGVnYWN5JyB0aGVuIGl0IHNob3VsZCBi
ZSBjYWxsZWQgYXMgaXMgaW4KdGhlIHJvY2tjaGlwIGJpbmRpbmcuIEJ1dCBJIGRvbid0IHRoaW5r
IERXQyBTcGVjIGFsc28gZGVmaW5lcyBpdCB0aGF0IHdheSAoSQpoYXZlbid0IGNoZWNrZWQpLgoK
SXQgaXMgYSBxdWVzdGlvbiBmb3IgUm9iIGFuZCBCam9ybi4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
