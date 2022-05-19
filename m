Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B27B0C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 07:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AF9z53pfCJRtr0hREPiqzPP+Mui46heRMPw62nXVFF8=; b=FntK5s3S+Xf0pV
	qUi03bZXjjiYS148q7IOIaX9/ITc5LtyGXjU75+h5HAertp1V8t45oHMGoA35gvna1cA4IID2VArf
	z3JsnHpkDdb37Pt1HjJDpFTvoYHticJvZz87J1t2ixYmDL/Fr4W677qLphT0XM5zCeZsZXFhZ7LLX
	AnrMCFo3hqdxJntWA5HZ5fiHFcpdzgh/Eth/4wf8HF5hn5n5ZyT8gnHZucCoMzf9DVJF1EG8PDBbo
	ELCR2gmJVzBRKiRFQ0rryhjJ41ohcQyN1Z/vlYUDdo2iR0hvWXT6GcF+Dl+MwM2+s+vKf8s3mdP7D
	4ALmrcmDyqgvIjT4GI/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrax2-005e12-9d; Thu, 19 May 2022 07:52:04 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrawZ-005dgg-6s
 for linux-rockchip@lists.infradead.org; Thu, 19 May 2022 07:51:38 +0000
Received: by mail-wr1-x42c.google.com with SMTP id k30so5904831wrd.5
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 00:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cyCpX1ZmR/kf8pzgbwKyX7fP0Ivtmtw9DDuTffHF0T4=;
 b=mRbqHyr2HlEx8B9iL3PZn3B6Y/2EcOxqC7Oc10pNva4YC9BpH4UDUlJCXjzUeDYIuj
 ZpwOOGPe3exSHd6UMinRc2gLRx4/Z9ROf1Q3HTj+wc47ub5Vfc76ldTgKnxBc0wS7u7j
 bI1bfWnvn1IYn1pr1W4bAMW+UBN1nm8wBCgRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cyCpX1ZmR/kf8pzgbwKyX7fP0Ivtmtw9DDuTffHF0T4=;
 b=xapmEkIaremoXIQ1dG16McXxJkR1BqNuZCizVnOgB0epXQPFg2byxHV/GQ4K+xOyme
 kjsT4yA5wKsE8ZwS1SHclABr//DDXXl/LdtUrOK736bJr24LQ4u6ttaeTGWhNcLH/xCw
 SZsAtDqhiFW9Wzeoq54l5ZAoM4pil6GPxdWLi5LfNJ6Ud5GiDNLz/7wB7/rRZMSsscfI
 fxVAZdjQVgdXLC+94ZlgAFJXdaqr797Y37rJ/HPQs6qI8uodfG+PZfN56rbDwjgNLTjr
 1UEfspgMcUu3EjEuvnzZwVlYuoqLwW0B627US3ZiMzQZW3wuAVkQTx6pQYVPlKtb84ac
 MITg==
X-Gm-Message-State: AOAM5331jmX1j2zgRFOnSP1+rf7epamgyb0+J9QMbusPt8tN1BA0N0dE
 vHK9JoWE8EwvnqFMdf4OsxP/6w==
X-Google-Smtp-Source: ABdhPJzEJ//yF1pX5Q/0fs/Nw2UrvupH4A6Tv5qSwJnPr9e0MfJTTN+XjNenDXGXnNNXvzBojuMQag==
X-Received: by 2002:a05:6000:1a87:b0:20c:687f:6d10 with SMTP id
 f7-20020a0560001a8700b0020c687f6d10mr2791038wry.574.1652946688579; 
 Thu, 19 May 2022 00:51:28 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.station
 (net-188-217-53-154.cust.vodafonedsl.it. [188.217.53.154])
 by smtp.gmail.com with ESMTPSA id
 c6-20020a05600c4a0600b003942a244ebfsm3370254wmp.4.2022.05.19.00.51.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 00:51:28 -0700 (PDT)
From: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To: 
Cc: tommaso.merciai@amarulasolutions.com, linuxfancy@googlegroups.com,
 linux-amarula@amarulasolutions.com, michael@amarulasolutions.com,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: rockchip: px30: use rk gpio naming convention
 into reset-gpios
Date: Thu, 19 May 2022 09:51:17 +0200
Message-Id: <20220519075117.1003520-5-tommaso.merciai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220519075117.1003520-1-tommaso.merciai@amarulasolutions.com>
References: <20220519075117.1003520-1-tommaso.merciai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_005135_292020_1EE6A6FF 
X-CRM114-Status: GOOD (  11.15  )
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

Use rk gpio naming convention into reset-gpios of ov5695 camera

Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Tested-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 0d05a1b098bc..07008d84434c 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -450,8 +450,8 @@ ov5695: ov5695@36 {
 		dvdd-supply = <&vcc1v5_dvp>;
 		dovdd-supply = <&vcc1v8_dvp>;
 		pinctrl-names = "default";
-		reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
 		pinctrl-0 = <&cif_clkout_m0 &mipi_pdn>;
+		reset-gpios = <&gpio2 RK_PB6 GPIO_ACTIVE_LOW>;
 
 		port {
 			ucam_out: endpoint {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
