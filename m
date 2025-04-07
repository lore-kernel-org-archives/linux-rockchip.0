Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DD52C36010
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 07:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYzBXuSL5gy4frPHGTh2itQHZS3WR7ZEucv7YUlgP9A=; b=p7zC734QgP/fxR
	VEq+2c7i2x3MBqCbG6xiFZULbURiO4oKNgSYhPYxHwj8ntUA9WwAKaqjj2og3KOX4ErG3Ue3nKRmR
	4edPfxzNwfZR0rvEDOxHBrYJFjigbVt9a+/6yZSu7qt6PlHQu0SXKCuoTQczBmhqcgQcH5fXmMbZH
	nXECAzCXGktnKIx6BHmw8wdbUxAUtq8gLi+j5gqLN8at29b36N67ygPw1BtOOzeUoY+5PO/eCbYwF
	IB5BDAm+zkQDSGF9hI7EtPPWjU6ocWv+LyymokLLS1/fdvB2yc0S9bDTK+GTeIo+zxM6yMQUaz/iR
	PRQPPc9lmsgOHcIEAHKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1h5Q-0000000GoeI-0pxO;
	Mon, 07 Apr 2025 07:40:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gkA-0000000GiUK-0LCf;
	Mon, 07 Apr 2025 07:18:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Z35n/I5ZQnUdwdTSCOwVuX+sPzMGiNSaTdRQEUGKfpI=; b=hvmV7kbE3LWi26OEOqi6sohWRp
	wqBbKble0X4bqSf+W5prcG+tOoIe8pXOYPeeCwCOYoZvTX5tbFGVTNHxHyDwVB+HjVclPBmhhz7n1
	dOlKyScPYnXcfGMs8KniXHbq9NbxkrDgEkYKFtyrf2ia4ZmY2Iwk9sE+TPJb3oePDTfSLb14OPIUn
	2yci4Jf7fk/1tHnerKCkQnBOZZOUiT023NvGy/wXIOAlY/bbzGzfPnpLSCHe2onXE6gNGazJO29Ii
	pDmSMH7wPyVag+TVECufHaEBzfUbD87ZfyQfxeSf/Y4xIN+zbWeyjEUvcil4OzB3ZV2BGCUXw5LnV
	l1FguUGA==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u1gjy-0000tP-9S; Mon, 07 Apr 2025 09:17:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Improve gmac phy setup for QNAP-TS433
Date: Mon,  7 Apr 2025 09:17:46 +0200
Message-ID: <174401024397.372530.4895011120714473164.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1742331667.git.ukleinek@kernel.org>
References: <cover.1742331667.git.ukleinek@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_001806_120360_F7921EE9 
X-CRM114-Status: GOOD (  12.49  )
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

Ck9uIFR1ZSwgMTggTWFyIDIwMjUgMjI6MDg6NDQgKzAxMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdy
b3RlOgo+IGFzIHN1Z2dlc3RlZCBieSBIZWlrbyBJIHNwbGl0IHRoZSBwYXRjaCB0byBpbXByb3Zl
IHRoZSBwaHkgc2V0dXAgb2YgdGhlCj4gZ21hYyBldGhlcm5ldCBpbnRvIHR3byBwYXRjaGVzLiBU
aGUgaW5pdGlhbCBwYXRjaCBjYW4gYmUgZm91bmQgYXQKPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1hcm0ta2VybmVsLzIwMjUwMzE4MTg0NTUwLjQ3NjQyLTItdXdlQGtsZWluZS1rb2Vu
aWcub3JnLyAuCj4gCj4gSGVpa28gYWxzbyBzdWdnZXN0ZWQgdG8gYWRkIEZpeGVzIHRhZ3MuIEkn
bSB1bnN1cmUgdGhlc2UgYXJlIGp1c3RpZmllZAo+IGJlY2F1c2Ugd2hpbGUgdGhlc2UgcGF0Y2hl
cyBhcmUgYW4gaW1wcm92ZW1lbnQgdGhlIG9sZCBkZXZpY2V0cmVlIGlzCj4gd29ya2luZyBmaW5l
LiBJIHN1Z2dlc3QgSGVpa28gdG8gYWRkIHRoZSB0YWdzIGlmIGhlIGZlZWxzIHN0cm9uZ2x5Cj4g
ZW5vdWdoIGFib3V0IHRoZXNlLgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8yXSBh
cm02NDogZHRzOiByb2NrY2hpcDogQ29ycmVjdCBnbWFjIHBoeSBhZGRyZXNzCiAgICAgIGNvbW1p
dDogODMxMjYzYTQxNjRlMTg5YzQ3ZTNhOWVhMTg5Y2I0YjViYzA3OGIxZQpbMi8yXSBhcm02NDog
ZHRzOiByb2NrY2hpcDogQWRkIGdtYWMgcGh5IHJlc2V0IEdQSU8KICAgICAgY29tbWl0OiBkMDFl
MDlhOWY3Y2Q0ZmI1YTk0N2UzZGM3MTgyNDJiNTFiNTgxNjE1CgpCZXN0IHJlZ2FyZHMsCi0tIApI
ZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
