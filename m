Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81A95C54FC6
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Sep 2024 18:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wu9iuzSKBmcpteUacDpTrl18NVKEchci9L1JPeoKajA=; b=fN3vZ3hyuxM9JW
	yg4ALLKgfLhaYhvm7JsTxEEStKko9hrI9Yd9kLzDjs/lOAmCz+eHc8QsQkvxCaEe0wgmVu06ePQXq
	2ITd3hbLzzB7Rrjytgq5Wtu5ZCnuh6HUiY6JwB0SvyUUhPiYU4+wNsUWG+whf7ZcwS0D82BENIhoP
	nmNUHWroRvctPOT6ocUq9qmERSnw+2beGX/GPdVNh3rk6o1h1KpN9QkyaGu63775BAjF+RH9C5Xgk
	P8LGz0wNEIGd2deukQxANm1qVWkry0pky0jledyUCgopZLyxZQYnxGFCteUoQvfRAR5dDOp6UMFvy
	t19YEMV1DT0BZ/hhDffw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skpQM-0000000C8jo-1RRX;
	Sun, 01 Sep 2024 18:35:42 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skpOi-0000000C8Gh-1zzA;
	Sun, 01 Sep 2024 18:34:02 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-7cd835872ceso2346690a12.3;
        Sun, 01 Sep 2024 11:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725215639; x=1725820439; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pzzz5BgFwRDVkmJ8r3yaq+E3D+dJOH3xQYUobHOj2zE=;
        b=ScACO8154hZwZzQ3dONRhVLwftGkqKZZnwQEGlXJqJ9rYb80wCbTQ3AgMfal4N6RcE
         MqNZc6AiuHjMYz3TTss5gz9WEsOQI1jqVopJMXyzhP0a1ZYBnyXTYtrH2jZzHCrcCMSS
         Z2L/r0urKnNnXTGKdeptArisa85QVfICDKJSRCkuh/9UejPsZAQdFph2hDw5GogVTjeV
         h+NRWqgWpiVumIOAqgF2blvctaNvKnP6Y2+K6exxcWpnnUBh3lAvep3cOt2hsdnBDwJf
         Ius04CAJ22Qv1EMkzq92h5zsEBYnH2OesLXcNEK4rQKWWgk/xp4qF1ds2RkZOOUYn7Ko
         R+DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725215639; x=1725820439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pzzz5BgFwRDVkmJ8r3yaq+E3D+dJOH3xQYUobHOj2zE=;
        b=WcKrHxJXRvCh5QqR3AfaiZ2Z55KAJV3YYzqcDpfjrQWnBWSDX/fIi4ArTHtxbMNh1J
         5eBav1PcE66x9jYQAtYhklpgJ6YbeWwIDT9TwQNkupQTtddW/Wl+E8WepIKazEYxhZAk
         4WCQBiiRd1Mh7dm7yikrfFE3v0QS7J/EnZ3waBKkoSZp5ENOsKtthTWk35WrNyLix4Xr
         zay3uvUqOjcTtvMjjfGLFRLcc9fij40V9mu2Cv1WQnKgD+WiPJF3XwB95xuOOmmkanQW
         TZZQ6w5pmPVKCRnYNkfJ6dqwSY3DFb0ZvSs8pjcXxfxg6qWnxQduj04/8Qc0Uk96Y2uB
         bUdw==
X-Forwarded-Encrypted: i=1; AJvYcCUIvq2Wdy56QSKaz/L18kmPMhJ8/i/FYS2KLHgi6xz9BgAwF5sEutuqPKanY9u4kO0NI5dkqEYqtue4OdAb0Rsp@lists.infradead.org, AJvYcCVZdiKrmSsSdoNRMCW6PfDfLTv6qA8UbIhjyQTkIp56BW2u7CB9klHmW7TlhDK/LDrJgk5oU3V+EubWStQwksU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxF0rswtIj384AOU9ySOW1JcQJqJAJ05SW7ESoOsWNz53djNxsC
	zJsHfFziIlz08AZwob6JkzKiIy7FqFuZMeW7CSoyIVFEtzTCvvdQsvrJRw==
X-Google-Smtp-Source: AGHT+IFDgqjSW1rL9/PXo6YlVWAy0MyWhSsve1VDtotr74xSvztHnzFkJDyDmzxaqwHh3b/9TiVGQw==
X-Received: by 2002:a05:6a21:78c:b0:1cc:eba0:e7dc with SMTP id adf61e73a8af0-1ced053bc3bmr5198514637.34.1725215639483;
        Sun, 01 Sep 2024 11:33:59 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20559b793f8sm16262405ad.15.2024.09.01.11.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 11:33:59 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/6] PCI: rockchip: Refactor rockchip_pcie_disable_clocks function signature
Date: Mon,  2 Sep 2024 00:02:10 +0530
Message-ID: <20240901183221.240361-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240901183221.240361-1-linux.amoon@gmail.com>
References: <20240901183221.240361-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_113400_537287_F5CBB9FC 
X-CRM114-Status: GOOD (  14.39  )
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
v5: Fix the commit message and add r-b Manivannan.
v4: None
v3: None
v2: None
---
 drivers/pci/controller/pcie-rockchip.c | 3 +--
 drivers/pci/controller/pcie-rockchip.h | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 87daa3288a01..b528d561b2de 100644
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
