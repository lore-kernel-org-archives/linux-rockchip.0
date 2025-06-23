Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68559C7EE2A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 12:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8Y+JyIdtfLQ84jPkCEuD3hkE2ivcizE1ylA2O/6w8o=; b=au+4G6/gKTRqwl
	luUcqqRR0OS+402XwdGCXkJMXtIkd3PLiwIxXru4flPLWV3F2v9aNNkxVylBlLpC3s/ln+BybUbwz
	r4ignxWJnP8sY1VGw27KLne6r9XA3C/N9rT66q44vxS8stINxellafb91QvNgrFQVPCkQPQe7tEYn
	GJc5zLHPrLExKGyOT5GoRf5VA3OSbw2gaoLbvoO2FY/LsrsdGTcoKxCQ/BfjoINDmxoO+eM36o0UA
	sloy54w0CYa1cAAM6uMaWfQ657XofdOVON98LxsXEpqUhLHsnSmPgyMjxqpy03ynJt7sEAbIa88Rn
	nuluI3AT2UMcxtMmqOMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTgT3-00000002jJz-3emX;
	Mon, 23 Jun 2025 12:40:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTesN-00000002Sp8-0T5c;
	Mon, 23 Jun 2025 10:58:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 69D646112D;
	Mon, 23 Jun 2025 10:58:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6401AC4CEF2;
	Mon, 23 Jun 2025 10:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750676290;
	bh=KQEP5ij24VEA8YmbYKGHIizffbrpTimsVDgCFJ93uCU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZOWRX/WM6ATuFay5qVBF3U6yDvYFbsL3dgLTVha1A3bEeH7hijXd05KUo/J5ZjMyc
	 rwjOiaWuHyBKQnQ5OFzoCFYklqOMIg0XNCmfSVOSdDZe+JVnHTME+pdagvTLqQipBm
	 weVAhIE3pZ52YocrXvvyhMyBG/7Z6osMkG01ct9z9wZHyApZd2gDCSn5XT+ahyD3Cn
	 LGOL9JWJfS4auNvI7mXtG6ra8xdVhbS9Mvgn2ZtLovJUoBBisQiRkVfC6lM0sEVkZW
	 UyFybkR+AX5MPihNsp9J7iIsqb2qWAIp5iih0UcoB0h1h/gP/GzL+U4rCTxrMwmMJA
	 r0qkmqWOv9qdw==
Date: Mon, 23 Jun 2025 04:58:08 -0600
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com, 
	heiko@sntech.de, yue.wang@amlogic.com, pali@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com, 
	martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v5 1/2] PCI: Configure root port MPS during host probing
Message-ID: <qxbedjehrhddc627lukpxvxje6dze6nxfjztlbexp5hap327ac@ojo564izhttk>
References: <20250620155507.1022099-1-18255117159@163.com>
 <20250620155507.1022099-2-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250620155507.1022099-2-18255117159@163.com>
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

T24gRnJpLCBKdW4gMjAsIDIwMjUgYXQgMTE6NTU6MDZQTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiBDdXJyZW50IFBDSWUgaW5pdGlhbGl6YXRpb24gbG9naWMgbWF5IGxlYXZlIHJvb3QgcG9y
dHMgb3BlcmF0aW5nIHdpdGgKPiBub24tb3B0aW1hbCBNYXhpbXVtIFBheWxvYWQgU2l6ZSAoTVBT
KSBzZXR0aW5ncy4gV2hpbGUgZG93bnN0cmVhbSBkZXZpY2UKPiBjb25maWd1cmF0aW9uIGlzIGhh
bmRsZWQgZHVyaW5nIGJ1cyBlbnVtZXJhdGlvbiwgcm9vdCBwb3J0IE1QUyB2YWx1ZXMKPiBpbmhl
cml0ZWQgZnJvbSBmaXJtd2FyZSBvciBoYXJkd2FyZSBkZWZhdWx0cyBtaWdodCBub3QgdXRpbGl6
ZSB0aGUgZnVsbAo+IGNhcGFiaWxpdGllcyBzdXBwb3J0ZWQgYnkgdGhlIGNvbnRyb2xsZXIgaGFy
ZHdhcmUuIFRoaXMgY2FuIHJlc3VsdCBpbgo+IHN1Ym9wdGltYWwgZGF0YSB0cmFuc2ZlciBlZmZp
Y2llbmN5IGFjcm9zcyB0aGUgUENJZSBoaWVyYXJjaHkuCj4gCj4gRHVyaW5nIGhvc3QgY29udHJv
bGxlciBwcm9iaW5nIHBoYXNlLCB3aGVuIFBDSWUgYnVzIHR1bmluZyBpcyBlbmFibGVkLAo+IHRo
ZSBpbXBsZW1lbnRhdGlvbiBub3cgY29uZmlndXJlcyByb290IHBvcnQgTVBTIHNldHRpbmdzIHRv
IHRoZWlyCj4gaGFyZHdhcmUtc3VwcG9ydGVkIG1heGltdW0gdmFsdWVzLiBTcGVjaWZpY2FsbHks
IHdoZW4gY29uZmlndXJpbmcgdGhlIE1QUwo+IGZvciBhIFBDSWUgZGV2aWNlLCBpZiB0aGUgZGV2
aWNlIGlzIGEgcm9vdCBwb3J0IGFuZCB0aGUgYnVzIHR1bmluZyBpcyBub3QKPiBkaXNhYmxlZCAo
UENJRV9CVVNfVFVORV9PRkYpLCB0aGUgTVBTIGlzIHNldCB0byAxMjggPDwgZGV2LT5wY2llX21w
c3MgdG8KPiBtYXRjaCB0aGUgUm9vdCBQb3J0J3MgbWF4aW11bSBzdXBwb3J0ZWQgcGF5bG9hZCBz
aXplLiBUaGUgTWF4IFJlYWQgUmVxdWVzdAo+IFNpemUgKE1SUlMpIGlzIHN1YnNlcXVlbnRseSBh
ZGp1c3RlZCB0aHJvdWdoIGV4aXN0aW5nIGNvbXBhbmlvbiBsb2dpYyB0bwo+IG1haW50YWluIGNv
bXBhdGliaWxpdHkgd2l0aCBQQ0llIHNwZWNpZmljYXRpb25zLgo+IAo+IE5vdGUgdGhhdCB0aGlz
IGluaXRpYWwgc2V0dGluZyBvZiB0aGUgcm9vdCBwb3J0IE1QUyB0byB0aGUgbWF4aW11bSBtaWdo
dAo+IGJlIHJlZHVjZWQgbGF0ZXIgZHVyaW5nIHRoZSBlbnVtZXJhdGlvbiBvZiBkb3duc3RyZWFt
IGRldmljZXMgaWYgYW55IG9mCj4gdGhvc2UgZGV2aWNlcyBkbyBub3Qgc3VwcG9ydCB0aGUgbWF4
aW11bSBNUFMgb2YgdGhlIHJvb3QgcG9ydC4KPiAKPiBFeHBsaWNpdCBpbml0aWFsaXphdGlvbiBh
dCBob3N0IHByb2Jpbmcgc3RhZ2UgZW5zdXJlcyBjb25zaXN0ZW50IFBDSWUKPiB0b3BvbG9neSBj
b25maWd1cmF0aW9uIGJlZm9yZSBkb3duc3RyZWFtIGRldmljZXMgcGVyZm9ybSB0aGVpciBvd24g
TVBTCj4gbmVnb3RpYXRpb25zLiBUaGlzIHByb2FjdGl2ZSBhcHByb2FjaCBhZGRyZXNzZXMgcGxh
dGZvcm0tc3BlY2lmaWMKPiByZXF1aXJlbWVudHMgd2hlcmUgY29udHJvbGxlciBkcml2ZXJzIGRl
cGVuZCBvbiBwcm9wZXJseSBpbml0aWFsaXplZAo+IHJvb3QgcG9ydCBzZXR0aW5ncywgd2hpbGUg
bWFpbnRhaW5pbmcgYmFja3dhcmQgY29tcGF0aWJpbGl0eSB0aHJvdWdoCj4gUENJRV9CVVNfVFVO
RV9PRkYgY29uZGl0aW9uYWwgY2hlY2tzLiBIYXJkd2FyZSBjYXBhYmlsaXRpZXMgYXJlIGZ1bGx5
Cj4gdXRpbGl6ZWQgd2l0aG91dCBhbHRlcmluZyBleGlzdGluZyBkZXZpY2UgbmVnb3RpYXRpb24g
YmVoYXZpb3JzLgo+IAo+IFN1Z2dlc3RlZC1ieTogTmlrbGFzIENhc3NlbCA8Y2Fzc2VsQGtlcm5l
bC5vcmc+Cj4gU3VnZ2VzdGVkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVs
Lm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBIYW5zIFpoYW5nIDwxODI1NTExNzE1OUAxNjMuY29tPgoK
QWNrZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgoKLSBNYW5p
Cgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9wcm9iZS5jIHwgMTAgKysrKysrKysrKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9w
cm9iZS5jIGIvZHJpdmVycy9wY2kvcHJvYmUuYwo+IGluZGV4IDRiODY5M2VjOWU0Yy4uOWY4ODAz
ZGE5MTRjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL3Byb2JlLmMKPiArKysgYi9kcml2ZXJz
L3BjaS9wcm9iZS5jCj4gQEAgLTIxNzgsNiArMjE3OCwxNiBAQCBzdGF0aWMgdm9pZCBwY2lfY29u
ZmlndXJlX21wcyhzdHJ1Y3QgcGNpX2RldiAqZGV2KQo+ICAJCXJldHVybjsKPiAgCX0KPiAgCj4g
KwkvKgo+ICsJICogVW5sZXNzIE1QUyBzdHJhdGVneSBpcyBQQ0lFX0JVU19UVU5FX09GRiAoZG9u
J3QgdG91Y2ggTVBTIGF0IGFsbCksCj4gKwkgKiBzdGFydCBvZmYgYnkgc2V0dGluZyByb290IHBv
cnRzJyBNUFMgdG8gTVBTUy4gRGVwZW5kaW5nIG9uIHRoZSBNUFMKPiArCSAqIHN0cmF0ZWd5LCBh
bmQgdGhlIE1QU1Mgb2YgdGhlIGRldmljZXMgYmVsb3cgdGhlIHJvb3QgcG9ydCwgdGhlIE1QUwo+
ICsJICogb2YgdGhlIHJvb3QgcG9ydCBtaWdodCBnZXQgb3ZlcnJpZGRlbiBsYXRlci4KPiArCSAq
Lwo+ICsJaWYgKHBjaV9wY2llX3R5cGUoZGV2KSA9PSBQQ0lfRVhQX1RZUEVfUk9PVF9QT1JUICYm
Cj4gKwkgICAgcGNpZV9idXNfY29uZmlnICE9IFBDSUVfQlVTX1RVTkVfT0ZGKQo+ICsJCXBjaWVf
c2V0X21wcyhkZXYsIDEyOCA8PCBkZXYtPnBjaWVfbXBzcyk7Cj4gKwo+ICAJaWYgKCFicmlkZ2Ug
fHwgIXBjaV9pc19wY2llKGJyaWRnZSkpCj4gIAkJcmV0dXJuOwo+ICAKPiAtLSAKPiAyLjI1LjEK
PiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
