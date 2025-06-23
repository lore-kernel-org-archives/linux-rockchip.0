Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33A2BC7EE31
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 13:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxm2n7IxTkH5amzWHssVYktUjUDWqkG3LS5q3MJAtpo=; b=bS1Q5/qzRO9FGe
	B6jCyIkG3Hcc7ECc4Tx9YfuPizbt1vUbjiLSgfHZKLsIu/hV5rO3SaDslVSxniG8ci/fNHdd9k+sr
	fNr0r3rh6C3JfPy9Vo0GjVOg/3OccjHjaTw6o92H1BSytTYYSiZwtIkduwY1d2l9Qd+R9O1vGD8w1
	jXfAtcJnUcnANUIrpkvQyiYa7ShcAShiKA7T9heGvAMiYl1pdmZNO+7WEaA0PAP24g2Fn4YjAdFxt
	lPJKlDOxv6SaaI9O7GfsuUCrOlE4KyEkJ2Rd8NdFd74uHHzH0dQmOKGfBGqajN2ag/fqK+KHU9zi0
	6IFP2l6qDBQMnSnp6xKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTgti-00000002p6s-1k23;
	Mon, 23 Jun 2025 13:07:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTfMz-00000002VUw-1fVO;
	Mon, 23 Jun 2025 11:29:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AEF0143F43;
	Mon, 23 Jun 2025 11:29:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EE97C4CEF7;
	Mon, 23 Jun 2025 11:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750678188;
	bh=w6AaO6fgK2fNbORRzUvx6Qa3WCSt0XSFElEO927wLeY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rqSFoUy60QVVLtbY4efKUq1P1PcXwr3lo6+JMXseUEvm9py7YL7hax6kFOSdZwdym
	 pTpZJh8spMc7wsGJXNvqY21TZArnFf5DV4hBRq0OxOzUd6GwDcmYQdd4J1eKvLEtlD
	 AJLG+YlZNMWC/1H2uMoN+rbrbbLrP7vqX5C67lAzhbSZB1GV9XWz00+6wGx6F6eWto
	 L5XtZS/rW+goRAs5AX+JNetLMNKAYTyAjsJNR3mC5ZmjWGu+Kf7eoiL4Y8L0r0BrEu
	 z9R8efYMX4mKAU89Yf/gBmIuL5DVZafBAb1zVfMSVph/EPQeOAufP4yXBkhCx1AyTS
	 Pcn2e2Bnp0C2g==
Date: Mon, 23 Jun 2025 05:29:46 -0600
From: Manivannan Sadhasivam <mani@kernel.org>
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: linux-rockchip@lists.infradead.org, 
	Hugh Cole-Baker <sigmaris@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v3 2/3] PCI: rockchip-host: Retry link training on
 failure without PERST#
Message-ID: <zuiq3b2rsixymtjr3xzrb26clikvlja62wgj65umnse4kuk75c@x5qan73ispxe>
References: <cover.1749582046.git.geraldogabriel@gmail.com>
 <b7c09279b4a7dbdba92543db9b9af169776bd90c.1749582046.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7c09279b4a7dbdba92543db9b9af169776bd90c.1749582046.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_042949_474240_C76CA5A2 
X-CRM114-Status: GOOD (  28.84  )
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

T24gVHVlLCBKdW4gMTAsIDIwMjUgYXQgMDQ6MDU6NDBQTSAtMDMwMCwgR2VyYWxkbyBOYXNjaW1l
bnRvIHdyb3RlOgo+IEFmdGVyIGFsbW9zdCAzMCBkYXlzIG9mIGJhdHRsaW5nIHdpdGggUkszMzk5
IGJ1Z2d5IFBDSWUgb24gbXkgUm9jayBQaQo+IE4xMCB0aHJvdWdoIHRyaWFsLWFuZC1lcnJvciBk
ZWJ1Z2dpbmcsIEkgZmluYWxseSBnb3QgcG9zaXRpdmUgcmVzdWx0cwo+IHdpdGggZW51bWVyYXRp
b24gb24gdGhlIFBDSSBidXMgZm9yIGJvdGggYSBSZWFsdGVrIDgxMTFFIE5JQyBhbmQgYQo+IFNh
bXN1bmcgUE05ODFhIFNTRC4KPiAKPiBUaGUgTklDIHdhcyBjb25uZWN0ZWQgdG8gYSBNLjItPlBD
SWUgeDQgcmlzZXIgY2FyZCBhbmQgaXQgd291bGQgZ2V0Cj4gc3R1Y2sgb24gUG9sbGluZy5Db21w
bGlhbmNlLCB3aXRob3V0IGJyZWFraW5nIGVsZWN0cmljYWwgaWRsZSBvbiB0aGUKPiBIb3N0IFJY
IHNpZGUuIFRoZSBTYW1zdW5nIFBNOTgxYSBTU0QgaXMgZGlyZWN0bHkgY29ubmVjdGVkIHRvIE0u
Mgo+IGNvbm5lY3RvciBhbmQgdGhhdCBTU0QgaXMga25vd24gdG8gYmUgcXVpcmt5IChPRU0uLi4g
bm8gc3VwcG9ydCkKPiBhbmQgbm9uLWZ1bmN0aW9uYWwgb24gdGhlIFJLMzM5OSBwbGF0Zm9ybS4K
PiAKPiBUaGUgU2Ftc3VuZyBTU0Qgd2FzIGV2ZW4gd29yc2UgdGhhbiB0aGUgTklDIC0gaXQgd291
bGQgZ2V0IHN0dWNrIG9uCj4gRGV0ZWN0LkFjdGl2ZSBsaWtlIGEgYnJpY2tlZCBjYXJkLCBldmVu
IHRob3VnaCBpdCB3YXMgZnVsbHkgZnVuY3Rpb25hbAo+IHZpYSBVU0IgYWRhcHRlci4KPiAKPiBJ
dCBzZWVtcyBib3RoIGRldmljZXMgYmVuZWZpdCBmcm9tIHJldHJ5aW5nIExpbmsgVHJhaW5pbmcg
aWYgLSBiaWcgaWYKPiBoZXJlIC0gUEVSU1QjIGlzIG5vdCB0b2dnbGVkIGR1cmluZyByZXRyeS4K
PiAKPiBGb3IgcmV0cnkgdG8gd29yaywgZmxvdyBtdXN0IGJlIGV4YWN0bHkgYXMgaGFuZGxlZCBi
eSBwcmVzZW50IHBhdGNoLAo+IHRoYXQgaXMsIHdlIG11c3QgY3V0IHBvd2VyLCBkaXNhYmxlIHRo
ZSBjbG9ja3MsIHRoZW4gcmUtZW5hYmxlCj4gYm90aCBjbG9ja3MgYW5kIHBvd2VyIHJlZ3VsYXRv
cnMgYW5kIGdvIHRocm91Z2ggaW5pdGlhbGl6YXRpb24KPiB3aXRob3V0IHRvdWNoaW5nIFBFUlNU
Iy4gVGhlbiBxdWlya3kgZGV2aWNlcyBhcmUgYWJsZSB0byBzdWNlc3NmdWxseQo+IGVudW1lcmF0
ZS4KPiAKClRoaXMgc291bmRzIHdlaXJkLiBQRVJTVCMgaXMganVzdCBhbiBpbmRpY2F0aW9uIHRv
IHRoZSBkZXZpY2UgdGhhdCB0aGUgcG93ZXIgYW5kCnJlZmNsayBhcmUgYXBwbGllZCBvciBnb2lu
ZyB0byBiZSByZW1vdmVkLiBUaGUgZGV2aWNlcyB1c2VzIFBFUlNUIyB0byBwcmVwYXJlCmZvciB0
aGUgcG93ZXIgcmVtb3ZhbCBkdXJpbmcgYXNzZXJ0IGFuZCBzdGFydCBmdW5jdGlvbmluZyBhZnRl
ciBkZWFzc2VydC4KCkl0IGxvb2tzIGxpa2UgdGhlIFBFUlNUIyBwb2xhcml0eSBpcyBpbnZlcnRl
ZCBpbiB5b3VyIGNhc2UuIENvdWxkIHlvdSBwbGVhc2UKY2hhbmdlIHRoZSAnZXAtZ3Bpb3MnIHBv
bGFyaXR5IHRvIEdQSU9fQUNUSVZFX0xPVyBhbmQgc2VlIGlmIGl0IGZpeGVzIHRoZSBpc3N1ZQp3
aXRob3V0IHRoaXMgcGF0Y2g/CgpJZiB0aGF0IGRpZG4ndCB3b3JrLCBjb3VsZCB5b3UgcGxlYXNl
IGRyb3AgdGhlICdlcC1ncGlvcycgcHJvcGVydHkgYW5kIGNoZWNrPwoKPiBObyBmdW5jdGlvbmFs
IGNoYW5nZSBpbnRlbmRlZCBmb3IgYWxyZWFkeSB3b3JraW5nIGRldmljZXMuCj4gCj4gU2lnbmVk
LW9mZi1ieTogR2VyYWxkbyBOYXNjaW1lbnRvIDxnZXJhbGRvZ2FicmllbEBnbWFpbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMgfCA0NyAr
KysrKysrKysrKysrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKyks
IDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC1ob3N0LmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2No
aXAtaG9zdC5jCj4gaW5kZXggMmExMDcxY2QzMjQxLi42N2IzYjM3OWQyNzcgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYwo+ICsrKyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMKPiBAQCAtMzM4LDExICsz
MzgsMTQgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3NldF92cGNpZShzdHJ1Y3Qgcm9ja2No
aXBfcGNpZSAqcm9ja2NoaXApCj4gIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9ob3N0X2luaXRf
cG9ydChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4gIHsKPiAgCXN0cnVjdCBkZXZp
Y2UgKmRldiA9IHJvY2tjaGlwLT5kZXY7Cj4gLQlpbnQgZXJyLCBpID0gTUFYX0xBTkVfTlVNOwo+
ICsJaW50IGVyciwgaSA9IE1BWF9MQU5FX05VTSwgaXNfcmVpbml0ID0gMDsKPiAgCXUzMiBzdGF0
dXM7Cj4gIAo+IC0JZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHJvY2tjaGlwLT5wZXJzdF9ncGlv
LCAwKTsKPiArCWlmICghaXNfcmVpbml0KSB7Cj4gKwkJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVw
KHJvY2tjaGlwLT5wZXJzdF9ncGlvLCAwKTsKPiArCX0KPiAgCj4gK3JlaW5pdDoKClNvIHRoaXMg
cmVpbml0IHBhcnQgb25seSBza2lwcyB0aGUgUEVSU1QjIGFzc2VydCwgYnV0IGNhbGxzCnJvY2tj
aGlwX3BjaWVfaW5pdF9wb3J0KCkgd2hpY2ggcmVzZXRzIHRoZSBSb290IFBvcnQgaW5jbHVkaW5n
IFBIWS4gSSBkb24ndAp0aGluayBpdCBpcyBzYWZlIHRvIGRvIGl0IGlmIFBFUlNUIyBpcyB3aXJl
ZC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
