Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06415EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1O/FiJEoHCpet2jBCg2SWi1/y8lLo9wlwhSxbvwca4E=; b=slz/3fNoVSPFd4
	APY0XTPDa/2H5ouuKOf1qxKNbtoFjqA9Q8TeMPlAe4FWqWTxP26zqJvF+VxqQd2iUzigcNWXTB22Q
	jiaKCLdNLUr+NkyozAZfAlMcEk21kizLYnsoOCDABCrtq9nrCaHdL9mz18fCLS6TJdUfZ2IBH3+5j
	2Sjo9yNTRu76DaRQOK/m7UJ6o897tmvsgRnQA+zkucH3kOK9N/cfG8tEorHF+YMDCK9JORI55FE6n
	+5xDriCbpwwjjM5pFVuPfhD4CMtpM7X4tvMb0GIoJff2uPm5qQvRd3nDpwAI4KCvc31X7poRUbMSk
	ae0vclzK8cAfP4qZKZTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMyH-006swG-0Z;
	Fri, 14 Jul 2023 17:52:49 +0000
Received: from mail-io1-f53.google.com ([209.85.166.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMy1-006si0-1h;
	Fri, 14 Jul 2023 17:52:34 +0000
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-77ac14ff51bso86211239f.3;
        Fri, 14 Jul 2023 10:52:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689357152; x=1691949152;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tv02JEaSetiMoGcjvutpVPJ1bAGUsaX2wWmNyw9UVsI=;
        b=GCXzZzWqyYda4tTEz+Pm3dC/Sxgm5AIqzbwp3T+GWZ7XhMkITfrBR4ww4t3Q67jrjU
         Qvd1C3Mkh3AEJBq9zQNReWMmdHIjVSlDqn4IqKmtRhB6Mc2L7bnvTJi7AUF/sAjBo2Kk
         RFoknfc+GaV1STo9qEjAnCfMu5RfFKS0+E/BclxiTrjEUp8FqiK51bf84VAr+10yaIsd
         4s/qNslqBjgVa2x6cMU1UEI4OliFkczH3gBELrUKNgr3l2HvRYSNV1vppLHJ7pXg6UtU
         2MmLi5/AkU17IixbJf1jNiW+YyfwBjEW7WUU3XQI70cmWIWU8q5Ah/bNGHYjGp53TK37
         Xn5g==
X-Gm-Message-State: ABy/qLZQ5u01aG/MxmVNReEXXGdtMwy56hg64/1N3SETC042VT3QLrdN
	vOgfghju/oBi6NYvqn4FBw==
X-Google-Smtp-Source: APBJJlHlFyLcOcjZDaoM+vIiR2ZLYTj+Zrybwn9zV7IFM8HpFFGTgt9zQntMiozjjQUoBc6LlqpsTw==
X-Received: by 2002:a5d:9b0d:0:b0:785:d4f5:2225 with SMTP id y13-20020a5d9b0d000000b00785d4f52225mr5291005ion.19.1689357152673;
        Fri, 14 Jul 2023 10:52:32 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id v21-20020a5ec115000000b0077e35ffac2fsm2790121iol.32.2023.07.14.10.52.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 10:52:31 -0700 (PDT)
Received: (nullmailer pid 4068003 invoked by uid 1000);
	Fri, 14 Jul 2023 17:51:46 -0000
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] soc: rockchip: Explicitly include correct DT includes
Date: Fri, 14 Jul 2023 11:51:43 -0600
Message-Id: <20230714175143.4067918-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_105233_591858_2B8557CD 
X-CRM114-Status: GOOD (  11.81  )
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

The DT of_device.h and of_platform.h date back to the separate
of_platform_bus_type before it as merged into the regular platform bus.
As part of that merge prepping Arm DT support 13 years ago, they
"temporarily" include each other. They also include platform_device.h
and of.h. As a result, there's a pretty much random mix of those include
files used throughout the tree. In order to detangle these headers and
replace the implicit includes with struct declarations, users need to
explicitly include the correct includes.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/soc/rockchip/grf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 15a3970e3509..30203ec447e5 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -7,7 +7,7 @@
 
 #include <linux/err.h>
 #include <linux/mfd/syscon.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
