Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EEC2C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QRe5pb2TACO7R6X6XNNOPTSlrw3BXZTcXmcR8dW4qXs=; b=GCRV1b7M7z6nhn
	QaGbtgVefK6ECksIrXGrkJ8/DhejA1TmyAaqJMZvUZjga0zab05hkPpm4VtoOg07AUAFTl83fuO7U
	igHyxZvOo/sT4b4vcyh9a/vm7cnsaiqi2EHmvFfXDKe8gaJXvjgkSSQ7FYm/dMQTOZkwl4SbT0mXW
	7IMkswrUDws9qDeyas3BAaoWNbT5oosYw7rfabfdjLJ+JZUvQL3unaNxhoU6pZnP0oeVMLt+qIqqX
	hIMITRzFcdhi6DWI3GBoaEhjn47/glAE+9agRqJG2u5wr40YphGlzIz7m6WfGM7PDvUrUg3PGaRvh
	9W9tTphJX7eIhOW5unBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfRS-00000003SBu-1vVn;
	Sat, 13 Apr 2024 15:37:22 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfRO-00000003SAv-3Qk6;
	Sat, 13 Apr 2024 15:37:20 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2a484f772e2so1050453a91.3;
        Sat, 13 Apr 2024 08:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713022636; x=1713627436; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WDMegry8y71WXCoBHyMXqPj5dhdkTwYasbiwY9nWgTQ=;
        b=UJRmEOKyPKR/HHe6upqLn9G2Hoj5OCQyO70XcriSnHxYmkJDswDx8e+ZKevjwQJhq0
         YXvQGqp9/WCVkjOzoxEoaVfkeAqfgAqj+GyN+ZFu6cTW5Pa7OZ4kQAfCXbxe1S3IluZ7
         qwM/EyVVY5wlwdUI0XCVvZseoN2hFpUKmyakJ0Xt9IeexMwXxXW/FprBftA51lN7w2Oz
         YmZsUpaX4nGRtf2PSH6UsQEiXWTDn3zfuxo6nQdcnXc+w/tMZp4Eio/t05lJxZdffWeS
         UPQ+O3HO6+z6v/skli3AM/3GkSoYLO/b5Hlp+jsEV/T+xisLK56u7Ognfe3FBf+qXgga
         OtKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713022636; x=1713627436;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WDMegry8y71WXCoBHyMXqPj5dhdkTwYasbiwY9nWgTQ=;
        b=Ti3SBHmSGJjI4gbgID1okpyh9RUoPzuL1Yxhd7DAKuXhqbh3x/b0rqaIWyULEspQ2V
         tF3tSp9KR2L0H69Vv/iU+zoS4XmMSqYaFU/kvF3XV76+LMABfjJ8/ilog3WgcsXfKghl
         X5QqOm4Gi+sl/Xqab9Hc3+5Pdgbyyz7L3C7TdYH8UGWfIm58IYwB51fkqmN9EABsm8zV
         w8Da3x0nzTadD4qX090nvOhwkShmwKkQOnwgUBmeE8J5/SZFmq8luBIcyj+8p0gC/lFH
         V6SExoKETZId635NcI2ZpZZn6Za31uB8qG7zVCA5R1N1ADNQdHcfXciTIDalLxmXj8vl
         im1Q==
X-Forwarded-Encrypted: i=1; AJvYcCV4pjEZcQcyK9IeGpjyaSEGNtzbtSwSvX+ygt2xctkICWAjdxyhCoif6l+QrYZ6k201mCeDXQYLjDS9epGQEOzZVRf/sqAreR61UCXX19Bus0QZt3ofZ7B4zzljjSpB7B8o0v34HJNvF7IxfvsvypKJ7cf/thsgXHM=
X-Gm-Message-State: AOJu0Yzl6tdLgtbsmloyn1YKzY0sUUDrB8jzzM8nSeaT160TreTa6qLa
	rzVNW5l6la0ANkpEufLKT+VIPXj0C3KA53oEV0LDj0PxomVeOCMT
X-Google-Smtp-Source: AGHT+IHgIme6c43tta8vDZSKEjWp+eR2iHRi6sxYPQSmCZyDxsIfCBzU3n7Md/IZNGSzhBLEYjlK6Q==
X-Received: by 2002:a17:90a:f605:b0:2a2:5860:dea8 with SMTP id bw5-20020a17090af60500b002a25860dea8mr4979129pjb.7.1713022636201;
        Sat, 13 Apr 2024 08:37:16 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id d13-20020a17090ac24d00b002a706910b05sm2609606pjx.9.2024.04.13.08.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 08:37:15 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com
Subject: [PATCH v2 0/3] Add ArmSom Sige7 board
Date: Sat, 13 Apr 2024 23:36:30 +0800
Message-Id: <20240413153633.801759-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_083718_882571_88998B97 
X-CRM114-Status: UNSURE (   8.91  )
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

Changes in v2:
 - Add ArmSoM to vendor-prefixes
 - Commit dt-bindings change first
 - Fix commit message for dt-bindings
 - Fix wrong devicetree node name "led_rgb_g" and "led_rgb_r"
 - Link to v1: https://lore.kernel.org/all/20240413032328.784142-1-liujianfeng1994@gmail.com/

Jianfeng Liu (3):
  dt-bindings: vendor-prefixes: add ArmSoM
  dt-bindings: arm: rockchip: Add ArmSoM Sige7
  arm64: dts: rockchip: Add ArmSom Sige7 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-armsom-sige7.dts | 725 ++++++++++++++++++
 4 files changed, 733 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
