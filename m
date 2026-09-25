Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C190DC9830D
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2026 04:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LGgCm3GzC5fvW+EG4ZBkVVZIPUA16yJxlCWOJ/58UXw=; b=oy28A/0ulRikHW
	xckUWU93PtGuU7Hgo70KP3cv/czgURBCa7bZxKmm+w+JAzPCk2i24GPjiXSZ+cJhH2Zaz1L28vQ4c
	PaJb3DnQI/ZoTElDTct1gZpghOxSlTjhPWFfsCLQ7KLAefEiQpdnyI3qeSS/ZMVj5gUt91SpJphDp
	bHmSFXsGvMImUpcl1s9EldWXcJc3VmYe91ptv2MU5MAH62ZxrTZKE7gA1XBMBpNUCm5cFy4kzn0hh
	1BAPCS32awiaPYTIh3V7+itK8O9vNoEZwLFcLWaXn1LO28XSVuoTBUkYe1veOBf67M8jzGsIqEJlT
	3mO7WYqu8CCGAJPlK39g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9xO1-0000000CbTy-2AHB;
	Fri, 25 Sep 2026 04:18:13 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9xNy-0000000CbTA-0hm2
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Sep 2026 04:18:11 +0000
Received: by mail-pj2-x01.google.com with SMTP id 98e67ed59e1d1-39e249c766bso169240a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 21:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790309889; x=1790914689; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6smwopks2PJXygtKAHcL+6mCESGQpHs+ktHru5C6inI=;
        b=WjnAFsKz0WH85/he1IxmCpIilmvxoOfW5NASQ10e7dmDMm/X13D74i3nqxcjad35o/
         4u9JhZSnOiSPsdn9dpNdPO14o03nFop7A1CSh/ZLbHwtQ/CNBwY2+0sqNH6eH+WxwiIt
         9Tcd2haFHB4SRlejRQfR4vatHNSrwiTXoyDXXHItNdkuBVXar9cjETisWafrj4PF2y2w
         K407dL9GWy/1CphKNPyZKEAObGoX1HbpoJXC/2PVExRm9Ca6ZwuQAeY6lnBfVDN+RPIE
         WwXOtCrnSqchWMJ/V984LmSeMaPnKJ9Ug6NE3RgT/m9z9HMFLFAeBeo0kfFEspG0Weuo
         /E8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790309889; x=1790914689;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6smwopks2PJXygtKAHcL+6mCESGQpHs+ktHru5C6inI=;
        b=buE+GvORsj9LSIU7p7/ismmrWKuq8+O71f/oFU03mbJKr0Fwys6D8qfx051R59sx7c
         p+2rvLnsqN1nG+FAQZX7A55i3ucXXoU/HTLZM/OepKijH0l3vLvkhiEhWq7oycVKn+ob
         oPGtKM0tJn1PG8BTkr7mUmlPnzAEsC8Al1B7za7XlP3v4OwE2sQSeLHkIR3MUXCq6a2V
         MG87VNdj7eOcKhEicsVQ9j3B+v3lcoCY7Ji2Oo0PWwNQ7HF+aoDbJzTA4E7KBAypqtEY
         YKfJNVXwsNS9vTu18QQoFShnF9c4flJQZ24R8kMv9T/mgZieyDhrpvwN+cXPLvb7Rl2S
         IInA==
X-Forwarded-Encrypted: i=1; AKwUvBxFyBE2F0roqtU45k4BOYcMbN+s+krhi2Y8vnivAIGmawrQZ7dgWkPPoTc4WOdRX49N83NUdK1VkXkbwyb15Q==@lists.infradead.org
X-Gm-Message-State: AFuF++nR191ZPCsgmIIhpMYvjop/LilAsiDp7gevoliSnq/ksRgK7HfB
	zroOjMt4w6XQ1usdTMto3PJ48diKeisXg8hLxMrw9fHH5YXVhCOymMXQ
X-Gm-Gg: AYBFou0nOvRHz1yxK7kYNmuiFdpDvM8EBsm2vOjzVKKXW/VD4Af2KLVfjahWB50cQky
	UK+m/BB0sib/ofBhYKguNchj4ljIxjsACg+yZIFRWcbvB/o3qfRhshNusRtHEQ1HDXNLdeFBWf2
	vbnPeqoO9zbiyQ8DXYpSCyKYQIyLo6mbMFB7297y8Q42bMbYfb6PrIuClemwhtlH2x8lvqcsVqr
	OMkIeSob9+5xWwhpRK1la187sicu8sECtzQGgPXZqIsXQCgJV8CyFHmrUl4rJtF942c4F3r6BYH
	WrH5VxdjMQMzB0+0ZmxszKkPO7851tWEt5Me30jY+egUPKaOXFHSUc926khnGlO1qp1t3elWW95
	q1UmSFJVawxMFQ+V3R82bCSIf7WJpLPAfzkk7x1xp5/OtFNT/vmCRvgnwsbJTomJVXII3ne+n1z
	ZKBTBaECU99teb6+j4EVoe2HePsiarCR01sslzpa00/oAGkLj1O57KFirlU8SmGgq+jlxS
X-Received: by 2002:a17:90b:4ad0:b0:39d:b1bd:b384 with SMTP id 98e67ed59e1d1-3a0985b949fmr4116287a91.17.1790309889066;
        Thu, 24 Sep 2026 21:18:09 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a0b4983f43sm852262a91.0.2026.09.24.21.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 21:18:08 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH] pmdomain: rockchip: mark PD_PIPE as active wakeup on RK3568
Date: Fri, 25 Sep 2026 12:17:51 +0800
Message-ID: <20260925041751.495818-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_211810_236926_EADC8896 
X-CRM114-Status: GOOD (  13.22  )
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

The PD_PIPE power domain on RK3568 hosts the XPCS, the PCIe
controllers and the SATA controllers.  All of them can act as
wakeup sources for the system:

  - the XPCS for MAC WoL, through the SGMII link
  - the PCIe controllers for PME#
  - the SATA controllers for hotplug wake

The domain is registered with active_wakeup = false, so genpd powers
it down during system suspend even when a consumer is on the wakeup
path.  That kills the XPCS and the SerDes, which breaks MAC WoL on
RK3568 SGMII boards, and it also powers down the PCIe and SATA
controllers while their drivers still expect the link to be alive.

Mark PD_PIPE as active_wakeup so that genpd honours the wakeup path
of its consumers.  Consumers that call device_set_wakeup_path() keep
the domain powered; consumers that do not mark themselves as wakeup
sources are unaffected and the domain is still powered down when
nothing needs it.

Several other Rockchip SoCs already mark their PCIe and USB power
domains as active wakeup, for example RK3588's pcie and usb domains
and RK3576's usb domain.  PD_PIPE hosts the same kind of
wakeup-capable controllers on RK3568, so this follows the same
pattern.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index ba66ae719428..16ef0a235f0f 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -1296,7 +1296,7 @@ static const struct rockchip_domain_info rk3568_pm_domains[] = {
 	[RK3568_PD_VPU]		= DOMAIN_RK3568("vpu",  BIT(2), BIT(6),  false, false),
 	[RK3568_PD_RKVDEC]	= DOMAIN_RK3568("vdec", BIT(4), BIT(8),  false, false),
 	[RK3568_PD_RKVENC]	= DOMAIN_RK3568("venc", BIT(3), BIT(7),  false, false),
-	[RK3568_PD_PIPE]	= DOMAIN_RK3568("pipe", BIT(8), BIT(11), false, false),
+	[RK3568_PD_PIPE]	= DOMAIN_RK3568("pipe", BIT(8), BIT(11), true, false),
 };
 
 static const struct rockchip_domain_info rk3576_pm_domains[] = {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
