Return-Path: <SRS0=yk8M=FG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32F7C64E8A
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Dec 2020 08:26:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1368E22202
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Dec 2020 08:26:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1368E22202
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YnSB0yuOWkMxiTKGSrl2ecsYkR1OU9QUrGa4DvMn5lg=; b=Tkom038dmi6wwhzWvIvwWg9MB
	9HoXVEQsSEg6CWHUqNiSmzOdy4HqlbLkywQZGa1CSGqJLD1KpvoDz5oinw21JHm6AFYHtPEfuSc9a
	Cc2e2lejIEcNF/Hzcj206zkEIAE0gluWOZxVwD0p/H+62+NYlE7/pJUvHMaV8RYQ30lwIuDErN00U
	7m28P2nY0O4V+3u0FKnaC3KJmBsYRSUEpmlfzDnUz+9p60gHcSy1pXGyvD+COGjsA5LRrg/HxxRO7
	/QVElwxITdykQm2gHc5bxgIxcC5MzL9WuQSUizJR0XD8N1yMjtztOrzc2TB1EuIXJsBvMvEAGurj7
	Y9xSNh3Tw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kkNSX-0008Nj-KF; Wed, 02 Dec 2020 08:25:57 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkNS2-00089s-DB; Wed, 02 Dec 2020 08:25:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id B6F6D200D28A;
 Wed,  2 Dec 2020 16:25:24 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OEkpvfX_SFVv; Wed,  2 Dec 2020 16:25:24 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 9CB72200D287;
 Wed,  2 Dec 2020 16:25:24 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 9486AC019F3;
 Wed,  2 Dec 2020 16:25:24 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 93BA8200756; Wed,  2 Dec 2020 16:25:24 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: 
Subject: [PATCH 2/2] devicetree: phy: rockchip-emmc add output-tapdelay-select
Date: Wed,  2 Dec 2020 16:25:07 +0800
Message-Id: <20201202082507.3536-3-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201202082507.3536-1-chris.ruehl@gtsys.com.hk>
References: <20201202082507.3536-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201202_032526_739376_1D1764F0 
X-CRM114-Status: GOOD (  10.51  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Update the rockchip-emmc-phy.txt and add the u32 property
'output-tapdelay-select'. This allow to set the otapdlysec register.

Tested with our customized rk3399 board to tune eMMC.

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
index 3e4d2d79a65d..00aa2d349e55 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
+++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
@@ -18,6 +18,9 @@ Optional properties:
                         If not set, the default value of 50 will be applied.
  - enable-strobe-pulldown: Enable internal pull-down for the strobe line.
                            If not set, pull-down is not used.
+ - output-tapdelay-select: Specifies the phyctrl_otapdlysec register.
+                           If not set, the register defaults to 0x4.
+                           Maximum value 0xf.
 
 Example:
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
