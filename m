Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 271FBC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Feb 2022 02:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N+OF0aF7uwjlK/2sbtVNASHLSu+1A6rbsq9fR0pAClc=; b=qPRnWBxr4nS0nW
	nPzDnZCXYuWWQXXm4MICH78+H2pi1GG/Heik6/spqV6WMdxZZanhT+2f9O+7ginBK2ClRZpInqt71
	eUltoySE1Ev5WFpbNvpOnI7/DlXHf0PDFDKO6xTnF7fIA2jgZBYS277eXE4ORpjU0jcCRVDxzJ1nf
	bR1sjBsl7ue3AcZmufpu4K12gIR7/eM3hYeBIbiFtnTsqHMEAajq40kMNYsmGQoX/xnXpIsrLdzPM
	iSN2onuPaMuhuEg05P7Wy442Chxl4g4ctf7qNLNtadxLVu+xqZxl1AM5Eg3yr74346APkx1deB4eR
	3MBjBIf5gCOrZ3W0Zbog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLy2W-002tfN-CR; Mon, 21 Feb 2022 02:03:00 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLy0p-002stK-Lc; Mon, 21 Feb 2022 02:01:17 +0000
Received: by mail-qv1-xf33.google.com with SMTP id h9so28230646qvm.0;
 Sun, 20 Feb 2022 18:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L6UJ01aO6yqMFyXgXVkysCIqiLsld/b/1p7hzthZA8U=;
 b=FV9H/c+eRAbiraRlbbFVbiUpp+PdGevLPwWpXp5zDNgnKnVqO4+fED7zaFyE9HDmpN
 sH9fo9LkiNQvf+JSp7FIt0dXcZrM8SpUS6013DfVUatIToW0uNqgotay7nH5s+QmgHtf
 ZKJQl2sitkYGDNKctwH+fS3sNIx+DMsWOmYxst2OBZQGO2S/lpY89MHoOlMDIocPv4vz
 43t8PxlZR8lDUGouHja3QhGoAHmWXsI2nQOJ5GA4wvEFsLmqsiKV1A/rSCmsmh/i8v3G
 NUYVz3L7reQ+1IppHRMjhh7Rer6gPXkQsSj7HuZ4zvmJkOkb8gPYF43v98Aket1bna5L
 CgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L6UJ01aO6yqMFyXgXVkysCIqiLsld/b/1p7hzthZA8U=;
 b=mH7Vn5LSjV1L7BeWV9D0+UY/HYoe/sojQ47W5AwGMnsoEksBtvKgkUf2GCKjIbIut3
 u2eV5iIZm+rpVle2yBS9Onhs4tZcmug8q+fqebhKdoSkItodM/SO+w4KH8Wz5mMdXLOV
 lYsn/mp4q/2pUuRkUSX0bA9LlnV5VSqXxiOKJuhmOFG6+/hWybf2MDROOkbC/Xfo/02J
 rF9ncSJsWVlHoZs2J3P/tS+YNFWBbLYRrk4eWhuyzmxnhZCtxyog3gEX6lJNK1FllMjN
 zaOEybMqogg4ShSOYh1HWkY6PxoPgyiIanX+uWYC6RGkBKxqAL9XlCyPV80MoEDsrrYB
 /cxA==
X-Gm-Message-State: AOAM530UJnc93BoB1yCW1XdP11C1yodPkIbTFDrizFTUKZI0EJ3wvuyr
 7WUQ9TZpG5j35a0HYnnj1pA=
X-Google-Smtp-Source: ABdhPJyti2fe/0D7jey1jMV+CH6mSxJq2zIFxoITidmlU76ohHSP58kKVGfznBiNbihuemWWiby6Ww==
X-Received: by 2002:a05:6214:e6f:b0:431:46cd:dd9a with SMTP id
 jz15-20020a0562140e6f00b0043146cddd9amr6013348qvb.125.1645408874012; 
 Sun, 20 Feb 2022 18:01:14 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id n19sm19160708qtk.66.2022.02.20.18.01.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Feb 2022 18:01:13 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: mturquette@baylibre.com
Cc: sboyd@kernel.org, heiko@sntech.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] clk/rockchip: Use of_device_get_match_data()
Date: Mon, 21 Feb 2022 02:01:03 +0000
Message-Id: <20220221020103.1925026-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_180115_769238_A2491477 
X-CRM114-Status: GOOD (  11.03  )
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

From: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>

Use of_device_get_match_data() to simplify the code.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
---
 drivers/clk/rockchip/clk-rk3568.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 69a9e8069a48..9ca1a26a2533 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1697,14 +1697,12 @@ static const struct of_device_id clk_rk3568_match_table[] = {
 static int __init clk_rk3568_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
-	const struct of_device_id *match;
 	const struct clk_rk3568_inits *init_data;
 
-	match = of_match_device(clk_rk3568_match_table, &pdev->dev);
-	if (!match || !match->data)
+	init_data = (struct clk_rk3568_inits *)of_device_get_match_data(&pdev->dev);
+	if (!init_data)
 		return -EINVAL;
 
-	init_data = match->data;
 	if (init_data->inits)
 		init_data->inits(np);
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
