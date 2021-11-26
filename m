Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62D59C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 15:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KxJuumguWWF79tQXR+j5ECUEvlwL6vV5kZDRv+/abf4=; b=oUKkCKuYe0jvwj
	W+/QLBIRIXiGUl8fYT21N/cxVflG22jwBiPqOpQZEDJ3xlWqOirIXFb+bWL2NFxDeg0DbcI2UCAdW
	tMqrUD9mkjQgJxW3D3cckgCnN7IAl8B3c2WttmDd7d9F6ApOlVEnlxHhKFoBX3oQezk5hLAWLn9H/
	ELcAxdPWuy6AULOYPk0wNKQa9aGPaRk2QhPM1y70OZ/3ssP6WVQrRW3FjGpIm679o/jlP6YJ8ZTaM
	jYvV3Z9hw14ZvwH+bUZf0zdjJYaFU+o+C/ZDUfALn5kR2ITdf8estfTJ0ooOZFPpXWteb5P1USlwh
	rrhj4bVpODCSbx+QK4FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqdOX-00AyuZ-Gw; Fri, 26 Nov 2021 15:44:13 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqdOK-00Ayr7-81; Fri, 26 Nov 2021 15:44:01 +0000
Received: by mail-wr1-x42f.google.com with SMTP id u18so19524586wrg.5;
 Fri, 26 Nov 2021 07:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GLkyoLUKpRjZnUdDc279znKmoge1lvnkGD50/gVexkQ=;
 b=OqVKngMbKLP1DHv9TsYenjFQef9cX6K7kJey9mSlOp6MZOzu3usOtwBL0qb2SNi4EK
 ffP1HlR1pHpOe7MCNiKzCLNi/xllzf8RTz6nNXz4Ujt3LAOaN6OLa7vnaZb7XvQFGXPF
 btNKgwianGoMtkWVm7adowHH4JIvmWOGvnzXBPija5qvt9p8cdv12LiLl3M1Lmfvi+cg
 tEM5Svnk6RyH9iHSCwTb8TWGt1YCB9XSU78W7pamTXnBNDyEkCt3x3+QevXjCso/2Wpi
 ydRzASYt1K/q3legxeFrgeQYmFHYGCJIjFyNqC8DckkEMt1RMRrNhrU1Ib2hJR3i/uDO
 W26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GLkyoLUKpRjZnUdDc279znKmoge1lvnkGD50/gVexkQ=;
 b=nNVYJuUfElJ+ths1rVQhaNsGnAr8JeV1WBtCcJFD35PqMtsu660bUY/nxWwE2qN2qU
 C3O2W/Q+LMJkyU/i/zMkfGgkdlbWBgTZlFAy/slA/wl19BbWjOQn/rl0Rc8gF3PkgUct
 pT1le2K5KbM6HugrOhYCYoEbhQwZD0+Eio4n6gvJkQchg06VrzDVA+JXD2yvIM6hGhQy
 jVozjIgmq8a275u8MtnDF+l/hKvmJK1VjVIeuI7/9nZ2WPA48GlY5sFltv7mWEUDL7dW
 Pt9DTRpCKrrCA/Hu8i1v/Cw0ezzC5jioQrD/yvLqGWLxBjT8L2Zza9HoVXYLTbfkucLY
 WC5Q==
X-Gm-Message-State: AOAM530wOSakivFo5HT4uiMMGavQaT5+t1BJZrRCW/yHnSV8UPRWUdxD
 GIv+P/T8raD6d6nz62xgc2Y=
X-Google-Smtp-Source: ABdhPJz32axiOIaYWuL5xgqmPKeOpKTpr4MPYCFIT4SmwfpsM90/cnVDf90UkxFLZUgJBM6pUasxug==
X-Received: by 2002:adf:fa4b:: with SMTP id y11mr15142087wrr.460.1637941439074; 
 Fri, 26 Nov 2021 07:43:59 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id p13sm11372400wmi.0.2021.11.26.07.43.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 07:43:58 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] RK356x/Quartz64 Model A SPI
Date: Fri, 26 Nov 2021 16:43:41 +0100
Message-Id: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_074400_322310_E57ADBB0 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The first patch of this series adds a compatible for rk3568-spi
to the DT bindings.

The second adds the SPI nodes for RK3566 and RK3568 SoCs. The nodes
were lifted from the downstream vendor kernel's devicetree, and were
double-checked for correctness.

The third patch sets up the broken-out SPI pins on the Quartz64
Model A; they use the "m1" set of the pins, not the "m0" set. I
assume the "m" stands for "mux".

I've tested both patches by connecting an MCP2515 SPI CAN bus
controller to the spi pins, which initialised fine.

Regards,
Nicolas Frattaroli

Nicolas Frattaroli (3):
  dt-bindings: spi: spi-rockchip: Add rk3568-spi compatible
  arm64: dts: rockchip: Add spi nodes on rk356x
  arm64: dts: rockchip: Add spi1 pins on Quartz64 A

 .../devicetree/bindings/spi/spi-rockchip.yaml |  1 +
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  5 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 68 +++++++++++++++++++
 3 files changed, 74 insertions(+)

-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
