Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6222C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 18:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqJYOweSObZcDsBKpIAJmawIntUjE2P2pcsBK0JIRlc=; b=T8teGT4rHWj5M0
	DkIXI/h9H6P2ZOMef4Kn+S45l5RoEBZNz0IbJXbqJE5STYDI6Y1oDi3RtA1okW4nfWUdWxsaTsTcV
	smCTZtqJwUbOcG45orYW1xN4M2J2u5K6KfpPmZeAAQCtl4Z3TFsl26S68oGcfkxxSjbGzDMiaTa9e
	hbTAsgDAvBTzA+srpImQFavlq+4w8DomAbGm8q/GbxI9fInw98JKRSQMM6OP5FdWA7JVp6L7hs3yg
	TaJhY88fLrn8mZ8dWOSfCVGYcTGs0CMUesxrfMryKCmDi7WhxfOJo1U3M+l665F5aWShFS+ozUSXU
	EJWKovWC4oAkjA/KaPyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw0g-0000000Chvm-2SbJ;
	Thu, 10 Jul 2025 18:28:42 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtp4-0000000CMR0-2TN0
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163713;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jTOJwZJsmHoGcZ8h71+3z1fiOauF+CUgacJvRTAcORU=;
	b=Va3tGZy6ZyLNaAJRT7Uis2LLaBtc09g0SwBkpyWRN2128gEofuF5DNiadVXq2i2nEWHGPD
	3TOJueo8DYHy4ScKDDbTVeLU18PQZyUru0Kn4FXOUgRARVZayTJEoK8aooVi7l8XH20+EG
	3yXwWymC8LU0vIQrHtxHZvjG6kj1q8U=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-135-U9caNZhrP3enGaxFVozB9Q-1; Thu, 10 Jul 2025 12:08:32 -0400
X-MC-Unique: U9caNZhrP3enGaxFVozB9Q-1
X-Mimecast-MFC-AGG-ID: U9caNZhrP3enGaxFVozB9Q_1752163711
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7048ed0751fso24494486d6.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:08:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163711; x=1752768511;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jTOJwZJsmHoGcZ8h71+3z1fiOauF+CUgacJvRTAcORU=;
        b=IScAas7GoyOIHtLwrHJX0k3zDRiU6hW2goD4nrrBq5XYt5sT9LX3ioFSxFuWxHWUH6
         Ynvp1agcsDL8fjG6txUpLTkbDL0rLO6hGLCUdn6PEsNDWQEvkesp3gDor2uEYfPDoJXs
         lAmxjFCMWzjIbh/lPljc+ojuF2FNrepSgQAHu1N/4y9GZL4W3CNBA7h1oQDfQQ5MG9CK
         tBScv8aQGH32n2+cpydet/z/Ing7oczbDSS8hutwQYC17i0prBdqpqkZl2WAGnNYs2tz
         DTTJRSMW5KwVZ1g7YQv5gy3yZfA4E+OlU4PvBKo06ALIocsQTTwip221yP2ZSwRboZlQ
         zcOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmzsxigZtwXEmbdZO14EGrvjzu/oRqk7Xvc/CNUkx8S6GQSQ5mDGGReWDGhShdGixMweK/ZcLG6Swahc4FOg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxq9IUVxlvhSAImBIkozv1oVpBV5YApdkmwXhiAnG4146DPOZY4
	WZJ83dSUlh4wN4CerMX4yRTkl/jI1B1u0lGZLaCtfCe6xXuuWC9Iw0TQCwO2Mh4J7hUShGog66a
	0tV1ONTABYR8GQrb6Jdqrn93XDMP8QdQFHsg7Z9u30UAtety639Zm/8katKebh3aF76YjX/2SBw
	==
X-Gm-Gg: ASbGncudIicTlBg9REtCqcbIf49HV3k1YCeQjHSl7GrjmhfCL5rt8B6PSi7tokp8Xea
	o6TQMvfVBWiIN9AqftRRrQ6QkeWr9YRuo4CwPg39YG6CDrgKZURYaAR2XTKhs32r3lWBWhY1gjq
	mO+vZHLf5TByzyBxJ0GLOoXx+xUcgh5U/MkkOuPJzmr59qQhrmeLDLiLsxqnUFUnP2w1djPM6zg
	dMWlNOfJEJlMNpVkPoTFeg4RUXW8xvrJJSJeAbYg/MVUd983ykhA22H668B20R2k91eV7iGcj4h
	Dvrhmzk0u6/suvmXu1dF3kPVFJHM+/Om73cefxk3IKEZwLHUpIYKPBDRI6h+
X-Received: by 2002:a05:6214:468f:b0:704:885e:bebf with SMTP id 6a1803df08f44-704981edb41mr38252346d6.33.1752163711111;
        Thu, 10 Jul 2025 09:08:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlqOGrQN8krksQLxHGl7XCXnHCMvXuYKuTeyW1zhM5hweEhYitnN6UMrP83jETXzN/T64C2g==
X-Received: by 2002:a05:6214:468f:b0:704:885e:bebf with SMTP id 6a1803df08f44-704981edb41mr38251666d6.33.1752163710538;
        Thu, 10 Jul 2025 09:08:30 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:29 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:19 -0400
Subject: [PATCH 9/9] phy: ti: phy-j721e-wiz: convert from round_rate() to
 determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-9-0ff274055e42@redhat.com>
References: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
In-Reply-To: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1629;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=pMJI6s5tTYu1BzJU7vvw5Y0iwaNTd3NH6yMHjsN8/cM=;
 b=0nPrE2c6cl5ohekNJUp1MPpsItdutqAcWnGrmBosgKM0YvNyBYPz4zo1bZfpAq6S3ivaSbkgi
 TWd7oICIP84Cvj784x11Hev/+JYsi8/Mx0kVOHPtXnwdacpkl9MVEHt
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vg8G2Vjq14ap1ALMR4IO8hKwlZoR_gvZBkAUDQbbZuM_1752163711
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090834_706001_83087B0D 
X-CRM114-Status: GOOD (  11.65  )
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
 drivers/phy/ti/phy-j721e-wiz.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index ab2a4f2c0a5bf3aa4b77045f4da8b0ddcc079f7a..12dafb2bd49bc33c13dd49246bc26df082e3dd40 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -934,12 +934,15 @@ static unsigned long wiz_clk_div_recalc_rate(struct clk_hw *hw,
 	return divider_recalc_rate(hw, parent_rate, val, div->table, 0x0, 2);
 }
 
-static long wiz_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
-				   unsigned long *prate)
+static int wiz_clk_div_determine_rate(struct clk_hw *hw,
+				      struct clk_rate_request *req)
 {
 	struct wiz_clk_divider *div = to_wiz_clk_div(hw);
 
-	return divider_round_rate(hw, rate, prate, div->table, 2, 0x0);
+	req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate,
+				       div->table, 2, 0x0);
+
+	return 0;
 }
 
 static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -958,7 +961,7 @@ static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
 
 static const struct clk_ops wiz_clk_div_ops = {
 	.recalc_rate = wiz_clk_div_recalc_rate,
-	.round_rate = wiz_clk_div_round_rate,
+	.determine_rate = wiz_clk_div_determine_rate,
 	.set_rate = wiz_clk_div_set_rate,
 };
 

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
