Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C1BBC282C5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 13:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcC/BXcWDVbUoHMsu3hAtCG5B3SE5YeetXMaFkDFHOs=; b=JJ6hDcEACHu3Js
	GsYWGB6Dz2KeMC+jbR4o8dxEXiV+OvsYDkWMERzCqe8v31LL0ebGfAO/xu35rAJt55gD43y65MDzr
	0DvFOVBeoCCAhCCtTUuRd/8og8n64NG1m9OrkKPHoIxARzfxx55lYTxVfv2KpOn7aBqOwXXxtkO+F
	0UX3WPQ1gNzcQDlqiY36hJ9Ck8cy1P1V5daioDB1FT946MH+NjApz4flXT9dRR8CHoEVVj1MQ1E+s
	NBqzZtilkt/Hv4ghgIEIvmuSouFkwoBSFBLAegABwhcgZGyDacoATKVdBYla9rYQq7gSl3w70ezNh
	ksTLHMC9Pg3J2hE9YLmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to0ik-0000000B815-2U8a;
	Fri, 28 Feb 2025 13:48:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to0hK-0000000B7cL-3nyy
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 13:46:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZmbzHfuFGxMO/tUQLPQhCYSmxmQclsCq7HjjPDZTRLo=; b=M0mtWwSSXf5AxhHuLJS9gFksqw
	eAs8epReVMAXpLMykhMSsggIt3/IEvN0OLRRwPmjuJX8+cVhiG3el3nzXZ3chisBzRv0LXOWCHWbS
	Cmw+rNiMy3/oFYVPst8s5ohyV4n7NbLE08Tv3fBH/rD4qCfkU3sPGi5pW6ZdBrlXcFuNprylOr/aK
	nMg0YBEv+qLNpJaqV2qBBah5gZq8iVaIk/c/82QrHtBI6P2b4dINkJcAtkAFlaBJedZPQkBxKxkyF
	DHvgrxcy2eF373uVIHkhrRjkSeTHk7mnkcM810S/anTLny13IEeZMh7oagdJRyGTGOIkEHB2CxzMr
	ZMXBxjfg==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1to0hB-00018u-Dt; Fri, 28 Feb 2025 14:46:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Mark Brown <broonie@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	=?UTF-8?q?Adri=C3=A1n=20Mart=C3=ADnez=20Larumbe?= <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Vignesh Raman <vignesh.raman@collabora.com>,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v6 0/8] Fix RK3588 power domain problems
Date: Fri, 28 Feb 2025 14:46:18 +0100
Message-ID: <174075035003.278101.1580632706000540174.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
References: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_054638_962918_F011BF3D 
X-CRM114-Status: GOOD (  11.76  )
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


On Thu, 20 Feb 2025 19:58:03 +0100, Sebastian Reichel wrote:
> I got a report, that the Linux kernel crashes on Rock 5B when the panthor
> driver is loaded late after booting. The crash starts with the following
> shortened error print:
> 
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
> SError Interrupt on CPU4, code 0x00000000be000411 -- SError
> 
> [...]

Applied, thanks!

[8/8] arm64: dts: rockchip: Add GPU power domain regulator dependency for RK3588
      commit: f94500eb7328b35f3d0927635b1aba26c85ea4b0


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
