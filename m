Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5878C4450E
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 10:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcbV1TOSKKVWv10tztEapoJeWngpuhBDKIu/Hln5x4k=; b=p4ozfwPbisA053
	qVBXZRjfF2ULv1WU8v1pDuin23rF0yP2oozw644Q54UZPwuape5LZ9aggFo2rkF2uwQGNW9/KOL5A
	hHiG4xTEYVuzJT/CjyJ8mMEBLcKADiJWcLWwDrq/gZgezNsaqEeN2pYD+B+hjHZ2dNFBqx4NmUzTT
	bBrBXBtFknODTFhiv0+vbt9t8T54kPzQ4yUSs/1uUegqWamvk+l8Xlb/SAvPb1WRiDuKvKiH7iXs9
	m9/cFBax2gPuhl6aHZ7Mq/M7ajnw5UyED6fA1TkatuinFVTPmnREBRNUU0MXsZy+6hy0jDzhmXSY9
	Fk/C1B1p493w1s6Vaucg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkJFi-0000000H04T-1rQK;
	Thu, 16 Jul 2026 10:23:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkJFg-0000000H03t-2oIK;
	Thu, 16 Jul 2026 10:23:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 15EB140451;
	Thu, 16 Jul 2026 10:23:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 740BD1F00A3A;
	Thu, 16 Jul 2026 10:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784197416;
	bh=1bFxSJUtoDhVL62DJfCXe3Dinu50IPeIL+flIXU/z8o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=V/c+G04UfE8KzxJVV1UfaE6JXSz+1NcakKL78kfzp4LSpN1bNflN+gYYoxeSSOjpW
	 C8eSLE1J0VX6Bxd1QLuEiTmHtvg9fHO/rauAJxACoPFgVuMwJ0UpKpQkValBB9nZAI
	 wauOc3xIAXCn6u/hLBZHbMdLf0LfOMBnFF2g84eEo0XuFVaYknWcai/8ETNZSHSB5U
	 vIy2COx4S4pL1weDWSe1ktAFTvoC8BvnL3bM5tn6yRTH51ARxtGJcE653pHWOA2M8q
	 Q7GkHs7qGo+51cZBOKkn+pRFBvJ97zCtWYnN1CfZyX6gxKdq9HGehnsDFX1EWAzYE5
	 NphU9LtJwzqzw==
From: Lee Jones <lee@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 Samuel Holland <samuel@sholland.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, 
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20260711192842.845048-2-samuel@sholland.org>
References: <20260711192842.845048-2-samuel@sholland.org>
Subject: Re: (subset) [PATCH 1/4] dt-bindings: leds: Document "gpio"
 trigger
Message-Id: <178419741320.1254511.5387639969436982664.b4-ty@b4>
Date: Thu, 16 Jul 2026 11:23:33 +0100
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

T24gU2F0LCAxMSBKdWwgMjAyNiAxNDoyODoyNSAtMDUwMCwgU2FtdWVsIEhvbGxhbmQgd3JvdGU6
Cj4gVGhlICJncGlvIiB0cmlnZ2VyIGlzIHVzZWQgdG8gY29udHJvbCBMRURzIGJ5IHRoZSBsZXZl
bCBvZiBhIEdQSU8gaW5wdXQKPiByZWZlcmVuY2VkIGJ5IHRoZSB0cmlnZ2VyLXNvdXJjZXMgcHJv
cGVydHkuIFRoaXMgaXMgYWxyZWFkeSBkb2N1bWVudGVkCj4gaW4gdGhlIHRyaWdnZXItc291cmNl
cyBwcm9wZXJ0eSBkZXNjcmlwdGlvbiBhbmQgaXMgdXNlZCBpbiBhdCBsZWFzdCBvbmUKPiBkZXZp
Y2V0cmVlIChhbTMzNXgtcmVnb3IuZHRzaSkuIERvY3VtZW50IGl0IHNvIHZhbGlkYXRpb24gb2Yg
dGhvc2UgYW5kCj4gZnV0dXJlIERUcyB3aWxsIHBhc3MuCj4gCj4gCj4gWy4uLl0KCkFwcGxpZWQs
IHRoYW5rcyEKClsxLzRdIGR0LWJpbmRpbmdzOiBsZWRzOiBEb2N1bWVudCAiZ3BpbyIgdHJpZ2dl
cgogICAgICBjb21taXQ6IDRkOGRhN2UzZGMwZDQ1MTJlNWU2ZjI5ZGYzY2ExMzZkN2E5MGQ0NjQK
Ci0tCkxlZSBKb25lcyBb5p2O55C85pavXQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
