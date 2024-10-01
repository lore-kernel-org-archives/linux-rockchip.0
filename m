Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 965C0CEACDD
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 15:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hINFTtgpMf02Dq+KvvSWNs5GDwMc3mdkKTlG7mNkP0k=; b=rdL/GVCA3wOTMZ
	pktwy9/AXmht4MesgaKV1yE3+WtCpoDZh7Z4EUVq77WC4HrRc+OPBn/FaK86UoaImBa+KRVmF9Vkd
	Vm6knlm4C4iIXDYyGQtH7OiDyAIP9UaUTVOv58aqDvrVvOhtGHGRRREeIe4R5OT1IhHHefhsR0w/y
	aK/kJ8N91VK1YvQU76pXlW6csMpaEt0qgvDPwfmy2sqHHOjhe4WIYxuMeTwXtf/kxkHf5r+Z+WFnb
	HxRITJnBR7wXqLa8fbBcpq1ZnftZlsHD5Ib1ZQ77tUkWGdKv+ny/QLRFFPw+wnDpMLj/t/TgtnW6D
	mtTehepB4YKiC6DNjIWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svf7z-00000003OA3-43sZ;
	Tue, 01 Oct 2024 15:49:31 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svf1P-00000003McY-2bEP
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Oct 2024 15:42:44 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3e039666812so183304b6e.1
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Oct 2024 08:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727797362; x=1728402162; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AFNXxxBByyYyLOy5n02vtJL5IO4kBfmmtRzF6xHDllw=;
        b=iI7uRI46uNcvi6mD3U+ZJxw8eEKCYrfgbJoxc/in4UyMCr1Cste9xvN4LcCNfaSmES
         0aVzbhHotH8c6BPVQnJI/0t1L3dmp/CnPMJKgDrcfQaTcBPToUN+yM5pqwED6FH1iciP
         hUIywWCB4FR4/f47P0SvOcl/9t9InYi6DujFG2wvIJRxsevBU4gB+LfzW94ZqWG+DOkV
         kx+L1uEYOPXAcVsrdCE6t6kvV2+6I0mHsCn6s0iBcPtBtIhNjsmlXIlCiavqhYw4DqdH
         /mzAYIgovbZRL/vTLr9OGt5bSKKtuZxrNQLYEv5WR8BZhaP1jA/HFXW5uF0g3y2Frg1/
         U8OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727797362; x=1728402162;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AFNXxxBByyYyLOy5n02vtJL5IO4kBfmmtRzF6xHDllw=;
        b=YHX3w8PvbODgdkijn3oP8VQEJyXNuxxvMF5lS8tIjEHrI95esrNqigvqa1pru+LPhN
         i8aj2DSA4w9cgqgfzgpUW6KNgphtrhBWC7uTypaAlwzfBYqiwm/b42NoA/yZoT4QZSDA
         9sMWUyWhnAVAxugyh+p8zyByDNRJLmHJAT82aImTw+eJRRxj9zFANhB3VAk2V0QEbh7n
         TxT8oyt7mYzGA5CFSzdqe2/KBPsrdb7+DOKZB6f/6uBYRmpxGwj2fxoCojsHfnb+G/cc
         4jrdJYNfaMTMigQTmAG4Lst4mBP97aoojVHg7ius7Xh05JEl8Vi+vUv/2BUGwbevWdz3
         GnvQ==
X-Gm-Message-State: AOJu0Yws0am9AspNr0ZLy0REbpr9147Uvn4+R9GECQbrcrcCKlmYuO+Z
	WnlEy+qqrbeQK6OdFfyRf6v84dXLsqHGwi+kma1dcGCpGJpXshkj/Lm0bfEa
X-Google-Smtp-Source: AGHT+IFRwImRvjtP0DACdCJLSKEbYDj6m65og/w9J5YPZNSwK4fuHsw49tMih+pI9Xl5WUPbTkBvEw==
X-Received: by 2002:a05:6808:179e:b0:3e2:9906:6198 with SMTP id 5614622812f47-3e3b4165cafmr131970b6e.38.1727797362405;
        Tue, 01 Oct 2024 08:42:42 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e3935c6293sm3120485b6e.53.2024.10.01.08.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 08:42:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Powkiddy RGB20SX
Date: Tue,  1 Oct 2024 10:40:15 -0500
Message-ID: <20241001154016.87386-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241001154016.87386-1-macroalpha82@gmail.com>
References: <20241001154016.87386-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_084243_687353_09B28FAC 
X-CRM114-Status: UNSURE (   9.14  )
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

Add devicetree binding for Powkiddy RGB20SX.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 687823e58c22..4fd6ce5697d0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -760,6 +760,7 @@ properties:
         items:
           - enum:
               - powkiddy,rgb10max3
+              - powkiddy,rgb20sx
               - powkiddy,rgb30
               - powkiddy,rk2023
               - powkiddy,x55
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
