Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D829FD2D111
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 14:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leMsLW8O3NSHNIG3xM+0UorxL+do7zGIT40llaDmpq0=; b=KPyQIL96j8kdn6
	f4yB3uiCChBYkoW+sBU7g1U5bmrFtOTiuJTsPenlPlxTE803j8gFjSwdq/M+8n3k5wuDBZshOIeNW
	LFtxNBIG1YQiBKgb6PdJeAiZlHdQH3k9CUI3uxDE4iq3xPpaoHCYj1ZOlapLwf1Nsn1MRexGLBolG
	rL+8+4wCkdZYu6StviTvp0zJwrj/1XEl7a+ARNikrqzIUk4IVjOs8JWVqtfBlDWVIquby8fR+t3Js
	JvliznwthihaJ+5afXqoZhZfAYWGlfx/fCoOk36WGpVA5s574TX8rA9fc5G+nORJnEK7UPxAo6zyy
	Uu9WLlZKzxDZBCVAh5pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffOk-00000007G7P-00GH;
	Tue, 13 Jan 2026 14:29:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffOi-00000007G6s-1Ufl
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 14:29:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B2B9A6001D;
	Tue, 13 Jan 2026 14:29:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52224C116C6;
	Tue, 13 Jan 2026 14:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768314565;
	bh=AKUBnYj7k5U4bb8Qc2o9gbSoqfhuWPnOOdxbvK7z8p8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ryc6Q32kf0YbROemj8sB/ob+NRZpT7pZgLOeSjTAaKZ1lWGVgBirBTT5zSZkgCG09
	 VXmCIXaMFUDpOw8MCJNUO6hi8lJqiCBjNlaKOTHbrD2jExb+9qEpXl4WoCeDxscuGK
	 lGacP0wMT/8oUxgB7W4diDjlTz3lMcbuoCevr8SwX7RjqJd6kXNAqCyAhcABxu+ilz
	 KptE4606D1wFaxKwHu3ZP0yqYYYd8xRYGaTXQ9WoQ2IyWdL9a2O1/8EUbmAUgt6JXH
	 Tz/ZMJ1JCnTWTQLU8NJcSOI222BC4SXys8/cgSNLvlUgVIIjwtgFGLIcvwNkTFOu4P
	 cKjFjiJV2QlSw==
Date: Tue, 13 Jan 2026 19:59:19 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Disable BAR 0 and BAR 1 for RC mode
Message-ID: <jrah3krizuwyfwhmvq67wjsye2eeompjflpuo4dz2mgugi5txt@np6gknrtbkqo>
References: <1766570461-138256-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1766570461-138256-1-git-send-email-shawn.lin@rock-chips.com>
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

T24gV2VkLCBEZWMgMjQsIDIwMjUgYXQgMDY6MDE6MDFQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IFRvIHNsaXRlbmNlIHRoZSB1c2VsZXNzIGJhciBhbGxvY2F0aW9uIGVycm9yIGxvZyBvZiBS
QyB3aGVuCj4gc2Nhbm5pbmcgYnVzLCBhcyBSQyBkb2Vzbid0IG5lZWQgQkFScyBhdCBhbGwuCgpJ
dCBpcyBub3QgUkMsIGJ1dCBSb290IFBvcnQuIEl0IGlzIE9LIHRvIGRpc2FibGUgdGhlIFJvb3Qg
UG9ydCBCQVJzIGlmIHRoZXkKZG9uJ3Qgc2VydmUgYW55IHB1cnBvc2UsIGJ1dCBJIHRoaW5rIHRo
ZSBpc3N1ZSBpcyB0aGF0IHRoZSBCQVIgc2l6ZSBpcyBib2d1cy4KQm90aCBCQVJzIHJlcG9ydCAx
R2lCIG9mIHNpemUsIHdoaWNoIEkgZG9uJ3QgdGhpbmsgaXQgbWFrZXMgc2Vuc2UgZm9yIGEgUm9v
dApQb3J0LgoKQ2FuIEkgcmV3b3JkIHRoZSBjb21taXQgbWVzc2FnZSBhczoKClNvbWUgUm9ja2No
aXAgUENJZSBSb290IFBvcnQgcmVwb3J0IGJvZ3VzIHNpemUgb2YgMUdpQiBmb3IgdGhlIEJBUiBt
ZW1vcmllcyBhbmQKdGhleSBjYXVzZSBiZWxvdyByZXNvdXJjZSBhbGxvY2F0aW9uIGlzc3VlIGR1
cmluZyBwcm9iZS4gU2luY2UgdGhlcmUgaXMgbm8gdXNlCm9mIHRoZSBSb290IFBvcnQgQkFSIG1l
bW9yaWVzLCBkaXNhYmxlIGJvdGggb2YgdGhlbS4KCi0gTWFuaQoKPiAKPiAgIHBjaSAwMDAwOjAw
OjAwLjA6IFsxZDg3OjM1ODhdIHR5cGUgMDEgY2xhc3MgMHgwNjA0MDAgUENJZSBSb290IFBvcnQK
PiAgIHBjaSAwMDAwOjAwOjAwLjA6IEJBUiAwIFttZW0gMHgwMDAwMDAwMC0weDNmZmZmZmZmXQo+
ICAgcGNpIDAwMDA6MDA6MDAuMDogQkFSIDEgW21lbSAweDAwMDAwMDAwLTB4M2ZmZmZmZmZdCj4g
ICBwY2kgMDAwMDowMDowMC4wOiBST00gW21lbSAweDAwMDAwMDAwLTB4MDAwMGZmZmYgcHJlZl0K
PiAJLi4uCj4gICBwY2kgMDAwMDowMDowMC4wOiBCQVIgMCBbbWVtIDB4OTAwMDAwMDAwLTB4OTNm
ZmZmZmZmXTogYXNzaWduZWQKPiAgIHBjaSAwMDAwOjAwOjAwLjA6IEJBUiAxIFttZW0gc2l6ZSAw
eDQwMDAwMDAwXTogY2FuJ3QgYXNzaWduOyBubyBzcGFjZQo+ICAgcGNpIDAwMDA6MDA6MDAuMDog
QkFSIDEgW21lbSBzaXplIDB4NDAwMDAwMDBdOiBmYWlsZWQgdG8gYXNzaWduCj4gICBwY2kgMDAw
MDowMDowMC4wOiBST00gW21lbSAweGYwMjAwMDAwLTB4ZjAyMGZmZmYgcHJlZl06IGFzc2lnbmVk
Cj4gICBwY2kgMDAwMDowMDowMC4wOiBCQVIgMCBbbWVtIDB4OTAwMDAwMDAwLTB4OTNmZmZmZmZm
XTogcmVsZWFzaW5nCj4gICBwY2kgMDAwMDowMDowMC4wOiBST00gW21lbSAweGYwMjAwMDAwLTB4
ZjAyMGZmZmYgcHJlZl06IHJlbGVhc2luZwo+ICAgcGNpIDAwMDA6MDA6MDAuMDogQkFSIDAgW21l
bSAweDkwMDAwMDAwMC0weDkzZmZmZmZmZl06IGFzc2lnbmVkCj4gICBwY2kgMDAwMDowMDowMC4w
OiBCQVIgMSBbbWVtIHNpemUgMHg0MDAwMDAwMF06IGNhbid0IGFzc2lnbjsgbm8gc3BhY2UKPiAg
IHBjaSAwMDAwOjAwOjAwLjA6IEJBUiAxIFttZW0gc2l6ZSAweDQwMDAwMDAwXTogZmFpbGVkIHRv
IGFzc2lnbgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hp
cHMuY29tPgo+IC0tLQo+IAo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJv
Y2tjaGlwLmMgfCA4ICsrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2Nr
Y2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4g
aW5kZXggZjg2MDVmZS4uZTQyMWZhMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAtODAsNiArODAsOCBAQAo+ICAjZGVmaW5lICBQ
Q0lFX0xJTktVUF9NQVNLCQlHRU5NQVNLKDE3LCAxNikKPiAgI2RlZmluZSAgUENJRV9MVFNTTV9T
VEFUVVNfTUFTSwkJR0VOTUFTSyg1LCAwKQo+ICAKPiArI2RlZmluZSBQQ0lFX1RZUEUwX0hEUl9E
QkkyX09GRlNFVCAgICAgIDB4MTAwMDAwCj4gKwo+ICBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSB7Cj4g
IAlzdHJ1Y3QgZHdfcGNpZSBwY2k7Cj4gIAl2b2lkIF9faW9tZW0gKmFwYl9iYXNlOwo+IEBAIC0y
OTIsNiArMjk0LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2hvc3RfaW5pdChzdHJ1Y3Qg
ZHdfcGNpZV9ycCAqcHApCj4gIAlpZiAoaXJxIDwgMCkKPiAgCQlyZXR1cm4gaXJxOwo+ICAKPiAr
CXBjaS0+ZGJpX2Jhc2UyID0gcGNpLT5kYmlfYmFzZSArIFBDSUVfVFlQRTBfSERSX0RCSTJfT0ZG
U0VUOwo+ICsKPiAgCXJldCA9IHJvY2tjaGlwX3BjaWVfaW5pdF9pcnFfZG9tYWluKHJvY2tjaGlw
KTsKPiAgCWlmIChyZXQgPCAwKQo+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGluaXQgaXJx
IGRvbWFpblxuIik7Cj4gQEAgLTMwMiw2ICszMDYsMTAgQEAgc3RhdGljIGludCByb2NrY2hpcF9w
Y2llX2hvc3RfaW5pdChzdHJ1Y3QgZHdfcGNpZV9ycCAqcHApCj4gIAlyb2NrY2hpcF9wY2llX2Nv
bmZpZ3VyZV9sMXNzKHBjaSk7Cj4gIAlyb2NrY2hpcF9wY2llX2VuYWJsZV9sMHMocGNpKTsKPiAg
Cj4gKwkvKiBEaXNhYmxlIFJDJ3MgQkFSMCBhbmQgQkFSMSAqLwo+ICsJZHdfcGNpZV93cml0ZWxf
ZGJpMihwY2ksIFBDSV9CQVNFX0FERFJFU1NfMCwgMHgwKTsKPiArCWR3X3BjaWVfd3JpdGVsX2Ri
aTIocGNpLCBQQ0lfQkFTRV9BRERSRVNTXzEsIDB4MCk7Cj4gKwo+ICAJcmV0dXJuIDA7Cj4gIH0K
PiAgCj4gLS0gCj4gMi43LjQKPiAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g
4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
