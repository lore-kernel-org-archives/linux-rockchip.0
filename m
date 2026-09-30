Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1954CA5FC4
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 18:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47ixi1Rf7/fDPNqnTrqEsD3yipvWfLjR2ICLSJLIbgs=; b=NYviIS5Jz8P0xW
	lQTCbQM843IixuU0un9gj43F2ZkBgLUzUuu8SZIGupP5GLD2VmXYNOx6AqX6wSj6gBgD7Xhtd5RMW
	AR7FXQq+Vljef+8XpFPLOkrs/qsQlzZM1t9bIVvhPc/XQ99kyJDEpe8IxIknGk1j8AatUOSlLl/ZQ
	K+Yq0LbbfnKdNxQ032K2zM6aHjaQbMDwkV0+2WouFA285OPDIq+Jojor+gXPqTj6W4kOH362c5wyP
	hCMzWRqbpL4eVZZtLKQHMmVSLwiA/fm+GdVak8YMPuDTL+Ek0SDB/RurGG144mGxxRtCW0Gab1QNc
	SahbyJfEHipY8JXLXYKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBzNV-000000071Rg-0wne;
	Wed, 30 Sep 2026 18:50:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBzMp-000000071Co-3W5a;
	Wed, 30 Sep 2026 18:49:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=/PMQbnd1Umh/ykCtK7pbq7KnudwFRJAJCgrnFGdJK4c=; b=XLcAH7VESRih5oS83IYVQYVRRH
	GCyd4Pjd0IxFhdFF60HppLUJ68Ji9QZJLfHogmSrBHmFSBXyCdJAQdKTDkr7AW0rWJ7hphvFkCxHw
	LcDQ4WFXHGlOQ1j14TRyDCrroekkRmI+CS6FEzGRvFgc2Did2pn2voIuSaNnBuv0P2mBRaz2mWmx3
	66XHpB7YQoifucsdxA1z+VI4CM2QD7/zJyOAQo9f99Dme9BYieaIMqLwuufgu0wzQKntbhjkRSxSw
	77460R7t80RemoIBEQjQ7xq11ljvYU5ujYqr3pIkLxZS43BV70ql6TZnKTaZzm0av02AOO6DLz9mq
	KXiJmxHQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	jensen <jensenhuang@friendlyarm.com>,
	Andrey Korshunov <razor1702@gmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v7 0/3] arm64: dts: rockchip: Add FriendlyElec NanoPi R28S
Date: Wed, 30 Sep 2026 20:49:12 +0200
Message-ID: <179079409731.2398180.11671143856080790218.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919-r28s-upstream-v7-0-e80a6f8ef521@proton.me>
References: <20260919-r28s-upstream-v7-0-e80a6f8ef521@proton.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_114923_907953_1ABB2428 
X-CRM114-Status: GOOD (  12.59  )
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

Ck9uIFNhdCwgMTkgU2VwIDIwMjYgMTg6Mjg6MTYgKzA4MDAsIOWuieWuuSB3cm90ZToKPiBUaGUg
TmFub1BpIFIyOFMgaXMgYSBkdWFsIGdpZ2FiaXQgRXRoZXJuZXQgcm91dGVyIGJvYXJkIGJhc2Vk
IG9uIHRoZQo+IFJvY2tjaGlwIFJLMzUyOCBTb0M6Cj4gCj4gICBodHRwczovL3dpa2kuZnJpZW5k
bHllbGVjLmNvbS93aWtpL2luZGV4LnBocC9OYW5vUGlfUjI4Uwo+IAo+IEl0IGlzIGNsb3NlbHkg
cmVsYXRlZCB0byB0aGUgYWxyZWFkeSBzdXBwb3J0ZWQgTmFub1BpIFplcm8yLCBzaGFyaW5nCj4g
bW9zdCBvZiBpdHMgcG93ZXIgdHJlZSBhbmQgcGVyaXBoZXJhbCByb3V0aW5nLiBQYXRjaCAyIHRo
ZXJlZm9yZSBtb3Zlcwo+IHRoZSBjb21tb24gcGFydHMgaW50byByazM1MjgtbmFub3BpLmR0c2ks
IGFuZCBwYXRjaCAzIGFkZHMgdGhlIGJvYXJkIG9uCj4gdG9wIG9mIGl0LiBUaGUgc3BsaXQgbGVh
dmVzIHRoZSBOYW5vUGkgWmVybzIgaGFyZHdhcmUgZGVzY3JpcHRpb24KPiB1bmNoYW5nZWQ7IEkg
dmVyaWZpZWQgdGhpcyBieSBjb21wYXJpbmcgdGhlIG5vZGUgYW5kIHByb3BlcnR5IHNldHMgb2YK
PiB0aGUgZHRiIGJlZm9yZSBhbmQgYWZ0ZXIgdGhlIHNwbGl0LCB3aGljaCBkaWZmZXIgb25seSBp
biBub2RlIG9yZGVyLAo+IHBoYW5kbGUgbnVtYmVyaW5nIGFuZCB0aGUgdHdvIHJlbmFtZWQgTEVE
IHBpbiBjb25maWd1cmF0aW9uIG5vZGVzLgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpb
MS8zXSBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hpcDogQWRkIEZyaWVuZGx5RWxlYyBOYW5vUGkg
UjI4UwogICAgICBjb21taXQ6IGJkY2YyOWEzNzlhZmVjYzAyYzNlOTljMGQxNzQ1MzYzYWQ3YTc0
MDcKWzIvM10gYXJtNjQ6IGR0czogcm9ja2NoaXA6IFNwbGl0IG91dCB0aGUgY29tbW9uIE5hbm9Q
aSBSSzM1MjggcGFydHMKICAgICAgY29tbWl0OiBmZGIwODc4MDZlODA4Y2NjNDk2M2UyZTUyMjVm
ZTE2NTgxZWNiNDIxClszLzNdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZGV2aWNldHJlZSBm
b3IgdGhlIEZyaWVuZGx5RWxlYyBOYW5vUGkgUjI4UwogICAgICBjb21taXQ6IGMxZTIzZjM0MjVj
NDlmZTIyZTk1OThmOGVlYTJmY2Y2OTM5NTBkNTAKCkJlc3QgcmVnYXJkcywKLS0gCkhlaWtvIFN0
dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
