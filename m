Return-Path: <SRS0=14fJ=LF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08ADBC48BE0
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 14:38:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B776260E09
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 14:38:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B776260E09
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/Aa1/GBAonlgAIMGz5xR0DvYTz7ZZWIsjuoYMOtuJA=; b=0vcSZufVsSoeN/
	cSWskJrEP+ZpipiD2NUDRAqi598/hTMpwVoCuYBoM1dPs1iTJyOXHO4LSxvqZLbAcsakpTlttZqLT
	zpcGMnpeAQ5FiCZoER3R5exBDYw41D+HF9JJ6an3Ka4i9SRaubItJ4MFI7Sh3KX00kldWIzdsFbNp
	MPWNJRZkDOW113rwx+icoarSQCrTcFfIeYir9jHDRJjhQGF5R+GQtyRPL4jTVPEpXhtFX+h/0ywJv
	yYvtJuEUn5JWRgBjzOvlRr/4cFWSe7nRctBzb6UW8mr5iG/92ByFaEP5IeYoSb6ON7Fi3GQyL+wLW
	isEV+pjqVHIKU43tYJfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lriJ2-005dOG-1D; Fri, 11 Jun 2021 14:38:44 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lriIz-005dL3-G9; Fri, 11 Jun 2021 14:38:42 +0000
Received: by mail-ej1-x62b.google.com with SMTP id ho18so4894604ejc.8;
 Fri, 11 Jun 2021 07:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XBRHI4+WYHmQJKlvWWX3TLpIW3BFtZ2+OX11eMACGnk=;
 b=UFM1trJ8yeAcqxOgBw5feSfI9sIKPV3AYDxSLNipVu/78czQK1euUWGsSurNQbORni
 IU/j/uoXlQmcL9BIQX0si8LDv87Nyk9vdp7HXJfGr2UTiBCfDyC0cmjeAnGy+GCd1d1h
 mA0Z6Wm4WozamSRv3ATvjCdxp/ZeRiqhd0+9MKXg1wIaRJ6dIx7WaXj74872SMkfm5IO
 cg2/lR4qMAuaE/f0W2pYMGXrnjXSnVQH1Fv3NyNPLXJCZshFQ5MFtgFztDj9Y8pBlask
 Djdy8eUuGZp+PX6D8C+jgck0/Afjlz3I/54Knp6dbJ5/Ca8Bq7urWQ6mk4+Jbse/sieF
 x61A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XBRHI4+WYHmQJKlvWWX3TLpIW3BFtZ2+OX11eMACGnk=;
 b=nu4WgdM2QET64b/o6b0mRaJygzfmOrFlsBiSQdy4hZwwVhzBzCrD20w7RVuxhEIKoT
 ezG+Vb79Zt+1tJBqG1f9P4d1bBC1fByCeXLRGzoYA54mm1d6UN1dTp8fUYPZFeVISd+K
 GKVKtfRHNUQcAJHwlYgFL1T6wW1PNioOgCAeKxq2gm8VOZGEnPi3PZiTzTOlWjxoPPnF
 CLvOkmhOx8nhW/oiRUkhULABDGCCVJs+XaEeIrzoKrP7aJmeHBYcNsZ1LLDFEQYwMnwH
 xN/pMpc2T8r5Ujvj7F3UDXJ2coOgWT6qUlc7GQN5QIQG5OKszzjgyDyo4KDeQ0gMzDM5
 5T8w==
X-Gm-Message-State: AOAM531gG/hftNoYAWqNiEbMHyc7qF17PCJdYKFKPbkIhaLeWXwQuhPO
 9bxmbuO/OUAk/N/5scl5Xsg=
X-Google-Smtp-Source: ABdhPJyqScTR2284kAikALC1nJ97K51aH3EX1zPsYdCG6oLiLVDJzM3gcWpADKsOMJKgpwTKzwtomw==
X-Received: by 2002:a17:906:3ed0:: with SMTP id
 d16mr3879999ejj.16.1623422314043; 
 Fri, 11 Jun 2021 07:38:34 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id p14sm2671008eds.19.2021.06.11.07.38.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Jun 2021 07:38:33 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC PATCH v1 3/3] ARM: dts: rockchip: add io-domains nodes to
 rk3188.dtsi
Date: Fri, 11 Jun 2021 16:38:21 +0200
Message-Id: <20210611143821.13057-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210611143821.13057-1-jbx6244@gmail.com>
References: <20210611143821.13057-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_073841_557041_F43BF7A7 
X-CRM114-Status: GOOD (  12.25  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The compatible strings below where added to
rockchip-io-domain.txt, but never added to the device tree.

"rockchip,rk3188-io-voltage-domain"

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index b36fcdd9a..2721b7285 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -641,6 +641,11 @@
 &grf{
 	compatible = "rockchip,rk3188-grf", "syscon", "simple-mfd";
 
+	io_domains: io-domains {
+		compatible = "rockchip,rk3188-io-voltage-domain";
+		status = "disabled";
+	};
+
 	usbphy: usbphy {
 		compatible = "rockchip,rk3188-usb-phy",
 			     "rockchip,rk3288-usb-phy";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
