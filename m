Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A859F99C6B
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 23:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eiadyyuca8WIKb0sL0LqNiNsnLkpYQzfmZFNYoyHILQ=; b=Q5dyH0Ccmou0+Z
	Fnr0UwiR5Al86Ux3bI/ONN2TrjMRGxnNuot7ozJlgAmHG3dUynIP/gexGU1dLhZ067YX5R3b4ULaN
	qp629x9nSogUjjsLhwLXBq6c/rU1fAImemlvduoYU49utI0Hte9GFiqS/mBuqsPqWm3bvB2z8tIg+
	t3gd3+V311wwqk208HsUm2Fuo/eg9CfgO7Rycy05Ncjt+61WsrbtckwKT/4XX4owwr1t06WTi0BO9
	AE9ck7EXx9OfVdQGBUU7a6OmfkuffhN38/cQAAo7WCaSVpggHxT7mqZ5vwT8XiA5Twbtgppre0Mc8
	qrZk/wwlYxLy7u0ngZzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDsSL-00000004YYL-1qCj;
	Fri, 17 Apr 2026 23:18:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDsSJ-00000004YXr-0R7e;
	Fri, 17 Apr 2026 23:18:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=LXShsoJFEcOkkjkNCh05aoYzhZtRefc51zZSNE5SZj4=; b=DeC9ygfOFFj4CMaWmxYUuQpZ55
	1pOMIP3QKI+esMBW6G3McrxUE6+pQOr1Lb0k+B8pgJTu/1cUGVSyVfdc0892/qd5uOvYb9PUAy6zx
	xomV2ahHqFS6eld/SXnCQtSH/2gdmc+Vi0cWu883diDKLI5cC1AZBFPE16jS4VkRuwd6n7tHndWe+
	O6JZIrDSu3WVVi/b60qC1Cmz3b3kZHNMrwNKaX+cdrC2dUb3FRVzGrg3AoRwN5kLwTYg/G6gYnhZ9
	rstNNw4rq5UZV7j5c+TzUuSdsLGmS38dRfAPkx7S5n0d8ADVJV7MBLTTfNlT9MIRZzqS+k94PQUhp
	VUpEkztA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/40] arm64: dts: rockchip: Wire up frl-enable-gpios for
 RK3576/RK3588 boards
Date: Sat, 18 Apr 2026 01:18:29 +0200
Message-ID: <2435759.n0HT0TaD9V@phil>
In-Reply-To: <70e9a8a0-414d-428f-8da8-9b65cc764849@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
 <2297365.1BCLMh4Saa@phil>
 <70e9a8a0-414d-428f-8da8-9b65cc764849@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_161835_167998_95C35539 
X-CRM114-Status: GOOD (  15.57  )
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

SGkgQ3Jpc3RhbiwKCkFtIEZyZWl0YWcsIDE3LiBBcHJpbCAyMDI2LCAxOTo1NToxNyBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPiBPbiA0
LzE3LzI2IDI6MzQgUE0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gQW0gRnJlaXRhZywgMTcu
IEFwcmlsIDIwMjYsIDExOjI0OjM0IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJp
ZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+ID4gCj4gPiBbLi4uXQo+ID4gCj4gPj4gQ3Jpc3RpYW4g
Q2lvY2FsdGVhICg0MCk6Cj4gPj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBmcmwt
ZW5hYmxlLWdwaW9zIHRvIHJrMzU3Ni0xMDBhc2stZHNoYW5waS1hMQo+ID4+ICAgICAgIGFybTY0
OiBkdHM6IHJvY2tjaGlwOiBBZGQgZnJsLWVuYWJsZS1ncGlvcyB0byByazM1NzYtYXJtc29tLXNp
Z2U1Cj4gPj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBmcmwtZW5hYmxlLWdwaW9z
IHRvIHJrMzU3Ni1ldmIxLXYxMAo+ID4+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQg
ZnJsLWVuYWJsZS1ncGlvcyB0byByazM1NzYtZXZiMi12MTAKPiA+PiAgICAgICBhcm02NDogZHRz
OiByb2NrY2hpcDogQWRkIGZybC1lbmFibGUtZ3Bpb3MgdG8gcmszNTc2LWx1Y2tmb3gtY29yZTM1
NzYKPiA+PiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGZybC1lbmFibGUtZ3Bpb3Mg
dG8gcmszNTc2LW5hbm9waS1tNQo+ID4+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQg
ZnJsLWVuYWJsZS1ncGlvcyB0byByazM1NzYtbmFub3BpLXI3NnMKPiA+PiAgICAgICBhcm02NDog
ZHRzOiByb2NrY2hpcDogQWRkIGZybC1lbmFibGUtZ3Bpb3MgdG8gcmszNTc2LXJvYy1wYwo+ID4+
ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZnJsLWVuYWJsZS1ncGlvcyB0byByazM1
NzYtcm9jay00ZAo+ID4gCj4gPiBJIGRvIHRoaW5rIG9uZSBwYXRjaCBwZXIgU29DIChyazM1NzYs
IHJrMzU4OCwgcmszNTg4cykgd291bGQgbWFrZSBtb3JlCj4gPiBzZW5zZSwgYmVjYXVzZSB0aGVz
ZSBwYXRjaGVzIHJlYWxseSBhcmUgbW9zdGx5IGlkZW50aWNhbCA6LSkKPiAKPiBZZWFoLCBhcG9s
b2dpZXMgZm9yIHRoZSBsYXJnZSBudW1iZXIgb2YgcGF0Y2hlcywgSSB3ZW50IHRoaXMgd2F5IHRv
IGFsbG93Cj4gcGVyLWJvYXJkIHJldmlld3MuICBBcyBwcmV2aW91c2x5IG5vdGVkLCBJIHRyaWVk
IHRvIGlkZW50aWZ5IHRoZSBHUElPIHBpbnMgZnJvbQo+IG11bHRpcGxlIHNvdXJjZXMsIHNvIEkn
bSBub3QgZW50aXJlbHkgc3VyZSBhYm91dCB0aGUgYWNjdXJhY3kgaW4gZXZlcnkgY2FzZS4KPiAK
PiBXb3VsZCBpdCBiZSBwcmVmZXJhYmxlIHRvIHNxdWFzaCB0aGUgcGF0Y2hlcyBwZXIgU29DIGFu
ZCBib2FyZCB2ZW5kb3IsIGluc3RlYWQ/CgpJIHJlYWxseSB3b3VsZCBqdXN0IGRvIGl0IHBlciBz
b2MgLi4gc28gMyBwYXRjaGVzLiBUaGF0IGlzIGEgc2l6ZSB0aGF0IGlzCnN0aWxsIHJldmlld2Fi
bGUgZm9yIHBlb3BsZSwgd2hvIGNhbiB0aGVuIGNoZWNrIGZvciB0aGVpciBib2FyZC4KCklmIHRo
ZSBwYXRjaCBpcyBsYWJlbGVkICJBZGQgZnJsLWVuYWJsZS1ncGlvcyBmb3IgYWxsIFJLMzU4OHMg
Ym9hcmRzIiwgSQpkbyBleHBlY3QgcGVvcGxlIHRvIG5vdGljZSBpdCB0aGUgc2FtZSBhcyAib2gg
X215XyBib2FyZCBnZXRzIGNoYW5nZWQiLgooImFsbCIgY291bGQgYWxzbyBiZSAibW9zdCIgOi0p
ICkuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
