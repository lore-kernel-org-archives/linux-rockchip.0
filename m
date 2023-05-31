Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86034C7EE23
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 May 2023 16:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XDr61T5J1SQ42/WMDYuR0M8XO6/3zuNaUdoWqbS2Bhs=; b=yp84yTs/HVAECA
	y62DU8tdrbhF5Y0o5YoPvelQ2Kszo1qLW/f26W/81gOU11kamHqxc6bAIQbmjRzsESf9TTZl73xRt
	mh8DxzOJHfb0ZjkqXzfT2FRiyoSDsW7tUcms80vsxzf534kgauHCrfdyz2530scDWHu2cphbq0qpg
	HKQO+AbXvDxv1q6SQYrWzgkH+9+bnmj9zcdgA0ne4H0HcnL2f4+WNFyD4vJjdA6NIyHHxFNL6aZX8
	GOeGfDosIfpqQTVwko79uakRxCP5Q5j2qYx1vGCI6FEAip2mLndOm1hDy4jEiCrfOlqi/K21uKO+q
	slTe089ncNNIKagir50g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ORI-000QZa-1u;
	Wed, 31 May 2023 16:12:44 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ORC-000QX0-2C
	for linux-rockchip@lists.infradead.org;
	Wed, 31 May 2023 16:12:42 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-397f10f861eso829380b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 31 May 2023 09:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549554; x=1688141554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YftW4qyrZ/kOeqZlxsqBGWXR5JeR/v1FsiZ5diM6+rQ=;
        b=mZL8Wtg1x7nV9cDMJhfLSi86kyN5jQ0oSEnOItrgapkq2IflW87cZRuwmwOrRLXHmh
         7Ij9jHBmb6R8VEFu8j2/IEVSEBzwm7AXvq7ew7Za8oQEzXdXYWuGN4AMXQdzMxeP3uh4
         NsySmX3ozY6nmCjBrTUNju5rzL7dqvqlqAOHqngCbfQ11HBtWW+Z0ygUnaXm5BGS+Ygn
         gc1n9tYkWfKbq3OjFXgp+Ql6gmXwthqM2Xn7h2aPZ24yoM+kxPFLWtEh37xAEzzvsm/w
         kdHH1JjCRDt8k2O273rugn5UMrgdWAFAVN4v/CkCcZ/m+zBAXCjfQ8Lrf7FFP4wdRfVp
         e4HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549554; x=1688141554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YftW4qyrZ/kOeqZlxsqBGWXR5JeR/v1FsiZ5diM6+rQ=;
        b=R0YOFlkXmXHGN3QKbDtdzKYM3cu6sTemsXhauiz460lCR14TW/PPTTEdzrDQBxZgrs
         lmlLH1G5R/VisUMMQSdz+6tfjlzx3nBR651yzv3ZTwkjrqGB28TDbfEYf5FABnUuto/W
         bOHqUmiulH1MR9TdIY/WtUyhOCVpHvrHscmZLKhNP1aoQrlcgMMxwVUhJ4RaRvVZkKpA
         xdycjGZhyGclWSVFC3J2yp/Wjx4l+ovOotZDE5VaiUzE8hskaUbbluQjx9UJz3DHDh4M
         /tqz145z3rT/viI0ZbH2h4St0jF94bpPCKa4kz4q/FfW7B99VZIP5tJ2UvtTwxPdiFCM
         Kc5Q==
X-Gm-Message-State: AC+VfDzxL1S0CI7uWS4eSDTTUf84b2ZrVgD1hZopXEfhDSZFUN8H2R68
	kVeifEGT4Y6GzhR/QtuxzVSfuC5v0uo=
X-Google-Smtp-Source: ACHHUZ6NZSNJPwC7hkpvi3TukgaSPrEnQHyxkgxmdVbne8PeiLy/Fk6060/ycx4S35jx4aXo+kxdUw==
X-Received: by 2002:aca:1007:0:b0:397:f439:d3f5 with SMTP id 7-20020aca1007000000b00397f439d3f5mr2689903oiq.4.1685549554500;
        Wed, 31 May 2023 09:12:34 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c3-20020a544e83000000b0039a21e8c620sm684633oiy.3.2023.05.31.09.12.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 09:12:34 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	lucas.tanure@collabora.com,
	kever.yang@rock-chips.com,
	yifeng.zhao@rock-chips.com,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@amarulasolutions.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	broonie@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/5] Add Support for RK3588s Indiedroid Nova
Date: Wed, 31 May 2023 11:12:15 -0500
Message-Id: <20230531161220.280744-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_091238_722306_95B854BF 
X-CRM114-Status: GOOD (  11.68  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the RK3588s based Indiedroid Nova. Note that this
series is dependent on regulator support for the RK806 being
upstreamed.

https://lore.kernel.org/linux-rockchip/20230515152044.GT10825@google.com/

Changes Since V1:
 - Removed changes to ES8328 codec and added a note that a permanent
   fix will be needed to cope with a 1hz mismatch between requested
   frequency and actual frequency.
 - Fixed vendor-prefixes.yaml change to alphabetical order.

Chris Morgan (5):
  arm64: dts: rockchip: add default pinctrl for rk3588 emmc
  arm64: dts: rockchip: Add sdio node to rk3588
  dt-bindings: vendor-prefixes: add Indiedroid
  dt-bindings: arm: rockchip: Add Indiedroid Nova
  arm64: dts: rockchip: Add Indiedroid Nova board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 764 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  18 +
 5 files changed, 790 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
