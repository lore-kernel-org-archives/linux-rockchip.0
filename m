Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73AF7C54E67
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 14:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O+E5q5ohdBgWnCWMPgceUJaUFADyIDj9/njWJkj7kIQ=; b=f/6E7qi+Eu98Hd
	1BglF+Ns7wfT6S4Agb9Z8U4tyKJ4z11o3FRrK66hwx6S13Xh1iMUZN3yYJ2OKk0bolmpIQQNgJFwP
	lKezC36/6+kt9SO5FYAJn0m7a+CMxcYSwy5qCRvHDTYQI3jPlF43MvBpd+N/5XdgZrNxneuuGUYd3
	zxQfkEB8I0CFVFo5rqln1Zwr2TXWzMPuVPMXM6nbIJK2CgyWzO9XJy3n+X/IOchdSxJjzLRICE2rN
	wbnISJHeMBR/pQVjcNNIli6zXDqfVRlV4DrtjbDaS82F/kJNFh4O9xQgjMOoADL1BWHXk0esP5eNc
	pa6RlsRvNqbXH95aUHtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl8So-00000000SPW-15fP;
	Fri, 15 Mar 2024 14:23:14 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl8Sk-00000000SMN-23Mp;
	Fri, 15 Mar 2024 14:23:11 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5131316693cso2811522e87.0;
        Fri, 15 Mar 2024 07:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710512585; x=1711117385; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tZkgmYX7j1RNnBUU71HzMr25jaCAVqRVAu1+HZuDA+o=;
        b=fHwblqe4xdLprx2MSj6ZNcNWpoWtIuN0Iy4tSroWQ7hzU+ZPGGqR1FRIxi/8o7jh4x
         frBabVYErG/zNwBu0wn4y03atE0C4PpkdFuyl3MVryCodbDiI/ZYvFB/G147QHlfgxOz
         cyr1UBHD5CY1mof0sE/6moXp00wi7Xpjb3vxG3Ot9rquPVT6Uzqb8mppqpcNo9I4oScI
         di902wkCQJ1E3ioym22vqpx7evUT6yW2+3aYXuAkH0g3ewYtndEwie5uBLTjRsQ/+Ufg
         r2qgsEXhy9ZIhrgk1G6hVNZnYi5JPg0l1D+e6bNTb3CVMpOj63W/lEr2sNOEm43butMs
         rrNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710512585; x=1711117385;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tZkgmYX7j1RNnBUU71HzMr25jaCAVqRVAu1+HZuDA+o=;
        b=C7+0dVADgAv1dyoW1rSY21uen2S+i/wXhXIX+08NywIcrbu6o9cxlYoZfSPrxhECxW
         qoHimBfdqYmxQx23eGvMOOH9a7cAYMXIXOiOYOVOAvT0xB932XNAn/5AJmwj6HmWYuQ5
         diFcXK60eeOR0JYY5rUnX3avY22Y4/sXU1V2oz3p8xSGAtSdZycUymJPKgiYQBrTZ1+J
         Um/JKNfLm4fDi8Yr2/PQS5+aQoy8hwqCdFpVOEtMeld4id7J11xewXIhlE5bn2FfNGrL
         bIe2Dh4ZRm6mHjcIcLy44VQwHJPP9/d6MlMpyEqCdo7Kc3+McR9JLPO9yUi0FpMPnoJX
         KTYA==
X-Forwarded-Encrypted: i=1; AJvYcCVOgORJRW7OV5JV/gdhTJwZOLHqPfOSTBBDPkccojNVhyBGRLHu8DE1V8ATORxz/O+JAhLITWBMAr+JkGkuq1UyhaDJ93oBcr32KvDtuGPudCz+vORKOrV6mb38SxcLol9zSprquhrml8y42x/HRQVyV4fJ2rJNX0o=
X-Gm-Message-State: AOJu0YzOyV993b8egZiVGQZSmXJ0QM/Tn1MOL+fw0Xqm3Vil7TADsMuQ
	wz5mItIPQcxz1l8YTGtcnSPwGN/iP36BgWmGPuekthRXSwq47zCK
X-Google-Smtp-Source: AGHT+IE98tjIGzyWQqcMwbVhKi5T8nsnQAHn+YgCdP9ysNFO06+/mc50znq9PUxyQhj6LNePnjMhCw==
X-Received: by 2002:ac2:4890:0:b0:513:33ac:fe61 with SMTP id x16-20020ac24890000000b0051333acfe61mr3209679lfc.60.1710512584938;
        Fri, 15 Mar 2024 07:23:04 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id r18-20020ac25f92000000b00513c82518fasm649651lfe.223.2024.03.15.07.23.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 07:23:04 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH 0/3] Add Forlinx OK3588-C
Date: Fri, 15 Mar 2024 19:18:04 +0500
Message-ID: <cover.1710506373.git.dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_072310_557308_3C938228 
X-CRM114-Status: UNSURE (   9.30  )
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

This series add support for Forlinx RK3588 based SoM and carrier board.
Devicetree split into .dtsi (FET3588-C SoM) and .dts (OK3588-C Board).

Dmitry Yashin (3):
  dt-bindings: arm: rockchip: add Forlinx FET3588-C
  arm64: dts: rockchip: add Forlinx FET3588-C
  arm64: dts: rockchip: add Forlinx OK3588-C

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-forlinx-fet3588-c.dtsi    | 556 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588-ok3588-c.dts     | 390 ++++++++++++
 4 files changed, 954 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-forlinx-fet3588-c.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
