Return-Path: <SRS0=kUxI=OI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C063FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Sep 2021 16:42:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E68D61108
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Sep 2021 16:42:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8E68D61108
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FOOpxMj0A9eNo12wJcFNdZP3TbPYEYd7e4KKaecOgjg=; b=b4TdJANIm7szi2
	/KEN2pt9lNQrSvtm9wHqVnFKOsDmr97pBbrV0ObO9JLuZK68Tmnm9S3FRJXcn3ikBhQrH/GM3cpY0
	CTkbXrNqn/bOsP0NjiVApKRPnjWdfD3Z96F/kPZdDhI4MBOiCLQBpvzOrqsPcR+smKHxuys/nCYDz
	I2FX4KlYkWErY/8xNMHKPgd/2uC4R7fUCVKUKLPerIi+yIt3oYujyZ+S8WoguNn2s5HxfWuR+NHgZ
	/tn2YB0CfXUwNLCh6kZNawyIF0QZ5Wx+mr0ccYwHiuNor5XbLXLFBEGvyl3xvdEnVXJd6gXsW/ApR
	YUB7WHz4R9q891jZ3r9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRdPm-00G6Wj-Vk; Sat, 18 Sep 2021 16:42:11 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRdPa-00G6Vl-6y; Sat, 18 Sep 2021 16:41:59 +0000
Received: by mail-wr1-x42a.google.com with SMTP id u18so18734504wrg.5;
 Sat, 18 Sep 2021 09:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QTKqIcca/utcTTxlHf5hXce4bNe2j9wD2CfxEiVjuFM=;
 b=XdmBouuGb1eJjc0Mdka5weBctR7j9RNQcXzM7BKsoFMapfO+4pFCKgo9+uuLcPRGi+
 7C5BJqLWqZNz3yVoLAREEKRiA4N22Iv7/LZYd7ZNa38fWZPtJx9jO5NGOlcGekdKbcdj
 PUz5h0dzFjxr4mCVBRQ7di0pRxKF9+pPmW8urs86yPbKuxb09/FNhTR2obViREJ1i+Sh
 4NoMnPSGTS90VooIupcVe8E+fMkinXa5Qq5QFumfcqwaQzrJb807DPxzcu/C9HGF80P9
 6RAEs7qcNJ/JhPu/qK8pqmtJYzmY03MhlXdbPrj6Of0pWy5pUkL4PrJHycw97t2jlV9+
 FeYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QTKqIcca/utcTTxlHf5hXce4bNe2j9wD2CfxEiVjuFM=;
 b=gODogVZmsHKS3mqsww9Sb5kQWoZ7LAqVKkyzraGJBDf1m77NCLr7Hgda4xTvn+iPCS
 st2mZWygIzB5aiRFrEM6eYxMw2mlKFVzmazWorvm9Oq6f5ZRQKgUoi9juPGqJqcN60oe
 0m4UE6H8/bMebC/aiG/qU4PUoKPsR+6pDOxlsae/IZLKtrRUPq0m95e7O6VzErHVx41R
 rE90CQEfPNHBnJufDklGurdFCf6Sl/O+9hi3VALQnXIShUGJFRO31h7L5kTDYwYh9LR8
 b96EMVBlZ+g81rRTuxq9zFpEVs0EEowk+bvGaA2RmjLi6dqIApKJ/ohct1KK9NV7TwLm
 6sMw==
X-Gm-Message-State: AOAM5337zLw7vNAWYGcySBiZNlDoxz+9W3TI/TOaF/bhAHeE+OFzZRnU
 fPJU8VkHroTcRgD0SYeBm4AargPSA9k=
X-Google-Smtp-Source: ABdhPJznYWiLeTeU4vmOa96S+2effptTpHYjKKQFxyfrHhPyPcyEb/hRezc2U/W90vQHZth/2MrEPw==
X-Received: by 2002:adf:8b19:: with SMTP id n25mr20037150wra.216.1631983316448; 
 Sat, 18 Sep 2021 09:41:56 -0700 (PDT)
Received: from tom-desktop.station (net-5-94-68-9.cust.vodafonedsl.it.
 [5.94.68.9])
 by smtp.gmail.com with ESMTPSA id j98sm10705219wrj.88.2021.09.18.09.41.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Sep 2021 09:41:55 -0700 (PDT)
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: 
Cc: tomm.merciai@gmail.com, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: fix: PCI reg address is not
 configuration space
Date: Sat, 18 Sep 2021 18:41:51 +0200
Message-Id: <20210918164153.207146-1-tomm.merciai@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210918_094158_313879_AE007D39 
X-CRM114-Status: GOOD (  11.11  )
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

Warning (pci_device_reg): /pcie@f8000000/pcie@0,0:reg: PCI reg address is not configuration space

Signed-off-by: Tommaso Merciai <tomm.merciai@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index c1bcc8ca3769..799580314c1a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -461,7 +461,7 @@ &pcie0 {
 	vpcie0v9-supply = <&pp900_pcie>;
 
 	pci_rootport: pcie@0,0 {
-		reg = <0x83000000 0x0 0x00000000 0x0 0x00000000>;
+		reg = <0x0000 0 0 0 0>;
 		#address-cells = <3>;
 		#size-cells = <2>;
 		ranges;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
