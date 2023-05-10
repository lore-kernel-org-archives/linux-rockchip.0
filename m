Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2782C77B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 May 2023 16:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E/yhcxoy6cwcsZtOM3H0OVyWXDniQVOrCIR0HLJERh4=; b=1glDrS4jmB0Gea
	zStPT3CPsqXjfr6uuXYx1yS27AObTvFhnMH02QH7PA4r5BIT7/haTDSQrHcuSeOy+Ai61y6ogaLZz
	HI3oGBXUuJbG6qGbRkV/3KNVMjVqKnQVcMl8lXRSjXTWrnJNIqoxTq9KmmQ7gWvx+i3axvh7InlSM
	w8Eb3mROXEwJKa3KMWT7J1zkcQNxvUmEap2u8amz6mAmZHMwMz3/r6x2HeF2h1e/uYdXWwo3ufetT
	JfQ3e5aphKqUz0UlGE5QD0d97wTXm2+0b0HZJ+PS8++XqmXCmMe/KSs8z/nuvszI/A1nJHs9ZWYON
	aDk1iFyYMa028QzSKKpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwmWp-006Y94-0n;
	Wed, 10 May 2023 16:18:59 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwmWl-006Y8U-0Z;
	Wed, 10 May 2023 16:18:56 +0000
Received: by mail-il1-x136.google.com with SMTP id e9e14a558f8ab-331911956c3so56067925ab.1;
        Wed, 10 May 2023 09:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683735533; x=1686327533;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=voV7s248E7gIvbug1lZfTIuQben9sdww3QQZzGmRsFk=;
        b=XYEPZf0tfHEEexs2ZzM5vTzkNgJ6QvjxLjn0g3k8Mja50uGvOiDT5PWAQyPXYTgL4Q
         4Ow7rATx11mY42MgJ7z/zPj1bsKL/usl8PDFd7oAiXQA0HptpwAUHVsDkO1/iSMDrfxi
         Y4XNPzuuhKECiLHyZALmihESnIPaOWbSoaMmM1HOef+v7gZt45R8iy2I8zTdoF2Sx1Zm
         4sCxgtMonTNmP0mYa7KYZ5MpP2b1izXtOOdPI8sz4qvci0F1H1UG1nxWecaC1IU8s9xr
         jSXwf4AohepvXRg9ispxW0MhHvlFeJxzqDnwXWUAmByqQpXOwbWldQicQSulLV27fczt
         Hmkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683735533; x=1686327533;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=voV7s248E7gIvbug1lZfTIuQben9sdww3QQZzGmRsFk=;
        b=NkHXl3EqHxja7uzigVrVkltjvvjVeNrSQbSuLfauTokkZuDwHZC+LLZ3mDZ7Z9Mjzn
         qJaQCSkagZOLYvVdLbEz/JGO8crYritJm369J1AL0SnaQEjGh1grme+iPNwC0o6PCLP3
         zNfcYAwwcHaKxi++4wTVJai1N4+c52D5W7SD5Nm1u9tbwRV6dWfu1sqNu9EQa/F0NRB6
         TjUxLbWAvQwA4hb1uzkHUmv9WuLBp1vSPYXfVre4IbPm4bTWYZbB7l3DUSTKqMGSu1x1
         7mnDILnP+so1Q8yInEq0+KT52fM/lqPmR8rBZFjKNbtmo66FmJZxJFDvPz1FB6nLEm2Q
         PhHQ==
X-Gm-Message-State: AC+VfDzAvo6beAiDQJtHJ97/xrVA4YcrGRavj+vZ+gubPrsT4GSkkA9O
	obBLc3bj8twNFrQKy8JeOYk=
X-Google-Smtp-Source: ACHHUZ67bHjT+fSIecYQ6lhHmzt9xA6tcO8lP35mP2lEwHtEgEFR968NAIK3gcbaaPTDf0JlDcPvYw==
X-Received: by 2002:a05:6e02:78a:b0:335:b047:3f62 with SMTP id q10-20020a056e02078a00b00335b0473f62mr3288918ils.10.1683735532649;
        Wed, 10 May 2023 09:18:52 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id b24-20020a05663801b800b00411b6a4ab7esm3539427jaq.93.2023.05.10.09.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 May 2023 09:18:52 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: fix button reset pin for nanopi r5c
Date: Thu, 11 May 2023 00:18:50 +0800
Message-Id: <20230510161850.4866-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_091855_236694_2AE913E4 
X-CRM114-Status: GOOD (  11.99  )
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

The reset pin was wrongly assigned due to a copy/paste error,
fix it to match actual gpio pin.

While at it, remove a blank line from nanopi r5s dts.

Fixes: 05620031408a ("arm64: dts: rockchip: Add FriendlyARM NanoPi R5C")
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts
index f70ca9f0470a..c718b8dbb9c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts
@@ -106,7 +106,7 @@ pcie20_reset_pin: pcie20-reset-pin {
 
 	rockchip-key {
 		reset_button_pin: reset-button-pin {
-			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
index 2a1118f15c29..b6ad8328c7eb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
@@ -134,4 +134,3 @@ wan_led_pin: wan-led-pin {
 		};
 	};
 };
-
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
