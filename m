Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 844FDC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 11:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T3tb3u2k8me3gei9h02slHI5F0ObkH98sXpVzH1/jE8=; b=TXVXzxuSOOYwH1
	NNB4uXOSUMkcXSYIrfnu+4N/IjzmNltsxnFL6VFKjkkMXXewJemM6nEJFo8amSgcdMv6RoiHOb1jT
	hF8K1IicscqSUAUPcFa33x6AyrbVzHWe+Amnki0IXbA2Uu/IdckSRiZy8fO4VrptrFN9nuQhO+PpO
	GT4c5F3F0BSZFIBWPW1WLRZIm5cF/WN8SCkauiWq0mAQGL9L/xUyjNutDBXTyj5Rfs3X09g9SVFKa
	5qIFYxVE3frI4EoJUDhZu6TZ10A/sbYkqnUPoPy9AXGI4VVDqMnCrepBGvzXLQYFlcPTu4yFrVikL
	TbNAxzG33VDaa9bo2nCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxmmD-0059VU-0A;
	Tue, 31 Oct 2023 11:19:17 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxmm7-0059TU-28;
	Tue, 31 Oct 2023 11:19:14 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-5b93ddb10b8so3014905a12.0;
        Tue, 31 Oct 2023 04:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698751148; x=1699355948; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N7G3Botv4Z2Nn9bgAtDAhiUWVmZjvUPWNuCgWEigInY=;
        b=PokBz/0s7O1nvYPUraFnL5J+Ms6rujTKz81y4oni1xjw2vsjAXiw+tTpOnMfoiy+NN
         8f1i/aDcxocOGsluykP4U7KHaeJ3jlmLN/4yexqKo9h189bwocavGQLrW0JQ05l/GtA5
         kQAJXfTQ8kQmGNEAKMT/NJb2J7DayQneaSAsI0c7Ajs6Dcypy1erXVi10/r02rO7eNNr
         GkAmmT2R0OUoR1GMNqSxvBSpiZ5MXyGJKESj0SXTMN1DigSX8fLsOcf/dYOf557CmqFl
         XoZz/YCkfhd/0rwTkSX965ApPuIBzDW4bmo3qSaHE7PiOkIqlCt1qJJ+bgSlusbh/fXC
         UdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698751148; x=1699355948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N7G3Botv4Z2Nn9bgAtDAhiUWVmZjvUPWNuCgWEigInY=;
        b=WuwoY3k7SAB2m+B21xB6u7QvKBJa5McAJGO1dPsvDBS1BPb1rfWR907n5NEmO916PX
         wwqtkfJWysBhv2ysxOwx5TvOBgTsaVRLVkyVnFKcX2V7Ifb3GBxKNXRMUaFt1cxSc6xO
         nrrhWnQ+u+E5EGOeGi6NqByV8Bbk9+iGQhKgCdaQEp8UaRksuxuiv+H/2k1LexV+9Vno
         JB++BgjPQ027HgpAa33MnuYy2LfvI5lsXkhd3avADkz/aXC0lbVvUIguH4gdjFVDzM7v
         bKTf8D4giWpBNnV4zJHPfYTyTw9j7bZ7RmD1t/I7PREJJ/CszV28faR9cHnp7MgYxwig
         aEFw==
X-Gm-Message-State: AOJu0YySy8/JC//oa7/oXqthmjIHH4eir+qB9BrZ+pjBMmIyTLSlw6H9
	ybFt7BD1aPTk2my6EayiXIk=
X-Google-Smtp-Source: AGHT+IGSGVOqegKTcqcNc0YuBuXQyZWg+SJxYVSPd2yGYsHoR7fkH95bGWnwpOOG8uFd5ucKELyC/Q==
X-Received: by 2002:a17:903:1cd:b0:1cc:58f6:5347 with SMTP id e13-20020a17090301cd00b001cc58f65347mr3147599plh.34.1698751147792;
        Tue, 31 Oct 2023 04:19:07 -0700 (PDT)
Received: from localhost.localdomain ([111.207.111.194])
        by smtp.gmail.com with ESMTPSA id jo13-20020a170903054d00b001c9cb2fb8d8sm1118435plb.49.2023.10.31.04.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 04:19:07 -0700 (PDT)
From: Weihao Li <cn.liweihao@gmail.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	heiko@sntech.de
Cc: linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Weihao Li <cn.liweihao@gmail.com>
Subject: [PATCH] clk: rockchip: rk3128: Fix HCLK_OTG gate register
Date: Tue, 31 Oct 2023 19:18:16 +0800
Message-Id: <20231031111816.8777-1-cn.liweihao@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_041911_706467_4C758575 
X-CRM114-Status: GOOD (  10.21  )
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

The HCLK_OTG gate control is in CRU_CLKGATE5_CON, not CRU_CLKGATE3_CON.

Signed-off-by: Weihao Li <cn.liweihao@gmail.com>
---
 drivers/clk/rockchip/clk-rk3128.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index aa53797dbfc1..7782785a86e6 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -490,7 +490,7 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	GATE(HCLK_I2S_2CH, "hclk_i2s_2ch", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 2, GFLAGS),
 	GATE(0, "hclk_usb_peri", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(9), 13, GFLAGS),
 	GATE(HCLK_HOST2, "hclk_host2", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 3, GFLAGS),
-	GATE(HCLK_OTG, "hclk_otg", "hclk_peri", 0, RK2928_CLKGATE_CON(3), 13, GFLAGS),
+	GATE(HCLK_OTG, "hclk_otg", "hclk_peri", 0, RK2928_CLKGATE_CON(5), 13, GFLAGS),
 	GATE(0, "hclk_peri_ahb", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(9), 14, GFLAGS),
 	GATE(HCLK_SPDIF, "hclk_spdif", "hclk_peri", 0, RK2928_CLKGATE_CON(10), 9, GFLAGS),
 	GATE(HCLK_TSP, "hclk_tsp", "hclk_peri", 0, RK2928_CLKGATE_CON(10), 12, GFLAGS),
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
