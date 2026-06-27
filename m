Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B68E8C43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 10:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waBJ/SGIgcB9PGdEuQz1HKPk3n0V9fvfcFxYPlC4UV4=; b=KDxmkOR5B3DAwA
	wAA+4rU0U834xaP5Ma1Xio9E52PihMKehyIjcCuI7jqLZJA/wuMciosJp869+WXR/KErxuUDvoQQa
	cOCaEfEXjhyk0U2nUtDkF370i8zjpZ4CkRK+ZpCbsHBz4150HRwzbIaOPYCQ65/AHIBxrcOTP1pZe
	5i8tY3Vfj/QmWBqBVCB/VHGYjJNXi+uSJHLfCm5bOFvhEHNcMf+OfZ3fxQI+hZcOtaseKndbc8IeA
	K5jpSq1sJ84FnbnIIYQqshIQJBsbTl1okvpOE+y+W45tNf1kEUXNbQD4yQzoVBE9wTGruf14L5oRj
	IXvhg1zMF4+EoopKM13w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPv7-0000000CMOz-0Kl6;
	Sat, 27 Jun 2026 10:05:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPv3-0000000CMOL-1W9N;
	Sat, 27 Jun 2026 10:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OSZiqCMi+0GOi5/NyLhgrD2BbljRo1J+9NIzBrNt8S4=; b=ozaG4J1l9KKqY3skznNd64asbi
	e7FQ6bgTfkBS0KujkIDeFNPsue0H4a2o7wC80hRh1jNAMbtDnzs74cM6JGY1r1GYS6Qee8S1jI4C+
	AjhHVddQXda1nuZgT7N4E8Iz58YsVWuaH5mYWh1iGZLUvpGIfRi45M6rHPgqQ7E0nIUV+G768cbYz
	E1lkr9FBKYRYeIwcFnN8TvWQrxyEZ8qKeJOaRSBnriZt1tx7bHmAeS4zVbxSlE8HoambdXUncQlP8
	iEbaeTQ0knPWf6BqwPpkbBboy9GFBegBvO5d7ssHepis5ugdqy/jsGe1zHx6ZfffLtH+Gv6UpAVJE
	esbW+ALQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board support
Date: Sat, 27 Jun 2026 12:05:35 +0200
Message-ID: <1999863.IobQ9Gjlxr@diego>
In-Reply-To: <20260627094854.81564-1-hrushirajg23@gmail.com>
References: <20260627094854.81564-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_030550_369753_45E807AA 
X-CRM114-Status: GOOD (  15.75  )
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

SGksCgpBbSBTYW1zdGFnLCAyNy4gSnVuaSAyMDI2LCAxMTo0ODo1MiBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIEhydXNoaXJhaiBHYW5kaGk6Cj4gVGhpcyBwYXRjaCBzZXJp
ZXMgYWRkcyBkZXZpY2UgdHJlZSBzdXBwb3J0IGZvciB0aGUgVmljaGFyYWsgVmFhbWFuMiwKPiBh
IHNpbmdsZS1ib2FyZCBjb21wdXRlciBiYXNlZCBvbiB0aGUgUm9ja2NoaXAgUkszNTg4IFNvQy4K
CnBsZWFzZSB1c2UgcHJvcGVyIHZlcnNpb25pbmcgd2hlbiBzZW5kaW5nIG5ldyBwYXRjaGVzCgpJ
ZiBJJ20gcmVhZGluZyB0aGlzIGNvcnJlY3RseSwgdGhpcyBzaG91bGQgYmUKCltQQVRDSCB2MyAw
LzJdIC4uLi4KClBsZWFzZSBhbHNvIHByb3ZpZGUgYSBjaGFuZ2Vsb2cgb24gd2hhdCBjaGFuZ2Vk
IGJldHdlZW4gdmVyc2lvbnMuClNlZSBhbGwgdGhlIG90aGVyIHBhdGNoc2V0cyBvbiB0aGUgbWFp
bGluZ2xpc3QgZm9yIHJlZmVyZW5jZS4KCkhlaWtvCgo+IFRoZSBWYWFtYW4yIGJvYXJkIGZlYXR1
cmVzIGluY2x1ZGU6Cj4gLSBSSzM1ODggU29DCj4gLSBlTU1DIHN0b3JhZ2UgYW5kIG1pY3JvU0Qg
c3VwcG9ydAo+IC0gUks4MDYgUE1JQyBhbmQgbXVsdGlwbGUgUks4NjAyL1JLODYwMyByZWd1bGF0
b3JzCj4gLSBSZWFsLXRpbWUgY2xvY2sgYW5kIHN0YXR1cyBMRUQKPiAtIFVBUlQgc2VyaWFsIGNv
bnNvbGUgYW5kIFNBUkFEQwo+IAo+IE5vdGU6IFRoaXMgc2VyaWVzIHdhcyBnZW5lcmF0ZWQgb24g
dG9wIG9mIHRoZSBwZW5kaW5nIFZpY2hhcmFrIEF4b24KPiBib2FyZCBzdXBwb3J0IHBhdGNoZXMg
KHY3KSBhbmQgaW5jbHVkZXMgdGhlIEF4b24gZW50cnkgaW4gdGhlIGNvbnRleHQKPiBvZiB0aGUg
WUFNTCBiaW5kaW5nIHBhdGNoLgo+IAo+IFBhdGNoIDEgYWRkcyB0aGUgYmluZGluZyBkb2N1bWVu
dGF0aW9uIGZvciB0aGUgVmFhbWFuMiBib2FyZC4KPiBQYXRjaCAyIGFkZHMgdGhlIGFjdHVhbCBk
ZXZpY2UgdHJlZSBmaWxlIGFuZCBNYWtlZmlsZSBlbnRyeS4KPiAKPiBIcnVzaGlyYWogR2FuZGhp
ICgyKToKPiAgIGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgVmljaGFyYWsgVmFhbWFu
Mgo+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBWaWNoYXJhayBWYWFtYW4yIGJvYXJkCj4g
Cj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sICAgICB8ICAgNSAr
Cj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICB8ICAgMSAr
Cj4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTg4LXZpY2hhcmFrLXZhYW1hbjIuZHRzICB8IDU0NyAr
KysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCA1NTMgaW5zZXJ0aW9ucygrKQo+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
dmljaGFyYWstdmFhbWFuMi5kdHMKPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
