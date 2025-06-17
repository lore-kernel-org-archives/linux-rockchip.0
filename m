Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F66DC71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 22:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4bu6xzk/CEl5aVmQ1J9WzkOOFpBZVgHrrk1aYbh6BLw=; b=Mfu4k43z2y3l/I
	opt9VNBbLcBzxEnBE5u7SN9TtStpeiPBkLh9GzmjmLeGjTyZWp/feA+EqEca3F6Z6djf0H73sGbgR
	RRpKSGAoVUW35zKZBIDwHETzdC3BFDHhMA7gOJNiyEjBULBNsCeTJ+opjRb8SW5X51DeB46n7jmjb
	2pT0BR1c+O7Y2nE/k1WCyKlWpmgMdj/42BemhJtSfMiSoSNvBicvEOMTnZf31FIiYx6yB3kTTt0QI
	0PXLUQLVkHYM/6Hpcum7HvKXOUHQ76UBL3ctUilJ5OlQVIEEgBz3X7z4RPs5WCoChqyssX6LGqYPc
	vS/Vx0Czdfn3p10gmbqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uReXg-00000008UM9-2jKN;
	Tue, 17 Jun 2025 22:12:32 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uReXe-00000008UL8-0RCt
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 22:12:31 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-3122a63201bso5882395a91.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 15:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750198349; x=1750803149; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BKH4UrAHhOah9Nma21oGP9V2LUXoZwe3ujsfHTgLwZs=;
        b=Wx+7nNFeQjixz7ftsSa5Fpt1Wf69cGf8FYizdAwU9UnV5aNKfQWq8WOVZyawwPGain
         Ry0Yh5UhoNhnzSxRqru10Oi19J123oTJ4Bc5+FM287GtEm926eVWXJQLHUT+2kiCf9hz
         E8DFpSODZ0Rv/ZcO+QMSi42nZnIn0v5X63ViN46P1yp97rGmK5aVPIUNuAE4zbsNOVtM
         a9UQp7dsEZQxCIXtPeS4LBj9Ae3v6zKldt2moPOua1BZIf/XDNZfu5vu+X3FgxSTgra6
         rARBr/0SiU1B+IUEzYOg+56UsYggBbyxznTXsiway96t5+67OIwibzg3TbUaDj1drXdg
         g+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750198349; x=1750803149;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BKH4UrAHhOah9Nma21oGP9V2LUXoZwe3ujsfHTgLwZs=;
        b=H/2WEAzagIs9hYqvEmDzXfRYhx4gWf/zqX1lgzNC5e7APquVklvBCORVQDjgJ+SW6E
         SmsElxXMvebHvuJZ1AmJDo+JVZt9glHUWZES0I6+vehLUJ8HBj2F41YEixeUQ9z59qDJ
         hGdknT8Ebx1FLe0gAW9Ut14+eXSRSHGeuG3SYg0To/pajbdJEYZBm/bu9eVbDWs6+U7P
         WfCa45af5XG6Blzfje5hKhg4SrqEPFv9AX/s0bTGefUUMkAgZjoLIh8u7Qi2qZ8lRW+K
         30/YeEGAO4dMMU0E7BzugSy/l7iED1vBOXYoECgVG3FU2rdcJQSJTRjwhQovzPY9Lsyn
         4mZg==
X-Forwarded-Encrypted: i=1; AJvYcCVnEwlnVLnL2c3feAoQkqJk36TgPhsuEduZOjw9MGFM5BQ8JAJfcp+hVYfNODt6qUkF44g+u9rAq8bLvTiqcQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXE+HPlHUg93gh0555A2GClxreqSyM3nm8n3uuyYjz4q2ojeZh
	P7wzoir1CxEbqlxslrWm8pEV8+zb95ZY3SwDjPE+YrBnVgYYm3sDFDQr
X-Gm-Gg: ASbGncudNhk3Bi2nKImYzFlGwhZHHPQd8b6IxQpz/XLFML+vqtA2EhAb5jHCDYsNyKp
	WMp078vvNZTHQI+/dgkYOnNvXfcL8UAMAZl6pMC9/Ynbjd0lLcwEI1bqNpR1T0thQipObpT+Hxk
	2cDFkHea0LaeYhiM/REb362i0BzElyblQc3wyB7rsJKXppN0FtyV3nYHCdWSy97OuPMOLjKIwF7
	Q+79rhdwtYH9wBc6x0u4c3B6pOdu3niI1CHUbovWiTveGWWYsde967K+xJJkZnJfClWebDQbcvD
	Q6cbZOV1p7m+soVRTuRfxVVymucx5VXygnkXBRPU4Se6doA2GRe9DF+bISkLyg==
X-Google-Smtp-Source: AGHT+IHfxEMFqwig695MprualdP+GZmtfO5tuTvZ8Lq8VdsfGlpR2m4blSerjMAnZ+9WZVEN6I2sKg==
X-Received: by 2002:a17:90b:3d0a:b0:312:18e:d930 with SMTP id 98e67ed59e1d1-313f1d4e217mr20021387a91.19.1750198348900;
        Tue, 17 Jun 2025 15:12:28 -0700 (PDT)
Received: from wash.local ([50.46.184.91])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365de781c7sm85862635ad.128.2025.06.17.15.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 15:12:28 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
Subject: [PATCH v5 0/3] Add Radxa CM5 module and IO board dts
Date: Tue, 17 Jun 2025 15:11:58 -0700
Message-Id: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC7oUWgC/43NQQ6CMBCF4auYrh1ToQPVlfcwLEo7wERLSYtEQ
 7i7lRO4/N7if6tIFJmSuB5WEWnhxGHMwONB2MGMPQG7bFHIAmUlEeKjRK0TWI/AAdyc4DWlOZL
 x0Cl3Jo3lpa5J5MIUqeP3Xr832QOnOcTPfrao3/pfd1EgQSuFrkVrqlbeem/4ebLBi2bbti8cs
 FMoxgAAAA==
X-Change-ID: 20250605-rk3588s-cm5-io-dts-upstream-f4d1e853977e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jimmy Hon <honyuenkwun@gmail.com>
Cc: Steve deRosier <derosier@cal-sierra.com>, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Joseph Kogut <joseph.kogut@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_151230_151468_7D6A7C9C 
X-CRM114-Status: GOOD (  10.69  )
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

This patch series adds initial device tree support for the Radxa CM5 SoM
and accompanying IO board.

V4 -> V5:
  Patch (2/3), per Jimmy:
  - Alias eMMC to mmc0
  - Remove unused sdio alias
  - Move gmac, hdmi0 nodes to carrier board dts

  Patch (3/3), per Jimmy:
  - Enable hdmi0_sound and i2s5_8ch
  - Remove redundant enablement of sdhci
  - Enable usb_host2_xhci

  - Tested HDMI audio

V3 -> V4:
  - Fixed XHCI initialization bug by changing try-power-role from source
    to sink

V2 -> V3:
  - Addressed YAML syntax error in dt binding (per Rob)
  - Fixed whitespace issue in dts reported by checkpatch.pl
  - Split base SoM and carrier board into separate patches
  - Added further details about the SoM and carrier to the commit
    messages

V1 -> V2:
  - Added copyright header and data sheet links
  - Removed non-existent property
  - Sorted alphabetically
  - Removed errant whitespace
  - Moved status to the end of each node
  - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
  - Removed delays from gmac with internal delay

- Link to v4: https://lore.kernel.org/r/20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
Joseph Kogut (3):
      dt-bindings: arm: rockchip: Add Radxa CM5 IO board
      arm64: dts: rockchip: Add rk3588 based Radxa CM5
      arm64: dts: rockchip: Add support for CM5 IO carrier

 .../devicetree/bindings/arm/rockchip.yaml          |   7 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 +++++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi | 135 ++++++
 4 files changed, 629 insertions(+)
---
base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
change-id: 20250605-rk3588s-cm5-io-dts-upstream-f4d1e853977e

Best regards,
-- 
Joseph Kogut <joseph.kogut@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
