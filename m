Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B311C48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:13:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A07A613ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:13:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1A07A613ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=awOm3K2pbUGJMP7ENqJvMbORYfvDyR28uEs0v0bnkss=; b=QjyMa4OuvTReFe
	RAv9/v6uis/9HVZWYq67YQ8X9FvMPtE33XdB31AcbBruifS+lFokhQDa6YjLdqhL/wP3zjiGvbvab
	fGxxE1BLbVhjm294e2QIA9xVDVd1gS1rP4gXm5IBJ90sUdrcN+Knb4cSDmVPbLZM8STF2jDx5m57l
	PhvScRANFtYTmscYFXwWC7TdJ5uqfL7XxIl+H0TwKniGCJHBUS1J7gvdqoT0DcRurmteLiOd+SjBi
	I0Dq9Od0N32iMNU8WpySaq5dM8mPq9YNtPvpnv0BSevIz+KTgQvhNpXYuBpu8s+KGLJGM3VRsODyM
	dKpVptiw1SCuRUNBbYTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luIzL-00F7v9-Az; Fri, 18 Jun 2021 18:13:07 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luIzI-00F7tv-CU; Fri, 18 Jun 2021 18:13:06 +0000
Received: by mail-wm1-x336.google.com with SMTP id j18so6018455wms.3;
 Fri, 18 Jun 2021 11:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K98EYWEUrUiQZaYXU/th664Hrf+PPLxMaWShDbXXluI=;
 b=MagQyTCH6HKucF9M5MPjQOtjWLH5BVKOy3z+P6fS8qm/GxQkX1sdrEJfjjCTsPb7mk
 Wo6W+qwF+/gPPDBAHXFtYBZgygw4Oxk4b3ZmLQggQh6HLvlaX0yHfSeETlmDIRxXb+4N
 q9GaC3Hcs2q7yXQFSv8f/VoDdX1m+bSX/BLwXotMwPxD5dMPv/SRXA2cI7SHGnXDr9Wr
 FGjsc1c4DwVDXWxTDWOmwT4LuyhIRVqHgYPutZ+nU/3foiKwxL3wCCBdkARAS5TsFKHs
 5WRJe0bXrdLAY2wfChXOCH5mFjMRZM27ZpJEi0EePdUOSheOv+x6AsDfH81L9IqMoJK9
 Jc8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K98EYWEUrUiQZaYXU/th664Hrf+PPLxMaWShDbXXluI=;
 b=MQPcLgY/tfvPXrTfhFziRGpHFR60yxOoWC7V/6sPB0YIP3ortgPehziNTmCkb/Heo+
 gxju4Qjp/3WqcW9moeVaWbllUrMfntep7xqJ97rD++b+t4GqW4d6STV0vc9FxXy76wmc
 E4jxqG+iAY4HTnknm2OLe6vqQzEGtOI9l2Tj7zds464IpGao79+sqlOXdFxqt5VMZ5xD
 dqNc6ba6gBnVjx5plMH8K4v+fjPErgp/k08rynADepv5omYNpDIOBo/+BiPsD1f3QHpY
 G3BMyLa3kalEQ6Hsqebg8iarwO05r7RrOdJuyZU+jbVBEJ8Q3aUfFqx5xPBDhKXN0BbC
 aJWg==
X-Gm-Message-State: AOAM5309U5GVYTVyUf9GmJa1ZNkVcJkrPJSR34WWeS6p3YCE0q1jG8C2
 p48GsoLNvoUw5JP2PhxV3Q==
X-Google-Smtp-Source: ABdhPJyy8iHBbsu57j9eptw73dfQDpL/8ILy4+jW+ngV7ZBRnAfUd4HJTMW6O3/lPCP+LW2Hxq9nCg==
X-Received: by 2002:a05:600c:410c:: with SMTP id
 j12mr12895602wmi.117.1624039981706; 
 Fri, 18 Jun 2021 11:13:01 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id l10sm9306782wrv.82.2021.06.18.11.13.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Jun 2021 11:13:01 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/5] Updates for Radxa ROCK Pi 4
Date: Fri, 18 Jun 2021 20:12:51 +0200
Message-Id: <20210618181256.27992-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_111304_471414_E4FFF1FE 
X-CRM114-Status: GOOD (  17.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi list,

This series adds support for 2 new revisions of Radxa's ROCK Pi 4,
namely ROCK Pi 4A+ and ROCK Pi 4B+. While most things are in common
with the previous 4A and 4B revisions, they have OP1 revision of
the SoC and eMMC soldered on board.
Patch 4 and 5 add SPDIF and anlog Codec to the common device tree,
since they are in place in previous revisions as well.
It superseeds
https://lore.kernel.org/linux-rockchip/d4e4e06e-6ddd-4707-232d-b829c1d646e6@gmail.com/

There is no example (which I could find) for Rockchip on how to
deal with "+" revisions - so I looked up other SoCs and the rule
seems to be to use the "+" for the model name (which is the "offical"
name), but use "-plus" for compatible name and device tree files names
(see "Raspberry Pi Model A+", for instance).

A short node for testing ES8316 codec:
The driver disables the headphone jack by default - for testing
one would have to enable it via amixer with:
amixer [card index] 'Right Headphone Mixer Right DAC' on
amixer [card index] 'Left Headphone Mixer Left DAC' on

Alex

Changes in v2:
- added additional compatibles for the new revisions (Heiko)
- renamed ES8316 audio card name to "Analog" (Johan)
- added patch for SPDIF
- aligned spelling of board name(s)

Alex Bee (5):
  dt-bindings: Add doc for ROCK Pi 4 A+ and B+
  arm64: dts: rockchip: Add RK3399 ROCK Pi 4A+ board
  arm64: dts: rockchip: Add RK3399 ROCK Pi 4B+ board
  arm64: dts: rockchip: add ES8316 codec for ROCK Pi 4
  arm64: dts: rockchip: add SPDIF node for ROCK Pi 4

 .../devicetree/bindings/arm/rockchip.yaml     |  4 +-
 arch/arm64/boot/dts/rockchip/Makefile         |  2 +
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 54 +++++++++++++++++++
 .../dts/rockchip/rk3399-rock-pi-4a-plus.dts   | 14 +++++
 .../dts/rockchip/rk3399-rock-pi-4b-plus.dts   | 47 ++++++++++++++++
 5 files changed, 120 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts


base-commit: 009c9aa5be652675a06d5211e1640e02bbb1c33d
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
