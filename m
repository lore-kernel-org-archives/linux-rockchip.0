Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C651C2BA12
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmltZ+izQI2VGMVFqNzZ5u7D6MgzHj3TsdfgYeA6HOI=; b=kvwGajjUk9paqx
	XJ9JQD+btb8EQhkbuUXJ6ugId+ZCB2Fnc45ZXzW3YFqtA7e46TvFjdrg1ZuK+ZzrNjRIxedAxyHbl
	Q6JaharH4U/6MqJbeJZmqiIQ+gfDG66qvoLdNQ0nqBgJqrJWGLBan9t5VmwrjrnoMfkxICSpI1djS
	hlsqn7TOecczTIeaBEYTCxBS9nTx0R80XWjNLHuJbT2mcqhKv+jY6+eeZq2cab4sJGc+hM4usRSP2
	3nZiwOauZ0/lYC8lz+34r3WilMBCBK7QLu2nUC8fjRzpGU6rIFZe+6BkBrssqhm5gt+St+LzP9+vk
	5MYqsTKJF2kLOpES4iCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWqf-00000005mfg-3VT3;
	Sat, 15 Jun 2024 17:05:53 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWq8-00000005mEx-38HL
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471104; bh=edw+pFynRH27QoyX9zOhxiRHTMZh2GXeD3zDbH9aM0s=;
 b=kgwOB6T9ULzOyWUr9ARhoa84VHR8MpP83DdZtBKx7BfN70hCPCQoh6eKUUhtLaDgxmSiWxrNS
 mYMQeiPPyuYUlA9Gx9Bu+TYqJCNO60ThAs6sSNkbp/bL3/c3VQm6QCnNmcWHYGc0LKxzVDesT+l
 jaekM0HuQ0zlKSmOqsDobkxiUkz2GkIlRngHoQy7HNmUdMt69Mgc9lMLRinQwbaIZS4ecpnTfTO
 e+H4/8XTXH6R6BF3jAqaWsH99x1/DfxzZALnFqL07VOtZepSfkp27prRW6EnnWtgMj4h00yr1/k
 Q6xtONoLwuF3fVdChuopAvi+jGBGkM5ekYoE2ZNwTu+w==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 "=?UTF-8?q?Heiko=20St=C3=BCbner?=" <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, Yakir Yang <ykk@rock-chips.com>
Subject: [PATCH 08/13] drm/rockchip: dw_hdmi: Adjust cklvl & txlvl for RF/EMI
Date: Sat, 15 Jun 2024 17:03:59 +0000
Message-ID: <20240615170417.3134517-9-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 666dc9bc24e0254b39804063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100520_909647_FCFC05CE 
X-CRM114-Status: GOOD (  12.79  )
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

From: Yakir Yang <ykk@rock-chips.com>

Dut to the high HDMI signal voltage driver, Mickey have meet
a serious RF/EMI problem, so we decided to reduce HDMI signal
voltage to a proper value.

The default params for phy is cklvl = 20 & txlvl = 13 (RF/EMI failed)
  ck: lvl = 13, term=100, vlo = 2.71, vhi=3.14, vswing = 0.43
  tx: lvl = 20, term=100, vlo = 2.81, vhi=3.16, vswing = 0.35

1. We decided to reduce voltage value to lower, but VSwing still
keep high, RF/EMI have been improved but still failed.
   ck: lvl =  6, term=100, vlo = 2.61, vhi=3.11, vswing = 0.50
   tx: lvl =  6, term=100, vlo = 2.61, vhi=3.11, vswing = 0.50

2. We try to keep voltage value and vswing both lower, then RF/EMI
test all passed  ;)
   ck: lvl = 11, term= 66, vlo = 2.68, vhi=3.09, vswing = 0.40
   tx: lvl = 11, term= 66, vlo = 2.68, vhi=3.09, vswing = 0.40
When we back to run HDMI different test and single-end test, we see
different test passed, but signle-end test failed. The oscilloscope
show that simgle-end clock's VL value is 1.78v (which remind LowLimit
should not lower then 2.6v).

3. That's to say there are some different between PHY document and
measure value. And according to experiment 2 results, we need to
higher clock voltage and lower data voltage, then we can keep RF/EMI
satisfied and single-end & differen test passed.
  ck: lvl =  9, term=100, vlo = 2.65, vhi=3.12, vswing = 0.47
  tx: lvl = 16, term=100, vlo = 2.75, vhi=3.15, vswing = 0.39

Signed-off-by: Yakir Yang <ykk@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 4acf73b5692a..205cfe02079f 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -204,7 +204,7 @@ static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
 static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
 	/*pixelclk   symbol   term   vlev*/
 	{ 74250000,  0x8009, 0x0004, 0x0272},
-	{ 148500000, 0x802b, 0x0004, 0x028d},
+	{ 165000000, 0x802b, 0x0004, 0x0209},
 	{ 297000000, 0x8039, 0x0005, 0x028d},
 	{ ~0UL,	     0x0000, 0x0000, 0x0000}
 };
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
