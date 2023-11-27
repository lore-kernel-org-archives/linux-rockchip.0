Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 661ABC07D5A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 18:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EtcMaNitocNaOihCRsnFmQAz+ygh4qgyYydv1EphQ0w=; b=pcJUiEHHhsuiY7
	QdCC7Z3u12wTLFN4Kwym1qho76UKuBWR0iGHhc6chAzHWjJ0WJupTdksuFYx5Hu87Cm+TXfcadlZL
	btiaoT/KtoIVT64E2U02f70TuhWXLTFUr1roh2N9nftuTSOQOxJfuxfKvOT26LlXIXP2O4aMMRQC1
	+6pGBzM7xt2JKaYjlrDZIvowa00+BlHGkcc8olgsGzH7CfmmZnhtwDydyveg3YN6a4Oh1lqk98Cxz
	HoLAEu1W1CiIq0n3B9gmN7dJvCo4Snb+YvhJanZhf3xcdm3i7bNm+kQ+3BsYPZiR6uI1NFq0YvF2t
	K8fOcjgZY/5fQu+2SU2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7g80-003CTQ-26;
	Mon, 27 Nov 2023 18:14:40 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7g7x-003CSc-2K;
	Mon, 27 Nov 2023 18:14:39 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-54b8276361cso1171183a12.0;
        Mon, 27 Nov 2023 10:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701108875; x=1701713675; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Iz+SQoVhosSMRX4vnLdp6vX1tDuM6gc6OEfyVkKHGuA=;
        b=ZYvsgn8llCJDDTOkg6RlF8zITb287TLoVmjkaHQ7B1Q7pB9w7knm0T0zFesxSDitJl
         +Q1KcruY/umuw+wqjq0R/sctrzSBqe8NUyxPqEBacPmfnbKyC8pYZRFXGu76tpW5xzp6
         R9rBi0djzmsCUXF4PHRRwKoD5hhfIAF0OOKAUIuFiCnI2HgdKJmmC4iA/cjcPQa2FD6j
         Nhh8XXrv0b5JU3drrxjWwZsW3wjPaifGOIrJCDG6V8O4/xep9V5JamjJyKJ5yq8+7K1D
         2d1QbcnHG2/gu7NuuKHtvqGYCZb+Jyu8w8XjI7VF6sPJDCkjDqrkrYHYAZje2CfX+TeF
         U1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701108875; x=1701713675;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iz+SQoVhosSMRX4vnLdp6vX1tDuM6gc6OEfyVkKHGuA=;
        b=R7+FO4KFUhb/2pqRnFKWnibkJK9T05Odd+WnFexeoC6ryA2uFawyl9bpArdH7nKteu
         gq2IAtu88o7fQpx/fIwrm2Z0VqtXaQJHqs3z/4B+viUWi+h9/n9Uk/9Ui5U8jBw9jhu1
         zrpnPdnmWTU1EZla+EkfObwUjmu5UdVYEftzxssQVgJXLL92pj3oPyhy8duO8tGEthQd
         bCnA5B0vxjooolbb+d31w7Gasm90orvDiRc8NMhYSvU2J8oXQrpdlQ2yCyABYdboo5sE
         KUwy7MA7Oj1GSFmSl34Ih6dOj/NWtMFs09Pmng9kYBz8X5k87VAInrsryYaPmXOYUQXw
         eRaA==
X-Gm-Message-State: AOJu0Yys+zSRfa0oKpyOUM4z7U93y6ZHJd8U8DW4o5Mey/IrAEhQSEto
	pADU1f5qqVC8evsvNEYmpQ==
X-Google-Smtp-Source: AGHT+IGAzJ4ZDLCBz1Y5mlv1IpMNRjadXbsXoO4z8QEREOSPN3sfahZ6Yi7aDN1uEJk7BP03TLJ5NA==
X-Received: by 2002:a17:906:b299:b0:a03:ad29:a00b with SMTP id q25-20020a170906b29900b00a03ad29a00bmr10533836ejz.36.1701108874929;
        Mon, 27 Nov 2023 10:14:34 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:370c:d8f:2dce:7367])
        by smtp.gmail.com with ESMTPSA id dv19-20020a170906b81300b009a9fbeb15f2sm5952271ejb.62.2023.11.27.10.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 10:14:34 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 0/2] RK3128 clock fixes
Date: Mon, 27 Nov 2023 19:14:14 +0100
Message-ID: <20231127181415.11735-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_101437_761606_7524C251 
X-CRM114-Status: UNSURE (   7.80  )
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

This series has 2 patches which fix some clock driver issues for RK3128.

In v2 [0] there was one more patch [1] which I dropped now, since
it has been merged already (was submitted by somebody else [2]).

[0] https://lore.kernel.org/linux-arm-kernel/20230829192958.250248-1-knaerzche@gmail.com/
[1] https://lore.kernel.org/linux-arm-kernel/20230829192958.250248-3-knaerzche@gmail.com/
[2] https://lore.kernel.org/linux-arm-kernel/20231031111816.8777-1-cn.liweihao@gmail.com/

Alex Bee (1):
  clk: rockchip: rk3128: Fix SCLK_SDMMC's clock name

Finley Xiao (1):
  clk: rockchip: rk3128: Fix aclk_peri_src's parent

 drivers/clk/rockchip/clk-rk3128.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
