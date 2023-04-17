Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39E23C77B77
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLeUsNseZs2nimlIc0VRvqWyY7h0uGuqoGgwPXA747Y=; b=k3FfAFu8mdyhG8
	5DvR9HQGxVQGyCDvKAF0qjEE0wuyCifd7MzHno4SJf3ZNhSQ+8Shytw/6HgvxjEiR3t2cNBGiQssf
	Kl9peQAXlxhYhAaOBIVAR+FR35o9yQRnWJCU5tB+bsjtX/XYpZadRoyMYuSSbmLuAFV6RvGxq0fUg
	jpcC4FoREW8/pXPs0RhhOFukXO2+5E3KEm6g/gu0xvM7wjH7uvg8ndCcs552bCISoimY4ZsKMwjmL
	gwTidWCb3IQCy64w5CVFitCQaNCVfFvuNxJuADagv10icbFiol1M4rIXMRjZAqcoQFS+MFbYYUep9
	6284jJggxWPGasOSZAzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poL9b-00FXvm-1a;
	Mon, 17 Apr 2023 09:28:07 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8x-00FXGY-2S;
	Mon, 17 Apr 2023 09:27:36 +0000
Received: by mail-ej1-x630.google.com with SMTP id c9so23512661ejz.1;
        Mon, 17 Apr 2023 02:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681723647; x=1684315647;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mIzKLg4GpjOzi297VJ0dtCu0S6Mi4dppQa6/15EW5pk=;
        b=DGwKRCNVQmOXvqi1wI53bFf+tp8DMr0UfGFDldJ1hYnZv9tpCW2WTYgVa1QA17xwC+
         YHL6JmzMiuHDLrGts81MkWsgHDF66J5Oz7A1O1cbLT5vUgoWb2zKGAuGeLg4US4NBVCc
         TnirPg0MAj4NOfTESsXhbHThAQRt3lqknbPksa79D0CSSsmLz0wJvr4AIz7XKPQRsclm
         hO1GZNyXDQdgt/gmuj30I1fj1EQr6+1K/8xZF8FMiirgNLcsGg8Qxala5zqixKMi5W1B
         oa5k2wUsFNqh77QKDqnGuiaptUoWj8t3Ew2o6Cpt/e93dvnpwwwgYMrxKOEMI8D59ABU
         W7dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681723647; x=1684315647;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mIzKLg4GpjOzi297VJ0dtCu0S6Mi4dppQa6/15EW5pk=;
        b=CX+2uJ93vp0PR8t/1vw75htBOB42vtnnIIiVigtCTZaKY17cNmAiZGdWZLAlYmLLIO
         WrGUBL+WQALY395rNpJZIUcSkEbSmMhvRU9K0q6HxG2q2LhuWge23EbfFMP+dyXHrv+0
         NYm2WC5s9Nc5hHC3lG7z9IZ5Fngi8TFJjd40V1forjcU2IRBi9MvyQ9nyaOp4JTiVYDI
         tLMlOVNDQoiND7EbigM3z71itA63D2Qw+aN0ih69Z7FBNMx3Yh66jyMbXpU5bFPrNbIA
         bfXRyCbKcw5oW+bFSIrzHbp1Vs0ljFn9BshYOmzVypXVG7WsaSAKHIKPiVW8iEIU+pGO
         vZdA==
X-Gm-Message-State: AAQBX9cwo9XaLwEB3efFJonVV5EjXlwkAPcqJ31UQ+pOP1PrRz9pOU99
	ljEOWt1pzeBUBXK1+mE7Kyw=
X-Google-Smtp-Source: AKy350a1J6+gjrzwXv0Ks+vuzPkCdPg2TE3nyMnSTa1A9epJMEunrqg4MJREhDQaLIBvDxzcasA+mA==
X-Received: by 2002:a17:907:6e14:b0:94f:4bd4:36f with SMTP id sd20-20020a1709076e1400b0094f4bd4036fmr4374087ejc.64.1681723647131;
        Mon, 17 Apr 2023 02:27:27 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id p20-20020a170906615400b0094aa087578csm6398596ejl.171.2023.04.17.02.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 02:27:26 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	Damien Le Moal <dlemoal@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Brian Norris <briannorris@chromium.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 11/11] PCI: rockchip: Set address alignment for endpoint mode
Date: Mon, 17 Apr 2023 11:26:29 +0200
Message-Id: <20230417092631.347976-12-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_022727_830429_FD8152AE 
X-CRM114-Status: GOOD (  11.73  )
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

From: Damien Le Moal <dlemoal@kernel.org>

The address translation unit of the rockchip EP controller does not use
the lower 8 bits of a PCIe-space address to map local memory. Thus we
must set the align feature field to 256 to let the user know about this
constraint.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index edfced311a9f..0af0e965fb57 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -442,6 +442,7 @@ static const struct pci_epc_features rockchip_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = false,
+	.align = 256,
 };
 
 static const struct pci_epc_features*
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
