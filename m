Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7DA2CA0FE1
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 14:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPw65aOaHpzJbEgYpndp1cThqyZvF6wbqkwMsL2/b38=; b=vSSf8rebTHZHdT
	6uARGcqwFgTv/Sg07mRVGT9fv8iT7S4UdN78pRg625HC5IDlieD63WdEVUEvRfmrPBe5Ao5fQaEXH
	PEKU/lrcbwU57Fbxm40G8vPYSH0H1UFFXsb/V/eLvZwfHYZEacrOy0pSFfkcJIfj2HBOFe+XCoEyN
	Ogvi1lzgpR9EIqbtD46JV1Wgm7mAsJq9tNUHJsuxVY83+OGurUDistx9KM3rt5mIF8pr2LoFZrFKU
	mWj06eoG82Dxy/k9N4BlZRuIzCvEDC8kuQbT35RAiKbRvqXLNfg4AEso/ZxDU7q4c2mbfmpKte3Hs
	omvMezFFV2L4IxjFxWvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uppUQ-00000004sJg-0k4C;
	Sat, 23 Aug 2025 14:45:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uppMN-00000004rNa-3gkq;
	Sat, 23 Aug 2025 14:36:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=b4szslA7ZyoDYxRL5lU3Ry83YPf61pXDu12N9fYlNnU=; b=yjODS2TTZXqlklgLHaiMWcDNiQ
	3h58mSclKn2EB8t/kPEwPboVfbiLiaNI1DsvIUWrQeJF8TIO935nUGCdEnaQXc80l6y43X1q7klkO
	Hl1DVJ7H/bH6d7s0Mp9YI921h58yRV08oisb7YhIZER4JwC/dbjT8q+73mIGtUJUZkVmVHWjJoCiR
	/rRszLMs/LBnxb6Loqq9EqqL7/QtBXWnEgVt9Y6n6zD/Pxg/FC8pcV5L2C4Jk19z92D/4l7Q79fvG
	Sx9rVGFZ9g28SI9pnX77Fnx7edcRqwxO3W+jKsbziQ24WfQgHVQF2DKYoA3QwwX7p9N5/MOROvwnJ
	V7MRdiCw==;
Received: from i53875b90.versanet.de ([83.135.91.144] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uppMF-0000aK-Bv; Sat, 23 Aug 2025 16:36:39 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: dmitry.baryshkov@oss.qualcomm.com, Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v7 03/10] drm/rockchip: Add RK3588 DPTX output support
Date: Sat, 23 Aug 2025 16:36:38 +0200
Message-ID: <3723317.0YcMNavOfZ@diego>
In-Reply-To: <20250822063959.692098-4-andyshrk@163.com>
References: <20250822063959.692098-1-andyshrk@163.com>
 <20250822063959.692098-4-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_073647_909839_CC467056 
X-CRM114-Status: UNSURE (   7.00  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, Dmitry Baryshkov <lumag@kernel.org>, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgMjIuIEF1Z3VzdCAyMDI1LCAwODozOTo0NyBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEFuZHkgWWFuOgo+IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkBy
b2NrLWNoaXBzLmNvbT4KPiAKPiBBZGQgZHJpdmVyIGV4dGVuc2lvbiBmb3IgU3lub3BzeXMgRGVz
aWduV2FyZSBEUFRYIElQIHVzZWQKPiBvbiBSb2NrY2hpcCBSSzM1ODggU29DLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPiBBY2tlZC1ieTog
RG1pdHJ5IEJhcnlzaGtvdiA8bHVtYWdAa2VybmVsLm9yZz4KPiBUZXN0ZWQtYnk6IE5pY29sYXMg
RnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1i
eTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
