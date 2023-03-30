Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CE25C761A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 13:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMcHC8SHPJNJWP8BJa4E3QwCv18uLb2ssV7RLppyE8g=; b=4EYHHlz5c1RfUx
	EntixoMUKqVVUZZanSnfvEHx2TQSkrY0YdutAqFdaDWgOxGJHtRitKtEVlUsJiZDssej0FJsRPtnF
	E/j4mT8F3mawEJm4XW4dOPwfQFJ4mO+YSyLsXNuZ0o69sJimSzyOfzST1T/re0IxeGQ2OgUs3L6Jx
	wwPw2gtx0sV/+sqpcVPJLthpj+yTaPDo0/2q/jCJVpOqgUiHE++cETUkdbrEhQCxLwbAohDjneWFz
	OOfHLZSuP/6OJvO0IkuY9po1S32aExyDfQQE2O6wUXWA43NC5tz2qTUnvUkPjOjFMAx1VyeTozg+i
	fIYt6USL9cYSY9zQSPHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phsBx-003rcu-0L;
	Thu, 30 Mar 2023 13:19:49 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phsBr-003raC-0f
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 13:19:47 +0000
Received: by mail-pj1-x1029.google.com with SMTP id l7so17212647pjg.5
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 06:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680182382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zkeMr7lTFTJZ/1wYN/aWGJRLdHK6qyRIY62qhqd0xcs=;
        b=SrPP5+QQMAsX92varBQzlyFJkk677Jd4b475emJTx/GUqc+NOZHrOftAqMaBeM9pUO
         pnaSSS7ovAyDu8ugmvKUPvsrhPeC0XC1rNRkNKfq/oa4Obb8GXqvnsoEkBwoMC3JV0o4
         QMitcmZev25KI2mu0HNpbJvqqu5ndb2X/ug7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680182382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zkeMr7lTFTJZ/1wYN/aWGJRLdHK6qyRIY62qhqd0xcs=;
        b=ZTzMk+DD5i+g6F9WcmYVn5dJ7Y/kfy+uIsfw59yEC8JzlgG5AT2+NyEo3jIbNbjnij
         IyREqgrTqzSoFH4ncvm0tLHKlBIU3zKYso0ezR1S6pm05dcVfrAc+8+XVfoticGuqiln
         JZmjJFiy0h9H+LzHeP5jFZ4iexXruXiicUYUx0sbZo8QFybkTqgor6H7lrv8V9a7tTOq
         PYdXIEgX1ijmvtu3ocT1QmtxmyzWGf7OppXKpvonRCA49n1T88JAiML+7vqlJBBX90qW
         gB31yscyhFJu0S4omOI8iPa/2Q19jIYSomlUcrSj+OEXYMaBddDRwOKDj2OFYpGnrIrN
         2FSA==
X-Gm-Message-State: AO0yUKUGUe29yK7u4wL0gC12KmUBdUX4fv1Ep0037dxdVKi3t7PJGyyx
	6dI6YLzaHcgnrxxVldRNEqjCEQ==
X-Google-Smtp-Source: AK7set82Aid4902HLlcH1chRztL6gakvowwhKIziFtuTd977Fa9pW7Vq2k/7HUNnKFPcgcOH7Nej0g==
X-Received: by 2002:a05:6a20:4c10:b0:d5:73ad:87c2 with SMTP id fm16-20020a056a204c1000b000d573ad87c2mr16883923pzb.56.1680182382070;
        Thu, 30 Mar 2023 06:19:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:8bc3:c2fc:8dab:d912])
        by smtp.gmail.com with ESMTPSA id e15-20020a62aa0f000000b006259e883ee9sm22473622pff.189.2023.03.30.06.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 06:19:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-amarula <linux-amarula@amarulasolutions.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Simon Xue <xxm@rock-chips.com>
Subject: [PATCH 2/3] iommu/rockchip: Disable the device link during resume
Date: Thu, 30 Mar 2023 18:47:45 +0530
Message-Id: <20230330131746.1475514-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230330131746.1475514-1-jagan@amarulasolutions.com>
References: <20230330131746.1475514-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_061943_246509_8DCDE110 
X-CRM114-Status: GOOD (  18.39  )
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

Rockchip iommu is trying to enable the associated device at runtime
resume however some devices might enable the iommu during their pm
runtime resume operation which indeed leads iommu to use the wrong
domain and this leads to device iommu page fault.

An example of this behavior has been observed in Rockchip RK3328, where
iommu stalls request timeout dring VOP device enablement.

Here is the dmesg log for the same:

rockchip-drm display-subsystem: bound ff370000.vop (ops vop_component_ops)
dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
rk_iommu ff373f00.iommu: Enable stall request timed out, status: 0x00004b
dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator
rk_iommu ff373f00.iommu: Disable paging request timed out, status: 0x00004b
dwhdmi-rockchip ff3c0000.hdmi: Detected HDMI TX controller v2.11a with HDCP (inno_dw_hdmi_phy2)
dwhdmi-rockchip ff3c0000.hdmi: registered DesignWare HDMI I2C bus driver
rockchip-drm display-subsystem: bound ff3c0000.hdmi (ops dw_hdmi_rockchip_ops)
[drm] Initialized rockchip 1.0.0 20140818 for display-subsystem on minor 0

This issue is reproduced if we enable the display in U-Boot however
U-Boot is not even touched any iommu register as the U-Boot display
uses the simple frame buffer like other Rockchip platforms RK3399,
and RK3328 do.

When VOP is trying to enable the iommu using runtime resume call
pm_runtime_resume_and_get from @vop_enable then the iommu runtime
resume call @rk_iommu_resume will try to attach the VOP in the wrong
domain via @rk_iommu_enable will lead to the vop iommu page fault.

vop_enable()
   pm_runtime_resume_and_get()
      rk_iommu_resume()
         rk_iommu_enable()
            ... vop iommu page fault ...
	    rk_iommu ff373f00.iommu: Enable stall request timed out, status: 0x00004b
	    rk_iommu ff373f00.iommu: Disable paging request timed out, status: 0x00004b

So, this patch is trying to disable the device link for those devices
that are enabled rockchip,disable-device-link-resume flag assumes here
VOP device.

This makes the device enablement for that iommu domain ignored during
the rk_iommu_resume call as it assumes it handled iommu device
attachment in the associated device itself.

vop_enable()
   pm_runtime_resume_and_get()
      rk_iommu_resume()
         ... ignore the device link ...
	    rockchip_drm_dma_attach_device()
	       iommu_attach_device()

Here is the downstream patch for similar issue,
https://github.com/rockchip-linux/kernel/commit/85959f645ba38617233fbf44f442f8a88875d765

Co-developed-by: Simon Xue <xxm@rock-chips.com>
Signed-off-by: Simon Xue <xxm@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/iommu/rockchip-iommu.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index f30db22ea5d7..bcff0dc21223 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -111,6 +111,7 @@ struct rk_iommu {
 	struct clk_bulk_data *clocks;
 	int num_clocks;
 	bool reset_disabled;
+	bool dlr_disable; /* avoid access iommu when runtime ops called */
 	struct iommu_device iommu;
 	struct list_head node; /* entry in rk_iommu_domain.iommus */
 	struct iommu_domain *domain; /* domain to which iommu is attached */
@@ -1250,6 +1251,8 @@ static int rk_iommu_probe(struct platform_device *pdev)
 
 	iommu->reset_disabled = device_property_read_bool(dev,
 					"rockchip,disable-mmu-reset");
+	iommu->dlr_disable = device_property_read_bool(dev,
+					"rockchip,disable-device-link-resume");
 
 	iommu->num_clocks = ARRAY_SIZE(rk_iommu_clocks);
 	iommu->clocks = devm_kcalloc(iommu->dev, iommu->num_clocks,
@@ -1346,6 +1349,9 @@ static int __maybe_unused rk_iommu_suspend(struct device *dev)
 	if (!iommu->domain)
 		return 0;
 
+	if (iommu->dlr_disable)
+		return 0;
+
 	rk_iommu_disable(iommu);
 	return 0;
 }
@@ -1357,6 +1363,9 @@ static int __maybe_unused rk_iommu_resume(struct device *dev)
 	if (!iommu->domain)
 		return 0;
 
+	if (iommu->dlr_disable)
+		return 0;
+
 	return rk_iommu_enable(iommu);
 }
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
