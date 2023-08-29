Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E52A9C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njeEljlhhzX7Xw/1+pd6+sSou5Gpd8Gl/U42Mp4a7QU=; b=HxnTX1HilvNtyx
	mF1HdEHPBfNx1CY079JVvDlHAiCjFm6gpEf8Gptf4s603pSb3qu0QHLiAc0+KKk3+oqBsVUiPTRFR
	+6c6mTcMp+MTRK0RXRqq2UWfQdtoVVUa5xx2ZYQbjG1asLBcYGEUS4RNKaROcwPpkXSyvMPbqPd5i
	aebY79xtTGXpkrEQ5+veVJTOhfTd3WHi5Nx0SV/9gnKhWaLnr1ImaEE5+8XmCuSYSeEwgRIVXcI87
	/RpVeEbGZu/TcC+QHqcRY+STNZnUWyXWgEbfp6IXbZY4BNfiExOeuJNPSnyfMRoR3fLoT47d1DPxp
	15Aw+L3bWr3R7ogKK+Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Lb-00BvZ1-2o;
	Tue, 29 Aug 2023 17:17:47 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LK-00BvHq-0F;
	Tue, 29 Aug 2023 17:17:31 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-986d8332f50so603792266b.0;
        Tue, 29 Aug 2023 10:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329448; x=1693934248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rlz17GtutNw1PX6avQfyxd2FJLVbt0FbIToHal1G+vU=;
        b=UIFYLrNe0gh2pAwnM5MUnuNxEI2N+C+hDeO1RoxlyGw+Dv05W/dM9XAythdMCRIY6K
         Z9nxj4tt6ACJ68ny5AJEt3T2+Td3iRnGFXuDpEEGOKu1ZCi0/xj3r9ftMwbIkD3G91Uu
         U+ldak5sol1qkR+3XD7+yUG1TLmaye0xeGMRwwNqpywQVNXSCXTHRVBbLJQJvccZ/LA9
         LfsLtbCwvE6VCGJqblgyPJH3fqOZ+8kAGnBFIBXvtLQwOoeNKDHvfHDNfwl+3UeJYtEU
         h2pnzMnciPjnl0iSQaYBcpSKtOHjUkwuAJ9DiY+9OzRXC+sMbSIofwBZCO86tFcfg3tY
         qkyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329448; x=1693934248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rlz17GtutNw1PX6avQfyxd2FJLVbt0FbIToHal1G+vU=;
        b=DwMTtpKtkKKzrYW9TZ6zancbVv62CAZcBapRV5fjbgZFHyu+Cf6N5AY4ysNZ116rHs
         MGw0GsuyJS6/iEF0bia/GnH75FNRrEAtYyhoO11EwuE9357dvPzRfZYm1YuhSyF3kshz
         59GECK5XQwIAE547Z0xPQUaXvL31LjPHoRIKlyGzPjPWQuQLZERsE9+PHnkKvS0tH/hQ
         ecx5Sq6cwQG+fWfrDScbtV8q95qSo+D+0DDg3rXYLu7Uvm3XfyWT5YVYJvsguyhdbqy9
         /lAueT6egrxqZR0GHakmS5qTh4lwg/+pymxe9C3U6hG2/S/tr7HHrei5nWNltNk3YB4c
         OhJw==
X-Gm-Message-State: AOJu0YwYYxHwBzISUmQ5c8XE9qLxjXB3f/3MPKkHC7oFbNhrQrq5nGYq
	N60AMWFbuOtSrb5jnsSvAA==
X-Google-Smtp-Source: AGHT+IFFkEkxU6fLi6B7Qfna18QFEfdVNppGwFK63NpwdhfSCbGPZ5uGzoW6mAq0vfuONXZvjcBGNA==
X-Received: by 2002:a17:906:8462:b0:9a5:81cf:57b5 with SMTP id hx2-20020a170906846200b009a581cf57b5mr8395816ejc.2.1693329448163;
        Tue, 29 Aug 2023 10:17:28 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:27 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 04/31] dt-bindings: arm: rockchip: Add Geniatech XPI-3128
Date: Tue, 29 Aug 2023 19:16:20 +0200
Message-ID: <20230829171647.187787-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101730_119118_D147F8F1 
X-CRM114-Status: GOOD (  10.05  )
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

Add Geniatech XPI-3128, a RK3128 based single board computer.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ecdb72a519cb..e4c1af691b7a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -227,6 +227,11 @@ properties:
           - const: geekbuying,geekbox
           - const: rockchip,rk3368
 
+      - description: Geniatech XPI-3128
+        items:
+          - const: geniatech,xpi-3128
+          - const: rockchip,rk3128
+
       - description: Google Bob (Asus Chromebook Flip C101PA)
         items:
           - const: google,bob-rev13
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
