Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DC2FC282EC
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Mar 2025 16:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGTiPkmgzXqa+uVAs62/EOwtxiKiApM3gzQ0jh40xYI=; b=VIouzCm1LgRZmh
	WKZnQNKVDiNxXUoF4xUJJgAcakkB6aOXNWKXnPDZZqAA+ukm8IAuILGy75RHB6K2suoHOlX1MsYBK
	AllgvW+xRelBE4Lb7EQspbJZ5n5mAvN/B95hS3SEWK8ItUEDWqh3lyANjlhdfGSvEYnPJvOspWNNS
	R87Na09LkBljsupMT59z128D9H7FbGTq7d+yhvIK5yGvVgqPKyIlaeCn4wmLcrgCZ5jGpqZYuotug
	ci/0Qs7bg37MeIPPAgYumO3qquSPD5bPiuGVASWrH/u2lmWRO2U7bJKeq6LQJHiVd91gsaF0LIYLe
	mU9i3WUNy3Ep64jfz8Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqxQg-0000000Gtpz-2kRj;
	Sat, 08 Mar 2025 16:53:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqxP3-0000000GtZw-00PM;
	Sat, 08 Mar 2025 16:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=H2BsNafZeYvp9wbkGN2qGL99O0ortwb9hsZ0gqUcIdA=; b=EZ1vdrVVdILyYK9dTDvtM7OoD3
	+qArpJvcSeElp9yPV81y5wQCiFYrtzFh4jIwIPPbd6kNm0oYAfywwQHxioFHDr4yRgXKaR5ALGwjX
	dWHgcLVL3kaRYIDyjT+zmCjLyOsukR/DtVn2w+3Tti8XIb/qFTCG+LMSftEPjWJYXp9HhkEjt5pg0
	qUFZEsG7r3zj3E6PLaJI9HmBpPVt32OM4Q0yw7keWSjLVCfudBHVtOmS+Mqv3N8asn/rA5B/exSz8
	YARA9KImzZKKEtHtbCxfmSdeLgkPIC1dWkkTg+UNRzk6dG4iFZMBGCpgywcb0QvmYolvJnOFsTSlR
	97cq09TQ==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqxOw-000463-O9; Sat, 08 Mar 2025 17:51:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Andy Yan <andyshrk@163.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Add support for RK3576
Date: Sat, 08 Mar 2025 17:51:50 +0100
Message-ID: <5069079.31r3eYUQgx@phil>
In-Reply-To: <20250306-rk3576-hdptx-phy-v1-1-288cc4b0611a@collabora.com>
References: <20250306-rk3576-hdptx-phy-v1-1-288cc4b0611a@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_085157_036127_AA712413 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
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
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAyNSwgMjA6Mjk6MjMgTUVaIHNjaHJpZWIgTmljb2xh
cyBGcmF0dGFyb2xpOgo+IERlc3BpdGUgdGhlIGNvbXBhdGlibGUgYWxyZWFkeSBiZWluZyBsaXN0
ZWQgaW4gdGhlIGJpbmRpbmdzLCB0aGUgUEhZCj4gZHJpdmVyIG5ldmVyIGdhaW5lZCBleHBsaWNp
dCBzdXBwb3J0IGZvciBpdC4gVGhpcyBpcyBlc3BlY2lhbGx5IGEKPiBwcm9ibGVtIGJlY2F1c2Ug
dGhlIGV4cGxpY2l0bHkgbGlzdGVkIFBIWSBhZGRyZXNzZXMgbmVlZCB0byBiZSBzcGVjaWZpZWQK
PiBmb3IgZWFjaCBTb0MuCj4gCj4gVG8gc29sdmUgdGhpcywgYWRkIHRoZSBjb21wYXRpYmxlLCBh
bmQgYSBQSFkgY29uZmlnLCB3aXRoIHRoZSBhZGRyZXNzCj4gZ2xlYW5lZCBmcm9tIHJrMzU3Ni5k
dHNpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0
dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtv
QHNudGVjaC5kZT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
