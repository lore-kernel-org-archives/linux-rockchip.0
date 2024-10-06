Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D6ECFB43F
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Oct 2024 18:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DJVrxoF+HbrKjKcT65bKZdMJwqxW+rm8W9IWNnlkBz8=; b=uEYPH3zLbVrsE/
	XVjE4I8R0NZy3zTyOg/XrzzbTZEl11kfLOnMNnbHuj0AFYl7k9ZzgAJ6VAzxZltbsRCz4R2UV90qV
	ftI4BVIu397wvzbN7NyQyJQmzYJ83JWSfqZ3RhZvAHyMLvyU7HmCcY+G5uhDf2kLx3ySQ9QHW1zER
	NJYrlIFdpMn3gmCKcTH3NXGTSaT9MIjIlEKsxeH9nSxUdMQUcg3XP3ilNgnwH+2PP/bqIq1oX3Qwx
	2kLU5UddTPmJUnHJQFt5i1wg/JkvMDoCXy4Fke3PSlnZ4bKYr0gm7wz0OknmNKNPzMv2BfQZbbqhS
	YSYqY2Ig1kb7QEwhu9og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxVmS-00000000Oiy-1Rvt;
	Sun, 06 Oct 2024 18:14:56 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxVmO-00000000OiK-3eWV;
	Sun, 06 Oct 2024 18:14:54 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2e09f67bc39so3108414a91.1;
        Sun, 06 Oct 2024 11:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728238491; x=1728843291; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1zDtd4VsB1QKwvGTFFxUQVnzIMbAkBrYOLGaEaZYNSI=;
        b=hUvhyfm+8hnx+maCM6W2jSeQ6UrqkEm2nATxOMk6Ej+7YykVoQJydI4SG099vC/aRX
         oP3teQLEYjx5uWVmfYAqCJf+7g+e0Bagxo1afk7cUiNkfBCZqfO5CLgorpvPTK0vkNht
         t8uQ1wspKz5/XW4Z7QGhK5xlGalawe91tog/zRXF0nKBgbxYyYefMkzyrL/JZqiUUPKz
         YC/qtlJIKB1uOaegJqcJymcue2MbjWM7xRk/S1jA22S6RcKIyPVV5iENJBtT2ZXHG8Bz
         zDAekSeRH5OWBTZHyZ3vMeNP+EVmUs9Fckbjts/0NoPKMD8v19vYTa9bRBUDq38PjkSX
         k+3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728238491; x=1728843291;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1zDtd4VsB1QKwvGTFFxUQVnzIMbAkBrYOLGaEaZYNSI=;
        b=T5INcYSTz+A1Jle8aLYk7aStYDnkfXN5J+3HjXaXBW3AzkfOsxTfA4oNQwBHrtC/eM
         DitBTnfcrhTO02NqraY/1X3R73zittoDLwacVcFqzwNqOE8i7BjTjyL1ajgU0P1hfv+Q
         ri2lSFQoYBnO5yUbrTbfP5oOVBMoQ/jT+4M/0FHTW60iUp+/Wu7VvRLB666tSlXM+IBZ
         IrGbpZYef0ieg/FcxE7pA6imZQfxcjQfMW/JUyuLNItuMJG3BAuqOLOwJZLdaXQwWQOE
         k6fufWnNXhOVPlz1+gFYpFjPWHrNasBgwxAepKI63LdSdyelVCYy0t3mQsRf+nnwLmsl
         qFIA==
X-Forwarded-Encrypted: i=1; AJvYcCWX1Jlir8+eVFX5qls7dUFdDyLvkomPNQmBk5tySYcS0FHEPZ5uXFo1uE6aLhCefcasOaQtMwGX+qt7ZVUXuQQ=@lists.infradead.org, AJvYcCWhiuJKXGsDgFs/a9g2e+HBB6Vpv7fzV5lqS+RgiRndI367XASF0uaDITwhiIhA+yJI6FPgwR3a5ceiFC0cqIqO@lists.infradead.org
X-Gm-Message-State: AOJu0YxhIl/tHwXu8cRJ8s4d4mjCDjix/nwHX9Ghsh8MXk5etgGnptin
	xT1t0H2C+b5poNHgaqvLEaKbD+AKeOVZRie7d3+g0SAvHOmcT+m/
X-Google-Smtp-Source: AGHT+IF2TMNWOK57NJYqFhiohYWDjeEwtqyjREKr7ARGPPU865LgGVMGCkUWKlmrHBilzXg0Gsbelw==
X-Received: by 2002:a17:90b:3803:b0:2d3:cd57:bd3 with SMTP id 98e67ed59e1d1-2e1e636f4admr10702335a91.29.1728238491439;
        Sun, 06 Oct 2024 11:14:51 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e1e85d9ab8sm5403095a91.29.2024.10.06.11.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 11:14:51 -0700 (PDT)
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
Subject: [PATCH v6 0/3] PCIe RK3399 clock and reset using new helper functions
Date: Sun,  6 Oct 2024 23:44:27 +0530
Message-ID: <20241006181436.3439-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_111452_930531_43C20816 
X-CRM114-Status: UNSURE (   9.10  )
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
