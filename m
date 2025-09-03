Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBF06CA1009
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Sep 2025 13:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfutmjiPuqvoKakwpjX0p3C+8O/8Xb9zBIla+sKyyAo=; b=zkMbwOaXyGzn1O
	MRjVHuiUBsDoPROY0+NInUu36jcoZP0k3PSl/cD7i5N9kc6rY0Jj2iT3V0yJHKPjx1lj0JhLZIVvD
	hWn4A0EkYykSuQjs94t8AvOQn4If04DdCyhuwUhc201cjJLMTpd2XSEdHeTwNEVrxkpx+lN7fDJdY
	q9JhD9DSQolYDjf3uJL8/IXSH+CV2ZgAEAgFb/S30vbIOX3mF8VbjAC/Lb6UrfRBQWptUECRTo0QM
	tjuic8nFd1ppEOVqlbyqQnn8aJh6nPOu57pvIImwKtNkPDU7Pxyry1pzs7+qaMtoSlSKAvuMqV0tK
	eBphGV6p8nubn6gkXnwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utnAM-00000006VlI-0rxM;
	Wed, 03 Sep 2025 13:04:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmHN-00000006L18-0ybU;
	Wed, 03 Sep 2025 12:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ZOenNhon7WaisY3VTWVx6XvzUrCIft1GDsFy/zuDvrw=; b=iUJ9ElgQf60LxlCjHOOQ1c/Fd7
	BYiUf3C0Qz/+VRgXBlKyU2e9nV844hAstYooKL2/Ld44LHRv7wUCqAbEFRxleYnsUwXWdpjZ0MoGe
	55qrbCHIjwf7FI/WBm98PFYOW7NFhpbdHbZvQnMu/cxIbKUMDsPtmanc1GPLl3O8A9JU0gjrCtjSi
	BM18wN5K4mjCJXjG/le0ylwp3EqWJiWTBcjIQw8/HReyuAyqlHPYUO3EnImQ1++WYpvJwlP0uo84y
	RmBjcI6PoJHz4qwEVUMK3cgvGg3h6mc4L29EB6bi7uvoa5a2wqU6Wpqj7cduk/8xpdNoglutCCThY
	6/M5rA8Q==;
Received: from [213.70.40.217] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1utmHI-0001wC-4F; Wed, 03 Sep 2025 14:07:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Subject: Re: [PATCH v1 1/7] drm/rockchip: dsi: Add support for RK3368
Date: Wed, 03 Sep 2025 14:07:50 +0200
Message-ID: <42028191.XM6RcZxFsP@phil>
In-Reply-To: <20250831104855.45883-2-cn.liweihao@gmail.com>
References: <20250831104855.45883-1-cn.liweihao@gmail.com>
 <20250831104855.45883-2-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_050757_269224_5F21F705 
X-CRM114-Status: GOOD (  18.55  )
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

SGksCgpBbSBTb25udGFnLCAzMS4gQXVndXN0IDIwMjUsIDEyOjQ4OjQ5IE1pdHRlbGV1cm9ww6Rp
c2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgV2VpSGFvIExpOgo+IFJLMzM2OCBoYXMgRGVzaWduV2Fy
ZSBNSVBJIERTSSBjb250cm9sbGVyIGFuZCBhbiBleHRlcm5hbCBpbm5vIEQtUEhZLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFdlaUhhbyBMaSA8Y24ubGl3ZWloYW9AZ21haWwuY29tPgoKYXMgYSBnZW5l
cmFsIHJlbWFyaywgdGhpcyBwYXRjaCB3aWxsIGxpa2VseSBuZWVkIHRvIHdhaXQgZm9yIDYuMTgt
cmMxLApiZWNhdXNlIGEgYmlnIHVwZGF0ZSBvZiB0aGUgSElXT1JEX01BU0sgbWFjcm9zIHdhcyBt
ZXJnZWQgWzBdLgoKU28gaW50cm9kdWNpbmcgYSBuZXcgdXNlciBub3cgd291bGQgY2F1c2UgaGF2
b2sgOi0pIC4KCkFsc28gd2hlbiBzZW5kaW5nIGEgdjIsIHBsZWFzZSBiYXNlIGl0IG9uIHRvcCBv
ZiB0aGF0IGNoYW5nZXNldCwgb3IKanVzdCB0YWtlIGxpbnV4LW5leHQgWzFdIGFzIGEgYmFzZS4K
CkFsc28gaW4gYSBzZXBhcmF0ZSBwYXRjaCwgcGxlYXNlIGFkZCB0aGUgbmVlZGVkIHJrMzM2OCBl
bnRyeSB0byB0aGUKZGV2aWNldHJlZSBiaW5kaW5nIFsyXSwgdGhpcyB3aWxsIHBhY2lmeSB0aGUg
Ym90IHRoYXQgY2hlY2tlZCB5b3VyCmRldmljZXRyZWUgY2hhbmdlcyA6LSkgLgoKUGxlYXNlIGFs
c28gbWFrZSBzdXJlIHRoYXQgcmVsZXZhbnQgYWRkaXRpb25zIHRvIHRoZSBsaXN0cyBiZWxvdwph
cmUgbWFkZSAodGhlIGJpbmRpbmcgY29udGFpbnMgc3BlY2lmaWMgc2V0dGluZ3MgZm9yIHNvbWUg
Y29udHJvbGxlcnMKZnVydGVyIGJlbG93KSAuCgoKSGVpa28KCgpbMF0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNTA4MjUtYnlld29yZC11cGRhdGUtdjMtMC05NDdi
ODQxY2RiMjlAY29sbGFib3JhLmNvbS8KWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQvClsyXSBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJl
ZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2Nr
Y2hpcCxkdy1taXBpLWRzaS55YW1sCgo+IC0tLQo+ICAuLi4vZ3B1L2RybS9yb2NrY2hpcC9kdy1t
aXBpLWRzaS1yb2NrY2hpcC5jICAgfCAyMCArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMKPiBpbmRleCAzMzk4MTYwYWQuLjVkNzZlM2UwNCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2No
aXAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hp
cC5jCj4gQEAgLTE2Miw2ICsxNjIsMTEgQEAKPiAgI2RlZmluZSBSSzMyODhfRFNJMF9MQ0RDX1NF
TAkJQklUKDYpCj4gICNkZWZpbmUgUkszMjg4X0RTSTFfTENEQ19TRUwJCUJJVCg5KQo+ICAKPiAr
I2RlZmluZSBSSzMzNjhfR1JGX1NPQ19DT043CQkweDQxYwo+ICsjZGVmaW5lIFJLMzM2OF9EU0lf
Rk9SQ0VUWFNUT1BNT0RFCSgweGYgPDwgNykKPiArI2RlZmluZSBSSzMzNjhfRFNJX0ZPUkNFUlhN
T0RFCQlCSVQoNikKPiArI2RlZmluZSBSSzMzNjhfRFNJX1RVUk5ESVNBQkxFCQlCSVQoNSkKPiAr
Cj4gICNkZWZpbmUgUkszMzk5X0dSRl9TT0NfQ09OMjAJCTB4NjI1MAo+ICAjZGVmaW5lIFJLMzM5
OV9EU0kwX0xDRENfU0VMCQlCSVQoMCkKPiAgI2RlZmluZSBSSzMzOTlfRFNJMV9MQ0RDX1NFTAkJ
QklUKDQpCj4gQEAgLTE1MzAsNiArMTUzNSwxOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tj
aGlwX2R3X2RzaV9jaGlwX2RhdGEgcmszMjg4X2NoaXBfZGF0YVtdID0gewo+ICAJeyAvKiBzZW50
aW5lbCAqLyB9Cj4gIH07Cj4gIAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX2R3X2Rz
aV9jaGlwX2RhdGEgcmszMzY4X2NoaXBfZGF0YVtdID0gewo+ICsJewo+ICsJCS5yZWcgPSAweGZm
OTYwMDAwLAo+ICsJCS5sYW5lY2ZnMV9ncmZfcmVnID0gUkszMzY4X0dSRl9TT0NfQ09ONywKPiAr
CQkubGFuZWNmZzEgPSBISVdPUkRfVVBEQVRFKDAsIFJLMzM2OF9EU0lfVFVSTkRJU0FCTEUgfAo+
ICsJCQkJCQlSSzMzNjhfRFNJX0ZPUkNFVFhTVE9QTU9ERSB8Cj4gKwkJCQkJCVJLMzM2OF9EU0lf
Rk9SQ0VSWE1PREUpLAo+ICsJCS5tYXhfZGF0YV9sYW5lcyA9IDQsCj4gKwl9LAo+ICsJeyAvKiBz
ZW50aW5lbCAqLyB9Cj4gK307Cj4gKwo+ICBzdGF0aWMgaW50IHJrMzM5OV9kcGh5X3R4MXJ4MV9p
bml0KHN0cnVjdCBwaHkgKnBoeSkKPiAgewo+ICAJc3RydWN0IGR3X21pcGlfZHNpX3JvY2tjaGlw
ICpkc2kgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiBAQCAtMTY5Myw2ICsxNzEwLDkgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgZHdfbWlwaV9kc2lfcm9ja2NoaXBfZHRfaWRz
W10gPSB7Cj4gIAl9LCB7Cj4gIAkgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMjg4LW1pcGkt
ZHNpIiwKPiAgCSAuZGF0YSA9ICZyazMyODhfY2hpcF9kYXRhLAo+ICsJfSwgewo+ICsJIC5jb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzM2OC1taXBpLWRzaSIsCj4gKwkgLmRhdGEgPSAmcmszMzY4
X2NoaXBfZGF0YSwKPiAgCX0sIHsKPiAgCSAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTkt
bWlwaS1kc2kiLAo+ICAJIC5kYXRhID0gJnJrMzM5OV9jaGlwX2RhdGEsCj4gCgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
