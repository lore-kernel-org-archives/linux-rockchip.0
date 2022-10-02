Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FE59C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3D+0o9lZ6Yf384Gf8LhJXj9TVXMfEN9w+JSNpu2dfho=; b=C0HASr7IuvwGlm
	Eoe3GxPGLvg7e9EcTR4aTP3bWTlhP/FysD/RdRNSkqBY9o0y4y8lhThnDxLTStz8FetzU6llm0swY
	yF7lxKuP/tfY+jc9Cj47Ly9Ofnri1ZpfBZ4233FuSNqGVx81nZKh4Qvm+r9nXkiD55XrThsHFEEnM
	vAnctVH63VRSElVfCF5WUUGUI20c/AswebkqwLQMTIOMKk5TdujkOUpBKx9rIGiVggZfEcQQj4T3b
	WK/4CUl95pyEO1D0EbyTurJ8r56XTJiQcRWJ907D8LMgPnkvJDI6acDliwE4PZgWM9K2xKGsDl7iX
	e/qN384pUoSd2LlipRSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjn-00040C-SB; Sun, 02 Oct 2022 06:46:07 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjU-0003qL-7X
	for linux-rockchip@lists.infradead.org; Sun, 02 Oct 2022 06:45:50 +0000
Received: by mail-ej1-x635.google.com with SMTP id kg6so1193523ejc.9
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Oct 2022 23:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=I6XMIDzmAb5OEYRQrNrBJ64J1RkMPb1xdg1o6LLrqS4=;
        b=kdPlUwALYdNbkW9cx2XLVNwgOxrzhu3xLLiNM5FmcdjmtgSxDjZiXivE9cURSlKI9G
         THB25Gxkx5t8suAAn8LL2pI7YADY+GVOgVmXbiI2zDF9bH2yHej+i0+hvqZxj0Akp/p5
         uh/tBzNaQX2p0eFbQeZw5FnMylVKKnY0W1Xc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=I6XMIDzmAb5OEYRQrNrBJ64J1RkMPb1xdg1o6LLrqS4=;
        b=buS0jBXXjxJu7nEn/txkEGpHLE2ygIe6IAMxs27wfywTRhF8nTUBvVGePJUlKMofjc
         PeKyLbefivGcmd9/ab2UT2k2BkV8AHBKIlFF0G1hmQr3fR1LJxpF/jFsMDdbVsOisfbj
         whySGkA+JiLt1UlzGLPO05gGOYagA0pvUZ6BUB9Dch4uQKblBSvvMe6BHcKtvYTMAVux
         YjOolvv4fyL4M/z2E8zBy2Yl+9u+n2grKks84goXY+G9pEpLjENfqq0OfR6E6un+GG2t
         8/aX9dv2388LfF1tn3iqeCcSLNKI20I4CTLvenKKwUOwojrWQx/XQ5oDJnONfTvV3rMM
         E2rw==
X-Gm-Message-State: ACrzQf0Uof9anBtsjVQdy0b6nYom9gW2+080g9FTLeihmpf+dQCVohT6
	Zb2CVfGdA6YWPVS05xnmWEnbxQ==
X-Google-Smtp-Source: AMsMyM42Y13+9SuPHtB+8bbihrWVsma1thKzuBn20iHav0eL1jLmBw0Y9w2/3o+fg6AJtnqVC042IA==
X-Received: by 2002:a17:907:2c67:b0:77d:740a:e9b1 with SMTP id ib7-20020a1709072c6700b0077d740ae9b1mr11198850ejc.614.1664693146999;
        Sat, 01 Oct 2022 23:45:46 -0700 (PDT)
Received: from panicking.. ([109.52.206.103])
        by smtp.gmail.com with ESMTPSA id 26-20020a170906329a00b0077f5e96129fsm3569894ejw.158.2022.10.01.23.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 23:45:46 -0700 (PDT)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-amarula@amarulasolutions.com
Subject: [RFC PATCH 2/4] phy: rockchip: Add inno_is_valid_phy_mode
Date: Sun,  2 Oct 2022 08:45:38 +0200
Message-Id: <20221002064540.2500257-3-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221002064540.2500257-1-michael@amarulasolutions.com>
References: <20221002064540.2500257-1-michael@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221001_234548_294700_663ACC24 
X-CRM114-Status: GOOD (  11.36  )
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

The function is used to avoid to enable clock on the hardware
if the mode requested is invalid

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index 630e01b5c19b..644cf73cfd53 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -217,6 +217,20 @@ static void phy_update_bits(struct inno_dsidphy *inno,
 	writel(tmp, inno->phy_base + reg);
 }
 
+static int inno_is_valid_phy_mode(struct inno_dsidphy *inno)
+{
+	switch (inno->mode) {
+	case PHY_MODE_MIPI_DPHY:
+		break;
+	case PHY_MODE_LVDS:
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+};
+
 static unsigned long inno_dsidphy_pll_calc_rate(struct inno_dsidphy *inno,
 						unsigned long rate)
 {
@@ -495,6 +509,11 @@ static void inno_dsidphy_lvds_mode_enable(struct inno_dsidphy *inno)
 static int inno_dsidphy_power_on(struct phy *phy)
 {
 	struct inno_dsidphy *inno = phy_get_drvdata(phy);
+	int ret = 0;
+
+	ret = inno_is_valid_phy_mode(inno);
+	if (ret)
+		return ret;
 
 	clk_prepare_enable(inno->pclk_phy);
 	clk_prepare_enable(inno->ref_clk);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
