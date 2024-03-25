Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B69A7C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 21:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PckaiE4mIf4+mJo8U/t0YQvLpnqFgKCzg90FxTL+epg=; b=LI3fNjuRsfQWVVL4eLRzB9RVUp
	tnmDzP4W1bNG8dMr0uieqbZZI2lkDmldw3LGGffAOdyBorbYQEPd53MhWqwR3n3/8s5q2aeIPiYfq
	RCpYgDHyo1uGjMJNtKIMg3mjcLcHee1gK/2O+ZiTXg+y061a9zK9vuoNAUVV3aV67ep5IzpFb5bGH
	GCg7POlj8Yaet/0twbwhHY+tagQHehxctpnI1g9MFYSXqnxI41n0ADjvR3zaRBjJC8fg8J7G0VpVx
	z2dLLjznd3h/oPtwwwenSAy2NTKr7zpSc89BZweAKf0RIfhPpqo4RSeBvNBOx2FVL1cUQ83hwQauK
	t3b650LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rosKo-0000000278y-2MnL;
	Mon, 25 Mar 2024 21:58:26 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rosKj-0000000276X-4BQT
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 21:58:24 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711403897;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G3Ju/zcDbTmgTW5u8BFjHe7CtK00btWH1QN2NAmEpIQ=;
	b=pAWnFV28oZfjUb5DcW7V1ZyiTnM0Y65NaXcc03aSpWkMTY1rTceQxgk9gioaXUHx/+Bhz3
	hDEVcsh+G5CuewUEpOMkuWHZI7pPYaKloHt3wflDVExhBpYfxJeUjBl7ffIzLT1eS4GzDP
	OY8Vflk1UlLWEZE7JjTlZ7PHUVXThc0zeB2/OP74zecY4J643lV5dWt8OACIWDVBnvCnZu
	QoQnO0TDnVQiygbhkex6cP36zp7BleGmMf77QzwOfwL5X95cik/BkUgwF1tl+lmLjSJ32e
	VpZh/mTP9/JwDU6UvevUYDgciY3qm/Vq4tTg1Jio6EHaw42ODozdgO+hRkY/Qg==
Date: Mon, 25 Mar 2024 22:58:17 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
In-Reply-To: <2854897.88bMQJbFj6@diego>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
 <5e2f0da3fc066cf1faddda71bb6ea2e7@manjaro.org> <2854897.88bMQJbFj6@diego>
Message-ID: <4a8bd0a6417a7f9a779d907969c6af9b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_145822_545524_57CA08FB 
X-CRM114-Status: GOOD (  18.95  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTAzLTI1IDIyOjUzLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBNb250YWcsIDI1LiBNw6RyeiAyMDI0LCAxODo1NzowNiBDRVQgc2NocmllYiBEcmFnYW4g
U2ltaWM6Cj4+IEhlbGxvIENocmlzLAo+PiAKPj4gT24gMjAyNC0wMy0yNSAxODo1MSwgQ2hyaXMg
TW9yZ2FuIHdyb3RlOgo+PiA+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFp
bC5jb20+Cj4+ID4KPj4gPiBVc2VycyBoYXZlIHJlcXVlc3RlZCBmaXhlcyBmb3IgUG93a2lkZHkg
ZGV2aWNlcyB0byBoZWxwIHdpdGggc29tZQo+PiA+IGludGVybWl0dGVudCBXaUZpIGlzc3VlcyBi
eSBhZGRpbmcgYWRkaXRpb25hbCBwcm9wZXJ0aWVzIHRvIHRoZQo+PiA+IFNETU1DMiBub2RlLiBU
aGV5IGhhdmUgYWxzbyByZXF1ZXN0ZWQgdGhhdCB0aGUgbW9kZWwgbmFtZSBiZQo+PiA+IHJlcHJl
c2VudGVkIGNvbnNpc3RlbnRseSB3aXRoIGJvdGggdGhlIG1hbnVmYWN0dXJlciBuYW1lIGFuZCBt
b2RlbAo+PiA+IG5hbWUuIExhc3RseSwgdGhlcmUgZXhpc3RzIGEgc2Vjb25kIGNvbmZpZ3VyYXRp
b24gb2YgdGhlIFJHQjMwIHdpdGgKPj4gPiBhIHNsaWdodGx5IGRpZmZlcmVudCByZWd1bGF0b3Ig
bGF5b3V0IHdlIG5lZWQgdG8gZGVzY3JpYmUuCj4+ID4KPj4gPiBJIGhhdmUgYWRkZWQgdGhlIG5l
dy9hZGRpdGlvbmFsIHByb3BlcnR5IG9mICJjaGFzaXMtdHlwZSIgYXMgd2VsbC4KPj4gCj4+IFNo
b3VsZG4ndCB0aGlzIHNlcmllcyBiZSBsYWJlbGVkIGFzIHYyPwo+IAo+IEkgdGhpbmsgdGhpcyBp
cyBmb3IgUG93a2lkZHkgaGFuZGhlbGRzLCB0aGUgb3RoZXIgc2VyaWVzIHdhcwo+IGZvciBBbmJl
cmljIG9uZXMuCj4gCj4gU29tZWhvdyB0aGV5IGRlc2lnbiBhbmQgYnVpbGQgc2VlbWluZ2x5IGRv
emVucyBvZiBzb21ld2hhdAo+IHNpbWlsYXIgaGFuZGhlbGRzIGFyb3VuZCB0aGUgcmszNTY2IDst
KQoKQWgsIHlvdSdyZSByaWdodCwgSSB3YXMgd3JvbmcuICBJdCdzIHF1aXRlIGVhc3kgdG8gYmVj
b21lIGNvbmZ1c2VkCmEgYml0IHdpdGggc3VjaCBzaW1pbGFyIGRldmljZXMgYW5kIHNpbWlsYXIg
cGF0Y2hlcy4gOikKCj4+IEJ5IHRoZSB3YXksIHJlZ2FyZGluZyByZW5hbWluZyB0aGUgbW1jWCBh
bGlhc2VzLCBtYXliZSB0aGF0IHdvdWxkCj4+IGFjdHVhbGx5IGJlIGRvYWJsZSwgYnV0IG9ubHkg
aWYgeW91IGhhdmUgZnVsbCBjb250cm9sIG92ZXIgc29mdHdhcmUKPj4gdGhhdCBydW5zIG9uIHRo
ZXNlIGRldmljZXMuCj4+IAo+PiA+IENocmlzIE1vcmdhbiAoNCk6Cj4+ID4gICBkdHM6IHJvY2tj
aGlwOiBBZGQgY2hhc2lzLXR5cGUgZm9yIFBvd2tpZGR5IHJrMzU2NiBkZXZpY2VzCj4+ID4gICBh
cm02NDogZHRzOiByb2NrY2hpcDogVXBkYXRlIHNkbW1jIG5vZGUgZm9yIHdpZmkgb24gcG93a2lk
ZHkgcmszNTY2Cj4+ID4gICBhcm02NDogZHRzOiByb2NrY2hpcDogQ29ycmVjdCBtb2RlbCBuYW1l
IGZvciBQb3draWRkeSBSSzM1NjYgRGV2aWNlcwo+PiA+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6
IERlc2NyaWJlIEFsdGVybmF0ZSBSZWd1bGF0b3IgQ29uZmlnIG9uIFJHQjMwCj4+ID4KPj4gPiAg
Li4uL2R0cy9yb2NrY2hpcC9yazM1NjYtcG93a2lkZHktcmdiMzAuZHRzICAgIHwgMzAgKysrKysr
KysrKysrKysrKysrLQo+PiA+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU2Ni1wb3draWRkeS1yazIw
MjMuZHRzICAgfCAgNiArKystCj4+ID4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTY2LXBvd2tpZGR5
LXJrMjAyMy5kdHNpICB8ICA0ICsrKwo+PiA+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2
LXBvd2tpZGR5LXg1NS5kdHMgfCAgNCArKysKPj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+PiAKPiAKPiAKPiAKPiAKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
