Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E53D8FD9E3D
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 05:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDheLCKOiT6q/nZ6Jph1CWqMhz/LOKjGn5cGYDkQ5tM=; b=4YickDOxFhId0M
	Fb1Sbnp9Ls8h1K/A+z5xtOah5cbF3i2+AX+CFaR0Lkxb2R7UJGyZpbarx8hp0Xm/eDXXnGIRubY00
	w5LCGfruPM6oDCcDCHQZLtaDxmWiBvZgSgSPFhm729zyMmZcp7E5kEIoot2nrKs8pqTwm0t/maJcI
	kmqtaxP/dinjgRDrgcxMlmZsDj757EnmpLj4xcVj5JBc72tJsN+3nECO3xbE1twz3o9qDnCv/si8c
	zPIRI+m+4vLRPsmTcsHIpMo3Fv698HWtYCY8EIq79ad60sqYhGy4SFtRKJJPgInzuBnSR6nMJ1Qvx
	yk2BSv7OqYHsRA8CtDaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvqWE-00000007j4Z-22Fg;
	Fri, 27 Feb 2026 05:36:08 +0000
Received: from mail-vs1-xe2c.google.com ([2607:f8b0:4864:20::e2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvqWC-00000007j3S-08IV
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Feb 2026 05:36:05 +0000
Received: by mail-vs1-xe2c.google.com with SMTP id ada2fe7eead31-5ff28393b18so685181137.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Feb 2026 21:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772170563; x=1772775363; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MDesqVRO1Tim7+gISdrskbEX51kvM+tTCym0v98yq+w=;
        b=Kp90cAWmf4QjVBTC7YWLnVsgmIYiYu47otop+8O+YZBfrfi6ACI8SZGoxbgBgRwys+
         KJ3QuW8QRDZXuAKLbGMPLdVhrQULybUsetxOtk97QewPvAqlGpc9V0Q0YsEwkbEIyyI1
         J0S4ED6Y7rlSmY547jOKhbQno0uYwp1cRrEbdee1AY0yWXNJLKB/q9IWkIXN19qkh/lO
         z/M1isR2XHL2AKy6MEWny4jPBoDu3Z/eYCl+fPbOyjoOyZx7R6po9znH8Y6rM/HIiqgo
         1otYCFqRlA3e43e2QaZv4p4SW1C+LYZJDlOHtAqW/zKK0/sBW3O/YRN3iWNcOtxDvID9
         Yt6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772170563; x=1772775363;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MDesqVRO1Tim7+gISdrskbEX51kvM+tTCym0v98yq+w=;
        b=RJ/SLaicNz8RxR8MeN/EcD75VGpep/aXrq1e45QWwH28OLHR+PMNang6JnZ1ruWDoE
         9o7hD1LbTn5pCsFsHWc15VZ6QW7LQKRXW6p4Y7qgPVJO4fIRHGi8c1/PYouJ/r3ocKKt
         Zwq7MVwlXG12VSla0iaNoVK3HX84Wy70V/PHMQUTLztLdWpIXjd4SbBvDFds1IF3a+58
         5VjbRi385G37QIf011BO6s0LmFMrEVe+98oiwDm28y5zcWt5GCL8U2olgsEp6LyDnPYL
         QDvFNcz/4b13zHKXzUEuafwuHmvWw/ddVi+cLUnrauFVoFGV+6mONRwiquY19emgcfZR
         HXFA==
X-Gm-Message-State: AOJu0Yw5zA/pViKlBJFy29rYNJGGmdVA/dkvH6c3Vc9g+eF5Lk2GR6Ce
	f23X26PIEPoXmOXWSOpMkqh3SdmwQdFpwSkbouqFdB94zZ9tfW9Mlu3C
X-Gm-Gg: ATEYQzyWk5An9k/82CPJnRMx5UlL+AFrJM/P/Sxoe/BkT9TJ2eQYGP0NbGSDnI40OlI
	lDunEkOukK+JnM81bfG7B1lkAm+DkBxFHkFKNSrIFw5amnw95MQejtIo7B6WyQya6iSAfcpwd5C
	JrR95xBCg/SII2sVXEBYJNG1Gfbx16iM5BY37euG0f5tjDqE0FQdao2s3kwfRDqbb0ZNnvSBrjo
	VAJbl/H/Gb4/vEH3H2BEcHi+0A251HN8Biu2CVHGSQcA7sIdGzJVkhORZ2If00QTjhMBsjeZAQ3
	+eoP1T3/+Tn9fpcBKzE+oZ/FX5E0+0ejVE9q/wuzPYqvi3iZMQDxiFaV3ddVSIP+gObJzFA7/i4
	n1We78ykjCNSmxjB6PaP2QI5dn5duc8UMpweVivxTKs3bgloLhLUhYLu2alIRCr4XmuK8hD8ma6
	mxM7sX0yJ5YQ==
X-Received: by 2002:a05:6102:a48:b0:5ff:11dc:2ed7 with SMTP id ada2fe7eead31-5ff33712140mr755878137.16.1772170562643;
        Thu, 26 Feb 2026 21:36:02 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1ea1596asm4361324137.9.2026.02.26.21.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 21:36:01 -0800 (PST)
Date: Fri, 27 Feb 2026 02:35:54 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] PCI: rockchip: drop 2.5 GT/s defines
Message-ID: <5172389ba8d291fe05bc0887bc97fe73f110c5c0.1772169998.git.geraldogabriel@gmail.com>
References: <cover.1772169998.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1772169998.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_213604_075487_ABD9D4F6 
X-CRM114-Status: GOOD (  10.74  )
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

Drop the 2.5 GT/s Link Speed defines from Rockchip PCIe header
definitions. The reason is that Shawn Lin from Rockchip has
reiterated that there may be danger of "catastrophic failure"
in using their PCIe with 5.0 GT/s speeds.

While Rockchip has done so informally without issuing a proper
errata, and the particulars are thus unknown, this may cause
data loss or worse.

This change is corroborated by RK3399 official datasheet [1], which
states maximum link speed for this platform is 2.5 GT/s.

[1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf

Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 3e82a69b9c00..b5da15601b58 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -42,7 +42,6 @@
 #define   PCIE_CLIENT_MODE_RC			HWORD_SET_BIT(0x0040)
 #define   PCIE_CLIENT_MODE_EP			HWORD_CLR_BIT(0x0040)
 #define   PCIE_CLIENT_GEN_SEL_1			HWORD_CLR_BIT(0x0080)
-#define   PCIE_CLIENT_GEN_SEL_2			HWORD_SET_BIT(0x0080)
 #define PCIE_CLIENT_LEGACY_INT_CTRL	(PCIE_CLIENT_BASE + 0x0c)
 #define   PCIE_CLIENT_INT_IN_ASSERT		HWORD_SET_BIT(0x0002)
 #define   PCIE_CLIENT_INT_IN_DEASSERT		HWORD_CLR_BIT(0x0002)
@@ -197,8 +196,6 @@
 	(((x) & PCIE_CORE_PL_CONF_LS_MASK) == PCIE_CORE_PL_CONF_LS_READY)
 #define PCIE_LINK_UP(x) \
 	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
-#define PCIE_LINK_IS_GEN2(x) \
-	(((x) & PCIE_CORE_PL_CONF_SPEED_MASK) == PCIE_CORE_PL_CONF_SPEED_5G)
 
 #define RC_REGION_0_ADDR_TRANS_H		0x00000000
 #define RC_REGION_0_ADDR_TRANS_L		0x00000000
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
