Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9764DC25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GiGqOZAmcWMmBUk6R1hFYLQpXpQIVmj7zPsQaqWts78=; b=cVvj7EGwRiYOrm
	a+vEUBFKKilv+iZVLpeGGJzpoz5+ivVV7RZ+za5SMd/MAr68LobY8GR4svxXImFsUPxTnj9Cn8iF8
	rMO2CZD0c26Mfz7TF88Z1gm+Kyyg+rjFSiRAX7HDD2G8q0kEqHSlY2WeHQKYn5ZAjlMunWu3e8pXS
	VYaAUVxU1mMt/I2bUzfk2l/ZrnfmPFtMWbMwfyT1/24hUoGbvMvSfsU12DNnf6O+01UcQsIdMNVbt
	tY15uF2Z2Of9TlORODeb3lZeoj3WQ0N4Zf5aa7usBfu/2nBqCfFZh497xKPb86WFMj4bCtWEvGtpx
	ezHC7oa0oIG4vA5m5v4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExdE-00000007Vp9-2y0M;
	Wed, 05 Jun 2024 20:53:16 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcP-00000007V3b-02Ec;
	Wed, 05 Jun 2024 20:52:29 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-52b8e0e98adso426055e87.0;
        Wed, 05 Jun 2024 13:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620737; x=1718225537; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XuZhauiIXe/dPit2+IYYIDdw8J65X44pe+rX+iqZzH0=;
        b=TWvPtyZmNg4Nl3v5969l7uh+CyR2b3q/bFQD3WYtFejFxsdDdAS6pZUXqXqveXprO5
         kJ/5ya0AlVb4pPs7LJvhK1HDTkxRNEgKy1LZdsxt2OxOmTtzPogJJHSBWmA7chumvT8v
         kHAHOw+K7+riaS+7tsTkiV3bjQoVnrPxx68nCe/M7xdpZ5mWbOiNrxtCrOe52yUUH7LD
         sxcHaSxKqSn+OTI62IP7yAh8akUK6KJbjih3X0tX126UPAK3irGpGwEk+/jDdPvCVt8E
         Cur7OqYk69ekzaIoWDK7xDuG5LQCNpogAI1PakmWr3cZLhbGqAkt0dtCiEu+rKup7bk7
         pd4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620737; x=1718225537;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XuZhauiIXe/dPit2+IYYIDdw8J65X44pe+rX+iqZzH0=;
        b=OU2+hU6NZCg/Xw9Ra7gZ7oP/mhfwQ41HSxJLoBHv9K024XZpaD56pMwBCjOp1JOEGp
         rc7MM4YFVmqu62DkvN4g6p4I+KD6q1bliowEYFiEFgO/tJeli69tyKe/KlptSW4iE7x1
         rb7XxnZl99qSv87B+uM/nlw+SGsDvYVOdvwV7FSfTMPwKdvtCwI5VEhaUq5ctItmkAOJ
         S13FcCS/rBUD0QRnXM7coUjJVAZrmVccTS6DtjFwWuPPHLX52v7g4t7nnCLT5S6oINOH
         2Tf4Av2qij1M/+oAdA6s4DCHPbFwX4SHuNPy7a+a69wIX1ZK13+918WwbgMCiAlQROYF
         BpOw==
X-Forwarded-Encrypted: i=1; AJvYcCXD5gZpN/unATo6wv39CZC7LRThRvWBaKt3mQzKTU1Wz3zHQR0645WSdJwhHuh/A9B1hA6H8oBlgE6huAMTrUlC/r1Obeu0l4IXDAk7Dr6QV79dFQ0oH3XaSUjnwpXhHpTBsgkftX8a6FudLCd+iRDPXmkxHrh2HJo=
X-Gm-Message-State: AOJu0YzsuUG2uWgGdGrsIxIi2VQOaL/ymdRV4GVIvjqNHb55AuUQDx+G
	ntDJLZuhYlG/LNgu7h3NQJhywI/c17yNFwsmUEi93MyM0pcHIeJdSyVL
X-Google-Smtp-Source: AGHT+IEUmVGccmn5n59tbMFqyxwa6cCbIoRWoOhCNW7qogkjWg4uC/uKSkpRIvsdSeMzyFB7O3CvBA==
X-Received: by 2002:a05:6512:1052:b0:529:b6ea:d545 with SMTP id 2adb3069b0e04-52bab4e4507mr2810632e87.29.1717620736727;
        Wed, 05 Jun 2024 13:52:16 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:16 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 2/5] dt-bindings: clock: rk3128: Drop CLK_NR_CLKS
Date: Wed,  5 Jun 2024 22:52:06 +0200
Message-ID: <20240605205209.232005-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
References: <20240605205209.232005-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135225_215384_BF8ECB0D 
X-CRM114-Status: GOOD (  10.69  )
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

CLK_NR_CLKS should not be part of the binding. Let's drop it, since
the kernel code no longer uses it either.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - new patch

 include/dt-bindings/clock/rk3128-cru.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/dt-bindings/clock/rk3128-cru.h b/include/dt-bindings/clock/rk3128-cru.h
index 1be455ba4985..420984fc2285 100644
--- a/include/dt-bindings/clock/rk3128-cru.h
+++ b/include/dt-bindings/clock/rk3128-cru.h
@@ -145,7 +145,6 @@
 #define HCLK_CRYPTO		476
 #define HCLK_PERI		478
 
-#define CLK_NR_CLKS		(HCLK_PERI + 1)
 
 /* soft-reset indices */
 #define SRST_CORE0_PO		0
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
