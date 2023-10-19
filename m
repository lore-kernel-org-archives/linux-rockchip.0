Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DBC5CDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0vOCZuPW/x2DznFXUgRNROiFH45wC4p6899MwVzhr8=; b=yWzwNXnvUII8NS
	rTtPOdUvyuxUNgZlBcvE4gyIA767iGldaGrDOD6v0odKlL72Q6yrDc1TOyRDcrxvdqKhwJqNaysMe
	v5DyWE4ZpoNFccE3l3KhTcJBHEXbx95OQCk5PufAMnCvg3uX0ViBDqbAoxoIfqY+6xo2Gu5uJi/Vv
	ki9hPqwLuQEdfAR46ZHvR32ZhtjimVIVGHjiZhqDXwHBflGxfJ5TC9iLwW4SXrWu5dEG/gemopTal
	IaE+WpifnOpr9XK5QR7qsfn8acR/THK5EFHeJnLupUYlBjP/2RGIBD1Xq3c/fZZO+sJB4tCinnUi/
	VDCjF4A5qqFIKblip3Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtXix-000VJ7-0V;
	Thu, 19 Oct 2023 18:26:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtXit-000VHy-3C;
	Thu, 19 Oct 2023 18:26:21 +0000
Received: from i5e861907.versanet.de ([94.134.25.7] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtXim-0006n2-UV; Thu, 19 Oct 2023 20:26:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Sam Edwards <cfsworks@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sam Edwards <CFSworks@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	linux-rockchip@lists.infradead.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>
Subject: Re: [PATCH v2 0/3] Add initial devicetree for Turing RK1
Date: Thu, 19 Oct 2023 20:26:11 +0200
Message-Id: <169773987935.1461852.15123065300008221603.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011225823.2542262-1-CFSworks@gmail.com>
References: <20231011225823.2542262-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_112620_023858_86AFCC10 
X-CRM114-Status: GOOD (  17.22  )
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

On Wed, 11 Oct 2023 16:58:20 -0600, Sam Edwards wrote:
> This is the second version of my patch to bring in support for the RK3588-based
> Turing RK1 SoM. In my previous cover letter, I perhaps should have specified
> that the RK1 is a little bit unusual in that, though it *is* a true SoM, it is
> targeted toward home-hosting/edge users directly as a compute node, and as a
> result the vast majority of users will be seeing it more like a
> micro-bladeserver, rather than an off-the-shelf part meant to power a larger
> system. This was my rationale for previously sending this as a single .dts,
> targeting that use case.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: add turing
      commit: 817bacc3a648cc55a0b07a699c03ecc70309ae50
[2/3] dt-bindings: arm: rockchip: Add Turing RK1
      commit: e30ecfcbe4ed3706af67dff5aa1418fba6ba2c29
[3/3] arm64: dts: rockchip: Add Turing RK1 SoM support
      commit: 2806a69f3fef61d7353ea8206add8ffb15064b51

I've dropped the mem-supply references from the cpu nodes.
I think some at Collabora is working on upstreaming the
cpufreq driver that will utilize those.

Until then they are not part of the binding, so please add
them via a new patch once the cpufreq support has landed.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
