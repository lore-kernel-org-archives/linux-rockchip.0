Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7950C5DF62
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 20:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C1xa9sxTHF+qH8fQjCcVrNmjeC7FviAUEAq0QdqEPbs=; b=dW4pfdDFWkTJwL
	fHcacaDhHzXLlDHswY9NPa94TSVqREdOSzI7rMbAaRmbrXxepjrGRRI4IzKgXanQqWwEaWIpd53bX
	2IGAT7MxjYVDilmeLOjkrgyk1LP1+VVgTiH1XRFTTSmhW/wvBp/keBubxqGTBsBd0UpHeF+TWBQib
	Kt7sDyNdvJQcIurIEoBlem0YBxC+Mvs6NvE6SKnRkfuV1ElQ8MYchilaoQqWqD9Qwa+nDo83QbVB8
	yvPsKYh5ZCxAbzXHgHKFyEtFVa1mKSOG7JQF++cJszsfI8+aYGBNnQF8GP4y799UNwuLnGwwfmF/n
	jUhA95xzNHWtlX1rbhvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCoqb-00DUEq-V0; Wed, 26 Jan 2022 20:24:53 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCoqY-00DUEG-Pz
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 20:24:52 +0000
Received: by mail-qt1-x833.google.com with SMTP id e16so715686qtq.6
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jan 2022 12:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jx0fEdivrdIheYkmyUPfrhwIwpeLJHBEwq8uDdSjGFg=;
 b=nmmplP3DBvZ0FwYQd0TzFsbhI5oKxxSkpNdZtEXTpy6RAUjjL1zKnr075WtAw3Mf7j
 /R2PePkGFB+qf0lOPWUFU5ZRK/DOlsQmvZKJRa2YjM2tjoL6ZUmUN7e0Xk0Cl4jub/1K
 5dpsUF0FaBmHxtkNEaCMO6c2BcaQ/bhWTMKDRr/aXwzS1y7o6ctNg7n6y0VyGIimhqaS
 336VUgUXwWjxDWvVlT1vCHurjqIAjzbRdio4W8HrRA72txkvsZCjnFOSD5HIdwHWdfyK
 VhdlJJufslYZGSXlyU22yI/tDnE6FP/ueYbrGB0wAsiLhTCkT3XUNQWMDR0fme37CW0Z
 +m5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jx0fEdivrdIheYkmyUPfrhwIwpeLJHBEwq8uDdSjGFg=;
 b=QzSWMBGmLOGVJTQT2EduUYzhDOsG/IT1ITWzAtNlOiybkjlFbdQP17q/VMZCWGdDdT
 ha/3ac29zu/hA2xiM8Qe3s20QvAAUxaMrVMBhQ0TA9Ns5IArE8sLkn1eBWKGAvc3r+aP
 r23BuZFQ4kjQsq68se5Ui7mKhAx1ljGa3I3Jst1RtJTcu9gpyrQ7uqeTnFyAn78aA3LG
 OJHeBavtcT8q1hAqb0Lj+70ljT577QzO12c0Zmxm9HhrDzVaae4PnABJJY0bknN1qzfP
 RjmuuyD+jtfOVEoVF149mO5PDkWVltGsIgGkC8nKC9QFpc6XUKuB4lLGYi+FnBS6NIKp
 6Udw==
X-Gm-Message-State: AOAM532NqoRqnmQKFiFNKX0uCgNrPC5tdhjs4QyzwJPo0hRDjYzOOk64
 V0InekAIorv9RKwywVZH9zU=
X-Google-Smtp-Source: ABdhPJzIvG8w863V8BukY+aumjHs5OcXH1DEGp8Dr6rScyQRiIvp25H6dbt8r+PUW3hnebEVDZor7Q==
X-Received: by 2002:ac8:74cc:: with SMTP id j12mr355803qtr.374.1643228689310; 
 Wed, 26 Jan 2022 12:24:49 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id a21sm155311qta.65.2022.01.26.12.24.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Jan 2022 12:24:49 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Pierre-Hugues Husson <phh@phh.me>, Archit Taneja <architt@codeaurora.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/bridge: synopsys/dw-hdmi: set cec clock rate
Date: Wed, 26 Jan 2022 15:24:26 -0500
Message-Id: <20220126202427.3047814-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_122450_880782_CCBAD915 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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

The hdmi-cec clock must be 32khz in order for cec to work correctly.
Ensure after enabling the clock we set it in order for the hardware to
work as expected.
Warn on failure, in case this is a static clock that is slighty off.
Fixes hdmi-cec support on Rockchip devices.

Fixes: ebe32c3e282a ("drm/bridge: synopsys/dw-hdmi: Enable cec clock")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 54d8fdad395f..1a96da60e357 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -48,6 +48,9 @@
 
 #define HDMI14_MAX_TMDSCLK	340000000
 
+/* HDMI CEC needs a clock rate of 32khz */
+#define HDMI_CEC_CLK_RATE	32768
+
 enum hdmi_datamap {
 	RGB444_8B = 0x01,
 	RGB444_10B = 0x03,
@@ -3347,6 +3350,10 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
 				ret);
 			goto err_iahb;
 		}
+
+		ret = clk_set_rate(hdmi->cec_clk, HDMI_CEC_CLK_RATE);
+		if (ret)
+			dev_warn(hdmi->dev, "Cannot set HDMI cec clock rate: %d\n", ret);
 	}
 
 	/* Product and revision IDs */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
