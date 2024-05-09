Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 184D6C25B78
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 12:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RH3j4FP+/nqBSjcY1G4g2YtcN70rAD3DpK3beGxPJ6E=; b=SGytdBvQHyAAra
	T9YLZQrRzC4M4/Tm+Wqxo1naCWRmG//2Hu/vdhl62DiCbFegjKKo1iA2QH4p3Ism7ghKP5RryLToq
	VHwTWrizsz4/83kAnjr4dUoCxo0B5fZsGiXKJp3YXXDvZQdYJTZEiB8HnrJTDz8QDzh0f1MjNFLTE
	pU3RvcZe0nYDBKFTD6qll/N7K7WfHGFss8M5AX2oXwEMKHB8IuEn+r68SKQkYXx47aXOMN9Cn1Lop
	JiLkPVEV/MzWwjDmQ39YFE9Qu8aQqbUB0ZaIb3bw9Wsz5D9N3Pb1R1E/KxAhYOjCCe70DpznyL/n8
	4f9K31FGdtZG2Z8dTHHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Ye-00000001M98-1Skc;
	Thu, 09 May 2024 12:07:32 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52YZ-00000001M4o-3psR;
	Thu, 09 May 2024 12:07:29 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-51f0b6b682fso826903e87.1;
        Thu, 09 May 2024 05:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715256443; x=1715861243; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkypWPW9zjRDxFdsbSAq2JqA2c+afHrqHIvisMDjIts=;
        b=D3n3FDcPqezasprx4WnY+3mDriKlAf0lDQ5LoTZ3BcHCSICA3TNhKnMCIVQMXd/dma
         OzI4Bk7MS8LpEUbDMLSPsJpJhRsnGRc/ZuEf90cK2E0f1AQTDoMqccQROtOgNumtPpSF
         GagAt5AM1h7RRwBUCj7BJPiWMKXWu/pjiqmXrbyEQji1sIegwNhwm4liZpWkbr4Z+sog
         hvDyQHD47x1U52ejEi3Tp4jQtGsHso2XXeJeBqlpcCdItBdeE2bpEK3nDsOKOOxAv3I9
         gw/YXilu1p6rKuVOX/WBKrKU3jNFhfC0Af6HkVYJuOawdssBo5+pAszqBbTu7sVLgiFI
         Bs5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715256443; x=1715861243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CkypWPW9zjRDxFdsbSAq2JqA2c+afHrqHIvisMDjIts=;
        b=ujwQHUOz/JprRYpxClJCoICeLp3xoeSvBi2rdmGVgSagTHQR0zO0OwSzHAuTm0HsXM
         FXYsJJYtzaf7lUesjmaRACSp26cEJYQ24bnAPRVKQG8F4opa269l57ImXx17u1F6LK5S
         RxnDtUXM8cd/WXTdDjjb/XQl5DqwlwkUxVHfbW1g1ZR8T0V27WYvjaeSmwnMlB0XGE7O
         XkCHqVlKDq+wZVgTBmPlZkHgQzOkvwACU3Do+k/MBn1Bp2FG0JTHjGJBhw8xANiCMWcw
         yrWQTLq17S149l53P0tm8iB1jqXnY2BbMkMXLrmbkynUGGoEQOjVcmEShbHG9/uUP5ck
         8f5w==
X-Forwarded-Encrypted: i=1; AJvYcCWNpxY+EG/LguVH8YmeqF5CmxIQl2YWtpIlkgpIIefbOLqAyjxoiGs4K4fffjVkGRrf58MhhkrBejFDEjTiYqD5IK7/IGDCNz2yGsS3T2UGHAoLdEO8EAazHXXuTfLriMlFYmyVVjxMX7crJBIM71KXYxWoQd4wwvI=
X-Gm-Message-State: AOJu0Ywd+kGSHebSbSEeCTj9zr/8Ex+it35rRv1JPJzMP/+zWEZb45/L
	iz6Ig8vjj45d2XSqYjhhqJzolI0w5R8gW1U60luOt+SQapqGHbc=
X-Google-Smtp-Source: AGHT+IHys9c5rfgObjKdpLe0taBmnOFFOHsrH8dMTFsMSmyd7UfuBmkk0BjGCiFKBOXChJJYLuzTew==
X-Received: by 2002:ac2:5388:0:b0:51a:e305:eb20 with SMTP id 2adb3069b0e04-5217c567012mr4863974e87.17.1715256443303;
        Thu, 09 May 2024 05:07:23 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce1912sm24112005e9.11.2024.05.09.05.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 05:07:23 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/7] dt-bindings: clock: rk3128: Add PCLK_MIPIPHY
Date: Thu,  9 May 2024 14:07:10 +0200
Message-ID: <20240509120715.86694-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509120715.86694-1-knaerzche@gmail.com>
References: <20240509120715.86694-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_050727_971777_93968AD8 
X-CRM114-Status: UNSURE (   9.79  )
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

The DPHY's APB clock is required to be exposed in order to be able to
enable it and access the phy's registers.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
changes since v1:
 - none

 include/dt-bindings/clock/rk3128-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3128-cru.h b/include/dt-bindings/clock/rk3128-cru.h
index 6a47825dac5d..1be455ba4985 100644
--- a/include/dt-bindings/clock/rk3128-cru.h
+++ b/include/dt-bindings/clock/rk3128-cru.h
@@ -116,6 +116,7 @@
 #define PCLK_GMAC		367
 #define PCLK_PMU_PRE		368
 #define PCLK_SIM_CARD		369
+#define PCLK_MIPIPHY		370
 
 /* hclk gates */
 #define HCLK_SPDIF		440
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
