Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF4FCA0EEB
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Aug 2025 07:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvPuY3+nO5P+4B4tqE+RL4YK4UcNbfKH5OfbNyj0HUU=; b=zbXYWr1S6DP4v+
	JQxmdtxpOGwh4i2nB1mPHTj6D6y4QmwvpNNpTDHodoiabCU4eOhfAcHpla9aIKGxBWFQVzHgxs9fp
	UKBWh46U33BlpOWHoRvc4zDzKSaidRQS9Tn+OJtslV9sJ/LB3cCjJ7qH9UqO6YG/qcjoVYvllgBM0
	7uKPZcHA39c6VylwaFwqDkpY49U/R5VWZJfWOFA669dF2HOrx0KwoB/GQleighL8bI+urClVwSyj+
	3oc8+GcNCRes1F5cZhZxySBwIAf89YonBePBEtiTY6CWqVWxxQEvZCAuTv+WGQ3HUpewHdGla/c7D
	HGOF2jr/xEzF2tmZUO4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq52f-00000005pDS-2MLd;
	Sun, 24 Aug 2025 07:21:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq4pg-00000005oIR-2RYK;
	Sun, 24 Aug 2025 07:08:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AbIEA6FrWytQiEVgDAOyKyyO3ZlP3FJYDn4qrDVk2b0=; b=UeIRc+bm0k10Jgu0XpAHqhUtot
	guyc76rCEkuIX5VLJ7GQMsLejUFCNsgJadOY/eK4Gx6uKmMg358e/RxtmIM7slW1+GWwZwFVpFs8w
	RpnXOEOk4s6JNp5Wo80noau1en2M18gElJno3aF1CBhSnjihz6npAJMnnQPpivP049UxUYeyzCT0L
	xQ1urYIYWpTwT6xCELhfTFIVcyM+eJ7nAPQn9WYevatPEpHbXh+G4NUnfLNtCmVDE9nqWTIbRARK0
	NaG/0HUAKMenLECsbaY7pUhzoMVFhiRN56uTDTZbFxbw6wiwW0xE0ALANiuUTroM/MLG5UOSkFdMn
	50R6OmZw==;
Received: from [212.111.254.164] (helo=phil.aerolan.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uq4pb-0002Oo-OB; Sun, 24 Aug 2025 09:07:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Chen-Yu Tsai <wens@csie.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588-orangepi-5: Add supplies for eMMC
Date: Sun, 24 Aug 2025 09:07:54 +0200
Message-ID: <175601920180.3425909.3489493735708204537.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250821052939.1869171-1-wens@kernel.org>
References: <20250821052939.1869171-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_000804_619704_40E25274 
X-CRM114-Status: GOOD (  10.04  )
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


On Thu, 21 Aug 2025 13:29:39 +0800, Chen-Yu Tsai wrote:
> The eMMC description is missing both vmmc and vqmmc supplies.
> 
> Add them to complete the description.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588-orangepi-5: Add supplies for eMMC
      commit: 2dea24df234940b27d378f786933dc10f33de6b8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
