Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7C42CCFA05
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 23:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jk4LlY/Fbu+rBlxqIhQxVEajgyzy8NocQgniWYxhDg=; b=Ha1Hc5kWCTbq6F
	oXL/FtcY9J3t/YbwlUwCvMS+S3LWOM8PxXufZT4FP5i8jK5yhZftq/Z89S2BB4opPw71RoyAGOKYy
	9a/03e8aiu/8JCbq2WlfO1QcZFS7hci9ZOyE72JiqfTGZ6MrzEGX0ZntJwD6xZwmI8WKTlKzhI+jM
	l9d1FbnMDlMoopLPixkFL4+dyywG9K3AsIM+23KJlz+AljePkkSCo6oRXcwVZ9ZFvoecuN169GL58
	AT+9d96be2NUeQFv/zNQO/MxZ/mc1jMTbiVxgOzFr46/1bg/4Ucasu9s4iCY+7ia5uhVMy/Kb79S/
	RP6L/8hCSd1kD2VQqwrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NN-0000000GMvZ-2PvV;
	Thu, 06 Nov 2025 23:26:45 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NL-0000000GMsY-1R0n
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 23:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fzzoA0sgvtO6Huy28YTNePP1cZ5wFE7gDr3kf/Jxy+g=;
	b=h0fIbBAydu/MM+mjjmd+hjsTLZPoNedNMMoRC1ReymnrZY+ZQTeeEj6LbUPePaqLaJrmdj
	qvQH1xIUtV9mTxmaziCn6UFBp8fRRV11P6YTr28ow/lMk7MgRrwIaFItTOFHk+AGSKKWBv
	GMibajoVHLqeHqMm5Dj6FpOWRknlbgU=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-17-8ZO4FS9-NNiAlTfrNI8liQ-1; Thu, 06 Nov 2025 18:26:41 -0500
X-MC-Unique: 8ZO4FS9-NNiAlTfrNI8liQ-1
X-Mimecast-MFC-AGG-ID: 8ZO4FS9-NNiAlTfrNI8liQ_1762471601
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed74ab4172so4567241cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 15:26:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471601; x=1763076401;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fzzoA0sgvtO6Huy28YTNePP1cZ5wFE7gDr3kf/Jxy+g=;
        b=Jq/t9CSh+1j6qU4vSHL31ymBA1A4Otyh/8aNAY8yVmD0o2Zq9y9avMG1N6HmUcLSbh
         6ZJpQdtIogeO3tJEmc23akA1N1FSp101V5E5UAVztn4u6o24KA57gk1ecPjcbYLsq+aR
         ZKhfXv5IyQHR73cOX8V9egRdN4Z4niokTqIS0mI2e760bi9R4woOgNroBOerQ356nTUd
         uP4kD6Y50JbteVz2jZYX5SF6To7cheGZszfr0dPH646eUox4RH/Zav0hoxbGRgjyvEK4
         KyLlTJNQ9UoFCdYwlntIRyrQQEjOa3X4jTb6ib832oxeVYRzkSbN7SXBIkdE/u0vN+KF
         Cqjw==
X-Forwarded-Encrypted: i=1; AJvYcCW0vN58LY1Cy7bdjETUDQx2oNO5Z1XpDeee5c77qsAhDa6VK2EhUHVEKLxYtzDRdF48dMgEMa2X7GFsLnHCHw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8fW3fglWIS8Ln6h1CDi0UZtTLWn5Quf3wrrScE/EBZv27kV9h
	7G4VmLu1OBIXHMADlRJqQL/nqBSqR1LvIPeeC5RfErauGP99d3pcnV33RCSDE2/iICX7QsVMMy1
	dicc2xWkw8koQpL+pzwjAGT2yO8BPDyhTTBY0A15Fgrncy+KAExt+6XpjmEyexxVWPUYMsikSPQ
	==
X-Gm-Gg: ASbGncuV5EDYD4CdjmOmSXHKI8GywhaGI1q4bh0LBfh9niWGwAbNDZQoKWn32HjFd7j
	2GrB15/gAagmNIKGNFlqyLiwzgJk/lT0pcMCXe3rwZShso5qQtZF2UKuTTVy8SZkwz7MmcvXGIa
	F+0hLgg3T7DMlS3LnapEngrqR/98wMmHPvrF1g9g+9mICThZaFDx6pIdRRYh387r58CLD6bN7c8
	BDkCaaCBkEvsdjm/kAN17XOZ8794WuDD1EodO+j1iZLQVsaqnZT5DC5jkgA1AZB1FHJboXQt7Eu
	BjjcOY20s4yzlzDdZonf8Nd0cG9UiS5t1k6ah/LYyezgYMMBLhvwGxyPLqNMwrez2BTlutwdhR3
	tDYl7EP/gYBHYA9Md/PR9u38fRumN5SwYtZYh4q2QYg==
X-Received: by 2002:ac8:5e0b:0:b0:4ec:f8c7:228e with SMTP id d75a77b69052e-4ed94965d2cmr14670481cf.20.1762471600829;
        Thu, 06 Nov 2025 15:26:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBSY6ZC3uinTD+3Ty3ImTkmn67RZYU0qwyag+7rpP+kdNpFJpdcKxM23Wr/jw9wVVKFtdCLA==
X-Received: by 2002:ac8:5e0b:0:b0:4ec:f8c7:228e with SMTP id d75a77b69052e-4ed94965d2cmr14670131cf.20.1762471600494;
        Thu, 06 Nov 2025 15:26:40 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:26:39 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:48 -0500
Subject: [PATCH v2 RESEND 2/9] phy: mediatek: phy-mtk-hdmi-mt2701: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-2-e2058963bfb1@redhat.com>
References: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
In-Reply-To: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1429; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=kakNurIzgUJYDq3FSiWnwOldSD2Dsz8eAB7sKp0pFFg=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RakLvNXLXp4dKGpoLGdvd/lA+kBXBxPQrUnzGDJn
 31ZbNPtjlIWBjEuBlkxRZYluUYFEamrbO/d0WSBmcPKBDKEgYtTACYysYrhr9DBktS9ynMn++tf
 k5w20/RkIMMWe4YlR42kDylzcPtNSWX4n7cyZM6jjhVMr1oMFc86Lt7ee3N2m+epE1GRUfUfZDP
 2swIA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: B6t2lanZIRjVjIZ8c5stHYVTmm8Ha9QNSgnKyLnyiAw_1762471601
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152643_473355_C846EEA8 
X-CRM114-Status: GOOD (  13.05  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
index e51b2d13eab473dddace48c75c2a8d73c8c65635..b0b6497e7eedcb6867541b573d22156ded29a4d5 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
@@ -90,10 +90,10 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
 	usleep_range(80, 100);
 }
 
-static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
-	return rate;
+	return 0;
 }
 
 static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -170,7 +170,7 @@ static const struct clk_ops mtk_hdmi_phy_pll_ops = {
 	.prepare = mtk_hdmi_pll_prepare,
 	.unprepare = mtk_hdmi_pll_unprepare,
 	.set_rate = mtk_hdmi_pll_set_rate,
-	.round_rate = mtk_hdmi_pll_round_rate,
+	.determine_rate = mtk_hdmi_pll_determine_rate,
 	.recalc_rate = mtk_hdmi_pll_recalc_rate,
 };
 

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
