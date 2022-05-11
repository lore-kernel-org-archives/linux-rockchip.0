Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 235F9C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INo/BDcSpQdzio4dFPD8utOTtNMVhp6oKv2DAjna5Ns=; b=c7TqLqdc/uC2kF
	uv8Ro5EhzXTWGqs4frtO3QxGoTfG+FMY+t+LgqIMflR+bX/5UYU4ejgc+F1ad45mcSPIBzBTG/p/F
	B6nQY0Roa24sj16B58uMn87oFXk7OSaqRdcYrLRlo9JU1quQf1x3kG0yaDYn3jpGUsWZxxBoOegpm
	+pMGXLI8/HLqOogpH32rEKyYNLum0E8vHZQJSrMwD7OVwH6DdleR2XdWaCoC9rsxDG9Q2wKhnM/p6
	llRdMKKNZX0C/zvdm9iZgbn2qLkOdoBMz4WyjLjgpOGEBovKaW09UuP4QqARVwSak7e5/Ag4sotih
	S2wX++DUBmgBAf1zNDVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nonzQ-007RlP-7r; Wed, 11 May 2022 15:11:00 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nonqB-007NjZ-JC; Wed, 11 May 2022 15:01:28 +0000
Received: by mail-qt1-x836.google.com with SMTP id hf18so2211543qtb.0;
 Wed, 11 May 2022 08:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ipDuBEhFw2DyeLXG/FGMhARGVjkT9bgP/MDyzET/qKc=;
 b=VqceqPLS+1htYwbnkdB1KBG2uG8SPVKbSfknbCr7putJwxx2cf4O1v6nSo207w8Kfk
 mRwrH00M1xaanbcOw8aB6vSJfgrOybPgim2cr4NaasjycYeaOsZy/RM3naCj5jy8hl44
 UHIJ8TFs9MghONZDytS/GtSeZYibpyRbzeXrzHHeCbqCAK6ThohEfj6Fyw7tPU49UKs3
 Md+mXvivlDeSsQkXR7b1yuJskVs7+nMz9LUOoBQ8gkX0lcOHu8nO1joX3gtpEfhg+0/O
 9FKWuMrl78hOvqVRXoLP6dPaeZWs53md1YdoqzeYomqSXNMBnNLu7CkkGiagycu9Or43
 FZ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ipDuBEhFw2DyeLXG/FGMhARGVjkT9bgP/MDyzET/qKc=;
 b=Izu82SlJXE8OU0taDCAwP9qMBZdSeD3MjL8JnFINZf3b5HqiweY1T22+sUgZOWPuYw
 HmpQYZOuLzCU8LFGx7hzL7Hi61bPqSQLdF7HXKurzVQxrBugrVCkNjo15A+F0nuHBY26
 3g4WWfgTtlXjvsdIhcZmrRjUcsXXkn+K18cm8Ga11DZxuZ7t//EZDIHbDODqemhDl4Nk
 5pluSaYMBqmjF2rhRW8r67Jh+DAVV8MrK3ticg5asAS0/tXvgVjf+vp67qP5/47cKMoP
 c8SGnd1E1EJ3htJHTTw/vvT8JMgctSSLN7AE/FzY7N8FP2M+1uoOiSIJUnM5gfXPURb1
 KGVw==
X-Gm-Message-State: AOAM533f8nrPFUC9Nj+lyLc71OdkLAA4j+AmXqjgWlbrfAt3GQzhHr2R
 ugRR1TZwnTA4GrTPO/m5rOE=
X-Google-Smtp-Source: ABdhPJxQDBcvlYHhaql84573qZ07O8V9rUoBzOAlGDd772zbH2KQTV4gZdCmubxlDvAK9RPHKFpbtA==
X-Received: by 2002:ac8:5fc9:0:b0:2f3:9bc9:e174 with SMTP id
 k9-20020ac85fc9000000b002f39bc9e174mr24002632qta.51.1652281285192; 
 Wed, 11 May 2022 08:01:25 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 h1-20020a05620a244100b0069fc6484c06sm1487134qkn.23.2022.05.11.08.01.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 08:01:24 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v1 5/6] arm64: dts: rockchip: enable sdr-104 on sdmmc
Date: Wed, 11 May 2022 11:01:16 -0400
Message-Id: <20220511150117.113070-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220511150117.113070-1-pgwipeout@gmail.com>
References: <20220511150117.113070-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_080127_708887_10E07F8D 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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

Now that we have working io-domain support, we can enable higher date
rates on the sdmmc card.

Before:
Timing buffered disk reads:  68 MB in  3.08 seconds =  22.07 MB/sec

After:
Timing buffered disk reads: 188 MB in  3.02 seconds =  62.29 MB/sec

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 991b7b1b8443..71df64655de5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -582,6 +582,7 @@ &sdmmc0 {
 	disable-wp;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	sd-uhs-sdr104;
 	vmmc-supply = <&vcc3v3_sd>;
 	vqmmc-supply = <&vccio_sd>;
 	status = "okay";
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
