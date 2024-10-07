Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FFCFCFB43C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 03:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=//BFdN0yk/DbDffo7iRtTjM74Vd6sXJFtxRCRw5IwFs=; b=qPwK7YRIQZQxdQ
	N1CR8MozdWSz4mKJZglRzxr6Vgkh3Bsf3PoEjOKvnVnlWSZi3EkMMzBfzwZB5U+zGnfkg5rmXo3kc
	ixAkjMMeXrNBsE0FkllNnnxPtqG+n7F7SeP/q91jDgfhfJypYLB1up0g4spRd0OFGx936ZH5oFksj
	N0ZIgjJVW9Dk2WrkKahJZPQTNu+bEnXmUUO0TY6zdl0A8OgybkqQD10Mg7toM+m5GlbUa0Edopnaz
	KuhJ8GvBNEEDOjKiqaJgaLsZi/vmSlj2NC3UbeOfd0XuvKBVSzvIoc+qPgrOU3Jbi9OM4cROXL09B
	fLHVM+gpPHEeqWEpNwsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxetq-00000001Bsg-2gO6;
	Mon, 07 Oct 2024 03:59:10 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxerI-00000001BRr-3VWX;
	Mon, 07 Oct 2024 03:56:34 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-71df2de4ed4so859565b3a.0;
        Sun, 06 Oct 2024 20:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728273391; x=1728878191; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oXVPUAH11w1sXXy+8Ce+V8sqrsY4hj5A34A1lI1cIgI=;
        b=X4lOmCBhKHzGNvgYbEwRPFR9uMQyHaIygs4ztS+WE8vl9qeAuFCZ4fGRYFj7Xn/l1B
         o7vnxvMiOTDYuaQFQQ17CpwbJxqjtO+Kt3Xl6EdbpKxgUSS72z+Y1uvma+J7rPiZuuVT
         zUa0Q/YT5vhoT0E3Uiqfne7xMGbzY+uqSnfgCCtepTbsVAR8TPhi+3Ty+2voQQ1cb30v
         qdZ8M5fTrNu0iW81yl+Goyli0V3BpAiqRgrQaRwh6bd3Z7iwaF6z6lH2n/wnDfWC7Bwk
         S2mPOY5vEmy42mkZqFmuya92WeeIzzQ3OCWh+vligQngKu0U9Gse0bg47sBJjU/1LUTd
         NIFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728273391; x=1728878191;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oXVPUAH11w1sXXy+8Ce+V8sqrsY4hj5A34A1lI1cIgI=;
        b=J92Bhp+45StJHw8jgceiQdRchsd850w0yoL1n3fV3W7L1fVSv4X5vOM2/LshPDNnDg
         WzEkXxt5DF2O9hczNEwuCfmJUzCNHCy2BMM5hK8VJ2nnqerc5Qt1vLMZhR0C3e44NUFq
         yVTO52jo7dGEg++sI2SULSq14byBKUyHby+kYRpgWZA8HkEBa9igni+dC8XGLV5yAoeg
         NyxRtDkI55wy4bV5Zqb1+k8GTJBD7mczG2b3DUonOOLTjl6Dyte/CT9nVYvoZQG/FWns
         TW4J6BSPiDmywbII/9Tgy5qxsQq1+Auw4E2Tzk161SUgFMWSifL0cQUjdbSCTxBBEFlX
         nyGg==
X-Forwarded-Encrypted: i=1; AJvYcCULGsuKHD6yNpvFuB4ta7gaaUlURQMc73UADrWWjot4hsPJj221AtVWhY50Zd7KlvZqRKCz5Ft/mHQ1Vf9J7uw=@lists.infradead.org, AJvYcCUkPMu44tY7kXSrCb1YcHYyVDdMXArAVxLVi6d5xgKHPDJ+mwYhzkgKhJraxkhNssJ5tMEdzOSvAuuk@lists.infradead.org, AJvYcCX04Ax5hKp60PAkaW7Y9V7k+Mai0xl573yHpmHooFLrew6ZLgVtPUif3Mg4UD1sseP7nIzwji19AX2xQwDtV0jy@lists.infradead.org
X-Gm-Message-State: AOJu0YxdDa+uvONeM5NCLEFHq9rz4lnSXmoXnaEGRkpV+g2szP5yyKaL
	0aEGPht+GdR6s4d6sv9EFDI8oiVEsdXBNzAHg3C/rru8gMjW1sh1K2G+zg==
X-Google-Smtp-Source: AGHT+IEw3q8By6MuG2yg2vwK6pYopsLAtSTTzK6kFSoPAmmJ5SviE31F6F0Hl1AgvzLgES4Y3VeDhQ==
X-Received: by 2002:a05:6a00:914d:b0:71d:f2e1:f02b with SMTP id d2e1a72fcca58-71df2e1f068mr9912225b3a.2.1728273391377;
        Sun, 06 Oct 2024 20:56:31 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0cbbac6sm3451322b3a.39.2024.10.06.20.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 20:56:31 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v2 0/3] RK3399: PCie Phy using new helper function
Date: Mon,  7 Oct 2024 09:26:08 +0530
Message-ID: <20241007035616.2701-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_205632_894771_3BEF3101 
X-CRM114-Status: UNSURE (   9.16  )
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

Earlier patch series were part of the clk and reset series [1]

[1] https://lore.kernel.org/all/20240901183221.240361-5-linux.amoon@gmail.com/

Now I treed to split the series for phy changes.

Latest clk and reset changes are below

[2] https://lore.kernel.org/all/20241006182445.3713-1-linux.amoon@gmail.com/

v2: Fix some typo in the subjects.

Thanks
-Anand

Anand Moon (3):
  phy: rockchip-pcie: Simplify error handling with dev_err_probe()
  phy: rockchip-pcie: Use devm_clk_get_enabled() helper
  phy: rockchip-pcie: Use regmap_read_poll_timeout() for PCIe reference
    clk PLL status

 drivers/phy/rockchip/phy-rockchip-pcie.c | 92 +++++++-----------------
 1 file changed, 25 insertions(+), 67 deletions(-)


base-commit: 8f602276d3902642fdc3429b548d73c745446601
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
