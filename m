Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 192C2D4335E
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJrs317qxHvXHST+eVHW4fzx2JvvgeIElJJnrMSR+uU=; b=vTLsd3rvEkZopI
	tOo7bFsKBOltrAhuhhLi6ld5ap/dTIhNQ3ln0OYIbZ5OeR3E0VkAhlombFKPP0yj2u48PWYyinzcX
	Wew/kVSeRCArP3AaJgJnEIWmO2pNVUvU0cbBMxY8sH4yC76861Ocb+N1Z2YvsT+XsBAj14OccNDWi
	v8pE+pe3nyZ0AGKslFeT0qAT2wZVePUsAdA0dzjIr456ZnAb/ulXiA4ssZOVzq+abWOCRS1BbMHSe
	cWfkgZoK1SXtra+iMHNuW01AxI5o1o11tvyyA09SN0vbXwNr246wdwn8EwDl4uP7qv8J9c8CUlkfP
	niIVDSiP49hCOWpm4MCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpu3-0000000HOQ9-13i7;
	Thu, 11 Dec 2025 23:16:55 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTptz-0000000HOM6-2gUw
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 23:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=62m5HbFq/JRK/3hjm7asDbCu50y2AIWfiQ9w6RslKs4=;
	b=CMXKNPifcTJ3eNhvLgL9I54WyuBhv8Eejb1Vkf6cEQ5yVakL7HZaPF86exGHioRaYJbgeo
	2jnFRabPAYnX/VZlF6PRDucW/0QzQ74jvLLokFPX6Bbs3jbK2fu9XKvrzzoGUblJekSyFD
	1MeaWAGVvdWcGjjHTxJEyRcfDjySU9w=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-539-fw722rHeMXSnD3bWHzyO5Q-1; Thu, 11 Dec 2025 18:16:49 -0500
X-MC-Unique: fw722rHeMXSnD3bWHzyO5Q-1
X-Mimecast-MFC-AGG-ID: fw722rHeMXSnD3bWHzyO5Q_1765495009
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b51396f3efso113101585a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 15:16:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495009; x=1766099809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=62m5HbFq/JRK/3hjm7asDbCu50y2AIWfiQ9w6RslKs4=;
        b=SZAv4x6QHP6NA3r344Oag70BeZVft4UKlzIZB8Uc8WMPZNvVMInNHCImdnBnGdoaRP
         oHHO0r3Fp9qOOCYFc5jOXlu0DGcMJNcJmb22KmeKsM9rIWSuOlc5ByjcsM6YxeF4yjHX
         abPXpwZFf2/ocyUSQGg5/gLn30DU8dVvR054K7Kg64SFfucFraVhPUuVnVZiQQZdi//8
         YnYcffJeN15CADFIKqD6AHY6VAGLAsQfdhAr+EV62oOM1S80TL7dO8l/6TXl/7I0Eeqv
         0gvODDPTjP9e8aM4t52yOLamkx+AkU+Mqk6JmKTqyM9/kZEEiHDzSTeZsc/4Fey3+dQr
         b7GQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/KTR2hQZsG51rsl14Wvn9rgkAOn+lcAx9w/hqoTS/Vxpt+9oHJqf3uDn90SNNUD7RpwV4pY2JCCD8xBGH1Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YykhHj6l9q03YUws7McaXYYQUUPj/e0d6u0se2QyVpga2oytVuo
	nAlqUKoTmDESZoo2cafhM0GrodD8KUhku3heBs4MNoOhsaa9FJaiKFLeNz9V4q+JMVSYYLxmOHA
	/iJT/F8Xn38RHmhDYibTcy2dSJ1zSAitYxfz+JnhIf8fmc5Hvz4/Cvr9JcMZ5n3Y7Go0DPA5D7Q
	==
X-Gm-Gg: AY/fxX4iOsQE/nCdmD/CQDFv366EXM57A1x+pdOcTcXIe5rMevkrNQ3Zf4Z1pLUt7bM
	PoaVtkIDA2gIO0Y+gyZnD1z8uc1rbXOI5Rtvp1dRiLfGyUNIr1yKd3VN2lbPmawFfN/Sl7cw1g3
	hXjUU/SO+SRs4xkgauW1/ETpW/p40jlEyEfA4/35+Qn1OkGHUcSL+OhDpTTLbM9e/fJO/RWrEmT
	H47vGi+rx0vimL5fAJMzvcChk3Aj9WYOokTphE9/GE6RNDg69cYU3fispGhYjqSsVtjiiuvXs3W
	kq+dqzhBl3R4WOqmIleVIPX9KL3Xw6n3ul8f7587R0xOemS94XYdZumPMD3oQU17ZtN2d1PoXC5
	8oho036aivrrx04DYyEv4i2jI2TYdiUBt6EFAH16sB6iRjZRYPr8lsQ==
X-Received: by 2002:a05:620a:31a8:b0:8a9:be12:75cf with SMTP id af79cd13be357-8bb3a3888famr34767885a.61.1765495009135;
        Thu, 11 Dec 2025 15:16:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFzGfyg51QMkMX0nb0URo4omcvNBrodsNtcYzQ6shcsy/VZXilk5dO3Eb+B70Ty3ot1LOtMJA==
X-Received: by 2002:a05:620a:31a8:b0:8a9:be12:75cf with SMTP id af79cd13be357-8bb3a3888famr34762785a.61.1765495008710;
        Thu, 11 Dec 2025 15:16:48 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:16:48 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:19 +0900
Subject: [PATCH v3 1/9] phy: freescale: phy-fsl-samsung-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-1-beae3962f767@redhat.com>
References: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
In-Reply-To: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1978; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=uyarQyJgmaEeLScoBV74B9PZPRT2iTzM/dIYFjpbgc0=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy5OubvRVPFUzMfglqvZrm7+AqavlWs+rWrUvSgqu
 cN+ieikjlIWBjEuBlkxRZYluUYFEamrbO/d0WSBmcPKBDKEgYtTACYyTYKR4YrlqZuHA698WfRY
 zW9m18O8n8eYZ8/9E/SH62Giq+E3XgFGhj3SJ5lOVnSoTmeLZfR5ljSpR+/PukrH6l/eIWKHHy3
 JZAAA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: iQXQE08hPrHjf3jT9DppBxoGUJ6f71Elj-Mpy_EEE6c_1765495009
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151651_756458_DE6E0061 
X-CRM114-Status: GOOD (  12.95  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 191c282246d96e3f6c5a8d17abe078892882bf44..d010fec15671d33cc363af79e9f1c3f26ecb3464 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -570,17 +570,20 @@ const struct phy_config *fsl_samsung_hdmi_phy_find_settings(struct fsl_samsung_h
 	return fract_div_phy;
 }
 
-static long fsl_samsung_hdmi_phy_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate, unsigned long *parent_rate)
+static int fsl_samsung_hdmi_phy_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
-	const struct phy_config *target_settings = fsl_samsung_hdmi_phy_find_settings(phy, rate);
+	const struct phy_config *target_settings = fsl_samsung_hdmi_phy_find_settings(phy,
+										      req->rate);
 
 	if (target_settings == NULL)
 		return -EINVAL;
 
 	dev_dbg(phy->dev, "round_rate, closest rate = %u\n", target_settings->pixclk);
-	return target_settings->pixclk;
+	req->rate = target_settings->pixclk;
+
+	return 0;
 }
 
 static int fsl_samsung_hdmi_phy_clk_set_rate(struct clk_hw *hw,
@@ -599,7 +602,7 @@ static int fsl_samsung_hdmi_phy_clk_set_rate(struct clk_hw *hw,
 
 static const struct clk_ops phy_clk_ops = {
 	.recalc_rate = phy_clk_recalc_rate,
-	.round_rate = fsl_samsung_hdmi_phy_clk_round_rate,
+	.determine_rate = fsl_samsung_hdmi_phy_clk_determine_rate,
 	.set_rate = fsl_samsung_hdmi_phy_clk_set_rate,
 };
 

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
