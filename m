Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9DD1CD11DD
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 13:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtEz4Ac9UvlUyFgM+C95Vb2nOc5Zk8Ya78WEYUeKtPU=; b=jpID5dTVBOua82
	msY99PuctZjFqAA9B6SBtmk8n9ULykwBwhiGo9HP4AsnqK/ENDm4MA9TVNANEjT5wE+ozdASdkt+H
	7KgPy8EoA5RTS12y0M7+mGgIMfvcrZbJDDCATq5d8JrkJ1wfzfushCZJqOQNRcI44eS8wd7JkRxUI
	Vf8aAuGsaHZlI2Mno4EhzGpuBghm8Iv/pNKUur7TJn2tQujViAViuFlGtCbAHJuZ0bGvbfyvvfjVC
	hLdA9hGTDRrCLQDOQO2cl8jIGj16GF4N2TEzu7PL6FILkQY6pkKDvjV97mu6zLpl7pGwvYJuqsh/R
	ceaPBOFAizcC2GUy0ZhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokiV-000000003oh-2N3h;
	Mon, 25 Mar 2024 13:50:23 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokiM-000000003gL-1NTg
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 13:50:16 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6e6d089cad0so748757a34.3
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 06:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711374610; x=1711979410; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JS2/Y8Y8K3ElC8Fmmv3IDuyjPkRstgcDAr5RHpoZx1I=;
        b=HjHdne98b/dtsxN5EuYT9uyYQVNAE6rh4vsqg1KZxtvVmNPrnyhYDl/q1+HEWZzTny
         /cDHy0ZpJbWT9j3qOJDUQrCE3t8I0IXTxq5WMLsR6ovkCpHL3WLHF3cDTU+N2x4tOi9I
         Y3Gw1l8CYq0zgl0/X4xSmTUE1DUFEOO4o72PLrRZ6kf4sBLtjJIz0MdBZ60d5AOTrFl4
         VXf5/8Xht7a+oEAjjuo2DK4Y3N5sHauDCrvYjFJeiIhVnP1ywEoe1q4Jezpa31tM1HOp
         lS8Fs+A3EBfSsqFvLMNvV9q3Y+xyQhU2vSPseI6BscL+awfZ82qgWZG4Qi/coB/rX7O9
         HXFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711374610; x=1711979410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JS2/Y8Y8K3ElC8Fmmv3IDuyjPkRstgcDAr5RHpoZx1I=;
        b=ssm9bnELqoPczS4gQ2rSF4HlGuTdzaacSUb6cOVvjmp/1uZEG1uWpjdCi7pjmiSq5q
         kiWVmyGkHqmlRyuIAZs1uqAhljzuQ5qK7GO3FTp7EPa67G7dNu+sce5bRwKiCXsY3PsC
         R8Vg8Z4xwc5CUTcCfVLrbb4aEF7td3Zvt0bjJa/K9fUjsT1zNL5mK0Jh1sKcaI2ow7Ra
         mCD5rYa2F1+oGoTY72u+kphyskr4D24HRFzRcgqLknExPQAgLLcWNBl6zjEwvVhjp7P6
         tPL//IBE58bFUZoaEbOV3Omi6Cl3WvVLiCnqAYwUrslt20LzjXycaGpbyCnbyWDHbcLq
         MEww==
X-Gm-Message-State: AOJu0YyucTGazv3SChPfvZp9Ab7+YMfZuGC0ceyAvjgGxr1jdnAMB1fD
	RdypfiT21fsY/kkgD8eaT2OAr6vyD2bDX1cD0N6NqPPUc0Ag8ZkG4j95CLKi
X-Google-Smtp-Source: AGHT+IGWyhKpnx2GO0ioSHzyF5ByLr6tXZNNC6I7VkpE0YbA+gzx4HxXehD+qvNjWNPVR4VKwjL+zw==
X-Received: by 2002:a05:6830:91d:b0:6e6:9679:b3b2 with SMTP id v29-20020a056830091d00b006e69679b3b2mr10557687ott.21.1711374610064;
        Mon, 25 Mar 2024 06:50:10 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z8-20020a05683010c800b006e673e2d2a3sm1118250oto.77.2024.03.25.06.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 06:50:09 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
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
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: Add GameForce Chi
Date: Mon, 25 Mar 2024 08:49:58 -0500
Message-Id: <20240325134959.11807-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_065014_436006_BDA46CE3 
X-CRM114-Status: UNSURE (   9.20  )
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

The GameForce Chi is a handheld gaming device from GameForce powered
by the Rockchip RK3326 SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index fcf7316ecd74..a5498974ceb4 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -236,6 +236,11 @@ properties:
           - const: friendlyarm,nanopc-t6
           - const: rockchip,rk3588
 
+      - description: GameForce Chi
+        items:
+          - const: gameforce,chi
+          - const: rockchip,rk3326
+
       - description: GeekBuying GeekBox
         items:
           - const: geekbuying,geekbox
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
