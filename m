Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16405CF0423
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 21:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OqxComU19HaIiCtqevmcuLoX00ZtU8DlIwS6EdKomzU=; b=NPCbEptKbXLWKrBIXYQRC0cMjB
	KqjYzgV+XPPA0PyovJOqsEg1gHpVRSnAH20rIC0lgg1HD6DPUcskhXPykDzBS8RLP0bKSXPQMGBXK
	n4HxWHsNC6o43c+aJpm5iwWc/iYW7YrVNUVgzd8/TxR0ylo01o23CjnbOS5iQN+7XuWQ1esnSU6pY
	/Adx3b7jjabvuljdo0vZJkK4qL8P7mNOElMKB+sOqtHmRLpE5ioxEaDBojbk95rgFTb6Mgzrra4/e
	vw8hWtW/FVXn9KEXFzWZPNNTFoKD8KOWrtQf1/K1NPc6ekqCp2arqpg5HGAp4nr/SQYgH6SROAkPE
	Z82q2sEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHbd-000000079ps-2Ubu;
	Tue, 08 Oct 2024 21:18:57 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syHaG-000000079bK-3GcZ;
	Tue, 08 Oct 2024 21:17:34 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728422251;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f7dwY4+lxv3nko1gtAtwMlk/2dBvalA2V0rED6qSW70=;
	b=KxvxiEzmXLZjGIUkUGiK1LjORmO6ptbKXNthdIEeC2S7cCczIfvdQJQs/4mtfKR51DOsPP
	RHXxfQEzufeML6dQ1tJT5Bx2GMZWTSOLXDccYe4u4/g8Dg8Bzl8p+VPlCJt+9LHo3Tpjpg
	fYxnM7CCXZYi4UyFMuIVVjXtXGGZOpssPJNwPKQ6L1j0IBPtZq7nM/yt3+mNZKGL2pT52v
	/vgUfltM0f/S/vZGbHCjJxd6oEXQ2w/TzxIyv9kGLAYks0DSNjNz/G76ObX60dCCqY5WqP
	ww6RmJ8rO91khCbLk1zw/FgiMhpHLAQ8y0FqkT8x41UkAG7o3WMVDT8Zix7Vdw==
Date: Tue, 08 Oct 2024 23:17:31 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Quentin
 Schulz <quentin.schulz@theobroma-systems.com>, Sergey Bostandzhyan
 <jin@mediatomb.cc>, Wenhao Cui <lasstp5011@gmail.com>, Andy Yan
 <andyshrk@163.com>
Subject: Re: [PATCH v2 05/14] arm64: dts: rockchip: Remove undocumented
 supports-emmc property
In-Reply-To: <20241008203940.2573684-6-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-6-heiko@sntech.de>
Message-ID: <6b776b6901fafb686a5c6d814ec185ef@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_141733_126693_27C8F3FA 
X-CRM114-Status: GOOD (  11.90  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTEwLTA4IDIyOjM5LCBIZWlrbyBTdHVlYm5lciB3cm90ZToK
PiBzdXBwb3J0cy1lbW1jIGlzIGFuIHVuZG9jdW1lbnRlZCBwcm9wZXJ0eSB0aGF0IHNsaXBwZWQg
aW50byB0aGUgCj4gbWFpbmxpbmUKPiBrZXJuZWwgZGV2aWNldHJlZSBmb3Igc29tZSBib2FyZHMu
IERyb3AgaXQuCj4gCj4gRml4ZXM6IGM0ODRjZjkzZjYxYiAoImFybTY0OiBkdHM6IHJvY2tjaGlw
OiBhZGQgUFgzMC3CtVE3IChSaW5nbmVjaykKPiBTb00gd2l0aCBIYWlrb3UgYmFzZWJvYXJkIikK
PiBDYzogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNv
bT4KPiBGaXhlczogYjhjMDI4NzgyOTIyICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBEVFMg
Zm9yIEZyaWVuZGx5QVJNCj4gTmFub1BpIFIyUyBQbHVzIikKPiBDYzogU2VyZ2V5IEJvc3RhbmR6
aHlhbiA8amluQG1lZGlhdG9tYi5jYz4KPiBGaXhlczogOGQ5NGRhNThkZTUzICgiYXJtNjQ6IGR0
czogcm9ja2NoaXA6IEFkZCBFbWJlZEZpcmUgTHViYW5DYXQgMSIpCj4gQ2M6IFdlbmhhbyBDdWkg
PGxhc3N0cDUwMTFAZ21haWwuY29tPgo+IEZpeGVzOiBjZGY0NmNkYmFiZmMgKCJhcm02NDogZHRz
OiByb2NrY2hpcDogQWRkIGR0cyBmb3IgRW1iZWRGaXJlCj4gcmszNTY4IEx1YmFuQ2F0IDIiKQo+
IENjOiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKTG9va2luZyBnb29kIHRvIG1lLCB0aGFua3MgZm9y
IHRoZSBwYXRjaC4gIFRoZSBpbnRyb2R1Y2VkIGNoYW5nZXMKYXJlIG9idmlvdXNseSBjb3JyZWN0
LgoKUmV2aWV3ZWQtYnk6IERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgoKPiAtLS0K
PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kgICAgICAg
ICB8IDEgLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1uYW5vcGktcjJz
LXBsdXMuZHRzIHwgMSAtCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LWx1
YmFuY2F0LTEuZHRzICAgICAgfCAxIC0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjgtbHViYW5jYXQtMi5kdHMgICAgICB8IDEgLQo+ICA0IGZpbGVzIGNoYW5nZWQsIDQgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cHgzMC1yaW5nbmVjay5kdHNpCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAt
cmluZ25lY2suZHRzaQo+IGluZGV4IGJiMWFlYTgyZTY2Ni4uYjcxNjNlZDc0MjMyIDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kKPiBA
QCAtNjYsNyArNjYsNiBAQCAmZW1tYyB7Cj4gIAlidXMtd2lkdGggPSA8OD47Cj4gIAljYXAtbW1j
LWhpZ2hzcGVlZDsKPiAgCW1tYy1oczIwMC0xXzh2Owo+IC0Jc3VwcG9ydHMtZW1tYzsKPiAgCW1t
Yy1wd3JzZXEgPSA8JmVtbWNfcHdyc2VxPjsKPiAgCW5vbi1yZW1vdmFibGU7Cj4gIAl2bW1jLXN1
cHBseSA9IDwmdmNjXzN2Mz47Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzI4LW5hbm9waS1yMnMtcGx1cy5kdHMKPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzI4LW5hbm9waS1yMnMtcGx1cy5kdHMKPiBpbmRleCBjYjgxYmEzZjIzZmYu
LjMwOTNmNjA3ZjI4MiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzMyOC1uYW5vcGktcjJzLXBsdXMuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzMjgtbmFub3BpLXIycy1wbHVzLmR0cwo+IEBAIC0yNyw2ICsyNyw1IEBAICZl
bW1jIHsKPiAgCW51bS1zbG90cyA9IDwxPjsKPiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7
Cj4gIAlwaW5jdHJsLTAgPSA8JmVtbWNfY2xrICZlbW1jX2NtZCAmZW1tY19idXM4PjsKPiAtCXN1
cHBvcnRzLWVtbWM7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LWx1YmFuY2F0LTEuZHRzCj4gYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1sdWJhbmNhdC0xLmR0cwo+IGluZGV4IGMx
MTk0ZDFlNDM4ZC4uOWEyZjU5YTM1MWRlIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY2LWx1YmFuY2F0LTEuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NjYtbHViYW5jYXQtMS5kdHMKPiBAQCAtNTA3LDcgKzUwNyw2IEBA
ICZzZGhjaSB7Cj4gIAlub24tcmVtb3ZhYmxlOwo+ICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPiAgCXBpbmN0cmwtMCA9IDwmZW1tY19idXM4ICZlbW1jX2NsayAmZW1tY19jbWQ+Owo+IC0J
c3VwcG9ydHMtZW1tYzsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAKPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtbHViYW5jYXQtMi5kdHMKPiBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWx1YmFuY2F0LTIuZHRzCj4gaW5k
ZXggYTMxMTJkNWRmMjAwLi5iNTA1YTQ1MzdlZTggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NjgtbHViYW5jYXQtMi5kdHMKPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1sdWJhbmNhdC0yLmR0cwo+IEBAIC01ODksNyArNTg5
LDYgQEAgJnNkaGNpIHsKPiAgCW5vbi1yZW1vdmFibGU7Cj4gIAlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+ICAJcGluY3RybC0wID0gPCZlbW1jX2J1czggJmVtbWNfY2xrICZlbW1jX2NtZD47
Cj4gLQlzdXBwb3J0cy1lbW1jOwo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9OwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
