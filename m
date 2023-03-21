Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 338DEC74A5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 12:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F58hOH0YpB02j5sgE7CgKUtoP/6Pqu558pdiEyMQVuw=; b=XOiWQCkfK7KwaS
	fgDS+mWn2rSur8ZJyS5BQhKLpcfrYCPLA5EYCHNq8VcjP1+CWgDHDcDjrRbvfygpWUX4N4Bl4sW5M
	pJeFTzRCJ5iDHbhzVDyUT2iNvEYpk31jEPcudHp8lfcmPn2Vo5kn53COLGT+i1UVbycv+JTRIemKl
	ShitYckGZZGCeYCFghdRN/fz+usSqeq9n7CJ3ALlBnnyk9L5rw5Hzi8OVVsqGpVFB7nyfy0AqLdsZ
	pxtfpp/O3/3qfEF0kqiB3MW56cHc7u0yMp7C6qkZKOpo/KNyh4qIgtSifs9Ee6eXDCBD8F8i+9svi
	zNerdWeEBzqEx+SMoBwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peb3F-00CKIn-1C;
	Tue, 21 Mar 2023 12:25:17 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peb3A-00CKGQ-36
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Mar 2023 12:25:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679401509;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DvleXWzKo7owjdbsJ/ezqbFS/5grOQZp7Yc6+zUXHrg=;
	b=UYrOQQhcxaDUqEL+NvXB1vXPQ+kMmzGMA0tjRUR5zWS84L1nrRUd4UfuHKYz0xlu21NxKy
	TQGJLTLyi3x03JXg2W9AdrAP9tXhVHeNLgKc5nFyapjVBRNUko1OqGPO3oriC3gh4tUolI
	JMLhZ6qBXjhO3AF9X7kuJEvMRAT8Evc=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-206-jIk492JgMcuUScrHUr2gMw-1; Tue, 21 Mar 2023 08:25:08 -0400
X-MC-Unique: jIk492JgMcuUScrHUr2gMw-1
Received: by mail-qv1-f72.google.com with SMTP id dg8-20020a056214084800b005acc280bf19so7479914qvb.22
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Mar 2023 05:25:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679401508;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DvleXWzKo7owjdbsJ/ezqbFS/5grOQZp7Yc6+zUXHrg=;
        b=oVj2QxH7zxJ5a+rj3NgAP3300TUUOpftgzFGy88RUDgAWH/REwP047cGi8C6ACE/E9
         n0bFb0FXvKyQ7ecETWWxcvKRWb2eAWpuQje5z5R1A5jfSSdqpSYCc4Tkcwo/99f7BNJA
         HlD7tjxZMpBq65anOyIUKmgRIkokfABpHvGQ3JxgpQ+kEjP9umd6MPlyEjyur/KJBBh6
         DI5FtZc63a603NlhArUV458obCalHrb00wHM9xXujlFJTjB99KUod/ktA5cgn1y9Fnyw
         E0xnRatcWLfsZIXTo56YxmhYrgDHLjp2TwzxzF3BRvpMWmowCVL5QRfaglGzdEdQ7zIo
         iTOw==
X-Gm-Message-State: AO0yUKVU1Q7RKxiMVI84lkd7NsUknTFFZ/QjgUtWK2xeb4Zh0ePexdGy
	82fBWDwxq+/M2oI9N70UGlzOArk+LJhJNYIvnkOfPXUDGB4w+epSVTO2gqbGfYLY7ttxSbeR8fr
	uUcVw0MserFCtmJw95x4+5qMNZwnBt0UC
X-Received: by 2002:ad4:5bc8:0:b0:5ad:45f2:4307 with SMTP id t8-20020ad45bc8000000b005ad45f24307mr4916137qvt.11.1679401507833;
        Tue, 21 Mar 2023 05:25:07 -0700 (PDT)
X-Google-Smtp-Source: AK7set8EmpoZ3TdzqMTm7C9Sgu5MCLSpoN63jx/YwhAb0d2bZ8QbqQ6cud+66aHksMRuFeiqkzW2AA==
X-Received: by 2002:ad4:5bc8:0:b0:5ad:45f2:4307 with SMTP id t8-20020ad45bc8000000b005ad45f24307mr4916111qvt.11.1679401507571;
        Tue, 21 Mar 2023 05:25:07 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id d185-20020a37b4c2000000b007425ef4cbc2sm9192747qkf.100.2023.03.21.05.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 05:25:07 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	nathan@kernel.org,
	ndesaulniers@google.com
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] phy: rockchip-pcie: remove unused phy_rd_cfg function
Date: Tue, 21 Mar 2023 08:25:03 -0400
Message-Id: <20230321122503.1783311-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_052513_069737_3A9EB399 
X-CRM114-Status: UNSURE (   7.33  )
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

clang with W=1 reports
drivers/phy/rockchip/phy-rockchip-pcie.c:122:19: error:
  unused function 'phy_rd_cfg' [-Werror,-Wunused-function]
static inline u32 phy_rd_cfg(struct rockchip_pcie_phy *rk_phy,
                  ^
This function is not used, so remove it.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index 75216091d901..8234b83fdd88 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -119,21 +119,6 @@ static inline void phy_wr_cfg(struct rockchip_pcie_phy *rk_phy,
 				   PHY_CFG_WR_SHIFT));
 }
 
-static inline u32 phy_rd_cfg(struct rockchip_pcie_phy *rk_phy,
-			     u32 addr)
-{
-	u32 val;
-
-	regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
-		     HIWORD_UPDATE(addr,
-				   PHY_CFG_RD_MASK,
-				   PHY_CFG_ADDR_SHIFT));
-	regmap_read(rk_phy->reg_base,
-		    rk_phy->phy_data->pcie_status,
-		    &val);
-	return val;
-}
-
 static int rockchip_pcie_phy_power_off(struct phy *phy)
 {
 	struct phy_pcie_instance *inst = phy_get_drvdata(phy);
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
