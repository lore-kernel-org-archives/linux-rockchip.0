Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A33C6369F
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Feb 2026 13:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R44gy3RkPTg/zZXeqKjfhmJtIbkXyTYt7bg+HNqd3yE=; b=HnuezaFUJrvsMd
	DFfx2P9N7atrrQ6RjhPLEzI9OlEH3PF4L1V6FqbL1e0bN7HEi/VMZfQZtKHQ5VHBbnvrobvq85mdb
	nYegGttuM7NwcxBtO5OgPHFA7nIvNgQQO9jnEpj52IsWSYb9DoyRx1dXKR+ScKPz3jxsHLRUr6vmL
	zI0W70/D0CPACowZAUN2moh1kGSq9rkh6heuAICfsTqR+43AfekJobhhJ59OYLC8rCkoocSIoMtkZ
	kp1P9AssjQmHrHyjXxOHx/8b1A7Whl+EacwjO3xzvudVRpIV6gyZPD2Q2/+sZZMbT8TcM6w0Wn4jX
	u/6YhF3YW608DYxWG58A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vu9zx-0000000GjZ7-0YQ8;
	Sun, 22 Feb 2026 13:59:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vu9zv-0000000GjYK-1GoU;
	Sun, 22 Feb 2026 13:59:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Ff2I/wJE6bSHHw7NlocrsNF4riW7XkTVuaNjiBsfECI=; b=KbH4rzM+X2YN6NkUJdUuchwaz4
	g9/eHRabRTZwpqe/MKKTjn3qzv6zt7TKYwa9jdp3ZQmnuxBLejw39jKMnFrSVPjz5v0Ibef14sFAg
	Eo7HljYMaiY2FEGHSkG7kM79LOIR5u8YgFcKRDUg9P9aTR6C9EnPl1HxBXPy1UAdYWaLEu3/Hzil6
	+rRNBz5pEkYKn6r2nD3GfwWOU/Up41YFNjeaOA3gnG/O8wRAdXHaTc8Kxt5zg2fBFFwKXx/9A59o4
	1lbAypuUbq/YMhRvuZ8vD2LMlGJK79tVXmbkNru6aI80VHfF3iVLXAh91lwkdB5TD1EExfzRcVKFu
	30aaJ2kg==;
From: Heiko Stuebner <heiko@sntech.de>
To: neil.armstrong@linaro.org, dianders@chromium.org,
 thierry.reding@gmail.com, sam@ravnborg.org,
 Robin Murphy <robin.murphy@arm.com>
Cc: jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Add overlay for FriendlyElec HD702E
Date: Sun, 22 Feb 2026 14:59:40 +0100
Message-ID: <24273079.6Emhk5qWAg@phil>
In-Reply-To: <2bbc2e62ae9b54ac7594355001ce2b15885d3493.1769191673.git.robin.murphy@arm.com>
References: <cover.1769191673.git.robin.murphy@arm.com>
 <2bbc2e62ae9b54ac7594355001ce2b15885d3493.1769191673.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260222_055947_344616_33503A62 
X-CRM114-Status: GOOD (  11.74  )
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

QW0gRnJlaXRhZywgMjMuIEphbnVhciAyMDI2LCAyMDoyMjoyMyBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIFJvYmluIE11cnBoeToKPiBBZGQgYW4gb3ZlcmxheSB0byBzdXBw
b3J0IEZyaWVuZGx5RWxlYydzIEhENzAyRSA3IiBlRFAgTENEIHRvdWNoc2NyZWVuCj4gbW9kdWxl
IGZvciB0aGUgTmFub1BDLVQ0IGJvYXJkOgo+IAo+IGh0dHBzOi8vd3d3LmZyaWVuZGx5ZWxlYy5j
b20vaW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvcHJvZHVjdCZwYXRoPTgxJnByb2R1Y3RfaWQ9MjMw
Cj4gCj4gU2lnbmVkLW9mZi1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4K
ClsuLi5dCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1uYW5vcGMtdDQtaGQ3MDJlLmR0c28gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1uYW5vcGMtdDQtaGQ3MDJlLmR0c28KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDAwMDAwMDAwMDAwMC4uNjZhYzUzMDM5MmI3Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9wYy10NC1oZDcwMmUuZHRzbwo+IEBA
IC0wLDAgKzEsOTYgQEAKPiArJmVkcCB7Cj4gKwlmb3JjZS1ocGQ7Cj4gKwlzdGF0dXMgPSAib2th
eSI7Cj4gKwo+ICsJYXV4LWJ1cyB7Cj4gKwkJZWRwLXBhbmVsIHsKClRoZSBkdGJzLWNoZWNrIHdh
cyB1bmhhcHB5LCBiZWNhdXNlIHRoZSBhdXhidXMgYmluZGluZyB3aXNoZXMgZm9yIHRoaXMKbm9k
ZSB0byBiZSBuYW1lZCAicGFuZWwiLiBJJ2xsIGp1c3QgY2hhbmdlIHRoaXMgd2hlbiBhcHBseWlu
Zy4KCgpIZWlrbwoKPiArCQkJY29tcGF0aWJsZSA9ICJmcmllbmRseWFybSxoZDcwMmUiOwo+ICsJ
CQliYWNrbGlnaHQgPSA8JmJhY2tsaWdodD47Cj4gKwkJCW5vLWhwZDsKPiArCQkJcG93ZXItc3Vw
cGx5ID0gPCZ2ZGRfM18zdj47Cj4gKwo+ICsJCQlwb3J0IHsKPiArCQkJCXBhbmVsX2luX2VkcDog
ZW5kcG9pbnQgewo+ICsJCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmZWRwX291dF9wYW5lbD47Cj4g
KwkJCQl9Owo+ICsJCQl9Owo+ICsJCX07Cj4gKwl9Owo+ICt9OwoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
