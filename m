Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50798C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:07:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 20AB660C3F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:07:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 20AB660C3F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vylNl0hxJf8EkomKCd58ieK6gwGJ/xBVJbtchJBfa4c=; b=me5D/YbqZVxXus
	UGMTRq7cG1BvnbJmukcwcKKXOWJSN/kYoUexrZ0fYvXnoJffViBWjS1kJ1+TtNYN9DgKqVMyjHgJd
	BgV/eW5HdPu4zGkeaqQxGsTLiYMMWRdhpaI5Ycu7pAszhWt8xc/yDWmEeWLMGGn2eDLRjCb2Gyc3R
	dXHGb+LF6akYZxtqADJUQFNSyXEMPpW6cWLokKTL4P2ojRVk/amSE/C6oHljL47bUhM+rBi0YVFXq
	RnLLFbBx8fmD7OCD5i2q79s2uk4eOO79wiCXQa8OntBSojKhKQSpZ60bcl3PA9xZQjUpUMBWVQBSW
	OzhNhMJie8ThWvIfiWZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kD4-000xDt-2Q; Wed, 28 Jul 2021 14:06:58 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8k2Q-000rvp-06; Wed, 28 Jul 2021 13:56:00 +0000
Received: by mail-qk1-x72a.google.com with SMTP id az7so2246797qkb.5;
 Wed, 28 Jul 2021 06:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LMidoks8VqIeotRW3zF6aKDdq4qcQbLbMvTzDQDS3NE=;
 b=SNAMGLrcZebiKazFrHoVd9aU6/z8YYqD/8zVNXKQQkOmk9aL5qEuZNhLvp5JyL+pho
 bWy3HlMMU2RdJ0rLJavw3lyZCSJzYRamnPdeQmW4Hyvlr0kv0udwDohAV0Shj1Q4kegg
 CjDrQ4Q8hl3OiBaLLDQB42R1z2T61GXkvXZRO/8sYoOqHB8OPYc7ZpBGniNOAttDJomf
 iASjOfVDaQsY7qpkSjgtpo5zr7wfDx1nsgfs0Y/buahRPn14PAN78oqYUM4r9rUZzCOX
 8AZDE7Cbhvtp/HIBWv3z2nCODoPBnAqzrhMJTAyRTvs5yQjk/wOlW57XBb2iyHZ66/hz
 j+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LMidoks8VqIeotRW3zF6aKDdq4qcQbLbMvTzDQDS3NE=;
 b=poBeYMhaw5vuV6obzBqmYarURcxAuTI9i9MXtuCxEEhO8bMcqygRAx9WCnOHJYrqya
 1h9pPKhkC1S1mcvUxV+OlQPpZBgkmVtI2lSgjMA8RBdFirjFQ0WVg+oJPMgQswjgNckw
 APmdRNWSR/p3r0eofOZXrjKK6ncl8hlReTsk5vwan4q5m7rj8+5/Cl4tzhQ89eSB83ui
 W7VITiCgnEIkhQ9ksMXHOzwvCXJij6F59zuHtq+dJKhedkSgWTOuJ3CmUStbj/DXNoR5
 gZhac8hkBY37yZ+8BdNet6RGwW7tftuHcYgVkCQibnksYvScHyAQe2j5GdGaqp2gUCZK
 9dzw==
X-Gm-Message-State: AOAM5339Wpac31UTmTY0VlETpBGCnlqPujzyfupUGH2aygRllBR7W2Kv
 o704VDhGsZWhA+fYOBOYYBU=
X-Google-Smtp-Source: ABdhPJyKgSrOrkUUbUuHwY2CzyhrPvSL5W+t2O8/1LtVM+F5E+MM8rI3uHJAZ7Ilz+Rivd6lb3oO5g==
X-Received: by 2002:ae9:e60b:: with SMTP id z11mr27953183qkf.8.1627480556819; 
 Wed, 28 Jul 2021 06:55:56 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id t64sm27202qkd.71.2021.07.28.06.55.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 06:55:56 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 6/9] arm64: dts: rockchip: add missing rk3568 cru phandles
Date: Wed, 28 Jul 2021 09:55:31 -0400
Message-Id: <20210728135534.703028-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728135534.703028-1-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_065558_092922_8EAE8382 
X-CRM114-Status: GOOD (  11.36  )
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

The grf and pmugrf phandles are necessary for the pmucru and cru to
modify clocks. Add these phandles to permit adjusting the clock rates
and muxes.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 0905fac0726a..8ba0516eedd8 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -218,6 +218,8 @@ grf: syscon@fdc60000 {
 	pmucru: clock-controller@fdd00000 {
 		compatible = "rockchip,rk3568-pmucru";
 		reg = <0x0 0xfdd00000 0x0 0x1000>;
+		rockchip,grf = <&grf>;
+		rockchip,pmugrf = <&pmugrf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
@@ -225,6 +227,7 @@ pmucru: clock-controller@fdd00000 {
 	cru: clock-controller@fdd20000 {
 		compatible = "rockchip,rk3568-cru";
 		reg = <0x0 0xfdd20000 0x0 0x1000>;
+		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
