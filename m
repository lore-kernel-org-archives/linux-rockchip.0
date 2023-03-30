Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D8ECC761A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 14:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wcwoojP8alczpfv/6wsYbQP+Q7tAX7NNCVg5Wg3bNQ=; b=dsXV1fBAKc5GiB
	/kDtBzjnaFOyF/W+z1dS0PdT2TzLv4+YYiVB9n6NQ9mdm/JO6AYQEP/8tR9u8b2AtakJ4VPdhopD5
	/IDwNjVlEujYcLCRr0Z2KTUk5kzApNOSfYafCiEv5dtrjTtK+V7UdOctmfpNeO+CEXZ1n/JddLZd+
	UJ+qSBUroFzEC6HsodowjavMegXsZF1SPVfgy1QGIokQVHZOba3yvOBO3FQEaoToCtyeXB6TZ7O1r
	zbfc3h0wnWa9FI49kIaKw2Pdy9Fi9j+7mhW+rWqBs7Q3ZsdaY+N41IuGtKdwlHf2+UlE1L3oYfDyF
	sIwgQD+EZ2nePzDtrqiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phtIb-0045bn-1q;
	Thu, 30 Mar 2023 14:30:45 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phsBx-003rcX-1V
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 13:19:52 +0000
Received: by mail-pj1-x1033.google.com with SMTP id e15-20020a17090ac20f00b0023d1b009f52so21911086pjt.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 06:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680182388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sRHEgyUwDyzDOzARH/KbUIOIYBwk/M3j51CvYnIlMgs=;
        b=oRmW925Xm5WyLdVxo8qlbOXP2Zjh4XarIC07Gvgljqxr6pl+SS4Pwoy1OJI/Sto6hn
         0G4Vhb2MCwW1GTKA238m/M+Wk0aNCnZOi6+W0YBHfzWnF2k3dn5TwmqNyVhhgiU5lvuj
         fA+2lzdvbcAIKVrmPaxAdVnbEveKjqhC5g188=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680182388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sRHEgyUwDyzDOzARH/KbUIOIYBwk/M3j51CvYnIlMgs=;
        b=Mo7452FhYRwvd0yccGjkrOpEMHRuKQ6o3gq60jx5Xijd5W6GK1R1mIwMP3a9yUX5uC
         zkp/hfKRSjxSJI48OoKF1Ikfosa8sWMGJTFds1ukToTa3AvlumONzgb8saJbjv/FAGni
         ZNsi0AKcV2rmQO/8qOL9DtsSqM9TkSSy0SD6+M/WuMK6Bxi7RMbSOhVu1I5qQKkJk8j+
         FffsdwKuu+7kwrYxg49FHUogLG74cSqXVHRpLJpUQIks0YV38b0AykVd9SlZ184LhXpD
         yKQvBVMxNav8rJLOG63ZkB5WenknwdRCvu8E3Z4V+UfSnO3KwS/L1ohmgy/jE7fMuMl/
         npQg==
X-Gm-Message-State: AO0yUKWfvH3PW1DYslX7kXgdJt7JTangLiav89Hn3ZmFCH4nvi4G2irH
	gPeDcU+ICRFN0SX7+D6qGzeOSQ==
X-Google-Smtp-Source: AK7set/se186QNK4y8v2yF6M9tADOW5OdPNi17wkM/FKlIdKOpYWorRygvlG2Iu9dU18QwSIZE6joQ==
X-Received: by 2002:a05:6a20:8b82:b0:d9:7fcf:1076 with SMTP id m2-20020a056a208b8200b000d97fcf1076mr22802629pzh.25.1680182388082;
        Thu, 30 Mar 2023 06:19:48 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:8bc3:c2fc:8dab:d912])
        by smtp.gmail.com with ESMTPSA id e15-20020a62aa0f000000b006259e883ee9sm22473622pff.189.2023.03.30.06.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 06:19:47 -0700 (PDT)
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
	Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Disable device link for RK3328 VOP
Date: Thu, 30 Mar 2023 18:47:46 +0530
Message-Id: <20230330131746.1475514-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230330131746.1475514-1-jagan@amarulasolutions.com>
References: <20230330131746.1475514-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_061949_533382_B6A67833 
X-CRM114-Status: GOOD (  12.91  )
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

Rockchip iommu is trying to enable the VOP device at runtime resume
however VOP device might enable the iommu during their pm runtime resume
operation which indeed leads iommu to use the wrong domain and this
leads to VOP iommu page fault.

This issue is reproduced if we enable the display in U-Boot however
U-Boot is not even touched any iommu register as the U-Boot display
uses the simple frame buffer like other Rockchip platforms RK3399,
and RK3328 do.

rockchip-drm display-subsystem: bound ff370000.vop (ops vop_component_ops)
dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
rk_iommu ff373f00.iommu: Enable stall request timed out, status: 0x00004b
dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator
rk_iommu ff373f00.iommu: Disable paging request timed out, status: 0x00004b
dwhdmi-rockchip ff3c0000.hdmi: Detected HDMI TX controller v2.11a with HDCP (inno_dw_hdmi_phy2)
dwhdmi-rockchip ff3c0000.hdmi: registered DesignWare HDMI I2C bus driver
rockchip-drm display-subsystem: bound ff3c0000.hdmi (ops dw_hdmi_rockchip_ops)
[drm] Initialized rockchip 1.0.0 20140818 for display-subsystem on minor 0

So, prevent this by enabling rockchip,disable-device-link-resume in VOP
node so that VOP enablement for that iommu domain ignored during the
rk_iommu_resume call as it assumes it handled iommu device attachment in
the VOP itself.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 6d7a7bf72ac7..7ca83bc844c1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -718,6 +718,7 @@ vop_mmu: iommu@ff373f00 {
 		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		rockchip,disable-device-link-resume;
 		status = "disabled";
 	};
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
