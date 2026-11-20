Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CA5606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 01:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=G5gdbZ8i;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=mPjsVoOv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hrARhSwn+q7prL7wVoT7UqPxD0mjpWTzVDwCtfSbYd8=; b=G5gdbZ8iDoGxnp7558h7OxxxCB
	eAMTaXkGs9RGqdOC4x9+pHCwtYt24WdQD8yUeTTL44kIQh+9PHptHbgW/U9VrVfPHNBnsxedRpdGU
	GAe8mLXe7lzhJFaCJLbeg/hOeFy/ahPx0q6SHRS6KxAqMPa0UVo+8CIyFazkSmE6EUnlNVUKAZ8sp
	0N4vaFDgnkFKK4DyI82vzydi+ml3LrcalH373xlPMXWbfDv4S9jDa8x9S7bFHqCi7uw5O3UAoxcBN
	mhSI2G+4d7cAO9Y2ZFoTMZHPfsD3QovjlazOZugn/DNkcH/SdjG8qJhi1UH/3BQ+SZbfIaTqywNcE
	6TSzdd/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUDch-0000000Dqvy-3I7W;
	Fri, 20 Nov 2026 01:41:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUDcR-0000000DqnA-1tGY;
	Fri, 20 Nov 2026 01:40:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8496160D9F;
	Fri, 20 Nov 2026 01:40:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A48EC1F000C6;
	Fri, 20 Nov 2026 01:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795138850;
	bh=UNYBiOhAD+30znGjPejLZJPRdYr6/sqO+OtQ52jw+6k=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=mPjsVoOv+gyomx2nkUJ4gfXTECNpfs5wubWv4LBWT7r0aOiMaRqYeG5ZVChyVtO2K
	 bLpyRDUr98Io9WqgybKFqsLehTGnCTwWSPELRLnqacSzqL4Z5NLDlEzTrGl9iATzxh
	 jN4Nh7bMMmbylRorj69iyvun/dpZc95nam8RKhXUnBOnG9x1/udORrrynW+j2WJ9Tf
	 EiTZZCI8I3jWTlFiPonHcW+KngD34tcF6LtLGpxm+6gcw2xEwi2wuhVm3PRhMDrCZq
	 jj9fkEs31b9b01QNqei7QmfcSZZIjZRGbwLYjATdDFDixrc3/gpTtpMuTWjqdXcUcM
	 vxI05YqsG3JCQ==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 4/6] [RFT] drm/rockchip: dw_hdmi: Convert to
 dev_clk_get_from_provider()
From: Brian Masney <masneyb@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Russell King <linux@armlinux.org.uk>, Paul Walmsley <paul@pwsan.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andyshrk@163.com>, Ulf Hansson <ulfh@kernel.org>, 
 linux-clk@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-pm@vger.kernel.org, Brian Masney <masneyb@kernel.org>
In-Reply-To: <313d11bdd1dd46e895e34236191e7a3b175d0382.1795094688.git.geert+renesas@glider.be>
References: <cover.1795094688.git.geert+renesas@glider.be>
 <313d11bdd1dd46e895e34236191e7a3b175d0382.1795094688.git.geert+renesas@glider.be>
Date: Thu, 19 Nov 2026 20:40:22 -0500
Message-Id: <179513882273.284394.4331892287524393422.b4-review@b4>
X-Mailer: b4 0.17-dev-8145e
X-Developer-Signature: v=1; a=openpgp-sha256; l=479; i=masneyb@kernel.org;
 s=20250903; h=from:subject:message-id;
 bh=JGsrsWKRl0kw3WUwGSIprP/RenP+nQQZD7u3j9iJt1I=;
 b=kA0DAAoWt9LdJ11+wIcByyZiAGr/pROgWlEsgnn4T7idnP8BIUXK0HiWzQz/5qMUdPDmhjFmD
 Ih1BAAWCgAdFiEEpG0ycFhlqj3e3CkEt9LdJ11+wIcFAmr/pRMACgkQt9LdJ11+wIeTyAEAnOnn
 uWf5C9UfZlObjo+Lo59Bat1yoayzzvNH9NdY1qwBAOswW+07L4AHYLwWodYFTqnZ7ppxIcEV09w
 V46KoATMJ
X-Developer-Key: i=masneyb@kernel.org; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> The Rockchip Designware HDMI driver uses of_clk_get_from_provider() to
> obtain the clock for the HDMI PHY, so the latter shows up as
> "deviceless" in the consumer column of the clk_summary file in debugfs.
> 
> Fix this by using dev_clk_get_from_provider() instead, letting us pass
> the consumer device, too.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Brian Masney <masneyb@kernel.org>

-- 
Brian Masney <masneyb@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
