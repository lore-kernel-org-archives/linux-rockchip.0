Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D9D7CAC5A5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 09:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cp7XV681jDyAeMvS6rX5C1N7WROVQdA0xf2HBzrebRQ=; b=0sObBYM4BP51ty
	um3ZifbJhnJ85Yyr6G/s73HPj9Hs4SNCtbeqBXOMMkfYLnLqkbOW5ibxYE6qbVBlWB59EGhAM4Q/u
	IfcLnO+nmH7LXzKlGpL3S8ka7YH+ZaMkIR5XupUzWWepdMnlA9SUiBF++csCVuBA3V2lnV6WOKqac
	gSl5DkrR3aHJpy4d8Z40c0ZnaGAM12MS3qkNazcvfgT0ey0TT0t+dz8bXrghkNl/kdj7qbhv7C5cs
	/8sI0Zvr/PoeggfJuMjbtvsycNknwDQFDCyTdyolA4xYNYJwr6Jn/3RnTpMbi8ABlJF2Vhi+UPfBt
	MUVwZe51770EuI4hWN+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iAG-00000007XXP-27H1;
	Thu, 25 Sep 2025 09:21:24 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iAD-00000007XV3-3buc
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 09:21:23 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-77f7da24397so819062b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 02:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758792081; x=1759396881; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jUgn42r5a8mNNBXp0C9lNyB4hr+HTa+eeMoWV7f//J8=;
        b=CMGG+RpOKmHunINqUcsb65dxv2qSfysDewW2rVtyHu9aKqA37d56Cmcs+q5CdddAUa
         8XYLVaKfNb5NSJKCEIZi+NeaOXJT8Aw4twRImF5LJ/17bU9E3ctUf+Ykt0IzIIFyMRAO
         OL+3vwnxnyTICzUN41EihrJRrnMNNDVDtx/dIicMKbhyQm3kZNPeVC/pc9yoOU+hx5YQ
         5M4Zup+eo8Frwo7AfMVrZc8xV3qdiWtdmg8PJ2d3Cs5q6aaqoidrzWaPniWX/OpTZg5Y
         QkK2F2FoPRJRCLki/uL6Dzuk9nFGbUYoDy8CEN7TDgworBRlaB9qt3rqlYXcOj5KUzXJ
         s30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758792081; x=1759396881;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jUgn42r5a8mNNBXp0C9lNyB4hr+HTa+eeMoWV7f//J8=;
        b=JXqn+bvFtGnuvCdZkOFFs2N//9R71pUWqZ8NVUUFWPuMz0HCM1yeX2bTD0o7x0jU62
         elY6CfLXvePdcL6n1juIURMwPPM1iR/oTIJjOGIQWV2alcFlfhZb7XA/waqlsQQsvb3t
         iWSlu5hGBLGPnIY0PmLiapyNl0NkUKvsh33oEbXg5sBNU6LkW1EuU7b+2aSB9ZOX+cvY
         Hu13c51W1GSlP9fzvYKGSHfv6IuNreLQLs1vO4Alk8VmjrZczn1WQW0J591hHVzt/Ahy
         ryNCEUxG5dSc5EHk0pEdH9yzBcU9z/wTP0d/DmpHJlbNbpPsUdFiDzryJx7n1VIgcMMg
         wsdg==
X-Forwarded-Encrypted: i=1; AJvYcCXN70a7iC6a6renp9xW2zagYhhJ053vA/juuyh7gySltiXAtLVyFW6REtDcT9Zo3JE5I3HHxMGUijRCA38rYg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyfxNb6sMocqaYw9Oh9A3D+RkccpAaC916FuA8g6/CF5ZekJn2c
	Xmd5bJz5x2nNu6Z5jc296C4Imfp6OOH0y6++StWStLAMhGWF7x22g2ML
X-Gm-Gg: ASbGncuDJCj6XbIYEz7cA7nnfewMW/oCQu1sj5qWjBGzQ2SWvAGByEo2icLLmW9GGIN
	Q+n5MEH+951IIQADN5FwKGKjHkubADzPw38SKkLD/Pyb7qfEVZ2R2nTMikF9FAjXZOyRl9dzaAm
	Tmpp7FgUWnMbwDd24lpm7Z7UZmZeLD9e1qycSNr8y4RIx0IXGybHwzEW5Yv6eXUp8DZ5d//22ui
	c0ZYGL1oVEWWKqq0WJN5QllqN2/30BDrQN00cX/HI2uA6znXbVZgmMHUumkVMC86auYzEKOU+HF
	mi5m4rbUEt7x2iZhOWnZhLC6z5hiSloWG1+M3SitjUNBq0A8r1RkmRPQv57nqZEMVLMglT1uNG7
	L8rPAnbKLX/4sweWYpLGpJrHxF7yg29URAZAZmFdKBA==
X-Google-Smtp-Source: AGHT+IFnE3x/HOJtgYIO/KfGDkE6OL9Yv5CTm7GbsosRRNTd2+C/2E/tc4yHiROdLQZc06HYbTLMNQ==
X-Received: by 2002:a17:903:384b:b0:260:df70:f753 with SMTP id d9443c01a7336-27ed4a7eadamr32620015ad.38.1758792081013;
        Thu, 25 Sep 2025 02:21:21 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm18251855ad.30.2025.09.25.02.21.16
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 25 Sep 2025 02:21:20 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
Date: Thu, 25 Sep 2025 17:20:34 +0800
Message-ID: <20250925092037.13582-1-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_022121_900568_94C1A79E 
X-CRM114-Status: UNSURE (   5.69  )
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

LinkEase EasePi R1 [1] is a high-performance mini router.

Specification:
- Rockchip RK3568
- 2GB/4GB LPDDR4 RAM
- 16GB on-board eMMC
- 1x M.2 key for 2280 NVMe (PCIe 3.0)
- 1x USB 3.0 Type-A
- 1x USB 2.0 Type-C (for USB flashing)
- 2x 1000 Base-T (native, RTL8211F)
- 2x 2500 Base-T (PCIe, RTL8125B)
- 1x HDMI 2.0 Output
- 12v DC Jack
- 1x Power key connected to PMIC
- 2x LEDs (one static power supplied, one GPIO controlled)

[1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
Changes in v2:
- Change deprecated "rockchip,system-power-controller" to "system-power-controller"
- Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm2473@gmail.com/

---

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
