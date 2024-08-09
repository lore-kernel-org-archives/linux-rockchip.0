Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A90AC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 07:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3G9H9to0lNM2yDOpEGaCPqnxk6QQ8lJHMlYs8WwivRE=; b=awvA68vZj7K0P6
	18gbJ9JuCSOdxzAzj7IdGzVaG0322Ecjj7DRZnPAezYNO5P74HU8+e7crNzIGVOvS65XFqV3PyDKb
	MsBj9GOkMw/2lDtQEd30UxOvioQzvAj0MxtNqwZYxLMiF65zTyzY/ljx9+YS8SUyxJpME5zAHrQuj
	luLf3mR4P6lMiPNx7mOQe/pdrOnlt1+T6U1BV978M7FTPHb+CPU9eFcIAMvjDEuHNRY4onQEldDKc
	6eRNIVNxtp9jnjzYWomHUYAzTNz7OAj9LjL0IJdrKvTso5bxJJ6iKeAVuJx5Xx9mD69RnfSnlplUs
	JgPew6htOwVeTB6I4zog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scKBb-0000000AZpl-3j8m;
	Fri, 09 Aug 2024 07:37:19 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scKAz-0000000AZif-32qG;
	Fri, 09 Aug 2024 07:36:44 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1ff67158052so13700205ad.0;
        Fri, 09 Aug 2024 00:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723189000; x=1723793800; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dCcf6BLa+YFbQdbVYELqdFtAuzitYv4+8HazgULACT0=;
        b=S/UjMV6w7WYJCIwGOeckfZMIzCwzZiBdfFVj5zu1We7dA3BvPbvy2erRuIXmqqsB2U
         pyxTz2up2khaDVVat3AOo+IIebZ5Q3jDQFblTer72biFKDb667j13S1Un2QeXd/o5c7O
         LcEPI+H4LlqxmuTHOuCcXTGabDNRaoRj2f02q3CAmpzAFHlIdm11aoeWs9p7CHJn6ipz
         SxyR+n8RD8T9YfRJ40vro/btm/W/ShQD881F9/eb76rQPVHcLyuq0Pa4r2VJUbf/dwsw
         vhCe0IZpRFXZiBuPZnfIFjBl9ulK/EnwQ7r3qovAIHkCslExBWNe93rpEOZzfBj2MTju
         2ULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723189000; x=1723793800;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dCcf6BLa+YFbQdbVYELqdFtAuzitYv4+8HazgULACT0=;
        b=BXEs1aRyCkl21Xd9ntvooFenyrWCAyFN7re6O2OiaCtccE36zUi+rMpducavP1Nyxe
         Dl9XVrU2803Lm/RRzZxWl7BZCsNgNprtWIUIRHZBvgt6SBa3a00FMgCqX0OeCzASQBm4
         qGHVatj9t52e3D1lIOOxh8e+SrUNk+fsg6dyT3HyunAjSxm7uB6btQwQU1+7amqZ/YgS
         9gv/5fXHi/v9d+xN+UFu4XOinTycdi0taQA2D3jEaMQ9cpuyk1ZOg4pwn2PMAKMyu0PV
         O/4JN/AQbuzmxuQz6fDndONUY/siKny5Dj+PEGzaP5f0AlFYTXTsKiZaCHnhBXnpNH9i
         anYA==
X-Forwarded-Encrypted: i=1; AJvYcCUZw8VBmeImZGg58Y6sN1ToqKm49jTOjzsSaq6L23hA/XGw4sgR3BRY+4eNJtpAm9AR4GyTSVeDFSslBYU0hmYs4R3U2SQCBHd/6X3lwnyFiezkUXJ962q3vblk7N9MU5ss80DpSjFgqDvinA+dYkNn6ii0LT56Ii8=
X-Gm-Message-State: AOJu0YwxRc2jSC9+eHzp7PI5dEee5hUfrXBmzlfMy3sPGDP8N/JD1n0m
	Xg295FRr5+UhaiPnKBOcu4KJetL7smWmE5EgMjkUIu+k8AXbI13b
X-Google-Smtp-Source: AGHT+IFqgjG/ZrWb/Pbr+iWfuP6MYtfTQEA9uAjaJ7m+O7kUCxqIuJ0GXMYR7yQXBdrAQ/yTcfLGTA==
X-Received: by 2002:a17:902:ce8f:b0:1fb:a38b:c5a0 with SMTP id d9443c01a7336-200ae597aa7mr6144245ad.31.1723189000278;
        Fri, 09 Aug 2024 00:36:40 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff58f5b349sm136588855ad.108.2024.08.09.00.36.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 00:36:39 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
Date: Fri,  9 Aug 2024 13:06:09 +0530
Message-ID: <20240809073610.2517-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_003641_817269_22D6991B 
X-CRM114-Status: GOOD (  14.54  )
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

Rockchip DWC PCIe driver currently waits for the combo PHY link
(PCIe 3.0, PCIe 2.0, and SATA 3.0) to be established link training
during boot, it also waits for the link to be up, which could consume
several milliseconds during boot.

To optimize boot time, this commit allows asynchronous probing.
This change enables the PCIe link establishment to occur in the
background while other devices are being probed.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v2: update the commit message to describe the changs.
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 1170e1107508..7a895b66e4e4 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -616,6 +616,7 @@ static struct platform_driver rockchip_pcie_driver = {
 		.name	= "rockchip-dw-pcie",
 		.of_match_table = rockchip_pcie_of_match,
 		.suppress_bind_attrs = true,
+		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
 	},
 	.probe = rockchip_pcie_probe,
 };

base-commit: ee9a43b7cfe2d8a3520335fea7d8ce71b8cabd9d
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
