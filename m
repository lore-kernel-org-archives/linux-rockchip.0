Return-Path: <SRS0=2I9J=OG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70191C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 19:34:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C154610E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 19:34:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1C154610E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kogSLPtqbkogV+42Zg++rblSH9HhZnuyhaXJxnyIOgg=; b=4YJ5QnD2XeJS4D
	wB4bDFsYpsFEykBQkJg7Bd+VfTC4s3WXHl52Adlcks/ilTS/6a5ma5HQJoJuhzbu9RkBzp3YoPXeA
	ay140XeAIwjf4y41zNpufrWwTvSBp05VWbc7JtRM5JdJk4CMktN5KbUbQKNoU6K1KgGn84ppbCmcg
	BteY2XgJs9F1z3L0MKEHtK16ifwrErd9NZfD2xRm3KWZautdIhqKAnklTEf16ok9ppi6GBw9wAYqx
	R4ftEqUC6/FOIX/rLWhSMXhf2sr67aTtpdH8D8UgyAn3HlCa+AdaZHgnz9fF+ZqEBBKsIXT9IiTud
	zOsk/YwmNbEmmapGUIGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQx8y-00CGRT-8S; Thu, 16 Sep 2021 19:34:00 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQx8v-00CGR9-Ln
 for linux-rockchip@lists.infradead.org; Thu, 16 Sep 2021 19:33:59 +0000
Received: by mail-oi1-x236.google.com with SMTP id s20so10594886oiw.3
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 12:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CZPcoorTRtVxE7M+3h0YLcNGxhcvhAsboXIY+BlbX2A=;
 b=C5JdOnnNpRmIPdDWWqWMHe3o+7BxTFIyFTnDJYIkY+EbWiDuFjGvrLsuy7MFgCFbOM
 q8Kwfw6EA1uNJrx33wPzts+WmyDUbC2DpEZt+7mjS12IP8XqHJBJ5nBAPgcA7OqO2Npd
 GRXX+PIkPUWzahSjVLMmEX61ToPoR4USZ7q73/m7tL/5lWdc95C4dKraUkxPZHvU/MWQ
 OILHPmdCmFdhs7B62VFsTqaHAkQxM6qBvP3sdc0Q7Hv84OAQbwc41jTXizb259uXVMhP
 xuaVRJO4eLtFM63Q26gBl0ZOVq4++abdAzbu2KlraRCah+KSnp6ynIZSjXE3isl55ho5
 OI8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CZPcoorTRtVxE7M+3h0YLcNGxhcvhAsboXIY+BlbX2A=;
 b=cY/57SyYk+GHUeWBx3wLKNuDMkBe/AzPRse+QoyweCIZ7ZK+u9pWEi4OjA0JO0XFkF
 KV89TSZr+A09ZRUPEXxwwFFYP79MwUzb37DGpQeuLFs6/RyL1SWjRwRbQYuYzSRgduSE
 B4nGDbwb9gvhBYmnZMmIPzI86J+5LfnklWKq1IyM0neJRsofkfAE9sHknJ2GvBiDOkKA
 HXbSHzmn2R5E4Ka+uAIM22UEKKXgDy4KWJreCm0ld4nZDlrqybdwhx2zzG4XWYEBrPqn
 RUJis6cG9oq7q8chtpexKXShKjOZw+GCt5Lb0vz0SOMFveU2ocMBpEjY62xXF2GxIN1g
 nCyg==
X-Gm-Message-State: AOAM5314eOic4PRFvpor9qb2a6WvGfZHuVoHpaj9Z7kdRbZZaErx21zq
 tQzlkcu5zVnhbuggYuSBNtI1PBrYWuY=
X-Google-Smtp-Source: ABdhPJxfdWxIyzx/RNvXk7jV5b7uC/rUs5yQvp06pO3dqcpjiP8gpI5qHUAXi/CRcLoVxRofDX5ejg==
X-Received: by 2002:a54:4714:: with SMTP id k20mr1134355oik.103.1631820835063; 
 Thu, 16 Sep 2021 12:33:55 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id b11sm919458ooi.0.2021.09.16.12.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 12:33:54 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dianders@chromium.org, hjc@rock-chips.com, heiko@sntech.de,
 airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2] drm/rockchip: Update crtc fixup to account for fractional
 clk change
Date: Thu, 16 Sep 2021 14:33:43 -0500
Message-Id: <20210916193343.10206-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_123357_787027_7F933923 
X-CRM114-Status: GOOD (  28.29  )
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

Fixes commit 287422a95fe2 ("drm/rockchip: Round up _before_ giving to
the clock framework")

After commit 928f9e268611 ("clk: fractional-divider: Hide
clk_fractional_divider_ops from wide audience") was merged it appears
that the DSI panel on my Odroid Go Advance stopped working. Upon closer
examination of the problem, it looks like it was the fixup in the
rockchip_drm_vop.c file was causing the issue. The changes made to the
clk driver appear to change some assumptions made in the fixup.

After debugging the working 5.14 kernel and the no-longer working
5.15 kernel, it looks like this was broken all along but still
worked, whereas after the fractional clock change it stopped
working despite the issue (it went from sort-of broken to very broken).

In the 5.14 kernel the dclk_vopb_frac was being requested to be set to
17000999 on my board. The clock driver was taking the value of the
parent clock and attempting to divide the requested value from it
(17000000/17000999 = 0), then subtracting 1 from it (making it -1),
and running it through fls_long to get 64. It would then subtract
the value of fd->mwidth from it to get 48, and then bit shift
17000999 to the left by 48, coming up with a very large number of
7649082492112076800. This resulted in a numerator of 65535 and a
denominator of 1 from the clk driver. The driver seemingly would
try again and get a correct 1:1 value later, and then move on.

Output from my 5.14 kernel (with some printfs for good measure):
[    2.830066] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
[    2.839431] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
[    2.855980] Clock is dclk_vopb_frac
[    2.856004] Scale 64, Rate 7649082492112076800, Oldrate 17000999, Parent Rate 17000000, Best Numerator 65535, Best Denominator 1, fd->mwidth 16
[    2.903529] Clock is dclk_vopb_frac
[    2.903556] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
[    2.903579] Clock is dclk_vopb_frac
[    2.903583] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16

Contrast this with 5.15 after the clk change where the rate of 17000999
was getting passed and resulted in numerators/denomiators of 17001/
17000.

Output from my 5.15 kernel (with some printfs added for good measure):
[    2.817571] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
[    2.826975] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
[    2.843430] Rate 17000999, Parent Rate 17000000, Best Numerator 17018, Best Denominator 17017
[    2.891073] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
[    2.891269] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
[    2.891281] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000

I have tested the change extensively on my Odroid Go Advance (Rockchip
RK3326) and it appears to work well. However, this change will affect
all Rockchip SoCs that use this driver so I believe further testing
is warranted. Please note that without this change I can confirm
at least all PX30s with DSI panels will stop working with the 5.15
kernel.

Upon advice from Doug Anderson <dianders@chromium.org> it was decided
that we would first check if the clock rate can be set exactly as
requested, and only if it could not would we then add 999 to it and
attempt the process again. This way we can preserve the behavior for
clocks that still need it while resolving the specific issue for the
PX30 and DSI panels (since it is using a fractional clock).

Changes since v1:

 - Made the addition of 999 conditional based on whether the clock
   subsystem can set the actual clock rate as requested.
 - Updated the notes in the fixup routine to reflect this new behavior.
 - Added reference to original commit, as this has technically been
   broken since then however only now is it an issue due to the clock
   changes.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 26 ++++++++++-----------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index ba9e14da41b4..a25b98b7f5bd 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1174,26 +1174,24 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
 	 *
 	 * Action plan:
 	 *
-	 * 1. When DRM gives us a mode, we should add 999 Hz to it.  That way
-	 *    if the clock we need is 60000001 Hz (~60 MHz) and DRM tells us to
-	 *    make 60000 kHz then the clock framework will actually give us
-	 *    the right clock.
+	 * 1. Try to set the exact rate first, and confirm the clock framework
+	 *    can provide it.
 	 *
-	 *    NOTE: if the PLL (maybe through a divider) could actually make
-	 *    a clock rate 999 Hz higher instead of the one we want then this
-	 *    could be a problem.  Unfortunately there's not much we can do
-	 *    since it's baked into DRM to use kHz.  It shouldn't matter in
-	 *    practice since Rockchip PLLs are controlled by tables and
-	 *    even if there is a divider in the middle I wouldn't expect PLL
-	 *    rates in the table that are just a few kHz different.
+	 * 2. If the clock framework cannot provide the exact rate, we should
+	 *    add 999 Hz to the requested rate.  That way if the clock we need
+	 *    is 60000001 Hz (~60 MHz) and DRM tells us to make 60000 kHz then
+	 *    the clock framework will actually give us the right clock.
 	 *
-	 * 2. Get the clock framework to round the rate for us to tell us
+	 * 3. Get the clock framework to round the rate for us to tell us
 	 *    what it will actually make.
 	 *
-	 * 3. Store the rounded up rate so that we don't need to worry about
+	 * 4. Store the rounded up rate so that we don't need to worry about
 	 *    this in the actual clk_set_rate().
 	 */
-	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
+	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000);
+	if (rate / 1000 != adjusted_mode->clock)
+		rate = clk_round_rate(vop->dclk,
+				      adjusted_mode->clock * 1000 + 999);
 	adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
 
 	return true;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
