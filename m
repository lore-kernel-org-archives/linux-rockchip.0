Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19CCFCF8554
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 07:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWa01hog1iwA3rAP++66r6lE1XaVzx97UKeDIAjj5gQ=; b=5DPeG7jVm2GNKq
	FwEPCQAh5cg/gfGtL1MdWF8ElyWtSxmqEuh8qGFuZ5rv9wdAafXqKHyrXJCKxlPu91jNHy4lms4OD
	+LFEbhcQ1oeWSPWT74c0RaZeYg0Dx5X7TbmqjXQcEoTcMXNmsKL4Nj8xxjHWPOjLDVKzdhp6HsVWF
	H90SZNQyCk4Oj9m6u36sfnEA6MpT27rpC0Rczz20ljAsMLLbnDZq92GSJluJioHDcNVri15rwUi8n
	yCe+ILKtsJKRLzPJRribkMpX6AHXDOxvyAazQK74TBeZl6O94mESYOEfvdBDHrqCFM8ShyXVTG6iq
	LcUoNj1uY1RjEcahXChA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLzTJ-00000006Ja3-1fmA;
	Thu, 20 Nov 2025 07:52:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLzTG-00000006JZM-1KSC;
	Thu, 20 Nov 2025 07:52:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 588A243C93;
	Thu, 20 Nov 2025 07:52:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43EE6C4CEF1;
	Thu, 20 Nov 2025 07:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763625167;
	bh=PCcS8iU+MQD7IjGPMGhvdSTgD9hnRAL2owebjIiNWS4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ICads1DqUmvuOZnOFex1dZonyIVaAiCKcFopkE5vgQTgNsmqyF9C4hlxGvSPvVhMJ
	 /ZWMz8QmJxGa5zbVBxEy//i/s6NCd+43+QiDg/7m4fAjeoI8Wct6hyvws2ZIXNrSpW
	 gxhwsUgO5UHfIEgAp7t/iCYAllfLLDgPkJE//v4IyTL5k2kXBdxrjvHqacy5bxDxGb
	 4TRb795eNwFrkgvLGAbAz/hthBW49c9W8ZjRgMGYpN+JNd+5bMr2zmdsgCWfYGhx4I
	 VZFH4I2GtjoQZf6EKCHf8FcyMoB8o/WrEnXoYL/5OpRjDHw7gIrDHnLcGzK+iGTQxl
	 psiNMSKa5dOEA==
Date: Thu, 20 Nov 2025 13:22:19 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Niklas Cassel <cassel@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Kever Yang <kever.yang@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <diederik@cknow-tech.com>, 
	Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Conor Dooley <conor@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Hans Zhang <hans.zhang@cixtech.com>, linux-tegra@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@pengutronix.de, Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v2 1/4] PCI: dwc: Advertise L1 PM Substates only if
 driver requests it
Message-ID: <lhunx3lpx3fgzyszf3librekhlrqtewcu664i7anj2s54j7kcr@52tt66auzpnr>
References: <20251118214312.2598220-1-helgaas@kernel.org>
 <20251118214312.2598220-2-helgaas@kernel.org>
 <aRz0ak6onKzZs2lY@lizhi-Precision-Tower-5810>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aRz0ak6onKzZs2lY@lizhi-Precision-Tower-5810>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_235250_402201_27021394 
X-CRM114-Status: GOOD (  30.41  )
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

T24gVHVlLCBOb3YgMTgsIDIwMjUgYXQgMDU6MzQ6MThQTSAtMDUwMCwgRnJhbmsgTGkgd3JvdGU6
Cj4gT24gVHVlLCBOb3YgMTgsIDIwMjUgYXQgMDM6NDI6MTVQTSAtMDYwMCwgQmpvcm4gSGVsZ2Fh
cyB3cm90ZToKPiA+IEZyb206IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+Cj4g
Pgo+ID4gTDEgUE0gU3Vic3RhdGVzIHJlcXVpcmUgdGhlIENMS1JFUSMgc2lnbmFsIGFuZCBtYXkg
YWxzbyByZXF1aXJlCj4gPiBkZXZpY2Utc3BlY2lmaWMgc3VwcG9ydC4gIElmIENMS1JFUSMgaXMg
bm90IHN1cHBvcnRlZCBvciBkcml2ZXIgc3VwcG9ydCBpcwo+ID4gbGFja2luZywgZW5hYmxpbmcg
TDEuMSBvciBMMS4yIG1heSBjYXVzZSBlcnJvcnMgd2hlbiBhY2Nlc3NpbmcgZGV2aWNlcywKPiA+
IGUuZy4sCj4gPgo+ID4gICBudm1lIG52bWUwOiBjb250cm9sbGVyIGlzIGRvd247IHdpbGwgcmVz
ZXQ6IENTVFM9MHhmZmZmZmZmZiwgUENJX1NUQVRVUz0weDEwCj4gPgo+ID4gSWYgdGhlIGtlcm5l
bCBpcyBidWlsdCB3aXRoIENPTkZJR19QQ0lFQVNQTV9QT1dFUl9TVVBFUlNBVkU9eSBvciB1c2Vy
cwo+ID4gZW5hYmxlIEwxLnggdmlhIHN5c2ZzLCB1c2VycyBtYXkgdHJpcCBvdmVyIHRoZXNlIGVy
cm9ycyBldmVuIGlmIEwxCj4gPiBTdWJzdGF0ZXMgaGF2ZW4ndCBiZWVuIGVuYWJsZWQgYnkgZmly
bXdhcmUgb3IgdGhlIGRyaXZlci4KPiA+Cj4gPiBUbyBwcmV2ZW50IHN1Y2ggZXJyb3JzLCBkaXNh
YmxlIGFkdmVydGlzaW5nIHRoZSBMMSBQTSBTdWJzdGF0ZXMgdW5sZXNzIHRoZQo+ID4gZHJpdmVy
IHNldHMgImR3X3BjaWUubDFzc19zdXBwb3J0IiB0byBpbmRpY2F0ZSB0aGF0IGl0IGtub3dzIENM
S1JFUSMgaXMKPiA+IHByZXNlbnQgYW5kIGFueSBkZXZpY2Utc3BlY2lmaWMgY29uZmlndXJhdGlv
biBoYXMgYmVlbiBkb25lLgo+ID4KPiA+IFNldCAiZHdfcGNpZS5sMXNzX3N1cHBvcnQiIGluIHRl
Z3JhMTk0IChpZiBEVCBpbmNsdWRlcyB0aGUKPiA+ICJzdXBwb3J0cy1jbGtyZXEnIHByb3BlcnR5
KSBhbmQgcWNvbSAoZm9yIGNmZ18yXzdfMCwgY2ZnXzFfOV8wLCBjZmdfMV8zNF8wLAo+ID4gYW5k
IGNmZ19zYzgyODB4cCBjb250cm9sbGVycykgc28gdGhleSBjYW4gY29udGludWUgdG8gdXNlIEwx
IFN1YnN0YXRlcy4KPiA+Cj4gPiBCYXNlZCBvbiBOaWtsYXMncyBwYXRjaDoKPiA+IGh0dHBzOi8v
cGF0Y2gubXNnaWQubGluay8yMDI1MTAxNzE2MzI1Mi41OTg4MTItMi1jYXNzZWxAa2VybmVsLm9y
Zwo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5j
b20+Cj4gPiAtLS0KPiA+ICAuLi4vcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1l
cC5jICAgfCAgMiArKwo+ID4gIC4uLi9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJl
LWhvc3QuYyB8ICAyICsrCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNp
Z253YXJlLmMgIHwgMjQgKysrKysrKysrKysrKysrKysrKwo+ID4gIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oICB8ICAyICsrCj4gPiAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1xY29tLmMgICAgICAgIHwgIDIgKysKPiA+ICBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLXRlZ3JhMTk0LmMgICAgfCAgMyArKysKPiA+ICA2IGZpbGVzIGNo
YW5nZWQsIDM1IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZXAuYwo+ID4gaW5kZXggN2YyMTEyYzJmYjIxLi5hZDZj
MGZkNjdhNjUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWRlc2lnbndhcmUtZXAuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kZXNpZ253YXJlLWVwLmMKPiA+IEBAIC05NjYsNiArOTY2LDggQEAgaW50IGR3X3BjaWVfZXBf
aW5pdF9yZWdpc3RlcnMoc3RydWN0IGR3X3BjaWVfZXAgKmVwKQo+ID4gIAlpZiAoZXAtPm9wcy0+
aW5pdCkKPiA+ICAJCWVwLT5vcHMtPmluaXQoZXApOwo+ID4KPiA+ICsJZHdfcGNpZV9oaWRlX3Vu
c3VwcG9ydGVkX2wxc3MocGNpKTsKPiA+ICsKPiAKPiBBbmQsIEkgZG9uJ3QgdGhpbmsgRVAgbmVl
ZCBjbGVhbiBMMVNTIENBUCBmbGFncy4gSWYgRVAgZG9uJ3Qgc3VwcG9ydCBMMVNTLAo+IGl0IHNo
b3VsZCBiZSBmb3JjZSBwdWxsIGRvd24gI2Nsa3JlcS4KPiAKPiBFUCBkb24ndCBrbm93IGlmICNj
bGtyZXEgY29ubmVjdGVkIGluIGhvc3QgYm9hcmRzLCBhc3N1bWUgRVAgd2l0aCBzYW1lCj4gc29m
dHdhcmUsIHdoaWNoIGNhbiBydW4gYXQgdHdvIGRpZmZlcmVuY2UgaG9zdCBzeXN0ZW0sIG9uZSBo
b3N0IHN5c3RlbQo+IGNvbm5lY3QgI2Nsa3JlcSwgdGhlIG90aGVyIHN5c3RlbSBoYXZlIG5vdCBj
b25uZWN0ICNjbGtyZXEuCj4gCj4gb3RoZXJ3b3Jkcywgc3VwcG9ydC1jbGtyZXEgcHJvcGVydHkg
c2hvdWxkIGJlIG9ubHkgZm9yIFJDIHNpZGUuIG5vdCBFUAo+IHNpZGUuIEVQIHNpZGUgbDFzcyBz
dXBwb3J0IHNob3VsZCBkZXBlbmQgb24gc3BlY2lmaWMgZXBmIGZ1bmN0aW9uIGFuZAo+IGNvbnRy
b2xsZXIncyBjYXBhYmxpdHkuCj4gCgonc3VwcG9ydC1jbGtyZXEnIERUIHByb3BlcnR5IGlzIG9u
bHkgYXBwbGljYWJsZSB0byB0aGUgUkMgYXMgcGVyIGR0c2NoZW1hLiBTbwp1c2luZyBpdCBpbiB0
aGUgRVAgZHJpdmVyIGlzIHdyb25nIGluIHRoZSBmaXJzdCBwbGFjZS4gV2UgY291bGQgYWRkIGl0
IHRvIHRoZSBFUApzY2hlbWEsIGJ1dCB0aGF0IHNob3VsZCBiZSBkb25lIGZpcnN0IGJlZm9yZSBy
ZWx5aW5nIG9uIGl0IGluIHRoZSBkcml2ZXIuCgpBbHNvLCBJIGRvIHRoaW5rIHRoYXQgdGhlIGRl
dmljZSBjYXBhYmlsaXR5IHNob3VsZCBhY2N1cmF0ZWx5IHJlZmxlY3Qgd2hldGhlcgpMMXNzIGlz
IHN1cHBvcnRlZCBvciBub3QgYW5kIG5vdCBhc3N1bWUgdGhhdCB0aGUgRVAgd2lsbCBwdWxsIHRo
ZSBDTEtSRVEjIGxvdwp3aGVuIGl0IGlzIG5vdCBzdXBwb3J0ZWQuIElmIHRoZSBMMXNzIENBUCBp
cyBhdmFpbGFibGUgb24gYm90aCBSQyBhbmQgRVAsIGhvc3QKc29mdHdhcmUgbWF5IGVuYWJsZSBM
MXNzIGFuZCBleHBlY3QgaXQgdG8gd29yay4KCkJ1dCBlbmFibGluZy9kaXNhYmxpbmcgdGhlIENB
UCBmb3IgRVAgc2hvdWxkIGJlIGRvbmUgbGF0ZXIgYmFzZWQgb24gZWl0aGVyIHRoZQpEVCBwcm9w
ZXJ0eSBvciBjb250cm9sbGVyIHNwZWNpZmljIGZsYWcuCgotIE1hbmkKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
