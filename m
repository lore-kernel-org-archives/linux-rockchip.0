Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6845CCAC59A
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 07:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ek5tO1TGawGk4urZihgVm7unmGnmrpu27xm9xH3IXlI=; b=SDECnT8OgS2PMG
	KHcQAUlDTjNRigiaonl+8/Z9GelPSwdvyiPiPWqi4ncRy+BCNmRcIS0vbFGGRgVtGUN3TyoYmAiBO
	Kt+wrTFqDwpbDI4FTMACoH6put1I1z99JlUZRgxD92cimjiP+L1JZrzb+XjfxrHVRmcyYyOEAmUsP
	fIilBdAvOlRsSKIj1WgMzM6yetvEIUg4EKajq1ai+b9ADHhimpivBxFSRE+KJdSX8aOJR8dG0Vlym
	mVXHl4b5cUzzHTH8WWO9odPBZQumOFYxHsU6OWFh0DcVa2NtXrK55LFpcJBCL/cpn38RHioDVeo7F
	Vg49DiQ3WDntMP+ELygQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz8d0-0000000GULx-0gwF;
	Thu, 18 Sep 2025 07:00:26 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz8cx-0000000GUJp-1m0F;
	Thu, 18 Sep 2025 07:00:24 +0000
Received: from localhost.localdomain (unknown [119.122.213.2])
	by smtp.qiye.163.com (Hmail) with ESMTP id 233a88c2c;
	Thu, 18 Sep 2025 15:00:19 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: amadeus@jmu.edu.cn
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	naoki@radxa.com
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: Update Radxa E52C support
Date: Thu, 18 Sep 2025 15:00:05 +0800
Message-Id: <20250918070005.478674-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250901100027.164594-1-amadeus@jmu.edu.cn>
References: <20250901100027.164594-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Tid: 0a995b9fbf2003a2kunm899a37c674489
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSxpNVh4eGEJMThpMTktNHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVJWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09LVUpLS1VLWQ
	Y+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_000023_625938_F471550A 
X-CRM114-Status: UNSURE (   5.00  )
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

> Changed from v3:
>   Add vcc_3v3_pmu label to vcc_3v3_s3

Are there any issues with this series of patches?

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
