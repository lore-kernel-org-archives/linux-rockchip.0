Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C9D6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 12:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrB+yEON7M0Uep6Pq8Eufl8LSAF8yd5JrQ65Cy17FZw=; b=D4LV0Und3gXIf+
	fzTt0BQSBgZir87BKHQuvkrhR593+8doI4bqGHJDGFG1VhYqpXgNM7JG5KLnOYR2oe69RPpU8hrRR
	tntBUsEdA3+h2cT8RQ5Dt6O4suvdhm+kzBfAxISihyeDWc9eqSmYwGULCpy4aEVr8pTi7KuGDRavl
	V13QdPtUk1sXBpTROIzH6FyjglBBuwPQb+lwdrx3ADkZ9+7cSh4zxhC3PosVd31Car9qO2Kr30EId
	ygYTfvzjEt2Oyktqg/trKeb3nsS8hqd0NzAIDeetqFyA83+kNfJUYqgv1QDryUXmLWGQutde8YJB3
	IFUET+YG2KHMALeIFDPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZX2S-00FWjR-KJ; Wed, 30 Mar 2022 12:03:00 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZWor-00FPnv-2P; Wed, 30 Mar 2022 11:48:59 +0000
Received: by mail-ed1-x531.google.com with SMTP id u26so24055031eda.12;
 Wed, 30 Mar 2022 04:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2thFVVxt8iOgZ/77vqKjkxGRR5i4huEJbYJ2HtMw6Bs=;
 b=QvmXvaXA67wdW5gKoKXNCL4TrnmKgs7pGbyP6N9v0oh8qzX1AhkIdDVPvFuw/qv525
 7pVNXYdL/cPx7qUNvqkDFdGvf1vvLIdjSIQ1qXPfP4i2YY1Gy42ahLVroGE5fMXVmBGo
 ZAPtdBGvLHFD0rL3yJTkZDxPxDKcLb+EmcFJfi1J3OtSnF9FgE2tsoErNYbKvfHPN773
 g5ePXpc+OpB0ZhPnBY3FKwEx/gsbCL53UGhmOpb015zFg9aSVw/EyNVazcCovhA+5dP2
 CZl7R6kQFCOhgLZ4KT+x5Z5Lmf56EwyV5w0wgpTcPkdR7tSCcD0kdZ/AymL4NGqCOnjK
 waSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2thFVVxt8iOgZ/77vqKjkxGRR5i4huEJbYJ2HtMw6Bs=;
 b=sjUBMsF2dQwifINNG8P0BJhrImGqA+ZKGKMXzwln4DFrc8KP579E+YnvwnP1UVbZ+p
 9RLW1MKIm5oQ8zbZvfXxesmL+95u2Tbl7AfdMOeUPWNGOu1s7ASsCVxdaa7mqmyf0sTv
 9g2t+xutlerDmpZs75DcS3SRrU0ltZ484eEpUpUqmOZc4EAtenm11HCGZCDBRS11vSk9
 0KXuOWTqOlFAKhdZgUoG6BYZY9yvAzS5p0F78aAuRae1WQvxnyHQ3V0k0ML344F35Jvv
 MZn8XGql6cnCJNbHDJXm9wUPVROcgizQtVPtMWinyOA6ViKIqEAWndu6DdwJ2k+3DrTP
 gGjA==
X-Gm-Message-State: AOAM530hMdrXAgLBc6DxuLAGiXC8G+VkMMnt6SQjx3E7BX1zRPbHP1bC
 IbnBzC+bzW23tqpsy7Alfas=
X-Google-Smtp-Source: ABdhPJw5YR6043SIYfTA+1UGWgg8uUODu5z2wYnauw+5pAB14UK9my7jiZRCsaGr1TAkDz5GfX0nag==
X-Received: by 2002:aa7:cac8:0:b0:410:cc6c:6512 with SMTP id
 l8-20020aa7cac8000000b00410cc6c6512mr9938016edt.408.1648640935405; 
 Wed, 30 Mar 2022 04:48:55 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g9-20020aa7c849000000b00412fc6bf26dsm9934442edt.80.2022.03.30.04.48.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 04:48:55 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] ARM: dts: rockchip: rk3036: use generic node name for
 dma
Date: Wed, 30 Mar 2022 13:48:47 +0200
Message-Id: <20220330114847.18633-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220330114847.18633-1-jbx6244@gmail.com>
References: <20220330114847.18633-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_044857_225462_4040126D 
X-CRM114-Status: GOOD (  12.73  )
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

The node names should be generic, so fix this for the rk3036 dma node
and rename it to "dma-controller".

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 3894b8d2e..c5aa1636a 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -558,7 +558,7 @@
 		status = "disabled";
 	};
 
-	pdma: pdma@20078000 {
+	pdma: dma-controller@20078000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x20078000 0x4000>;
 		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
