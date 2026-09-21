Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2673EC982ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDaKSLxbtOi9E6Tz6DTWNUy8qPnFsHK/FNt7SMGfGgA=; b=pKl5/w7KBjKcjo
	TyjrQJtE0h3q0XTQ46ztmW8UjtIm0Czos7YzvkKKEiKLx5CsjuQnQb0bs/lLx95RgDRgWj1ACs1o/
	fJsxW/V4fPYj7c1aLrLhtAwTPiVZ3u/8p/6xQJR67F2d5HWF+BR0a+ItnpdtoPSJkWhSU+fvaO5+M
	0jF7KAdDQZyXriUrT7jf9gWYo94+2AhUPx5tK2QCMj+8zx5doLSuLF2jW6NXAv0nX+9DZLi2oReer
	JomjZhV2ibfKfK+nSQuT4QtZWt/Sh1/c6lCFRRJSlq6LBJyeuG7hQHyoxZN8A5gb5PcWqJEvxvfJh
	4lTBfJJ99cNPTicu32bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xc1-000000011s2-2hGT;
	Mon, 21 Sep 2026 06:34:49 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xbt-000000011mP-2xyx
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 06:34:42 +0000
Received: by mail-pj2-x11.google.com with SMTP id d9443c01a7336-2d747f0135fso24940425ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 23:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789972481; x=1790577281; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ht+z0CqdLRuuaIXmyH+reVuxUkKXu+3RAyjhrVxahWw=;
        b=G8R3revvVQ+ws7loJk4BSbjX4lYF5XJaPveluCzPmj+kzqYLa2+ry5O6ZNN4Mgw9de
         AqftNz14/uD/twGY1nZRQHEq9nlHSjm7tyJy4cS1Ea4qyXaBlfIaVihvg3qZ9NuZx2gM
         TMCnwu37P/YAiHxXbh0aw+lFIDY4UmeGt6TGggsHAR0XuvgwkjNHFq7liMT+tS9PeA+4
         yYaIMWMar5iLbg7B177tF/rsI61XNh65ouhSrR/u7ox4rtw4dqykoP7xd30Sru8jRfug
         HAvQklaTcDSmAJn7N0fOlG0ySDhn4gXn1pyZo3+HaXYIAQy/uG80FUtkridfOBRWxwGW
         hvSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789972481; x=1790577281;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Ht+z0CqdLRuuaIXmyH+reVuxUkKXu+3RAyjhrVxahWw=;
        b=u/XzZqCPdH5s0pvy6zOOw/PFis9NiU8eheTKQYu0Fa5C7QKvcbA1k/5uuyvvBzweXz
         zDhEzyrS1oeuN78nnka34yO8cMP9Dm77wF/lXRwsLmO7H6BRVAaqNsX2A5Um6+IiuyV4
         MYT63ZJsaitaoMS6LpuIIncVAsaojr1pdKB6HOuy7fnITS05y7S6EzmTj083OrgTcB+B
         zbn2cmAUteVrs8dYUuxUuv4y4pnq7p0KdakvHv854sfMm9Sr13kPsmE8tM51slyFPQ1s
         RINhqOU4cfHSRzZ66Ey9NMhGCMzWsVbcEzVXQuQgj6ZPHeL/WMX+udbvDTArZiDWOiy1
         +isw==
X-Gm-Message-State: AFuF++kXY6b5R9Tjolr1vbh3Ik9Kk4UDbi44aiyEqFGZ8qxfXblqNsQB
	wB7Zhv2pf04dq3dY7jZ3pLRZrdg6mZUqbX/Q+mDdk96vXXZhTX2M+kxsH3VctFdqGQc=
X-Gm-Gg: AYBFou0j7tJE8V2svQQrUs1P9aG2WLzM0ufrgPgaZJSgRjg4ZbejFfhbH65Su+RPEBi
	BWZMODOvWwxFCd4ATm85U8fTrvY3XUE/vw7Ac7kcX2+TSpRX+DUpYFy0za67OaRlGkp1Gz38dTZ
	TtMQzecx4ohSkFSZp1R+Sc8OglEopL1ospeTLD4kfqT2BTQDVcEBCoWu1Ei6UYuAJIawfk4VJz9
	SzbdBymnuy1yTz+BocsdiygdmBZubJr+3OrXDHNndCh8nAMEzPU0Dr+ZyM1lYUKhZkgsS/9vYRg
	NlGo5gdml8Gaga2fw7z5kTKxviVoCM1BJK6Eq2+SYXOYLXPwfOcIvevPaT6T+eKSE1jcYmohckZ
	2uOVxMqlbkoJtyvUz5Ja0ALQxuvlYAi1uAVBVOygXBCznUg5oOXOP/GhMTqCBkKlM2Dhom+gB3x
	+momw5FZF7I+e8cG/PX747m+khSuiZPs7JV4sXifhRVr4PMyv8ZD7GlpEn002HPs5JsVSjkbwOf
	zudEjw97QM=
X-Received: by 2002:a17:903:2c0c:b0:2dd:b3e0:850 with SMTP id d9443c01a7336-2ddb3e008d2mr136442775ad.17.1789972481120;
        Sun, 20 Sep 2026 23:34:41 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ddc179dbd5sm28173565ad.39.2026.09.20.23.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 23:34:40 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] arm64: dts: rockchip: disable unused i2s0 on rk3399-firefly
Date: Mon, 21 Sep 2026 14:34:29 +0800
Message-ID: <20260921063431.103-3-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260921063431.103-1-yaozhonguwl@gmail.com>
References: <20260921063431.103-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_233441_747380_E2F1B8F5 
X-CRM114-Status: GOOD (  13.41  )
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

The board file enables i2s0, but no sound card references it: the
on-board RT5640 is wired to i2s1 and the S/PDIF transmitter has its own
controller. Keeping it enabled starves the other controllers.

The pl330 instance that serves the audio block has six channels:

  dma-pl330 ff6d0000.dma-controller: DBUFF-32x8bytes Num_Chans-6 \
    Num_Peri-12 Num_Events-12

snd_dmaengine_pcm_register() requests the channels named in "dmas" when
the controller probes and holds them until it goes away, so this is
decided per controller and not per card. The demand is i2s0 2 + i2s1 2
+ i2s2 2 + spdif 1 = 7, one controller always loses, and which one
depends on probe order:

  rockchip-spdif ff870000.spdif: Missing dma channel for stream: 0

i2s0 cannot simply be dropped, though. Its pin groups also list
GPIO4_A0, which carries SCLK_I2S_8CH_OUT, the MCLK the codec runs on,
rather than an i2s0 data, bit clock or frame clock signal:

  i2s0-8ch-bus           ... <4 RK_PA0 1 &pcfg_pull_none>
  i2s0-8ch-bus-bclk-off  ... <4 RK_PA0 1 &pcfg_pull_none>
  i2s1-2ch-bus           ... GPIO4_A3..A7 only

  rt5640: rt5640@1c {
          clocks = <&cru SCLK_I2S_8CH_OUT>;
          clock-names = "mclk";
  };

Removing the &i2s0 override on its own would therefore leave that pin
unmuxed and analog audio dead. Both changes are required in one step:
disabling i2s0 without splitting out the MCLK pin leaves GPIO4_A0
unmuxed, while giving the new group to i2s1 without disabling i2s0
makes the two controllers contend for the same pin.

rk3399-roc-pc-plus.dts already carries the same i2s_8ch_mclk_pin split.

Measured on a Firefly-RK3399. The pin moves to the controller that
actually drives the codec:

  pin 128 (gpio4-0): ff890000.i2s function i2s1 group i2s-8ch-mclk-pin

The RT5640 and S/PDIF cards then register with no DMA errors, and a
1 kHz tone measured through the codec's internal HPOL/HPOR loopback is
unchanged (L 2135 -> 2138, R 2202 -> 2203), confirming that MCLK still
reaches the codec.

Fixes: 171582e00db1 ("arm64: dts: rockchip: add support for firefly-rk3399 board")
Assisted-by: LLM
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 2fdfdd3..dbc38dd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -628,13 +628,9 @@ accelerometer@68 {
 	};
 };
 
-&i2s0 {
-	rockchip,playback-channels = <8>;
-	rockchip,capture-channels = <8>;
-	status = "okay";
-};
-
 &i2s1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s_8ch_mclk_pin>, <&i2s1_2ch_bus>;
 	rockchip,playback-channels = <2>;
 	rockchip,capture-channels = <2>;
 	status = "okay";
@@ -689,6 +685,12 @@ ir_int: ir-int {
 		};
 	};
 
+	i2s1 {
+		i2s_8ch_mclk_pin: i2s-8ch-mclk-pin {
+			rockchip,pins = <4 RK_PA0 1 &pcfg_pull_none>;
+		};
+	};
+
 	lcd-panel {
 		lcd_panel_reset: lcd-panel-reset {
 			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
