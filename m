Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F83FCF64A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 00:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9isCLv9VqhA5KcfALBXFe0bpl4k9RxFFRVWH6a94oo=; b=xUOgLuFEb23qUT
	Z0JfbiBlopa2oc7C8nDcZUP2m1r1+balWliPeguVo3ZsO2FpbeSLGxbeqZtDexAfrqIWIEUijwbYO
	BChLpSjtSvgC+Zqgf3fLyIm4hbw8b3GwVQ22dK1baTr3jZSJJl2JAFmdUoThi1TXtKTihKgn4G9rZ
	Jnto/MVwMVXdH8GNk4M1cbSFpg6USIMfyuii/MeIrawkOnuM+W+S1+1b1Jgone6Roc2QjKsiWlvqt
	RhdV3ZDzXhaj546/vwtQM2cl81X0ghrbSiUrAaWorf1Dt/tb4hPRt2V/WWOvv47I6yJ861DJRyC0P
	8ALFLXBE4zYzNJkt8Sjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLsvo-00000005uTu-19Qg;
	Thu, 20 Nov 2025 00:53:52 +0000
Received: from mail-m128178.netease.com ([103.209.128.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLsvj-00000005uSv-1rM9;
	Thu, 20 Nov 2025 00:53:50 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2a336e021;
	Thu, 20 Nov 2025 08:53:41 +0800 (GMT+08:00)
Message-ID: <7608cf17-75cf-4b7b-a326-f3233771c662@rock-chips.com>
Date: Thu, 20 Nov 2025 08:53:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <helgaas@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>, Simon Xue <xxm@rock-chips.com>,
 Damien Le Moal <dlemoal@kernel.org>, Dragan Simic <dsimic@manjaro.org>,
 FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <diederik@cknow-tech.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Conor Dooley <conor@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Hans Zhang <hans.zhang@cixtech.com>,
 linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@pengutronix.de, Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v2 1/4] PCI: dwc: Advertise L1 PM Substates only if driver
 requests it
To: Frank Li <Frank.li@nxp.com>, Niklas Cassel <cassel@kernel.org>
References: <20251118214312.2598220-1-helgaas@kernel.org>
 <20251118214312.2598220-2-helgaas@kernel.org>
 <aRz0ak6onKzZs2lY@lizhi-Precision-Tower-5810> <aR2lOZDBEdGVd9On@ryzen>
 <aR3pEaJ4oTagaKU8@lizhi-Precision-Tower-5810>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aR3pEaJ4oTagaKU8@lizhi-Precision-Tower-5810>
X-HM-Tid: 0a9a9ec0b88a09cckunm203edec1101ef1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk5LGVYZGUJLThgdHxoZTk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Hn1fLys4wPcT5stgZE2bGvrVp1by1kBMj13HZqwZ6zolCmKp7NhY2RCg3eKrnAWsgeYsZWXwROpuqiqvk500yO25B6GIYHMsppLfJvKVRkbdRM1N9mqOgbtBAsW54bhHiDOCvPRIAndqNPXGa5j4AHqUOZcSHrlcp1WLSl2yiCQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+IXChYv063/iR7iqcfC8kDbpygHTsdaRPTTsJ9OXMv0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_165348_054581_F73796D6 
X-CRM114-Status: GOOD (  24.34  )
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

5ZyoIDIwMjUvMTEvMTkg5pif5pyf5LiJIDIzOjU4LCBGcmFuayBMaSDlhpnpgZM6Cj4gT24gV2Vk
LCBOb3YgMTksIDIwMjUgYXQgMTI6MDg6NDFQTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3cm90ZToK
Pj4gT24gVHVlLCBOb3YgMTgsIDIwMjUgYXQgMDU6MzQ6MThQTSAtMDUwMCwgRnJhbmsgTGkgd3Jv
dGU6Cj4+PiBPbiBUdWUsIE5vdiAxOCwgMjAyNSBhdCAwMzo0MjoxNVBNIC0wNjAwLCBCam9ybiBI
ZWxnYWFzIHdyb3RlOgo+Pj4+IEZyb206IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5j
b20+Cj4+Pj4KPj4+PiBMMSBQTSBTdWJzdGF0ZXMgcmVxdWlyZSB0aGUgQ0xLUkVRIyBzaWduYWwg
YW5kIG1heSBhbHNvIHJlcXVpcmUKPj4+PiBkZXZpY2Utc3BlY2lmaWMgc3VwcG9ydC4gIElmIENM
S1JFUSMgaXMgbm90IHN1cHBvcnRlZCBvciBkcml2ZXIgc3VwcG9ydCBpcwo+Pj4+IGxhY2tpbmcs
IGVuYWJsaW5nIEwxLjEgb3IgTDEuMiBtYXkgY2F1c2UgZXJyb3JzIHdoZW4gYWNjZXNzaW5nIGRl
dmljZXMsCj4+Pj4gZS5nLiwKPj4+Pgo+Pj4+ICAgIG52bWUgbnZtZTA6IGNvbnRyb2xsZXIgaXMg
ZG93bjsgd2lsbCByZXNldDogQ1NUUz0weGZmZmZmZmZmLCBQQ0lfU1RBVFVTPTB4MTAKPj4+Pgo+
Pj4+IElmIHRoZSBrZXJuZWwgaXMgYnVpbHQgd2l0aCBDT05GSUdfUENJRUFTUE1fUE9XRVJfU1VQ
RVJTQVZFPXkgb3IgdXNlcnMKPj4+PiBlbmFibGUgTDEueCB2aWEgc3lzZnMsIHVzZXJzIG1heSB0
cmlwIG92ZXIgdGhlc2UgZXJyb3JzIGV2ZW4gaWYgTDEKPj4+PiBTdWJzdGF0ZXMgaGF2ZW4ndCBi
ZWVuIGVuYWJsZWQgYnkgZmlybXdhcmUgb3IgdGhlIGRyaXZlci4KPj4+Pgo+Pj4+IFRvIHByZXZl
bnQgc3VjaCBlcnJvcnMsIGRpc2FibGUgYWR2ZXJ0aXNpbmcgdGhlIEwxIFBNIFN1YnN0YXRlcyB1
bmxlc3MgdGhlCj4+Pj4gZHJpdmVyIHNldHMgImR3X3BjaWUubDFzc19zdXBwb3J0IiB0byBpbmRp
Y2F0ZSB0aGF0IGl0IGtub3dzIENMS1JFUSMgaXMKPj4+PiBwcmVzZW50IGFuZCBhbnkgZGV2aWNl
LXNwZWNpZmljIGNvbmZpZ3VyYXRpb24gaGFzIGJlZW4gZG9uZS4KPj4+Pgo+Pj4+IFNldCAiZHdf
cGNpZS5sMXNzX3N1cHBvcnQiIGluIHRlZ3JhMTk0IChpZiBEVCBpbmNsdWRlcyB0aGUKPj4+PiAi
c3VwcG9ydHMtY2xrcmVxJyBwcm9wZXJ0eSkgYW5kIHFjb20gKGZvciBjZmdfMl83XzAsIGNmZ18x
XzlfMCwgY2ZnXzFfMzRfMCwKPj4+PiBhbmQgY2ZnX3NjODI4MHhwIGNvbnRyb2xsZXJzKSBzbyB0
aGV5IGNhbiBjb250aW51ZSB0byB1c2UgTDEgU3Vic3RhdGVzLgo+Pj4+Cj4+Pj4gQmFzZWQgb24g
TmlrbGFzJ3MgcGF0Y2g6Cj4+Pj4gaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjUxMDE3MTYz
MjUyLjU5ODgxMi0yLWNhc3NlbEBrZXJuZWwub3JnCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBC
am9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgo+Pj4+IC0tLQo+Pj4+ICAgLi4uL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZXAuYyAgIHwgIDIgKysKPj4+PiAgIC4u
Li9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3QuYyB8ICAyICsrCj4+Pj4g
ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuYyAgfCAyNCArKysr
KysrKysrKysrKysrKysrCj4+Pj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRl
c2lnbndhcmUuaCAgfCAgMiArKwo+Pj4+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1xY29tLmMgICAgICAgIHwgIDIgKysKPj4+PiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaWUtdGVncmExOTQuYyAgICB8ICAzICsrKwo+Pj4+ICAgNiBmaWxlcyBjaGFuZ2VkLCAzNSBp
bnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLWRlc2lnbndhcmUtZXAuYwo+Pj4+IGluZGV4IDdmMjExMmMyZmIyMS4uYWQ2YzBmZDY3YTY1
IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdu
d2FyZS1lcC5jCj4+Pj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNp
Z253YXJlLWVwLmMKPj4+PiBAQCAtOTY2LDYgKzk2Niw4IEBAIGludCBkd19wY2llX2VwX2luaXRf
cmVnaXN0ZXJzKHN0cnVjdCBkd19wY2llX2VwICplcCkKPj4+PiAgIAlpZiAoZXAtPm9wcy0+aW5p
dCkKPj4+PiAgIAkJZXAtPm9wcy0+aW5pdChlcCk7Cj4+Pj4KPj4+PiArCWR3X3BjaWVfaGlkZV91
bnN1cHBvcnRlZF9sMXNzKHBjaSk7Cj4+Pj4gKwo+Pj4KPj4+IEFuZCwgSSBkb24ndCB0aGluayBF
UCBuZWVkIGNsZWFuIEwxU1MgQ0FQIGZsYWdzLiBJZiBFUCBkb24ndCBzdXBwb3J0IEwxU1MsCj4+
PiBpdCBzaG91bGQgYmUgZm9yY2UgcHVsbCBkb3duICNjbGtyZXEuCj4+Cj4+IEkgdGhpbmsgdGhl
IHByb2JsZW0gaXMgdGhhdCB3ZSBjYW5ub3QgZm9yY2UgcHVsbCBkb3duIENMS1JFUSMgaW4gYSBn
ZW5lcmljCj4+IERXQyBmdW5jdGlvbi4gVGhhdCB3b3VsZCBoYXZlIHRvIGJlIGRvbmUgaW4gZ2x1
ZSBkcml2ZXIgc3BlY2lmaWMgY2FsbGJhY2tzLgo+Pgo+PiBCam9ybiwgcGVyaGFwcyB3ZSBzaG91
bGQgc2ltcGx5IGRyb3AgdGhlIGR3X3BjaWVfaGlkZV91bnN1cHBvcnRlZF9sMXNzKCkKPj4gY2Fs
bCBmcm9tIGR3X3BjaWVfZXBfaW5pdF9yZWdpc3RlcnMoKSwgYW5kIGNvbnNpZGVyIGhpZGluZyBM
MXNzIGZvciBFUHMgdG8KPj4gYmUgb3V0IG9mIHNjb3BlIGZvciB0aGlzIHNlcmllcy4KPiAKPiAK
PiBBZ3JlZSwgd2Ugc2hvdWxkIGNvbnNpZGVyIEVQIGxhdGVyLiBXaGVuIHdvcmsgYXQgRVAgbW9k
ZSwgI2Nsa3JlcSBkZWZhdWx0Cj4gaXQgaXMgMC4gUkMgc2hvdWxkIG5vdCB0dXJuIEwxU1MgaWYg
UkMgZG9uJ3Qgc3VwcG9ydC4gSWYgUkMgc2lkZSBzdXBwb3J0LAo+IGl0IHNob3VsZCBiZSBmaW5l
IGJ5IHR1cmluZyBvbiBFUCdzIEwxU1MgYmVjYXVzZSBoYXJkd2FyZSBhbHJlYWR5IHN1cHBvcnQK
PiBpdC4KCkkgYWdyZWUgdG8gZHJvcCBpdCBmcm9tIGR3X3BjaWVfZXBfaW5pdF9yZWdpc3RlcnMs
IGFuZCBxdWV1ZSBpdCB1cCBmb3IKNi4xOS4KCkRvbid0IGdldCBtZSB3cm9uZywgYnV0IEkganVz
dCBuZWVkIGNsZWFybHkgc3BlYWsgb3V0IHRoZSB0aG91Z2h0OiBJCnRoaW5rIHRoZSBpZGVhIGJl
aGluZCBpcyBzb21ldGhpbmcgbGlrZSBxdWlyayB0aGF0IGEgdmFyaWFudCBjb250cm9sbGVyCndv
cmtzIG9uIEVQIG1vZGUgY2xhaW1pbmcgTDFzcyBhdmFpbGFibGUgdGhyb3VnaCAqQ0FQKiByZWdz
IGJ1dCBhY3R1YWxseQppdCBkb2Vzbid0LiBUaGlzIGlzIG5vdGhpbmcgcmVsYXRlZCB0byBSQyBz
aWRlLCBldmVuIGlmIGl0IHB1bGxzIGRvd24KQ0xLUkVRIyB0byByZWplY3QgbmVnb3RpYXRpb24g
Zm9yIEwxc3MsIGl0IHN0aWxsIGxvb2tzIHdyb25nIGZyb20gbHNwY2kKdmlldy4gU28gb2YgY291
cnNlLCB3ZSBjb3VsZCBsZWF2ZSBpdCB0byB0aGUgZ2x1ZSBkcml2ZXIgdG8gZXhwbGljdGx5CmVs
aW1pbmF0ZSBMMVNTIGNhcGFiaWxpdHkgbGF0ZXIuIElmIHRoZXkgd2FudCwganVzdCBleHBvcnQK
ZHdfcGNpZV9oaWRlX3Vuc3VwcG9ydGVkX2wxc3MoKSB0aGUgY2FsbCBpdC4KCj4gCj4gRnJhbmsK
PiAKPj4KPj4gVGhhdCB3YXksIHdlIGNvdWxkIHN0aWxsIHF1ZXVlIHRoaXMgc2VyaWVzIHVwIGZv
ciA2LjE5Lgo+Pgo+PiBUaG91Z2h0cyBmcm9tIGV2ZXJ5b25lPwo+Pgo+Pgo+Pgo+PiBLaW5kIHJl
Z2FyZHMsCj4+IE5pa2xhcwo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
