Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64D0AC5DF81
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 14:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:In-Reply-To:
	Cc:To:Subject:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drlmlDk8BFp7A6TyMyRz9ZUtwSFsP+bwt65tsRrFmcM=; b=WdYPRcwSDyvfg7
	DipsIpFoaBS/5TE+DOSBW6mIsFDH8gQ2D/lq1VWXonHH/GzOCkM0D6jA5F1BlWSHO9v/ErJ3aE3So
	Gj+nZl3sLG+JOZOgfu4xz4cEre4g7a0LKkL8rHH4tT2tK/tvx1UQ4DvB5LrHiiPHkSKLLanB/Gk1h
	3cRIIRUbJ03+oxBPbM07avB5wRd9VEleUmWBmDpzqQumClT4soIBByF0vBFi8VqrDy8dIpOBfC/Du
	3eeYPSZ28dZJA89KSVlWfbW/00m33DLhvwfYh43xA2Xdyq5DRKnt3hv/KCGIaAuNiS2hBDJ5ZkwYP
	0WfMlW0Es70HHIcVPZNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwh20-00000009woH-1QT1;
	Wed, 19 Aug 2026 14:12:40 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwh1w-00000009wnZ-3SUc;
	Wed, 19 Aug 2026 14:12:38 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B22312010D6;
	Wed, 19 Aug 2026 16:12:30 +0200 (CEST)
Message-ID: <032e7297-65b3-477c-9fcc-f6e4bae17a8a@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 5/7] media: verisilicon: Add Rockchip VPU720 JPEG
 decoder
To: =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>
Cc: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>, "Benjamin Gaignard" <benjamin.gaignard@collabora.com>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Mauro Carvalho Chehab" <mchehab@kernel.org>, "Ezequiel
 Garcia" <ezequiel@vanguardiasur.com.ar>, "Andrzej Pietrasiewicz" <andrzej.p@collabora.com>, "Hans
 Verkuil" <hverkuil@kernel.org>, "Chen-Yu Tsai" <wenst@chromium.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Lucas Sinn" <lucas.sinn@wolfvision.net>, "Sascha
 Hauer" <s.hauer@pengutronix.de>, "Mauro Carvalho Chehab" <mchehab+huawei@kernel.org>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, "Sascha
 Hauer" <s.hauer@pengutronix.de>
In-Reply-To: <5715409.BjyWNHgNrj@diego>
References: <20260819-rk3588-jpegdec-v1-0-33d74cdf369c@pengutronix.de>
 <20260819-rk3588-jpegdec-v1-5-33d74cdf369c@pengutronix.de>
 <5715409.BjyWNHgNrj@diego>
Date: Wed, 19 Aug 2026 14:12:30 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_071237_019123_D5C47BB7 
X-CRM114-Status: GOOD (  15.18  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiAyMDI2LTA4LTE5IDE0OjQ2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSwKPiAK
PiA+ICtzdGF0aWMgaW50IHZkcHU3MjBfZmlsbF9jaHJvbWEoc3RydWN0IGhhbnRyb19jdHggKmN0
eCwKPiA+ICsJCQkgICAgICAgc3RydWN0IHZiMl92NGwyX2J1ZmZlciAqZHN0X2J1ZikKPiAKPiBb
Li4uXQo+IAo+ID4gKy8qKgo+ID4gKyAqIHJvY2tjaGlwX3ZwdTcyMF9qcGVnX2RlY19pbml0KCkg
LSBhbGxvY2F0ZSB0aGUgcGVyLWNvbnRleHQgRE1BIHNpZGUgYnVmZmVyCj4gPiArICogQGN0eDoJ
Y29udGV4dCB0byBhbGxvY2F0ZSB0aGUgUS9IdWZmbWFuIHRhYmxlIGJ1ZmZlciBmb3IKPiA+ICsg
Kgo+ID4gKyAqIFJldHVybjogMCBvbiBzdWNjZXNzLCAtRU5PTUVNIGlmIHRoZSBidWZmZXIgY291
bGQgbm90IGJlIGFsbG9jYXRlZC4KPiA+ICsgKi8KPiAKPiBhZ2FpbiBjb21tZW50IHN0eWxlICgg
Ii8qKiIsIGFsc28gdGhlIGN0eCBsaW5lIGNvdWxkIHVzZSBhIGJsYW5rIGxpbmUgYWJvdmUgaXQp
Cj4gU2VlbWluZ2x5IG9uZSBmdW5jdGlvbiBiZWZvcmUgdGhpcyB0aGUgTExNIGRpZCBnZXQgaXQg
cmlnaHQ/CgpJdCdzIG5vdCBhcyBpbmNvbnNpc3RlbnQgYXMgaXQgc2VlbXMuIFRoZSBleHBvcnRl
ZCBmdW5jdGlvbnMgaGF2ZSBhCmtlcm5lbGRvYyBoZWFkZXIgd2l0aCAvKiogYW5kIHRoZSBhcmd1
bWVudHMgZGVzY3JpYmVkLCB0aGUgc3RhdGljCmZ1bmN0aW9ucyBqdXN0IGhhdmUgYSBmcmVlc3R5
bGUgaGVhZGVyLiBEb2N1bWVudGF0aW9uL2RvYy1ndWlkZS9rZXJuZWwtZG9jLnJzdAphbHNvIGRv
ZXNuJ3QgaGF2ZSBhIGJsYW5rIGxpbmUgYmV0d2VlbiB0aGUgZnVuY3Rpb24gbmFtZSBhbmQgdGhl
IGZpcnN0CmFyZ3VtZW50LgoKSSBjb3VsZCBjaGFuZ2UgdGhlIHN0YXRpYyBmdW5jdGlvbiB0byBr
ZXJuZWxkb2MgYXMgd2VsbCBpZiB5b3UgcHJlZmVyCnRoYXQuCgpTYXNjaGEKCi0tClBlbmd1dHJv
bml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0
dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAg
ICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0
IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTct
NTU1NSB8CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
