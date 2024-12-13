Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F43CE7717F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Dec 2024 01:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXTR/msWyySFIRdGuYRbuvqxZ+P+AkiK2vtz6elj8XU=; b=RlrkfCLSKbKwqg
	g8SCC3a1eBrg2jNxebCFqA6QC6c14mfXOM3KfVAnhlFDx9RTACkbPiQ2Pn0UzoMPOGJ+xqfzuWllO
	PPGsexFph3X64V7UD1IiZGJl8iUIH5FUTS1GQdhy6Q/dFYld7TsQwEFW//cyIAQ1hnprXNN8F9Nlt
	mWS1MvcwRY1Kq3em4TL7htOMrcvypgxwGMo9O5WF3oVX2VL4lVj59BfL8z6RyJmelp2cTx54XPcph
	XTECc4OfKEOhzYLDUfrqY871AdcMmasXcxX+ruW9Pv3t4t/NT+TS7Y04jTr5VGrimJiRynK1vxJ2I
	X4G4PMJIkfdOnoDswqzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLuXg-00000002Plc-26gR;
	Fri, 13 Dec 2024 01:32:32 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLuXe-00000002PkL-2laT
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Dec 2024 01:32:31 +0000
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-844bff5ba1dso95015639f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2024 17:32:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734053549; x=1734658349; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f8ryccMdFQBwG+eWGXmJJpmNQrQtDTsM6+lw/gJKoKs=;
        b=kRQUsp7PIsD9Hl6BJS7PMextyGaYiMKA6qeDJ3J9jGqZdqP9ReU5cMlg9IHPsVN2/V
         ems9zfZZwZOmEWkDd4mUwY+Xi4QLWcxk0BeTbF/+hBGum1j1pCQquiSB8rxgy0XXRMww
         lPmo1Bc9MzfFZCpB7QF69U482QQT8M2cxdxKhzMNKanM4poRyR/aCZenyz8XeZFCtUB5
         m1RoDVm5G2GQGhdMwd5j2dK0I67hDnXyU/jblSOmjMwA00FdAQWbFs+e9DQ95FgVCQa4
         xBsGyQL950VnVuEHwM3UXINsr3BSYpqiRlG91tennqOmqP1z+kHzW5Crpl8URpEax+x8
         UZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734053549; x=1734658349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f8ryccMdFQBwG+eWGXmJJpmNQrQtDTsM6+lw/gJKoKs=;
        b=dRj2ZECcvGktVYBUnNvU1hR3UEylUovYszAIuMUu8VhnsQJyRqX0zd4sk0/qFlNgu9
         iZDR3SLEjBdke7iXU0kWYj3+0MvEb3+7CCWebW6aqmTQbvH2hs4ujA9ztQu2P6TVIynv
         oOkikEDfqYfb0KeWPD2nCBLpSLvrAZpOSY/1cwpYrLIz9kw1Drt0iEhcmMwLUZtsqiSq
         x/loPCHiIHn9ddtZ3OtPwiM0GZurO69r05vm/E26QS4XE8SXxaON/avS9lIcWpLUqIeE
         LFZoF5kjEuT5TciA9ePBiLhyuVjX9Kz3ER4VkWVkRPg0uGWl/+zCIR62OIuTlDNovUX4
         +uLA==
X-Forwarded-Encrypted: i=1; AJvYcCV5lnauTu+UfJ1w+CrH8GkbMFGXyPzVHHLREDFG6Y5MTN2k+yVFBKsvT9fDZd5xChVrlLY/fmsB046Oqo16sw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwCPoVRz6EEQFY0ND7K7t/mYMf1PTAoP7TTd6jJDUi0Qm7LmGy7
	aJVW7sOPfrugBFGd4JYVkv8KS2dLQ0OQo/T6qdCgGAuOJ99paf7Y
X-Gm-Gg: ASbGnctcOknb4rM1pJnzSoo/CYDVsq4hUfIp+mlTkHsyCEyfJcE4aWwwMH7Hbco0gGB
	4rCyGXjx+0c/yHDjGdVd9PPSS3B65TxKtBB5WupRtFWCzpcKqhRi7p9PL7wfxa4H7GnTiqMyAkK
	iypMyOOdg0D/5E/ZrQuO978mIKgC99/eaNXmAWW1u3BuFk+2TKhLpieUmZS5oQlFikILEwUm02w
	sv7x+xOvgbOMAH8jKlusUUe6hr/mAcJCbkdy0ZK+TDhgOerDriMvDZGnMR53HPKGwf9EM4X+2oT
	enluXEHnZ8wDdqxxjaHs5fTXz4I=
X-Google-Smtp-Source: AGHT+IETAcTXptH0ksA75sp+neFX799jNjq9W2GjDUPB/2elQD/95eoBuQ5XddYUCrQmtcSPaFqpxA==
X-Received: by 2002:a05:6602:14c3:b0:83a:9488:154c with SMTP id ca18e2360f4ac-844e8aa65dcmr96564639f.3.1734053549592;
        Thu, 12 Dec 2024 17:32:29 -0800 (PST)
Received: from localhost.localdomain (65-128-205-244.mpls.qwest.net. [65.128.205.244])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-844e8194e3csm16069039f.23.2024.12.12.17.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 17:32:28 -0800 (PST)
From: Shimrra Shai <shimrrashai@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shimrra Shai <shimrrashai@gmail.com>
Subject: [PATCH v1 2/2] [Draft] dt-bindings: arm: rockchip: Add Firefly ITX-3588J board
Date: Thu, 12 Dec 2024 19:30:51 -0600
Message-ID: <20241213013051.11095-3-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241213013051.11095-1-shimrrashai@gmail.com>
References: <20241213013051.11095-1-shimrrashai@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_173230_693926_95B05226 
X-CRM114-Status: UNSURE (   7.27  )
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

Signed-off-by: Shimrra Shai <shimrrashai@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12..9ee96acdc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -190,6 +190,11 @@ properties:
           - const: firefly,firefly-rk3399
           - const: rockchip,rk3399
 
+      - description: Firefly ITX-3588J
+        items:
+          - const: firefly,itx-3588j
+          - const: rockchip,rk3588
+
       - description: Firefly ROC-RK3308-CC
         items:
           - const: firefly,roc-rk3308-cc
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
