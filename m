Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7D8ACE8D6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 18:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuvX7marVhmolpuArr6tIM8xno2Qz8U2voHk/ttcFak=; b=vtaVMwqIz+324U
	yY1qj5rlHpT3+H3+nCq8LFXHrNpklb/yN/po5f2zhuvSnvogYSdNLJ4+x0TkhDpO0Wu+2shpg7J20
	2J0nsIGI9vqrlYtvNcudnrUV4VTcJhA7fZ0fXMez3QrlsUcI2VO/kkL7zw0NgixZAusVvEF4AMUS6
	TpU0sJpPjIrSr86VxymU9xW05HcROf4ZQWknCu2i6byUa2hLMe7w2vM0PfNP3lwWcmPx+GECAzZgV
	xetu4yOz6uYOuXUgwWFJ0zAX7wWnb3dkRvcudFNXGKX1PqqcgLfCrojDUc2d/gJsX1HIKSDooN2qV
	g0HKHAFZc+4ylJ34leXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gi-0000000Gatj-2l12;
	Mon, 17 Nov 2025 18:10:52 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gf-0000000GaqU-0JTB
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 18:10:51 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-297e239baecso51058445ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 10:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763403048; x=1764007848; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JVLSWaWwsAp3+Eeor9R4CziFFyAk8nsobOp1lA8YjmQ=;
        b=UAqVLspkqcs2m8desE4ijB3zvmZspHKMJSuh0nP63Av+zTfMHFS/YFwQK5zbmu899R
         gjh6jTCwzM0IoXX6eMeN8IcUkZPCeChFOnrHTtYMhXbJC0UEdNCXnSCnVNdYVNNROxyG
         8sCxt2azbp0pdTUaEPT0CjajvBAfwXQzu0ltc3399Wo+aUH2ceSAf3TxXSRREBTRgcu7
         D9FW9deUddWfilW+QslyNQehQd47MQ4fS5kyMg+k+1SkF0a3Inti9BJ76/xYxt5eArOy
         PUZP5F/PsOsbcjlbtoDMd5f1Bj04fuvIVlGIY8SqrbyPolAJytQr2Jb8us4rTshKhb/Y
         LyFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763403048; x=1764007848;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JVLSWaWwsAp3+Eeor9R4CziFFyAk8nsobOp1lA8YjmQ=;
        b=wyIOIOFEBEccDrP4YTEeoI4oNeLaReOT3YeHmXGJy3yCVQBUyazFxRUmr86v7jtiL7
         11MX1m6Ocr5uHaLfMSI/em567IuYj9B6odX0pQNHE45l2+Igcor+NO5z+P6pdkZeXux5
         C7+XONYSSMW0BTk4Xu5eu0SpASq1iDUziKdf/xGGLdIc5FVSg061AuAThtcgvdh8agFS
         dgFoHfuRGEyPiv1SekuiRNPY9kIxvmE96WtAaR1oFMrer+kJ1L/x8ShQFZthiE8bnJj9
         66VbNdcwP3hD2f6ZnzLzW7M3SdkARKzQHGRJShUqQjnxWam4vbisQdbQUwaMMzJTlB9a
         L1Cw==
X-Forwarded-Encrypted: i=1; AJvYcCV7JJth5fgSvbpmXPHxaR6XDZ/ODjiH6nH07c8EtTESNX9BIjAgygwxnXzyJ65uQYfGQhGWdsO1l7+TuE9JQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyW6/dXLA7D50aeq/RSiS8MsX9CzjE608zZJIzjKStSmibUd3Qc
	FxW+5wqwc1Jzzy+Lo5oCMwfjbusbGDVAuz4bk+gzOY2OeiqqcLUqQmrg
X-Gm-Gg: ASbGncvyiwvpzl2zDpDw5URfQU4QTHe6BzzyyKazvDDk/HMJSrbtmO+CcZg58h6qRE1
	ctgElqpHQisWf/4fi8FCHZvVD4lZcOqcw4Jmi9v9ZB6M4rR/oGilDODdJ+YM2BdaRIxet3XDmqp
	O24q/WMd4WT8OoGgvO7LWBk9/zX0KXYQZxNDwPrqOocxdjcHHYQ7R57cAJ1+im5G2r+yKcqJDTP
	dPWGvToD5c8gNLqqJQbjoDCIvn+nlZuZqAcGfVXPqTWmewTBKoqhoCDRn7WghF3qzJsLXGBwF5v
	+fQIB240035yqg/oY9rG5ZGP7fSTaaXzheiF1g22XOa7f4URNBwZFOzvwtVGqAmDrL1W67xYZZP
	KtVL6NTg9J340H41mxC8W9nsuoleZTFzEp5kik8qrT2JhfRb6GphSe6XtuChZ4NMX89CwsggjPf
	lxS3CJDRAMyQdzd1IZKbk=
X-Google-Smtp-Source: AGHT+IFUr6w+luRVnOQpM4WmiMJo7zQ/XIZfnSsFQLDG58hBrdFqWOCIG0FqA/4JweD+fOt7hbYKag==
X-Received: by 2002:a17:903:120a:b0:298:45e5:54a4 with SMTP id d9443c01a7336-299f54f8517mr2495885ad.1.1763403048271;
        Mon, 17 Nov 2025 10:10:48 -0800 (PST)
Received: from rockpi-5b ([45.112.0.172])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245ecdsm147237955ad.32.2025.11.17.10.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 10:10:47 -0800 (PST)
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
Subject: [RFC v1 3/5] PCI: rockchip: Fix Slot Capability Register offset for slot power limit
Date: Mon, 17 Nov 2025 23:40:11 +0530
Message-ID: <20251117181023.482138-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251117181023.482138-1-linux.amoon@gmail.com>
References: <20251117181023.482138-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_101049_113836_27E7E335 
X-CRM114-Status: GOOD (  13.84  )
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

As per 17.6.6.1.32 Slot Capability Register (PCIE_RC_CONFIG_SR) reside
at offset 0xd4 within the Root Complex (RC) configuration space, not at
the offset of the PCI Express Capability List (0xc0). Following changes
corrects the register offset to use PCIE_RC_CONFIG_SR (0xd4) to configure
Slot Power Limit value.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 4 ++--
 drivers/pci/controller/pcie-rockchip.h      | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index d51780f4a254..d77403bbb81d 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -271,10 +271,10 @@ static void rockchip_pcie_set_power_limit(struct rockchip_pcie *rockchip)
 		power = power / 10;
 	}
 
-	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_DEVCAP);
+	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_SR + PCI_EXP_DEVCAP);
 	status |= FIELD_PREP(PCI_EXP_DEVCAP_PWR_VAL, power);
 	status |= FIELD_PREP(PCI_EXP_DEVCAP_PWR_SCL, scale);
-	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_DEVCAP);
+	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_SR + PCI_EXP_DEVCAP);
 }
 
 /**
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index c0ec6c32ea16..4ba07ff3a3cf 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -159,6 +159,7 @@
 #define PCIE_RC_CONFIG_CR		(PCIE_RC_CONFIG_BASE + 0xc0)
 #define PCIE_RC_CONFIG_DC		(PCIE_RC_CONFIG_BASE + 0xc8)
 #define PCIE_RC_CONFIG_LC		(PCIE_RC_CONFIG_BASE + 0xd0)
+#define PCIE_RC_CONFIG_SR		(PCIE_RC_CONFIG_BASE + 0xd4)
 #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
 #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
 #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
