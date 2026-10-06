Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F7BDCA5FFC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 16:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEl5ZNeBluUIIuHzdPJlHoYF00cSu8oyAsJP6lVT2bI=; b=K7xHkFSzcWhGMC
	RQBbQvNMSureIySI61m5wWsfRTPZvoDjSqTw1AqlJyFhxDYc3lK1Jtyuubk6OTScwOYmMB4VgIMDJ
	W5Ak4Asu1JOHBfxyCWugXntMsthf2p+uYFGglUgMORbFdET5b3GBmuh90uACMYhcLUHtCN1wHmLvT
	Zf6dtj42DX4NVpkDy4zjIBOaX9lSM2HrsJaT40h4T8Xnn45LtvcYie/wAgboFoobU6EIokqypbpIO
	6U0Ko39fbOBcUPlBxxAI5AnVwhOz/KdIcDQ3Jm8mFuSOBqwHpPM7zzlQ+PtSomgG4DJ07PdpOTFE8
	e5HeQK1c0I9ezVtLnF/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7np-000000017KL-3GGW;
	Tue, 06 Oct 2026 16:14:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7np-000000017K1-0Fxr;
	Tue, 06 Oct 2026 16:14:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7F94E43CC4;
	Tue,  6 Oct 2026 16:14:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 330131F0089B;
	Tue,  6 Oct 2026 16:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791303244;
	bh=txP3ruVYCLkbMDGy07Vcni7w37L1LO/1WObGN9fDR6g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=g1xdCTZWc+2keXIczvFXqEioig8hAdmMVgPi0UUdiJ1jt/m+HcLtmBHFVGhNbyH6P
	 v2CxRkYvuRtEcGfObj3btZB08LnhgnVJ4OtTSNV/kFLzcMOjhTei9WhhWVKT7ISpBk
	 5v0UuzTVRln7IpACNwOxWxRIAAc/E3SjyElDIZCE08/xHh8WV2Y5rfiCUf3sEAIFzA
	 imIC8VzpHbrfCc+he7/NinmJ5gUcaF8GlEStOrKf0l4hE3lq9XwUOwaEkaSUfGZf16
	 DuHsrWUkTS3a3pUwLA8mSPPsir6UiTFxPUXw4sAG3y0j0+9TkgmXJsDkO9ZQJWDXTH
	 /rHc88pYFlhhQ==
Date: Tue, 6 Oct 2026 11:14:03 -0500
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Coia Prant <coiaprant@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v12 2/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
Message-ID: <20261006161403.GA2469169-robh@kernel.org>
References: <20261006074749.2010233-1-coiaprant@gmail.com>
 <20261006074749.2010233-3-coiaprant@gmail.com>
 <08736f4d-a728-4b1e-a28e-882648a412e0@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08736f4d-a728-4b1e-a28e-882648a412e0@rock-chips.com>
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

T24gVHVlLCBPY3QgMDYsIDIwMjYgYXQgMTA6NTM6MjJQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEhpIENvaWEKPiAKPiDlnKggMjAyNi8xMC8wNiDmmJ/mnJ/kuowgMTU6NDcsIENvaWEgUHJh
bnQg5YaZ6YGTOgo+ID4gT24gUkszNTY4LCB0aGUgU0dNSUkgaW50ZXJmYWNlIGNhbiBiZSByb3V0
ZWQgdG8gZWl0aGVyIEdNQUMwIG9yCj4gPiBHTUFDMSB2aWEgdGhlIEdSRiByZWdpc3RlciBwaXBl
X3NnbWlpX21hY19zZWwuCj4gPiAKPiA+IEFkZCBzdXBwb3J0IGZvciB0aGlzIHNlbGVjdGlvbiBi
eSBpbnRyb2R1Y2luZwo+ID4gdGhlICJyb2NrY2hpcCxzZ21paS1tYWMtc2VsIiBEVCBwcm9wZXJ0
eS4KPiA+IAo+ID4gIEZyb20gdGhlIFJLMzU2OCBUUk0gKFBhcnQxLCBQYWdlIDIyOSksIHRoZSBQ
SVBFX0dSRl9YUENTX0NPTjAKPiA+IGJpdCAxIChwaXBlX3NnbWlpX21hY19zZWwpIGlzIGRlZmlu
ZWQgYXM6Cj4gPiAKPiA+ICAgICAgMDogU0dNSUkgcm91dGVkIHRvIEdNQUMwCj4gPiAgICAgIDE6
IFNHTUlJIHJvdXRlZCB0byBHTUFDMQo+ID4gCj4gPiBUaGUgaGFyZHdhcmUgcmVzZXQgdmFsdWUg
aXMgMSAoR01BQzEpLiBJZiB0aGUgcHJvcGVydHkgaXMgc2V0IHRvIDAsCj4gPiB0aGUgZHJpdmVy
IHJvdXRlcyBTR01JSSB0byBHTUFDMDsgaWYgc2V0IHRvIDEgKG9yIG9taXR0ZWQpLCBpdAo+ID4g
cmVtYWlucyBhdCBHTUFDMS4KPiA+IAo+IAo+IFRoYW5rcyBmb3IgeW91ciBwYXRjaC4gSSBoYXZl
IGEgcXVlc3Rpb24gYmVsb3csIHBsZWFzZSBoYXZlIGEgbG9vay4KPiAKPiA+IFRoaXMgaXMgbmVj
ZXNzYXJ5IGZvciBib2FyZHMgc3VjaCBhcyB0aGUgQXJpYWJvYXJkIFBob3RvbmljYXQsIHdoaWNo
Cj4gPiB1c2VzIHRoZSBTR01JSSBpbnRlcmZhY2UgY29ubmVjdGVkIHRvIEdNQUMwLgo+ID4gCj4g
PiBPdXQtb2YtcmFuZ2UgdmFsdWVzIGFyZSByZWplY3RlZCBieSBkdHNjaGVtYSwgc28gdGhlIGRy
aXZlciBkb2VzIG5vdAo+ID4gZHVwbGljYXRlIHRoZSByYW5nZSBjaGVjay4KPiA+IAo+ID4gTGlu
azogaHR0cHM6Ly9kbC5yYWR4YS5jb20vcm9jazMvZG9jcy9ody9kYXRhc2hlZXQvUm9ja2NoaXAl
MjBSSzM1NjglMjBUUk0lMjBQYXJ0MSUyMFYxLjEtMjAyMTAzMDEucGRmIChQYWdlIDIyOSkKPiA+
IFNpZ25lZC1vZmYtYnk6IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+Cj4gPiAtLS0K
PiA+ICAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMg
fCA4ICsrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiA+IAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmct
Y29tYnBoeS5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21i
cGh5LmMKPiA+IGluZGV4IDc4NDMzNTZhNGRkNDcuLjdiODY3ZTc1MjAwNjQgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+
ID4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5
LmMKPiA+IEBAIC0xODYsNiArMTg2LDcgQEAgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfZ3JmY2Zn
IHsKPiA+ICAgCXN0cnVjdCBjb21icGh5X3JlZyBwaXBlX3hwY3NfcGh5X3JlYWR5Owo+ID4gICAJ
c3RydWN0IGNvbWJwaHlfcmVnIHBpcGVfcGNpZTFsMF9zZWw7Cj4gPiAgIAlzdHJ1Y3QgY29tYnBo
eV9yZWcgcGlwZV9wY2llMWwxX3NlbDsKPiA+ICsJc3RydWN0IGNvbWJwaHlfcmVnIHBpcGVfc2dt
aWlfbWFjX3NlbDsKPiA+ICAgCXN0cnVjdCBjb21icGh5X3JlZyB1M290ZzBfcG9ydF9lbjsKPiA+
ICAgCXN0cnVjdCBjb21icGh5X3JlZyB1M290ZzFfcG9ydF9lbjsKPiA+ICAgfTsKPiA+IEBAIC0y
MTIsNiArMjEzLDcgQEAgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfcHJpdiB7Cj4gPiAgIAlib29s
IGVuYWJsZV9zc2M7Cj4gPiAgIAlib29sIGV4dF9yZWZjbGs7Cj4gPiAgIAlzdHJ1Y3QgY2xrICpy
ZWZjbGs7Cj4gPiArCXUzMiBzZ21paV9tYWNfc2VsOwo+ID4gICB9Owo+ID4gICBzdGF0aWMgdm9p
ZCByb2NrY2hpcF9jb21icGh5X3VwZGF0ZWwoc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfcHJpdiAq
cHJpdiwKPiA+IEBAIC0zNzUsNiArMzc3LDkgQEAgc3RhdGljIGludCByb2NrY2hpcF9jb21icGh5
X3BhcnNlX2R0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHkKPiA+
ICAgCXByaXYtPmV4dF9yZWZjbGsgPSBkZXZpY2VfcHJvcGVydHlfcHJlc2VudChkZXYsICJyb2Nr
Y2hpcCxleHQtcmVmY2xrIik7Cj4gPiArCXByaXYtPnNnbWlpX21hY19zZWwgPSAxOwo+IAo+IEJl
Zm9yZSB0aGlzIHBhdGNoLCBTR01NSSB3YXMgcm91dGVkIHRvIEdNQUNYIGRlcGVuZHMgb24gYm9v
dGxvYWRlcihpZgo+IHNldHRpbmcpLCBvciByb3V0ZWQgdG8gR01BQzEgYnkgY2hpcCBkZWZhdWx0
LiBXaXRob3V0IGtub3dpbmcgYW55Cj4gcG90ZW50aWFsIGNhbmRpZGF0ZXMgc2V0dGluZyBpdCB2
aWEgYm9vdGxvYWRlciwgeW91IG1pZ2h0IG5vdCBmb3JjZSBhbnkKPiBEVFMgZmlsZXMgd2l0aG91
dCAicm9ja2NoaXAsc2dtaWktbWFjLXNlbCIgdG8gcGljayBHTUFDMSBhcyBmYWxsYmFjay4KPiAK
PiBNYXliZSB5b3UgY291bGQganVzdCBrZWVwIHRoZSBTR01JSSByb3V0ZSBhcy1pdCBpZiB0aGUg
cHJvcGVydHkgaXMgbm90Cj4gcHJlc2VudC4gTWVhbndoaWxlLCBzaG91bGQgdmFsaWRhdGUgcm9j
a2NoaXAsc2dtaWktbWFjLXNlbCBpcyBhIHZhbGlkCj4gdmFsdWUgcGFzc2luZyBmcm9tIERULgoK
VGhhdCBpcyB0aGUgdHlwaWNhbCB3YXkgdHJpLXN0YXRlIHByb3BlcnRpZXMgd29yayAoYXMgb3Bw
b3NlZCB0byB1c2luZyBhIApib29sZWFuKS4gSW4gdGhhdCBjYXNlLCBubyAnZGVmYXVsdCcgaW4g
dGhlIHNjaGVtYSB3b3VsZCB0aGVuIGJlIAphcHByb3ByaWF0ZS4KClJvYgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
