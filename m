Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6278AC10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 14:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlqHfNAM7dDosZGJt7d1wM1Nbhw7l0tZ+aRQJNgICks=; b=r9GxABN/4Vw3Ww
	F8mk1IV4uxvYHvwDopDOYcbVAXwhSJ0pwIsLN/nS/EHUKK+WmL8xShdN8lSZsEvHgW9xZxPLWQWmx
	mOYhFB6DHi2OVKm53+KMpIGjNKbrn9oh/Mum+FV0y+w/rNwJFyaKFlfP05KH3o01od16mZJVXFALG
	pTnaySQIGhkXwNJQ/wV6qqv72CfwCxsAiytyqi9RqPcayo3xgJBsN9BNVmM5cJJCbdU29ET1G346M
	ELN81+yZmSWOR513E9crc1122cL2ouRHwc9m1DyJ+y81EAV6ltll1KbyzVXhze+NSuuxKNQqnYu9Q
	ByOfhALH6kKmjEZ8Hrjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54QV-00000001fHU-1iyx;
	Thu, 09 May 2024 14:07:15 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54QL-00000001f2X-02jR;
	Thu, 09 May 2024 14:07:06 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-41fd5dc04e2so3658385e9.3;
        Thu, 09 May 2024 07:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715263618; x=1715868418; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wbWVkqkhZ2d0PkibWvpex0qMFtjGLxAjIIoCdT+E/c8=;
        b=d+KEPrDpMFNRG6o+quZ9ErgI9b/YlGipkDXwkxwcM2e6tlPIcakT628xEiIb0Wqbbx
         KXcr/ViscGvG8naxRdq16XwbJSfh8Ey3TxD0rMpxgxuYXU0qsWuOW6CJ2E7uM8jRPOko
         IdiJVxecxkN1+86HtI1Qk2O4Zjx98tdShYh8J9qqAMfE/cY0gTceQ1hti/RsNtZNHry9
         PyiE40Z2XEtQTh9VFLBvw2FLkX5r8qt+o0EmjlRfkBoQEZaUyOzh+Wn5wLwbaAv9R9oz
         yV3vfiPzKgn7VuZjFBKK1DTLuAXbr+YEs7FA4acLFnn4LnfaNIqkh0paIMwUNusGShCc
         zFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715263618; x=1715868418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wbWVkqkhZ2d0PkibWvpex0qMFtjGLxAjIIoCdT+E/c8=;
        b=P6OOpDaQ0Q3z+NJwkZywbNfu+3gMpHgMnB/kHwSSyYGe8nYMrgrecCjIhB78qHxEzV
         Gx4IjqKfq0aTvGyJtu7ut/HjN0miMwPjq9+2bnQkPHfFxGN/aMxR2meQkx2MbK/rIRZy
         TPgpZobOR7qapwDMwBAbdQ9SAmZa159XlnbbMGUlSGDBJB1vomMTW8l6zOqkT39+CUvK
         Fq7BU/pmCp7U/AA5D0npsphyDLPw+wiVjM9ongU2q/B9tIdyIP/MudTOLPxZG1UIzRCT
         nnyPgU3CrCa6nrH8jV03+YXDLlhxHLYXtNn7+8zh6z61m6artEb9vcO1CdYrH+bFOKuh
         MgBQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0O7NnHuaRlZ6z1rb1FRg7GgSMVaZkk+VtHBetQm86k85+32suTY/At3K7GX2+A5LEa5VPCNfpNIlB9/Sjdys7tbE4c9UjMyUBFlcNs8W5dLXcrPsq+bcXl0IjDNa1ej2cXXHKpelRJCUbyMSIh7lC7yT1ya40+ac=
X-Gm-Message-State: AOJu0YwFE89O3F/dLNe+foEc6OFpWJ1sv4u+MoVzndJBPU8vY/9gmg5V
	Re/F4bbpoQmeYJSP3f6bMzOqGeBxSfYhilwksmMjPTwO118BOnE=
X-Google-Smtp-Source: AGHT+IGJGV6bFqKBadGxqXhAzkF2pE6cCKZpD95eQc6VzdGRYvOXM2SRAFICzVxoDStLNZJ7jxAXuA==
X-Received: by 2002:a5d:6e8c:0:b0:34d:8c1f:3194 with SMTP id ffacd0b85a97d-34fcafcd7afmr3768024f8f.35.1715263617622;
        Thu, 09 May 2024 07:06:57 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502baad058sm1793311f8f.66.2024.05.09.07.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 07:06:56 -0700 (PDT)
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
Subject: [PATCH v3 1/7] dt-bindings: display: rockchip,dw-mipi-dsi: Document RK3128 DSI
Date: Thu,  9 May 2024 16:06:47 +0200
Message-ID: <20240509140653.168591-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509140653.168591-1-knaerzche@gmail.com>
References: <20240509140653.168591-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_070705_074311_DB5456EA 
X-CRM114-Status: UNSURE (   9.84  )
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

Document the MIPI DSI controller for Rockchip RK3128. The integration is
similar to PX30 so it's bindings-constraints can be re-used.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
changes since v1:
 - added ahb clock

changes since v2:
 - revert added ahb clock
 
 .../rockchip/rockchip,dw-mipi-dsi.yaml        | 25 ++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index ccf79e738fa1..ccd71c5324af 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -15,6 +15,7 @@ properties:
     items:
       - enum:
           - rockchip,px30-mipi-dsi
+          - rockchip,rk3128-mipi-dsi
           - rockchip,rk3288-mipi-dsi
           - rockchip,rk3399-mipi-dsi
           - rockchip,rk3568-mipi-dsi
@@ -77,6 +78,7 @@ allOf:
           contains:
             enum:
               - rockchip,px30-mipi-dsi
+              - rockchip,rk3128-mipi-dsi
               - rockchip,rk3568-mipi-dsi
               - rockchip,rv1126-mipi-dsi
 
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
