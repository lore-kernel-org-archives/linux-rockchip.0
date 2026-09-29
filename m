Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7AF1CA5FA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 10:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6hQi8ozL8yotVqERjU3ATYLWeBnvGETaTtn1oP/7PNo=; b=HofsDZ7CmjgCxT
	sceG8LHD0+Nv/5iGqzobY5AIlORfV3rRYlJHIsynyArMc/afC7vzKJMSxDGnd2ZNI9SrOj6TT6e3I
	Fwp/rn/TmgIVvsTTbbAZz3WoaCf5X+2HTT4mdqLhCkGEk8QQqEjk9mNpHqXG6giEWwtKvoBWTjxdw
	wfmyCpXQq9bHiDE3XDzyaRdnCRlf83vEmvXdyYcLsr9nmicdYIe6MBCDUIs6r0D57nr28hGw8yjdc
	kZSJjqD3Gq2fXbMQKAYOlwgcUOpolYcR8jA2hL2KGp6fdXpX4lSvaZX/e0i5xAHNoHIjqlXTstWwM
	GbBQ18tnIMBGY/3NCQMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBV4g-000000039yK-2H9N;
	Tue, 29 Sep 2026 10:28:38 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBV4e-000000039xH-0dwZ
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 10:28:37 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843cedd129so2272041f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 03:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790677714; x=1791282514; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=OjnLLZEy4NZ05RWw4wcrVNfIfzQkE+4cewTuv6QJdW8=;
        b=tFmqNZiqQHRkHQzHX3AVZhY4m5KpIt0nIzJOUqE4TrcSFgUMEDYttWsenr3M6E0Vsh
         WTsZmOAgWCwRoutLg7+4+TNqqaC01mruoDPc8Qu635DG6qy7Vf/AKbvaSqAERFFH5SiL
         DCRuTX56UEe4m6h2BwgKw9l06lrFE2RmhssmAZmK8OV5IOG0qD7c6Y/XRaUbarbjb7j+
         p5AAnwXm/tNwcheboEmJg1draLeVdsyio0tQjJbPn2XjgNNuaWQSK2ymMYW5Z5qKHMhp
         uSDSC9BTXIIKHBbsgeTf2QVwBuo37cM/g6b48Jb19Do3fAv/g/pKY1mGQOujs+sYjbhE
         hr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790677714; x=1791282514;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=OjnLLZEy4NZ05RWw4wcrVNfIfzQkE+4cewTuv6QJdW8=;
        b=Mdyr73cm0KWyt22xTtPEz6JnhIxuqdvyHa77efkhJATAMRZqkkABo00qo41ePvKBYi
         HOt0YkhZv05ACzivXXX5k22qn5EHv4mfs4clNZr4MsLEWZZsnt/jHzuPtI/E/t8g8ayf
         sLDTq+bVm64TtNH3E8/vjllc0S1UXffa1Bk9UT1XoDaFQRm1L6NShcchfC8+4v4mTExU
         9LZmgXSDxJPNdZqpAv3InqIIZsGb8kuUXflOu1N6A7ppobGmq7Vf/3Q3H7jiWTg440X2
         VxJ5TuLX/RIr81tm2RphPd/3uT674c8kPnX5erO8cO7CQpuMbsoWbGO9jnUufuw+k4fo
         sZhQ==
X-Forwarded-Encrypted: i=1; AKwUvBz6r6ulDSWi96zKmronvKFYwlnyJLz6oOKsKEgTbQ3LyeHyb0tQfhm7+M+6LRpGkXKV/aJRAMmcv6RpNfSLkw==@lists.infradead.org
X-Gm-Message-State: AFuF++lZBYvSRPTtl/cWZ+v+3G4RUDBfT2B2X6G9vks+gKp9g9zy06wK
	vnkTY2LZhyVKyjz+EzWzAkDi8jqi0K9DQD8znXozWhOmpPkQILsSvwkdOhqRa2QXNK4=
X-Gm-Gg: AYBFou0etx0MX0JnTPC4vIb3AJHy4qjlYfR5PznnilajA0S6kqhzVxKe7a/4SUGCqoL
	73Ph5IQYLetoPeUTd0pYxZJ4QOyw3qPbSEWOvcFlIXQ8joLXGncEn/63EaWOWhSTYfuAuYn/P8n
	x4J1S0C4B3uUFsiftwDv9T+kCd1X4WvIpGA+cav3i2Mut0V9IG3xgn3OMpmgt2mw0WxEcOH6i2Z
	BTygC3Ge8qDgiUlj+0f9IMw1Y5in1T7ddtgLl3pX6nTH1BBtQCrrvfiKGqQBBe7GkpTgLRpfBQA
	aEyEnN+x0tUJRKLPB+49EwI+Ee66s34sXoTj+YZ2ySJ1CU12TwIv2Abn6hNNQJa/PeFXPr+JWk4
	QKEiy16gjxMlgDNIaIoVMxzHL1qPc+pTaAm/w24CVXKbtSNui32KkM0sVU4m3svSSU5ZrA0py9+
	Ri1visc8lVSEPz3GldUz+SnmmmXwTasy9bEOZf7eFbfDPlhp4ZCno4fiWeCiIsWJlC0c1d6aDoy
	bAvEwj4zBMRxMHvog==
X-Received: by 2002:a05:600c:198a:b0:49f:ce78:356c with SMTP id 5b1f17b1804b1-49fe67023femr268059845e9.29.1790677714116;
        Tue, 29 Sep 2026 03:28:34 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.93.183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a00cfb479asm66579305e9.15.2026.09.29.03.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 03:28:33 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v2 0/5] power: reset: syscon-reboot-mode: Add support for
 Rockchip RK3576 reboot modes
Date: Tue, 29 Sep 2026 14:28:17 +0400
Message-Id: <20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNTQ6CMBBGr0K6dkxpSwVX3sOwsHSQ8YeSaSUaw
 t0FPIDLl7zvfZOIyIRRHLNJMI4UKfQLqF0mmu7SXxHILyyUVFZWqgRngO+6OFhgdCEkeAaP4HU
 pDerKt9KIZTswtvTeuuf6x/HlbtikNbYaHcUU+LMdj/nq/fsYc5BgC1NaJ7XzJj+1DxoG5H2PS
 dTzPH8B4FNEVc4AAAA=
X-Change-ID: 20260928-b4-rk3576-reboot-mode-d3804e39df04
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: Alexey Charkov <alchark@flipper.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Shawn Lin <shawn.lin@rock-chips.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2582; i=alchark@flipper.net;
 h=from:subject:message-id; bh=nD0jQ0sanXtfhte+cS4Eb6xgGbAdsdiqP+FoF7tBRHM=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTtnnSR24Hn36M+tdhN73vMn2dv5+A7vic1urqA+dy0K
 GUb2eCHHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oZGOsY4RAxenAEz1tRxGhkeGK8/VXUmyZrOYcDszYNPaNR82PKzOOuRe6b9XaZNouyHDH265n3t
 KDv94cDB6pZ1E28/UYKuKxnWzJsVOrauLnR14lR0A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_032836_219709_44FDEF63 
X-CRM114-Status: GOOD (  13.96  )
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

Rockchip RK3576 supports reboots with a specified boot device priority
mode, allowing one to override the board-defined strapping config and the
OTP programmed priority setting.

Supporting it requires several changes though:
- The boot mode request needs to be forwarded via TF-A to the boot ROM
  (upstream since TF-A commit 2a97ba20e901 ("feat(rk3576): forward any
  boot ROM boot mode request on reset"))
- Some power supplies need to be kept active across the reboot to prevent
  early boot code from running into a synchronous abort
- The magic values for each of the supported boot modes need to be defined
  for the OS to use

This series enables the above with the RK3576 EVB1 board as the example
user. Other boards will likely need a close to identical change to make
use of this functionality, but need testing.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Changes in v2:
- Fixed a leak of the dynamically allocated syscon_rbm->supplies (Sashiko)
- Uninitialized access to supplies[].supply (Sashiko) is fixed separately in:
  https://lore.kernel.org/all/20260929-regulator-get-all-v1-1-e887c66a47f1@flipper.net/
- Link to v1: https://patch.msgid.link/20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net

To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-pm@vger.kernel.org

---
Alexey Charkov (5):
      dt-bindings: soc: rockchip: add boot ROM download boot mode
      dt-bindings: power: reset: syscon-reboot-mode: allow supplies
      power: reset: syscon-reboot-mode: enable supplies for the next stage
      arm64: dts: rockchip: add reboot-mode node to RK3576
      arm64: dts: rockchip: name the reboot mode supplies on RK3576 EVB1

 .../bindings/power/reset/syscon-reboot-mode.yaml   |  8 +++++
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts   | 16 +++++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 36 +++++++++++++++++++
 drivers/power/reset/syscon-reboot-mode.c           | 41 ++++++++++++++++++++++
 include/dt-bindings/soc/rockchip,boot-mode.h       |  2 ++
 5 files changed, 103 insertions(+)
---
base-commit: 6375e61c01e93e35ee7acd336a689ac1fae4b509
change-id: 20260928-b4-rk3576-reboot-mode-d3804e39df04

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
