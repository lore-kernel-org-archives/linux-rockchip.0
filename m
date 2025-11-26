Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 818C8D10F34
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Nov 2025 12:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+XL9j+QlpD1yeXvs8Z8c/9NUNkrEEYmD6h2xk3Xmzg=; b=xFj9xvMwCqGbMU
	c3kEfoztMGHo1lWVfBgVuut6wVB+QYPbeWCBKZwNEpPY9xX6gWBOUUjNwfq0RpH5rtOm4+0icX4GP
	SGDSXi17KVjTITWxXYFJqLR9Yi+ZScRhVjXnpzM2RSeU8QfDWch65iQj2bDMf0v+lObmmb7IFm3I5
	2DnAgJkt0+aQZTa58rAmpHoHF7a63B3pOHk+KkRoSsMcJ8oGemXLF/7fv9QJM2DCInDaV+yBrvi2F
	xs0EtEI1KO6qKrZZdcvcHaMw+J6BbD7VPBydOBBGn6Jf7PK3nl6tx1MZ84VRrkvTOzw7PVni58xE7
	6hJJ6WkGERmB2SpK+tfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOEp0-0000000EzZH-0fNe;
	Wed, 26 Nov 2025 12:40:34 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOEov-0000000EzYQ-1F73;
	Wed, 26 Nov 2025 12:40:32 +0000
Received: from localhost.localdomain (unknown [119.122.215.79])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2afd22cd6;
	Wed, 26 Nov 2025 20:40:19 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: amadeus@jmu.edu.cn
Cc: heiko@sntech.de,
	kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	vkoul@kernel.org,
	ziyao@disroot.org
Subject: Re: [PATCH 1/1] phy: rockchip: naneng-combphy: use existing DT property check for rk3528
Date: Wed, 26 Nov 2025 20:40:09 +0800
Message-Id: <20251126124009.551884-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250910122000.951100-1-amadeus@jmu.edu.cn>
References: <20250910122000.951100-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Tid: 0a9ac02dd29603a2kunme8b5e61b202ca8
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGE5IVksYHktMSUkeQxkeQ1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVMQllXWRYaDxIVHRRZQVlPS0hVSktJQk1LSlVKS0tVS1
	kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_044029_671274_19B057FD 
X-CRM114-Status: UNSURE (   5.62  )
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

Hi,

> The naneng-combphy driver already has DT property checks for
> "rockchip,enable-ssc" and "rockchip,ext-refclk", use it for
> the rk3528_combphy_cfg. Also aligned the indentation of the
> rk3528_combphy_grfcfgs parameters (using tabs).

Are there still any issues with this patch?

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
