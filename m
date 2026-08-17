Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE6ACC5B572
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2026 16:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBrzg1EsEThOKw9sg7uPcFQECzq+hRb8ojmajF8qnVc=; b=yixoVTVe9nz//A
	xScewuXDdBswkcMD6uSQrM32iAOTSktF2Ile3Wa69wzj77BYm2jFdbFP8JD+YTm95kSq0eM6bHcee
	ZwPx6MTtTrkJWWGXOy2A0GLKcl7jEU++t3wgWakLr+lLXezJbGgsSdgWH1j7FpFNlZQ7RpwUkbJAW
	6Qb1EWPXsHCxvD2LpbWeMQ2JW73CNwzGxLeMMQ7dKj8/J8LADekfV4nWCOBn85tXMfVyafYbzCeFw
	r6ihmECQNjYmMMkKKlZUy5toUDk26b2DF7SGpHzEHSf9YKEr95fSVMh1ZWuX6WDNTUPoDaEIx1lzX
	uS1PhgirxjC2emuf9kiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww09F-00000006Vuz-0WNU;
	Mon, 17 Aug 2026 16:25:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww09C-00000006Vu5-1xpl;
	Mon, 17 Aug 2026 16:25:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=itpN6ATWZzDI6Gf6iahFT31A2k/lQeZZFl4EfK17TNQ=; b=AYFPdpefVLE763eFsrJfYx22tO
	4KsmLt40V3mczAZnJV//laYr/5Djz88BSJNiThqm01+FoW5aaVex2wIvTfYao+UgMlWsIsWMeMOTy
	CC0wKFXxE/l/i8nSi4l862JXjOnc0F/edk8ShneewT8MdwNnoqvLJ+xrCNBogA3MTt8VYCNe+yePg
	O9jLvtg+6cfb17mJ3slNFscQzK+MEHXTj2LHX1JTrhtCTpYsmEmXEoj/qHIs0UhPpyIZ+5ur0jFSM
	gcmHfwvd1C8YeNIAw/dwl55BNk6qq/sSq6x/7ZUCVCQGQyN9sf6R/yAvdxQv1ZEtxlm7NW3stGjRx
	/s24wrcg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Cunhao Lu <1579567540@qq.com>, Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v6 0/4] can: rockchip: add RK3588 CAN support
Date: Mon, 17 Aug 2026 18:25:02 +0200
Message-ID: <6011470.tIAgqjz4sF@diego>
In-Reply-To: <20260817-guillemot-of-premium-saturation-6b893d-mkl@pengutronix.de>
References: <tencent_7BAA0052C402BFFD26291A64198084E39107@qq.com>
 <20260817-guillemot-of-premium-saturation-6b893d-mkl@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_092514_677350_2F266D7C 
X-CRM114-Status: GOOD (  15.15  )
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

QW0gTW9udGFnLCAxNy4gQXVndXN0IDIwMjYsIDE4OjIzOjAzIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTWFyYyBLbGVpbmUtQnVkZGU6Cj4gT24gMzAuMDcuMjAyNiAyMjoz
NDowMSwgQ3VuaGFvIEx1IHdyb3RlOgo+ID4gQWRkIHN1cHBvcnQgZm9yIHRoZSBSSzM1ODggQ0FO
IGNvbnRyb2xsZXIuCj4gPgo+ID4gUkszNTg4IGludGVncmF0ZXMgdGhyZWUgQ0FOLUZEIGNvbnRy
b2xsZXJzIHRoYXQgYXJlIGNsb3NlbHkgcmVsYXRlZCB0bwo+ID4gdGhlIGV4aXN0aW5nIFJvY2tj
aGlwIENBTi1GRCBJUCBhbHJlYWR5IHN1cHBvcnRlZCBpbiB0aGUga2VybmVsLiBUaGUKPiA+IFJL
MzU4OCB2YXJpYW50IGlzIG5vdCBmdWxseSBjb21wYXRpYmxlIHdpdGggUkszNTY4djIgYmVjYXVz
ZSB0aGUgUlgKPiA+IEZJRk8gY291bnQgcmVnaXN0ZXIgZmllbGQgaGFzIGEgZGlmZmVyZW50IGxh
eW91dC4KPiA+Cj4gPiBUaGlzIHNlcmllcyB0aGVyZWZvcmU6Cj4gPgo+ID4gLSBleHRlbmRzIHRo
ZSBleGlzdGluZyBSb2NrY2hpcCBDQU4tRkQgYmluZGluZyB3aXRoIHRoZQo+ID4gICByb2NrY2hp
cCxyazM1ODgtY2FuZmQgY29tcGF0aWJsZQo+ID4gLSBhZGRzIGEgZGVkaWNhdGVkIFJLMzU4OCBt
YXRjaCBlbnRyeSBhbmQgZGV2dHlwZSBpbiB0aGUgZHJpdmVyCj4gCj4gSSdsbCB0YWtlIHRoZSBm
aXJzdCAyIHBhdGNoZXMuCj4gCj4gPiAtIGRlc2NyaWJlcyB0aGUgdGhyZWUgQ0FOIGNvbnRyb2xs
ZXIgbm9kZXMgaW4gcmszNTg4LWJhc2UuZHRzaQo+ID4gLSBlbmFibGVzIENBTiBvbiB0aGUgUksz
NTg4IFRpZ2VyIEhhaWtvdSBib2FyZAo+IAo+IFRoZSBEVCBjaGFuZ2VzIHNob3VsZCBwcm9iYWJs
eSBnbyB2aWEgdGhlIHJvY2tjaGlwIHRyZWUuCgp5ZXAgOi0pIC4KCkknbGwgcGljayB0aG9zZSB1
cCBhZnRlciB0aGUgbWVyZ2Utd2luZG93LgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
