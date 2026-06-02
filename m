Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B687FCD6E61
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 10:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ei//EpUAuCkrXqSqIyxhQceGh63zEeBKLNkHxGp7/uc=; b=B466gc4NJJhsMN
	mAAcoW/0bIn7hXYN7VBfdSGcbeBd+BhRPOai8AhtXJCcNwrePTDei3YdrTPYa0jDBHla5VeWM+v1F
	xFj6FhCQ67/c2/HbQq2PmDlg2kiOXyz/5QXkeP03pmZ0G+rmGPyR8BUv5adiOMkUgPttkJfq5WzbI
	K8g5/tqkwR2H3sXmECf9GkKfEx1sdkU4QSls8Q1IhHvTcCUcQ5by1RvcI+pyjQkEzKwxesFtgEJ64
	eanXLtaf1essXuhJE0DhtDl/HTSlStbCSZ86mqWEZ+MqjwW6LLzsk4wdVKkhlkf4o7jv2hsj1xUB7
	WJdEGqTOx/ejaSBK0stQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMAm-0000000CkNo-3qVB;
	Tue, 02 Jun 2026 10:16:36 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMAk-0000000CkMn-39l7
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 10:16:35 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2c0b9328c4aso18418505ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 03:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780395393; x=1781000193; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4FJlifkRqPEqQqgwEVL3qsdnCft9gZAAhkwAUUbqYm4=;
        b=FuSuRdQbtvdr11DAZ7znVOWpXzfwIuAzlMhhFg1HBbvqF4uQp84oFpFL5hpUrui0LR
         opEgvDdhbFPSvKeBa1hXlzTc0tkEAmITDeWFL9VRR87zh7gt04iwfCTQsk6NiTCbfUzf
         /aoCGTqZ3Pfb7ag1A89N7/LmbTxXnDX365fxArv68B7eEz9g91ODO3rV9nGx0rZb6gap
         /nHWUDMxBOAWsxb6j79LVfMXS4hhP+Ot3nG6pZkccumAqruEKvixMtE5AFq0jH3Swe2P
         dI1TLmyh+LSZ2Daz+B3Ew+dwqNhfKahRI3hFT8kG1MEwVsr15kZwPL5N9LsduDf1u0CY
         8IHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780395393; x=1781000193;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4FJlifkRqPEqQqgwEVL3qsdnCft9gZAAhkwAUUbqYm4=;
        b=MxzCd4kpGfgpdEzk638WAv3HDYaJgIetcaKRgOVR5vosRAYKE+xJrkYRoJNXtR1RJB
         ah4Vbol16CEm1c+0oXzkXCj6zuzIoNO1U6fTcoIhTAsc70VjTZw6oJi/lIfrrEBdKaS1
         gGtXJsO0rVLCRkAXyUH4fNpEefoCiTucowps8WoHCUmsiQcMSf6YQNPuiBI13L3ZC/HA
         JTPIP+7BlYH4wWjTYAKVz7crnmu0PFD6pkdYjSNVQ5/++s0ERAbq7TiVHKwQlgG4R4SH
         FQp2hre0y//hzNMKgxxg8OKDuO7MwR3ZmuhFY9KQ7bFYRa3HCNB0NCSFz2NxRiZWkBtj
         lI0g==
X-Forwarded-Encrypted: i=1; AFNElJ8/pKknItdaVavAhAIn/uzX22KNwqrlT3gsdFm6LQfQFrr74bZC/aVtjr1PY0I1Ox6Bhy2iInNoQFuIk8bgQg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1zZaspY0sczEBUz36JQjTOVnMKkoh5hdeu98yzVBFA525rfDU
	J6isZRDLRY/Mgshd2UtTiI5ss2V9DQkMboR6o6ChXR4Sg74K0jEigRiR
X-Gm-Gg: Acq92OHr6aHgTw0IAhW6Ry3kS3MNvjnZmyYh1I1mgrHZbYbaXgBGteVmBqf5OpyNQK6
	mtzST1Td2b/h/RPZlzf3yTaUxdLZ815S2RcKioLLQnsOwS8rqGdU2EG7Zp/NvPshhOwWoaOIc2n
	jzBXygWT0iKtyC3Tgzh1DK+12rrbWriPQC+ysPw+1TQNvBfMwrhDhq+a0B0pqY1vofcHh59kyKy
	82QlQeTfGiH+87dvqcPwTjEBZw2424jkYpISyqM7YQzNQWGS0cbIDcoWC73mJETzce1De6UDXeW
	GeUn25+6gLICuScZUf0zajALUInvEH0shd6gz7RvviqWrBrRcJWhe+9IeKCuCrJcxnD3ulqEbqK
	3q0NjIsoWWelLWWwK+8DeefcbDs68cgzFhQFOLf+ehRoUDp8IKkoOOYr8dlTuMo5z2Ix9b7Flv0
	dxhok8SSZOml16kWGfGjIOUmQZOXOSE7FU2/X3R4fNYn9cK4jKeg9/U+RPB6/q4ptLKGai
X-Received: by 2002:a17:902:ef49:b0:2c0:db23:4c9 with SMTP id d9443c01a7336-2c0db23074dmr97094065ad.20.1780395393395;
        Tue, 02 Jun 2026 03:16:33 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239fd84fsm132766305ad.23.2026.06.02.03.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 03:16:32 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 0/5] ASoC: rockchip: Reorder clock enable sequence
Date: Tue,  2 Jun 2026 17:16:03 +0700
Message-ID: <20260602101608.45137-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_031634_786359_8C258A03 
X-CRM114-Status: GOOD (  10.31  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Hi all,

This series reorders the runtime resume clock enable sequence in the 
Rockchip SPDIF and PDM drivers to enable the bus clock before the 
functional controller clock.

It also updates the SPDIF DT binding clock descriptions to match the 
actual clock usage in the driver.

Additionally, this v2 adds two new patches addressing issues reported 
by the Sashiko AI Review tool regarding regcache sync failure handling 
and runtime PM resume status validation.

Testing:
  - Patch 1: Verified (dt_binding_check passed).
  - Patches 2 to 5: Compile tested only. Please help test if you have 
    the relevant Rockchip hardware.

Changes in v2:
  - Include two new patches to handle runtime PM resume and regcache sync 
    failures based on Sashiko AI Review.
  - Update commit message based on Krzysztof's review
  - Clarify in the commit message that the resume sequence becomes the
    reverse of the suspend sequence.


Best Regards,
Phuc

bui duc phuc (5):
  ASoC: dt-bindings: rockchip-spdif: Correct SPDIF clock descriptions
  ASoC: rockchip: spdif: Reorder clock enable sequence
  ASoC: rockchip: rockchip_pdm: Reorder clock enable sequence
  ASoC: rockchip: spdif: Restore regcache cache-only mode on sync
    failure
  ASoC: rockchip: rockchip_pdm: Handle runtime PM resume failures in
    set_fmt

 .../bindings/sound/rockchip-spdif.yaml           |  2 +-
 sound/soc/rockchip/rockchip_pdm.c                | 16 ++++++++++------
 sound/soc/rockchip/rockchip_spdif.c              | 11 ++++++-----
 3 files changed, 17 insertions(+), 12 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
