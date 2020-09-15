Return-Path: <SRS0=pRwE=CY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28577C433E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 16:21:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D1A4420756
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 16:21:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OL8ZoEtR"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D1A4420756
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=njSeSX1ilefUVggBXp+b1pNMZfIgVCbYnuxFyh5RX2w=; b=OL8ZoEtRRX4mVnsZB9H9rAqgET
	rTaYX/JRx/k0fhkk2R/N2rqlukHsMrY5ZjNz9gG0AhZJFFPwVz7/ek01rwzq8voPOkrl8qxDA4wvB
	WPi4AC2nW0phkjdu/MuN4NxEWMzoVV2EQX153nEOpNSJg6+d4RfIj9OWaNjRk1pj0hvZaf1dPRWZl
	LJF/TsuMnHUIzNPo3ABMZe8vjFwWNWUCtxJ0bN9Mmo052Evp4/mSmRZICF0eevNO8iB/3QdSayehu
	q6UfXNcePTmbWUKoEABHOU3XfBbMMWRvW4Zr7kiOSE3kTg3yP8ndLKjqRWGa6KAnDnKgvJYEmann3
	AY88EXxA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIDhg-0001B1-Bf; Tue, 15 Sep 2020 16:21:12 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIDhS-00016R-0P; Tue, 15 Sep 2020 16:20:59 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1kIDhJ-0007yl-QR; Tue, 15 Sep 2020 16:20:49 +0000
From: Colin King <colin.king@canonical.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Chris Zhong <zyw@rock-chips.com>, Guenter Roeck <groeck@chromium.org>,
 Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] drm/rockchip: cdn-dp: fix sign extension on an int multiply
 for a u64 result
Date: Tue, 15 Sep 2020 17:20:49 +0100
Message-Id: <20200915162049.36434-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200915_122058_173528_94B5C92E 
X-CRM114-Status: GOOD (  14.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

The variable bit_per_pix is a u8 and is promoted in the multiplication
to an int type and then sign extended to a u64. If the result of the
int multiplication is greater than 0x7fffffff then the upper 32 bits will
be set to 1 as a result of the sign extension. Avoid this by casting
tu_size_reg to u64 to avoid sign extension and also a potential overflow.

Addresses-Coverity: ("Unintended sign extension")
Fixes: 1a0f7ed3abe2 ("drm/rockchip: cdn-dp: add cdn DP support for rk3399")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-reg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
index 9d2163ef4d6e..33fb4d05c506 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
@@ -658,7 +658,7 @@ int cdn_dp_config_video(struct cdn_dp_device *dp)
 	 */
 	do {
 		tu_size_reg += 2;
-		symbol = tu_size_reg * mode->clock * bit_per_pix;
+		symbol = (u64)tu_size_reg * mode->clock * bit_per_pix;
 		do_div(symbol, dp->max_lanes * link_rate * 8);
 		rem = do_div(symbol, 1000);
 		if (tu_size_reg > 64) {
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
