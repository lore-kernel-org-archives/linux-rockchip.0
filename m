Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6408BCA101F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 20:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VnBWYduz2iGe3jSoZtueFwXUgGuGJttBrV1Aqoe2EZ4=; b=ZS146I9+jHkscd
	uRZl4yRa0erAsXH11mSeSaPbfbC6Ol5uw9zwb7yYhfRe3i72t4zeTlWM86j5i4p/9XUah5FaP34WL
	7790B85Ag6OpTDUz1KroOYa1oTiyUyvleP9y/vqtXciX28Ky+XeHSHNeP6UPDe6ykgvFGJzo/ymnt
	ROEc/Y4W13tjF7O/HeSFRN745QWUDwGmM+3kyYgsh3scpsbWEeVLLFmftTPQIQ2UXdLBT47oXJXLy
	z7cCWU3bmaHqO/PupTNMLFbcXKBe1FpyicfVcoAkMqElAu2FQ0jWRfba+I2fR1/+9H5SicrLK5PFQ
	DxG0BG9ok7O9TxmjVDNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwRPj-0000000GYD4-0Sf3;
	Wed, 10 Sep 2025 20:27:35 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwRPg-0000000GY9w-29CB
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 20:27:34 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b03fa5c5a89so1039380966b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 13:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757536050; x=1758140850; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RCrpIoJB/tHoqgvnzZ3Z3OjEDLVUv38sFghgRZh/tqI=;
        b=loA2p0HxTDu1Tk2xix4P36DS8J8UPIabMVhjd4tW35rK7WI8vDMXpD+0l6cP+U1P0S
         aSN5CR2ahgUF7Wg/g3yG9K1PDLS5ZPtUMdwDQuVoRk+anbWYvBo8jBklXSCK/HwEN2AJ
         wgW9wfszWzhaakzlgDFLDhN9ReeG1u6npyKlIfqPcRp+KZzERmmQt/+kpkVAoQ0SnYWC
         2tLmPs1uSXd4G143LxDHRbz6UsnE1j37xx5/3tI4RKa8yKsLT/7mwta1pXCy0u8eH546
         xfAdVvOJ5Z1P7Qh8uxpqj8lgaq/BZGZneiDs7k7SQBJtfTPkt5UG7DVLvZSuVn0Zo44y
         Z49w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757536050; x=1758140850;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RCrpIoJB/tHoqgvnzZ3Z3OjEDLVUv38sFghgRZh/tqI=;
        b=jGHE5b8aemysZozUkziZlTEeGNyMbXIaz0oRaUqs1CQJcQ44OiLbQWrN4+fMBNqZ7z
         FK3wOPbCoU+Hdn0FZQ34LG4wGDTGofjppWDTCUfEfmryE2lMzGy5BDg8qX0iVYl7RAbK
         4KfIgsRBu2vhKOQkD5RPPzoTvyDKHDskQyCxfxdXSEOWe+gZtiN58pQHpY5/3XrHHKhB
         JG/A5dat1j47SHsoe2IgS5RaXNL201FYYxQAy5mOqlmB6BsFyXkGtbWQM6TZkQyYh4pV
         gCXbpO0RTWjy5B7eWeTMpX2rPin1S+b8KwWarCQSvcIdlS4jreSdeq/eQceAjkBrim1T
         j5AA==
X-Gm-Message-State: AOJu0YxOZ8/vgYYWfkQTizUNdYvET5eiewTqK8yBZvkc/fH4s2acz35O
	xonCFAb3nV+u8nAe/uJ27VYNVdxDXV8E+3G/u8Xt+BrrojBCNgOo4vELeq8+148I
X-Gm-Gg: ASbGncvh3sS7abiKPQOuZApI3Fy44SphxHXOlMRhPTJ4FdHyZ7cnrQTf/NpQEzG+NNW
	btr7oKZK4TnjReyzzXNaOKYBfQ/hlpX+x2laNSIYYVRsp87vxIihsBxBtTsOn+1345quzhwBVSZ
	50/fNQHmhvqznMIU3edDUp7OjG19+m3r7ZV3FUCMcxt0ZdtdPg2lxKSN4FwF4oSzyKOWkIn2MaQ
	4qV/UsLIL0yahpc1sGyoCF/PXWiA7GyiKRKDYp7sRjnaRndGu7aMLjV0K4ono9MRhQmbqmXNw3U
	nyCLONm0wNCSK/D27tGZ06hyXzihcLI74dZqyZ5qm/w9DREQKoLCyHdbrWiIFYmQlXkwqfJw2i+
	pjE8Wg18B/b+sSinyDCq1mbHAyj8Sl+Ph/qY1B+/BkScwZaY=
X-Google-Smtp-Source: AGHT+IFEITjy4LGxB0jKgsBoDdoutzAK+zqtiAMC5sNQxnjJkbVBildEB37y1KdnMjgrISCYdisa4g==
X-Received: by 2002:a17:906:ef0c:b0:b04:20c0:b1fd with SMTP id a640c23a62f3a-b04b1697af6mr1505708966b.36.1757536049966;
        Wed, 10 Sep 2025 13:27:29 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07834124c0sm227715466b.102.2025.09.10.13.27.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 13:27:29 -0700 (PDT)
From: andreili <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: andreili <andreil499@gmail.com>
Subject: [PATCH 1/5] RK3566 BTT Pi2 - Fix PCIe enable pin.
Date: Wed, 10 Sep 2025 22:26:57 +0200
Message-ID: <20250910202704.2191182-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_132732_574055_0853B10C 
X-CRM114-Status: UNSURE (   5.53  )
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

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index e7ba477e75f9..fdf7d00edf4d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -120,7 +120,7 @@ vcc3v3_pcie: regulator-vcc3v3-pcie {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie";
 		enable-active-high;
-		gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_drv>;
 		regulator-always-on;
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
