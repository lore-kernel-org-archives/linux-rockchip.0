Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13CB5C27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 21:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrTC73B5/ZJ3V5JHf+b3LuqoYbuk2UqaLt3Z7zHVFPs=; b=B+dKl5lrw/pu1e
	WfQ8SSZUoJm8K/g8buHk2VwjY30wFQBnmKDyfhow1AsFecd2DVva4dxn21mM3RtsjQydgqr4iOpwG
	pBZA9LdJuP54wUS0Jnrq6ttrxgwyQ1XGkm+XLXLXksLCP9hGTJVN9px1yLPqAm++WenCJFVyBpIcp
	h6CmCm5Z0R9O97spuo/hcUHsOhx2g0+lwcLSkObwBhRUMPNNj0qZl2Eby/XWTi75btepEi7ZIHCuS
	RBrhZgXy0Pfdb602yNwBfqFPro+T2CFFXubhbjc7Rtoap7DaSaaQe9HmoFZAHxOX0NSxCauB4AjbZ
	3rPcZzQ02o4cWQ8yaVzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExkh-00000007XQO-4B3J;
	Wed, 05 Jun 2024 21:01:00 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExkc-00000007XN5-0w4S;
	Wed, 05 Jun 2024 21:00:55 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-354b722fe81so237355f8f.3;
        Wed, 05 Jun 2024 14:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717621253; x=1718226053; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=33SKSYjNACPXXw3O2oejlfq/sz5jEco/GHNmXgivYNQ=;
        b=d6GNSmYUWsVkAYVXOMZMIdI18Jvbf8T8HwPxjYKp55C1sb7iQnk9S2BYspmgv4Esc0
         WUqKFi1hT/JDPSYet6856lmxnDUJGneTAuKZjH+1m8SJa/BkFzCWOsabsgsiGvrBNNqo
         Mfae0XmXHnhX9GnikBzcBgutwh844yjNd5Ebsw7CDFURItDUJ/2zK+99dYL9bUjMnEG6
         gTmwXJ41nAissE3du9VSYiAa9dGdJ2aLhbfY7YOFNT+bQ1mi9mNCBxLXHmIY9PMqTypW
         eiQ+SV5OX/WQSx8268DkHFvX8WYJUG816CNwm8PNm7eKxKoA8j8m2k712l8sR2O9ASqW
         NqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717621253; x=1718226053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=33SKSYjNACPXXw3O2oejlfq/sz5jEco/GHNmXgivYNQ=;
        b=hDAm6hZlaOhOnX6b2gURPOSFIx5yC1zXEDJO6cxEdLK2hETOnEkkzhRXY/zQq7VIjj
         DFbMiMSZgF4U0tF90KORoKtkrimpIUIUISSblmN7HNOCrt2bL7UBNe7XCJ9fYCpDPPAq
         nbXwVbutlwBjAtw1y1GvqjqugavhLmgzrT424CaQpWdpdrOOismZLnhxBWs6M/wGjlx2
         pvQ1/8IIv6yuO0a1UWJF5v0n4/7OK/jeefZ36pHYbyq0h/vr4SeIYqiCnxKGixgf6Xbx
         U8KZLurm4sEf+2WrKBEUPQU1ctcnBSPggsnpkAd2vFQR42r4zSRmMYKO2TNIp7jNjuO+
         QQ4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVMzTYEWaCc62walm5O27BDI4E7iLDl77ZyAZBO6cc/293nAXdPDs43hnwJ92yDrU44QoppycTFyUlHSAjA7WRw2xf4t/nQHOiELQa6KtJhTQJqAX7esEmh6kAJAIqtoEAFFT+CdzVey8E08N7lbKKRit7ettvTXxU=
X-Gm-Message-State: AOJu0YzAX2X93OjT8JFd3lbrOLOlqYNliZXMnah8GIxmyCaPATtH7aXw
	AM4Zl75MZeQl2wFlErpk83n156Ln+oV1gY+twCvW5MTsQVPzzPU=
X-Google-Smtp-Source: AGHT+IFcXVzdcNVRTv2q+gnXoLiA/j0pGT6qTKLZ1gOC2fRRWKBiSTRzKhmf2QhA3zWNLo70MM+brA==
X-Received: by 2002:adf:ee50:0:b0:355:796:15ef with SMTP id ffacd0b85a97d-35e840583abmr2623083f8f.10.1717621252888;
        Wed, 05 Jun 2024 14:00:52 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04c0d77sm15955721f8f.5.2024.06.05.14.00.52
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
Subject: [PATCH v2 3/5 RESEND] dt-bindings: clock: rk3128: Add HCLK_SFC
Date: Wed,  5 Jun 2024 23:00:47 +0200
Message-ID: <20240605210049.232284-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605210049.232284-1-knaerzche@gmail.com>
References: <20240605210049.232284-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_140054_268202_BC5ACBA4 
X-CRM114-Status: UNSURE (   9.58  )
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

Add a clock id for SFC's AHB clock.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - add new clock id at the end

 include/dt-bindings/clock/rk3128-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3128-cru.h b/include/dt-bindings/clock/rk3128-cru.h
index 420984fc2285..d731c3ffbe1e 100644
--- a/include/dt-bindings/clock/rk3128-cru.h
+++ b/include/dt-bindings/clock/rk3128-cru.h
@@ -144,6 +144,7 @@
 #define HCLK_TSP		475
 #define HCLK_CRYPTO		476
 #define HCLK_PERI		478
+#define HCLK_SFC		479
 
 
 /* soft-reset indices */
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
