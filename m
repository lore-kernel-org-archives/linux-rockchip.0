Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E6D5C5AD7B
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Feb 2026 14:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUJibBowWZwnly+08C9XOnInuzAZvi7G/l4bRlj13n4=; b=mIlDxnL69zf8f9
	n/CFEvlMr5837MwYgezhPhwF23U40gqtw4rnoVPTBQmnPxnaRvbqIVp0577VVyGt/wHnQyvlcCvHy
	qB3Wlk4YbArqrVchbOrVHonXkgnpJH/aRkV5IOmguT5aWh6sEtJLOzDnJXUBNBK7uZoD8QtpoeWVH
	qdJZRhdFHB9kM4gchV6zFpICVgOYGyNulpKA0F5rBktYNrdJ5jFxC4n0o/NPW3g5BCK8zUi7YMnJi
	Ogz4vJ0G4GxNhWEufUsmgb2JZML9x+mUEdhj/Y8mah3lEEs+VZU0peqcdX+MMX9wxx9U3PhATAdqS
	qxeb0JdnFafFsyG+VNBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtoKy-0000000G765-2zsy;
	Sat, 21 Feb 2026 14:52:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtoKv-0000000G75a-0Xue;
	Sat, 21 Feb 2026 14:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pZD1ZlANrf8P/MlRStCUZSXgHOShp4rteLirP3rZbn8=; b=i4zTMbVo45tAtv8y/QZj4XJPMa
	U0BoNhx2iqCg+9mdhs17QPCQlaIx1n53MSWKvJgXCz+fHroUqXp1fy6Y5JZ5L/tvDeTdZ76CnWYtE
	U2cHEGdUoROjlFWk3Ca/OlhVkjyYwgmNeQT1CdsTeSSrTZEWJSeJG4oHKPjFjjoGr3pIYhusaw45O
	EogR4X49qGWUrKbvABVh0/k2OotblR7YVfknp0xzYOH1awiK48Njyj6m7pOtJ74Txy5WPCy4X3uym
	9hrZ9AMFN9WS1TNPtToorUu7dTwblrZeozUA4tfVm0CrQ2wwZlziNRx+54TJ1np1oOAdMgVTV325K
	JqQZoMqg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 xiaopeitux@foxmail.com
Cc: Pei Xiao <xiaopei01@kylinos.cn>, Felix Gu <ustc.gu@gmail.com>
Subject: Re: [PATCH] soc: rockchip: grf: fix device node refcount leak in error path
Date: Sat, 21 Feb 2026 15:51:46 +0100
Message-ID: <6295978.F8r316W7xa@diego>
In-Reply-To: <tencent_BE953AE4AA17D089CF5C87EB6F4400F70206@qq.com>
References: <tencent_BE953AE4AA17D089CF5C87EB6F4400F70206@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260221_065201_195605_98890E3C 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
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

SGksCgpBbSBTYW1zdGFnLCAyMS4gRmVicnVhciAyMDI2LCAwMTo0MDoyNyBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIHhpYW9wZWl0dXhAZm94bWFpbC5jb206Cj4gRnJvbTog
UGVpIFhpYW8gPHhpYW9wZWkwMUBreWxpbm9zLmNuPgo+IAo+IFRoZSBmb3JfZWFjaF9tYXRjaGlu
Z19ub2RlX2FuZF9tYXRjaCgpIG1hY3JvIGF1dG9tYXRpY2FsbHkgbWFuYWdlcyBkZXZpY2UKPiBu
b2RlIHJlZmVyZW5jZSBjb3VudHMgZHVyaW5nIG5vcm1hbCBpdGVyYXRpb24uIEhvd2V2ZXIsIHdo
ZW4gYnJlYWtpbmcgb3V0Cj4gb2YgdGhlIGxvb3AgZWFybHkgd2l0aCByZXR1cm4sIHRoZSBjdXJy
ZW50IGl0ZXJhdGlvbidzIG5vZGUgaXMgbm90Cj4gYXV0b21hdGljYWxseSByZWxlYXNlZCwgbGVh
ZGluZyB0byBhIHJlZmVyZW5jZSBjb3VudCBsZWFrLgo+IAo+IEZpeCB0aGlzIGJ5IGFkZGluZyBv
Zl9ub2RlX3B1dCgpIGJlZm9yZSByZXR1cm5pbmcgZnJvbSB0aGUgbG9vcAo+IHdoZW4gZmFpbHMu
Cj4gCj4gRml4ZXM6IDc1ZmI2M2FlMDMxMiAoInNvYzogcm9ja2NoaXA6IGdyZjogU3VwcG9ydCBt
dWx0aXBsZSBncmYgdG8gYmUgaGFuZGxlZCIpCj4gU2lnbmVkLW9mZi1ieTogUGVpIFhpYW8gPHhp
YW9wZWkwMUBreWxpbm9zLmNuPgoKRmVsaXggR3Ugd2FzIHNsaWdodGx5IGZhc3RlciBbMF0sIHNv
IEknbGwgYXBwbHkgdGhlaXIgcGF0Y2ggb25jZSB0aGUgbWVyZ2UtCndpbmRvdyBpcyBjbG9zZWQu
CgpUaGFua3MKSGVpa28KCgpbMF0gaHR0cDovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMjE3LWdy
Zi12MS0xLTIwODhjOTY2ODc1ZEBnbWFpbC5jb20KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
