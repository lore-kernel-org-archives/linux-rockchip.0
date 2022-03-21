Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3EC3C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHFOLl49JFqFLo5eeTvAPME/drFptQCisEDa7bkErtw=; b=OJjqspcvUwUbj6
	0jciXwYZyaB6F40ghWmhC8SZHPwD7A4fU48TZQOrtFe/El5CgZr2JkPBb67+KJyrwIOpnIaxIGBF4
	5Gy4p+fU57hZZCs7V5x9h77g9WyFiDqGLyVqCtQWC1z7+uU1vzOG2uMCRcjWJYVG1nXZpr4TOe1xt
	ugJ/uQHn+RRrEEEMkFw40QsFUM9DJmwCzA2eJ0KZeW1t7qBNAjORF8DjJvBvTBPeyl1cVoubc69yc
	AZo0SXQhhl51ls44Y8cGvrihrJduN60NabBdro4drT0yB/mHHHO5wEc4UPp7adq1CY7NVTSVow4nF
	plm+Lh+9kn29RKil0XfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOTF-008zEG-IP; Mon, 21 Mar 2022 20:17:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOK3-008te4-SK
 for linux-rockchip@bombadil.infradead.org; Mon, 21 Mar 2022 20:08:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=KKQIZ8jXpBKaieCflF0TRZBAI0CizxmrIeEedyXM13o=; b=RQN375D7TbuHDs3S95AQ1xEn1H
 98HbBCm/LylOfFDSuEp46TqUBh7oxKegjYPg563A86kW9S0935y5RC1+Lnk890igraIHaEBU1mS0H
 es9VC23NsqoPru5Xy7fX7mflVRF0bhShDUbAE2gvMpElYPuKGzg4bfdyGhbEjSiAluJiYDjgL4qJb
 LyJvI+Wd+dbTAFMwUNeWJwBlAx1kwczQyM2beaR2UEUsLNnPuzJUrutCC57F+pJchbDc+xsDpeVCE
 T/82DfMvZkH10RDcqZw4xONngjDUOOgKRJN252dgVTmwpLQVWPW/8st0/ALSzSTVgsNhtIClFSXEb
 Y0Y6nAtA==;
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOK0-003E5T-60
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:11 +0000
Received: by mail-wr1-x42b.google.com with SMTP id q8so10859684wrc.0
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KKQIZ8jXpBKaieCflF0TRZBAI0CizxmrIeEedyXM13o=;
 b=xwGWaPIxsJtw1F30UvWCKmUgnDyZOwOcJWbagXXvLSDhkHTI0ZRhzVADNnTlEyOoB0
 lwAXUoXQuz9yAaR/zpIVOVLLjkk+Zh/JkM85bx86GufMvQxoRpLXWMzCisU5ssO/i0El
 n0t2KyNfF91/u3jTzbfGpjjsAdtoN8eqvIL/YQNlQhfQ+SBU+g+GQBkMs6JdKcWXzsAX
 zXh+wqDoB+BV8aySN6zfDLPdnI/O/UA9Mu+AtefcqeIrbBRATcaQdZ1GvhCgYBV4vZ57
 pF2RezgivY0en7SmC6nV6Cy5xvXn63ExrUPdada1ZbiyeFgAvkQhuCuU8G9AhIziGYB7
 yZ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KKQIZ8jXpBKaieCflF0TRZBAI0CizxmrIeEedyXM13o=;
 b=Yy9GW2tnpu5kAJS4f7T8uH/nnjxEyl5X5IVNnugvWb4FA2+thFMyPqM03epvzvBv6z
 SnjqP70u360fEfPj32UgiZfrFgdPEj00aN79MMf0Kq6FSWYf19yLJ/FMmVjmi3JHJYux
 dIgHSMwLfo8oltJE3XeWBIJx63MUVuJd4V2Ht2rt3b8T2m8sO074/cp4G2AK8REXuXqa
 z6znXPSRtaC5522rraLv3SmNd26WttZHr+3N+1VDF3rBSzZ0O63khf9fJhxIEdn979IR
 ruM+yK8KZBeDgtBGYayRpK8TJ3vnszauAPR9IK8p7DqqYPJUSfSwkSdNuxUk+ZDNM2UT
 UF0g==
X-Gm-Message-State: AOAM532cdGWVFFGZnsHiZ9LoBeMaatxiwhFhDPBp01G9k3Fimv/+8qyP
 Dxy+q2ubSK+ZghJtDrpAiNL7Nw==
X-Google-Smtp-Source: ABdhPJwZkUNjMvKbTUN2HxHXxoH9tJ6RsaGOP6up/Huupq5DDHCueRCHLJ4pVYum6Blg/i5/uq9qXA==
X-Received: by 2002:a5d:47cc:0:b0:204:1c9d:2157 with SMTP id
 o12-20020a5d47cc000000b002041c9d2157mr2642754wrc.294.1647893286777; 
 Mon, 21 Mar 2022 13:08:06 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:08:06 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 22/26] crypto: rockchip: add support for rk3328
Date: Mon, 21 Mar 2022 20:07:35 +0000
Message-Id: <20220321200739.3572792-23-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_200808_610578_304C9B4F 
X-CRM114-Status: GOOD (  10.41  )
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

Add compatible and variant for rk3328.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 5f1422094a7f..bb1adbe947f9 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -19,6 +19,10 @@
 #include <linux/crypto.h>
 #include <linux/reset.h>
 
+static const struct rk_variant rk3328_variant = {
+	.num_instance = 1,
+};
+
 static const struct rk_variant rk3288_variant = {
 	.num_instance = 1
 };
@@ -215,6 +219,9 @@ static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto",
 	  .data = &rk3288_variant,
 	},
+	{ .compatible = "rockchip,rk3328-crypto",
+	  .data = &rk3328_variant,
+	},
 	{ .compatible = "rockchip,rk3399-crypto",
 	  .data = &rk3399_variant,
 	},
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
