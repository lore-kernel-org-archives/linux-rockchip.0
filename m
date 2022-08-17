Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B76AEC2BB41
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 19:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rn4cZLmJ3B/OM3FBVcJQciPuCC2xuF7PaoSF1AUTBE=; b=EqKvFAtJYdHMng
	P1sKAvHh4k9ylho1RBZw7vDZVUrIFGS35/sUgC5DCMNEd30FTTiGDBm2r+Rjd7aqnNwygBFsAfA8D
	yKc/KVARUmZvBnuByzmk7mV2Fax+VO9k0gAfAjLL4HspLlUUBHxUMwjyLMTRTUNnhYgHWll07EGSU
	nWSHYmU0o8iMgektVw5/vkOjbHVhjkyjUla7ryezgqTIJY+THkLMTAC8SUGrLPYzPie/ubR/rhfX2
	kXA9CUNRm/Xkk3ecQi61b0n2yfee1gtHl4CQvj2C4rBn9189V0+Qx1RG0TvCNWbZMST3fa9RIQ7H1
	qY5NAENjs4rWPFj67JnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOOoE-005mNW-GE; Wed, 17 Aug 2022 19:34:34 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOOnn-005m0z-UL
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 19:34:09 +0000
Received: by mail-pj1-x102f.google.com with SMTP id a8so13352646pjg.5
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Aug 2022 12:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=6RHcvjaCTPAfT8h1N5wBVD9wSvcedQM4lOCspuuG4xc=;
        b=cO0Z5mXELmshBLobj7IgiqoNHNutDLaizvP+O7nv/jWrsKaZs30CXf7gkOEHBAwprH
         URH91MxuOCcYIx0mFRSgaXcgVkSw0p8qLnYxzdBo+65JczWSwEjU4Z+nY4/yUyHK6VzD
         aJP7tct/qG94KhPe58JHO6yEIXnLsmxr8fCEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=6RHcvjaCTPAfT8h1N5wBVD9wSvcedQM4lOCspuuG4xc=;
        b=Qx+KW2eFkkl+6gfUpGYgjr7WDJG1ldZiNN24UROy4orbOml3LVyYehevMYroMUzYvA
         82/rF3jIKJa8BZDv0qt6H7qa6fiTyi4sCTu0Qa7yxXo6gnlAJpeliM7J8CdFuEacvNP5
         xUFqMACbMAP4z948rbrLLGDs0jI0JEIBLzAnQPBsbNDBPK0XvzYrwTDoOydGpP9OMbye
         YuXACpM8GCptZ2hB8mMf2UGCTM6JKbl6c9sgJm2neYZSZos6kgGH8GYnbMnPva0ggv7m
         tHTdsO55DhU3UlXZPVzDE2aM3V/QLpIVCrsmrLvuYCFiT9dlBwRY6CXwlXgNAdB7oMMq
         atwA==
X-Gm-Message-State: ACgBeo2pfz+nygwEuUspcLVl1IH7yyFfDm9XmswcAbipm/x0zPqKQKTu
	73kaBXtlDB7+PuhOzPBw6dDhiA==
X-Google-Smtp-Source: AA6agR5cstItY77u+hnv1pO2pitjhFoBMfkmzJzeoUm5cjHXrFhSbC/LvnyxdfKTbVNLc26ZXdTVMg==
X-Received: by 2002:a17:90a:de13:b0:1f7:4bd3:36ec with SMTP id m19-20020a17090ade1300b001f74bd336ecmr5151598pjv.179.1660764844830;
        Wed, 17 Aug 2022 12:34:04 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:256f:e7cd:3f8c:19fd])
        by smtp.gmail.com with UTF8SMTPSA id nh14-20020a17090b364e00b001fa867105a3sm1964918pjb.4.2022.08.17.12.34.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Aug 2022 12:34:04 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	Brian Norris <briannorris@chromium.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: Support gru-scarlet sku{2,4} variants
Date: Wed, 17 Aug 2022 12:33:56 -0700
Message-Id: <20220817123350.2.I5f4fd0808a927b08e267c189712fb4a85931fd3b@changeid>
X-Mailer: git-send-email 2.37.1.595.g718a3a8f04-goog
In-Reply-To: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
References: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_123408_060796_7CD7294B 
X-CRM114-Status: GOOD (  11.58  )
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

The Gru-Scarlet family includes a variety of SKU identifiers, using
parts of a 3-bit space {0..7}. SKU2 and SKU4 devices (under a few
different manufacturer names) also use the Innolux display.

Without this, a SKU2 device may non-deterministically (depending on the
matching order of DTBs and bootloader behavior) select either one of the
INX DTBs (rk3399-gru-scarlet-dumo.dtb or rk3399-gru-scarlet-inx.dtb) or
the KingDisplay DTB (rk3399-gru-scarlet-kd.dtb), to ill effect.

For reference, the original vendor tree source:

CHROMIUM: arm64: dts: rockchip: add sku{0,2,4} compatibility
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/f6ed665c9e2eb37fb2680debbb36ec9fb0e8fb97

CHROMIUM: arm64: dts: rockchip: scarlet: add SKU0 device tree
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/9987c8776f4b087d135d761e59f7fa6cc83fc7fc

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 .../boot/dts/rockchip/rk3399-gru-scarlet-inx.dts   | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dts
index 2d721a974790..5d1879033e7c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dts
@@ -11,17 +11,29 @@
 
 / {
 	model = "Google Scarlet";
-	compatible = "google,scarlet-rev15-sku6", "google,scarlet-rev15",
+	compatible = "google,scarlet-rev15-sku2", "google,scarlet-rev15-sku4",
+		     "google,scarlet-rev15-sku6", "google,scarlet-rev15",
+		     "google,scarlet-rev14-sku2", "google,scarlet-rev14-sku4",
 		     "google,scarlet-rev14-sku6", "google,scarlet-rev14",
+		     "google,scarlet-rev13-sku2", "google,scarlet-rev13-sku4",
 		     "google,scarlet-rev13-sku6", "google,scarlet-rev13",
+		     "google,scarlet-rev12-sku2", "google,scarlet-rev12-sku4",
 		     "google,scarlet-rev12-sku6", "google,scarlet-rev12",
+		     "google,scarlet-rev11-sku2", "google,scarlet-rev11-sku4",
 		     "google,scarlet-rev11-sku6", "google,scarlet-rev11",
+		     "google,scarlet-rev10-sku2", "google,scarlet-rev10-sku4",
 		     "google,scarlet-rev10-sku6", "google,scarlet-rev10",
+		     "google,scarlet-rev9-sku2",  "google,scarlet-rev9-sku4",
 		     "google,scarlet-rev9-sku6",  "google,scarlet-rev9",
+		     "google,scarlet-rev8-sku2",  "google,scarlet-rev8-sku4",
 		     "google,scarlet-rev8-sku6",  "google,scarlet-rev8",
+		     "google,scarlet-rev7-sku2",  "google,scarlet-rev7-sku4",
 		     "google,scarlet-rev7-sku6",  "google,scarlet-rev7",
+		     "google,scarlet-rev6-sku2",  "google,scarlet-rev6-sku4",
 		     "google,scarlet-rev6-sku6",  "google,scarlet-rev6",
+		     "google,scarlet-rev5-sku2",  "google,scarlet-rev5-sku4",
 		     "google,scarlet-rev5-sku6",  "google,scarlet-rev5",
+		     "google,scarlet-rev4-sku2",  "google,scarlet-rev4-sku4",
 		     "google,scarlet-rev4-sku6",  "google,scarlet-rev4",
 		     "google,scarlet", "google,gru", "rockchip,rk3399";
 };
-- 
2.37.1.595.g718a3a8f04-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
