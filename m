Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 439BDC71135
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 09:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qjj9Ne2KDuiQL5acnVX5icrN+IeuT3KEzP7v3vxqvw=; b=dlvxbO/WBqrGJx
	8yebEhh5kDn4fYLwJg37KCoete9J4hVhnYLFMAP0GqPrmKhNWFhwg5qaDtyJFWlAojwnR16vcRUXt
	EPBpo8yOq2c6voN8bcF2cY8W2uQXymhKMrb/vSNvKJLLtKd1Z0w0fIxftpseX7FPrlsvYLsVFlszc
	urLRWQoDJ7jGd61dGi9AY2CGEcdB0slLmEVhl3iq/whkUfxLfXh2/ac7xUFJpwkVMThtTiwP94EfV
	qRh+OhoqBvX1rIrqFEJWhJPISZ9giREb2vBBm5cVt11fziCrIqxgPTDvT7wgN6lhsFUbUlgZmJium
	XVxaznSX3IAxYhZUToCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbdy-00000001PoR-3w2Y;
	Thu, 29 Aug 2024 09:40:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbaS-00000001OB3-2sFl;
	Thu, 29 Aug 2024 09:37:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=A4/PMpvvxpYEvmqf7GIVYSw2u73NgreGhX+iQ/x8PvU=; b=FfNxxO8iDdSp0bEAxEyoSmJfKI
	8uDKoObVrSLicbi6Cn6RyY4kgmdObgMv2VQRvCQm0ZnNWWJ6LfcoOTxaEKhqY6ciKtca3wD7+82HA
	iCNsZ/VytXcnB8N3BQCebiRA8HNrlasovHk0SM7VF3eazaXMfRG8KAgH6qrcrUpHk+gXGKJcapBdm
	nRx6fehSqR8UToaOILbgOXsbbMo5r1KgEokNtWBIYKuQ0/LbumGl8k94zBikhRHJ9jfqAlDiAR/9K
	ojKaRoCA0YmEAIIfhGqXjJLggXUqzeN30B/lN8KgN9bNji5iQVSpkEjNtL0AN6gLaaFRpqbuiFU6U
	M5ye0ubw==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjbaH-0002nq-3y; Thu, 29 Aug 2024 11:36:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	stable@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] clk: rockchip: clk-rk3588: Fix 32k clock name for pmu_24m_32k_100m_src_p
Date: Thu, 29 Aug 2024 11:36:48 +0200
Message-ID: <172492351365.1695089.15416632298326411853.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240829052820.3604-1-eagle.alexander923@gmail.com>
References: <20240829052820.3604-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_023704_744668_0D433A09 
X-CRM114-Status: UNSURE (   9.61  )
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

On Thu, 29 Aug 2024 08:28:20 +0300, Alexander Shiyan wrote:
> The 32kHz input clock is named "xin32k" in the driver,
> so the name "32k" appears to be a typo in this case. Lets fix this.
> 
> 

Applied, thanks!

[1/1] clk: rockchip: clk-rk3588: Fix 32k clock name for pmu_24m_32k_100m_src_p
      commit: 0d02e8d284a45bfa8997ebe8764437b8eb6b108b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
