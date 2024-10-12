Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D28F5D1A431
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 05:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ei78EL3+TkQN8csxI66UuIsFf3eL4kidVf1ObQfrXeE=; b=cjctAhv5U8s120
	VNQ358VUbXoVW6Vrt1fZqZ9qXNU6vIPnOlpPXTMzieQrmYgSW24h9emj+abBHA+C0AjrnQFb0QEqm
	QONPtjKPA7IW6q/kL+9od0NGjrcN0G2jwWyOq/vzEGVZBcetUrbjPBMC0HMaSVHhakqkX6Dbh79sU
	QnQRn+Ndl2lQdLgoz5dhJLq7Z2fEQlHLG4rSzJRQIob/SBpCHZypbhFQ/UW6nbaEymucyetZKb1tV
	ocy7t67YFi2EpAKNY8q/hIuD7IRlKcCZ/xhOMbEgIRjJASB6cXy0lHyka+wnDtMZFInty+z4W58hr
	u2AGfo404UhbCmeh60+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szUOl-00000000YeL-2vRe;
	Sat, 12 Oct 2024 05:10:39 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szUL0-00000000YDn-0vCY;
	Sat, 12 Oct 2024 05:06:47 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-7e9e38dd5f1so2183679a12.0;
        Fri, 11 Oct 2024 22:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728709605; x=1729314405; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=myoEO0ww2czFo+NDaKnAm+OqHSFtr4LH3EKBGNBM3z4=;
        b=dgCs9+QlFy3F8zSQjx5ucookFHHrXY+JaAAfM1b6Fk0Aa48WIVcGkCH7/I0u9g5qxg
         iqwroeH/u3GhUYeBG7GddTVt4NSxUAjas2yOrtLTcU1R6kwFZ6ywV1yDrDQgbBD9QYfe
         +wUCycnSSK7YU6TinklMN0uSNe9c9qerRbGQ0ejxQXL0r7o8vuZGuV5f9HlNH+8bRb42
         2uDkY5nTz7l/eE7bLtHZCyAdcdI68PQm1hxZWb5ic9PtG1Y9YmblBDUNSxGLwlJwttF7
         +PaRaxYgBB8bczxoaHp12UbvHgY7N+2sgPyuO9No8l0BNc2SNhHFc4rTwbqSjS9Adlkb
         enVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728709605; x=1729314405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=myoEO0ww2czFo+NDaKnAm+OqHSFtr4LH3EKBGNBM3z4=;
        b=hZ7aTXcLeqk8SSlsORsSGtITbatn/W4xplnkEzIxPdvKgFNVaS3tO5OX+SHo2+t/1F
         dE2nFISNchRtQai8BoA0MDJMxeGghW80hURv2o3YvmY1IHQYoHWWvrRCqfN+SQX8+au5
         0vFMjfAcpkzbQ/9adnSRdINTZUSeM/OPT4xeWFcdENLI/lcwAjEN2gCK4oDcoc85uhCJ
         AtybJMWpFNwKi3wYc9RBpztJNwhuo6Ryr9+rEw9LaawsGo/u9xXB8oGjIc5r4o6x9mzZ
         0/a1y4IP08xpHSMmJVGbaHJk36apYUytfndZZjH5qwOcaRQWWujKghBcKoM+N1fnzGC6
         nezw==
X-Forwarded-Encrypted: i=1; AJvYcCV9yVXwyfANPGHAuMPbH87jxWLZCqf9BZ9MCMSI1C4rFGemo0i3rhRsHtoC2kWRBqezeVyoA1aYeFwBVK4KVR6T@lists.infradead.org, AJvYcCVsBx6ocqaAj+ApIRTTrPmdsYp5Dey4I52z4RmUqSdlNeIrlHR9ZDwwSFflh0URcm4sIG49yVRujVw/wpHT9RA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2FQq7CZnMPY8Z0MH6ge+POjrbXpmwIOF5KyqB9ezsT5hzTVwq
	lXO7+ViAV+D6HfVelIjNBMJJqN+SnxiQ9Y2N4T/wZem4EVV6CWds
X-Google-Smtp-Source: AGHT+IHbWnSJOFSlNgJF4OYXyX8KdfVCrRAO9/1mq47VYfOabgDCcVZ58F7Tw4bhokGiBoTcmX26tg==
X-Received: by 2002:a05:6a20:c997:b0:1d7:1277:8d22 with SMTP id adf61e73a8af0-1d8bcfb296dmr8295467637.43.1728709605470;
        Fri, 11 Oct 2024 22:06:45 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e4ad1b9f7sm859809b3a.190.2024.10.11.22.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 22:06:45 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-pci@vger.kernel.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v7 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks() function signature
Date: Sat, 12 Oct 2024 10:36:05 +0530
Message-ID: <20241012050611.1908-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241012050611.1908-1-linux.amoon@gmail.com>
References: <20241012050611.1908-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_220646_276571_2AD44F41 
X-CRM114-Status: GOOD (  14.26  )
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

Refactor the rockchip_pcie_disable_clocks function to accept a
struct rockchip_pcie pointer instead of a void pointer. This change
improves type safety and code readability by explicitly specifying
the expected data type.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v7: None
v6: Fix the subject, add the missing () in the function name.
v5: Fix the commit message and add r-b Manivannan.
v4: None
v3: None
v2: No
---
 drivers/pci/controller/pcie-rockchip.c | 3 +--
 drivers/pci/controller/pcie-rockchip.h | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 9a118e2b8cbd..c3147111f1a7 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -269,9 +269,8 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_enable_clocks);
 
-void rockchip_pcie_disable_clocks(void *data)
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip)
 {
-	struct rockchip_pcie *rockchip = data;
 
 	clk_bulk_disable_unprepare(rockchip->num_clks, rockchip->clks);
 }
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 2761699f670b..7f0f938e9195 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -347,7 +347,7 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip);
 int rockchip_pcie_get_phys(struct rockchip_pcie *rockchip);
 void rockchip_pcie_deinit_phys(struct rockchip_pcie *rockchip);
 int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip);
-void rockchip_pcie_disable_clocks(void *data);
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip);
 void rockchip_pcie_cfg_configuration_accesses(
 		struct rockchip_pcie *rockchip, u32 type);
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
