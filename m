Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63DF6C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 03:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vPwbPT3xcATj9Xhjtxlnn3PUVZw1KG3W7Jfq1w2dugo=; b=isex1oXfBDtfJ0
	MHGS0wTSKui82cdx/o5dy2mUsy9P4MI8thfSQxjY05GUZStA3iztHvLtMZQxwuYSNqM8vZcE9JJ5T
	8WRXHxK28+c5GK1Tex55lTHktDM7yI1ReK+kZO4FEn49JIUlApYvh7Q7Sm9RLKQ6LRR1wpm3RUWSk
	+4J9vXhJq0EljHXi9EmyaXQ8Y6tQYuVWR2+LV5rsekUakcnWc6SyUC8bB6oAHvvYwSQWsiXWQ1P67
	0uKRPTEUpTFQ89hGqCgeiho27Ftn4SBr6WaDDFydSOSuWscBiMa1zllPtXl3Ec4kijqMAO2axbWSK
	riWtEG+Iohb7bocgiQbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwZnJ-0000000AhSx-30RY;
	Tue, 16 Apr 2024 03:47:41 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwZnF-0000000AhSP-0BM7;
	Tue, 16 Apr 2024 03:47:38 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-2a475bdd4a6so2225759a91.2;
        Mon, 15 Apr 2024 20:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713239256; x=1713844056; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vE9TehhVe5dLLae17iDDbi7HMgNctUCXygXG9Azr2QY=;
        b=hwI6pxHhlNTqvwPXFxoZL/tTdcn9R/eUJxMXKcb/4lfmPSttTrneb8ZHwHiwRvX+D3
         RcGGV9aicY4a/jYS09ydSIMN5vG9LC+dco5o7uTqIxfwXd3WTuLzY/cQGm1nhD77rGyT
         +EUUmAkO/4QWpWfmMk0BDSazoWionmiRjDYhCpCuVsYSIPTaOhiJSTsrX/7U52T/a0i+
         8z6gcrQwF9yauqVNAuexkimCCXdzWX11Mtw9i4Fm/rImuG1ewagtuNVuZn4+86/wAs2B
         k58wlfLrIazJN5fDLmrXejpZnLHBrH2x38cKPlsRFxWEcWtuhJooiR7IZ+VT661QTXQP
         PxuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713239256; x=1713844056;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vE9TehhVe5dLLae17iDDbi7HMgNctUCXygXG9Azr2QY=;
        b=MYdJxulsYAbdOydt74dTlCBloJc2seBveqiGE1xVlRBoqieEc43uWVoA+9ValLhozK
         fpUNTMX39ir7PsfHZ08tLLTZreptN/NBrABUUD+vvXrlyDKBooGuEm5MaI0VbGGkAWOu
         tlpQ9O+6aLPNal4TJEQFrIDM81vvHCq7nG7KGZYbhUJ8L+PP4Y68kh+Vj5Qaylhoj9eJ
         fxnsaEEaKuEFy7FqZ6SvI6cuiEV/DHKC1aKcWbV+zzjFisPi/snqC97lLMc0xZTWmtrN
         Ep8Mr00SHmkREaL9zcBBOJ9CmCmAd7/tmyhen4fd3fLAzuCinDtHV7Svg93NveKHX76b
         SxOw==
X-Forwarded-Encrypted: i=1; AJvYcCUtHWzZC62kHfOLwM9JRLi1bp9Ekg+xF4liPywkOI7RmMir1Kzn3tUIu8ofG0j3vmu7fxnoGEgT1UQh2x9GBy+0gBqKWi0rETsvyTYI0UkeVTM4OuOcRR5wNrdk249/doBI0i2sO4YxLzdYOUsa5hh3h5GZiEdEN48=
X-Gm-Message-State: AOJu0YyA8aBoMXsiuX9XyjREuvSzhXiJw9S7bMMza1tYUdSAzf1+UkWC
	U5/03EIAHRJpuJoTQav98wm5KtllC4Fv8QXMQORbEqA9NtHAvUulO0L1Rmjr4bM=
X-Google-Smtp-Source: AGHT+IHdEVPnQTq33bviY1bVGMyNJ/KKptNJC1+Zy+9wn58hubkabul9+m1Or3B9SXi3oG6bpmAvrQ==
X-Received: by 2002:a17:90b:164c:b0:2a2:c16:d673 with SMTP id il12-20020a17090b164c00b002a20c16d673mr12161559pjb.36.1713239255888;
        Mon, 15 Apr 2024 20:47:35 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id u6-20020a17090adb4600b002a51dcecc49sm7748815pjx.38.2024.04.15.20.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 20:47:35 -0700 (PDT)
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
Subject: [PATCH v4 0/3] Add ArmSom Sige7 board
Date: Tue, 16 Apr 2024 11:46:23 +0800
Message-Id: <20240416034626.317823-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_204737_126047_9A085A3E 
X-CRM114-Status: UNSURE (   9.85  )
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

Changes in v4:
 - Fix dtb check error/warning with command
"make CHECK_DTBS=y rockchip/rk3588-armsom-sige7.dtb":
  - Change led lable name to fix duplicate label with pinctrl node.
  - Remove useless property "pinctrl-names" from "&pcie3x4".
  - Change red led trigger to "none".
 - Link to v3: https://lore.kernel.org/all/20240415170737.49350-1-liujianfeng1994@gmail.com/

Changes in v3:
 - Update vendor description in vendor-prefixes
 - Link to v2: https://lore.kernel.org/all/20240413153633.801759-1-liujianfeng1994@gmail.com/

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
 .../boot/dts/rockchip/rk3588-armsom-sige7.dts | 724 ++++++++++++++++++
 4 files changed, 732 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
