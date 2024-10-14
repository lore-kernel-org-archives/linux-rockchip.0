Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AAC8D1812A
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 15:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NdWoSIXYySbWnJAFp4LTeRb9p9rq6KV/CdU3ziBwefw=; b=FWLJroj+GoTLG1ysvJSR2eboy0
	s2P9JoWsTGSo99LPyYqA7/7zAo2fThwyfW5t7XLBXTkzyfRCUpYKHPSqDZ3BnsNkzbJImcFGr5iU5
	E0Ivl3pGhD3rugVC3RBbbkZ1aBuQikPK+E3qG3omQIEcfE0tPTTYpy5v00MFx+zlC7YwXo4Z5H80q
	/Kgp2oP1PbKVHPvgmfWSbnqrJYwoTuJ2jcCDqBCQmB3kBMjgr28y4XQIBHQUogCWsHYXfUCDsJGOB
	9QUfXh2A+AX1v9iQ23HWEqjEe3Zu2/KIP6Yg3aLs3Mzsm8adS8qBx1Rnc0qzRbQj7CggfckfDaIzN
	sbvb+I2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0NMt-00000005ltm-1EDO;
	Mon, 14 Oct 2024 15:52:23 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0NJu-00000005lMa-0YFC;
	Mon, 14 Oct 2024 15:50:54 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728920955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=07GU8WAJO17q5kdEYI1T6Pkw2Te0wqsYowGyYUe3E2Y=;
	b=nCxpvM7/REPjEP7L+Eu+UD5LaESncMaO408biL9S099TjPN4oAaHd6bachmrfsWtbjEibr
	t0fMGljO5BKSv5Wy1Cg1NrFAgMkPEigUlQigSNlGoJZYi1QPo4KRayvO/jXsKZ70bRR65O
	taO/t1fcjayKsZ1V5IicY9Q/Gjh2aOUk9gYn8ZtKSSvxproXOZWMSspfT53xmNnDLi2CaH
	O9gIifPgOa+4bofj1RjK2bhIxW+S3mGJEkd/8vJiLmD2peJwevILTvOaIgAEJQUy357FlB
	BnWPN+F70tJtDnVdIa9sCp7YDDQj2vyuXg9tK7kBASbFBtbYkmfh+kmz5hTICg==
Date: Mon, 14 Oct 2024 17:49:14 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Quentin
 Schulz <quentin.schulz@theobroma-systems.com>, Klaus Goger
 <klaus.goger@theobroma-systems.com>
Subject: Re: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from
 fan on Theobroma boards
In-Reply-To: <4f8a87da-76b1-4fa6-8755-5dbf10bfd74e@cherry.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-7-heiko@sntech.de>
 <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
 <4f8a87da-76b1-4fa6-8755-5dbf10bfd74e@cherry.de>
Message-ID: <ff20557655d689571590d5b908b705c1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_084918_788850_0E42AA8F 
X-CRM114-Status: GOOD (  18.86  )
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

SGVsbG8gUXVlbnRpbiwKCk9uIDIwMjQtMTAtMTQgMTc6MzksIFF1ZW50aW4gU2NodWx6IHdyb3Rl
Ogo+IE9uIDEwLzkvMjQgOToxNiBBTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiBPbiAyMDI0LTEw
LTA4IDIyOjM5LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4+IEFsbCBUaGVvYnJvbWEgYm9hcmRz
IHVzZSBhIHRpLGFtYzY4MjEgYXMgZmFuIGNvbnRyb2xsZXIuCj4+PiBJdCBub3JtYWxseSBydW5z
IGluIGFuIGF1dG9tYXRpY2FsbHkgY29udHJvbGxlZCB3YXkgYW5kIHdoaWxlIGl0IG1heSAKPj4+
IGJlCj4+PiBwb3NzaWJsZSB0byB1c2UgaXQgYXMgcGFydCBvZiBhIGR0LWJhc2VkIHRoZXJtYWwg
bWFuYWdlbWVudCwgdGhpcyBpcwo+Pj4gbm90IHlldCBzcGVjaWZpZWQgaW4gdGhlIGJpbmRpbmcs
IG5vciBpbXBsZW1lbnRlZCBpbiBhbnkga2VybmVsLgo+Pj4gCj4+PiBOZXdlciBib2FyZHMgYWxy
ZWFkeSBkb24ndCBjb250YWluIHRoYXQgI2Nvb2xpbmctY2VsbHMgcHJvcGVydHksIGJ1dAo+Pj4g
b2xkZXIgb25lcyBkby4gU28gcmVtb3ZlIHRoZW0gZm9yIG5vdywgdGhleSBjYW4gYmUgcmUtYWRk
ZWQgaWYgCj4+PiB0aGVybWFsCj4+PiBpbnRlZ3JhdGlvbiBnZXRzIGltcGxlbWVudGVkIGluIHRo
ZSBmdXR1cmUuCj4+PiAKPj4+IEZpeGVzOiBjNDg0Y2Y5M2Y2MWIgKCJhcm02NDogZHRzOiByb2Nr
Y2hpcDogYWRkIFBYMzAtwrVRNyAoUmluZ25lY2spCj4+PiBTb00gd2l0aCBIYWlrb3UgYmFzZWJv
YXJkIikKPj4+IEZpeGVzOiBkOTlhMDJiY2ZhODEgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRk
IFJLMzM2OC11UTcgKExpb24pIAo+Pj4gU29NIikKPj4+IEZpeGVzOiAyYzY2ZmMzNGU5NDUgKCJh
cm02NDogZHRzOiByb2NrY2hpcDogYWRkIFJLMzM5OS1RNyAoUHVtYSkgCj4+PiBTb00iKQo+Pj4g
Q2M6IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+
Cj4+PiBDYzogS2xhdXMgR29nZXIgPGtsYXVzLmdvZ2VyQHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4K
Pj4+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+PiBS
ZXZpZXdlZC1ieTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KPj4g
Cj4+IExvb2tpbmcgZ29vZCB0byBtZSwgdGhhbmtzIGZvciB0aGUgcGF0Y2guwqAgSW4gYWRkaXRp
b24gdG8gdGhlIGFtYzY4MjEKPj4gZHJpdmVyIGN1cnJlbnRseSBub3Qgc3VwcG9ydGluZyBmdWxs
IGludGVncmF0aW9uIGludG8gdGhlIHRoZXJtYWwKPj4gZnJhbWV3b3JrLCB0aGUgImZhbiIgRFQg
bm9kZSBhbHNvIGlzbid0IHJlZmVyZW5jZWQgaW4gYW55IGNvb2xpbmcgbWFwLAo+PiBzbyBoYXZp
bmcgaXQgZGVmaW5lIHRoZSAiY29vbGluZy1jZWxscyIgcHJvcGVydHkgaXMgb2Ygbm8gdXNlLgo+
PiAKPj4gQnkgdGhlIHdheSwgaXQgd291bGQgYmUgbmljZSB0byBzZWUgdGhlIGFtYzY4MjEgZHJp
dmVyIHN1cHBvcnRpbmcgZmFuCj4+IHNwZWVkIHJlZ3VsYXRpb24sIGFuZCB0ZXN0IGl0IHRvIGNo
ZWNrIHdobyBkb2VzIGEgYmV0dGVyIGpvYiB3aGVuIGl0Cj4+IGNvbWVzIHRvIGNvb2xpbmcgYW5k
IGZhbiBzcGVlZCByZWd1bGF0aW9uLCB0aGUgdGhlcm1hbCBmcmFtZXdvcmsgb3IKPj4gdGhlIGNo
aXAncyBidWlsdC1pbiBsb2dpYy4gOikKPiAKPiBXYXNuJ3QgdGhpcyBmZWF0dXJlIGFkZGVkIHRo
aXMgc3VtbWVyIGJ5IEd1ZW50ZXI/Cj4gCj4gYy5mLiAKPiBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0L2RyaXZl
cnMvaHdtb24vYW1jNjgyMS5jP2lkPWJlY2JkMTZlZDJmOGY0MjcyMzlmZmRhNjZiNWQ4OTQwMDhi
YzU2YWYKPiAKPiBNb2RlIDQgaXMKPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92
Ni4xMS4zL3NvdXJjZS9kcml2ZXJzL2h3bW9uL2FtYzY4MjEuYyNMMzY3Cj4gKFtGRFJDMTpGRFJD
MF0gPSBbMDFdIC0+IFNvZnR3YXJlLVJQTSBDb250cm9sIE1vZGUgKEZhbiBTcGVlZAo+IFJlZ3Vs
YXRvcikgYWNjb3JkaW5nIHRvIHRoZSBkYXRhc2hlZXQpLgoKQWgsIFNFTlNPUl9ERVZJQ0VfQVRU
Ul9SVyhmYW4xX3RhcmdldCwgZmFuLCBJRFhfRkFOMV9UQVJHRVQpLi4uCkhvdyBkaWQgSSBtaXNz
IHRoYXQ/ICBIbW0uLi4gIE1heWJlIEkgd2FzIGxvb2tpbmcgYXQgc29tZSBvbGRlcgpsb2NhbCBi
cmFuY2gsIHdoaWNoIGhhcHBlbmVkIG5vdCB0byBpbmNsdWRlIHRoYXQgY29tbWl0LgoKQW55d3lh
eSwgZ29vZCB0byBrbm93LCB0aGFua3MuCgo+IEluIGFueSBjYXNlLCB3ZSBjYW5ub3QgY29tcGFy
ZSB0aG9zZSBmb3Igb3VyIHByb2R1Y3RzIGFzIHdlIGRvIG5vdAo+IGhhdmUgYSBnZW51aW5lIEFN
QzY4MjEgYnV0IGEgaGFuZG1hZGUgc2ltdWxhdGlvbiBvZiB0aGUgSVAgd2UgcnVuIGluCj4gYW4g
TUNVLgoKSSBzZWVtIHRvIHJlbWVtYmVyIHlvdXIgTUNVIHRoYXQgcGVyZm9ybXMgYSBmZXcgdGFz
a3MsIGJhY2sgZnJvbQpzb21lIHJlbGF0ZWQgZGlzY3Vzc2lvbnMuICBJIHdvbmRlciB3aGF0IHdh
cyB0aGUgcmVhc29uIHRvIGltcGxlbWVudAppdCBpbiBzb2Z0d2FyZSwgaW5zdGVhZCBvZiB1c2lu
ZyBhY3R1YWwgZmFuIGNvbnRyb2xsZXIgY2hpcD8KCj4gQnV0IHRoYXQnZCBiZSBhbiBpbnRlcmVz
dGluZyBkYXRhIHBvaW50IGluZGVlZCA6KQoKSSdtIGdsYWQgdGhhdCB5b3UgYWdyZWUuIDopCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
