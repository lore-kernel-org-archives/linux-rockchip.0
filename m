Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D000AD1A442
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 07:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C5ZdTuRuNmpCz456gPqDm+I79W+MbgyIgXmLansoGhg=; b=Duba4Jrr602Z8t
	TYd4zz7aNYo+O/QQLnVQz00sxcSzUAAimUBV6+knwr5mHQFkdq91gG09mtIciEgQE8lmT9dGpLWCM
	72gpjO9NVTUQ+CjTgJtAeDJ/olip5PXp5tEAy50mzaGDNQ2EKGkB0BPIhAWM9NJvmAAZ9PvRsG7u4
	HUE06vSCtsQINYnZOlrxO6zvpZTZGcKpUwNK2a+msotu28G3EDpDhyx9sgTCd8MthqvftqgyuEZ3k
	6bkfN98m7j4ebuE9TLBxqRKcFDJGHM4u64BNNSG9pdNXJDnLvTBQtAjwdTt6RHHLgbxSQ19x2VYyH
	7FSE0UPxwdkCItI9whmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szWQv-00000000hGp-0rib;
	Sat, 12 Oct 2024 07:21:01 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szWPX-00000000gyA-0DQX;
	Sat, 12 Oct 2024 07:19:36 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-71def8abc2fso2110255b3a.1;
        Sat, 12 Oct 2024 00:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728717574; x=1729322374; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GOQ4NtOCWS8nSrxgzexiRJdXVz0d65HDBa8KjfEVHbw=;
        b=BxmACVDeD/aqT1WQKOQLM2OupuCALa3rviPhemoxPY0kZCBgRhnrhzEccUP3hBhGE8
         3j39ZwYKyL9KqqiuxLxk1heLhvJfRjGVoyZFCzUniqpMJewdIJCAhE3lYtROlxQVZ04e
         n+26tw9nngdUdQnl0q3ZdIPmlw0bPJhErADUeM3u1b5IhDlF9Q9C3psGLCm0hSPD6Ios
         L3rB+D9q6Wh60EFlHcK5aSuwDhe4sHH03Yr19c9q0tAubtZ6UXx0yL83vAYgwATS1Xzi
         UxllIaNQg+/25QnD906WdewnFOtWqX4JIcvUL0OS99/OggSXSutniPZxku+QGYdyqJk3
         Tmlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728717574; x=1729322374;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GOQ4NtOCWS8nSrxgzexiRJdXVz0d65HDBa8KjfEVHbw=;
        b=iPdDzlejTSFqqAfoKsWoZIRvCQAVOclNeibnu1wCbXddAfHigy7SZWZU5Eo8yLy1uH
         ZIOJ2/T8/pH0cSdOTPM5DgUsPvEdW+mc1gCXvHyZnOxTFz0g3GegaZEpls86CdbNrUVp
         uqevFbz2M4FP1FJFybjl4bABeUvYa7PeE2E3JX/deND1sBe6ZpMNZuK7NWg6nzocu4xW
         GIXn9RJCTer8KbrRQHqmPQoQukxqJw2FI1mL1pXPF8ifbmoLUPREsdBoDGdKdqKZt/PY
         67XxMRclRNKlbk9SWQhvERvrCCqIzGmpRKke9oPyej1+d7L5BFKCG3MFylTByztvb4MP
         aqWA==
X-Forwarded-Encrypted: i=1; AJvYcCU/fZye7byY/ks24S87FxT05H52KFQ+kq7OxNwOXAXAFZ9Q3rSjit2oJiG+xKuT7e6t5w+ZjkmWwhOCObkr2Fk=@lists.infradead.org, AJvYcCV7655acG3shFAq2i0hqUwbanfCIZALckiFU4EOOvbzztqYpMiTIWvJ6vy5JAZbzLbke3oiEjhAyV2y6EHlPcXH@lists.infradead.org, AJvYcCXK9wvuUeHdOvySUGkJq2HDRwqJCoFREli5txQNmPv6oIu2ZhZzrk4ZY5JvnL0tTb88XGpqF6HZ3r/2@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4cWK5NnKVMBG8HXlwOQ5fS+R2IQIAammVRzYHLQo9EJxzawzu
	cSYUeVkI6wDBfmhjlc8MiyWR6W4VfkGfc/XD3SsIPGVaWZxSsv0L01X8qA==
X-Google-Smtp-Source: AGHT+IFjBirKxvhcUm31N0h/rOgBdi6BvuwKEA4Xjas9bGgvDDnjeBOSkIFJs9sh6qdppfWlx/pfOw==
X-Received: by 2002:a05:6a00:3e29:b0:71d:fe5b:5ebd with SMTP id d2e1a72fcca58-71e37e2c28dmr7516133b3a.5.1728717574058;
        Sat, 12 Oct 2024 00:19:34 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2aaba171sm3664620b3a.161.2024.10.12.00.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 00:19:33 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	Dan Carpenter <dan.carpenter@linaro.org>
Subject: [PATCH v3 0/6] RK3399: PCie Phy using new helper function
Date: Sat, 12 Oct 2024 12:49:02 +0530
Message-ID: <20241012071919.3726-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_001935_111502_CBE6D92E 
X-CRM114-Status: UNSURE (   8.76  )
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

Few clean of the phy change and Using guard notation makes the code 
more compact and error handling for mutex_lock/mutex_unlock.

Plz review te code changes, I tend to do silly mistake.

v1:
[1] https://lore.kernel.org/all/20240901183221.240361-5-linux.amoon@gmail.com/
v2: Fix some typo in the subjects.
[2] https://lore.kernel.org/all/20241006182445.3713-1-linux.amoon@gmail.com/

Thanks
-Anand

Anand Moon (6):
  phy: rockchip-pcie: Simplify error handling with dev_err_probe()
  phy: rockchip-pcie: Use devm_clk_get_enabled() helper
  phy: rockchip-pcie: Use regmap_read_poll_timeout() for PCIe reference
    clk PLL status
  phy: rockchip-pcie: Refactor mutex handling in
    rockchip_pcie_phy_power_off()
  phy: rockchip-pcie: Refactor mutex handling in
    rockchip_pcie_phy_power_on()
  phy: rockchip-pcie: Use guard notation when acquiring mutex

 drivers/phy/rockchip/phy-rockchip-pcie.c | 148 +++++++----------------
 1 file changed, 47 insertions(+), 101 deletions(-)


base-commit: 09f6b0c8904bfaa1e0601bc102e1b6aa6de8c98f
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
