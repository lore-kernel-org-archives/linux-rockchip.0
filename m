Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B5BFD45F6
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 22:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=posSadD5suAQmhIr7fduNmeOh+OPKG2+mhNKKXOJs4I=; b=LctJonpA5iKZRK
	/RluC6bp6J4IsODicU0+aX2G/GzDz+InQ4z7MTxL37K2P/pzJaQSD48waLTbNh49xGEfNn/lHHfH0
	WDjutV8JmRc3K90adorAKpI/39E1FxG+3y7MKICGqDh4/t1eQPCXXAkg0qUcV5tLR9vO+R/WUmG+H
	qqxw+2LmLQEeoSvzxdkG/HCjJ3JelV03x5e9zHrCDinSXKTuw1YGTKNHEtJn92jPCOGkFHISWAhM8
	4JdLrlI8A/G2G6bsozTM+mT8Iz82Zr88v+YD4R/GqluRWOFTMRCT30WXfM+4Kq1zN/SVfXf7H6t5w
	iPR66kLu37FKzVGmTvOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvNMK-000000050NR-0jYM;
	Wed, 25 Feb 2026 22:27:56 +0000
Received: from mail-vk1-xa32.google.com ([2607:f8b0:4864:20::a32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvNMG-000000050L8-1HVO
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Feb 2026 22:27:55 +0000
Received: by mail-vk1-xa32.google.com with SMTP id 71dfb90a1353d-5673fd077b4so147071e0c.0
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Feb 2026 14:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772058471; x=1772663271; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RbmElmhsWLmxkCWwbLCza2bJ6ctDAX0b+gZt/+eBHkg=;
        b=lDRv6UWAynFaM08Gf+5ucgg/lewJx8NSbcVq97CIXZ0IQYxDaWDZTx15ZhQ9CITEi8
         Zh3p4XwAVsPUNa33Eimz9mawyw0TmNZQpGs/KikguuTlTDGAszQBnlFuCcIM9F9R9mkc
         b7T9hjqml9TOQz7m9Mi+omZJ7hkRniSx4pEUkziom474NigzKUYBWCHHCysUNqcAGGYq
         MtJnisVWpxHKS4+AQ6+t/2cDtGoDOUbDbQIZrAoRajP+pBuQKHsVnjIKF8B8aJrN/qq5
         OgdowT5lku7sCAFSMme1LIABtNYFV/90M9egaXlYis47OsP+RhGB8x0kR5Ts/Ztnd242
         g8Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772058471; x=1772663271;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RbmElmhsWLmxkCWwbLCza2bJ6ctDAX0b+gZt/+eBHkg=;
        b=ocSc1J1Nb7+q7NrnIzQuCQunjt9qE6SheqX5pWe16LOEBLTvakp0898BEqsP4xitF6
         3BGoiu98+ErZNldgfI/+UoHipPa3XZ4W8N7kodvZFgpYeODBgkSvhIUrKuLIerXVL5br
         EYDwYcrFNYssbhumo4y60GpzHHtEee7EZ9fmfC9K4Bn2UFNv/zGdyQeuqqaV9HPSnz5X
         qVgLRA8kb1T5Gm+A0PbNziZZWv+zZ1k3ZqEXDJqtRH0kvCORHskZRPjzbU04VNozRmNi
         4uonodDRz2cIPBcHhkrJ0XCaVZDqQ+zVdG7HXjTRUjl3fwofjtFT5pN/RAi9uaKTlciS
         Z+sQ==
X-Gm-Message-State: AOJu0YxONFkClUymk3r/DVspNiFd6Xbdbx0fswmsnNrDGZp3v1N5RiDa
	oduGBj9jzcXBYHCDhtVQlypi4G4ocpN18QRC5tUW7iE3Wdr0uyRRJMJ2
X-Gm-Gg: ATEYQzwoQKv0oaBSuVgUTfGKU+8yMBKZXFsXuLNXUMtoxbi2HsjZBe51mfigcUZS6ac
	LxIMmPUbyuE3DoVpZN8AnfwgXEF6/xYYIKdEbTshrYGoaSp76YlxCbuCBIkqUWHu8+oF5F0aprz
	owcadM6yyy7RlvvtcxUvRzYd9SgMbG3on7z8tzNPxiXN0zdRsRX6N+Ao9s7fTa0HRtoXzoh8yRE
	HCi2u+wG6wsKrG/tKTneCEDWBQ5i97v+1q+UuwK7jDA1aVSfkb+uIDA7oeAbQz6cP5YirlTojv+
	jZrzGBUSzk6AIqQ04Z7uYtA7jtHQh1jR0ST9RnR+h8pw87sl4tUMX4BbZm6xAnQa1iNxHvx6dS6
	m05cb31nAvGpg8s6R3Zr9vWn2wwVxV4j2cgZ073e61hyPOReeSVzKTeYRIM59zB0ly2JIAKxdFe
	95dIJJ3VsY2A==
X-Received: by 2002:a05:6122:3306:b0:566:37dc:e219 with SMTP id 71dfb90a1353d-568e48c946cmr7126900e0c.15.1772058470884;
        Wed, 25 Feb 2026 14:27:50 -0800 (PST)
Received: from geday ([2804:7f2:800b:f14d::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a922afe47sm399366e0c.20.2026.02.25.14.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 14:27:50 -0800 (PST)
Date: Wed, 25 Feb 2026 19:27:44 -0300
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
Subject: [PATCH v3 2/2] PCI: rockchip-host: comment danger of 5.0 GT/s speed
Message-ID: <8db835ffe384db63ee598a203751b298ad1cc267.1772057799.git.geraldogabriel@gmail.com>
References: <cover.1772057799.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1772057799.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_142752_359164_BBB4BE65 
X-CRM114-Status: GOOD (  11.23  )
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

According to Rockchip sources, there is grave danger in enabling 5.0
GT/s speed for this core. Add a comment documenting this risk of
"catastrophic failure" and discouraging end-users from forcing
higher speed.

Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ee1822ca01db..4faf3e29b7d5 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -332,6 +332,10 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 		/*
 		 * Enable retrain for gen2. This should be configured only after
 		 * gen1 finished.
+		 *
+		 * Dangerous and may lead to "catastrophic failure", with data loss
+		 * or worse!
+		 *
 		 */
 		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
 		status &= ~PCI_EXP_LNKCTL2_TLS;
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
