Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE95FECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Sep 2022 17:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wg2Yx9CQGFvN6s476OGNrbN13QUvwMeH5hIpbb5UyMY=; b=lVY72D6hozaOuK
	JsFr/F0ouKIBGnsxPp3+v8sZMbqahDIRIaooteoG3hjJg8kPLPGXwtZB8W6d4pmKoniJkTgqPEsNI
	woShUnbucpDcetJ4BJVbPJy+H5qRjorBbnU0o06ctf4ltfqXDjWm1941q/XD2g5M5173pu+gDzUaP
	Zz8TIaNsb5U/1HVXgYThBJsOutE1Jb753duf31hbqGLYGrFwLzPqsq1WFY+tqC3G/hByOnebEVD8J
	i03BS6NLWhi8TT0b+Y0x3QuIfmgdfE5HiGKD55SrfOJIiXfmAiSoToWpELr+4tICgbERdBTVp14He
	KLVPym4N9ocIIIn6FIHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtLA-008UYN-W7; Sun, 04 Sep 2022 17:23:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtKJ-008TtH-TP; Sun, 04 Sep 2022 17:22:33 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oUtKD-0000tW-1f; Sun, 04 Sep 2022 19:22:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	phone-devel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	martijn@brixit.nl,
	devicetree@vger.kernel.org,
	ayufan@ayufan.eu,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	megi@xff.cz
Subject: Re: (subset) [PATCH v3 0/2] Add support for the Pine64 PinePhone Pro phone
Date: Sun,  4 Sep 2022 19:22:20 +0200
Message-Id: <166231195330.2423948.14614733347050654545.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_102231_987605_483CA946 
X-CRM114-Status: GOOD (  11.16  )
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

On Mon, 15 Aug 2022 22:30:02 +1000, Tom Fitzhenry wrote:
> PinePhone Pro is a RK3399 based phone produced by Pine64.
> 
> Add a basic DTS for it. This is a working base that will allow myself and
> others to add more nodes.
> 
> Changes since v2:
> * Used rk3399-opp.dtsi (+ disabled) rather than introducing rk3399-t-opp.dtsi
> * Removed superfluous comments.
> * Followed DT Generic Names Recommendation
> * Set 'From:' of DTS patch to be Martijn, the primary contributor to the DT.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add PinePhone Pro bindings
      commit: 23c5f10981474b44ce1726e3753cbb7ac20d6548

applied together with v5 of the actual board dts patch
which was missing the binding.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
