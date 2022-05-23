Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A090C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 May 2022 14:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LFZqfPmJFBCuwEA2CetTdgPr+vsqW+DiW5ZaECXN5OY=; b=JObwwpdekkncMh
	5HEFYqm2hFscZBYpZsnw8y9zjlX8rluKRllg3v3+Lvofxh2V1TlcN+ejZR6qj1BQAuMc0OxQsQ9bK
	KL/6NV2byFwMujoSd+ZKLpFNQ1RAVqPRPR2XzHiC5BzR/Pc6JR1aPcV0Q3iH8+u6H6Rt7SC2Ke/5k
	LFWS+/V3jhl3MUaZfU36JYBB6hRqKbZsTC9hqHN2rVJ6mldr16fnqoTBfZPwSfYANoH4gDMP8+iLR
	5Nake3b+pz2JUATD2NKxLKqz4XPYvuYYOx40bUUucVr23eEF2PB7S2pWXlrdPug5Thc4Oa+ItsM8s
	ZiPVr0qC3XtU8Rl1x/Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt8he-004dls-EZ; Mon, 23 May 2022 14:06:34 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt8hT-004djU-4L; Mon, 23 May 2022 14:06:24 +0000
Received: by mail-pj1-x102d.google.com with SMTP id
 nr2-20020a17090b240200b001df2b1bfc40so17614757pjb.5; 
 Mon, 23 May 2022 07:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8y5BRaHXUyaMApI9OkAQijsflwdIHfE4WR6ORnNMHho=;
 b=j/v7TapmIXCeZCguAy5n0XikUxpBpbZZXgASm4lzUDpJg0YoD3MIBgIwVXxhOPAY+/
 yFAiIKNXFA87xFKgRB6RlJpMesb63CuTvoQqXe2uynXQlLkgUan3wKnHI8RfY6sAEgzR
 hLzWAWEqCtGzPqPc9cLQPcidJgFMRmwI8kPVKi5VZetoy6hUeeKBYqF/qj9yGxIlcSEI
 +DMh6CRJK/YzhAogG7XjgWfGzGpfOMvVewUAS967HoeZq6tmBtiXkNuHHi9WTvoJ47Ks
 BE5BZdD9mifa99iCgPwlGljEAnrlw22Mzy8dplvlMycAQ9J9g0DI8RK7yDrw2bakOc3K
 2elQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8y5BRaHXUyaMApI9OkAQijsflwdIHfE4WR6ORnNMHho=;
 b=y6eEj0uFHDTw6udWMAP/vAEgYZCLqwnRz8hGdig+cyEhc+OnjP/ZJxQVP/p3CiCKCT
 eUulED8P4dntyJ8fzUP8RV4/PBtbKm/7bzWHd8BZbof8BZzTTmPivhd7BYVw/KFBQjcS
 ldFePtW0RFk4XIoDNXCT1BQWcOXyEeCc0PCpukBfVhupZJVnh350YWy4GwmZXO8SuClw
 uGRby5Bgt0mJGV1sXRwbZ8WkLSU4ZWyOmqnaE7upEQup3QFpAVLEJWXmMS/gpzDYJgah
 Ny2JwtmoxdIbizD47bigbKL2+RrxjLZu5F/s7VnQdb301CgfNV02LL810136b8ozlOpe
 Og0A==
X-Gm-Message-State: AOAM531xu2izAklhklTqsBxX07jcY+uo8f8WI3SBs8xbVAGdFa76Xazh
 Ce/HBW0bOPzlGzXpki59R+Avcs2+owrDhg==
X-Google-Smtp-Source: ABdhPJyFOXj2ryIjuzJfas0FpOP+2TbpxesLsEPTi6B8TYXOqVZln8qV0MkTsqPVAVL9qJrHEdom/A==
X-Received: by 2002:a17:903:2288:b0:162:23c:c151 with SMTP id
 b8-20020a170903228800b00162023cc151mr12484842plh.78.1653314780118; 
 Mon, 23 May 2022 07:06:20 -0700 (PDT)
Received: from localhost.localdomain ([202.120.234.246])
 by smtp.googlemail.com with ESMTPSA id
 n89-20020a17090a5ae200b001df6173700dsm7170927pji.49.2022.05.23.07.06.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 07:06:19 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: linmq006@gmail.com
Subject: [PATCH] phy: rockchip-usb: Fix refcount leak in rockchip_init_usb_uart
Date: Mon, 23 May 2022 18:06:03 +0400
Message-Id: <20220523140603.50848-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_070623_226387_A2E26811 
X-CRM114-Status: GOOD (  10.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

of_find_matching_node_and_match() returns a node pointer with refcount
incremented, we should use of_node_put() on it when not need anymore.
Add missing of_node_put() to avoid refcount leak.

Fixes: 605df8af33a7 ("phy: rockchip-usb: add handler for usb-uart functionality")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-usb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-usb.c b/drivers/phy/rockchip/phy-rockchip-usb.c
index 8454285977eb..9743b4ac5d1c 100644
--- a/drivers/phy/rockchip/phy-rockchip-usb.c
+++ b/drivers/phy/rockchip/phy-rockchip-usb.c
@@ -543,6 +543,7 @@ static int __init rockchip_init_usb_uart(void)
 	if (!data->init_usb_uart) {
 		pr_err("%s: usb-uart not available on %s\n",
 		       __func__, match->compatible);
+		of_node_put(np);
 		return -ENOTSUPP;
 	}
 
@@ -551,6 +552,7 @@ static int __init rockchip_init_usb_uart(void)
 		grf = syscon_node_to_regmap(np->parent);
 	if (IS_ERR(grf))
 		grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
+	of_node_put(np);
 	if (IS_ERR(grf)) {
 		pr_err("%s: Missing rockchip,grf property, %lu\n",
 		       __func__, PTR_ERR(grf));
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
