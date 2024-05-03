Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65664C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 08:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeTXh+KAR7Y0eTeA1yRy0ylkrYD2EzabZKy2+7tLzB4=; b=gzf64G4kRYrgtx
	CPDeGCfLu6eB5EZ+i0OV10NPMg/GqRl4e/qnVYieSDGhx9I/9qbW662mWLAI/fB1a6lJfKAnFPkMQ
	319pj6bcOMazoVZSJvpwCTwPYFTsMnePw8PyKb1vCK4n+QAEqYAFr86pHjXH1r1EfTxs1cjKQShrg
	1RmcMpBAoZTYJOk7UynZSIKh0KIERSoCH/COZI1h0sE7U1x80ArJt7Zjf0BuDmXGy6RKz/l26z2/H
	23la7Ywxyd2RQe/hpS8cQD08LDrsI39trA6UFliHzpn+JvgB95cmIqa5LWjRtZ+Am8EPWB5+N4VXt
	Ayk+/bOnkxvJCPdD/IgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2o72-0000000FbnR-0X4F;
	Fri, 03 May 2024 08:17:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2o6x-0000000Fbmf-33gN;
	Fri, 03 May 2024 08:17:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 34CC261A1D;
	Fri,  3 May 2024 08:17:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 748EDC116B1;
	Fri,  3 May 2024 08:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714724261;
	bh=L4fcBnx7rVE5jkyMNRG7+h4TM5NQvUoFZYQ/z4TVVko=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Kuf0QMbLFG5D40e/CrQeZTzoKyX1NQ9mRD2fYcp+lKKv6QfVSd39D72RRGvDY0ngc
	 OesvviXJX5AQHmBJlLj9md7UP8iyoO3QuY3nun3Y2EfWjZUqW5uteD6HIy8FkBic7W
	 NEWZd155Cl7isw05T3NA/N5TNcUVHP3+zMAfaPjAgKyVlXz2JriPC5ipuZ58Hws99W
	 5VMDet3GTb1+oT8ZfGBHLCp+qr0UxZihgvremiJh+e+KP2T0Mx66ROMnUXeKfi82mN
	 QGFT2UYueiNvJr2XXxBkComRuutBI1o0/rUn9E6YaL1yJmVJIoDE+IhbMrCJtlRYLH
	 B/TavgDQseNqw==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Alex Bee <knaerzche@gmail.com>
Cc: Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org
In-Reply-To: <20240416161237.2500037-1-knaerzche@gmail.com>
References: <20240416161237.2500037-1-knaerzche@gmail.com>
Subject: Re: [PATCH v4 0/5] Add RK816 PMIC support
Message-Id: <171472425816.1279735.1509285489643125462.b4-ty@kernel.org>
Date: Fri, 03 May 2024 09:17:38 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_011743_837976_A840D9DC 
X-CRM114-Status: GOOD (  15.17  )
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

T24gVHVlLCAxNiBBcHIgMjAyNCAxODoxMjozMiArMDIwMCwgQWxleCBCZWUgd3JvdGU6Cj4gVGhp
cyBzZXJpZXMgYWltcyB0byBhZGQgc3VwcG9ydCBmb3IgUm9ja2NoaXAgUks4MTYgUE1JQyBzZXJp
ZXMuIEFzIHBlcgo+IGRhdGFzaGVldCBpdCdzIHRhcmdldGVkIGZvciBSSzMxMjYvUkszMTI4IChS
SzgxNi0xKSwgUksxMTA4IChSSzgxNi0yKSBhbmQKPiBQWDMtU0UgKFJLODE2LTMpIGJ1dCBtaWdo
dCBiZSB1c2VkIGZvciBvdGhlciBTb0NzIGFzIHdlbGwuIFRoZSBNRkQgY29uc2lzdHMKPiBvZiBh
biBpbnRlZ3JhdGVkIFJUQywgYSBHUElPIGNvbnRyb2xsZXIsIHR3byAzMmsgY2xvY2sgb3V0cHV0
cywgYSBwb3dlcgo+IGtleSwgMyBidWNrLSBhbmQgNiBsZG8gcmVndWxhdG9ycywgMyByZWd1bGF0
b3Itc3dpdGNoZXMsIGFuZCBjaGFyZ2VyIHdpdGgKPiBpbnRlZ3JhdGVkIGZ1ZWwgZ2F1Z2UuIENo
YXJnZXIgYW5kIGZ1ZWwgZ2F1Z2UgYXJlIG5vdCBwYXJ0IG9mIHRoaXMgc2VyaWVzLgo+IFR3byBv
ZiB0aGUgc3dpdGNoZXMgKG90Zy9ib29zdCkgYXJlIHBhcnQgb2YgdGhlIGJpbmRpbmcsIGJ1dCBu
b3Qgb2YKPiB0aGUgZHJpdmVyLiBUaGV5IG11c3Qgb25seSBldmVyIGJlIGVuYWJsZWQgaWYgbm8g
YmF0dGVyeSBjaGFyZ2luZyBpcwo+IGhhcHBlbmluZywgYnV0IGl0IHdpbGwgYmUgZW5hYmxlZCBh
dXRvbWF0aWNhbGx5IGlmIGEgYmF0dGVyeSBpcyBhdHRhY2hlZAo+IGFuZCBhbiBleHRlcm5hbCBw
b3dlciBzb3VyY2UgaXMgY29ubmVjdGVkLiBUaHVzIHRoYXQgbmVlZHMgc29tZQo+IGluY29ycG9y
YXRpb24gb2YgYSB5ZXQgdG8gYmUgYWRkZWQgY2hhcmdlciBkcml2ZXIuCj4gSW50ZWdyYXRpb24g
aW4gdGhlIGV4aXN0aW5nIHJrOHh4LWluZnJhc3RydWN0dXJlIHdhcyBwcmV0dHkgc3RyYWlnaHRm
b3J3YXJkCj4gYW5kIG9ubHkgbmVlZGVkIHZlcnkgbGl0dGxlIHR3ZWFraW5nLiBJbiBvcmRlciB0
byBub3QgZnVydGhlciBibG9hdCB0aGUKPiBkcml2ZXIocykgdG9vIG11Y2ggd2l0aCBhZGRpdGlv
bmFsIGAjZGVmaW5lYHMgSSB0cmllZCB0byByZS11c2UgZXhpc3RpbmcKPiBvbmVzIHdoZXJldmVy
IHBvc3NpYmxlLgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS81XSBkdC1iaW5kaW5n
czogbWZkOiBBZGQgcms4MTYgYmluZGluZwogICAgICBjb21taXQ6IDA2ZGZiNDFiMWNmOGQ2NDMy
N2U1YzQzOTFlMTY1ZjQ2NjUwNmM0ZjAKWzIvNV0gbWZkOiByazh4eDogQWRkIFJLODE2IHN1cHBv
cnQKICAgICAgY29tbWl0OiBlOTAwNmY4MWZhZjhlNDM4ZWE4MzYyNmRiNTc4NjEwZTQ5ZjMxNTc2
ClszLzVdIHBpbmN0cmw6IHJrODA1OiBBZGQgcms4MTYgcGluY3RybCBzdXBwb3J0CiAgICAgIGNv
bW1pdDogMWJkOTdkNjRiNWYwYzAxZDAzZWNjOTQ3M2NjZmNmMTgwZGJiZjU0YQpbNC81XSByZWd1
bGF0b3I6IHJrODA4OiBTdXBwb3J0IGFwcGx5X2JpdCBmb3Igcms4MDhfc2V0X3N1c3BlbmRfdm9s
dGFnZV9yYW5nZQogICAgICBjb21taXQ6IDlmNGU4OTljMjg2YjUxMjdlMjQ0M2Q1MGUzN2VlMjEx
MmVmYmZhMmMKWzUvNV0gcmVndWxhdG9yOiByazgwODogQWRkIFJLODE2IHN1cHBvcnQKICAgICAg
Y29tbWl0OiA1ZWIwNjhkYTc0YTBiNDQzZmI5OWE4OWQ5ZTUwNjI2OTE2NDljNDcwCgotLQpMZWUg
Sm9uZXMgW+adjueQvOaWr10KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
