Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 137CAC71150
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 18:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aj0e+Lw1UfSUfhnbJRBGd504/C/141yfMU/RA236ZXs=; b=klVS8HRJquRIFG
	iRlifkZWtJ5NmI8CHs9PZRbfBJER+iQJZEZExQd8KWAaOzmAUEbdPBZgo9FAIIxyE+Z878G7ODxcu
	7MIeVZxgG/q9TlxTQv9WZjzunjaqNC/QhdJKEHWyY/Vyo5xhevY468O6dtLrGfVYjGtTRS74/t2Y9
	m7/1Lf5bpGelPUsrRs67mS/oZJuiAO+L++Yyp6haGvtFZHpa0zG32tep2QozGZhXq+wtHBh0T8ZDO
	/8zdHhDKia0O7P0qqdaVVfgdLxOLrD7MZ7J2gSABBoQCPrdiVg3CDukFmZimEoUUA9gIqy0sjfiAn
	KbCoUIoDafz+Gqr7MV1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ8wq-0000000HF5N-2Jbr;
	Fri, 13 Jun 2025 18:16:16 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ5yp-0000000GorD-3vrO;
	Fri, 13 Jun 2025 15:06:09 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-742c27df0daso1813287b3a.1;
        Fri, 13 Jun 2025 08:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749827167; x=1750431967; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5jwmmYn5mR6/LEUkoHGVPsLNEcwThgX3SiiTAZydAvs=;
        b=SvfuxwZzpRuIr4FIuTH5B+azQWIE3kTkkSSequplanT6Q3juhXSs+vk54MnZSN2NOv
         OOgJmwGyhvcr731kNi1f5GSPcAJXSq6AqxwsyDvdJYYIkJvNbJNya9sHJvO+XhuIufCm
         PAwsJbuPFpQS8jZYxn4UvmYb3vIAn+x4sQoeLW0GUYb6amFGGCSGCKclNODIoO68mtlf
         YoRLfE/q3SFUOWqv3196juCxWg0TjPUDHYXYxO3z3JrEvtYRvcMbTuIknIAJWRL1DvWn
         wtkntSXSyLs1X5fKGUMmi7Gzci9FdDElro+48Duuk9oZV2xzT2Ok8apANY1Ho8cN8CCs
         I61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749827167; x=1750431967;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5jwmmYn5mR6/LEUkoHGVPsLNEcwThgX3SiiTAZydAvs=;
        b=wCpFCp+7ZCJLhhreaItBjP7TpjQ1qy0ZLGcSteC5F03CJnqyNCUYODMcAUYKygOTqc
         fgARWkCXeAAZFZUtCiIkuhdXXFZtmI3ZJDbs6TgrAtniV6tOOMgR4DDliJnJumarV0j0
         hmwuu4oE4Rcu9GZGvRdnqTmNUBekJGlQ61nVJN9X4XfNzZ5zKLAAu7sl0N/y6FZNQYRe
         QnryeLk2qZ07Uz/PW8hRws397pKjHDbqR2Ucy4ztEaxv/TjroQPzBWq0MpfbM0ptCusb
         5c2SZ/1W3ak+vxgwjcRk2VSf1aCDn86VenvbKAV1TOh+bUKX/cUdZ0WY8FwqD+nw5qZJ
         mWeg==
X-Forwarded-Encrypted: i=1; AJvYcCU1oyoU62LPbloJABdwEpl/myetJozttdN2k95PQ5DWnTLjzjM2M/JmrKYxXxsPuIzFB5PJi3mJJITj@lists.infradead.org, AJvYcCXyn5tSNXfDvcbVxl7ynkMAlnxarU80C8m4qwgClv+qz6tCM1ScA7WV9Dsu+dauhEsMFSL4uanPX0TRq+llWvnj@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5qEuSunjprKRynpN2W+TvS5qTVDdXGL9O71xvcx8BfMKhcftm
	4+NhsOo/NZkLSxcF3yh7jGhMpccSVgSxar69Ae//f61JqWYQ0cbADPHdq8r03ZqS
X-Gm-Gg: ASbGncuD8TBMzHXF/wAjWiu7TzNQwcugCoFL2yDiPeoACXXfOUXxoY1VEjjcs5dPQ0W
	s7eSm9IdkqVMAhy0w+U11leTYW9+vJM2uCiKDu+IoKsuns5+Bf7baLV1dkAU6yyFiomy5VQa6J4
	ev22tyEHx0vDAeVyRWP/N37ROGXHg3I5VOjdVxndGUM/xbPdX8+pphOpCb/Oy5gCtcDoH5tbwD0
	Ws6vEAtNo57BRCNuiHFdjbZaw1LGfFu078DzWkHts4uvXFYncMjW/ne8CdYhi+GJVxeXZrlzO7l
	Z9ZblPJjBnzHnDvSZoE8xJMuKaoXn0ibbWAVYSncmmSWBaijtA==
X-Google-Smtp-Source: AGHT+IGYw5AjQ+/QZORRx3QoafJhKHVvIiAqNZXzixKJWW+8p/p+htMuLlVMp3U5LPssM6b4Oi+Eew==
X-Received: by 2002:a05:6a20:7fa4:b0:1f5:6b36:f574 with SMTP id adf61e73a8af0-21fad0d39ebmr4649001637.38.1749827167066;
        Fri, 13 Jun 2025 08:06:07 -0700 (PDT)
Received: from geday ([2804:7f2:800b:838f::dead:c001])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7489000531esm1691240b3a.41.2025.06.13.08.06.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 08:06:06 -0700 (PDT)
Date: Fri, 13 Jun 2025 12:06:00 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RESEND RFC PATCH v4 3/5] PCI: rockchip: Set Target Link Speed
 before retraining
Message-ID: <affaa12fedbb6e34696242d1f2f2dc5634b72005.1749827015.git.geraldogabriel@gmail.com>
References: <cover.1749827015.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1749827015.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_080607_968214_655C9968 
X-CRM114-Status: UNSURE (   9.54  )
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

Current code may fail Gen2 retraining if Target Link Speed
is set to 2.5 GT/s in Link Control and Status Register 2.
Set it to 5.0 GT/s accordingly.

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 65653218b9ab..7a0b6ebb7c27 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -341,6 +341,10 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 		 * Enable retrain for gen2. This should be configured only after
 		 * gen1 finished.
 		 */
+		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
+		status &= ~PCI_EXP_LNKCTL2_TLS;
+		status |= PCI_EXP_LNKCTL2_TLS_5_0GT;
+		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
 		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
 		status |= PCI_EXP_LNKCTL_RL;
 		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
