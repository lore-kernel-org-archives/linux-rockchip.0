Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3970C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=78tZFIUiV83Er7SYNQ4/ulY116sA6EF22bKF9HRHBWg=; b=PpZn/1R6Epe64+NujdY6nzjrog
	nDk3LOLhZGGoECwN2Th+wFIvQMjg/cs4YIqTdr3Tj9QwKsoMI1ug2NzornYWML+Q5kRPnY4MQsK93
	goQqcokySzhObw4MGhl2N7EaSOdOXqSNiEj7mKWUNT1zxG8FqOLGOxbSoeNdSKcnx2QcczWcdqH5+
	wHO29DHNeUlN7pkYQAP5402vCYMRh+i0wGsYSEwQD4YAbJ7j1fASogERZlPqTW3Aac8AyByeZsXf8
	r1ERof4dnFmZJ7qIZMmiWhq8MqaJnUuz0jUuKyjBePgqJQgITSuAw/tyDUQXvsLpaqfC7/cBDbgzG
	/Gl2qJig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxNGC-00000001T0D-35gi;
	Thu, 18 Apr 2024 08:36:48 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxNG9-00000001Syj-3skQ;
	Thu, 18 Apr 2024 08:36:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713429404;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g0/pcL8zpK5I18i+eBbw+Iwo3gVo9gl9K+bm6kJi3/g=;
	b=cbWfah37TC39SvM3VxL7ZEQaqL3EWiESpIWQhAVKmh/L52QKdeb/qRUbnu+PRm5U+vV9PC
	TBjciVZ5OPKuKJ0hfwdknCBl/w2lMQqSxDp8KZ8xduKwD6lsVq2z8O6PDk4f/TacoVrUSg
	GKfroAhQKweVa//nKaOTQ+xEP0VmzeCNc4koquXyNLD79GeVWjGKxardACQnOEbeKNZzhn
	lUu4E3ubbqUbuWdL5o01gh7tcxj7toNIadZ4CdfeFZUtLw27NjW0ieUju5dk0x0xIm2v+U
	8TDL6oryiQZ3aQsbNjdwsrGQuwffAqYJ8GLWHxXwKeLm8+K5ZEmWRm0RN2Cavw==
Date: Thu, 18 Apr 2024 10:36:42 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, jonas@kwiboo.se, conor+dt@kernel.org,
 devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ROCK3 Model C
In-Reply-To: <5C3644E82F788C47+c823a9ad-5dcd-4f20-b589-057c7d31eb22@radxa.com>
References: <d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se>
 <20240417133016.62753-1-amadeus@jmu.edu.cn>
 <a144c052fcc2460a615a754a64a8f739@manjaro.org>
 <B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com>
 <9e915ef29a2b49ce56446ec9d474eb64@manjaro.org>
 <ebf7b5f5ff4cd3c8cbee36f35df6ef5d@manjaro.org>
 <730e21fc4c74bf42b8a5e54473270899@manjaro.org>
 <5C3644E82F788C47+c823a9ad-5dcd-4f20-b589-057c7d31eb22@radxa.com>
Message-ID: <4d171d1365965c72a19fb23040be026a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_013646_139789_DA02A21A 
X-CRM114-Status: UNSURE (   7.98  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0wNC0xOCAxMDozMSwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBPbiA0LzE4LzI0IDE2
OjE4LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+IEFjdHVhbGx5LCBhIGNvdXBsZSBvZiBib2FyZCBk
dHMoaSkgZmlsZXMsIGxpc3RlZCBiZWxvdywgbmVlZCB0bwo+PiBiZSByZW5hbWVkIHRvIGFkZCBk
YXNoZXMgaW50byB0aGVpciBuYW1lcy7CoCBUaGF0LCB0b2dldGhlciB3aXRoCj4+IHRoZSBvdGhl
ciBuYW1pbmcgY2xlYW51cHMgSSd2ZSBhbHJlYWR5IHByZXBhcmVkLCB3b3VsZCBtYWtlIHRoZQo+
PiBuYW1pbmcgY2xlYW51cCBvZiB0aGUgUmFkeGEgYm9hcmRzIGNvbXBsZXRlLgo+PiAKPj4gLSBh
cmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMyODgtcm9jazItc29tLmR0c2kKPj4gIMKgICgt
PiBhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMyODgtcm9jay0yLXNvbS5kdHNpKQo+PiAt
IGFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzI4OC1yb2NrMi1zcXVhcmUuZHRzCj4+ICDC
oCAoLT4gYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMjg4LXJvY2stMi1zcXVhcmUuZHRz
KQo+IAo+IHVoLi4uIHRoZXkgYXJlIHByZWhpc3RvcmljIHJlbGljcy4uLiB0aGVyZSB3YXMgbm8g
c3RyaWN0IHJ1bGUuLi4KPiAoRllJLCB0aGVyZSBpcyByazMxODgtcmFkeGFyb2NrLmR0cyB0b28p
Cj4gCj4gSSBkb24ndCBmZWVsIGEgc3Ryb25nIG5lZWQgZm9yIHRoZW0uLi4KCkluIHRoYXQgY2Fz
ZSwgaXQncyBwZXJoYXBzIGJldHRlciBub3QgdG8gZG8gYW55IGZpbGUgcmVuYW1pbmcsCndoaWNo
IHdpbGwgYWxzbyBrZWVwIHVzIG9uIHRoZSBleHRyYSBzYWZlIHNpZGUuICBUaGUgVS1Cb290IHBh
dGNoCkkgYWxyZWFkeSBzdWJtaXR0ZWQgd29uJ3QgaHVydCBhbnl3YXkuIDopCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
