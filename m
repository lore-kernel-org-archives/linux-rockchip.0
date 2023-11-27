Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 785A6C07E98
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 23:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sO0i5smZ7y1KZh0GQUM6fchtcqgWPujJ6kLSTX232DE=; b=sXiQETEWOCEwvs
	WxKZDhOUB6vsiDgaudaxZl4MrryStD7zpaqR0uM2ZL1N7kw+nCDHt6IEam85e7ZHD5F0d7aWSHRaZ
	PEvu3ZuV0AncA8z47RTlsapyNr9qk810B6i/JLNaYRl/0NPRFLHb9qtr/1kHr6tQ8jCrL2kjp7uIO
	jo0srlsIPpUgQVB79v5R8KMy46LBsccE9yesnem1zjNdkfOY+E7+I5E6hDhPktg5MxNvCWvD91a2E
	G9rxLeX1Gry0ixO+1F6mVX7+dtCRbUJCJ2pC8RkJEBTEAuyL3aVHKO70TQlY9/MSZ5nn+QiXrIFCN
	rqDHU9bWoW1xlkwM2mdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7kzY-003f1d-0A;
	Mon, 27 Nov 2023 23:26:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7kzS-003eyz-0l;
	Mon, 27 Nov 2023 23:26:12 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7kzO-0007MW-01; Tue, 28 Nov 2023 00:26:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588s-orangepi-5: add USB3 host
Date: Tue, 28 Nov 2023 00:26:02 +0100
Message-Id: <170112754113.2134471.14282236537972673395.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231126200845.1192-1-honyuenkwun@gmail.com>
References: <20231126200845.1192-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_152610_273855_76C27519 
X-CRM114-Status: UNSURE (   8.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 26 Nov 2023 14:08:45 -0600, Jimmy Hon wrote:
> Enable USB3 host controller for the Orange Pi 5.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588s-orangepi-5: add USB3 host
      commit: 86a12ca6e12b70cfa4694d885c51007334172c3c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
