Return-Path: <SRS0=KyHE=L5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93425C07E99
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 15:04:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 60CB361959
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 15:04:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 60CB361959
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXW3a/apJ5Wa2OJcxPO9IDMMdGrwbKUp3HvQmh7LaNg=; b=zj4XBSMEz3zJtK
	ucB/OD4J8iHewlBrhV7R1+0lcHEp8C4ek5AKjBWVuzzG/uhhGbtWRQCzPmsJYGrC9GLwCA4mOy+U7
	1gV9mfM/FALusyNLSfGp4Y09/ry0qlvGDDTc+I9YlJJcuOptMHS0XVXFG/PnfkC3AT8WcP/CMg2qB
	3nM/gep5TPU9Ta3iuE7DB7nLeMG2xoXDF5EppF64ZGlI02vZrTYnTh5P/Q6tmvb4IB2mJ4wl6N+CY
	I066Hn5WsHUqhdDIX9EJTagfBD5yBoJjCgun6Lv3lO0ZdfF8TOte9Kg0n8KoMaBlkk4hf/OQ/k/YH
	lwOO2BbKlCB+nbzbc73w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0Q9Y-009GDr-1M; Mon, 05 Jul 2021 15:04:56 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0Q8S-009Fif-0N; Mon, 05 Jul 2021 15:03:49 +0000
Received: by mail-pf1-x429.google.com with SMTP id x16so16851334pfa.13;
 Mon, 05 Jul 2021 08:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s4l7X/PxHtk4NbtO/lK+Uls/dYZXf5ku/3AMapfbnkI=;
 b=c0tij8okJ2a1xbbeiVRrLSAKPMeObRlc/ni+TNxpW1gT78uh2+gDk1b2h/2N3k21P1
 3hMC1gHxrcdq8DthO0kgQNCdDkODmXBmq57fWb2Dya+ygwz4v0vg/+kFBAYdR8j6hZvO
 8IA0b0SSw4BEkVnpUVVQXgvNpLek6ZYHzInAdAq1wQbeZ0Tqa/sEUDKSiyh+yaVu/pDD
 HXDm3v0aP0nQ44TOC7AqnilsMQa1eVD5oAIN6GI/9q4Rw+H4c9u/Y/ZXltL20CX1ucrD
 lsagChb7Zan6/BXF3VtO/olU1Pq+hckM2C6ZmRhQecIh9pXIdAMi6+1ulu+m8r/E2nQp
 +1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s4l7X/PxHtk4NbtO/lK+Uls/dYZXf5ku/3AMapfbnkI=;
 b=rhUrEQvqYeuj74kLe4u7X/QlvOkqJgQRmKp2zdvbBonzDLsNP6SdyVfrxF3bJAvhEc
 FSPZiH/ySUkK4bCHiFqmVesMNLnfKv/Acy5xQyD7LTGEuO4PQI0+MDkaddk260JImqTK
 GHL6AoNiwfjz1eg8GgipiacOBiKGYREi/rjf+/i+p1tKrOb3mSxO/GoxP00RAjqlYbwp
 zuyHjDgNf9gGzFgEtbGgz2sODIHVhfx4dI5iccGVLwzBXRiacEUJgUPQfjk+4NKdM6Iz
 SPmfpciPR+xdFsBRXzELyoLFQQgolp/Yi8jVhJz4xKQmRc4j8Fb5uODyyZ1NYWnB4XyR
 HkdA==
X-Gm-Message-State: AOAM530b3mjxvA5h4K1n0/sudVR/UbhdRD09YZ/fFumiJbqTIKcFX747
 sLuyhfTLoy1BiCkMHeO/QBc=
X-Google-Smtp-Source: ABdhPJws/PdXOEVrLZpv0pQnjBoQhKrJjW9rCy4sX15W66ggLPoVxN8KITOoXp+CNkmJW/M2XEKj1w==
X-Received: by 2002:a65:46cb:: with SMTP id n11mr16299016pgr.159.1625497416926; 
 Mon, 05 Jul 2021 08:03:36 -0700 (PDT)
Received: from MacBook-Pro.lan (li1891-139.members.linode.com.
 [172.105.237.139])
 by smtp.gmail.com with ESMTPSA id q18sm13442604pfj.178.2021.07.05.08.03.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Jul 2021 08:03:36 -0700 (PDT)
From: Xiaobo Tian <peterwillcn@gmail.com>
To: robh+dt@kernel.org,
	heiko@sntech.de,
	jagan@amarulasolutions.com
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Xiaobo Tian <peterwillcn@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: r4s: remove the vcc3v3 use vcc5v0
 wrong supply voltage
Date: Mon,  5 Jul 2021 23:03:27 +0800
Message-Id: <20210705150327.86189-2-peterwillcn@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210705150327.86189-1-peterwillcn@gmail.com>
References: <20210705150327.86189-1-peterwillcn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_080348_086972_8B9ADC06 
X-CRM114-Status: UNSURE (   9.66  )
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

Vcc3v3 wrongly used Vcc5v0 for power supply.
After testing and removing this misconfiguration,
the temperature of the motherboard has decreased,
and it works normally without any other problems

Signed-off-by: Xiaobo Tian <peterwillcn@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index a0f928990fdd..899c6a0fc6a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -112,7 +112,3 @@ &uart0 {
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
-
-&vcc3v3_sys {
-	vin-supply = <&vcc5v0_sys>;
-};
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
