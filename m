Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0AABC072A2
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 12:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c85aj7tbzMFARIY9gCVAXLaHJY0l0N+1wB827TBNdvM=; b=Oc4on9VTMDcOO2
	HBkwcdtOL5LIIoc33VXhCTyNP+NUUU97W7CtTY3B7SyLmx8aYXqsWu7KCtnSV/cjIHzql/dgifDJL
	0okTvrUfzFvuj4xRr3RKwOM11R9kHq75YcpxbLEbyCR9TuiWScMdbGWZmmbU5r+aS99dMC3Kd6LkE
	gEeOod1H68B6bfEpVWzpY+aN+BM+w5DDZzx9NGJBvkONqw+erqqkvieSj/6DlTQW7GzI0/qbLViVH
	f05oSdY+08C5HQwaY04dtFE97E1tLcKUq758jZNSgTncTjv80JBwsYLig5gb2652/lVsCP+btJGSj
	ItuETYzNVLD8xElowHpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggT-00A9BD-2q;
	Sun, 19 Nov 2023 12:13:53 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggL-00A97E-2R;
	Sun, 19 Nov 2023 12:13:49 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-53e70b0a218so4951502a12.2;
        Sun, 19 Nov 2023 04:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700396023; x=1701000823; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Ux1krw1PHmoCa/GU7rGP+Vf9Jy9ZS7rUudcxtdu5Y4=;
        b=O9uZNfvJCaBidryEoWgK34Q1hGAI7prqdsyDdALHw9R+rUs0Qhu6dVlL3f7pFk4N/J
         kzDkbBwRjhxMILlcGIVQiAbFQUjjpt4mRDFEpM6AcZMV4I6pyGw7HJZMqxSaT3Dy9xsw
         NW/+znFK6TlAIIuoO6loKXhjBmMtEOVJPE7QsZLmCWURmvEzRPq+5O64TPiA5cjR6rzM
         gyHtvdz0dDMLSE9uhZ/dgfevv6ZYFVilBstejOhHB4Xz2y/XgC/HEbmGUC9Kd15RbOLt
         ZcxzFNAb0Wu2F2xUx0tlIkX9E3lvitqzO8T7RsB47+yVXDp1k6fkZi4dJu1aRQdnAkFN
         DWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700396023; x=1701000823;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Ux1krw1PHmoCa/GU7rGP+Vf9Jy9ZS7rUudcxtdu5Y4=;
        b=rSl4TX0edM+MCyz+08pJgcrw3XgFdvFNH//dgt+2efFCWmsiUC1x0kctLAbYe2JE+6
         hW3U/9Kaggkb/DrfCQCDMxK4E1eu9SXgBi0ZFbSN1ZhtxHlERO3eMVFT8TENh+1oUjns
         KpKXfZTsY4IdJI22AmmHQMMEBlcB5gN6Jm+V7w2Msm29M6guUmDbbUT1qcpYn088fUde
         yrmq0ViseJbt6L7Fc0duFZOtZ6iQMHkXO1xPMQhhbR/361B7adRBC89CyPJ91o7hrIQC
         lbFj03lV7dKlLZIHFLQ8FWlHldIRbNvWvFBakBvJNO50MFSgedQ9wKtS576Y+/DW84oV
         4Pxw==
X-Gm-Message-State: AOJu0Yy3en4vi3e3FqE0EdgFXNLTXg2dhFOZDpYt/hQfdxeJOdsVr3IU
	Hf9wfBbPgAKQ6vcrqQlxXA==
X-Google-Smtp-Source: AGHT+IGy1GlDafLSieBuQEQ1Zs4HIKkBJdxt+OUkIXi2Mn2KBJ3XFrfpgR0TU1P5A184X7sPiOKqpg==
X-Received: by 2002:aa7:c454:0:b0:543:f90:b956 with SMTP id n20-20020aa7c454000000b005430f90b956mr3469757edr.35.1700396022988;
        Sun, 19 Nov 2023 04:13:42 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id r5-20020a056402018500b0053dec545c8fsm2523634edv.3.2023.11.19.04.13.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 04:13:42 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 0/5] Add USB support for RK3128
Date: Sun, 19 Nov 2023 13:13:35 +0100
Message-ID: <20231119121340.109025-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_041345_812301_0A2A2C7E 
X-CRM114-Status: GOOD (  13.04  )
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

While interestingly the DT-binding for the Innosilicon usb phy found in
RK3128 SoC exists already and it is exposed in the SoC DT, it has never
been added to the driver.
This patch-set adds support for this early version of the phy and does
some DT-fixups in order to make the 2-port host/otg phy and the respective
controllers work.

Please see commit messages of the individual patches for details.

Changes in v3:
 - rebased on linux-next
 - added phy-tuning callback for RK3128
 - moved parent clock assignment of SCLK_USB480M to the phy node

Alex Bee (5):
  phy: rockchip-inno-usb2: Split ID interrupt phy registers
  phy: phy-rockchip-inno-usb2: Add RK3128 support
  ARM: dts: rockchip: Add USB host clocks for RK3128
  ARM: dts: rockchip: Add dwc2 otg fifo siztes for RK3128
  ARM: dts: rockchip: Make usbphy the parent of SCLK_USB480M for RK3128

 arch/arm/boot/dts/rockchip/rk3128.dtsi        |   7 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 156 ++++++++++++++----
 2 files changed, 134 insertions(+), 29 deletions(-)

-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
