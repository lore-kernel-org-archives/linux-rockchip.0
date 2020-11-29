Return-Path: <SRS0=xO8Q=FD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C18C3E8C5
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 05:46:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D51E207FF
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 05:46:09 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="r1nrVicp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2D51E207FF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qGGBr7zkiFgaFwOM5y6GswzAoy2hC4qWwauz2lm0KWo=; b=r1nrVicpA7l7LzMSoSNfgm4OQ
	YaSU0IPfn0Ifjs6jyg28o6eFzKtsxDfM/v6eyKJB6nWMKgbVHB/0jQK16qgQTV4v/utiO9kiG4F80
	YN1nOfvVDGXu/uRJQakW5+tSMJsE4wgGxuLuSHjnFSN8CUPj8dZQ8os2tjnBRx0SOh2qpXmlAkhLJ
	KrWHkpaI/o9aXeT9le6ftip2DqtcRZPR+WPuVavQ6nLB+UI972bKWMjwp7reVtMjYXwWv7AiNqbfe
	sYESobhLI9yawk33/Atuu3batmWABY+ye4I8vt7akbEh6wQfwqiNqVvJqx3tHkQ2mFF4z1weZUbcf
	LlS2oubow==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjFX3-0006BC-8J; Sun, 29 Nov 2020 05:45:57 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjFWw-00069g-C9; Sun, 29 Nov 2020 05:45:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 3F76B2002390;
 Sun, 29 Nov 2020 13:45:43 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id meYs45fgQ6dV; Sun, 29 Nov 2020 13:45:43 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 24F5E20020FC;
 Sun, 29 Nov 2020 13:45:43 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 1E2AFC019E2;
 Sun, 29 Nov 2020 13:45:43 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 2005C200756; Sun, 29 Nov 2020 13:45:43 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: 
Subject: [PATCH v2 2/2] devicetree: phy: rockchip-emmc: pulldown property
Date: Sun, 29 Nov 2020 13:44:15 +0800
Message-Id: <20201129054416.3980-3-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201129054416.3980-1-chris.ruehl@gtsys.com.hk>
References: <20201129054416.3980-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_004550_700983_9E4F911F 
X-CRM114-Status: GOOD (  10.42  )
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

Update the documentation and add the bool property
enable-strobe-pulldown used to enable the internal pull-down for the
strobe line.

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
index e728786f21e0..3e4d2d79a65d 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
+++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
@@ -16,6 +16,8 @@ Optional properties:
  - drive-impedance-ohm: Specifies the drive impedance in Ohm.
                         Possible values are 33, 40, 50, 66 and 100.
                         If not set, the default value of 50 will be applied.
+ - enable-strobe-pulldown: Enable internal pull-down for the strobe line.
+                           If not set, pull-down is not used.
 
 Example:
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
