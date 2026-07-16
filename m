Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2229C4450A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 10:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8UhzsdJUgE/W1o2PMNWa+IjMyXjzP0N85chcGtv9wY=; b=ytxgg5dC5LQZOd
	a3DUTP+4byWpmLmvdnhy7jWz8PNNqJEiPT+DbE95EMI7kb0NOmxeDWbJIJCgbujewlYIrD/XukaZL
	jeFiR0uG4Y3z6mqP8jB/PeMxVcKX9EXz0Jgrjm1yBsMkWKr4KUQ7ChtznVLz7FJ8zW2odjCwVj1h+
	smqhIGdjWZ9v23bCi1QUDUe2Hs0bQ7mVzqmng+rWJ+yARsn8bZcdlHC7BSfvSRyftJ6ct8zjITr1t
	TcBvAxEi6PxsFScvVRI99IEVPEvUfFDuLALCyPABMKcjr3VZbGFWwQZhx5idxZqFYloxelSpcmlU8
	USS0bhljHylFjojTdxMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkJXY-0000000H2qY-2zCI;
	Thu, 16 Jul 2026 10:42:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkJXX-0000000H2pw-0Wud;
	Thu, 16 Jul 2026 10:42:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 792EA40521;
	Thu, 16 Jul 2026 10:42:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4065F1F000E9;
	Thu, 16 Jul 2026 10:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784198522;
	bh=ZxkAPkC3WXfzJ+jrm3dHu5tnYfHhVvaTEHLkTVNbU3s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=cWpSswwZ2bEb12NpMDDRh3S3qetzA7/F1iP0gnGLzTODpf87XFGhwXVYr6wxeFvFD
	 QEBPPFYJGYDavyEhlAHgWvc8RjwW4Bm9SZnpMlwFUi3fzdPxsOCWNtsHYG/tPDYfTB
	 f5JM4J1OaohIVnCZ0TyptCXWbnivstKEwffVRZMpNi2qiyXgaQS2PK/70mbTUD+b/4
	 2QnGTsrtmg176STrQD/WkJbM8L+OcvtNaJbiG7JIOZSXaS4G18acNENmhdu5IQi60/
	 Cbihh/zTqqNg5QAi1Ngy7IAVn5n0ad6vA5HPbsuNY+gaF20ymhpGRqMBhUwsAytq+w
	 vrrXh+pp7urYw==
From: Lee Jones <lee@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 Samuel Holland <samuel@sholland.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, 
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20260711192842.845048-3-samuel@sholland.org>
References: <20260711192842.845048-3-samuel@sholland.org>
Subject: Re: (subset) [PATCH 2/4] dt-bindings: vendor-prefixes: Add
 techvision
Message-Id: <178419851981.1265391.16595891427832466278.b4-ty@b4>
Date: Thu, 16 Jul 2026 11:41:59 +0100
MIME-Version: 1.0
X-Mailer: b4 0.16-dev-ad80c
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

T24gU2F0LCAxMSBKdWwgMjAyNiAxNDoyODoyNiAtMDUwMCwgU2FtdWVsIEhvbGxhbmQgd3JvdGU6
Cj4gVGVjaHZpc2lvbiBJbnRlbGxpZ2VudCBUZWNobm9sb2d5IENvLiwgTHRkWzFdIGFrYSBTaGVu
emhlbiBIdWl3ZWkKPiBJbnRlbGxpZ2VudCBUZWNobm9sb2d5IENvLiwgTHRkWzJdIGlzIGEgbWFu
dWZhY3R1cmVyIG9mIHNpbmdsZS1ib2FyZAo+IGNvbXB1dGVycy4KCkFwcGxpZWQsIHRoYW5rcyEK
ClsyLzRdIGR0LWJpbmRpbmdzOiB2ZW5kb3ItcHJlZml4ZXM6IEFkZCB0ZWNodmlzaW9uCiAgICAg
IGNvbW1pdDogZjBlMDQxNzM3M2NhNTVkMDdjYmE1OTZlOGFmZTA4MWMwNzg4NDNhZAoKLS0KTGVl
IEpvbmVzIFvmnY7nkLzmlq9dCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
