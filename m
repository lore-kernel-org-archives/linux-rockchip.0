Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72002CCFA0D
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 23:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOogZKje3OV68xQxBeES0DPc9hBlOt5qRjUNabAgEIQ=; b=mTjwwXNgcnBgJh
	ntLYr/AL7/lhlpWiI6ibsFAT5wN35CJmJmMJrf4J/eFXkNTQgy9clBnI/YSDlCj7zahz+uHE27/HH
	e+Yw9MZwkdNwlctZf1cHNVz1Mys+L7uu0CI8i+WylqfmAWYD9Kx7ZPvhp+mMEEj/6OzDdOeXn9v6T
	3JobRcbPaIKE+TL+ojVjDgq1Lhq1rnWsFrNI76bakjoDMiublMZSdQYMkhfxc7ZySNkbd8GszJ1ES
	gX1mS2CIFe8zlwpaqqLSW2+5c1erRcne4lLu/rMafF4EUoMP7JrBLthGTbGMRTjNfbOnP7ZU6l5ZB
	zIGet0zZJzgkFEgqsLrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGmmM-0000000Ebeh-1SJ6;
	Wed, 05 Nov 2025 23:19:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGmmJ-0000000Ebe7-2MlN
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 23:19:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Mo3Jh0qgHnKE+W0ZE0CQCiRi83Cv3SN4TvlOGOO9etk=; b=S10OBdYaBKmpmCEL+9+EPKNuc4
	xPCJjtCzUsi4xBVeWmppP5DhhTgeLLrmmd8ShKYFNmmgBB/77b78788erVAUe/YZurkGvnQ+AoRwS
	RftlgHnkEvBD6ZfGM3GxDxLkEPncmMLyZ8138AyVyONb3J6USSn/vgQAZIYmj4th0jTi5eGie7nNx
	VkzqyzHSHo/2yOYxfk8kg6+OwccYLSXmcRe6UzT28xZ0zj6O048L8hC+oVtLk24b88aGgx+n0NL9J
	rFB4bt9JUB8rI9bCG64nud157k1yPo70Ii6vEJK+/uhchQ3k4q/p8XZjmMg44SRAsgGm1ZsQt5WFm
	vgWtvonQ==;
Received: from i53875bde.versanet.de ([83.135.91.222] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vGmmD-0001CL-9o; Thu, 06 Nov 2025 00:18:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 damon.ding@rock-chips.com, jbx6244@gmail.com, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: Enable HS400 for Indiedroid Nova
Date: Thu, 06 Nov 2025 00:18:51 +0100
Message-ID: <2864346.mvXUDI8C0e@phil>
In-Reply-To: <20251105205708.732125-5-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
 <20251105205708.732125-5-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_151859_647898_394561AD 
X-CRM114-Status: GOOD (  17.15  )
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

QW0gTWl0dHdvY2gsIDUuIE5vdmVtYmVyIDIwMjUsIDIxOjU3OjA3IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQ2hyaXMgTW9yZ2FuOgo+IEZyb206IENocmlzIE1vcmdhbiA8
bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gCj4gT25jZSB0aGUgRExMX1NUUkJJTl9UQVBOVU1f
REVGQVVMVCBpcyBzZXQgdG8gdGhlIGNvcnJlY3QgdmFsdWUgWzFdLCB0aGUKPiB3b3JrYXJvdW5k
IHRvIGVuc3VyZSBzdGFibGUgZU1NQyBvcGVyYXRpb24gaXMgbm8gbG9uZ2VyIG5lZWRlZC4gSQo+
IGhhdmUgb2JzZXJ2ZWQgdGVzdGluZyB0aGlzIHRoYXQgaGRwYXJtIHdlbnQgZnJvbToKPiAiVGlt
aW5nIGJ1ZmZlcmVkIGRpc2sgcmVhZHM6IDUwMiBNQiBpbiAgMy4wMCBzZWNvbmRzID0gMTY3LjE0
IE1CL3NlYyIKPiB0byB0aGUgZm9sbG93aW5nOgo+ICJUaW1pbmcgYnVmZmVyZWQgZGlzayByZWFk
czogODMyIE1CIGluICAzLjAwIHNlY29uZHMgPSAyNzcuMzIgTUIvc2VjIgo+IAo+IFsxXSBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5l
eHQuZ2l0L2NvbW1pdC9kcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYz9pZD1hMjgz
NTJjZjJkMmY4MzgwZTdhY2E4Y2I2MTY4MjM5NmRjYTdhOTkxCj4gCj4gRml4ZXM6IDM5MDAxNjBl
MTY0YiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgSW5kaWVkcm9pZCBOb3ZhIGJvYXJkIikK
ClRoaXMgbmVlZHMgdGhlIHBhdGNoIHlvdSBsaW5rZWQgdG8sIHRvIGFjdHVhbGx5IHdvcmssIHNv
IEknbGwgZHJvcAp0aGUgZml4ZXMgdGFnIHdoZW4gYXBwbHlpbmcsIGJlY2F1c2UgdGhpcyBzaG91
bGQgbGlrZWx5IG5vdCBiZQpiYWNrcG9ydGVkIHRvIG9sZGVyIGtlcm5lbHMuCgpTYW1lIHJlYXNv
bmluZyBmb3IgcGF0Y2ggNS4KCgpIZWlrbwoKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBNb3JnYW4g
PG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OHMtaW5kaWVkcm9pZC1ub3ZhLmR0cyB8IDQgKystLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtaW5kaWVkcm9pZC1ub3ZhLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1pbmRpZWRyb2lkLW5vdmEuZHRz
Cj4gaW5kZXggNjJjOGM4ZjY4NzEzLi4wNzk2YmE2ZDI1MDQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLWluZGllZHJvaWQtbm92YS5kdHMKPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtaW5kaWVkcm9pZC1ub3ZhLmR0
cwo+IEBAIC01NjEsMTAgKzU2MSwxMCBAQCAmc2FyYWRjIHsKPiAgCXN0YXR1cyA9ICJva2F5IjsK
PiAgfTsKPiAgCj4gLS8qIEhTNDAwIG1vZGVzIHNlZW1lZCB0byBjYXVzZSBpbyBlcnJvcnMuICov
Cj4gICZzZGhjaSB7Cj4gIAlidXMtd2lkdGggPSA8OD47Cj4gLQluby1tbWMtaHM0MDA7Cj4gKwlt
bWMtaHM0MDAtMV84djsKPiArCW1tYy1oczQwMC1lbmhhbmNlZC1zdHJvYmU7Cj4gIAluby1zZDsK
PiAgCW5vLXNkaW87Cj4gIAlub24tcmVtb3ZhYmxlOwo+IAoKCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
