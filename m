Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C215FCC9AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 05:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AldsBUyMFMkYmtwMDaW+jiharPy9BBzxRCNJNHGNKm4=; b=OkW3pncw8nQyCc
	SslHaRmVV36a9PVOkfBkCXXpgL8ScXMVk8rx4zeVILJvjfm4+VnEo2Q295Mbl1838VLLQbOQzInqD
	E2S82JI+LDlXzxvEirRakBV9nRi0Nc1jJ4ZMvfi+RTSvwM3xvMmouF+gR1G2Rb/asrgdVlbexJomL
	B7sOzyJ3pobXsbCDWVjvrClWD3+se1c1O4sXnxQ9itAC8bYo3gOEt3GlkUV4hs5c5nrLcsg47JYP1
	1aqNjGVJlawLhZ3FNGoDEx7ft28GyX4bhUAmB6pOum1JTeS+d9L4jGyf4OFEk2s142N0wA90sZHx+
	sgmS0Y5ct9ESZgvq4PcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0C4N-0000000Am6a-0ZAD;
	Wed, 11 Mar 2026 05:25:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0C4K-0000000Am5g-2tRI;
	Wed, 11 Mar 2026 05:25:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EB3EB40E0B;
	Wed, 11 Mar 2026 05:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A392C4CEF7;
	Wed, 11 Mar 2026 05:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773206715;
	bh=Lz9CL6rzdbiGSs2MlZc2h5jp54acjzYn9zhxUZhjCSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EdjU4UpZvCZbIz4IVjbWg8bEigB3Il9TDaxRPMNRYXAG6xI2m5oVM27GWJq9zR/hH
	 8Ty+XAHDBc4IUpQM8TdwFjmSF4DaxoA0q72QiB0raWNfuMJ4QZoYnb1hcXum40d/Sz
	 0czfouRTFALAxFnaQi0PvKTVzE2B1cAP/3MX5rWbrFPZZZ9rPBzE+9Hirvq5N2ItzK
	 UTE/x50P9uX3bI8lKJEFcYCb4wRUjI3INck/AuD0xtc05ojvJAqYALfkhZDrk+q0xK
	 fJH78WljXcK36ZUbkStnvdCkZOBhl9NtbnuzcSAWrIB8kJvVdk3UTbP58N16nx/tdr
	 mhCw5KctX23kw==
Date: Wed, 11 Mar 2026 10:54:59 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>, 
	Grimmauld <grimmauld@grimmauld.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>, driver-core@lists.linux.dev, 
	Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
Message-ID: <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
 <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
 <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_222516_770480_370CB67A 
X-CRM114-Status: GOOD (  34.36  )
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

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgMDk6MDM6MzJQTSArMDAwMCwgUm9iaW4gTXVycGh5IHdy
b3RlOgo+IFsgK2RyaXZlci1jb3JlIG1haW50YWluZXJzIC0gYXN5bmMgcHJvYmUgcXVlc3Rpb24g
YmVsb3cgXQo+IAo+IE9uIDIwMjYtMDMtMTAgMzozMCBwbSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IHdyb3RlOgo+ID4gSGkgUm9iaW4sCj4gPiAKPiA+IE9uIFR1ZSwgTWFyIDEwLCAyMDI2IGF0IDAx
OjQxOjU2UE0gKzAwMDAsIFJvYmluIE11cnBoeSB3cm90ZToKPiA+ID4gSGkgTWFuaSwKPiA+ID4g
Cj4gPiA+IE9uIDIwMjYtMDMtMDQgNjo0OCBhbSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3Rl
Ogo+ID4gPiA+IAo+ID4gPiA+IE9uIFRodSwgMjYgRmViIDIwMjYgMTU6NDA6MjMgKzA1MzAsIEFu
YW5kIE1vb24gd3JvdGU6Cj4gPiA+ID4gPiBSb2NrY2hpcCBEV0MgUENJZSBkcml2ZXIgY3VycmVu
dGx5IHBlcmZvcm1zIHN5bmNocm9ub3VzIGxpbmsgdHJhaW5pbmcgZm9yCj4gPiA+ID4gPiBjb21i
byBQSFlzIChQQ0llIDMuMC8yLjAgYW5kIFNBVEEgMy4wKSBkdXJpbmcgYm9vdC4gVGhpcyBwcm9j
ZXNzIHdhaXRzIGZvcgo+ID4gPiA+ID4gdGhlIGxpbmsgdG8gYmUgZnVsbHkgZXN0YWJsaXNoZWQs
IGFkZGluZyBzZXZlcmFsIG1pbGxpc2Vjb25kcyB0byB0aGUgYm9vdAo+ID4gPiA+ID4gc2VxdWVu
Y2UuIFRvIG9wdGltaXplIGJvb3QgdGltZSwgdGhpcyBjaGFuZ2UgZW5hYmxlcyBhc3luY2hyb25v
dXMgcHJvYmluZywKPiA+ID4gPiA+IGFsbG93aW5nIGxpbmsgZXN0YWJsaXNobWVudCB0byBwcm9j
ZWVkIGluIHRoZSBiYWNrZ3JvdW5kIHdoaWxlIHRoZSBrZXJuZWwKPiA+ID4gPiA+IGNvbnRpbnVl
cyBwcm9iaW5nIG90aGVyIGRldmljZXMuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFsuLi5dCj4gPiA+
ID4gCj4gPiA+ID4gQXBwbGllZCwgdGhhbmtzIQo+ID4gPiA+IAo+ID4gPiA+IFsxLzFdIFBDSTog
ZHctcm9ja2NoaXA6IEVuYWJsZSBhc3luYyBwcm9iZSBieSBkZWZhdWx0Cj4gPiA+ID4gICAgICAg
ICBjb21taXQ6IGVjMzkyYWJjOTU5MzI4MzhiZjdlM2Q2NTlkMzU4ZjRkZjlmZjVhMGEKPiA+ID4g
Cj4gPiA+IFRoaXMgYXBwZWFycyB0byBoYXZlIHRoZSBzaWRlLWVmZmVjdCB0aGF0IGNhbGxpbmcg
cGNpX2hvc3RfcHJvYmUoKSBmcm9tCj4gPiA+IGFzeW5jIGNvbnRleHQgY2FuIGVmZmVjdGl2ZWx5
IGZvcmNlIGFzeW5jIHByb2JlIGZvciB0aGUgZW5kcG9pbnQgZHJpdmVycwo+ID4gPiBhcyB3ZWxs
LCBidXQgc29tZSBkcml2ZXJzIGFyZSBub3QgT0sgd2l0aCB0aGF0LCBhcyBvdXIgQ0kgaGFzIGp1
c3QKPiA+ID4gZmxhZ2dlZCB1cC4KPiA+ID4gCj4gPiAKPiA+IFRoYW5rcyBmb3IgcmVwb3J0aW5n
IQo+ID4gCj4gPiA+IChBbmQgYXMgZm9yIHRoYXQgcGFydGljdWxhciB3YXJuaW5nLCBJU1RSIGxh
c3QgdGltZSBJIGxvb2tlZCBpbnRvIGl0Cj4gPiA+IGFub3RoZXIgY29udGV4dCwgdGhlIG9waW5p
b24gb2YgdGhlIE1ESU8vcGh5IG1haW50YWluZXJzIHNlZW1lZCB0byBiZQo+ID4gPiAiZG9uJ3Qg
Zm9yY2UgYXN5bmMgcHJvYmUiLikKPiA+ID4gCj4gPiAKPiA+IFRoaXMgd2FzIGRpc2N1c3NlZCBk
dXJpbmcgdjIgWzFdIGFuZCBjb25jbHVkZWQgdGhhdCB0aGUgYXN5bmMgcHJvYmUgYmVuZWZpdHMK
PiA+IG91dHdlaWdoIHRoZSB1bmhhcm1mdWwgc3BsYXQgZnJvbSBwaHlsaWIuIEkgYWxzbyBhZ3Jl
ZSB3aXRoIHRoZSBhYm92ZSBjb25jbHVzaW9uCj4gPiB0aGF0IHRoaXMgc3BsYXQgc2hvdWxkIG5v
dCBwcmV2ZW50IHVzIGZyb20gZW5hYmxpbmcgYXN5bmMgcHJvYmUgZm9yIFBDSQo+ID4gY29udHJv
bGxlciBkcml2ZXJzLiBJdCBjYW4gZWFzaWx5IHNhdmUgYSBmZXcgMTAwbXMgZHVyaW5nIGJvb3Qu
Cj4gCj4gVGhlIHByb2JsZW0gaXMgbm90IGFuICJ1bmhhcm1mdWwgc3BsYXQiIGZyb20gb25lIGRy
aXZlciBvbiBvbmUgYm9hcmQgLQo+IHRoYXQncyAqYSogc3ltcHRvbSwgYW5kIHRoZSBmYWN0IHRo
YXQgaXQgaGFwcGVucyB0byBiZSBhIHJlbGF0aXZlbHkgYmVuaWduCj4gb25lIGRvZXMgbm90IGRp
c21pc3MgdGhlIHByb2JsZW0gdGhhdCBmb3JjaW5nIGFzeW5jIHByb2JlIHVwb24gZHJpdmVycyB0
aGF0Cj4gYXJlIG5vdCBkZXNpZ25lZCB0byBzdXBwb3J0IGFzeW5jIHByb2JlIGNhbm5vdCBpbiBn
ZW5lcmFsIGJlIGFzc3VtZWQgdG8gYmUKPiBzYWZlLCBzbyBpcyBub3QgT0suIEl0J3Mgb25lIHRo
aW5nIGlmIGEgdXNlciBicmluZ3MgaXQgdXBvbiB0aGVtc2VsdmVzIGJ5Cj4gZXhwbGljaXRseSB1
c2luZyB0aGUgImRyaXZlcl9hc3luY19wcm9iZT0iIG9wdGlvbiwgYnV0IGl0J3MgdmVyeSBkaWZm
ZXJlbnQKPiBpZiBzb21lIG90aGVyIGRyaXZlciBzdGFydHMgZG9pbmcgaXQgZm9yIHRoZW0uCj4g
CgpJIGhhdmUgYSBjb250cmFyeSB2aWV3IGhlcmUuIElmIGp1c3QgYSBzaW5nbGUgZHJpdmVyIG9y
IGxpYiBkb2Vzbid0IGhhbmRsZSBhc3luYwpwcm9iZSwgaXQgY2Fubm90IGp1c3QgZm9yY2Ugb3Ro
ZXIgZHJpdmVycyB0byBub3QgdGFrZSB0aGUgYWR2YW50YWdlIG9mIGFzeW5jCnByb2JlLiBBcyBJ
IHNhaWQgYWJvdmUsIGVuYWJsaW5nIGFzeW5jIHByb2JlIGVhc2lseSBzYXZlcyBhIGZldyBodW5k
ZXJkIG1zIG9yCmV2ZW4gbW9yZSBpZiB0aGVyZSBhcmUgbW9yZSB0aGFuIG9uZSBSb290IFBvcnQg
b3IgUm9vdCBDb21wbGV4IGluIGFuIFNvQy4KCk1vcmVvdmVyLCB0aGVyZSBhcmUgbXVsdGlwbGUg
d2F5cyB0aGlzIHNwbGF0IGNvdWxkIGJlIHRyaWdnZXJlZCBhcyByZXBvcnRlZCBpbjoKaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzcxMDM3MDQuOUo3TmFLNFczdkBmZWRvcmEuZnJpdHou
Ym94Cgo+IExvb2tpbmcgY2xvc2VyLCBpdCBzZWVtcyBsaWtlIHRoZSBmdW5kYW1lbnRhbCBpc3N1
ZSBtaWdodCBiZSB3aGVuIHdlJ3ZlIGdvdAo+IHRoaXMgZmFyIChzaW1wbGlmaWVkIGZvciBjbGFy
aXR5KToKPiAKPiAtIGFzeW5jX3J1bl9lbnRyeV9mbgo+ICAgLSByb2NrY2hpcF9wY2llX3Byb2Jl
Cj4gICAgIC0gcGNpX2hvc3RfcHJvYmUKPiAgICAgIC0gcGNpX2J1c19hZGRfZGV2aWNlCj4gICAg
ICAgIC0gZGV2aWNlX2luaXRpYWxfcHJvYmUKPiAgICAgICAgICAtIF9fZGV2aWNlX2F0dGFjaF9k
cml2ZXIKPiAKPiB3aGVyZWluIHdlIHRoZW4gcmVhY2ggdGhlICJpZiAoZGF0YS0+Y2hlY2tfYXN5
bmMgJiYgYXN5bmNfYWxsb3dlZCAhPQo+IGRhdGEtPndhbnRfYXN5bmMpIiBjb25kaXRpb24sIGF0
IHdoaWNoIHBvaW50IGNoZWNrX2FzeW5jIGlzIHRydWUgKGZyb20KPiBkZXZpY2VfaW5pdGlhbF9w
cm9iZSgpKSwgd2hpbGUgYXN5bmNfYWxsb3dlZCBhbmQgd2FudF9hc3luYyBhcmUgKmJvdGgqCj4g
ZmFsc2UsIGJ1dCB0aGF0IGxlYWRzIHVzIHRvIGFjdHVhbGx5IGdvIGFoZWFkIGFuZCBjYWxsIGRy
aXZlcl9wcm9iZV9kZXZpY2UoKQo+IGZvciB0aGUgY2hpbGQgZGV2aWNlIGRlc3BpdGUgYmVpbmcg
aW4gYXN5bmMgY29udGV4dC4gVGhhdCBkb2Vzbid0IHNlZW0gcmlnaHQKPiB0byBtZSAtIEknbSBn
dWVzc2luZyBpdCBtYXliZSB3YXNuJ3QgYW50aWNpcGF0ZWQgdG8gaGF2ZSBidXMgZHJpdmVycyBj
YWxsaW5nCj4gZGV2aWNlX2luaXRpYWxfcHJvYmUoKSBmcm9tIHdpdGhpbiBhc3luYyBpbiB0aGUg
Zmlyc3QgcGxhY2U/Cj4gCgpCdXQgaXNuJ3QgdGhlIHVuZGVybHlpbmcgaXNzdWUgaXMgd2l0aCBw
aHlsaWIgY2FsbGluZyByZXF1ZXN0X21vZHVsZSgpIHdoaWxlIHRoZQpkcml2ZXIgY29yZSBwZXJm
b3JtcyBhc3luYyBwcm9iaW5nPwoKPiBJdCBtYXkgbm90IHN0cmljdGx5IGJlIHRoZSBmYXVsdCBv
ZiB0aGlzIHBhdGNoIC0gY2xlYXJseSA5MTcwMzA0MTY5N2MgKCJQQ0k6Cj4gQWxsb3cgYnVpbHQt
aW4gZHJpdmVycyB0byB1c2UgYXN5bmMgaW5pdGlhbCBwcm9iaW5nIikgaXMgaW1wbGljYXRlZCBp
biB0aGlzCj4gdG9vIC0gYnV0IHRoZSBmYWN0IGlzIHRoYXQgaXQgKmhhcyogZXhwb3NlZCBhIGJ1
ZyB0aGF0IG5lZWRzIGZpeGluZyBvbmUgd2F5Cj4gb3IgYW5vdGhlciwgaXQgY2FuJ3QganVzdCBi
ZSBsZWZ0IGhhbmdpbmcgYW5kIGltcGFjdGluZyBlbmQgdXNlcnMuCj4gCgpJIHN0cm9uZ2x5IGFn
cmVlIHdpdGggeW91IGhlcmUgdGhhdCB0aGUgdW5kZXJseWluZyBpc3N1ZSBzaG91bGQgYmUgZml4
ZWQuIEJ1dAp0aGUgcmVhbCBpbXBhY3QgdG8gZW5kIHVzZXJzIGlzIG5vdCB0aGlzIHNwbGF0LCBi
dXQgbm90IGhhdmluZyB0aGUgYm9vdCB0aW1lCm9wdGltaXphdGlvbiB0aGF0IHRoaXMgcGF0Y2gg
YnJpbmdzIGluLiBBcyBhbiBlbmQgdXNlciwgb25lIHdvdWxkIHdhbnQgdGhlaXIKc3lzdGVtcyB0
byBib290IHF1aWNrbHkgYW5kIHRoZXkgd291bGRuJ3QgYm90aGVyIG11Y2ggYWJvdXQgYSBoYXJt
bGVzcyB3YXJuaW5nCnNwbGF0IGFwcGVhcmluZyBpbiB0aGUgZG1lc2cgbG9nLgoKLSBNYW5pCgot
LSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
