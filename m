Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC291C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1u40mTMptjuQPaBxDXbrf6Ql6wa7pb7BhvUvq7TBj4=; b=mK4+j9GCLVci0m
	M9TKL/piBU7LtHDCgvUMywwgT/uqLwh5PadGDT0Ntm1kEwKo0LdHL/5k72PJ5PD3qigH5B1keb3QR
	1vBe0Ir2o7LoNn4uRYvA27NU2sQ1hO/dCZv1ciktXaPVNT/Sttwqk5rJva4A38WHedOamFXLXerjR
	Ob3fe1QmAmSCfjlnBtRR9AYaQbHVOpRESsyKvLnNizyf9GDf9CrCdx5C9oGOB+QSYHYFe2UmwNnMC
	2jOTxfXFe8zSnkMkUBqWPECylCTLdX5OJ2sKXxrzqBQwV5Q7CdTVem/3Nh/v5IZQrwBN9YG3QLq3l
	LMLUCK6AifpGkyTA19WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDSh-00CaDv-Or; Tue, 29 Mar 2022 15:08:47 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDRu-00CZnq-CJ; Tue, 29 Mar 2022 15:07:59 +0000
Received: by mail-ej1-x630.google.com with SMTP id bg10so35782774ejb.4;
 Tue, 29 Mar 2022 08:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MYpKknBwdTIHXp3EH6GGOHhFZcaVOITrMZHNhkcAA1w=;
 b=nvWzwn6Kwi8lUvfA2/fNc5u28we559b8GN4u5QymfkMYMrxDtfJ+jWnolKFkHKy2O3
 //1hMuD92JZ24dYqmPyQs7cVtDVZiKyaNj8hDMNOG4RJpRKU1MDy0Xp4WpH8ZMbiBR1Y
 18IJNan6iOhYtugNMSGf6iqqDqsh1Ijl3G4uiARJ6yXFRLcRvrnTxAO4WXEuP57dyFHi
 0xiZAdhlf3EacOwB9VJSrNkCf6B5AhTMPsYiUsbp6FYHxb/smVg4a7HxvHJ70C8PmcEi
 SRyCWf/PI4JPMry08RerDroL5OhGpCIeLu7Wa0L4UAto1/E9lVXX1N0OcbKj4YjAC7AY
 /LRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MYpKknBwdTIHXp3EH6GGOHhFZcaVOITrMZHNhkcAA1w=;
 b=iRiGLv6iQ/gR3jLyMAWq2QbsCsBNLsmV4zHHMVQ6IFVvnpDKksUISb0m6Y0qY/oh1i
 P3Vqb5yAl4EMYBcTE8fB4u6ccy/f4V69haqzvprxNg1UVgKUOoMY8yp84FkFWCDGYpoy
 QxtEkoatyDK5QOE8D8l/zKYKhVKymRo9FOWagm7FC73vQ2J4vLkrtt7NkEpmfk2FRnaG
 thdZGmh8Wob4TyvtOOw8Brn1wAM5syFZLZ8MLivxbm0UakySkf98OBZNcx8sH9CTQOgQ
 TpejYKQqE95O4ABYqVm8UQ7vgiq6UsEiPxH3k49zw0eIRSzNej91tNHbhOEsz5/O/1sb
 4Jkw==
X-Gm-Message-State: AOAM532eIa/o7X+gfJ/UIuzIxX9xmsfWMtb/qy5VSO10tvucRtSiX7qb
 nDw0CroBR+y/zG/7pElR9gk=
X-Google-Smtp-Source: ABdhPJwnJgoYnTwOGYH2Z0mhJZWq0fYlCj1lQly4mmTbPKZEtCfU3cBVSnflbmJFd/H9M8NdARwTeg==
X-Received: by 2002:a17:906:6a1b:b0:6e0:b38b:f74c with SMTP id
 qw27-20020a1709066a1b00b006e0b38bf74cmr25710711ejc.46.1648566475860; 
 Tue, 29 Mar 2022 08:07:55 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 eq7-20020a056402298700b00419d8d46a8asm3261643edb.39.2022.03.29.08.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 08:07:55 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/6] arm64: dts: rockchip: rk3399: use generic node name
 for pmucru
Date: Tue, 29 Mar 2022 17:07:41 +0200
Message-Id: <20220329150742.22093-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329150742.22093-1-jbx6244@gmail.com>
References: <20220329150742.22093-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_080758_466016_9B5B2FB4 
X-CRM114-Status: GOOD (  12.49  )
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

The node names should be generic, so fix this for the rk3399 pmucru node
and rename it to "clock-controller".

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 88f26d89e..01c08a2aa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1413,7 +1413,7 @@
 		clock-names = "apb_pclk";
 	};
 
-	pmucru: pmu-clock-controller@ff750000 {
+	pmucru: clock-controller@ff750000 {
 		compatible = "rockchip,rk3399-pmucru";
 		reg = <0x0 0xff750000 0x0 0x1000>;
 		rockchip,grf = <&pmugrf>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
