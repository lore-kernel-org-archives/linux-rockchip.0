Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6871C43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 09:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yG3BPDcTJd0fuzzagMfMrrVWSRO/fyfj3ggVFu59tuU=; b=XgkIxKZBqQRCw0
	rRwc1cfV3vIwoQVkQAzU4e4Y94ccwO4V7rD21rrtqwhSj6ibRiXZPc8FMgWawSaC4aJ4EXPJrYGVJ
	BqIo3Q6cfPZrwZuRsmKRuZ8MCzGQFcW0I244/tCDrI9fo+KADzBrfEt+3rmFq5eRawmgVKeI9gylt
	IeNlFy2gcne8g2I/mKIwTukcnr8zDuK1RlN+TuBtYqO+M/fPi0cnOn+07J0lfvMA1y2xtAqH/ophq
	LlZAckLGwZsD72reS6dTAqQZ87GB3ajR9D/u38VXEKuPZJUGDE6HE3y2GVCtQZTEECZtcEPvttelk
	K4fGQaX/sqvaOgKJd3Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPez-0000000CLSg-3f6a;
	Sat, 27 Jun 2026 09:49:13 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPex-0000000CLRv-1eY8
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Jun 2026 09:49:13 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-304f590dd91so2414853eec.0
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Jun 2026 02:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782553750; x=1783158550; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BrzVHDAthuvQX8kZRzEkQTt99BQ7t+ZkrFrff05bWS0=;
        b=gUj1NL6czBBFkmHYIuF4+OwwAOX3efD85uSvYQckgHKDfQhLNrEYMSL4CGOx3YbbHh
         VqnzolL4Y+PlHYfoi+xenO7lTyB06PPkmyZHFVrdaG0aJlZxtJGyS7mdz9woftFBtXGF
         UDucnfH90xnZ2DC1q/OSixAL1W1QaXZo0iNHl2XwWtnUZg///+BcOywOxE87j1AcUgdC
         bnc/rgHHKZxV1DV5DhOG4kKJxWT1VBINOqQBu65icDQc5w2rfv0YsjmQ9JxHHC+6hGyS
         XtY9fKF09NmisnakOInhVOOCsFDl6ahRnIKdYWYVQdC4yOK8a7ZukqK7GR5BbXyxjhml
         qvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782553750; x=1783158550;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BrzVHDAthuvQX8kZRzEkQTt99BQ7t+ZkrFrff05bWS0=;
        b=Pga0usLTHyOLODXkPsYR8DvKkIIvMMRIAXGFnrPQ800T9usEchRz1Hai3KQ7Lm9lUE
         9PGcGEYo6AeNfpj4N5Sb0TdFrwO4vWNalbVpduCJlZZvxmX+Ws7H6elEkUv+tvEHCgE7
         OdqY9L70YyIRJrCoOUj73lHqwxuMDO3ZqyLq5JQlk6vGxLsp62X/qp76E+Z7eaPKQ57a
         0fHoBk8epPEBDREw2Rv/9VnpN1JKB+WC0u96gYkxHtSwBhF9TE3P97KfE5bNIUiYtE7p
         e5RV4+RQ0tpvVWDb4GkqkcIooIfMJzqRfen0sWcbH4Woar3Xf6mpsH7vUtWQ1ezExStL
         x+ZQ==
X-Gm-Message-State: AOJu0Yw6WMUeldoBxAjW/LIwCGt6TQL7UkMLPhwwZ1gzpkjM40rtWC6u
	YPCAZ0l+18voN387RK88bcXrmlGKTUL1AmJJfczx/qcXxe+1ket3FmQDoQRIyns+
X-Gm-Gg: AfdE7cnKsXMlni0hki97ChZWoCXSCrVu/lzz2+v68HGDr/MvWGhcTxvdKSdDgo3bQCk
	ZJYE4PRzheJUTcpqzzUJVcC8AzSvzkBNYpNlH2tMpM5XqWZjRJNH5cIYUeBxxTN5GHANKaTATi7
	tLtD/vm9lgpQsohv3ImJwtWLux6ZpjjNy2erHFK+8AH6LSauvFAcJqEP255PytTAL3wtXnSwxml
	xzxt68ms7ITyDgQOPbhm1Z7ERj0cM79g9+HFmEbsCCtEKie4VLXymDWQRki6tfaI3waHl62+ViB
	m1LgAzhVFowMdAkh/TMQREztO3aO5lkKMY+ZkM7CimRfi3pWJvCgqyCEp2ta8/G/pMaGaQOAsQA
	jFpOTTfDQVnDBZqws3TQVrgNJ7qw/07IO7V6341rupprh943jHjEY1CdYiIjzir/f9OaD2UgkMI
	WeS3sPa0SAakHdBUJ8oMs=
X-Received: by 2002:a05:7300:3256:b0:304:997c:d4b6 with SMTP id 5a478bee46e88-30c84eba0d2mr10419252eec.17.1782553750413;
        Sat, 27 Jun 2026 02:49:10 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c7ca8b918sm28854789eec.28.2026.06.27.02.49.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 02:49:09 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board support
Date: Sat, 27 Jun 2026 15:18:52 +0530
Message-ID: <20260627094854.81564-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_024911_448640_FC43D6CC 
X-CRM114-Status: GOOD (  10.55  )
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

This patch series adds device tree support for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

The Vaaman2 board features include:
- RK3588 SoC
- eMMC storage and microSD support
- RK806 PMIC and multiple RK8602/RK8603 regulators
- Real-time clock and status LED
- UART serial console and SARADC

Note: This series was generated on top of the pending Vicharak Axon
board support patches (v7) and includes the Axon entry in the context
of the YAML binding patch.

Patch 1 adds the binding documentation for the Vaaman2 board.
Patch 2 adds the actual device tree file and Makefile entry.

Hrushiraj Gandhi (2):
  dt-bindings: arm: rockchip: Add Vicharak Vaaman2
  arm64: dts: rockchip: Add Vicharak Vaaman2 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-vicharak-vaaman2.dts  | 547 ++++++++++++++++++
 3 files changed, 553 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-vicharak-vaaman2.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
