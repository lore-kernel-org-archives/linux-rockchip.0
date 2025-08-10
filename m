Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D832C87FDA
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kh1Tc+2oG4+co15//L3lIBuHxEMCUxnGDQM08BNq4M=; b=15nWMPjF6VAL7g
	VKW/r9js18ri7WgYc77QmS0d9V9JKkFAUUJti8qSV5smSkCnrOqriEONDDDwWtTUJ0anE+P0i3SiX
	/BCfUvH/OzAU+knRwEG0VmvB+NQ+Ca7Jx18RsAR73Gel+RlUE+p7thW5BfXjc89lAmDBZUp/RYpGR
	oZHhorgu9Yqior62g2jt1c39TTZCHSDNndGAuGOZKUDLmHAA47R7KiT6CHc9NYRFt+C/D1ZZQ2ETC
	XMnY6CJ3Pqt6sCQwGYjNXxUKIGca5cSQ+Orv3sAbRJ9KjI9E1mn4W34DwrrrEsZXbVWssP1njlWTW
	aNN+dM0s4jM8jcr3MMgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEk3-000000067oI-0PTp;
	Sun, 10 Aug 2025 22:42:15 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEk1-000000067nu-25y8
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1754865732; bh=omailk5J82FETW0CF3chBXgq8BxD9mp50Z7b28u4AKs=;
 b=L9CioDNTD+21gJeABvkfHFquPTv40tRlev98xXl2bIBrjDprl7Nu1tn85qDUpqd28H/UpAEa7
 CcmtDuU5dOwfjYfhkCdAgouOAA8KdBTV8Cpdh+wUpjyTIqKSfDN+E+RNE+9btDpptUSkqubYkpY
 lLAprWoSKLTukJbhrwZsNGxIdiJBKt7tCeNfFSx88q2Z9sj4agLC3UNoKQq1T8OraNqMPKOb/Ui
 KShRnrvYoqmgP9hwFn0wcUyembfcpd5fy8eIvZef3jAIMhqoVhYuShCjWnWXo6/bgLG37bzZarh
 Un8ItvN2ZqLOT4LPl9wu++RZDMt1L37d961RbamNZ9Lg==
X-Forward-Email-ID: 68990e66797ab8962779243f
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.2.4
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 4/7] media: rkvdec: Add RK3288 variant
Date: Sun, 10 Aug 2025 21:24:34 +0000
Message-ID: <20250810212454.3237486-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250810212454.3237486-1-jonas@kwiboo.se>
References: <20250810212454.3237486-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_154213_580091_DEBFA007 
X-CRM114-Status: GOOD (  10.36  )
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

From: Alex Bee <knaerzche@gmail.com>

Add a RK3288 variant, a version of the Rockchip VDEC IP that only
support HEVC decoding.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v2:
- No change
---
 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 56807122720e..c20e046205fe 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -1222,6 +1222,10 @@ static void rkvdec_watchdog_func(struct work_struct *work)
 	}
 }
 
+static const struct rkvdec_variant rk3288_rkvdec_variant = {
+	.capabilities = RKVDEC_CAPABILITY_HEVC,
+};
+
 static const struct rkvdec_variant rk3399_rkvdec_variant = {
 	.capabilities = RKVDEC_CAPABILITY_HEVC |
 			RKVDEC_CAPABILITY_H264 |
@@ -1229,6 +1233,10 @@ static const struct rkvdec_variant rk3399_rkvdec_variant = {
 };
 
 static const struct of_device_id of_rkvdec_match[] = {
+	{
+		.compatible = "rockchip,rk3288-vdec",
+		.data = &rk3288_rkvdec_variant,
+	},
 	{
 		.compatible = "rockchip,rk3399-vdec",
 		.data = &rk3399_rkvdec_variant,
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
