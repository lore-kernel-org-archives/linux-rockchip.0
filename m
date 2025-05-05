Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 231E2C369C2
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 07:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bY1beKRWnVNt4uw+UjX4xUkrIOWe+M2egBVY7O2/lc=; b=geRWbWz9zuMnwN
	OlQZFi45hXTm1dh4y8xYHb1JQB+uuvukVrgBXyFhJm+n7irpU4kAIb4aZUmjb7Yls3j9Ro/nZ2CzN
	Y9sBSrnI5YQw+ixVHu6kW+6VQiVbdchgJ3l7EbbLKs2yc5wNSeG8j2vkV9/hXD1oGzieyhx08qmSj
	1M7hema32Sp/QLRPzEDYSFsEkmeU97gjCkt1VFH15eSZQBrXzPNQQSDO2iToMBdu2JAXpN3Jd7fWJ
	izQbCdd6zFmGb/nGP79KNT0q4TO/SyGjo3LOKh/nQQJ0z3dke9Ln6gZmaI9UePG8Wd8W1lnZdjsPP
	sqO8ZcEVrMEEK3751fCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqcA-00000006gog-10Tf;
	Mon, 05 May 2025 07:51:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqaA-00000006gMt-2Cir;
	Mon, 05 May 2025 07:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=g6E3Fmt7cfqXOAXJWZj3GI0CXUJV8EUTYEDTm9gMTDg=; b=z+11W6G6rm+LkV+kCDHjVKwpO+
	tKOxP1CyIwwUl0Qse5Upck55bH9iZOyMOxFQvw8LXXyXbFgCqbWcWFo+KfmeXdURYL5i+mlDlDCwk
	zKDEErGrPdWb3dQb6qp+PvKDgipiboBueGPJUEGM0xVmN99v7LlepjRC5SngXtKh93x58SvcLORLS
	XL5FKwYxRkybBQdVcGszmKFiKnKL3PZibkEXs4PloDGXyg5blkXW0/l1Zw/66Odasjj3aQ1L4BRLG
	ENqn1dvE69j3Q5mL1sqJqQYaSouY76WFBF+AtXae4eTEtRYLvfzKuo6CH4P+0rutUZk3hHzGWYWOy
	WgEGsypQ==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uBqa1-0000dB-Ff; Mon, 05 May 2025 09:49:37 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Yao Zi <ziyao@disroot.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, Yao Zi <ziyao@disroot.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: i2c: i2c-rk3x: Add compatible string for
 RK3528
Date: Mon, 05 May 2025 09:49:36 +0200
Message-ID: <4864135.rnE6jSC6OK@diego>
In-Reply-To: <20250417120118.17610-4-ziyao@disroot.org>
References: <20250417120118.17610-3-ziyao@disroot.org>
 <20250417120118.17610-4-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_004946_581674_3061B60B 
X-CRM114-Status: GOOD (  14.38  )
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

SGkgQW5kaSwKCkFtIERvbm5lcnN0YWcsIDE3LiBBcHJpbCAyMDI1LCAxNDowMToxNyBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFlhbyBaaToKPiBEb2N1bWVudCBJMkMgY29u
dHJvbGxlcnMgaW50ZWdyYXRlZCBpbiBSSzM1MjgsIHdoaWNoIGFyZSBjb21wYXRpYmxlIHdpdGgK
PiB0aGUgUkszMzk5IHZhcmlhbnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogWWFvIFppIDx6aXlhb0Bk
aXNyb290Lm9yZz4KPiBSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4KPiBBY2tlZC1ieTogQ29ub3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4K
PiBSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBrZXJuZWwub3JnPgoKZG8geW91
IGV4cGVjdCB0byBhcHBseSB0aGlzIHBhdGNoIHRvIHRoZSBpMmMgdHJlZSBpbmRpdmlkdWFsbHks
Cm9yIGhhdmUgaXQgZ28gdG9nZXRoZXIgd2l0aCB0aGUgZGV2aWNldHJlZSBwYXRjaD8KCgpUaGFu
a3MgYSBsb3QKSGVpa28KCj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9pMmMvaTJjLXJrM3gueWFtbCB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ky
Yy9pMmMtcmszeC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2kyYy9p
MmMtcmszeC55YW1sCj4gaW5kZXggODEwMWFmYTZmMTQ2Li4yZjFlOTc5NjljM2YgMTAwNjQ0Cj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2kyYy9pMmMtcmszeC55YW1s
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2kyYy9pMmMtcmszeC55
YW1sCj4gQEAgLTM3LDYgKzM3LDcgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAgICAgICAtIHJv
Y2tjaGlwLHB4MzAtaTJjCj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazMzMDgtaTJjCj4g
ICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazMzMjgtaTJjCj4gKyAgICAgICAgICAgICAgLSBy
b2NrY2hpcCxyazM1MjgtaTJjCj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1NjItaTJj
Cj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1NjgtaTJjCj4gICAgICAgICAgICAgICAg
LSByb2NrY2hpcCxyazM1NzYtaTJjCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
