Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6AE3CFC501
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 01:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JGM/9IHZZAJzAUHRorcmvX5znBtH25ggEvzgDvVOa3M=; b=ufhBP7zAUyDGBS
	Es4Pak/uvhraui4vhWvxcnTfpXwyCl8A2B3rBGR1lAc3NzFAFQOXuuOXvliKTCx0G1SAY+30EjFDy
	q0pEptF3oQNRmo3z+J3E3+wBw8kqAMIYxAfATFKiwOGndezoPPR7SiwkFBVKbIq9o4cSm8G/g0WLU
	F4Q4I03/B1+HZQ2a8Z/LfOUaD2Wrb/Dx1SMopm0ZINOpWIiIPkyZdj34st+5LIvJZGvBVVzR9NChS
	C4WKV25xt23j/GBCXPRoVhQsZfUP0AKd2mEDmqyVNxTCv4B12xwLtziExTTt7sPC9lWPzhbVGXK7X
	363MAIyGHdGW18chj3oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0WTG-00000006nZv-2yc5;
	Tue, 15 Oct 2024 01:35:34 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0WRl-00000006mws-0FPl;
	Tue, 15 Oct 2024 01:34:02 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2e2d83f15f3so866174a91.0;
        Mon, 14 Oct 2024 18:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728956040; x=1729560840; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mUSB48jKblX+14i4so+c9Ta99trL5DpEUPdHUcI05hk=;
        b=Yu3wuT8zgQGEOskKF7gYcUQUHMMww6Go58lRaTNNDqnoJZswHkwXndt1yvBDuBBiT1
         bFGQq0kBGd97QxDUWkai2ZCM+Yc4TS1nYB9R+9ARfFCRuZSgoOJZUJNX7YDzLQA4sZ8M
         YZmaoyy0iF2Jy/VpuIrwUBXc8QN6yCzZD463eR/Rr69cRGZKV/D1HwdgBD7hnoYMLE03
         fu6qtMrfqWEwZuWe973ixO2abVYlDARK6CTAH44T+z7Vkaq9WXSLeqRcTMqPkg5IGlgo
         EBT+xlWFHdGdXUbccI9brAF9XlUV78l1IdYLyv4zgStYOgKRs33nvoTcx2mFK7uMw/m5
         Aeig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728956040; x=1729560840;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mUSB48jKblX+14i4so+c9Ta99trL5DpEUPdHUcI05hk=;
        b=K+Aq9W7HfsQQSZ+jxPVRnplItDvbOPOM7EhJvYzJcxy3AbQJOlFSSnDnyHr4HUk1Vi
         ZN2V+RK7tcx9k2QKCYSBsA3EctWTs8m7dzbzZzj2Tfypj2s4vmbBnGwmdPYIvOyjDDth
         SndSqrkdLI7x9SnlAl6bG+akzGzS4f2zZHzWPCqpRWxgnYvk+nrdAamD3/1wazVShuv4
         aoe8PL9404M7dSqgybBpZEmk7sVEsILk9sEQeiZzmdVeZ6DumhLEtrLD2uQjISHkmUdJ
         yK/fuxGcPTFzlx3Y7im9ET9X66U+lAWb3VZGI3FZ2iLVm9cCvya5tl/FkHrJqyOPQX/8
         lQuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBukRPbeB7MnxozdMfKghCjnMo9D5eyI0DoBFXxhrGbG06k3IBXuTA6Tbw8WkV2LynDhjPC3pGl9kmT/MthHMQ@lists.infradead.org, AJvYcCX51GGru6OWn4JgcQUdXbVQ1SZFtJ9WXDFXygWX6VMbkZVFy2MGAL1U971fRNnHMiXAt/zBOWCeCOR0B04W2Cg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxk17ZWXKSR1wK3um1Kn/xI0ftT43LkhkmxjalncnL51hxY98PG
	zj/gLdirNazJZZkSPFwSewnEl65v+Ubog7Yg1B+k7qmGue5rHGIHXu0jTA==
X-Google-Smtp-Source: AGHT+IGHSXYIt7zYTJi5YPOTp8mHB8F80Y8Z2Q2SeynbWepdjfTvIM3szHaTplQkTC5IisNHG/HBJg==
X-Received: by 2002:a05:6a20:728c:b0:1cf:37d4:c50b with SMTP id adf61e73a8af0-1d8bcf14532mr10497697637.4.1728956039884;
        Mon, 14 Oct 2024 18:33:59 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e774a4243sm189713b3a.131.2024.10.14.18.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 18:33:59 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH 1/2] dt-bindings: phy: rockchip: add rk3576 compatible
Date: Tue, 15 Oct 2024 09:33:50 +0800
Message-Id: <20241015013351.4884-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_183401_121862_91E0E952 
X-CRM114-Status: UNSURE (   8.27  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Adds the compatible line to support RK3576 SoC.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index d3cd7997879f..1b3de6678c08 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3568-naneng-combphy
+      - rockchip,rk3576-naneng-combphy
       - rockchip,rk3588-naneng-combphy
 
   reg:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
