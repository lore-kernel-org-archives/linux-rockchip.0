Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76F0FC27C55
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 21:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GiGqOZAmcWMmBUk6R1hFYLQpXpQIVmj7zPsQaqWts78=; b=mNdhDvZerweMR6
	CqY0oLQyTBC51pGu3wTpDDECxUjS87dOqyuWw3PZ2cqoMNCqA2/q4oD415YOQnGYDd0S8A55e2ZKp
	3+pckM8sSWXAJ0hqNJxETJQs/pAr4TajqnC53Rp1DMxepU9+2djrKYb9sdiin5C6VJPAgFxyrqhss
	SPj0Dt+7s9c5BQlJk7B+zf0b1L77kPOKRqWTBFcFx4wO9NjtZuKaI3X+4qPHXUJ266e2BKpxYiJmI
	4KG5xzgVh+tv2d+RSPUnr3+79YlY+vzfntn+4XohgQeWCt+E6plvfRmqvRmZsovHKnHDYrfKMRl8q
	3SPgwJ6QIfy9KjMHn6rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExkn-00000007XTf-2XWP;
	Wed, 05 Jun 2024 21:01:05 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExkc-00000007XMq-1zNf;
	Wed, 05 Jun 2024 21:00:56 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-42108856c33so8215005e9.1;
        Wed, 05 Jun 2024 14:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717621252; x=1718226052; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XuZhauiIXe/dPit2+IYYIDdw8J65X44pe+rX+iqZzH0=;
        b=GooW8W7CQ+5DaCtLKiA6FUrVsCQE+v17HHVapGc2/egsEXKjQdKSzUA56Ehf2jQiNw
         hjRg7Q/V+ZRehlIDzGFpFWo3YtKeLWROSt+0SEp3EeMJ/xOQcqUyoyzLlaQEDqE4B/S8
         E6CE03bn8XdLGyJ3B9rEqr56EDeuIHRVndMBFjBkFFvIyBy9VeGTxLFCw61PdWKoOezH
         Xig3gg5g95x7brOsmzTi/aZvoUOI2it8wp0dfRLqx8mbRKVngG2dCQWkr2L1mYDrOYpC
         KAZlwJBthIX/9ceMdgiQ0nwOytTmpJbfvWKHVkTnGC2Ji3LoMRKAwc4X/UlGduPfXjc3
         f9qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717621252; x=1718226052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XuZhauiIXe/dPit2+IYYIDdw8J65X44pe+rX+iqZzH0=;
        b=syoISTKjj1VolH/B7efDEbe2MTrspFN/TNk724r0xrbFrN1dx0m6VEburaNOIFObbv
         mBM2uPGv+RS5OUU6mWoXyNz5XpjoNyuUjZJf6lTSqJ2jzD9iMAnBmJ+27XF8sOp+TV/q
         wkBrNeQ+q/tc1CD/syiBCi+0IvMp4J06ncU3KwqwWzbGx/6RFHHfyy9dk2t8wmavhqun
         Ee/bEXAlqXxGt6VVXmrAMasLRAkmMWpdJMwW6Xl+qYJ70yuf0aBfrAlpASuD72MzyP8D
         KMT0OqLSpI4s0E1uWPlNjQBIk51xAOYHGWdQzOiqpFcTviYMAffmLdAwwmvoEvjQsJOz
         +vMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqeVFafYhiYtk5b19iALbm7MZ6KC5O1RapZJMQf+NibFrnX2tuheEIVP8NFJqyIDgwZ/MY6YMBoXlrnDdipFi67yOfjEO26KbfdV4uuZynJ0lVGj9YtG5nzr2MVVeHN0ip4Y4iI16JOemxI5Sr9XotsK66nAZT0MU=
X-Gm-Message-State: AOJu0YzfG4k+RP2t747vKxzRa0h7qSV4cHAkgFtKyiUqCzGdxBZ/apG6
	vSKCNgJQSsaex38W8GwyjwZoglaEoEvuXZz1fY6pmtAa8Tn6TnI=
X-Google-Smtp-Source: AGHT+IE07M3Ayc5UVGzWAK6FK9JW9Ttxd18yCpMX1vjpRHWw1Ldtf8cyezEw5LAY1mfB5VzssLahGA==
X-Received: by 2002:a5d:6d8f:0:b0:34c:7ed4:55a with SMTP id ffacd0b85a97d-35ef0ddb092mr806043f8f.33.1717621252274;
        Wed, 05 Jun 2024 14:00:52 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04c0d77sm15955721f8f.5.2024.06.05.14.00.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 14:00:52 -0700 (PDT)
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
Subject: [PATCH v2 2/5 RESEND] dt-bindings: clock: rk3128: Drop CLK_NR_CLKS
Date: Wed,  5 Jun 2024 23:00:46 +0200
Message-ID: <20240605210049.232284-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605210049.232284-1-knaerzche@gmail.com>
References: <20240605210049.232284-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_140054_523859_CB44A1AE 
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
