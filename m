Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DE80D111B0
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 07:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ax0FdmwxBoXH0bDDSYsboQZBteIaoT6YpdlunmhS4W8=; b=lcEsxniHIDJgpc
	nGYoZzG3REtplB66P/ycoyqLYKI+m9yaDzoRbk00vYPVfUxDs8Vz8ay7eoGUNBJET0nn94O9WSOud
	zec/ieZeQy5teDDpwMCFoi2OQfKklxZcYzUtdviJ4o1I40/zCMIR/L1YmN9Irt5RAXxlJ5eIQ576F
	BgryIdYRwjSgVmMNewIfHO6kfMiUfreKEbTQv3RAp63kdGEIIsD2YgRrrK9GQYuRhL9YU1QK+uOMX
	UNwYEkQzDFS2uMmRZ46jl5asSXzpr4gex4WG35hdiJKJFeMMCnRUHXwFyqKXLkJHEgXuTJisIHBO/
	iT3SyaYVMfxkKvxBXusA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7raK-0000000CrEF-0B0h;
	Mon, 04 Nov 2024 07:33:12 +0000
Received: from mail-m6092.netease.com ([210.79.60.92])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7raH-0000000CrDX-0Soq
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 07:33:10 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1b5f85e2;
	Mon, 4 Nov 2024 15:33:04 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4 3/7] soc: rockchip: add header for suspend mode SIP interface
Date: Mon,  4 Nov 2024 15:31:57 +0800
Message-Id: <1730705521-23081-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk8eGFZIHU5PQ08YSBlMHR5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a92f61772c109cckunm1b5f85e2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MiI6HDo6DjIvGjoqDjVKDy8D
	IzkwCg1VSlVKTEhLTEtOTkNNT0NMVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUJOTzcG
DKIM-Signature: a=rsa-sha256;
	b=BDoi8/1o0y4qs1XCUwE1wY8O5Dwy5r8bBTrIJIljgXxpTVkvNOJH/smvoGA+cNjncWRMVQ+cdMOGGwv9YjDfL1I3aAPKzaWB4g2Z9NBlGbdaKX3oCHM5zgKGEy36ss1KQuARxkl0I89/cpCOzfu0PbCIRGn8ITAh+Advkikp1O8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Ty6mGnWBoIaPt2RyCxg02+KQlGxmCwE6/d4KhDj58FM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241103_233309_382875_4835F3C4 
X-CRM114-Status: GOOD (  10.50  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add ROCKCHIP_SIP_SUSPEND_MODE to pass down parameters to Trusted Firmware
in order to decide suspend mode. Currently only add ROCKCHIP_SLEEP_PD_CONFIG
which teaches firmware to power down controllers or not.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v4: None
Changes in v3: None
Changes in v2: None

 include/soc/rockchip/rockchip_sip.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/soc/rockchip/rockchip_sip.h b/include/soc/rockchip/rockchip_sip.h
index c46a9ae..501ad1f 100644
--- a/include/soc/rockchip/rockchip_sip.h
+++ b/include/soc/rockchip/rockchip_sip.h
@@ -6,6 +6,9 @@
 #ifndef __SOC_ROCKCHIP_SIP_H
 #define __SOC_ROCKCHIP_SIP_H
 
+#define ROCKCHIP_SIP_SUSPEND_MODE		0x82000003
+#define ROCKCHIP_SLEEP_PD_CONFIG		0xff
+
 #define ROCKCHIP_SIP_DRAM_FREQ			0x82000008
 #define ROCKCHIP_SIP_CONFIG_DRAM_INIT		0x00
 #define ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE	0x01
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
