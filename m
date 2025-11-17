Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A479CE8D6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 21:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXKVoKbz27V9YwpnhuWkFL5+dGRZSZpXUvS8/tS7E6Y=; b=tl+wnyliNXD9fI
	clYkzLwm+r+Ivlfx14PCZjphOIUW5quxNotlxaqhg+7TFHXwpv6IJjccD7fKlJjHHhy+PMBoxO5Wz
	RgQvf/5f2RQcMoj/C69ke3ULh8JINg9yP5uhoLk9AD6tIOyfTQGbZvSctj/FHqyJMaaWHlCUjB5nW
	UZvxhO8WczksxCPCs/w7KPKMdoEUCHp1R+fL1ge8XbDsI7IjSn+jsRO/9pbv3VR4ud7SxeeQRgzFa
	P8YOjpN0zzjOxwzHZ2gQgVkAg6gbtYKmZhOyNDHympUBd1nee3z7CFmyyCbsIqMxiyTSoFKi9DtrB
	1i+p27h5/ZTM+MAFBT4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL749-0000000Gtcl-3qfR;
	Mon, 17 Nov 2025 21:47:17 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL747-0000000Gtbc-1kKL
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 21:47:17 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-45034dbaaabso2099238b6e.3
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 13:47:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763416034; x=1764020834; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RLE4Tj3ESr9ube8E0SxlookVVEHtTNDbpqvD6AIIcXk=;
        b=FmXM8nFMpxASjH7ZDlirKr6f7BCZUNaUWx38NVLG5fCxWpkFt+DqtPFQMTGFh4MERQ
         +xUNL19/c5jiCJuDmr23s61B4EUP9VRou4K7nbdFYV2JZuLW5y7KBisWP8Yw8DJYyw2l
         cjxGyKRAVM2Qm6yKKcoji6WoEh4Dv+Bjnz3vNZ2UjnDB+KTp4C9EQa8F+ksVxBGI1iDD
         TizMeZBFuLOWOQVZ25hmxmcakU/Oc+hGV4H7Vs5sj5zkKp06McOy9iyk6WAIMhHtbx13
         tHfGcJWIVVsmBlmFxY7yC+o4HHwbp7ePW8352Q8Nt6lCgspaUVrAsS4Y6AZz7NTggJAg
         G14g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763416034; x=1764020834;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RLE4Tj3ESr9ube8E0SxlookVVEHtTNDbpqvD6AIIcXk=;
        b=uUNpsaka+/e1kbvTvOir0QQeC9S8OqC9T5MAV5+VRp7bsc2XrBsBmq9gZMSNj8HtXO
         /Iqv17dJzd3B3MBM9gmsuhL+bKvg+z+MAGyBO66i639SWKo8wLEWWS0eq5SdJrQMwp7N
         jbbdELeEXiT4FVeFgZO85vZuGlIa1btI92SFx1A9k+U0j3va1cmNjlkHPXJeuObqhBsG
         ZDMSIQWLRnSSYViVW03Q3NAffA62bOiDugMQgjCpO0bvUrzJuKbgsixJmHtwTRgQ6LDv
         anFh3yFx4XODN4ZHRqFolaJoGIJSIXVDYR8cojpGsgdNG+4kjyOTQFvBwZwRV0iC2Qxu
         0QpA==
X-Gm-Message-State: AOJu0YzzQiOJEe6sXXNd7HVi7pi3UCbhMqLusQGijjsCRZIpSJKdgsu4
	ZZEYXRoc5Vbcxvp7p5czGJR6HdQX0IBu2eeRMRdDlJOmI3xd5JlUmEkF
X-Gm-Gg: ASbGncsuCYl38n5WHXWl9Oi9Kfp7RDqSE2VET1w+NVuzokvSBSoremcYHkhrP52OBfw
	oDzL6gnp65kxh2bSMuNMAw0ThH5ejac3x4MQb+arHOloZaf1DFTRMIJP7An99XUf+oBfPtF6gXm
	5GdoeGBbIf5lq4ejKjq3bt0oJVteLE429tzyN46jayZ0yvpr717nDI3TgcuM0+Zgw3bECm0aT/k
	gEJ4RRzETI/39kViEktuGIEPILVylmyR00kJ0yyfrUj5Wa1igNKIpcBZ0nDBJ4yQha+9xYt2Fzo
	0AinGz+LFSmlc+Eg0MsLGl+COM0PbFllujeov89oQGybZFQp8J42wbRTL8cKpbi4KZHoTv0+d+j
	FeogFwsFxlj5qtkqcR69cyz/5zOiGkas3lr64mKarYiMZY/O/eEqxEJJVhzDBRaSlyGIugHU41h
	HUWIIshWW4
X-Google-Smtp-Source: AGHT+IFArlQ2cA5dLvmMgTWWlBYjPL1Kt7bZiu5SvNfPraKVrXfO2Bo2fAnkStrr+f9d2tNIoobFUg==
X-Received: by 2002:a05:6808:470b:b0:438:1c76:d40 with SMTP id 5614622812f47-450973e9467mr6858397b6e.4.1763416034208;
        Mon, 17 Nov 2025 13:47:14 -0800 (PST)
Received: from geday ([2804:7f2:800b:a807::dead:c001])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65724cfa332sm4779211eaf.7.2025.11.17.13.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 13:47:12 -0800 (PST)
Date: Mon, 17 Nov 2025 18:47:05 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent
 damage
Message-ID: <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1763415705.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_134716_410785_9C83EB4D 
X-CRM114-Status: GOOD (  14.74  )
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

Shawn Lin from Rockchip has reiterated that there may be danger in using
their PCIe with 5.0 GT/s speeds. Warn the user if they make a DT change
from the default and drive at 2.5 GT/s only, even if the DT
max-link-speed property is invalid or inexistent.

This change is corroborated by RK3399 official datasheet [1], which
says maximum link speed for this platform is 2.5 GT/s.

[1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf

Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0f88da378805..992ccf4b139e 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -66,8 +66,14 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	}
 
 	rockchip->link_gen = of_pci_get_max_link_speed(node);
-	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
-		rockchip->link_gen = 2;
+	if (rockchip->link_gen < 0 || rockchip->link_gen > 2) {
+		rockchip->link_gen = 1;
+		dev_warn(dev, "invalid max-link-speed, set to 2.5 GT/s\n");
+	}
+	else if (rockchip->link_gen == 2) {
+		rockchip->link_gen = 1;
+		dev_warn(dev, "5.0 GT/s is dangerous, set to 2.5 GT/s\n");
+	}
 
 	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
 		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
