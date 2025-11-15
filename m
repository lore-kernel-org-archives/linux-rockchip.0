Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B0DCEB2CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEwG0F72YB2rm3wkq16yHWHEOl/yktfm/G//3m9VywY=; b=rEmt5joThmDo/O
	j4HWlWwmeQv3xtWw+VP7sVSSrzCDmNWUClDE9DCLUJK4b+48MqmBfzp1U8rLL61kfbwWzPSV4OZ5x
	ruOi0UU91mTj19RjzC2ReTeg9i1KUIRK64Qrk030xOxLaRe/L/yDwAuU4TjMF7pfIINn0bkYYE+SP
	ZXl9zSIkYTXh65dFTkbH0ZHF5310gLNegV8gGEKczvEj0kOKgDbofWCD8j0iowkNVyTW7ebLFjVzY
	EpzPkpwybvtApepnH9kvVfqCeCOY4gbShmdC6xjOnMVUzkGt1asldG/4xy/rBrdkMo8JCIelJf44a
	M/uqBJwS9F8mdZ+dJtbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCIv-0000000DdJc-3YQs;
	Sat, 15 Nov 2025 09:10:45 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCIt-0000000DdHs-2Fmo
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 09:10:44 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-b98983baeacso1134821a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 01:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763197843; x=1763802643; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=43JeYWuHKtURhUFg3KcuzTVi7n2XDdHqu+mEl6pMXsI=;
        b=YgWBi2PUoSGErTmGpOHU3tDwdU9mRtm5YKn9NlebaJDlGdr3lD5Z4gI+imeJO2ZrYt
         eBQ1NKJQtkxfkm/e1SSXFrKpbBiOqDMY2xfKTfx1Q8YT4F3qqEOpzk85efobjVt90Shj
         yFIFeTVpswfI1W95cyXp7jc6i5eSjY4KY2alNNw5lRr2LmUhUPdRr1NqovyYvn8HsA/1
         3Evw0LSDnYtqxFALqbzlF4yAaiZFJTDQNMVJ9fa/9vyYFiBt6WJ+KEqt6Jq/cUopfCoW
         DVqvfNeMj47DaG4JPXhDhWupXNQ1baVQCuY5SJFXAbrbz8ePXgShoFoxNVsaNxeO/Nsp
         FZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763197843; x=1763802643;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=43JeYWuHKtURhUFg3KcuzTVi7n2XDdHqu+mEl6pMXsI=;
        b=vc/5SPbMmUeGFAdSpf0r4zjwMlvcItIkfUpUGUPmr5aYSbasUcXiCJZd50JKKA9wV9
         P5RXJ3Uylqj/IkcXB5Nz3c43Jvl2YRcUNfz8vihQvqOt4ybTbN9GdOdF4wcoDzvbFWzO
         r5b4aXjySSE+ENrSWr8Ab1ZV9p2OTLPL7kTnBzi8GCwITnA6hCfwxFlL/8h9YQugwOw2
         LiakRQaz5pzs3WtGqmc3CJGvTDxSfWB0PsYJ89pKDyxI5eIKZUuTG4Ramqy4gtoWlfuU
         6ga91kcoj4K1wETQOv2cbPnYfyuJ++UbBxM8gLrggAmMY6kpsYcrywL6Y7ls99NHOxtW
         fu7g==
X-Gm-Message-State: AOJu0YwBdvb0WSf4+siTY28tb4Icgm8gnRWcPfT+ym4yayeXRjV8J5Fg
	Yyx30DM97TzUaDM+agiqOPNFZY9pgFjT0mim4FIlqvmLkO4yS45hldwYE8VVFiKmcf5jh7G0
X-Gm-Gg: ASbGnctf5XZLDsnUAoRM3JJf0JTfE5y6bR13Aaqut2i2byy5Ap5gLUkOJXJoNbZk3d6
	65z65wXSaMohK3HUnsjnzTEyHvamPAYPqsF+eTTGYTC2jSYWKalTIjxTPO9lBJPLrOSpOWKYRkM
	WWHySb3tQya/mB0Umw1RizINjJQo7tzbR858SSOzTPhbbRntQnMlHU12AqfXpONRotky80tIv/A
	juR7qlqsVeKgUw6LKe6kMkC0yda3uU3Q1tfO0S5lou3bjntsXU4U+AVN4ReZqUWKg9gsCx4s6H5
	5EyzIBu7Cm76NamQ4qI4HTEhcNempfVQnH0E+gk3hWwhCcztEzVLF1RH2KWpYlmB0qWgpHVy98r
	HNJNnllYhUkZP996RQDjO+lSzKfgtYsgYnkz5XiUa7EvO0MgVOj2mgfN4VdFAGUHQ3FbaSSNV7w
	==
X-Google-Smtp-Source: AGHT+IElHt3OAfMQunNnxmg0BPEu4aQyjchDbhYGwGxKZcOlUa5P+fzvsHcgcZg533YgbRMtBY3msQ==
X-Received: by 2002:a05:7301:5787:b0:2a4:3593:ddd7 with SMTP id 5a478bee46e88-2a4abab9ccemr2414709eec.4.1763197842582;
        Sat, 15 Nov 2025 01:10:42 -0800 (PST)
Received: from geday ([2804:7f2:800b:a07a::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49d695821sm22796380eec.0.2025.11.15.01.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:10:42 -0800 (PST)
Date: Sat, 15 Nov 2025 06:10:36 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH 2/3] PCI: rockchip-host: comment danger of 5.0 GT/s speed
Message-ID: <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1763197368.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_011043_578552_ACB21BF9 
X-CRM114-Status: GOOD (  11.52  )
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
GT/s speed for this core. Add a comment documenting that danger and
discouraging end-users from forcing higher speed through DT changes.

Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ee1822ca01db..7e6ff76466b7 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -332,6 +332,11 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 		/*
 		 * Enable retrain for gen2. This should be configured only after
 		 * gen1 finished.
+		 *
+		 * According to Rockchip this path is dangerous and may lead to
+		 * catastrophic failure. Even if the odds are small, users are
+		 * still discouraged to engage the corresponding DT option.
+		 *
 		 */
 		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
 		status &= ~PCI_EXP_LNKCTL2_TLS;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
