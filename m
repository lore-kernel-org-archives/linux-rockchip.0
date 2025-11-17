Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE2E8CE8D6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 21:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJeclEVXsrHc68Dpv9Qnjl2uSXpRgiFTOCD5JOR2UbM=; b=P6y6h4jw2WcOXF
	lI4aC0PSHRbGfIfDgdv46vLrHuaZRCg9bhhY/Ad04Rg5aN0VaGRHw9lknppuz+QTneJeXjpHPvXUj
	ttHTUHcnNFqiDTlMnSPpJRC51V+KMwvT9URxrIqDzWYVLSwFz19waXD5DHqDBfJO9nPbxpUrc7gzm
	u4856xYOhBlz8AyMWRcy4IfhqshP4A8fiDimJ/6I/Mv4yoqIBZs4IkOqkoXAx4PqFqJnjkvu23MLk
	Wgj3pa6kDljK/QcPj/mhlq3Cv6jC2PTvPLbsWl8BNvMc405QkzGhjjh6d+gQXMdFVSG4RGGpe55GR
	CGYFNhmMi2fuOd8BqOcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL7G7-0000000Gv6i-0zl8;
	Mon, 17 Nov 2025 21:59:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL7G3-0000000Gv5o-0nyc;
	Mon, 17 Nov 2025 21:59:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jQoqXyszkPiSBiq+rU2orebDLuZROYRw4j6EhNzg7rM=; b=JOPgBi/GEewTXo2hRxi6cycLfR
	zTKaPBBvqlGCHGgFcKD+s3r5y7pPj9gEEmOjeeRIi3KMEPXHr9tWJkPFkEtJ8BJf8KkhbimYGeyQs
	m/KvIMXiJWBB3OxFW6OGYmhAFZe28YdcN8DcRvWmnvoio8OnpZY4kgUWcQbRT2rNNrIbOF3jWeqkG
	hr/4G7EpeGcvgMB65Hqx9QG/A4aTnLF59gLF0odGPgBQxYbAxQy3uHXjGtrPoHINZ6fUN9d7PgjCA
	hWjf7rKn4Y+0mxtweIMTIEL7QxW1dDVrNGVfxwaymqaMxV1X2nWenOx2cinwpV6nZMNOws9PCMixE
	2bhR+AQQ==;
Received: from [31.12.4.86] (helo=phil.schlosswilhelminenberg.local)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vL7Fb-00018K-3L; Mon, 17 Nov 2025 22:59:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	cn.liweihao@gmail.com
Subject: Re: (subset) [PATCH v2 0/9] General RK3368 HDMI support and 2 outputs for RK3368-Lion
Date: Mon, 17 Nov 2025 22:59:04 +0100
Message-ID: <176341673264.751370.3773925290539740879.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251021074254.87065-1-heiko@sntech.de>
References: <20251021074254.87065-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_135935_253066_56CDF9FF 
X-CRM114-Status: GOOD (  13.01  )
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


On Tue, 21 Oct 2025 09:42:45 +0200, Heiko Stuebner wrote:
> This series adds the necessary bits for HDMI output on RK3368 and enables
> this on RK3368-Lion. At the same time, use the recently added DSI support
> to enable the generic Video-Demo-adapter as an overlay on Lion as well.
> 
> 
> The reason I'm shaving this Yak is that the recently added DSI support
> created DTC warnings about a single endpoint with an address.
> 
> [...]

Applied, thanks!

[3/9] soc: rockchip: grf: Add select correct PWM implementation on RK3368
      commit: 048213a38e7ac1591f725e370c152cc80dd84105

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
