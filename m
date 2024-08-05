Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 206E7C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 16:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVDUTbDo74jwz2Op30VaKEaU88jPjmM0GfG+L0ghh8g=; b=VXxNiIoYTMy1AI
	kiKSzoGdC/mHrC8V5PwbglaPG5gkjUXmeDy1oQGpfQMdoNlUucdS3Zn7VbRx5iESz8l56QYdUJEOw
	t1bovIvyZ3FbEqnvesptIL2HIEOdY/eqbGMJr7p49xKVeMB1t7lWMjmhPVvJm3CJrA6lKtP7eyiGN
	yabbWIBrvHnmQIVeqM9+QvcIYBZCCJQuO1lXHF6nXMGQfk2l0n/M1FN1I9OqgD1YxooE9G25d8q1l
	i+uWU5Cn+mr8nMsn/mlSJ4/pDuHCv0Kfa2b3h91XZ7KTHCGDljyfMyU3gN9H9yiWbyzJtcQ4i8C6R
	YcZ0Zdjs0Bty2XpUyqIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0Uy-0000000GUkO-2RCL;
	Mon, 05 Aug 2024 16:23:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0Uw-0000000GUig-02Jf;
	Mon, 05 Aug 2024 16:23:51 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sb0Un-0003eC-14; Mon, 05 Aug 2024 18:23:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon,  5 Aug 2024 18:23:37 +0200
Message-Id: <172287498972.3346132.12448980671248585098.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304084612.711678-2-ukleinek@debian.org>
References: <20240304084612.711678-2-ukleinek@debian.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_092350_065449_4EA00A9D 
X-CRM114-Status: UNSURE (   9.88  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCA0IE1hciAyMDI0IDA5OjQ2OjExICswMTAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToKPiBXaGlsZSBpdCByZXF1aXJlcyB0byBoYXZlIHRoZSByaWdodCBwaHkgZHJpdmVyIGxvYWRl
ZCAoaS5lLiBtb3RvcmNvbW0pCj4gdG8gbWFrZSB0aGUgcGh5IGFzc2VydGluZyB0aGUgcmlnaHQg
ZGVsYXlzLCB0aGlzIGlzIGdlbmVyYWxseSB0aGUKPiBwcmVmZXJyZWQgd2F5IHRvIGRlZmluZSB0
aGUgTUFDIDwtPiBQSFkgY29ubmVjdGlvbi4KPiAKPiAKCkFwcGxpZWQsIHRoYW5rcyEKClsxLzFd
IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBxbmFwLXRzNDMzOiBTaW1wbGlmeSBuZXR3b3JrIFBIWSBj
b25uZWN0aW9uCiAgICAgIGNvbW1pdDogZThkNDU1NDRmODA2ZjNiNTVjMzAzNDVkZTg0MjYyY2Ji
OTUwNDkwMgoKV29ya3MgbmljZWx5IG9uIG15IFRTNDMzIDotKQoKCkJlc3QgcmVnYXJkcywKLS0g
CkhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
