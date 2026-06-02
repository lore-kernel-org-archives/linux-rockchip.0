Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07816CD6E5D
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 21:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yAr4tlRfpZbAfZMGHtfiXs7rgqeFSRyHaUYdzYOeuf4=; b=HFbcz/vMn1WkSb
	v5eRlFF1UDusiG6V6krjY5VSIvmCkPisXy3i1O5HXOu1KbW2LPnbcTBQ9533bMHfxenYcZrOMLrwd
	Q8O82fZMIEtvFZdRDjnWKqrpm8hylvxm8eXxoIxfpCTNJgKLpLqRmQCUmTev4zw0Nh4JQtyJYrEck
	/IOWTNRFhn23pny3aSklKc7E3QSMDAjdiKNXPHY7q67L7zJqcYDepF7tzrPqxx7PE3wUi0MZ6JeIF
	uj2gkekMK0oz8xAUfc6iWzlvD2KfIXNWDoWicniWrAgSi3AiQgvHpfhFEaTCCeJohriCWVl/YmkOd
	NGxt62sNiAI+z6tu3rww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWeN-0000000Dp7z-06PV;
	Tue, 02 Jun 2026 21:27:51 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWeJ-0000000Dp68-0nhU
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 21:27:49 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-48611cd1e1eso1235506b6e.2
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 14:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780435666; x=1781040466; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qIuVsum5u/jtIKFcQXo9Dzpm5tHPCbQA+WWkBGyWbio=;
        b=iz70C04sWlqKmhQlOBdEd1oyD8I1Pkcj/GVsnk8nulVjHZjOkaewnNQb/LFFzOpQHe
         AWYjNkfp3Z6TzljwT8m02WzrWprdaXsNo+eWAtwy+fTqxOLMtS4dW2U82T/Vj7WjhMLg
         bTA3JRvT2eWIbcJvju69MjdmbjpJenknv3Fs8tr3Rv9bry+r8j1Elgvnq20q7NAkqr3X
         pMHxyejBKCSuF/T8KjfjTVNlkB2YzbNxLwsEoj/0iYT5ZRYDGSoLboo0cYkqPJJGAUyd
         +TwvKEYin5MCaKzEKlxt18+UOmsJPoUAKUzUNGg3MFA30QbNWLhCuaTSeQuPJNaP8HPi
         JhSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780435666; x=1781040466;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qIuVsum5u/jtIKFcQXo9Dzpm5tHPCbQA+WWkBGyWbio=;
        b=eiOZIgZLSRltiCM1eNP26DjQAGQMtaN5P3qMU178tBIOqzVXqdwQNrPXc4h/6nA7gd
         AnjcnJCOfqsCYWT3Iddk0b//SgD0Oa3l+UP6XNqd57KbbW4hFZjjWr3B2zvnSqS4SQN9
         4iXTrA/87NwqQe7+w9I6T/77ggAVU+C/NlQw1j6RpaHdBhTT10aUL+lHd7d+EDqAm0Ed
         DDq8gh/WuTsPdMv2F6RTBhPbeVeXGslYnm8s+WrNEnGOH7YJrL04ayXaVdfS4N53dyHe
         KtKyiqJnJiAhVFSzxgvIuugH4c8Z2/zCSUJLPfqIy0VBBsofdY+Q8ntYwkfveSQmmErR
         LugQ==
X-Gm-Message-State: AOJu0YwX5U7YHc4hLKfy9T7yAS9V6qPigODsvty0ouG2AmhISpLqeZMH
	nsXitRmcl46yAGQjIdflqWhfUDZgzYsaDPHE8kGFj1FW+FaYVf/CFkwYdRvWmfSt
X-Gm-Gg: Acq92OF4PHlBwwXsvGbuPg7CgKjC1xKtLKL+dEowqVYrbiVmxkPcXrsFjnMm4L8IkrD
	I3XlULt1vWgzq7LYu1bfuPnLtU2jKBq9y8gsZadIES3bKqqfPK1oBotqgsY/tvNRgZh3XyMxsCU
	Ya0d/xeGEd4Qu4fYfo/L+IakbFQs0vriVcMDxbhoBmaHvHeltR5Tv0VDaWwAYgO2yEqxNnGOeq0
	hvjCYA3yqCMpHoZ7VPPb+IfGpSnNXusBOK4hYCre7EPJH8HGV1RM7fJJq881IDL0ooGHVY+uP6o
	MDt2M2flyAX7Drpb1uuGkrWZ8CvTHlHdxVyo0UgxTwguGFhGo9RcmzxY33mROr2Xwf2Cd4gcpL5
	bMnVqEfzGL3uMu2hiYobVePUx890Us0oz3TCE9B8C5QfQzk1UxPnAybc0PmwN1HNDOlU8T8UP63
	sDA56nDuy1OwwA00qyo4+NajejN464CEs=
X-Received: by 2002:a05:6808:2225:b0:486:45c7:34c5 with SMTP id 5614622812f47-4865a963134mr374870b6e.17.1780435665685;
        Tue, 02 Jun 2026 14:27:45 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b5a53bcsm216722b6e.3.2026.06.02.14.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 14:27:45 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 0/6] Add Anbernic RG Vita-Pro
Date: Tue,  2 Jun 2026 16:25:06 -0500
Message-ID: <20260602212512.418166-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_142747_237275_D33CEFDB 
X-CRM114-Status: GOOD (  11.87  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG Vita-Pro, based on the Rockchip RK3576 SoC.

Changes Since V1:
 - Updated documentation filename to matche compatible string.
 - Corrected order of allocating IRQ in charger driver and switched
   to using devm managed function to allocate work queue.

Changes Since V2:
 - Corrected issue with naming of panel binding document and added
   fallback compatible string.
 - Switched to devm helpers in panel driver. Note that
   devm_drm_panel_add() is currently only in the drm-next branch.
 - Optimized setting GPIOs for panel driver.

Changes Since V3:
 - Fixed numerous issues identifed by Sashiko bot, mainly relating
   to unclamped or improperly clamped values from within the
   charger driver.
 - Corrected hard-coded values in the panel driver unprepare routine
   as well as correcting an improperly checked return condition.

Chris Morgan (6):
  dt-bindings: power: supply: sgm41542: document sgm41542
  power: supply: sgm41542: Add SG Micro sgm41542 charger
  dt-bindings: display: panel: document Anbernic TD4310 panel
  drm/panel: anbernic-td4310: Add RG Vita Pro panel
  dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
  arm64: dts: rockchip: Add Anbernic RG Vita-Pro

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../display/panel/anbernic,td4310.yaml        |   66 +
 .../power/supply/sgmicro,sgm41542.yaml        |  104 ++
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 1327 +++++++++++++++++
 drivers/gpu/drm/panel/Kconfig                 |   10 +
 drivers/gpu/drm/panel/Makefile                |    1 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c |  254 ++++
 drivers/power/supply/Kconfig                  |    8 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/sgm41542_charger.c       | 1065 +++++++++++++
 11 files changed, 2843 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
 create mode 100644 drivers/gpu/drm/panel/panel-anbernic-td4310.c
 create mode 100644 drivers/power/supply/sgm41542_charger.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
