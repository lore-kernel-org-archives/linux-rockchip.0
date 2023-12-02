Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E87C10F04
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 13:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NlLhixUEl2cUe9HRNd4xIAS5nHAGrJ5McEDQyKdVk7k=; b=v5EfQ4BMMw8O6b
	pQ3tKUDArCTadgHm8exUSntMw5jv2AOqPGFIdVVPhvxtUTjnGR86NPJ6R93Qc0/v7f8yoz4XSx6Lc
	LO3Mll7asAQM7nv+cwTeCR0soFIL/EMtUZQOyiiO4DXUTzMC+fk5a//fftMFrpPp9GhSwVLlEF9zm
	9esg56JKJwDkAou5KVJQMSTeBQhDfHPnEZ5CrSh3brXw+HsNoOlZMEw6Epd+YzliOKm8fEMorW4nv
	UnwlznYa3MNZM94yYF5eQFXanv9AdLYZY5YxyL8N0mJbwwdZjAarjGZ+FQ3X2jlpDEDier+6kH9aN
	u+LpCsyTTE8mDukyOqzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PgY-00FjAg-08;
	Sat, 02 Dec 2023 13:05:30 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PgQ-00Fj4l-0O;
	Sat, 02 Dec 2023 13:05:24 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a19067009d2so358643566b.3;
        Sat, 02 Dec 2023 05:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701522317; x=1702127117; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YlmbJveqqWu3UwBC8vwfKHQE4Oarn94AjuSP1HWUeBI=;
        b=WRPza9WI9GmRvVd4sbb4JcaV+C+mQjRzeysbNpc2Nlw+5hsNhFausHDnFtEBYeAKFt
         deVamvp4lnSXdgpHrpIIiqRoZEEfKNtCcpjqbmv5xGXiqda0d1+Nurq/0k9jMenEFQY5
         fNEEWgS2KdRCu0j2p8n4vnPYrUZ1QuOB9CPrP1OOWIJDsyFRgx//gpkRS+CgJdgtYwlv
         vFPGle7mzET9PCAFGIixHeMAona0bVoYfC5hWViynPhZvQPq/Mzd72KjV/V0YglkXYVt
         vptZXKZlOzrx6oo9ML40iPuoO1yHdDzVWkjrZGmhVbT8LTooFXpqy8NcORvfCZu5FwY8
         Vclw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701522317; x=1702127117;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YlmbJveqqWu3UwBC8vwfKHQE4Oarn94AjuSP1HWUeBI=;
        b=bUchbnkqMPXBJna2oa6EQQv8ftqHU5mSNBF/iRoLTzwJAPmXMY0nBJNULCGacCyVDy
         9YuBOPjYu3PYk+GAeeHjkBIzrg2cJdnqQF2pAUZcD84cFsYBqsgWlhexpRJ05U+9KjE9
         NR8+b7XX/so2Xkg2mQXbfYzL2cv8oD8mQo5d7EzswymwEYDkwj0MFzPMQc57RcMcEUL1
         eKb2kFMSxIREYWyFDOD1VN1pjVIDZXqNCYwSCe7UJBiqZxd8lHq+gsvTObjlVt7Vvssu
         yrZlt5Uzn3bljcc9Hx8GuHXchBggqNccJU4rnntAI3Z0QucR9eYe7lLl3K4h3UteqgR5
         wlMA==
X-Gm-Message-State: AOJu0Yyw+gFuO7PyXBFUjwqt4E/8hEPytTwmkffX/LYXKqlw2RDKLz6Z
	0fo68Vxjo9w6FX2bhqcnQA==
X-Google-Smtp-Source: AGHT+IGRIGvQmJDiHFsyOFQZOb1u+p7x4RTsXeU6k5ENkIv33g9kDxunLOZ+qogZLatt7t1wYNfveA==
X-Received: by 2002:a17:907:11db:b0:9fe:43a0:4ac0 with SMTP id va27-20020a17090711db00b009fe43a04ac0mr2075416ejb.24.1701522317371;
        Sat, 02 Dec 2023 05:05:17 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id bs5-20020a170906d1c500b00a0bf09c9483sm3045324ejb.35.2023.12.02.05.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 05:05:17 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 0/3] Move core bus and gpio aliases to SoC dtsi for RK3128
Date: Sat,  2 Dec 2023 14:05:04 +0100
Message-ID: <20231202130506.66738-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_050522_156643_8F3E9309 
X-CRM114-Status: UNSURE (   8.50  )
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

Following up the recent discussion [0] about where aliases can be/should be
placed this series moves gpio, i2c and uart aliases to SoC dtsi for RK3128.

Note: This patches are based on maintainter's repo.

[0] https://lore.kernel.org/all/b0c637f5-5abf-420b-8b02-839eba68799e@linaro.org/T/#m94aebb23a29b015d94b250a70b675febdaa902ea

Alex Bee (3):
  ARM: dts: rockchip: Move gpio aliases to SoC dtsi for RK3128
  ARM: dts: rockchip: Move i2c aliases to SoC dtsi for RK3128
  ARM: dts: rockchip: Move uart aliases to SoC dtsi for RK3128

 arch/arm/boot/dts/rockchip/rk3128-evb.dts      |  5 -----
 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts |  7 +------
 arch/arm/boot/dts/rockchip/rk3128.dtsi         | 14 ++++++++++++++
 3 files changed, 15 insertions(+), 11 deletions(-)


base-commit: fd610e604837936440ef7c64ab6998b004631647
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
