Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 236EEC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 01:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCpw+fw5Dnq1og4Fkce264lAIT95xbADBZ5Cw7rTzs0=; b=jyKLpvd+dBEBSc
	Ync1fy38zNJsPoyqjcy1BA+WamxwgeHvpgKeBB+7KtvOcZt2cBP9Hn6cogTQ8gv2TU8q3kSSU+uay
	sAVdvB2R6NtLmiORAQcZFzCgg9IGHb4ywQlFonYPWxef1H2K5OVS7l9QrJaENu6Lt9S9mzYmGenHL
	2GdhYdUt7osjR6W4kcRhlyOMA953hW9FoyNcxMafBFykNYWWP/ZKQ0JWTSeDEOQAhKk+lXQZhXW4g
	IMFFKGraGi6HC5NlfkTAqoYa2W+eM91S6uOXVxsRBdnb+3zUrWFlLNISortAOxa/tDebEKtx6yN7/
	nOyTbEUEx+ryKdlJgTrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDFhi-00Hb6u-4R; Fri, 28 Jan 2022 01:05:30 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDFHN-00HVZ8-Nc; Fri, 28 Jan 2022 00:38:19 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id t7so4468496qvj.0;
 Thu, 27 Jan 2022 16:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vajErjDWK29FvNOeA4ceH5ORPugHRCo1to0RNKcwTFU=;
 b=n6hH5bE0tAhwSpDQfYcACSaoNCPingDZDvHbL/z2fUqpjUxXolUF5Lddf+Ulk3FcSk
 uIOaVxUSetYMbtgUL0PF//qrQ+foqdwWOi8MdsUTvIKtGuK4LDg66AIG3XcN3BccrqPR
 wrowKuCSNvx8hSimAVZKlwiPzMgCci4UK+n6C1uawK3mML4uwLcuZTRfrGUsdIX9gmO4
 qYTZ4FBTwIR4gt+8pbcHeiXcBStn0TwITrVx5QgX2p18LC59OkW3pUTYzm8W/FKQZxZS
 C9tyb9vVM+CmJm7Ytw1WX7n3e4pFr9oaS27ge+VViaJ9nkHXcIR4ngAV7/6hELyoZD4I
 J/UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vajErjDWK29FvNOeA4ceH5ORPugHRCo1to0RNKcwTFU=;
 b=Oli33poicV+tXYdqHsGm34eTbysx8JRGHTrKsPdRjqU3HFf8WCfE8OvCMRHQBlwvsY
 q3yBBgMa1WZ+1gNcYR3Ea9Nm2VxtDhLZhzwLc53j2BRdndbagc5D+LSZFSYLZWF558Qv
 ABzSDNgTHTRhvGCd3CxWZ2UCDbLUUAHflPFP6R9NRdQW8toq5LEusvwu3bYZm5MFOnOa
 P2wcT3J3Oi/ok0bRnCJ5IJGYuOP2TBUNN5+XWzxb5xRHWwSCfxeJ6TSkMSufYIkU+AvR
 tzv6zGcNJFeNUk0X8FULhTdxTe8WU0d1tezZpUJhSxa043HZ3gigd06d0uTk1PXECosL
 PxlA==
X-Gm-Message-State: AOAM531a6SYViPC1c4RIxZmpG9YQyUCvVB8osOwGtRgWlS0X7FuwmsWF
 zydSefXZP/Fb7Kadh5V76u4=
X-Google-Smtp-Source: ABdhPJx6Ewcb3mNLM99tOI9RuDyK8k/N3O3ytSQsjCpu8y3yQASkoh7sG45wXL3ayDBANmW6nd8v9w==
X-Received: by 2002:ad4:5968:: with SMTP id eq8mr5136360qvb.80.1643330295757; 
 Thu, 27 Jan 2022 16:38:15 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id t1sm2142883qtc.48.2022.01.27.16.38.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Jan 2022 16:38:15 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] arm64: dts: rockchip: fix Quartz64-A ddr regulator
 voltage
Date: Thu, 27 Jan 2022 19:38:05 -0500
Message-Id: <20220128003809.3291407-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220128003809.3291407-1-pgwipeout@gmail.com>
References: <20220128003809.3291407-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_163817_815461_4150192D 
X-CRM114-Status: GOOD (  10.03  )
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

The Quartz64 Model A uses a voltage divider to ensure ddr voltage is
within specification from the default regulator configuration.
Adjusting this voltage is detrimental, and currently causes the ddr
voltage to be about 0.8v.

Remove the min and max voltage setpoints for the ddr regulator.

Fixes: b33a22a1e7c4 ("arm64: dts: rockchip: add basic dts for Pine64
Quartz64-A")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 166399b7f13f..d9eb92d59099 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -285,8 +285,6 @@ regulator-state-mem {
 			vcc_ddr: DCDC_REG3 {
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-min-microvolt = <1100000>;
-				regulator-max-microvolt = <1100000>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vcc_ddr";
 				regulator-state-mem {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
