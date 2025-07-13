Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C92C83F17
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jul 2025 16:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9GYvogX+JPEe/bwCTvznWbqhdXutMCeHA8LEAbCVIco=; b=czg/87c/ulIgjS
	RM/Iqa+Hjt3fASWuKzCOjfK/+Y5zBVPEp7DM+ocDz5FLLmOPKvfaYEiHBxfAgxoqrIctBm6UiA0q+
	HHaS+lxq+i+F3Sie+7ZUEw0xXH0pfMZhkvm7wPD4toDZgqUrgZ4nlJ0ovV+8F595o5EdhQzZlEWVt
	+5lEPgW1gGiplansTIh3Z/aIlQIyzLQ3MPpRlnD7oO2XWIlHMfu9LOc2jPjuzd8dWCC6exPD703Mp
	nc/n3OSYGI5qNJ5QaHTFA1Xg+K3j6E+zvO1yFHfCTgIzvKdY+zZSzG1rr6qNxH+QzOSuAyzupphqi
	LQr4AAn9gwiiUBvgtAkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uazg9-00000000OIX-2VZk;
	Sun, 13 Jul 2025 16:35:53 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uazdg-00000000O5e-3Tpb;
	Sun, 13 Jul 2025 16:33:22 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-235f9ea8d08so31449765ad.1;
        Sun, 13 Jul 2025 09:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752424400; x=1753029200; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fuRb4Qiqsz/z/G1pp2Nj7uCsktPKwK6K200MetOeQyA=;
        b=lXLdmIuP7osz31H0vLcO/223Enlejpl/I2x6onMYn8w3aOG0q2pfDQy/FgAAtp4iOd
         ElDJCNCB3OWZTtSjFeRjrewQ9LIGno44EoHgQIp0hQCXKP/DyvR/1m9W/jmEXnwfapq/
         bDVwdFlpjU9VEJYU7pwtkEMglcRy+ijQN272MjVpMP3MEeyJN8o5T+tHwI5/O0XtW0VN
         jJkiSWBJ/NmISnkfpVp1sfD03CWxzi4JnpM2g46AU7TvGWnwQIuMqrunGKobPtsc9xC7
         16ixqK/yKfBT2vUoU4YwIq5Ct4X6Fj26PGKyUnyvDluhsQEebJkxPWaxwK/YxGPwcK1E
         ATDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752424400; x=1753029200;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fuRb4Qiqsz/z/G1pp2Nj7uCsktPKwK6K200MetOeQyA=;
        b=F6IE5/S9d99dOYfHq+Z55SimFyZImNuepTVCQQTAxmJl3WoQH3j0jpNJm7hJ5Logb5
         8eM+lmjiYjKyFOy/N6LGLC6xVaSis3y6GWlpfvW7dsr55z64CWdUZEX/iUOdEh8H0bJM
         yGg0eXJnW/JqBtn2xmTvD544bImlpclXP4ZnC3ar7cGkafmoXni69cKCHLyARaSfvZyD
         9LFklbyoCr+Nf4ssLtql9nroHeIxeVhwvQmKxENHfAVw9UXZON49u9m8PvsJdP7uZQ4w
         JqvfnVejVYahHWuUXliMi140DUo5SdFmqKQ83TTj4mFk8fwEinqpckrcLljb+caUbolP
         f2wg==
X-Forwarded-Encrypted: i=1; AJvYcCXXJoatfJLutopSQHZmRfDtioizKePSJeLYaVviOx9hxUIKHAehBPWR/AwuzWXssFv0oZKD0IqoiXs65elRmQk=@lists.infradead.org, AJvYcCXYAOyP9VFAgblC9tdjdJWAsha2Lxc+wAJcxryK4SLUC+/htuX+HzbfZ9dvZINCHrUnCcNda0/IZSwzxizVt0kC@lists.infradead.org
X-Gm-Message-State: AOJu0Ywi00/oQVgW8NNdE3KcoqeTT7l2BWBs0zhVaRS25JZE/M17sI2T
	Odj9jK/z6Dn2X0ovMDTinYlifnWHyj+jmyIYEJBEvtZgkdTAWQ8DDdIO
X-Gm-Gg: ASbGncuB7yNyj+8clLOwWF26H4jlatV8djep8SKuoH1a8SQGsMWTPSqNaaVihUQv+yN
	M6FgV3YDtlUKyKqJrCBe8h6L02iOpP8Umr2rbKZDaONeLgCMqeJYlrGkqu2LIIgiYo/EpGOQWqQ
	L3vQEnleQAXKTXYsHbT9QolO8ERlFr3DsjD0l5jqM4vRGQ87hLPfOD0nVttYzAT+dMapP3p5/Ts
	ii1McrNUg86ZzdR9ay5pVzyXIrUrYutRhOLmJATgh5LKzFY/k/xbGys0b43JbRq7Or0eDdJoMy5
	gKtiVuV9Q+gQ7OS6YKWRPCMY56t5bzhGrpcuM/cuIXGm/CMgFv4MukvT3NPI8pTAdmEaiw3mFbe
	cV4Osi8wYaN5fhfD76HCWtohthQ6ZT6pbbjA=
X-Google-Smtp-Source: AGHT+IGCO4liv93JPPoLPS2XAKJCjFoSU4kfGGUjaOrz6VjqZtPcVHjum/sjVr3U2YnYlhY1JRCo8A==
X-Received: by 2002:a17:903:244a:b0:232:1daf:6f06 with SMTP id d9443c01a7336-23dede94c3fmr158131165ad.47.1752424399645;
        Sun, 13 Jul 2025 09:33:19 -0700 (PDT)
Received: from arch.localdomain ([155.117.228.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4285ecbsm80809655ad.48.2025.07.13.09.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 09:33:19 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	dsimic@manjaro.org,
	naoki@radxa.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 0/3] board: rockchip: add OneThing Cloud OEC turbo
Date: Mon, 14 Jul 2025 00:32:52 +0800
Message-ID: <20250713163255.163669-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250713_093320_869568_C4A9EC7B 
X-CRM114-Status: UNSURE (   7.97  )
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

This series adds support for the OneThing Cloud OEC Turbo, which was
initially marketed by OneThing Tech as a PCDN (P2P Content Delivery
Network) device.

Jun Yan (3):
  dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co.,
    Ltd.
  dt-bindings: arm: rockchip: Add OneThing Cloud OEC turbo
  arm64: dts: rockchip: Add OneThing Cloud OEC turbo

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rk3566-onething-cloud-oec-turbo.dts       | 313 ++++++++++++++++++
 4 files changed, 321 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-cloud-oec-turbo.dts

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
