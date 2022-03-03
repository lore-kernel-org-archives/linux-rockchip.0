Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 631F6C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 20:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mB0Onz7TSwu7CkxpyeH7WWTmn1INf7/cj4KN10cY+8E=; b=kPVmJl6cE7qIdj
	iny+r2L8IA8M4LcatNvM1JKVbqf4/WnIzBSO7BeWEJNFyFX3S1VqJ+7+6q03OtJ+DtLE4h6D1jE6T
	ktObKpRpd/BQiPCtAQUL6BIRXZ+QS5F30ncBJgtzZWY6WnXIT9EwInPgaU2wFewzKAYRu0zk05k5/
	aenSyLSVGXYiFThu7xg1yGaFw90nAtTPNlfVWUkgDgHuRnq6z8uYgH8R2Cy0sePnogf/QN6i56dDy
	iYdNum7laf1X3wpUNJnaW7XWOXaE27PJZJSyjUw9n/VOSYiAZzH0Oi+xCPW6E2RMVPEWATUUREDDW
	RTIrAq1dt1o6/6Ah8OyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPsF3-007jwN-8e; Thu, 03 Mar 2022 20:40:05 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPsF0-007juc-Al
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 20:40:03 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id
 k13-20020a4a948d000000b003172f2f6bdfso7158704ooi.1
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 12:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qFWNiYfT/exRn7zivV1/ZTbgY+ZtV8tc1JcYbFAZ3oo=;
 b=QExztgCOdebUtk75ajJaI8HVK+gaNzD/7p0nZeni7azUOgdBJ7eBDJvzH98YWT8bR2
 1ST58QqVXnBhrUzG0OrocCPdwPYrZzTWFvHaxbzKkpds0xyNHzYq8QrefcOnNpj+pk5v
 IKk/n3zrODdFQ2NUJixbtdNoSDHkBL+dgM+bLZ98jBleFX+dFD1312GkRs911ZA3v4LW
 OjV/FQE26yoOrhoR8LGNqvENgFjEkGqsAav0hCmmTM3o97/kJETlTLxr+2EHMLRhQpil
 ZBDJl0haxMRfdTN2doKYulk/K6qiK9Ek7m6FxZyPQ7gxqP+gxj2O7qKUh3G/vedO2Sq5
 4fKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qFWNiYfT/exRn7zivV1/ZTbgY+ZtV8tc1JcYbFAZ3oo=;
 b=PYM6lpgCFywMPGETd7swTMaUa3IbFg8LgdOoO3UHl5CnHAdrBHVUbO7MZBXQS9LAnO
 CBGUWtF0rNdyZAh96Q0CbKoyXK//dBaJ6hiuUhWKbLL7ke+ufGyn0rDr1TZAFBaVEpa+
 dDyFF/WdTXdCGOOlLW1RnrpJxs4XO1xs+9JvV26aPF1IkfjqUptnGAtZ9Ucsei/AP5gG
 vGtYqNmYLZ6Nra1x2pIBZLAUWQ2JljluwX2i3B173JscIkSp1fw+613e6XIu4NGRNwqU
 6QePWWR6h5qCRKfylK9wsNjaqbVVptTqDcluBTIIxf5bbrU+gx/BmPLrOkal+hLR6+m6
 oFHQ==
X-Gm-Message-State: AOAM532xyRBXnj/D2Cd9kEtrXc34/PcwtwyBHjqkrf3nDTwNfd2aAHVK
 EX6v3U2++JzKHvg3WV9KC64=
X-Google-Smtp-Source: ABdhPJwSSJumhw7NJ4LZW8N9McJ7wl3nKU1oDZTUffwWS2Oa/5tKJdVBEPTVMSklWNaX/gITvvxxgw==
X-Received: by 2002:a05:6870:d910:b0:d7:1042:c5f3 with SMTP id
 gq16-20020a056870d91000b000d71042c5f3mr5438411oab.176.1646340000606; 
 Thu, 03 Mar 2022 12:40:00 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 l84-20020aca3e57000000b002d97bda3872sm1487822oia.55.2022.03.03.12.39.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 12:40:00 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4 v5] rk808: Convert bindings to yaml
Date: Thu,  3 Mar 2022 14:39:54 -0600
Message-Id: <20220303203958.4904-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_124002_421379_C60E9A5F 
X-CRM114-Status: GOOD (  13.10  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Convert the rk808 bindings into yaml format. In order to accomplish
this some bindings for the rk809 had to be updated to remove
non-existent vcc inputs. Additionally, some bindings for the rk805
needed to be updated to add a now-mandatory #clock-cells value, and
a regulator for a board using the rk818 PMIC needed to be renamed.

Changes from V4:
 - The latest version of yamllint, dt_binding_check, and dtbs_check now
   return no errors for arm and arm64.
 - Added DCDC_BOOST regulator for rk818 to documentation.
 - Renamed regulator for rk3188-px3-evb from SWITCH_REG1 to SWITCH_REG
   to match driver and other rk818 boards.

Changes from V3:
 - yamllint, dt_binding_check, and dtbs_check now returns no errors for
   arm and arm64.
 - Updated rk809 bindings for the rk3399-pinebook-pro and the
   rk3399-roc-pc to remove regulator inputs vcc13 and vcc14. These are
   not valid regulators and appear to be holdovers from the original
   rk3399 schematic.
 - Updated rk805 bindings for the rv1108-elgin-r1, rv1108-evb, and
   rk3328-a1 to add a now mandatory #clock-cells parameter.
 - Made clock-output-names for rk805, rk809, and rk817 a max of 2 if
   the #clock-cells is 1, and a max of 1 if the #clock-cells is 0.
   Even though these PMICs only support a single clock output enforcing
   this in the schema would require us to modify the driver.

Changes from V2:
 - Dropped language about battery. I'm keeping the commits entirely
   separate.
 - Added vddio-supply for rk809 and rk818, since after examining the
   datasheet I can confirm such a supply exists.

Changes from V1:
 - Removed generic descriptions.
 - Added maxItems to clock-output-names. Max items is 2 per the driver.
 - Added unevaluatedProperties as false to regulators.
 - Correct i2c node.
 - Added note about the battery.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Chris Morgan (4):
  arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
  dts: rockchip: Add #clock-cells value for rk805
  dts: rockchip: Update regulator name for PX3
  dt-bindings: mfd: rk808: Convert bindings to yaml

 .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
 .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
 .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
 .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
 .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
 .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
 arch/arm/boot/dts/rk3188-px3-evb.dts          |   2 +-
 arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 +
 arch/arm/boot/dts/rv1108-evb.dts              |   1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 +
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts |   2 -
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   2 -
 12 files changed, 1376 insertions(+), 470 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
