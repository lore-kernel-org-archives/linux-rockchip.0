Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A76AC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erBrEOKe4O2l7ph5JFwcngUwLqKSyta+MgP7QDRRyTQ=; b=cGWb7RcnQsTQd7
	zH9aAufZTqA5wJZm6/SzzNmWmB49YGOAKCEO2DoWpPJl0gCDCgL3FqUEoe/+jQyDVz3r4ViOcvs5U
	WtQPtM1+eXUzDOXtZcJj543Ocq3iMqCaUYJwqAfyu9CoZWlVtZtMfMitosNx8fBB6VTYLoUDeiSlp
	xzwXv/YG2OD0gRqePcLjYbLDJv/VivIuVUsrC2jLaHL8+RLZgMQ6jsQTIdxay1GD/nBoqUXhOOT0e
	I3/MnL+1f8a6u6O4ZV+eiiDlOKPUdHrbbsdpiHi0QFzVnAiUu36yjVjt/U9+iNFZdlnhPcNRpz+nU
	YC+fSLEskqyMroAIIx8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfFu-005uAK-O3; Tue, 08 Mar 2022 19:12:22 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfD2-005sHM-Vg
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:26 +0000
Received: by mail-pl1-x629.google.com with SMTP id q13so1795089plk.12
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NhX5SlYl7BXLmMZAasTyx4ByzRymbQLodzBvBVJqn84=;
 b=ia6LpA7WceZ4f03km26fJVpfZ4ixhMsuxFoCfP9TgIF8ypocAYjFCdR+s8YnhP9Zy4
 jCokCj4KV0dQ+s1mkZorQ2Os1jPQWNUQXHIDTUeYkJ0atBuLmIRbSOWR+ArgHYQGuOun
 QFhYo1L4C86o/w+h6WiPFMaRdpqNiP0+L5PqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NhX5SlYl7BXLmMZAasTyx4ByzRymbQLodzBvBVJqn84=;
 b=CWd3hBN1KEmrGpFVjLl6eWJta3KzWrT0/P7i4CX4BgCNJzqZPgyrDgTo+rC8OP/pn0
 1zI9qhN0aCz0EYXmcefvWLc2Y+ux4R9eYt0OLKRY0Ege3yNVVdPrNRRJR7KvgaRWyCrB
 lZMcA2DFYjzCT3WR6E/iN+T8VaFSJY13T9bCyUtTG/4MbQ0+mWukQWypf+c18rMZQV/Y
 4ipnOIepKIbhh058YEDYULijURCIb5p6XWUNiCm8jVbPCqWShPm8QSW4du1DqJf5kl7l
 PhjNcUKseY4z9qL9LPd31FuhUmpicqtNg/OcUbS+fFh9Lhi0gIWMeFuO7FTiQThlqWXE
 cjoQ==
X-Gm-Message-State: AOAM530yMElonGrSfwl3YyfU/b1gRmChupvM1A+NFCc4ZwRd+HEyFSwi
 X9sY8d9d8bMp/3SZs2R6GOxQ7g==
X-Google-Smtp-Source: ABdhPJwHFfOX969K7axpRvKBZTipkQuA9fBVIEHWS27NildAkKpn5ETWs6/B2N5QI1yzAw3MwfofWw==
X-Received: by 2002:a17:902:7e4d:b0:14f:e295:5a41 with SMTP id
 a13-20020a1709027e4d00b0014fe2955a41mr18835755pln.27.1646766564094; 
 Tue, 08 Mar 2022 11:09:24 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 w23-20020a627b17000000b004f6cf170070sm13970753pfc.186.2022.03.08.11.09.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:23 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 06/15] PM / devfreq: rk3399_dmc: Drop undocumented ondemand
 DT props
Date: Tue,  8 Mar 2022 11:08:52 -0800
Message-Id: <20220308110825.v4.6.I4bd77eb751d5bfce8346bfed576bcacb28e4550f@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110925_083211_684A05DC 
X-CRM114-Status: GOOD (  12.10  )
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

These properties are:

* undocumented
* directly representing software properties, not hardware properties
* unused (no in-tree users, yet; this IP block has so far only been used
  in downstream kernels)

Let's just stick the values that downstream users have been using
directly in the driver and call it a day.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

(no changes since v1)

 drivers/devfreq/rk3399_dmc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 293857ebfd75..e982862f6ac2 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -430,10 +430,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 		goto err_edev;
 	}
 
-	of_property_read_u32(np, "upthreshold",
-			     &data->ondemand_data.upthreshold);
-	of_property_read_u32(np, "downdifferential",
-			     &data->ondemand_data.downdifferential);
+	data->ondemand_data.upthreshold = 25;
+	data->ondemand_data.downdifferential = 15;
 
 	data->rate = clk_get_rate(data->dmc_clk);
 
-- 
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
