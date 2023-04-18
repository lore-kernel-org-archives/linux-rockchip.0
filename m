Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B485EC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 07:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKYlHGPTcUr07RL3vCsy/uFaMjMOBF2deGjTharppZA=; b=dIEwovP+Zu5jY0
	YuzHyAuvwd5/1sbh/yPP0GraRYkUteOmRvy1oNWx1g+9tIfiLQ00F2jJ3n2QnGk05/eloecBn5Gx2
	8nCdDoXaspXprgWyFzu5BjoYeom03DJ8z6/nVdD0AxHaSTyaDkZa/ap65YRtcrXARfQUJFfpL89/D
	WM3+5F/X7piSxBDxtNVG/oV9BiTM+J0raBD18wHV9mPMBHNTHIK54hoQQUEd9kj4kjXSU7z1Ad42/
	ZoCrfKKM08KvOTTsNsl3nD6k/Pe5pox1aYu6Q5TQCjfTqDJoE+e7QPJlSIxfjB9ldxtHd+Sa9vhFO
	UQjYxvrRlKyu1eZ06O7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pog4E-001BXU-23;
	Tue, 18 Apr 2023 07:47:58 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pog48-001BTg-1Y;
	Tue, 18 Apr 2023 07:47:53 +0000
Received: by mail-ej1-x62d.google.com with SMTP id xd13so36907342ejb.4;
        Tue, 18 Apr 2023 00:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681804068; x=1684396068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LB/hBZR8yZjvvma1XgK2soZdHK9U46eqjW0k2u2qdaw=;
        b=VvPmODTRSWxRQw4z5PuphOXjk9QKXdVuOolVhs0pLbWpGo5OrxV1SiE/G7BVu39CLc
         SFeHjPqqce1UwUjn8luF8/WxJ3kkJgdgiWP/T7S1MDpiO2rxruY4dyRzOxj3Vhb0YJjc
         uJoWIIyQKVFjrR9ORY72jCos/xlMCdkZ9wsQyBm1pwZJxYIqbwvA9FSUNwydHZoOl6An
         hdU+tBwtgJZz0Kwm0Nyl/PZthI/X2I4rK84fKwNDpzmSZ0gVt+yLjAoLYvVycGq97l7q
         YD5K0nYhfHIHdLY13LvrsfNZ6rjUNqlv5FqbMPBoyydFC/j0OmW9gaeUtXjcSapjxIVr
         i0Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681804068; x=1684396068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LB/hBZR8yZjvvma1XgK2soZdHK9U46eqjW0k2u2qdaw=;
        b=NwLB0UAI/bdTulLtlyNfaBaHkxNy+Dw3g0BbJOwg07zYPMRPuYev3KRaN657RRpgz8
         1+Wlj835j0OpUVfHlKPsaUvwHpTCWOr6Hw0+3INzJwauUwYFy41pXCfWXAZ25N56R971
         hXpd/28xn/q7vzAEc8vLERfipYpqRPv5wZX/LwybCa2AdlP+EfM456QmRWlk3GAZFXRE
         jJUZ4muqJxD0zt62gpoDIDLY5owwv+REkzYRAw13a/KTUIdI+nFX3nIxwjbMdnQOWHsj
         lhcYPDi1yxfyvw6iBHwaP9v+RUZF92IMzcCArf8+kkRU33bYUAdxEY099v21oV56Rflx
         IEug==
X-Gm-Message-State: AAQBX9fW5MZa+hF4+wY1QNgrolGGZR22SREAuiOokNMTYm+P3iCRy9nz
	98Xdq0eDuuavploDVIj81tA=
X-Google-Smtp-Source: AKy350aYQU0ctOk0PyP74jWCcA9w/O/pwliRjBYZUKfvc0UrcfFPuvvj54f9Lt7AKK2eUMbuFoUQ8A==
X-Received: by 2002:a17:906:350d:b0:94a:8f3a:1a77 with SMTP id r13-20020a170906350d00b0094a8f3a1a77mr9390578eja.8.1681804068555;
        Tue, 18 Apr 2023 00:47:48 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id gs8-20020a1709072d0800b0094f694e4ecbsm3048545ejc.146.2023.04.18.00.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 00:47:48 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	dlemoal@kernel.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Caleb Connolly <kc@postmarketos.org>,
	Brian Norris <briannorris@chromium.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 02/11] PCI: rockchip: Write PCI Device ID to correct register
Date: Tue, 18 Apr 2023 09:46:49 +0200
Message-Id: <20230418074700.1083505-3-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_004752_516209_9E5B091E 
X-CRM114-Status: GOOD (  14.48  )
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

Write PCI Device ID (DID) to the correct register. The Device ID was not
updated through the correct register. Device ID was written to a read-only
register and therefore did not work. The Device ID is now set through the
correct register. This is documented in the RK3399 TRM section 17.6.6.1.1

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Cc: stable@vger.kernel.org
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Tested-by: Damien Le Moal <dlemoal@kernel.org>
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 6 ++++--
 drivers/pci/controller/pcie-rockchip.h    | 2 ++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d5c477020417..9b835377bd9e 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -115,6 +115,7 @@ static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
 static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
 					 struct pci_epf_header *hdr)
 {
+	u32 reg;
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
 
@@ -127,8 +128,9 @@ static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
 				    PCIE_CORE_CONFIG_VENDOR);
 	}
 
-	rockchip_pcie_write(rockchip, hdr->deviceid << 16,
-			    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) + PCI_VENDOR_ID);
+	reg = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_DID_VID);
+	reg = (reg & 0xFFFF) | (hdr->deviceid << 16);
+	rockchip_pcie_write(rockchip, reg, PCIE_EP_CONFIG_DID_VID);
 
 	rockchip_pcie_write(rockchip,
 			    hdr->revid |
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 32c3a859c26b..51a123e5c0cf 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -133,6 +133,8 @@
 #define PCIE_RC_RP_ATS_BASE		0x400000
 #define PCIE_RC_CONFIG_NORMAL_BASE	0x800000
 #define PCIE_RC_CONFIG_BASE		0xa00000
+#define PCIE_EP_CONFIG_BASE		0xa00000
+#define PCIE_EP_CONFIG_DID_VID		(PCIE_EP_CONFIG_BASE + 0x00)
 #define PCIE_RC_CONFIG_RID_CCR		(PCIE_RC_CONFIG_BASE + 0x08)
 #define PCIE_RC_CONFIG_DCR		(PCIE_RC_CONFIG_BASE + 0xc4)
 #define   PCIE_RC_CONFIG_DCR_CSPL_SHIFT		18
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
