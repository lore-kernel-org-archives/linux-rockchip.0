Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E37C79F82
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 11:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CKpZ2T6Jj2aZ1AK2+gzdKkLQKYlBr3gwuZhGPzAK948=; b=Ktxzr/4DDUS5Gg
	OrqzAXuGq3GTEaHENxTqIJMJb0/+kMh9hDELp/G4OyF/yhl34tYO8x9DYSw5cG23tLJvHmQoARkwq
	En25eUO0Q/177loggLru4PP1PUBQJPxsJP34a533I3vPRBlwLk0iaxAdtkDOLm3bXPssUJT4fl94u
	AdAflKUIWmBNtJ1FaRg2nT4rbleyy8FHrfSJfhHjJHoQMEYcgW9EYcFgBSvcbOk5AVeg3mKI6JLXr
	NPHVaaois7IeWUFo3xWpltsFYWMjBm4lj3jm6gVJPobdW+zJi6KQhUwVyzjSs6qG0x/Oik4rzRXpZ
	Plnc5gKBAGUunHCj5M4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3trT-00000008rzM-2o6Z;
	Tue, 08 Sep 2026 11:19:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3trS-00000008ryo-2IPv
	for linux-rockchip@bombadil.infradead.org;
	Tue, 08 Sep 2026 11:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=bMadN6VBiKEQvvZox4M1avk0HRML78KU4CFtSbLK3WM=; b=LdbMOPd+kvVL7VTvtUdVyO5Suf
	rTsNX+vmgMWanJkSxX3uH/YbpLUVUkk4Wqb4WnJoY2OwaSv1lx9tRcZlA2SJhiruZPdxKH5BqWNjP
	qZDVRJZPRsHP1weXz+gDH4UrQzXOmjLixXdKIeveAZSt1k7g3POrLpuCCYOnPPibPlURygTcbtqxq
	vh58cKhsKGYyJ2FYBim6Qbzv7v23mbu5lRwlnzGMNZ1ggNsKKeB5maRORa1Xt13rQSfsoopJlQCNd
	e0vPovIa02tramlgG5J+lfvo9o/E3jAxBn1/uSG77QQV0HOIU70/zsrV7mNvQOUa/iu+3EeYaPT5X
	jo8N0Uug==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3trP-0000000HKbr-0bbS
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Sep 2026 11:19:33 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49cd5faa1cfso828295e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 04:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788866369; x=1789471169; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=bMadN6VBiKEQvvZox4M1avk0HRML78KU4CFtSbLK3WM=;
        b=AF9JhU/IR58pe7w3eDczI4AY9H+JQUee9z9APaq4oCLr5BttcvOL8cYR/6K3T3vEHR
         fCup/KnqRZAeeL6RcHXUqZJrxGee5w73Q1/S8a+3nhrfmRKlcNyiUCeZ6kE+zn2lING8
         GslvXBoD5UFUdv/UZ0QsJ7Wu7rr7FzW8eHtyG1gWqPtjBaIEW3yHMHjtTPbiIXj4jf3u
         wmj+RTyuGeVxWAQ4kYRT0pd9FSiZRlLvUbvQNgM8TRsLSkCjGCLYISqmlMI/TyADpxDL
         l3fpmX575LdxSHH481mMlmuzw7v13SIsexMzbk0qegt6fYKhd4x5div98odrZqCVAPW1
         N2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788866369; x=1789471169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bMadN6VBiKEQvvZox4M1avk0HRML78KU4CFtSbLK3WM=;
        b=r/YqilpdBrSwDylwiFaVfCHd57Na2sbyiSAlb2nqjj4HyLxU/lfmZCinkU9T8GiUNS
         kFS1rDm2dBQkn6zIQQTXop3Z67gkhepm5esHwgqVmsiNgPsyVNYyW2cnpNWgeHidfvmk
         E+QaqP/NjmRp1gmAO4JS3aZ2aXB/fiQltgeYJhUlCaQl+qr2tcHD0P4FIqtMgIPKHAR5
         wat/TEzjcKrVR8qlqknFOLli/o7Lh3eLUZClGUjmY6iIlRZEwKDsioqa0UEBvDikMIvA
         vJsPWuc92dmVAe8cn/+xT1p3LJnmEH86eGa8nrWUatI0T9O4x4lLoVBThExW6jS/yVer
         S18Q==
X-Forwarded-Encrypted: i=1; AKwUvBwi626laQmjFdC0fqma03zsC7ceBYR1lcKKmIWTIxbj5A8wdccTDdB2ASNUINngATrvwy5UXJlRQH6qLdiRew==@lists.infradead.org
X-Gm-Message-State: AFuF++nh9iywWnOkqgeGjThUp8E8FAy1jaTgqjRLNcdKdJKMSEPOqkzb
	TOc+9gUo6EN+7ja59Zhz6BCfQSLb7Gn4X5/UAYtWb53V9kHHuthV42sR9oQb4/DR
X-Gm-Gg: AYBFou1SX7igN1xoE8I0Kbc7a+Td2WUoLq4t9WC0YcG71y6iSjn8MMXrW77ETedkWU9
	L6KpNVQ3pq026IV/0Rzwfua4yLLcMIZwA4FE1iR8P2ZFH1FfbPJfSCy2BvDwytsDd0swiOs2YTd
	lJ+WLO8LMJRQLBggwPCTxZAfIgqPlgGuEOAmnx9XnGguy/C4uwEjjBjmAZT0iEAfxNFK/g5uk0A
	NYb5YPh8YGXlZ1mduUHkSWbqCYYTO3sUpKFMw2Sireml25qw4P61tlK3Kuj5CBmY7PzPB6YDbqN
	9Ho+3Odn8KNuz6EMY4dZ6ghWwfUXhigIYgEZDbVjrb+v/OU1iGWMp3/0Qw0Bu+A0rkAQYUAniJC
	MkhM7vKGNU1vXaY0Ot2yNQTwnotGlhA9O9YrxjpfueZR2k3yS2YsgoNCY6IQjASZEz62Hx6J97H
	4ZjlMIHWye9KfCYQaOpC0W3CFBNkImw77HG4MBF2feSNdLLZicwdGT1t99GhzPecnuHwJ0JNPOq
	qiwmwQ/uLPTZ072saWwmayH6+01dHsrZLbXWNvGoVZfq4yimMYpZOGu7UG4HcKM95zO
X-Received: by 2002:a05:600c:8b2e:b0:49c:cbf4:572b with SMTP id 5b1f17b1804b1-49d01dcc1fdmr173785985e9.2.1788866368697;
        Tue, 08 Sep 2026 04:19:28 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B825D009E74109367A274C5.dsl.pool.telekom.hu. [2001:4c4e:1b82:5d00:9e74:1093:67a2:74c5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce58da3acsm973747855e9.0.2026.09.08.04.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 04:19:28 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2] arm64: dts: rockchip: fix hym8563 interrupt pin on Orange Pi 5 Plus
Date: Tue,  8 Sep 2026 13:19:08 +0200
Message-ID: <20260908111908.19371-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_121931_263594_31754968 
X-CRM114-Status: GOOD (  17.80  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-rockchip@lists.infradead.org, Ondrej Jirman <megi@xff.cz>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The interrupt line of the hym8563 RTC on the Orange Pi 5 Plus is routed
to GPIO0_C6, not GPIO0_B0. The vendor device tree uses RK_PC6 for this
pin; the mainline board file uses RK_PB0, which does not carry the RTC
interrupt on this board.

As a result the alarm interrupt never reaches the SoC, so the RTC alarm
cannot be used as a wakeup source on this board.

This was verified on the board by enabling the alarm interrupt (AIE with
AF already set, so INT# is asserted) and sampling the EXT_PORT register
of all five GPIO banks: GPIO0_C6 is the only pad that follows AIE
(high with AIE=0, low with AIE=1, in two off/on cycles), while GPIO0_B0
stays high and its interrupt counter stays at zero.

Switch the interrupt and its pinctrl entry to GPIO0_C6. The board has an
external pull-up on this open-drain line, so no internal bias is needed.

With this change the alarm interrupt is delivered while the system is
running, and the RTC wakes the SoC out of s2idle.

Fixes: 236d225e1ee7 ("arm64: dts: rockchip: Add board device tree for rk3588-orangepi-5-plus")
Cc: stable@vger.kernel.org
Assisted-by: LLM checkpatch dtbs_check
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Reviewed-by: Ondrej Jirman <megi@xff.cz>
---
Changes in v2:
- Drop the internal pull-up: the board schematic already has an external
  pull-up on this line (Ondrej Jirman). Only the pin number changes now.
- Reworded the effect paragraphs to state only what was measured; no
  functional change.
- Link to v1: https://lore.kernel.org/all/20260906181622.11991-1-royalnet026@gmail.com/

Notes for reviewers (not part of the commit message):

Measured on an Orange Pi 5 Plus. The input levels of all five GPIO banks were
read from their EXT_PORT registers via /dev/mem while toggling the alarm
interrupt enable through /sys/class/rtc/rtc0/wakealarm; GPIO0_C6 was the only
pad that followed it.

The s2idle wakeup was measured with the v1 form of this patch (same pin, but
with the internal pull-up still set): 'PM: Triggering wakeup from IRQ 52'.
With bias-disable, as posted here, I re-checked that the alarm interrupt still
increments the hym8563 interrupt count at the programmed alarm time, with no
spurious interrupts on the level-low line.

Note that on this board the resume itself can still stall later in the USB 2.0
host controllers (a separate issue reported in [1]); with those controllers
unbound the full s2idle cycle completes. It does not affect this fix.

[1] https://lore.kernel.org/all/20260907190000.s2idle-usb2-resume-royalnet026@gmail.com/

 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 145986695720..3f2806284754 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -189,7 +189,7 @@ &hdptxphy1 {
 
 &hym8563 {
 	interrupt-parent = <&gpio0>;
-	interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+	interrupts = <RK_PC6 IRQ_TYPE_LEVEL_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hym8563_int>;
 };
@@ -298,7 +298,7 @@ hdmi1_tx_on_h: hdmi1-tx-on-h {
 
 	hym8563 {
 		hym8563_int: hym8563-int {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 

base-commit: 1fc5a74b108fc90951890ec513ac81869f5eaff1
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
