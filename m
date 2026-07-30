Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1AE3C55165
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 13:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V4atkVhaTBy4KAG/vvpeZbZwmUGzj9OIxckfo2iK6rI=; b=1EeDwV5WeJwsLU
	jMsnV5wCowAMAdFFm/FkT44aQ8DPdJqmwKPJOHofBqfdEyqIAsUTrmnWFH7YW3s1HFs7x5j58TObg
	sdWsaYkUkDtDxI0f/1GAZh9DEFTN2UHcbprpRKxv16JgKagyRiIeqh9l+rr7Vog3GQgKsSeGK9uMi
	hdttlbC618p42dZYXIQvHN5LN/GhdLT9vOYpRYDtdnpL1+ZOGy/+qVlYAFOXrVsUiLoKqDqXTWEsj
	TVUpKdff/D9xDs6SOeqFJI9fQl3o5yvtwwW65/RPcn7t6Tg7YOdHRGNvMOLcDkUu/gUzzXI7+imky
	WNOvcw+RbYmm6Iid4w8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpR7c-0000000AeMG-0BTD;
	Thu, 30 Jul 2026 13:48:28 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpR7Z-0000000AeLZ-3T5B
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 13:48:27 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-caf707e3a70so599469a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 06:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785419304; x=1786024104; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2H2DIuEhnzrfQ1C6Brzjicc8cP53KTk+BzeLhmkkFD4=;
        b=rQXvN7H3nFXNj+bw+csN+5xVjzvgG8dBWJZ15HBnA3p2AhgGv9w2ehzS9nqLdloXv1
         3csOCOzWiEh1ZuDhVVfN6yMXl+OvdpHMyiU1W4L6qlSlsQ6daICHaF4Mr7vg0lajM3VQ
         RzctyEdCEu25j5c/7NydkgX/QIlULfpLRWjvXoVDlhoBsdDG0CP8CLbS7eE1sM7QNlA0
         hgzsevDNjMlLlX9TktPmah4mSDiZIrYaM/kOdAlAPiz4lqBGLHU49pDE2V8sBsYKyIN4
         JvK4aBcxq4b1T1mRnb2VYqWNepRfiMOiXe0bS125lrPVu4tVAsNnjw9N9KnsyjX2M7Og
         mG4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785419304; x=1786024104;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2H2DIuEhnzrfQ1C6Brzjicc8cP53KTk+BzeLhmkkFD4=;
        b=sZfiv0dRatXWaQAxi1s+T4Xp5kT4jNmqrYCYg0SLMdGhEOklSE+8hT2H7p+ndt+amT
         2K/uWyP3GHHH6lW4mLbeGk1zWOlhNDrXNbTeh5/hppJl3YvMug+P0tpV8mCwjlD8EQnT
         sQsG4OsyighHOC5Gk43ugapnD2eH2mb3BOeyWTYjqJ7KF9KRDkV8jy4aztXukaU7Gw6D
         /Wjo1Z7KsEzQd3ijTQ0LeOMFM74w7YJbTFUp3p4YLXVYifDl0bV9LXTdlMmZtjZ1twmg
         XyQDzK9dM52U62UZeVurnhxqiga4saVE5NxUCJJhVKjt60AF4W2HD9ht27L04tHzFvjz
         mSSQ==
X-Forwarded-Encrypted: i=1; AHgh+Rpxnfhe070aOeZuwXDMVL6XLfn9b58rp+F++XsTj2UQHCmgKn6jO7q4/JEMN39Xovez2+p1/iRF2y7EK/R8XQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjjvtWo5NxB396YYdMhJIn+HrgNnfAv0bHRYSRv3++Rzjamvoy
	7yx6R609FN3u151KqCT6c2rHPP7j6G/aV97Pb3FxTBj03q+9EiAo8E70
X-Gm-Gg: AR+sD13NmiACIuMiOLDqeQ4GjyBIk1olYLXLL2Gx+CF2AOTLQhKULf91trPBbIEWLd/
	cvMdFY7X8tdCzQ8w4X+CTYU7UXLLBp+qBIjsvHxxNtPruqcm/mZ9cnJIFxAcjrrKwXDh9rC5YPe
	rUAZTsv+4gVI6LLx21/V+Nbw8wocK0Vd8wxRy/z+2b0hj6RpjkrdkKXs732gs3Yuu5iOfRSGPg+
	ZLiwIJwnOP2E9JGPhbDmrOt8t4hZzGv7SdBb4CiQRs88Vr0ngKFZQwENmW9cjjmzhihGkG1Vg78
	AjbatSo6Zgi4qxFScdxHu+xyrgYBA2cCJcTh8Kr/etpc36si6k1d9q/sOwZgvhc8uIAA0EvppcA
	xeXdj+R6RVmh/VHoFDiCmAzC8zV6yLJCINbYTb/J+TyC8EqTFpMkU7j7NVY/FEyUbEpN2gdwOyJ
	Iqhs95cEE4Ryd3rPyECZYdaBCLhqGItbPn+9hBewIz7xPCuOmA+0s5HVnZ19kC4Lf2XPXoQj64C
	vCnbAk=
X-Received: by 2002:a05:6a20:244b:b0:3ba:d7b0:fcac with SMTP id adf61e73a8af0-3c90d768ae9mr393785637.5.1785419304267;
        Thu, 30 Jul 2026 06:48:24 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31504b670dcsm20692047eec.7.2026.07.30.06.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 06:48:23 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 0/2] Add support for Vicharak Axon Lite board
Date: Thu, 30 Jul 2026 19:18:13 +0530
Message-ID: <20260730134815.434654-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_064825_888033_8C6318E9 
X-CRM114-Status: UNSURE (   9.13  )
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

Add initial support for the Vicharak Axon Lite, an RK3576-based
single-board computer.

Patch 1 documents the "vicharak,axon-lite" compatible string in the
Rockchip arm bindings.

Patch 2 adds the board devicetree, enabling the RK806 PMIC with
CPU-big, CPU-little, GPU, NPU and logic regulators, Mali GPU, Gigabit
Ethernet (RTL8211F), eMMC, microSD, UFS storage, PCIe0 and PCIe1,
HYM8563 RTC, GPIO LEDs, and UART0 serial console.

The vendor prefix 'vicharak' was previously accepted via:
https://lkml.org/lkml/2026/6/24/929

Tested by booting to a userspace shell over the serial console and
verifying eMMC, microSD, UFS storage, PCIe, and Ethernet link-up.

Hrushiraj Gandhi (2):
  dt-bindings: arm: rockchip: Add Vicharak Axon Lite board
  arm64: dts: rockchip: Add Vicharak Axon Lite board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3576-vicharak-axon-lite.dts    | 700 ++++++++++++++++++
 3 files changed, 706 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-vicharak-axon-lite.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
