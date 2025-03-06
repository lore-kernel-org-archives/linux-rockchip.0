Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CF2BC28B24
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 15:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3pd10Xz6cZxIMk3iYywxIqMm4gGGT7FTgMrLazjb+s=; b=ihJTy3E5OOxRw/
	4a6/d3L7ymfUR8TNNJ+9XLsjoxqiUw3d3xvzKKoxWllVxeSg+KmV2J8Zc19eeW39ztds5kJ+G2+Bc
	u3rUR3QYnW/3HmYZqMVevTniJ7ZUq6w1iF7T7dzFj+9UC+JHfDMKPLTnYQYJQ66UAPdl4O4m/H7le
	muZvEJ02O4mUwR6XNDi9Bu8Oxl8AAT1VCNEkMuESWM8lHwvbGr/VGqJEmHMUGqjOHnlMWXNQwBeiC
	o6Mlw9PII5SxbH7NjEvzn/VgyW3JxaUq8V9La/UeDJZ7XvXaO9N2TyKD6PZdp8NcEIK6aO1XpgiJg
	84KUyYcXCWlUX5LGDLcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqDEY-0000000BL6Y-1Byt;
	Thu, 06 Mar 2025 15:34:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqCAS-0000000BCIX-2IRo;
	Thu, 06 Mar 2025 14:25:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=n5aD5c3lPAMGKpNg0pZzLgDxoQS/0A88tfAf7d3Ga4w=; b=VbHNERiPVO6UZVnSVLhH/tOQiz
	HLsRkehic5Kdr8Pkuh5l32tXLLGTr0jhQtsWV1LR8rF+68sFVabAncu0fMP4PLN9WUaCt3YLNwSMJ
	8ni205h1cSu/7MwtOXW8pGSzGwa/E2cY+umKUZzBEgZrrm9kaHOQvmYd0NkSv1gwi61L6K60D0Ql5
	GYNOi8ZtbUVJZzAGpFHczQQewDlR0l+5tjK2v7YgoHuwMXiDg7uhwa7VqSh0JiTcJTycvLQEYHOaF
	GyylM3xLjEWC8L2ZNMf5X9PyGDM15ntLOcfiFxAXCm52uujTsq6dxcADQIQ1zO+4odHPrgRdWRHWv
	dG7NbngA==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqCAL-0003oY-Bc; Thu, 06 Mar 2025 15:25:37 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: krzk@kernel.org, Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable SCMI clk for RK3528 SoC
Date: Thu, 06 Mar 2025 15:25:36 +0100
Message-ID: <24848438.6Emhk5qWAg@diego>
In-Reply-To: <20250306142008.389243-1-amadeus@jmu.edu.cn>
References: <10115c0f-4a7f-460a-a0bd-0c86d1e7d3b6@kernel.org>
 <20250306142008.389243-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_062544_602382_F69B21BA 
X-CRM114-Status: GOOD (  12.34  )
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

QW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAyNSwgMTU6MjA6MDggTUVaIHNjaHJpZWIgQ2h1a3Vu
IFBhbjoKPiBIaSwKPiAKPiA+PiBBbnkgc3VnZ2VzdGlvbnMgd291bGQgYmUgZ3JlYXRseSBhcHBy
ZWNpYXRlZC4KPiA+IFdoZXJlIGlzIHRoZSBTUkFNIGxvY2F0ZWQ/IEluc2lkZSB0aGUgU29DIG9y
IGlzIGl0IGNhcnZlZCBvdXQgZXh0ZXJuYWwKPiA+IFJPTS9SQU0/Cj4gCj4gSXQgaXMgbG9jYXRl
ZCBpbiB0aGUgU29DLgo+ICJFbWJlZGRlZCBNZW1vcnkiIEFyZWE6Cj4gQm9vdFJPTSB8IFBNVV9T
UkFNICg4S0IpIHwgU1lTVEVNX1NSQU0gKDY0S0IpIHwgT1RQCgphcmUgeW91IHJlYWxseSBzdXJl
IGFib3V0IHRoYXQ/CgpMb29raW5nIGF0IEpvbmFzJyByZWNlbnQgcmszNTI4IHUtYm9vdCBzZXJp
ZXMgWzBdCjB4MCBfdG9fIDB4ZmMwMDAwMDAgaXMgdGhlIFNEUkFNIG1lbW9yeSBhcmVhCnNvIDB4
MTBmMDAwIGlzIGEgY2FydmVvdXQgb2YgdGhlIG1haW4gc2RyYW0uCgoKSGVpa28KCgpbMF0gaHR0
cHM6Ly9saXN0cy5kZW54LmRlL3BpcGVybWFpbC91LWJvb3QvMjAyNS1KYW51YXJ5LzU3ODM5My5o
dG1sCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
