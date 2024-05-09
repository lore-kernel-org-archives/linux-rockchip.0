Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBDBEC25B10
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 14:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RH3j4FP+/nqBSjcY1G4g2YtcN70rAD3DpK3beGxPJ6E=; b=GrhcAq8KoHBj+R
	MC1Our1BEvy/w6wKdW/NTxMkmWSrSEN3JMimWoHwUw/ZKBZ55GEt91WZWPNy23Jx6lxcbg1pgYvXd
	ZjcSsTmasFY47uPbh1nbaPonhNWi83UQaCNXEDtplsVNqG57uLgvuYohLQVfY5aryJIWREQ6I7hVR
	gBWm7gWiO2afiW99ft630o9XLnFULVJlwlbJpSxTK8pREtxpel6uQqDAvNfRYsBdBhAIGW4LiUdpZ
	nPn7z/JTj76J9yq7DWY4/mqJDivRnXMQLrA8+ReW2lsHuqw4yqEZheKjGWl9baQ2o+wCfq1XUBdcu
	XjwYKzqigoMVmDzDH93g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54Qg-00000001fSO-0lxX;
	Thu, 09 May 2024 14:07:26 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54QP-00000001f4b-2n36;
	Thu, 09 May 2024 14:07:11 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-34dc129accaso625443f8f.0;
        Thu, 09 May 2024 07:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715263619; x=1715868419; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkypWPW9zjRDxFdsbSAq2JqA2c+afHrqHIvisMDjIts=;
        b=IYIUk68CCi0xq9mNg/48t9nFWWUN50Ga/38xFfuHaIelEQOVETYwpv9RlCbWKHjvyX
         XRK8IWhVzBaG7b8xXEju/UGuBIwWDMHJjRtvfcs1ZAKrCH9QJm8G5Shncu9ECteEaVbE
         FtXZMECfCboB/vc+CmGc3JY8Af1UuRjWGDKuc0ZKmVznaa5KIHgqYroD8s/XFlgcHtHj
         A/NFd+Um6qzehqNokwIFECL638reTIggdaE1s6WIkK+je15dTGaJv5In4qqcge1YAGeY
         ZrBb2NlH67jME2stNphBDxyy2nLmprMxvJrNl6AwBfZ/Wsfk5yZmoKY9x57h2st+EeEB
         9uqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715263619; x=1715868419;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CkypWPW9zjRDxFdsbSAq2JqA2c+afHrqHIvisMDjIts=;
        b=APgJeH9ST7Fh0T92R4sS8kGX2uL4Tw+1QgjDBBY9uitQ6kBx/GNlBtfcAaG7JWij5D
         YtC91poT/yCMWiqa8CJDf/TXLyngQiQQkTL62L3X/reW43LS5j/ndfIHBSvN5LmV6ChF
         FkOckWHgSGUCK+onymnFVzZKADcCMGkVPQsfXKY7qo+ou3DtklSQXgKgXmOPd8B4asfw
         PHx2n9WuHGWIEaS+qLQWIf/0cfSnt/ZujCSYAvp1RGMX5oEOaF8JJ+E0GSDYzhUQCOWP
         5J7ShheEHjbbzkulWPlu8CLr4wPR46aycuq/FJAp5REOW4YOPddXDP5cUl4HbboLbJPG
         Di3w==
X-Forwarded-Encrypted: i=1; AJvYcCVfPWYe4VzDbQO3wl36deorhmdq9QM7P1As+5JDOTlxlWkFx4txyBjdVRtAEcdPyhCoYxZM0RDPhva33Jkv+IoFI75f9qxlnqUTV97DrsN/NdZ/OzzvQgUspznuHpC3SCvw5rrHtP/abRi8hrITJJjM1hiDxK5WFsc=
X-Gm-Message-State: AOJu0YzcXN1MWPIGLJ0wDOF2SjdmAaPjfsoKuWpoU3yAJgFjXdD0KiHO
	T9E/nwSOOxin/6+YvYiWv+VXkps5s/7gRlLC9NENgLsuRiaQKdM=
X-Google-Smtp-Source: AGHT+IFqb5Butmg/XL3s32gTYjgv+S8OXC4Ust9AbxM9joeLAhE7w7QJYm4NxRM4exE+Z+nqR7jOZg==
X-Received: by 2002:adf:e904:0:b0:34f:7788:37ef with SMTP id ffacd0b85a97d-34fca244116mr4586628f8f.29.1715263619359;
        Thu, 09 May 2024 07:06:59 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502baad058sm1793311f8f.66.2024.05.09.07.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 07:06:58 -0700 (PDT)
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
Subject: [PATCH v3 2/7] dt-bindings: clock: rk3128: Add PCLK_MIPIPHY
Date: Thu,  9 May 2024 16:06:48 +0200
Message-ID: <20240509140653.168591-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509140653.168591-1-knaerzche@gmail.com>
References: <20240509140653.168591-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_070709_801777_8B4D59E5 
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
