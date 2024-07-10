Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 233A7C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 16:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ZiXYqKIXqK4e7LxY+xFiNb6bciqUI/BTkUd4EqX9mo=; b=UtqcubOstRdggn
	UGi2WixaGMJPos0/OvTzHIKTjnVqWAQbI3H88LwSLG6njWuejXKFUb28z4sUmeOpbopVWO9UUOdcC
	porTQlUvIy2cX34ql3xcUazqI/Rf8vL9WRsOywk7BHTvQwa1ofec5PNY3LYOHZYTTGU9zFWR57UB/
	s2e4EXsq8V6rd1OBS5Ge93K5LrwFQqagjfNbJP6zzs7/jK4VQgptu8cQ0IkBEtJvmQiLFlTFbfaFt
	gqQJNbwA1Jfv3W5Cj1I6Kef48XAyoFv5RvdDijpDmaapqUxSMn93LQxVOPiZTrI8zpJhZw+osFei7
	ctv5WOkB3fjFL+XwCo1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRaaK-0000000BEef-3MRk;
	Wed, 10 Jul 2024 16:54:28 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRaa3-0000000BEao-31Fi;
	Wed, 10 Jul 2024 16:54:13 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-52ea2f58448so8442211e87.1;
        Wed, 10 Jul 2024 09:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720630449; x=1721235249; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ahkeI5pe5nI5C8b4YHdNxlMMoYZSpHe4ITBlVeHfQ6U=;
        b=RlYCsNAur3d3ob1Kht2pdY5qCTDNSoPVh2XJFPjBGF3Zxe3awSDDJZn50LnxgYhyPs
         D1qVenZCnMzu4oUeUMufwZmJbF679jszEOLVhWLpAzJMiyJKjbTmTe/bYwCArCRHk3sy
         sKHit+42U26NLpaHDbyNE/xfVERoG/e55yI/RMVUgoMU+qDWbBW48O5dljc8GyrwgqnJ
         V2TRfuwQls6rKeWSPr5PanXosCusBGuxgNCBeUTYXIB2W64Zalj1+xLa0rvst+vOfQ3a
         mxxxGUDn98GclmIzi8cFGyfwzcG85sNPpk30ejrvd5T8lJOs3NWMw9/3LgfuT8udl2DI
         RHow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720630449; x=1721235249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ahkeI5pe5nI5C8b4YHdNxlMMoYZSpHe4ITBlVeHfQ6U=;
        b=aYoW47RYAoK32QKn6vHg9L7wqscb93DLi9zZdqOtvA5CviID/J5RHSWgCJuUW9Lg8E
         ZaSQirGdhNhs492UOe2ovO+F3X/73N8ryTS1uJGprtjmfVOGgW2aAk5fK6sMtZ3few/d
         qP8B5WupLf/RyTYdpubnhyJS9zC3VEm5uN2bE/GD5N9bX4sA9JFmJZG5PQD1rQcMgEFa
         kILogZi6iiaIlpClmRAGzojLNEhPSOwQL8QrJozvlS8VGqdVUt7TpxQcCNYadmg81hq8
         HgCHKhdisSXaHF6kVR1RlURjHduGypwnt6gmQkQ0is0HdCNNy96ktToaJNBZ6Lh+YoPk
         BBnQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+8NkocEiCwATABJe15xwbAoW+PaTKvO5h3cnPy5WnNyjHN56j4H48uNXsoHLb6LEYgU1VdiYqXfG4DKekhRhyL73jMq6X4c6xy4mvPzt+E+XV
X-Gm-Message-State: AOJu0Yww6UYlT68jQeoTPWCyC4ROkexiumttTA0Q0QAIv9xRDpXGM/zJ
	fsT6kJx2XVAeBdMEUHUsFJ+zo18w5oN0Jz0LwsN9UvspKvXbkTuTwU9KHM1+E8XLSA==
X-Google-Smtp-Source: AGHT+IEajbdl4FT5qrhmmRB6BQbU0FfjqwFayr0atV/zCp78FbtWV3qlid4bhLaw/0aL4ILfg3e0Yw==
X-Received: by 2002:ac2:4565:0:b0:52e:9c26:5c0c with SMTP id 2adb3069b0e04-52eb999a650mr3417514e87.37.1720630448268;
        Wed, 10 Jul 2024 09:54:08 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52eb8e346bcsm655293e87.20.2024.07.10.09.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 09:54:07 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH v2] clk: rockchip: clk-rk3588: Fix 32k clock name for pmu_24m_32k_100m_src_p
Date: Wed, 10 Jul 2024 19:53:54 +0300
Message-Id: <20240710165354.1338287-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_095411_778827_7048C2E3 
X-CRM114-Status: GOOD (  12.58  )
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

The 32kHz input clock is named "xin32k" in the driver,
so the name "32k" appears to be a typo in this case. Lets fix this.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index b30279a96dc8..3027379f2fdd 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -526,7 +526,7 @@ PNAME(pmu_200m_100m_p)			= { "clk_pmu1_200m_src", "clk_pmu1_100m_src" };
 PNAME(pmu_300m_24m_p)			= { "clk_300m_src", "xin24m" };
 PNAME(pmu_400m_24m_p)			= { "clk_400m_src", "xin24m" };
 PNAME(pmu_100m_50m_24m_src_p)		= { "clk_pmu1_100m_src", "clk_pmu1_50m_src", "xin24m" };
-PNAME(pmu_24m_32k_100m_src_p)		= { "xin24m", "32k", "clk_pmu1_100m_src" };
+PNAME(pmu_24m_32k_100m_src_p)		= { "xin24m", "xin32k", "clk_pmu1_100m_src" };
 PNAME(hclk_pmu1_root_p)			= { "clk_pmu1_200m_src", "clk_pmu1_100m_src", "clk_pmu1_50m_src", "xin24m" };
 PNAME(hclk_pmu_cm0_root_p)		= { "clk_pmu1_400m_src", "clk_pmu1_200m_src", "clk_pmu1_100m_src", "xin24m" };
 PNAME(mclk_pdm0_p)			= { "clk_pmu1_300m_src", "clk_pmu1_200m_src" };
-- 
2.38.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
