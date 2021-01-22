Return-Path: <SRS0=to3J=GZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3DFC433E6
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Jan 2021 17:13:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 19655233FA
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Jan 2021 17:13:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 19655233FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gbSLGjzn1uiNwWQsDGYjrQHS/rDRhMxCVr2Hxi7ovNI=; b=0For88yCeSooEOKvKHIjKg2dBC
	JjHfUnlJj983+0zsM05tneANaB1SK7uWQQrvFyW79PHF5WUz1kbbmlCpG2EYQt3HlhHkRUnUrFVBG
	9M5abmE8UaQTQY9Sapjun754G5UWzmWQwSMftSNd6l/TCUv5j0pgOyL3jYK6CNIeFJRFziwzKRiPB
	CW5UwvNLuibuvuRHLcV3ebCXOojKUvvxjXilUwBthcPZYfBBTraWlxZkMBdLuypdEh8GdH0SfWC0U
	kDNSH5dCtFbDOOv+SUaQ2kE+N8zH43H1KqRNbOQtWGlS8EYfWb9xYK60nlnOcZBRiuHwIvk8n81yr
	i7l56Bmg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2zzS-0001oW-EL; Fri, 22 Jan 2021 17:12:54 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2zzQ-0001nz-Jd; Fri, 22 Jan 2021 17:12:53 +0000
Received: by mail-ed1-x534.google.com with SMTP id d2so3826459edz.3;
 Fri, 22 Jan 2021 09:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=roMb/tyW1M9NQnpXqSRx9W00sUX6gkBYwKxG+CPcXzI=;
 b=fLRYxC7AMQdGJXu08Ng+pctI1fQayyxI5Mz88cRgUvTT/OSddQ/AcIiNEH9kw33TK/
 +UfJwsrO5GROpkmcYFqrBFeu+8xbk9a0lE590S+wqWy0ChKCnv3u/Ewvw/IdjYmm7dpj
 9HNXAamxY3/Q3fK3qIW0wddC/Xq0omP6MDZNhkcIwWaLaSt+Pkb4s6n4YSdRW7mhfImo
 30LZS8vS+Ar59oX9n4anGZYzdDSdaQiMsN0yprVzaYQuHrGc/VEebcmVMNAhqrEtKRsi
 amjz1dgF6fo8UbyCN35YZwIq/I7w3kN5IKib6y7yJStE28dqo0OK0QwkdySp3CrhfsFn
 5EZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=roMb/tyW1M9NQnpXqSRx9W00sUX6gkBYwKxG+CPcXzI=;
 b=IKxpM23RUo4Wi1Jz0l06dMIAppXGIo0uxgxQY/mGyWQdFC5mo72JlRY5cUAkIPwWue
 micyoI+Hrjwoitdp0fbVwyRde6ZFmQ3qyt2AsegBhkgAil+sF+YsUs/65MbZ+JZ6QNua
 KvierY8ubl1GoujZS0r51fFz91/9QB2aDaUAsZ4tOo7lcwlEqKIBZ65s4TbXAmOviroA
 ylo3wk3TVo7ZPqrZTvtuRTP5AAelWFHKf/g0djfEPbpW9Z/q8ilerlp7N7XMVkW6a8Io
 Fx3DEKhMHJe+7IySA+J316mlhvkTo1g/FPNC68fdH+Cxeb7xGGm3aX+EKlq8Ep8H7IOU
 UDWw==
X-Gm-Message-State: AOAM5322vtuUEbVagq6WJZP2U7rxpe1ZCit/MV2TgoZgje1EJ7QDaLn7
 LS9JRZZySG/lGGWBLKIO+Zo=
X-Google-Smtp-Source: ABdhPJwRQf20pEeRaLSU0zk5VFjq9xuFDxAISiKNGEbg4TZWmEW3jx8FO8sHyg3W/Zz7tgjMVG8XnQ==
X-Received: by 2002:aa7:d98a:: with SMTP id u10mr3972073eds.275.1611335571524; 
 Fri, 22 Jan 2021 09:12:51 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t21sm5927429edv.82.2021.01.22.09.12.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Jan 2021 09:12:51 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: fix ranges property format for rk3399
 pcie node
Date: Fri, 22 Jan 2021 18:12:43 +0100
Message-Id: <20210122171243.16138-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210122_121252_658719_8432D675 
X-CRM114-Status: GOOD (  11.78  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives for example this error:
/arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: pcie@f8000000:
ranges: 'oneOf' conditional failed, one must be fixed:

The pcie ranges property is an array. The dt-check expects that
each array item is wrapped with angle brackets, so fix that ranges
property format for the rk3399 pcie node.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/pci/pci-bus.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 15f8b212c..28459d194 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -259,8 +259,8 @@
 		       <&pcie_phy 2>, <&pcie_phy 3>;
 		phy-names = "pcie-phy-0", "pcie-phy-1",
 			    "pcie-phy-2", "pcie-phy-3";
-		ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x1e00000
-			  0x81000000 0x0 0xfbe00000 0x0 0xfbe00000 0x0 0x100000>;
+		ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x1e00000>,
+			 <0x81000000 0x0 0xfbe00000 0x0 0xfbe00000 0x0 0x100000>;
 		resets = <&cru SRST_PCIE_CORE>, <&cru SRST_PCIE_MGMT>,
 			 <&cru SRST_PCIE_MGMT_STICKY>, <&cru SRST_PCIE_PIPE>,
 			 <&cru SRST_PCIE_PM>, <&cru SRST_P_PCIE>,
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
