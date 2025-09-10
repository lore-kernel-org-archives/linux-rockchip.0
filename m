Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CF57CAC58D
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 20:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgKvJQtxMLc7yFOF5anHUE2zA7Hn7IZMZ48RMnt+fVE=; b=u996n5ObJFENqb
	+yHPKSrvXroSnw+EgCuDSB117kSFhsZZJxkMX4AWeO2Xipu5ZoWIMnxT9e07J2ssUDA74KCSZTbR1
	U6ot/s95RBCGf0qie1xg51j9phTbTLZVE47TPMrBbsEEXsSVFpbm2eeGvM5qHpMhZCA1D+4f8yRYU
	pnUDfUdm/XKbUyVhJ90rQaS1yWa4OQ4d0hhWQRhfjybnaKWCn6lEAv32UPN9no04d0gdbZOl1ujSu
	nh+5cacYMhTWglssdNz7kLPoqDxGIygUld6bp7bYujlr6jNFBib6AtpwfFtIbqS3IzU7JqiEVk8sF
	xP3PSM2aOEl48ZKDs2zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwRPm-0000000GYGp-0iAJ;
	Wed, 10 Sep 2025 20:27:38 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwRPj-0000000GYCV-21tV
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 20:27:36 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-afcb7ae31caso1207482366b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 13:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757536053; x=1758140853; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZCjdtM0eEpQtXOsJCR0LTFHCDJOshZmMfnjYwSk9F3c=;
        b=dPmb4PrDlpNowLCFr1Gr+yYltPLUDSO4nrZpS18Uzu4osLhK936J6FbxHJA1sRP2f2
         rq1qZ8wo8r/6bVEQ4SIF6FKnxu3EB84zYBFIwcpTZ4izRCWIBzffTEBg7jcUw6VDBL6e
         8VjYGOJRPc815byJtHHBmX069KL6vkM29ThnGNSKlfFYcV5U14qENLOmtjNcPAJFKsMh
         8SifzIRBA29NLpqUZOhY7Lze9/b+DcAkqzxpFNwVSwZ+zMLC/gJhxsPdj6aOKvd41AvU
         r10DhnRj++psNWguXjIOcAd/cyqUNZWHdtCTgQvBbP2vG9t+YRG6Iq5tKZI8eNNDtAQD
         OmzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757536053; x=1758140853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZCjdtM0eEpQtXOsJCR0LTFHCDJOshZmMfnjYwSk9F3c=;
        b=QLuo1aoyurLAM5j3uNWtPZDHTDeSsYB/h0jl3jjiGZ8xQI3ZnavQ+9m5bK9rlCT7uL
         jopoJavTEVIJn4mnK38roWrEPl7ZttJGh5sIFpY0R1UuEgNcXfgbziuoz2/jazjIk3dY
         G3iqUa1H2QO4VIPCeL6snVj5g7U9P2LtnQZvsSICNtiUq0U6JkB/hrMYnyxq9zfLthr3
         OQywrj9UZgmIYPvIrG3lHAxLqP6uGmG7ig1emj9ABhnbEaYZ8MhAWdHgqZdq8CZPHwF+
         PYwZAAr/Y/Mifn2pkbkQ49/of7f2geJQFDVcR5WH0/q/eNHkv+bTaaUt5WSAf+5AQY04
         LMsA==
X-Gm-Message-State: AOJu0YyCngqw6ftvfumTMZqF/wWQEi7rLqg67zaaz2vUeqWvBhge+490
	7iJiC5K6ZUfKI8F0we0Yajp6o1IleM9iF36JPMg+RBoRFLPfD+Cc1SBqjFy+UrQc
X-Gm-Gg: ASbGncvmtjMRnPN6hOdGp8W4R8Os5+Ow2qUlIp2Ca/uemocq6DU8V8ldfoh+bHfAWQt
	/5YFbt17/7b/5Eo9YsXHwASojf9+Fu2ixMfyLIGeXCbfvkcHl2ni7WamdSV2j243xn+KobAQYS6
	LL3C1S+wgFXLjKTj3kI9vnVhsP8WRt1ucISGXxVWwnyMJX2mQXNN0iaAHCO+DK61iZeQF4B6cGn
	CwDNg6CqV50D1kqu9pHqKKmL78mT0kJCZsQMR17pjLkPk0Il7WmndPeISue8J5sObyjyT6ngcVF
	WAXKKW1Arh/iQFyHFKOMz1Ebu8rzgkkjW2gxm8P/LinPxEgtGZNvvf0dQfKcK0YsEDKjW2gVmo3
	kAHLDEhYbRHEdS4a9hNsllEsZ+7353vMq/neTesSu75EkyJI=
X-Google-Smtp-Source: AGHT+IEJ62V0ABkmrDIUXq6N6XSjPCrwIBOVYTUAHUqjVW6wiP9Hlm0GpXkkPpiFOQvsv4sp10YrAg==
X-Received: by 2002:a17:907:7290:b0:b04:6338:c936 with SMTP id a640c23a62f3a-b04b1408070mr1740776066b.17.1757536053241;
        Wed, 10 Sep 2025 13:27:33 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07834124c0sm227715466b.102.2025.09.10.13.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 13:27:32 -0700 (PDT)
From: andreili <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: andreili <andreil499@gmail.com>
Subject: [PATCH 4/5] RK3566 BTT Pi2 - Fix default values.
Date: Wed, 10 Sep 2025 22:27:00 +0200
Message-ID: <20250910202704.2191182-4-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250910202704.2191182-1-andreil499@gmail.com>
References: <20250910202704.2191182-1-andreil499@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_132735_531861_2E66CE79 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
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

Signed-off-by: andreili <andreil499@gmail.com>

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts
index 7cd444caa18b..3b04b3f7e923 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts
@@ -8,3 +8,12 @@ / {
 	model = "BigTreeTech Pi 2";
 	compatible = "bigtreetech,pi2", "rockchip,rk3566";
 };
+
+&scmi_clk {
+	rockchip,clk-init = <1104000000>;
+};
+
+/* disable all - default state */
+&fan {
+	status = "disabled";
+};
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
