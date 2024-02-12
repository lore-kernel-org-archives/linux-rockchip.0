Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E70BC48BC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 18:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cPp5H/toNTnXlUwuStY9vhWlA7N/1Pijv5SNimot4w=; b=qDm7c2KpGirbVE
	ieFodPCMQKQyPRPEa8NA88eaAtaGPkVzB8CXz8q3XvYeWaTafPuZ1nLhyznvenoEAXz/utvAO2q5j
	d2fxyH/aIvJT1A8dqTjCX9t+AwolYfN4b3yJCVYjTouC3w0WsGWe4QkDdxnNR9TTA+QLhEeWqytL1
	mRr7q0poo26Kl8sBxrkjpHEQ3I+7EEQnc58jdNN3GGrnZuslKGYew3gGDE4c8/ZGfoEnVh2PAo4rr
	yU0yeyEqaW9yNhvzwSeMdZvaAbp4OZ5OCob5113nXFZYBgXT1z68ypIGOp3QvBoDhnwMw7r18lsAu
	U5cD1vloxChopZGwIxfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNU-00000006g5R-1Ll8;
	Mon, 12 Feb 2024 18:50:05 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNP-00000006g1y-3Qr4
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Feb 2024 18:50:02 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-59d5a47ae5dso81387eaf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Feb 2024 10:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763798; x=1708368598; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZiRsZjgJE08mlqExCXE02bhHnOiYxOBr2Vmf+IkslQ0=;
        b=dJW/A6vDFdV+IAHcK1Yfzv9CS31dNLAYa/40xp/+TSwwfFBdg2gd0Qr2CWWeL64mjf
         rJt1TJzqQrAS6bsCwLpNzsDlUuEjtyzutSW6OMbh07nT08g42d2/zE+0rmy9motB8TLE
         7u4VpHqNSLfkrsOAkep3pBX49sN/mHGzKCvT5BZGskA45uBK3GiiLuhxTZhAXl66qJmx
         p5tvnwpfMmSG3QDJoqVvQy30IMsK29+4icyhroun806m02caFOEdtAlvGHtcMJfS2qFS
         X5oukDgfqG/qohEAw1c0tdaCv1OwZP/0wf27YVVUR9vf29SLZaGEJ4Ds4Nt4iZwC3nLo
         HEvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763798; x=1708368598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZiRsZjgJE08mlqExCXE02bhHnOiYxOBr2Vmf+IkslQ0=;
        b=XSNtSr17BuINv+917CBINKBzcdM38Cgj4kGdPNEGNV7Lix8GrG+V8NOYTYNY23IRaJ
         +JtyJjxpoLyVk4Vk3OCHb7Z9sbptjP8Cq50O3m/BEwSxOgp2pznT3LQasrMb2MZRzyR0
         WzvxJNk/DPZVyhrYmli5NZaqjHjoIsnNpSs88gAlc2IKS1s2zLOPy8XR6Z20H010xHKK
         fd4QIrkDiU5fri+PEdXYwwub8lyp7ZRarvVzxSVVCm6UONzUvsIsBYGUwXxLSyZVh51i
         5LTfnE4QNZaR8Be/c48VjZ+lMoCUdhWZrbpL01JwZPuvx2o+54n/upX7QwwTStxH2vPl
         sOpg==
X-Gm-Message-State: AOJu0YzSo8YpaVZEZAWmNB1xwTo15TCgWJaAcZ2YvFE2ZGBcZBeDH8e0
	t+a/UEB78jPp8mjOkt0w7qYZANEESMFd65ytM6tJ7w3DMl+aliCyIK7oHL+E
X-Google-Smtp-Source: AGHT+IGSw06NfJXdmlcQHzjnL3FF9bOgGHPCk5XmRWBD6/JKfOeCWsmU3Ve0BIUPqa8izDBTGRQqZw==
X-Received: by 2002:a4a:354a:0:b0:59d:2163:2d6c with SMTP id w10-20020a4a354a000000b0059d21632d6cmr5944522oog.0.1707763798563;
        Mon, 12 Feb 2024 10:49:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWoo6AEFNlrC3bnOrjvKOb31aIvRIF0598Zzcq9BsCtpGsYrA4fxl/iW5UZpsNBm53a9TCD1Jnuu//P/4KrigxQpIA9bkXdgxmTZvvZA8g+ovwOz0PeWkeK+ZM4Vp8RyiFtHgSGSzeu8Q91kOPDWAgyBsbLr9CIGEJ0z6q3Ek5ISWrXJrXSZ8vf2U81WoR56oZoNQYkP6EHI6TIA7hC7KJtmN0LwxtlUvyJd8YBQrswea3FlmdawIEqJOL7/iGxZQ6Q6n6LmgjnTJ44nZ+PIoUjylOYgq2CveyDVbRStx2ZvNW1rKsEqNQ6llOQ+pI5ki687bsZOP0Q31WDgbstnP3+Pq7bC+FzwoiqanoZhICF2/mNPxCSqLp8C+Sy9oprwPynv3ocB7zKO6r0P0TEqvA/2Yjy9gPMzI6+fg15PZto26pEWOwQd6CJbvDmmxU0q5PnU50mKw/dgSikuhu3WRQXwr1pAWI3E8UAzHGKsQPii9+BF3x+thkL804XYXwYn3VNFyxy3w0SYBhDN/BcnsCVhSuO/CYFSRWCEQbLyKudfjpg0xTrWmZf86WT
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:49:58 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/7] dt-bindings: display: st7703: Add Powkiddy RGB10MAX3 panel
Date: Mon, 12 Feb 2024 12:49:44 -0600
Message-Id: <20240212184950.52210-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_105000_500697_C08C0A37 
X-CRM114-Status: UNSURE (   8.61  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The RGB10MAX3 panel is a panel specific to the Powkiddy RGB10MAX3
handheld device that measures 5 inches diagonally with a resolution
of 720x1280.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
index 97cccd8a8479..8dfe8951bf5b 100644
--- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
@@ -22,6 +22,8 @@ properties:
     enum:
       # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
       - anbernic,rg353v-panel-v2
+      # Powkiddy RGB10MAX3 5.0" 720x1280 TFT LCD panel
+      - powkiddy,rgb10max3-panel
       # Powkiddy RGB30 3.0" 720x720 TFT LCD panel
       - powkiddy,rgb30-panel
       # Rocktech JH057N00900 5.5" 720x1440 TFT LCD panel
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
