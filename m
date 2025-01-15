Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0CC5C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 06:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ikvaucjKr/CyVpKSR/KyqttCZugsLzLP0aKWLpk29EI=; b=zwB4Ao8tfNjr8B
	Gus2JCsI/jiXqZBpCswTk6ktP+vLpMFiFgoOnBYisQ/mOtL7Zh+nZs8KZXsDcOIPT6290Gvr2kvji
	ZXbc2v80TbZtnA2cPDmhNfDZeDj507qN8uzoJeucvbwl/XNkJv4WLWdPt/Y3/4nvBrAzwdqY24Bex
	p0N0uGadqdmfK4YElBHW85r0pa3gdQQOecQbuh4g02512Gm2ciKHydu/Zb/b5nHqXWDW8mZNKzKOL
	x1AQMUh9+AgheUV7loEiH4EDraHTZg0m8kABpQvsx8kQMhlhdxx1PCPh/MzgEqIKWyYCZDDF/mAp7
	TvqubGe3JXOtzzhkGvLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXxHI-0000000Arfo-1GP1;
	Wed, 15 Jan 2025 06:53:24 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXxHG-0000000Arf6-2DOL
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jan 2025 06:53:23 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5d0ac27b412so8528255a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jan 2025 22:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736924000; x=1737528800; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1jHKviSWbOJnThNL+BRNc29xaYnK5sB8qfkKjQ020pY=;
        b=HrF+rjOL44vYhZ007+e8VeAOEn7RQgCQEru1DXDewAiMFXkZ5prB2iTIgpGHCwoGBc
         3ciOxEbbT0SwGzp7ZK4JLRUV9ixsmaKUZxCQUUtUPuk3s+MrS7tiw7a37L2Djqh8VQe2
         Bskt94neRyIlLqvd1rvxelEtFyGt1CbkjW58MvN7bB3CRS1dmRAPPAPch7tsBhYhro9R
         O24mNxExiN5V9sGnSjeTBFPfpL44oSLdjGXXBUdEaq+gJQlVqCJjx2j1kjAsAS8+3YmA
         noUc0Imh4IxNkYO8+7uwKnuTkbMCgmdmLLwRjFG8uFanFGc0YS0WPE16gEPQCeXA/TVu
         z3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736924000; x=1737528800;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1jHKviSWbOJnThNL+BRNc29xaYnK5sB8qfkKjQ020pY=;
        b=ccidgpeaQmh9riHvtuQljgmlSUKvYQZXejvMBKhIYciv0fiRuTg4FdHZ3iJOOuFM55
         qKWLwTEu5qnmmHjQ/rd7sVo4H2In4MKVKSr0MQLoYj6ehd6eWxL/MkWBzEYoRLZhbK70
         URsLqyjteswmuyQc9rAzoGTaNpgniA5suH3/vUqSeKseW2jm7o5lbEgVNCZnB2R9N8rP
         mY7zXiHCY9DUS7MTLodSoOtJXHf2Pa3eRzpmGD8jPrieEWulFtyv2gX2ndkVNDszY0j5
         0LfwiKlbc8HrHo75wYktO6Jvkq1Z86yvenchKPUEWfC0m1B8FbWndX4XbdEhoE5LjgF5
         ySZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNntCLbGxP+z0eCMdCsfQnukBLmFKol1nyFhhXS3d2uRNTbXOYsx0pmLIpD5dZcbo97vD9d/Or4SRhToX9CQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyCL3SXPjOeCeVmimnzGDkc8r7CwDaFQajlHxeWxWiDoA/36+2W
	xrQVHnSaCt2xFpitldL0di0nv3s7HGRr1Av7x7nNSNxKzIsEpTid3hK9Gz5cJGE=
X-Gm-Gg: ASbGncsFpEHl4v/Qbj86oHgb4FkOAU4pJSkoGXuH83UOB+dlL3XitpuEoiDLWVEnMmL
	ndi3qAZDXSD1M8CupgDw/7dSu+oYWxx97TJU2PB6WYhmqxvFv+uSHeP8QJx2sYOBWKjojSl1VRi
	rYJ0MTvKKqoM3geSxssK0Yn8KHeEES6XJhXWGsx9vs9uTCy7H1uSCl4mP9D7YF0/ojzFEFQ5Mwm
	kDBYH1X+w5um6HLz3Lukr9mErW9sJY2407k3xx8sE+ZJxzS8dlIFCIxdg0Zaw==
X-Google-Smtp-Source: AGHT+IE9P5PDtBvyWPxhRNEsLiyx/nfhdVfXbwMkWhpN/F7zwvZlvMv1+220NOQBetuNrhffj43vww==
X-Received: by 2002:a05:6402:518b:b0:5d3:baa3:29f with SMTP id 4fb4d7f45d1cf-5d972e06740mr26199332a12.9.1736924000495;
        Tue, 14 Jan 2025 22:53:20 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99008c371sm7145838a12.11.2025.01.14.22.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 22:53:20 -0800 (PST)
Date: Wed, 15 Jan 2025 09:53:16 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH next] PCI: rockchip: Clean up on error in
 rockchip_pcie_init_port()
Message-ID: <7da6ac56-af55-4436-9597-6af24df8122c@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_225322_565969_EB7E4EB9 
X-CRM114-Status: GOOD (  10.10  )
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

Call phy_exit() before returning on this error path.

Fixes: 853c711e2caf ("PCI: rockchip: Simplify reset control handling by using reset_control_bulk*() function")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/pci/controller/pcie-rockchip.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index fea867c24f75..35bfdf3e17a3 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -132,8 +132,10 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 
 	err = reset_control_bulk_assert(ROCKCHIP_NUM_CORE_RSTS,
 					rockchip->core_rsts);
-	if (err)
-		return dev_err_probe(dev, err, "Couldn't assert Core resets\n");
+	if (err) {
+		dev_err_probe(dev, err, "Couldn't assert Core resets\n");
+		goto err_exit_phy;
+	}
 
 	udelay(10);
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
