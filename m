Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFAE6CA1016
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 08:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqeMECry3JlXpiU3rWPxBwk75q01pTufSVEpnYygoUU=; b=IlWiV6aZqi4kt0
	dCFIXCMmmT2bvLeWEErFQH/0GdopKHuxKvPzxbuqIzWqeU+Df6jBKfRXlzGl9sLa0gPHVtDrB29gK
	jD/50mELbUIjGdxJljRzE87prmPb4o/84wMOhto8Ufc+eQlV13j4qCkmPEyxzVHWlCcRXFaMbEmGf
	fzxz5UZa7igWHF4/OaEDg2iYCZ8Rot37tw3olEpdDgeLyy/dr7pe7i0KpikwOPXM+2JqkjhiF3WVF
	Iua9RvyM7Svbh0FCw9vEUd4tYrY/OF293uAd46kbi0qEX9KOSuqG224MhXHLsxT8/jHRoH6U5gVII
	zZ1+wUJUri0zu/z6TmTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuRan-00000000HNl-1Z0k;
	Fri, 05 Sep 2025 08:14:45 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuQQj-0000000HRcp-2VZL;
	Fri, 05 Sep 2025 07:00:19 +0000
Received: from localhost.localdomain (unknown [119.122.213.41])
	by smtp.qiye.163.com (Hmail) with ESMTP id 21cc66823;
	Fri, 5 Sep 2025 15:00:08 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: amadeus@jmu.edu.cn
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	ziyao@disroot.org
Subject: Re: [PATCH v3 1/1] arm64: dts: rockchip: rk3528: Add CPU frequency scaling support
Date: Fri,  5 Sep 2025 15:00:02 +0800
Message-Id: <20250905070002.320775-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250801080025.558935-2-amadeus@jmu.edu.cn>
References: <20250801080025.558935-2-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Tid: 0a9918ace5d103a2kunm6ede5b84233df5
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCS05LVk5PGE8fQ09ITUJIT1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVPSllXWRYaDxIVHRRZQVlPS0hVSktISk5MTlVKS0tVSk
	JLS1kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_000017_855260_28FAFC00 
X-CRM114-Status: UNSURE (   6.91  )
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

> By default, the CPUs on RK3528 operates at 1.5GHz. Add CPU frequency and
> voltage mapping to the device tree to enable dynamic scaling via cpufreq.
>
> The OPP values come from downstream kernel[1], using a voltage close to
> the actual frequency. Frequencies below 1.2GHz have been removed due to
> the same voltage.

Are there any issues with this patch?

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
