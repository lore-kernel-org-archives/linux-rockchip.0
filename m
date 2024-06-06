Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15911C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 14:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUOC5o28+ov9ss6JET4dNfyNCuJTeQ+xah+I1nIu8e4=; b=4l8dqH8lGKNKPO
	x/sJ/I4wYdjlyivgKANFInHTrVB9+T4Ng1M0j4iHWFi0nZP78uvD3RjBT8nmP6CFsKHb3wK5nNFsh
	u0kWGh9AsK1Ko8ND/vhg05/GRmPDI9bfL7FYdEPcC91Ge3WsJ6icr/dj7/8LoUnZn3vFZN2AWUrQs
	qLZNPRJK5L1GhuLMxDv13Ek26ZyIWiPI5ECBJJOIKW3niRQYJXk7UYLUlYFv4cFis4BcDmuX3Xnsn
	XNo7aRN40W8S/rl7XgT3CdqhQGpNZk+w4nXb3miQIl3LaFVf/05xOiVlf6QweY5rw/LLVPRyBMA/4
	vBxXyBZNcrnK8qivejTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEFE-0000000A6k6-13rD;
	Thu, 06 Jun 2024 14:37:36 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEF7-0000000A6ds-11q3;
	Thu, 06 Jun 2024 14:37:30 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-572c65cea55so458698a12.0;
        Thu, 06 Jun 2024 07:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717684648; x=1718289448; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i9rzNDKvRTHIQEHFX1fo6SI12nhA/uBVeoZf8XBGrf4=;
        b=IHKDcJovpvv9vls87vaXKR/q8L5TYq/vT7iiQf/zbgyhOoPcF9JnkYT8cBcJcrWHBv
         fvEi58K5InYIQyBb2r5aUK3z2tDYx/Xz2JfRJ8LT7cCIhaGW7KqvWO06BY/YvOk/5C/p
         Ued5H/COYZfnZz1wwxMI6gcaDgt39Bbz7YU8ZR/ptXnHxipAoY1wzyUzpNSjE2jYCj7N
         JRGbHvIOYc3jreGy0kswMg7IAjmsryafcEGvMNk1hnvxwxG3yCnXQ6/Q4oMKmrJCpMhF
         MHAv6xUOKAs2rQmI2mcVCUyk28/QftedjWsVdMP2+/xCRgAQiOc72LuraIiZZplzOnMa
         CSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717684648; x=1718289448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9rzNDKvRTHIQEHFX1fo6SI12nhA/uBVeoZf8XBGrf4=;
        b=paSyscp1ILmD7a79UOHpVLzWrp+elz7sfk6HEd/oCNGehT+g0b831Qn055n8fQXh+U
         ArH9fBGmt+zvpBXejreTKtuO+wofeyny6FkqOYs5jW7DFkXc3W6WMfH+ONkmUtAL/OH9
         sL/U2dniifjgFhtdPMGomVigKAdRdfrjzxvx2Kr7mIFz32XctS+8yukc29BQKVC+VBMy
         vUmzJq+q3LEtHq91vG8dtakH5YHWUCylwbAAXNkDOUoFwxFNZGgQ36dH4L1hN534rSKw
         8xgdm0ax9cudZ4m1pFyEiAABOZnzKvsstR+CefZ9ntVtk8Xt2BpuH6OTM7Ux8ScaDac3
         zL1g==
X-Forwarded-Encrypted: i=1; AJvYcCX3nsWbakfuxsThAOxBJXKjpKRHO3iU4ScP4/XxU3siXI3Iq0uW82E4ilLeVktVQ0Zx2hTvtSdofV17+8hIt2sz3N/UvM8ZZwlByg262nUkbldlQIO0VMh7ECpY+5CZpWJn23PIdSYIw6GGYu6Acd8y1jVSCWV+i1A=
X-Gm-Message-State: AOJu0Yz7i/wBX2cq0q6CwH91Cp8HLCoqj0QIf95q5yCeAgy3KVenRwiR
	5JT+ckhFgDwLUh9fHqdaoZNXLv2UkDHnViiSa61snnpC/b3jT3I=
X-Google-Smtp-Source: AGHT+IEZD1zCh1WfCvxH/MGx6QPAzngQWbhVxcZUWrSClLiSnL+TIe5o63jAqNH0QIyeu9gKgFaxhw==
X-Received: by 2002:a50:a6ca:0:b0:575:2a03:8ff6 with SMTP id 4fb4d7f45d1cf-57aa55ae244mr2678406a12.16.1717684647657;
        Thu, 06 Jun 2024 07:37:27 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:ed9f:91b7:21f2:3109])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57aae1008adsm1190925a12.38.2024.06.06.07.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 07:37:27 -0700 (PDT)
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
	Alex Bee <knaerzche@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/5] dt-bindings: clock: rk3128: Drop CLK_NR_CLKS
Date: Thu,  6 Jun 2024 16:33:59 +0200
Message-ID: <20240606143401.32454-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240606143401.32454-2-knaerzche@gmail.com>
References: <20240606143401.32454-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_073729_313473_63C27AD8 
X-CRM114-Status: GOOD (  10.32  )
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
changes since v1:
 - new patch

 include/dt-bindings/clock/rk3128-cru.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/dt-bindings/clock/rk3128-cru.h b/include/dt-bindings/clock/rk3128-cru.h
index 1be455ba4985..2616a8791c14 100644
--- a/include/dt-bindings/clock/rk3128-cru.h
+++ b/include/dt-bindings/clock/rk3128-cru.h
@@ -145,8 +145,6 @@
 #define HCLK_CRYPTO		476
 #define HCLK_PERI		478
 
-#define CLK_NR_CLKS		(HCLK_PERI + 1)
-
 /* soft-reset indices */
 #define SRST_CORE0_PO		0
 #define SRST_CORE1_PO		1
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
