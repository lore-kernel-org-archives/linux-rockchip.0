Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 584E7CCD193
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Oct 2025 06:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S2Seq4S/rqIUEGkLTBjOARhwQU1nHgbKubhI/IY0XN4=; b=M/KSO5ntIvsubS
	YaFCKjvyecmKlUZgjR2hRxEAI5ENXD2Sm+8HLYwodtpkhhpUtjxUPHpuPgTQgYwamqfKFxiNiLINp
	NM45W80/rndhBssThPhpDuK+vDZsgoo/AxdmzacwDg/WupdDjGYNVLW/Icxdw5UsoNpwbP3SLqgcx
	fzJ4utAq7Uu6D4evNoe8TkfGpyNEg1cuQUKg+ok2BG6z4tPfKzb/mVpbF+4Xo7sgvbenUsfiyZTtP
	krwxUwV8uiY4zCZ8eoiTUR6pJrnYEddpdmE299mkZ0foBC7NGZtIl2QalVqpSV6Cr6ZPn/8N1l6dm
	2CtuuOwQdvvtJzFdZRdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA0AE-00000009al7-2ANk;
	Sat, 18 Oct 2025 06:11:38 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA0AC-00000009aix-0OzM
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Oct 2025 06:11:37 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-290ac2ef203so25585275ad.1
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Oct 2025 23:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760767895; x=1761372695; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HuK08AhMaCFjkCNPsmZTrH6+PYVk14sYYN9oj8qJbgU=;
        b=TDqBQGXWVPXijsNDKtJtwvm2VdN3Oyp+NlCoNlbzKR7PQA14iwSDFOy1v0maCTM6oI
         0edUT3vHvI385FFsx+/PJsYK3+8ado7fGlhAumiUlMzstI4zrHuB+JPI6tkhaGAbT4JZ
         1ctm3Tr5Z1Jb95ady+xDX74unu/fAHXFeeRo2Pb3vVM9sq+6Hzj1yod5TGHkUkSgEeVM
         oE40bmgzYtB3dUhsNAeHu+OwX8rfclM21ha6zES9pNPHYQy2X5O/ijssvxxrn4VsvkZs
         mBFoPYTPH7/NzWrcw/zHcFUU1q2bKhbQQskiv6WQLxytdHmjhVFIta4p7YZRIiKxKj8U
         D7OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760767895; x=1761372695;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HuK08AhMaCFjkCNPsmZTrH6+PYVk14sYYN9oj8qJbgU=;
        b=XiXYwIxZssEOpNzJxI1XKPvU9PYk35tgwLNJ8zeARCloqm4Z1Qap8zxFONWHHMncmT
         1u7dHa3YXjC6ibL/IdHBGSDtmq44P0XPDI1QMRjqyUkA/4akKB/aILhtQGxPtDHNFXpm
         vxVF3fp/qUC31szw5eO/AnKj+XXXKxinDPKLMdpNo6HFJ3LtRxLzBsab9g+7+2nKrvWW
         29de1jIfDf4w6JsCUrFx5tKBImCZTB4nrp0ycD4diXu+RAQBeEZ1MCb2ac7pGkbsSBeg
         RgbvbrbVKOGeKsTW3p7qK18eupwPWCfoaJyPMHyi8FkyN3CeS4QWMHg07grXTNJz2tGW
         wVXg==
X-Forwarded-Encrypted: i=1; AJvYcCWDnUpo7hX9YrpktjgoJRrN9u9IISbFxH6+CjgL8+sbU6ynePDg+XeYw7UTXQqYYzN8fhlqdopyoFFI6764ew==@lists.infradead.org
X-Gm-Message-State: AOJu0YwaV9cddp53Wu+YdMh2kPQDfoqRYZELfqvjDjSI0LkYvVBH/4eM
	Weav5IBAHbi3mbxI4AoFV76vMPyyeLp9cVeFbidqqwMk0xNXG64742ZX
X-Gm-Gg: ASbGncs14pkT1/odyVyPho0+o4p+TPdBdX+qV/oBqnLTfLLQSK6YOqPZo9Us6oja35m
	t8m9HPnPoUdJGll7Zkdy6jwkOunKXUwg6s3twm+PenvVwK7Ue0HrnSSq2Vi7kk+AhPw2Mk5XaWt
	eeLqoxgm9qzN5+aARPe99XSHJxFPGlfAr/l99hQkC7l2HPP+VE+RAepypentQO8Srgq80A5rf8W
	j2FJv9FBnpwTtkGSz/rG3Fy2Os4BWwwqF9wTexsrckxHFG7FDcvks1R5ObYwhfHzR10FJ5CNHOs
	pqMkEljHXRgnjfNU8LkEPKYmnjeVCu4i+UrsQNO8msX4Ae6zKa0XdP16cYwjMe/JOteE8Hswfmy
	dSeVIUNbM38oi6uD6p515uglCcFRcWKzFDnG+fSolpVpMnRu1DNLjzV/mk6oj1aLEakLtuV8Oz8
	N04Tk8ufez
X-Google-Smtp-Source: AGHT+IFD5KKQflxUKAzZp0jVPKQQRA0FESiph3hb/TkKSVtjx3w5Itu754OOQKM0Jsx0lX1D6seJ6w==
X-Received: by 2002:a17:903:1a4c:b0:24e:81d2:cfda with SMTP id d9443c01a7336-290c99a969emr82602655ad.0.1760767895200;
        Fri, 17 Oct 2025 23:11:35 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.108])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2924721936fsm14982735ad.114.2025.10.17.23.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 23:11:34 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1] PCI: rockchip: Propagate dev_err_probe return value
Date: Sat, 18 Oct 2025 11:41:26 +0530
Message-ID: <20251018061127.7352-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_231136_132560_3B42888C 
X-CRM114-Status: GOOD (  11.96  )
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

Ensure that the return value from dev_err_probe() is consistently assigned
back to return in all error paths within rockchip_pcie_init_port()
function. This ensures the original error code are propagation for
debugging.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0f88da3788054..124ab7b9f3404 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -134,7 +134,7 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 	err = reset_control_bulk_assert(ROCKCHIP_NUM_CORE_RSTS,
 					rockchip->core_rsts);
 	if (err) {
-		dev_err_probe(dev, err, "Couldn't assert Core resets\n");
+		err = dev_err_probe(dev, err, "Couldn't assert Core resets\n");
 		goto err_exit_phy;
 	}
 

base-commit: f406055cb18c6e299c4a783fc1effeb16be41803
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
