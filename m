Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9188BC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 00:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8m5fSS0DA/8smYuM9AzVCju9n4qEmEV5Od4IlNl0S0=; b=OPIDUKzUCSGVNr
	7J3m94J2JMZ1psMnAfZbGxo4KysMruglUyf7Vn4ekfmvN7vddfat4zA5i4YpHekpqIKYc+Cz/Nb95
	cq9w24rhnJHAEu8kxW2DVxJCwJBYIMk6AP4nXuchaxdPdIWXz7Fr0r6oRySbhh9dJSHcksndyq+GT
	GW6N04we2jAPL4NdiODIqHVi21M9+2zGSPzvtO9NazR4uegjhBppkgy0RlOHQPaSRvF3QS9BXI3Fl
	hQKhfz4OG3U7rp+5jtIbHdXuvC422Bf0Ye+0lHUcoCz0GQNE43Jt/RGLvHAp+n3YgTBuvQWe68ORy
	xodkZA4BhqmSA/5qQpng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olJ3a-007182-Mi; Thu, 20 Oct 2022 00:05:06 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olJ2v-006xSG-1D
	for linux-rockchip@lists.infradead.org; Thu, 20 Oct 2022 00:04:26 +0000
Received: by mail-pf1-x431.google.com with SMTP id i3so18718657pfk.9
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Oct 2022 17:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JFEAuRVxYze/rS1o+HmtzgS2VnFodVUCCckeeNQBPJo=;
        b=Qaz4H1KwKV2rEH1XylJDVh+Jyd+kjjCT40sHv0yltr24IPXS3A7bCxHahuIbL/aKxK
         HQymcu6lvjyUm4M3opQtknDcwkb3CpXipIAuZsVPTT02+205ImH7Ygnwl0k1o1zk3Lfe
         PIFtNfZeI46Af+097eiyWVE6XVf79YgCLePDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JFEAuRVxYze/rS1o+HmtzgS2VnFodVUCCckeeNQBPJo=;
        b=L8TAurMiK7MzLciIGBgMjhzxsjNvqgr5ZNgrXGCDOOHtDq6VvJafQI9atQ6sICkJdm
         1fQZgu0LZCXCkPRd5VCRkpJLU8pOPk5BNww8iiYKNecVJPokpD2vLaQ633QYEjYDLMz9
         2d+mfLnSP0ZfhH+kxTakfa12M04Fj0HsMJgW9AtA4x0/+gulhv8TsPAk45WzdvDlGibi
         KznUmwzJux0lu+4322+yua3/uiZYs/wxRbO0vvHQkdndUEUlBILmKCnPdojxLgwrG7DO
         9lBpIyBvNZNtN/PxR7At8zcV5d8G7OAV9vvA76qaCxaA2vUTrkqoCJF45rKW9TI7zl8d
         fRbA==
X-Gm-Message-State: ACrzQf37wTXK4dz3fPJ+eCsmuN5dm+xMBwzjNEaTAo6Idcdo2wptELsq
	g5nNtf3xOC2mCYDCBtDAaPxQTQ==
X-Google-Smtp-Source: AMsMyM4/WuzkNI/KO9rd2JcSdJmmamHNIYsZ7bctseAbBQ/6EBWhOKRYCFsmPMPJl382wA/rvveujQ==
X-Received: by 2002:a63:4426:0:b0:464:4e1d:80e3 with SMTP id r38-20020a634426000000b004644e1d80e3mr9460506pga.106.1666224263585;
        Wed, 19 Oct 2022 17:04:23 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:57b7:1f0e:44d1:f252])
        by smtp.gmail.com with UTF8SMTPSA id b11-20020a17090a6acb00b00200a85fa777sm541885pjm.1.2022.10.19.17.04.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 17:04:23 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
	Helen Koike <helen.koike@collabora.com>,
	Brian Norris <briannorris@chromium.org>,
	stable@vger.kernel.org
Subject: [PATCH 2/2] drm/rockchip: dsi: Force synchronous probe
Date: Wed, 19 Oct 2022 17:03:49 -0700
Message-Id: <20221019170255.2.I6b985b0ca372b7e35c6d9ea970b24bcb262d4fc1@changeid>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
In-Reply-To: <20221019170255.1.Ia68dfb27b835d31d22bfe23812baf366ee1c6eac@changeid>
References: <20221019170255.1.Ia68dfb27b835d31d22bfe23812baf366ee1c6eac@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_170425_111555_47CF75EA 
X-CRM114-Status: GOOD (  11.43  )
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

We can't safely probe a dual-DSI display asynchronously
(driver_async_probe='*' or driver_async_probe='dw-mipi-dsi-rockchip'
cmdline), because dw_mipi_dsi_rockchip_find_second() pokes one DSI
device's drvdata from the other device without any locking.

Request synchronous probe, at least until this driver learns some
appropriate locking for dual-DSI initialization.

Cc: <stable@vger.kernel.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index d222c6811207..528ddce144e5 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -1689,5 +1689,11 @@ struct platform_driver dw_mipi_dsi_rockchip_driver = {
 		.of_match_table = dw_mipi_dsi_rockchip_dt_ids,
 		.pm	= &dw_mipi_dsi_rockchip_pm_ops,
 		.name	= "dw-mipi-dsi-rockchip",
+		/*
+		 * For dual-DSI display, one DSI pokes at the other DSI's
+		 * drvdata in dw_mipi_dsi_rockchip_find_second(). This is not
+		 * safe for asynchronous probe.
+		 */
+		.probe_type = PROBE_FORCE_SYNCHRONOUS,
 	},
 };
-- 
2.38.0.413.g74048e4d9e-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
