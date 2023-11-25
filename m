Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5632C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+HkhQa2JQ7OtVcH3+rb2XrFs3+eNo9AsBIJT8S/ZR8g=; b=mPUaG3AExocI8Z
	kgLdXdJ+cIq4VDqVDYQ6Ik6avS5mlpGas8MrUqZ7dmkbx42zcceUVCNkw8LAq+dZM647w7jjYV+FO
	/H6462zhWOApQcXJEWoLudgRsLUaQIfUAR2aRmtNbTNNH1UqthKTNl2E9dWtofYlbqGkUd1jGhTbi
	e8Nm88TpUJTga2yFyExNoagkWM/MRN/ZZ6KMSTyTfwkgsphv9wh8ClHoETYX+KlC1JJFTH70Q2GUx
	t3LwinFHl2jxZimYX/cCQUCqg/JH5sr/XShMKdh12UeS9UDvVCDyQ+EYcSJaBLJ5shQfoJnJ1ezg6
	A2R6L+XsW16+picn0l2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyB-009fQm-0V;
	Sat, 25 Nov 2023 19:05:35 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xy8-009fPU-1R
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:05:33 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6cc02e77a9cso692605b3a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 11:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939130; x=1701543930; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jj/HfiSQ6d5t/5HhjyjbiYVeNAO8Z0nCxri2/wDLCdk=;
        b=2p3XwC41w7OvZGFJFTP5G/b1G+0VE+PRf/BqHVU6NDE97HxXZAH0SsOEnSZHfiY9yW
         nCh0rhEPsxxVrXphtcb6xFp0zfxLOpqaidigFwBi4OoLuOrUFc27DmSE50S0ZdLL1/TL
         jjUhFy0aSLMzzohGViM8GymzhYsHVZSBkd6M1WSTzn7RVo6abvlzC9hfyNHDc6Wc66va
         KYOKprXMNq3MJWMroseZZUSpx7MnCORG9xmiJZQsJt+Y2Swn5ks9EhWnTmBnGSc4V3o1
         GZB3qlL+t1hmk5c3ac5gBnYtVz1qRkOnKnaVzkjQuFkd8XZhDeAsUIZbSDCE9nL0dNeV
         XDRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939130; x=1701543930;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jj/HfiSQ6d5t/5HhjyjbiYVeNAO8Z0nCxri2/wDLCdk=;
        b=E+IUf2txa4EkmP0Q8WWmcguxbvkJs4o3wrMdu9KASSSmciwmMbQXyeKg0paoYYGORo
         ZskDQCdIslvL85qJ/QHgEqHCpRehEhlacZpGVz+vw/7wsCPeC0SlDveaqFFnlxAmsi+B
         yAlcf/og8Zuc8su7XY8kUQ5HuHBYtVocBhDNFqXdwe3U/rl1LIyZpferAaRII5wOpLY1
         uSlDPS/Fp18vf/JGqNwnG1jJAprxkRAMZKnuSg+Rj6CNLibQOShnqzjy3NfopMyJIyCn
         Z3kukIhI9V5QBKiIiYHzya1OxoWCtfW0HqdXD0slQZWhSB1PIn1aDvjy5ddGhTWWHDuY
         z/JA==
X-Gm-Message-State: AOJu0YyEy/ly4Es/vxgtmvTA7Mlg8jxPb/4w7JSf05+KG6LyJ1ALmpbI
	4ychgAjSm2r3tXov43qpENDdl9KuDLLZBfNo5KR9pA==
X-Google-Smtp-Source: AGHT+IEw91bDj1TnnkxWJC1pJvmcbECDm3e9xvHLhKcRyTP7ujds3WHlaiCTdfVnc2m0w/V5TvD+uQ==
X-Received: by 2002:a05:6a20:8f1d:b0:18c:3b26:13c with SMTP id b29-20020a056a208f1d00b0018c3b26013cmr4498156pzk.12.1700939130020;
        Sat, 25 Nov 2023 11:05:30 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:29 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 00/10] arm64: dts: rockchip: Pack Edgeble NCM6A, 6B DT
Date: Sun, 26 Nov 2023 00:35:12 +0530
Message-Id: <20231125190522.87607-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_110532_708390_7F16DC69 
X-CRM114-Status: GOOD (  10.89  )
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

DT patch set for Edgeble NCM6A, NCM6B SoM, and IO board.

Changes for v2:
- suffix -regulator in node names
- fix node lables
- update commit message

Any inputs?
Jagan.

Jagan Teki (10):
  arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
  arm64: dts: rockchip: Add edgeble-neu6a-common DT
  arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
  arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
  arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
  arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
  arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
  arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 B-Key, E-Key
  arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
  arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-edgeble-neu6a-common.dtsi | 466 ++++++++++++++++++
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  |  14 +-
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 236 +++++++++
 .../rockchip/rk3588-edgeble-neu6a-wifi.dtso   |  56 +++
 .../dts/rockchip/rk3588-edgeble-neu6a.dtsi    |  25 +-
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  |  80 +--
 .../dts/rockchip/rk3588-edgeble-neu6b.dtsi    | 383 +-------------
 8 files changed, 765 insertions(+), 496 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
