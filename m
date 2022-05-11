Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E61BDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zhp7E7HNZs2PMG4hqaHOcid/rYhEAstKLotfIFwFtkY=; b=DWdC6QxgJsJTtC
	29I8Xx2z9rA2gbS4F3lKIWkdMBbA4V9MCdQ/Yebcj/ueuMOXYOiv7Om4rHBGgr7fdt1/h08NxDJj6
	FJKHgisv/U90lBPyLodchu9bDAGLEja4EdgPHfySl33eUM8qYVrG4kfZ0/YVF0jd3OBM4se+9hxjz
	rRxqWLCORT4eSkhI+5jm/KFIthY/tLbb0YTuqw1SmifQ3lgNDPzzvTC8ZQstvX00HPwvy5Zq20J9O
	XiEZS062t8jvsuuMVU3ioEY3KwAABvilb/DVrqGEIcXSZkh5V5WTtfoCwtNW+VyFUzKuSPSQRYzJq
	QSFXPKp23lJZqmMP/0YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nont6-007PCO-Rj; Wed, 11 May 2022 15:04:28 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nonq6-007Ngs-Ip; Wed, 11 May 2022 15:01:24 +0000
Received: by mail-qv1-xf35.google.com with SMTP id h13so2312978qvh.0;
 Wed, 11 May 2022 08:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BpLpbA3cEdZdB5NVHaxdX/JjV/xBP+7WcQWXCx8dzmk=;
 b=dfkMKQIkw1w9JLBk+Cr9V+7ivJKDpHfFtDTkU6lDsIntJczt3c5Xz5BafK1gXJTWpz
 TyTzxFQjmXdpFvjA/VHnhH44E/xZD70Iy19Iv2NzZMhOpjefhYxyk544Wk+KSjkee1Hw
 LAz/R00EkZVzbntXyEvPycJCSuc8vx0vGwgep51yVYHlNdLzmbhePKhUmTC9wTIZ7PdY
 VZzaInuDI66tSv1I4g6gub1uYBQjYorE9s2AE6z5c8qVDGhe7zz8P4SpWcOBKZuFyVbd
 Myopgc8sGJj00qUA/IZtilWM6AHrTbOMNGAQqls5aMn0ZYMaiiLrfYOkNveLEhRljUNh
 AeLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BpLpbA3cEdZdB5NVHaxdX/JjV/xBP+7WcQWXCx8dzmk=;
 b=2sP/xIAURKlIInvjXSfTwzivmC/RlVisVsO5x5SH38MjqirwVYuMR5esueMDJ5hcmJ
 GwSglOZXO4G5K2DyMif/W+qCVA9+G3tLsp57Uq4afuVFTk+L97/Fag4RQSqp6SbrLAM1
 DwC1XcKe55KA1xoFtqYYHlQhbCHud1Yw7FJ6t6K7gPP2Bxa+qaeKsLaUfZhAiXMeezCG
 /fbwqV1ER4Caa8CrqBq3m3s4nPWC/VVXP8QOqbIvB+21qCZdCT4QzuGLFUZI8s0xkC8L
 NyVRSsSxVI0Uua4vDsUAM0/+4YewLca7QkQoO9/F62SZOZnPcS6XoUpGkdWAn082CSxY
 pPOw==
X-Gm-Message-State: AOAM5335XvCLZEjwgBWw7VJ1C/3w/NxpUzrRCVT7+YxIb3U1Egk1hzWE
 7ey34x2V8FoTVQw76yoHAcIXeTeMhiySrQ==
X-Google-Smtp-Source: ABdhPJx/cQGDrjrK51ktGYIyT1LOfezAIwxXLFpQqnqz5Dd76YXXs+eGPAvYc8cCr3FI5YI5X+yk6A==
X-Received: by 2002:a05:6214:1bcb:b0:45a:afd7:6f72 with SMTP id
 m11-20020a0562141bcb00b0045aafd76f72mr22702167qvc.20.1652281279783; 
 Wed, 11 May 2022 08:01:19 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 h1-20020a05620a244100b0069fc6484c06sm1487134qkn.23.2022.05.11.08.01.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 08:01:19 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v1 0/6] Cleanups and enablement for Quartz64-A
Date: Wed, 11 May 2022 11:01:11 -0400
Message-Id: <20220511150117.113070-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_080122_703676_6CE71994 
X-CRM114-Status: UNSURE (   8.66  )
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

Good Morning,

The following patches clean up some dtbs_check warnings, fixup the
Quartz64-A dts, and enable some additional functionality on the
Quartz64-A.

With this series the only remaining dtbs_check warnings are due to
unconverted bindings.

Patch 6 is dependent on:
13e0ee34f39c arm64: dts: rockchip: add rk356x sfc support
currently in linux-next.


Patches 1 and 2 add some missing bindings to the rk3568 cru.
Patch 3 renames the bluetooth gpios on Quartz64-A.
Patch 4 adds the fan gpio pinctrl on Quartz64-A.
Patch 5 enables sdr-104 on Quartz64-A.
Patch 6 adds the disabled by default sfc controller to Quartz64-A.

Peter Geis (6):
  dt-binding: clock: Add missing rk3568 cru bindings
  arm64: dts: rockchip: add clocks to rk356x cru
  arm64: dts: rockchip: rename Quartz64-A bluetooth gpios
  arm64: dts: rockchip: add Quartz64-A fan pinctrl
  arm64: dts: rockchip: enable sdr-104 on sdmmc
  arm64: dts: rockchip: enable sfc controller on Quartz64 Model A

 .../bindings/clock/rockchip,rk3568-cru.yaml   | 13 +++++++++
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 29 +++++++++++++++++--
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  2 ++
 3 files changed, 42 insertions(+), 2 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
