Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F51FCAC598
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 02:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VVU2lagibyugyFzP/vOp4X2ii9qwxIZlt+Rn3pI8CE=; b=caWHsTycdRO4HY
	dhct+yboOXpXFAFzPynzx0GcyQqaD1Un9AygfFZxr3QKV5Pg1IAXj9tuyw1D622an8qz5ffPfjQbM
	SEOVMsjCQ5aXVReOP2H4EXTQt3GbAiX3CMdghaeu2VPclqDmIYR2H1p1VeFdfRZkKLHs/VXsvRsrj
	j82oLlo0foW/g23nmUbHH7kGCE4+RTKHHJziV/itQJmZA8BeMYle5ST8UjaRb4ygxcabv5wSW/t0Z
	vGNx+PxnkRPmrZ3atUIlNN4VULAq51eePIlJv23acezCILLgBw7wk8NmQFH0tNlnwPmaqITvRO0Wt
	DWpq1sp9Jyw+ilBSy83w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqjzp-00000007HX9-1MTV;
	Wed, 18 Sep 2024 02:00:45 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqjzX-00000007HVu-30UV
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Sep 2024 02:00:29 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:2bd0::1])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 227757E012D;
	Wed, 18 Sep 2024 10:00:19 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove cd-gpios property in sdmmc0 for Radxa E25
Date: Wed, 18 Sep 2024 10:00:16 +0800
Message-Id: <20240918020016.472157-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <AC9279A68EEE724E+253b27d6-e954-44ba-ab42-e8257ae9a2bb@radxa.com>
References: <AC9279A68EEE724E+253b27d6-e954-44ba-ab42-e8257ae9a2bb@radxa.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaT0sYVkMaH0JOSR5IGU1DTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUkZH0tBQUpZV1kWGg8SFR0UWUFZS1VLVUtVS1kG
X-HM-Tid: 0a9202dbe83003a2kunm227757e012d
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pz46GDo5UTI9Iws0HRAoN0k8
	Dh0wCgxVSlVKTElNTUlPQ0lLSk9DVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBSRkfS0FBSllXWQgBWUFKSUhJNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_190027_960828_FF5370C1 
X-CRM114-Status: UNSURE (   4.88  )
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

> pcie30x1_clkreqnm0 is unused[1], so it can be used for sdmmc0.

Please update the pinctrl of pcie3x1 node first to avoid conflicts.
Btw I don't think this commit needs a fixes tag.

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
