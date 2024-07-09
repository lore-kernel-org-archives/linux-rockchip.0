Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83519C3DA42
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 17:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CtZRn1LiQNWqJ4fzQ4i2TYHJmA6RgRAnZ4piN3x788k=; b=KH3hNQW1lY6bSR
	Uo9cAGKyMF0Xp/ChJU3mC2DUN0cCZhlwegIplV/Iom1/U/wT5589JHZdgc2JuWveRJwbFQ7WZZnAZ
	CwJMRlKjUSUTtAdxroLAEi6o/uGog8xtInR5ExgvN9hmqMMy7e5KWVu3PlYDe/A3aaOarQ/e9At61
	oLCsjoO6t0bNpXMdoS17OFv0EgtUluRgjY/niibLetMd5jFzfsemg7cr5ngkKA4soHPVNJLdayQPf
	UFAhaZbOS5EIdqsWWkv3SNGNb+kKVeY+228s2g/mhaDU7qYcr86EMRpmcnD+1WW7VpqzVD3ucgiXq
	ePJCLmcOD8+Ul/fM/ZeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRF65-00000008FB4-1UPF;
	Tue, 09 Jul 2024 17:57:49 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRF5n-00000008F51-0CTS;
	Tue, 09 Jul 2024 17:57:32 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-52ea79e6979so4824237e87.2;
        Tue, 09 Jul 2024 10:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720547848; x=1721152648; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=58D2VQFlq7w2XDg9T7aEdV/ndOTx9HRupIZYSOMHk/s=;
        b=fGlQdDrMcVEYjsI4Hp1AKMceabujhfiFlOiAehqZ9BDJMo0aDv3iAnKafZe3v8UZoc
         dJOq2q0EJuo7U8gYosJoGOfSWOmGGALd2m3OcBWGGqyz/dkO/TIuKy4Z0+zEwiNqocvw
         RunNbyJHltppS3nIWvhE6vafX2465jl2m44gx3eUFohyPIp1q5cl2rvLCmgDdBSW5F9A
         zbo+/FwyLwhWmYkH5TYZisvf5f6dFp0+kGuCbtwmIoHOBNjzV75vZkU9DVXfrG7eVqJv
         tZmyql7XrtphjV+Nhgv9IHIoFEsS3Nji7w0sdmrptslUlKBCk5Qik3xjLNQCarkOIWqe
         h40Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720547848; x=1721152648;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=58D2VQFlq7w2XDg9T7aEdV/ndOTx9HRupIZYSOMHk/s=;
        b=RKF5cQxKEz1x/stHVUq5DL1YfXgCYTOZW7ZaSKn7irGYyKRqXrH+OMUdgGX3Ck4SEK
         9dGhRBru9W7JT0xD6VP8UUm6ntd30KN1hCNSslf9Jf5X2KuVzryMzoLCUZNJz26vGQiU
         Z6JK7e1dyBvoSNfXrhRcsGRHd4LYPrjUtQFrsp/Bczsei1FWEVCZM1r9UR8eaTtZxHeU
         Pe+h5X/5J4fL+Ttru0xE8RAsnR+eGm/WLB3Og4SNWHW5g0JviJEJ92xLKuq7zVaBVx+9
         0nr9fgwrPQrAqo2hihjri7AFhGeXnTvQlH01I9jsVjl0LdzIWWSKBbZMW6OUUCKk7VMZ
         xsaA==
X-Forwarded-Encrypted: i=1; AJvYcCXCfEN3g8mVzA4ctMF8iUOGPZPX+KErgtMPL8xhgutnG/iubjhE2OtMmNLUjIm4h1xoGyJ5kEGU9I6c1VsZjdHTkzwK4dOpY24x7kSiHIoJI1Bl
X-Gm-Message-State: AOJu0Yy3F97iAtNfL7AcwQb+RWG1lSmIus/K2H4HzMiuPefde893iwoE
	Ygv5zOIVzvEaF7jTUAPQmNeAHFe1N5eYYWpmP9OGuBS3HC/EGxGCZS9jsWDX
X-Google-Smtp-Source: AGHT+IFXS2oUx+nMCbywPCZG9PM+N1as0WxYVjJU/lsP1l7a94KPrwURJJ4wv/b1UT7mCjOyeRAlAQ==
X-Received: by 2002:a05:6512:104e:b0:52c:8a37:6cf4 with SMTP id 2adb3069b0e04-52eb9991276mr2442445e87.14.1720547847830;
        Tue, 09 Jul 2024 10:57:27 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52eb9061a37sm306482e87.141.2024.07.09.10.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 10:57:27 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH] clk: rockchip: clk-rk3588: Fix 32k clock name for pmu_24m_32k_100m_src_p
Date: Tue,  9 Jul 2024 20:57:15 +0300
Message-Id: <20240709175715.1317538-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_105731_129445_2C1C721C 
X-CRM114-Status: GOOD (  10.83  )
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
