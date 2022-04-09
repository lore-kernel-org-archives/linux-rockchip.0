Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (unknown [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DED67C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 15:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WpqEHCGpMTSEt9mZce0kY9+HV8U6nz5uT7GLGrguEb0=; b=Y4w1eWGhf62Kr3
	yjtJAx17iONLB2q7nFqRt+sjM2G56BSL96tSTy+hNmbQyUtBPzFzVD1eAVZJ8BTBvtzOfHlXET453
	6ewlLf2LHOUB+Kk4ns4x1wJggmEjyE4DAgy4rGzjU6SgQ2NdkV/zxXnjZpaBnu2zvnZZuVWuXHqj0
	R6xoTAwsnhnJNEPFVvmD2F6PvmIdRxdO4k4h5hp07rl7pEE8dSonU2EAC8kmq+pWctee6uG9f3kh/
	TWxm2/HGQZq5QFVxzyr0+cufOkDRR3l6bBFv5eQP4k+INcuyhJsamHJec6QAk9Hx9zDY13Ih+iY+m
	3sxueqlyB9koywh+kTxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndCu0-003OT9-RA; Sat, 09 Apr 2022 15:21:28 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndCtw-003ORI-4v
 for linux-rockchip@lists.infradead.org; Sat, 09 Apr 2022 15:21:26 +0000
Received: by mail-qv1-xf32.google.com with SMTP id p8so9771675qvv.5
 for <linux-rockchip@lists.infradead.org>; Sat, 09 Apr 2022 08:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+cC35jZSMuibIlbDfx38vUrrgkq1N8fYAn9zrEEF/JE=;
 b=iRKCQqnjzJgB+zMSPLNUcVi3w7xZfYU4XFOCFdbHx9ZJbcgAXtmiMl1765xlDsSMFM
 7W6oTqvODYt7tqyJ7u7WGLGQnhCSgmBFKRsaVqanlqzRUml38wAsOxsPNelcpZlWftD/
 lJFwAXfEXYgHEIjyypUMHJ+O67J5lMMB8G2ONqA+mGQhFZe/wyso+wxRwseEHiEKM5lQ
 +EHSqF9A1t3usbtK2yemn4UR5+16nBVQoeLW3Q4x9xTH039VJe83Nvg/Mc7YFhD5VXHw
 Mm+q+hfzDxbo850ovcxJNCNBHXdWxyclmpGoJ60BJ3JadZqknRgQUPOkshgedYWTXQ3L
 ZJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+cC35jZSMuibIlbDfx38vUrrgkq1N8fYAn9zrEEF/JE=;
 b=zxxp+O65KgVBboODfcNvNu5iFLRdSbXk2vggXLAQj767LzW9pGtWXyb6jTkiSc0CTS
 vxF2743F/k7kxLxxy84ucQS5qlCLasqmU+piVYtatXxA/C+mRx1p4tHy3PQXQac/uz7C
 xRJQbA0zZTgejcPrF48CPkqHXpH3kZLMCeCviPZKQDqpayKbLXvvKqwuhmk3+u2rOG8n
 d4U0AaxT99n+r0OgjAbJ5D5MeK7bHOQYE+M1fyL6PJpJgzhlf6Pr5XxF6d7dxcJ0NZiV
 f32OpSy4LA9+nv+A/MJmP84/Sd3zuuT+jw4rUBK+Q+qWub8SfK7QzD6uphyBcUhg4ne9
 TVOg==
X-Gm-Message-State: AOAM533hmN28zijteCAUKhKS68RaDRFbQjCtwxqQ4yxxkWgtw906QzSi
 yRuKXlspAVccb5Kbaa7dtQI=
X-Google-Smtp-Source: ABdhPJxKeuEAwnxh2dOIZwzzkEhGTq6QJurUZWwxAy7CtPbPSue+U0zKtCm1RK04b4VUUu42u3Eibw==
X-Received: by 2002:a05:6214:c2a:b0:440:f702:2195 with SMTP id
 a10-20020a0562140c2a00b00440f7022195mr20338466qvd.37.1649517681090; 
 Sat, 09 Apr 2022 08:21:21 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 az17-20020a05620a171100b00680af0db559sm16559516qkb.127.2022.04.09.08.21.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Apr 2022 08:21:20 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robert Hancock <robert.hancock@calian.com>,
 Sean Anderson <sean.anderson@seco.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] usb: dwc3: fix backwards compat with rockchip devices
Date: Sat,  9 Apr 2022 11:21:15 -0400
Message-Id: <20220409152116.3834354-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_082124_249466_FD1077E3 
X-CRM114-Status: GOOD (  14.12  )
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

Commit 33fb697ec7e5 ("usb: dwc3: Get clocks individually") moved from
the clk_bulk api to individual clocks, following the snps,dwc3.yaml
dt-binding for clock names.
Unfortunately the rk3328 (and upcoming rk356x support) use the
rockchip,dwc3.yaml which has different clock names, which are common on
devices using the glue layer.
The rk3328 does not use a glue layer, but attaches directly to the dwc3
core driver.
The offending patch series failed to account for this, thus dwc3 was
broken on rk3328.

To retain backwards compatibility with rk3328 device trees we must also
check for the alternate clock names.

Fixes: 33fb697ec7e5 ("usb: dwc3: Get clocks individually")

Reported-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

This patch is standalone to fix the backwards compatibility, and is
necessary no matter if we decide to retain the clock names in
rockchip,dwc3.yaml as is or align with snps,dwc3.yaml.

 drivers/usb/dwc3/core.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 1170b800acdc..5bfd3e88af35 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1690,21 +1690,44 @@ static int dwc3_probe(struct platform_device *pdev)
 		/*
 		 * Clocks are optional, but new DT platforms should support all
 		 * clocks as required by the DT-binding.
+		 * Some devices have different clock names in legacy device trees,
+		 * check for them to retain backwards compatibility.
 		 */
 		dwc->bus_clk = devm_clk_get_optional(dev, "bus_early");
 		if (IS_ERR(dwc->bus_clk))
 			return dev_err_probe(dev, PTR_ERR(dwc->bus_clk),
 					     "could not get bus clock\n");
 
+		if (dwc->bus_clk == NULL) {
+			dwc->bus_clk = devm_clk_get_optional(dev, "bus_clk");
+			if (IS_ERR(dwc->bus_clk))
+				return dev_err_probe(dev, PTR_ERR(dwc->bus_clk),
+						     "could not get bus clock\n");
+		}
+
 		dwc->ref_clk = devm_clk_get_optional(dev, "ref");
 		if (IS_ERR(dwc->ref_clk))
 			return dev_err_probe(dev, PTR_ERR(dwc->ref_clk),
 					     "could not get ref clock\n");
 
+		if (dwc->ref_clk == NULL) {
+			dwc->ref_clk = devm_clk_get_optional(dev, "ref_clk");
+			if (IS_ERR(dwc->ref_clk))
+				return dev_err_probe(dev, PTR_ERR(dwc->ref_clk),
+						     "could not get ref clock\n");
+		}
+
 		dwc->susp_clk = devm_clk_get_optional(dev, "suspend");
 		if (IS_ERR(dwc->susp_clk))
 			return dev_err_probe(dev, PTR_ERR(dwc->susp_clk),
 					     "could not get suspend clock\n");
+
+		if (dwc->susp_clk == NULL) {
+			dwc->susp_clk = devm_clk_get_optional(dev, "suspend_clk");
+			if (IS_ERR(dwc->susp_clk))
+				return dev_err_probe(dev, PTR_ERR(dwc->susp_clk),
+						     "could not get suspend clock\n");
+		}
 	}
 
 	ret = reset_control_deassert(dwc->reset);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
