Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12AFBCFB424
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Oct 2024 18:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x6p/VT8fCXoSzAM8w1yvO/cLo0xtVbJeB1UMLudIKOs=; b=Ks8MlKAHFpwwqJ
	DNF6nVci/ySAz2A4HfDgfCQkxlCdB4dCtoywrZrsjX2rPKpwDVFZ4RpVCKgiX75RFuNaDAEVgxbUr
	np/2emsdTjPHBHJLu3FdbcrWRox5ieKX2xXo24MIQA5ABlW/g8bF15S4VBJDSSOu1mJtnkLq5kiA5
	xcz7q4NQG8jLis5Zn++pSIvR+3KLG9hQAR0qDEXy9+Rb8YRHsVh4uO1Dx8+iZUc9JFOfjbLZbrqyq
	zQi96toHNuZh4gZyv+KmTaP6L84qQF4aLXmUX6Xe8DHn179qIzn23lXG3Z7MThH4LWvc6Md/CVDH4
	PFla3fgZ7pkU2EvRKmlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxVxM-00000000Q4J-47Xi;
	Sun, 06 Oct 2024 18:26:12 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxVwE-00000000PpY-0c6V;
	Sun, 06 Oct 2024 18:25:04 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2e18856feb4so3152796a91.3;
        Sun, 06 Oct 2024 11:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728239101; x=1728843901; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6LK0amb/aMznsCxMIWGk8usigwtRwvEg2RbDRthic78=;
        b=Qh6xrDK+7P0LJ+YhoTWtbgoQDNSv8kIHqqnFUdJsvAQvzAxoCo8Z8XeuYX54gMPdgy
         jlo+q99/PMxPHV14g4iAg8R3cPT+FE5hSQExIx2MOp2H7Nd/CwOoCZNrVcZ4Q5axFpSL
         LzuhUGGfPhgV2M+sdHtz/Q8Vb5sYDMJrwLtOmIKsIwrcEKgIFtciXK/gsCc7Q2iJ4stL
         AwBNnwjUTavw42a/wKwXAbUDomLc26yvJVz58SKPA73FjMEma5XdtInDiBh87fgO7lhz
         YdFUiuPYwbNbgIVdBKK0VySeVQZ2jk9byg5e9ZiPuaWVwFO9YuzriGdXkoj8sGQJd/2O
         haHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728239101; x=1728843901;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6LK0amb/aMznsCxMIWGk8usigwtRwvEg2RbDRthic78=;
        b=oXdOY+89Dr/AevsuBAn2WfnamQb2rPSrcqYtliwosVO0+ze7cdRb/wFjgh//vzq6Cr
         0R/w4OKkS5mTvyJrrQcGryVJZ0FvhFvZJeUxXbf5Ez3a6Rxo38lnTRpF8701tH5O0+9J
         4mX8N2leZan8pP4botNiOkWhYjbdcSmF2W80/jaSfu0mh8glRZ10XzL6PuvyUqtl/poN
         t215M7+3jEMj834iv41RsCOe+iTbJvEUFYz6h3Gwqd1VK4TzsF/JrSz2TEYWraPgpcoB
         psZphZOfAT7pe9BV2z6nWjMJO18eXF+aKSzW+fwjvEA6BWHQnnzUW0RIBGVyU5CMmWD2
         lu9w==
X-Forwarded-Encrypted: i=1; AJvYcCUbYtHQq4xAB0N0aEYtylsQQHfl9tFXoYSYaPHLQinBqHPywl7ZKUN6e8S+V3oLcpr80jqUfQCy3cjShsfg3lUM@lists.infradead.org, AJvYcCXU8EmnU/KJKL1vkfGcZbt8JWQVqHI7DsbQ8yfp+SrxDaqd4f2gmpiGBjUSggXicXSjk7wOvxfZPSN9W7UnDOc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyFZg9xNggvfrn8Yuto7w0qngw+kuTTCWwKlqHNsBuiq7N39G80
	HqmVPh/OcQxgqYilm0vktEUCBy/omIZD3SCByJqJuG64rbnNA+a3
X-Google-Smtp-Source: AGHT+IFC20s6cHCkGy6tRI0kTt7uHTaPUGYkqJz8dnYIqBo392XPXz6Qcbbzuayu74n+/YJHWq3QEw==
X-Received: by 2002:a17:90b:4c05:b0:2d8:f7e2:f03 with SMTP id 98e67ed59e1d1-2e1e631e1d7mr11153854a91.32.1728239101052;
        Sun, 06 Oct 2024 11:25:01 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e1e85c905esm5458471a91.17.2024.10.06.11.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 11:25:00 -0700 (PDT)
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
Subject: [PATCH v6 RESET 0/3] PCIe RK3399 clock and reset using new helper functions
Date: Sun,  6 Oct 2024 23:54:35 +0530
Message-ID: <20241006182445.3713-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_112502_430668_E83B98A5 
X-CRM114-Status: UNSURE (   9.00  )
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

Resend since last patch got missed.

Previous changes.
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


Anand Moon (3):
  PCI: rockchip: Simplify clock handling by using clk_bulk*() function
  PCI: rockchip: Simplify reset control handling by using
    reset_control_bulk*() function
  PCI: rockchip: Refactor rockchip_pcie_disable_clocks() function
    signature

Thanks
-Anand

 drivers/pci/controller/pcie-rockchip.c | 219 +++++--------------------
 drivers/pci/controller/pcie-rockchip.h |  35 ++--
 2 files changed, 61 insertions(+), 193 deletions(-)


base-commit: 8f602276d3902642fdc3429b548d73c745446601
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
