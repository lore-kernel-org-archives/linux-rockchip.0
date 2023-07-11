Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AC53EB64DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 14:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OmuiJGpxXa91Y/uvTGjotdCs25hLms4axaJQQpXkDg=; b=V1WKQoqG3+mcVV
	e292kq4rSWHaeUaiyt/+bf6DK1zTFZLpAVm9J9tBxYHU40xPAVL4pOtREfi14tdStOm0RlPPmbAkM
	9dRqzeyaM4eEIBxZvmpY6AQcZt+wZzjwlDoD6q512wKli6+sGjyie1n/3rPxgTVIxNxjLBCRUzhQG
	VNGd9EyAEdJNVqP9Av0NTxN+BseassIWa5fSIWwMEjeRqUyZaMaC0UtnEz5SE3PQkQ1B6EH53dXln
	7WVLC7RcZmu3qkws0kD4diFnNMTeGd9R0oL5n0KM334rKDyv/LS/bWyoz/HNccso64FTFU16vI0O3
	AGgtZEUTV520lrmK9H+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEfi-00FB71-2G;
	Tue, 11 Jul 2023 14:48:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEfe-00FB3W-07;
	Tue, 11 Jul 2023 14:48:56 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qJEfY-0000LD-5Q; Tue, 11 Jul 2023 16:48:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588: Drop unchanged max-frequency
Date: Tue, 11 Jul 2023 16:48:43 +0200
Message-Id: <168908688811.1964886.9859640412943282070.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230621064507.479891-1-jagan@edgeble.ai>
References: <20230621064507.479891-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_074854_073910_8AF0A98F 
X-CRM114-Status: GOOD (  10.35  )
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

T24gV2VkLCAyMSBKdW4gMjAyMyAxMjoxNTowNyArMDUzMCwgSmFnYW4gVGVraSB3cm90ZToKPiAy
MDBNSHogaXMgdGhlIGRlZmF1bHQgcmszNTg4IGVtbWMgbWF4LWZyZXF1ZW5jeSBhZGRlZCBpbiBk
dHNpLCBzbyB3aHkKPiB0aGUgYm9hcmQgRFQgZmlsZXPCoGFyZSBhZGRpbmfCoHRoZSBzYW1lIHZh
bHVlIGV4cGxpY2l0bHk/Cj4gCj4gRHJvcCB0aGF0IHVuY2hhbmdlZCBwcm9wZXJ0eSB2YWx1ZS4K
PiAKPiAKCkFwcGxpZWQsIHRoYW5rcyEKClsxLzFdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiByazM1
ODg6IERyb3AgdW5jaGFuZ2VkIG1heC1mcmVxdWVuY3kKICAgICAgY29tbWl0OiBlNzBkMjgzOTA0
ODI5NzEzZjU0NTRiMjQ3MThkZDU4ZTI1NTdkMTJiCgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
