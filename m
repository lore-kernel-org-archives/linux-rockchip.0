Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 455ABCCD195
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 10:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee04PteMnfo0ZGSpTG/j9CbbvJIEUa4eClFl+ErmjYU=; b=4uYIOuYx8NrDj2
	9em0xs7UXST05Y7t/1e4SiG3DwW2JTCCyvvXAOZKAx6ZG0fJAyqei+enY4RFgy6VTJKlukNS2PUqD
	EacSuMWqzjq6aND/Nfascv4tM+l7EZ/YgkT6f8S/xArNBEebHspIoju3NkVIoEEES+l+1TsYKVfo8
	OZvP4D7lPs/GQeCYM6OsUDEk+SDws2kFVw0/DHsSujthodPHBL0ud9BO/hIFRnYc8DtGqS5NCWGL+
	N1ctT4Xvrrib9qmb9nWXACHd9y+iA6qYTkt6LLodqUxCqzRyETQNGMQw78DNrhbKOyyTA/5kFkZPF
	bgOmJfrTkDg5hOSxlCsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBW5y-00000002UnF-1zCP;
	Wed, 22 Oct 2025 10:29:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBW5w-00000002Ume-06PP
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 10:29:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6693F41B32;
	Wed, 22 Oct 2025 10:29:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2BC0C4CEE7;
	Wed, 22 Oct 2025 10:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761128967;
	bh=C0gZbgVqkm3bGIqOXkxHNgEAYxEJV3OPgvoksyc1eKI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dil/Jr0wwrEuqcUbUldTFqDgdufiJwFs5b9tWoQmtzwVb2Z67wOtBqMpUgrROVkFi
	 wuFeFzaTSxJT1DNGXX0P+FKLXkOeCk0cdLZZEzr0j1C64I8XzaYpnRRpjjN5xVWM0m
	 kZu1tA88i0MqYmGjykYhk/b1gEofXzRWafDEbwkqpWAdZ7+X2CjuZ8sO9XrTu2rMcj
	 U4G+3faSRHU3Kb/yMDkzTC2jca8cHa9GUTIUMuxt35c/LdO0+51JVG+uJmtz0NjFsK
	 AMvQq6A3cJ01856vcHbPXxwTsRdpa5jVSa1ISjHrl/JDAgJytfN2I658TDPsiSNZwk
	 jPTeXV28qXf7g==
Date: Wed, 22 Oct 2025 15:59:13 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Bjorn Helgaas <bhelgaas@google.com>, 
	Thierry Reding <thierry.reding@gmail.com>, linux-rockchip@lists.infradead.org, 
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/4] PCI: of: Add of_pci_clkreq_present()
Message-ID: <a3ky7mynu6p7noyx7d3frxhwsq7izlh6sgkbbnyg5txx3kufke@nvftvg4l5gzk>
References: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
 <1761032907-154829-2-git-send-email-shawn.lin@rock-chips.com>
 <eorncfyktfdc33md7ogqccy5z2lsye7ew32wdy4sbegvjo2rdl@qp2zy7u75jqg>
 <be96bc56-c84f-4dac-a4a0-5b3d1b43f505@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be96bc56-c84f-4dac-a4a0-5b3d1b43f505@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_032928_084258_644C68BC 
X-CRM114-Status: GOOD (  21.10  )
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

T24gV2VkLCBPY3QgMjIsIDIwMjUgYXQgMDY6MTM6NTlQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEhpIE1hbmkKPiAKPiDlnKggMjAyNS8xMC8yMiDmmJ/mnJ/kuIkgMTg6MDIsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSDlhpnpgZM6Cj4gPiBPbiBUdWUsIE9jdCAyMSwgMjAyNSBhdCAwMzo0ODoy
NFBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4gPiA+IG9mX3BjaV9jbGtyZXFfcHJlc2VudCgp
IGlzIHVzZWQgYnkgaG9zdCBkcml2ZXJzIHRvIGRlY2lkZSB3aGV0aGVyIHRoZSBjbGtyZXEjCj4g
PiA+IGlzIHByb3Blcmx5IGNvbm5lY3RlZCBhbmQgY291bGQgZW5hYmxlIEwxLjEvTDEuMiBzdXBw
b3J0Lgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9j
ay1jaGlwcy5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgIGRyaXZlcnMvcGNpL29mLmMgIHwgMTggKysr
KysrKysrKysrKysrKysrCj4gPiA+ICAgZHJpdmVycy9wY2kvcGNpLmggfCAgNiArKysrKysKPiA+
ID4gICAyIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BjaS9vZi5jIGIvZHJpdmVycy9wY2kvb2YuYwo+ID4gPiBpbmRleCAz
NTc5MjY1ZjExOTguLjUyYzZkMzY1MDgzYiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9wY2kv
b2YuYwo+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9vZi5jCj4gPiA+IEBAIC0xMDEwLDMgKzEwMTAs
MjEgQEAgaW50IG9mX3BjaV9nZXRfZXF1YWxpemF0aW9uX3ByZXNldHMoc3RydWN0IGRldmljZSAq
ZGV2LAo+ID4gPiAgIAlyZXR1cm4gMDsKPiA+ID4gICB9Cj4gPiA+ICAgRVhQT1JUX1NZTUJPTF9H
UEwob2ZfcGNpX2dldF9lcXVhbGl6YXRpb25fcHJlc2V0cyk7Cj4gPiA+ICsKPiA+ID4gKy8qKgo+
ID4gPiArICogb2ZfcGNpX2Nsa3JlcV9wcmVzZW50KCkgLSBDaGVjayBpZiB0aGUgInN1cHBvcnRz
LWNsa3JlcSIgaXMgcHJlc2VudAo+ID4gCj4gPiBJIGRvbid0IHNlZSBhIGJlbmVmaXQgb2YgdGhp
cyBBUEksIHRiaC4gVGhlIEFQSSBuYW1lIGNyZWF0ZXMgYW4gaW1wcmVzc2lvbiB0aGF0Cj4gPiB0
aGUgQVBJIHdpbGwgY2hlY2sgZm9yIHRoZSBwcmVzZW5jZSBvZiBDTEtSRVEjIHNpZ25hbCBpbiBE
VCwgYnV0IGl0IGNoZWNrcwo+ID4gZm9yIHRoZSBwcmVzZW5jZSBvZiB0aGUgJ3N1cHBvcnRzLWNs
a3JlcScgcHJvcGVydHkuIEV2ZW4gdGhvdWdoIHRoZSBwcmVzZW5jZSBvZgo+ID4gdGhlIHByb3Bl
cnR5IGltcGxpZXMgdGhhdCB0aGUgQ0xLUkVRIyByb3V0aW5nIGlzIGF2YWlsYWJsZSwgSSdkIHBy
ZWZlciB0byBjaGVjawo+ID4gZm9yIHRoZSBwcm9wZXJ0eSBleHBsaWNpdGx5IGluc3RlYWQgb2Yg
aGlkaW5nIGl0IGluc2lkZSB0aGlzIEFQSS4KPiAKPiBJdCBtYWtlcyBzZW5zZS4KPiAKPiBXaWxs
IHRoZSBuYW1lIG9mX3BjaV9zdXBwb3J0c19jbGtyZXFfcHJlc2VudCgpIGxvb2sgZ29vZD8gT3Ig
d2UganVzdAo+IGRyb3AgaXQgYW5kIGxldCBob3N0IGRyaXZlcnMgdG8gZXhwbGljaXRseSBjaGVj
ayBzdXBwb3J0cy1jbGtyZXEgaW5zaWRlCj4gdGhlaXIgY29kZT8KPiAKCkknZCBwcmVmZXIgdG8g
ZHJvcCB0aGUgQVBJLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCu
muCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
