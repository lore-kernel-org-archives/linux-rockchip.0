Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65A55C5AD4E
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Aug 2026 09:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDP2GItH7Ypkb6vEUh+DptHMKMwgGaR+5PRKc+yDNII=; b=syiTTNE1nVQGoq
	GvsMGGLOjjLzMmN7gVAuKrQyqk+YY5VX4ogTKSrfO0Lits6VQtwybCtYPAZiRE1EXZ619STr1XBur
	RLZIJlI7GjXJd+ROrlthz142aKRV2/bUkqy7FNxlWF81Zji3SD/veU+q4edC5KP2MXOJ70tRykugZ
	2bh9lqJ2QCHSAyWN4qtzRAXhjGMayONhOYu90AoRta0u0kmgQJjSXhIMh9PfdtYTuWOxtxN4Yu7Fk
	y/2yPSZ2oayx7dMBvMgonKczy3C/BfIONwLzR51LPKqc110/Ap7phT4dLpqYGnfPvCozWZq/J9eAI
	Dyu/hI7u6K7LmHv8OftQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt03a-0000000A9OB-3e3H;
	Sun, 09 Aug 2026 09:43:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt03Y-0000000A9NN-20dE;
	Sun, 09 Aug 2026 09:43:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8w5NT48wx/0aBVuRvm9KEpkK3uGPxkWdWOwg4cuAyEs=; b=aOdAsLCti6rJxfN1ry8ER+vdoN
	aQFot3rF1t5ihXUUMb/Q3nZPaQcoQLkOhczZEErcJ0GERffpHj0Clq2mJBJYMm09ysPnFQTbi2ZY+
	aqxkE0j5I9sTTERSNdi1uZK+lAROrXhyv90dZzg2ATt7nzojptcSGLduxCsxJXJASev8U5KVqNdmC
	x7Ol0YgYXRGhcoWfHB8FR49d0Q9xMeDbfcjP7Mc4M+ssSKV+5ud7jCUNp9aoyKcqi54ERktlEi4Er
	GTyBZEk4MRgJDaa9z3p7B9Fb61yuAOjyakjFVNz0dSZWXc+cq3ci4oO7NkXEFxwk/u+Qwk6TryJhM
	TLb4tViQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linusw@kernel.org>, Simon Glass <sjg@chromium.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Simon Glass <sjg@chromium.org>, Bartosz Golaszewski <brgl@kernel.org>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: gpio: rockchip,gpio-bank: Add rockchip,grf
 property
Date: Sun, 09 Aug 2026 11:42:47 +0200
Message-ID: <5555671.NgBsaNRSFp@diego>
In-Reply-To: <20260729072727.v3.2.d04a89a3849323a0dcee2c701cba43adbb0523b2@changeid>
References: <20260729132736.3807082-1-sjg@chromium.org>
 <20260729072727.v3.2.d04a89a3849323a0dcee2c701cba43adbb0523b2@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260809_024300_547157_54CAE408 
X-CRM114-Status: GOOD (  15.03  )
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

QW0gTWl0dHdvY2gsIDI5LiBKdWxpIDIwMjYsIDE1OjI3OjI2IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgU2ltb24gR2xhc3M6Cj4gU29tZSBSb2NrY2hpcCBTb0NzLCBzdWNo
IGFzIHRoZSBSVjExMDYsIGdpdmUgZWFjaCBHUElPIGJhbmsgaXRzIG93bgo+IElPIGNvbnRyb2wg
KElPQykgcmVnaXN0ZXIgYmxvY2sgcmF0aGVyIHRoYW4gZ3JvdXBpbmcgdGhlIHJlZ2lzdGVycyBv
Zgo+IGFsbCBiYW5rcyBpbnRvIGEgc2hhcmVkIEdSRiByZWdpb24uIEFkZCBhbiBvcHRpb25hbCBy
b2NrY2hpcCxncmYKPiBwcm9wZXJ0eSB0byB0aGUgZ3Bpby1iYW5rIGJpbmRpbmcgc28gdGhhdCBl
YWNoIGJhbmsgbm9kZSBjYW4gcmVmZXJlbmNlCj4gdGhlIHN5c2NvbiBmb3IgaXRzIG93biBJT0Mg
YmxvY2suCj4gCj4gU2lnbmVkLW9mZi1ieTogU2ltb24gR2xhc3MgPHNqZ0BjaHJvbWl1bS5vcmc+
CgpQYXJ0IG9mIG1lIGZlYXJzIHdoYXQgbmV4dCBhYm9taW5hdGlvbiBody1lbmdpbmVlcnMgd2ls
bCBjb21lIHVwIHdpdGgsCmJ1dCBJIGZpbmQgdGhpcyBzb2x1dGlvbiBwcmV0dHkgZWxlZ2FudCB0
byBoYW5kbGUgdGhhdCBwZXIgYmFuayBwaW5jb25mLUdSRi4KClJldmlld2VkLWJ5OiBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCj4gLS0tCj4gCj4gKG5vIGNoYW5nZXMgc2luY2Ug
djIpCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIEFkZCBuZXcgcGF0Y2ggZm9yIHRoZSBwZXItYmFu
ayBJT0MgcmVmZXJlbmNlCj4gCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2No
aXAsZ3Bpby1iYW5rLnlhbWwgICAgICAgfCA3ICsrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZ3Bpby9yb2NrY2hpcCxncGlvLWJhbmsueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9ncGlvL3JvY2tjaGlwLGdwaW8tYmFuay55YW1sCj4gaW5kZXggYmRk
ODNmNDI2MTVjLi43NzRlOWM3ZGU2MDYgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2NoaXAsZ3Bpby1iYW5rLnlhbWwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9yb2NrY2hpcCxncGlvLWJhbmsueWFt
bAo+IEBAIC00NCw2ICs0NCwxMyBAQCBwcm9wZXJ0aWVzOgo+ICAgIHBvd2VyLWRvbWFpbnM6Cj4g
ICAgICBtYXhJdGVtczogMQo+ICAKPiArICByb2NrY2hpcCxncmY6Cj4gKyAgICAkcmVmOiAvc2No
ZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4gKyAgICBkZXNjcmlwdGlvbjoK
PiArICAgICAgVGhlIHBoYW5kbGUgb2YgdGhlIHN5c2NvbiBub2RlIG1hbmFnaW5nIHRoZSBJTyBj
b250cm9sIHJlZ2lzdGVycwo+ICsgICAgICBvZiB0aGlzIGJhbmssIG9uIFNvQ3Mgc3VjaCBhcyB0
aGUgUlYxMTA2IHdoZXJlIGVhY2ggR1BJTyBiYW5rIGhhcwo+ICsgICAgICBpdHMgb3duIElPQyBi
bG9jay4KPiArCj4gIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+ICAgICJeListaG9nKC1bMC05XSspPyQi
Ogo+ICAgICAgdHlwZTogb2JqZWN0Cj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
