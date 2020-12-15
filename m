Return-Path: <SRS0=dXo0=FT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8162AC4361B
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Dec 2020 01:44:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E66C4224D1
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Dec 2020 01:44:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E66C4224D1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KaO73RvDHgLO0D3weMGzsuZlPyipPYrxcQPvWqyEYJM=; b=i61PREoye8ri80M6iHbtj68qf
	2Ev98EmofJiLmPSYnDCa53Kkas9aSKrE7l5xYp7CzBMuNk5KepRHVf2zrE20gt59IGMAGRXqv7F4n
	pPd7YtWIgddNsZpcPKv8EB1P6c2j19FUQ3glCyPgLwHGLnobuaGsMfzj2hqhTkZ99zev3bc1zxsWT
	wVEUcsOS147xjCkR01JJWeJ61U/IPDKfWN0n8OMejk1EmEwgiSgDCZh6IKir7Eh7mnmtNCjEPvyDO
	DHkooo/KkN8wfpCgGordZYVPcxAxLCnXogpqxMUAqQKtwaba4D5OdiIyeL+rzYzEIyBHNQyI9kg6B
	xQ8DB2JBQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kozO4-0006by-50; Tue, 15 Dec 2020 01:44:24 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kozNy-0006a9-Dn; Tue, 15 Dec 2020 01:44:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 7649120138C6;
 Tue, 15 Dec 2020 09:44:14 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0gcxjvr6xVlo; Tue, 15 Dec 2020 09:44:14 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 5D39520139A0;
 Tue, 15 Dec 2020 09:44:14 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 6094AC01FAD;
 Tue, 15 Dec 2020 09:44:14 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 4D3A02000CF; Tue, 15 Dec 2020 09:44:14 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: [PATCH v2 1/2] devicetree: phy: rockchip-emmc optional add vendor
 prefix
Date: Tue, 15 Dec 2020 09:44:07 +0800
Message-Id: <20201215014409.905-2-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201215014409.905-1-chris.ruehl@gtsys.com.hk>
References: <20201215014409.905-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201214_204418_681698_601EC982 
X-CRM114-Status: GOOD (  11.06  )
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
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Update the documentation and add the vendor prefix to the optional
properties referred in vendor-prefixes.yaml.
Follow up with
commit 8b5c2b45b8f0a ("phy: rockchip: set pulldown for strobe line in dts")
commit a8cef928276bb ("phy: rockchip-emmc: output tap delay dt property")

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 .../devicetree/bindings/phy/rockchip-emmc-phy.txt      | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
index 00aa2d349e55..57d28c0d5696 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
+++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
@@ -16,11 +16,11 @@ Optional properties:
  - drive-impedance-ohm: Specifies the drive impedance in Ohm.
                         Possible values are 33, 40, 50, 66 and 100.
                         If not set, the default value of 50 will be applied.
- - enable-strobe-pulldown: Enable internal pull-down for the strobe line.
-                           If not set, pull-down is not used.
- - output-tapdelay-select: Specifies the phyctrl_otapdlysec register.
-                           If not set, the register defaults to 0x4.
-                           Maximum value 0xf.
+ - rockchip,enable-strobe-pulldown: Enable internal pull-down for the strobe
+                                    line.  If not set, pull-down is not used.
+ - rockchip,output-tapdelay-select: Specifies the phyctrl_otapdlysec register.
+                                    If not set, the register defaults to 0x4.
+                                    Maximum value 0xf.
 
 Example:
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
