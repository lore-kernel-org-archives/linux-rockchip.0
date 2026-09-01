Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B080C624D6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 23:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XnJzHucfXElHvRc1k4n1V8j4bC+41IXZNtowl6tcys0=; b=qCNNVnRnX0Es8s
	yZuBH76l+8/qXFQdiUEbUZV3N/Ilx8fIUZjhVUK66N6e/7VaDmBmnyzEDAquJg+MUXLRSRfyFI7/p
	xwfcIN7cMoC+vxYb0OJoq1JKf/aa3Q8UtCfkk+00buCQ5mfvqNvsJjjfSgr1j8hMFZCcTAFl5Ef4K
	/IGk6XB98udor67KV7hedVj+9vWJNypUpZ7g0sGzpyDKE7dgfQuTmoSnS6KjgH9WaBfyRXngCgRiS
	ekrpDZzeJO6YfqlcufRfAmLoUNqI19vH8CxBYJ9TjE3hXpDSM84CBOSPfbA21GwuS7nedB6E67pQO
	4NARcZRxQYwUOdPfTiTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Y9F-0000000DXzb-42ky;
	Tue, 01 Sep 2026 23:44:13 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Y9C-0000000DXxO-3eKl
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 23:44:12 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-cbb8b54fcf8so562918a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 16:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788306249; x=1788911049; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=q1fny0bMdrHzrb/Y/AQziUWSkRiiitvwLoZ2sKa9vaw=;
        b=c6ZJZ8lCZ7oKFjsKX+Kwp+a4P4iw4HqMzw7ysj5pjQmDBoAA76IvRXyu4jEBSRGPxU
         dXwbXCAiN9iIrxaAQ22Pg1xzU5FSgYg78iPf18huQyy16DF7DaupHT784ejo4D8Rxxlv
         fcd6l+tZy+6lMVEac0HQ7CG7mcYRwnryfIAEbyzBTbgpsnBnQ0CUByXnPMN3VIiN/uhL
         UKydxeaEhpIa6XbmRorfhtGIz5IJBrFvMfPI3yxvp0QxkmRV27Ln8rkOmw5h36HhT/L4
         T6fngfn5Q5yD7k0J2jaXndFOVN7LE24MTb3dzlveb7sb8+5ZQSTCuUi+Q19uWCp82TSQ
         jZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788306249; x=1788911049;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=q1fny0bMdrHzrb/Y/AQziUWSkRiiitvwLoZ2sKa9vaw=;
        b=JoElITQQ/ovxfZrhmAzlWLehL8kepgrijolYyUE859zQftm3hINcH+YBn+h1w8Zksu
         sU4gllbYM5THaO4uXOzH4t8vh+7UG8nMXdqRQ8uosgpBzh5q1CQD/rLw35uzNT526fpH
         3QVI36sSi99I1Vu5tNsOrg57jXCgzuTMCZrhgEyq8vVpJydsDWjTA1xpQGiAGfN7+VoD
         Q4II1ZBn8WB7Yhp+dqMO7MCs//JGGSQ9AIIkkNMoQgRkh0bIupc/ER3nGUxnAk3BIWK+
         60nji0U62Vgiwe7TXwY92sSXwXMGeAjapEGywVRGB8bt5jpkiQmSOMzW19y7JLRkRBt1
         cjTw==
X-Forwarded-Encrypted: i=1; AKwUvByaK77ojLF874omdSkk5jXciHkfDCB1q5ki4qIpyLs9tAyT6ZBy9adlMaS+Dl9ZAD6O3V9OScl0eJx+/SQQFA==@lists.infradead.org
X-Gm-Message-State: AFuF++lUUo2BkWxcCc2TVAdNlq0oJgPl9yMYE5ZGB0p7IaOLXMiA3ksx
	dbwiDapR4tiASQ56L8hEDm3VKZXtNKtWpsu/INPold5nuzlL6FDVnPMu
X-Gm-Gg: AYBFou2eORsk2Wpnq6/JVTWUpU0BxuDBx8crxlNda72SqTF/+wkc81wPBFq6rJhEYUn
	pgK84I7DRKFcJIFzvVkUKvDasDxQydiDAQ4Tx6uXBGRA1HQDavGWx+HgOOO9JEXDAZcze3eKD5t
	TrMeJIG9B9LhpKPilFp65hUa/RGKwMHl54YOIzoukIGbDCIKa771kmFe7E0euV7w536W4WqLoTn
	Jph8fLN/nueQVU5pZljanO1Fv/LVFBn39lcz5Kl4ilF7w9VmxalMEq0cO3nUb95H18gxgqsqn1H
	dCrA8oRZHaIx4qAxs/hui0TqqMNIvg3OhqOe+At9HOJl1UmCFf+klsLDsmZBoQtMrXPvHpNcSji
	8ykxRxA26Ea+E/yVYNb1g5AaWIswQdet3RTLFcr3jv6qP7BeXALcHUWvtOE+D8xO/ycUJf/Lpo6
	TRHmzw6xucKeQDr9hDZfF7y7rbrIjbX+x0HEjKuQbm+AruiR9XOezfOyjNRF17u3FAYodL079UG
	4gtb2BRTvU+JphUmCllkfNGAA==
X-Received: by 2002:a17:90b:3d81:b0:398:c150:e7b3 with SMTP id 98e67ed59e1d1-39aedf5d923mr868098a91.4.1788306249089;
        Tue, 01 Sep 2026 16:44:09 -0700 (PDT)
Received: from anarsoul-xps15.lan (d50-92-231-36.bchsia.telus.net. [50.92.231.36])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3990baaeec3sm8299903a91.0.2026.09.01.16.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 16:44:08 -0700 (PDT)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Cc: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH 1/2] clk: rockchip: rk3399: add 85.5 MHz rate to PLL rate table
Date: Tue,  1 Sep 2026 16:42:30 -0700
Message-ID: <20260901234351.190506-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_164410_912485_4782F60F 
X-CRM114-Status: GOOD (  10.31  )
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

85.5 MHz is the pixel clock of the standard DMT 1366x768@60 mode,
which is the native mode of many cheap HDMI panels.

Use a 1368 MHz VCO (24 MHz * 57, already used by the existing
1368 MHz entry) with postdiv1 = postdiv2 = 4 to hit 85.5 MHz
exactly in integer mode.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/clk/rockchip/clk-rk3399.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index c2b243d7a5e2..db241d2df625 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -98,6 +98,7 @@ static struct rockchip_pll_rate_table rk3399_pll_rates[] = {
 	RK3036_PLL_RATE( 148500000, 1, 99, 4, 4, 1, 0),
 	RK3036_PLL_RATE( 106500000, 1, 71, 4, 4, 1, 0),
 	RK3036_PLL_RATE(  96000000, 1, 64, 4, 4, 1, 0),
+	RK3036_PLL_RATE(  85500000, 1, 57, 4, 4, 1, 0),
 	RK3036_PLL_RATE(  74250000, 2, 99, 4, 4, 1, 0),
 	RK3036_PLL_RATE(  65000000, 1, 65, 6, 4, 1, 0),
 	RK3036_PLL_RATE(  54000000, 1, 54, 6, 4, 1, 0),
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
