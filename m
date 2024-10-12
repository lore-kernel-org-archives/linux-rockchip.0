Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 477F9D1A435
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 05:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s5i728Y91pFermLMekALlSKerTbpTPOcsPaou5229b4=; b=BUkTUNboA/y/pM
	1mDA69RmM3knUkkKP7vaBigJBIDOf7Qk4N5T5PRg4PJQvx7DByGz2mR6BMMMxU2LpPVZJL32SPRP7
	88/3EGadny7J6MRKUrKscgzvqbbRG8pFf93RasX0fZnFP2dKWGHyuYxDp84Xou2JLMB49GvW/UvrC
	C/fl5hOCbfjOkOod3CmLT3uYOoLv1J19Uj4WXYURUhwkVY39b0Dot2Sfw3fW/USLtOOiBUgmg+4CZ
	q6NrG6jdlGfhUhhQYB8rJUBAJ1VmXpp/ZLjEgXTBSyAvQCVEDzfdVb7WspnUqa0rJLuuBI+0D7yS9
	/4BMo6HS/BDxcgudnn3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szUKl-00000000Y9L-1OTY;
	Sat, 12 Oct 2024 05:06:31 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szUKh-00000000Y8r-3Uya;
	Sat, 12 Oct 2024 05:06:29 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-71df1fe11c1so2245660b3a.2;
        Fri, 11 Oct 2024 22:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728709586; x=1729314386; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yrMwgAq1e1++de4Zz3jYukz8cz/GmaA5v1778Sh7EeI=;
        b=VIqWbGPdCJhBarEZ9i4j6uz5ZF+DZwrj2Dp4Ztw3jl3vzhZkFY2cXz8KitGkeN+N17
         Br/B4uopee6zzTa2gMuNtg5+P/vmbbgUM8py4uxQIZjG9TRYIsO41Sxt+g/Mx/quGvC3
         tcyJXyMH3FVq0qocAFw+b/dIF3KFffzNntvWV4zvJiAu9irbfMEfoWoxHnHajAyy45Nn
         Nq2rc1U5SOFiV3XPCvHKG4qiz7q7RnYba2gp+1p8vNuvgJK8g9J8LMkGG6axeEkk7rhU
         qr2FxqfY/Fh/7fIMZuWeaOHnG/PVHdT7+c4LHxfyyUodnmOzLKW29U/DE80m3RA3Z8XL
         qvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728709586; x=1729314386;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yrMwgAq1e1++de4Zz3jYukz8cz/GmaA5v1778Sh7EeI=;
        b=rP0WKN5EeBJC9F+SfWC+/xIQ3cQuRy7Gtt4RPm2+WOxHny0aYLLfETs9PEQO+fRlSg
         sK1nHZawmrBsXkKzxfjQ/5KENmqx3ed3iXZCTR2w0+KC0Qp0eGSJrOKpiWZXYszuk0zI
         JctWTX7jmJdDzksv6xaME21T7xwFc/sD237dwwQjyXYE7lc5VecJmUGF+z3oEko2Af74
         DZZlmmaEvXD/hYcvjLHNlYap5Smywkq92KEn+1ecP2R8eXBt4YPUPdZa2fB33C5b5jLz
         W5u98MTH/NX4SlRaaF0bx1YGc75m0Wg4XogzBdpJC3b8W9eMjMJbdGG7snASe1jLSxW+
         L0gA==
X-Forwarded-Encrypted: i=1; AJvYcCUJtGtDUao53Z4RFSi/MyNpwqDKwfGbcF64sfWCtAYWUIO2O1e95fvn45hzAg86QG92H1ez+fvVdYhrjLzZGLI=@lists.infradead.org, AJvYcCUfBh+7mK6HGlZHWcWEg2UebLQ+uCqC45n9OuqqDmFyMYEFqV1wVxmjNCisBlN+wqSZeGAqFbX5IaN14EDhUY0q@lists.infradead.org
X-Gm-Message-State: AOJu0YwDLSYH1wmehBQZjqj5GyxMQAZL/KsqVsppDsokTEvADyNIWYou
	0xR8oWwJYCSQedrT8MKBMtI99cWEjXNmCarNmFc5bEFLg5DzB+/m
X-Google-Smtp-Source: AGHT+IF45l0QU4CAqS/7Bll3KH41T+leZDJyL2cSSYzvPDtV6bK37nxDLXTgJxAecdk2smkhcmrKSw==
X-Received: by 2002:a05:6a20:2450:b0:1d6:d330:2417 with SMTP id adf61e73a8af0-1d8bcfb27b6mr7532680637.40.1728709586432;
        Fri, 11 Oct 2024 22:06:26 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e4ad1b9f7sm859809b3a.190.2024.10.11.22.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 22:06:26 -0700 (PDT)
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
Subject: [PATCH v7 0/3] PCIe RK3399 clock and reset using new helper functions
Date: Sat, 12 Oct 2024 10:36:02 +0530
Message-ID: <20241012050611.1908-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_220627_941549_22DEF40B 
X-CRM114-Status: UNSURE (   9.08  )
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

Following changes are used to reduce the code and used new
clk_bulk and reset_control_bulk helper functions.

Additional to the PCie core controller changes
added some new PHY changes to help improve and clean up
the code.

Made lots of silly mistakes.

Previous changes.
v6:
https://lore.kernel.org/r/20241006182445.3713-2-linux.amoon@gmail.com/
v5:
https://lore.kernel.org/all/20240901183221.240361-2-linux.amoon@gmail.com/
V4:
 https://lore.kernel.org/all/20240625104039.48311-1-linux.amoon@gmail.com/
V3:
 https://lore.kernel.org/all/20240622061845.3678-1-linux.amoon@gmail.com/
V2:
 https://lore.kernel.org/all/20240621064426.282048-1-linux.amoon@gmail.com/
V1:
 https://lore.kernel.org/all/20240618164133.223194-2-linux.amoon@gmail.com/

Thanks
-Anand

Anand Moon (3):
  PCI: rockchip: Simplify clock handling by using clk_bulk*() function
  PCI: rockchip: Simplify reset control handling by using
    reset_control_bulk*() function
  PCI: rockchip: Refactor rockchip_pcie_disable_clocks() function
    signature

 drivers/pci/controller/pcie-rockchip.c | 219 +++++--------------------
 drivers/pci/controller/pcie-rockchip.h |  35 ++--
 2 files changed, 61 insertions(+), 193 deletions(-)


base-commit: 09f6b0c8904bfaa1e0601bc102e1b6aa6de8c98f
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
