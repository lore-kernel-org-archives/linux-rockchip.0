Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D44CECED26E
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 06:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cjo38g/9iHC/6FBWZvMfN8fjsKUFbWK04fqqkfFuAHY=; b=WOLdPRIP2ndsQh
	PsWiwZLwqswrp4A0hXfDDDw/ixm/iHZdVqrGS2k6vS/uBRasQyCXdr8NRBHi4Fj6HhSCyASQ/cPlo
	0gkEOmBAxsc9h+rdKnr1nRbClic2Pd8NPqnl53fNxPuigTK4PFsBfp6UOixW8/T62m6Y+hbrNsx2c
	oUkvQMElm1t7+XjMIFrnEVxE7cX5l6RiSwXQqRNUc/d5Yjez0y3W4KYvzhDkfot2nYdLAxUpvacLo
	NiJX8ffZx1lI36m6E6ZOvplIHC2VnDnlEKSSOXmK7SHStOZ2OR3BqAR0kXMc0l/kF5KnVKJcU1cRf
	KZkiA7uobVpcUdr3oaTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy3Wv-00000004cnv-1lZR;
	Tue, 08 Oct 2024 06:17:09 +0000
Received: from mail-m12792.qiye.163.com ([115.236.127.92])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy3Wt-00000004cmf-1XqR
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 06:17:08 +0000
DKIM-Signature: a=rsa-sha256;
	b=CUV9JQ6TT2aQrm0e8FD1ZsjGt5wb9K9sADQwmJlXb7ulBtlgwtlT3cghiWc4PhQ5mIHuB1TBC0zBEtj18UGFnduRctYHYxlSd2q9KnHggh/bAKvKW0bTzjm6/6KY9TTdz5PLjDz/I7IXTaGVQKYu13qnH+HqRJ5crGaLDkBgsSM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=sDFPfh0ntBvyHdRIGFyGIID/VxPyFOd/6skrF31OfxY=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 2C382520783;
	Tue,  8 Oct 2024 14:16:40 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 4/5] soc: rockchip: power-domain: Add GENPD_FLAG_RPM_ALWAYS_ON support
Date: Tue,  8 Oct 2024 14:15:29 +0800
Message-Id: <1728368130-37213-5-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5MHVZKGEoeS0lPTE0ZShlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a926ac5cda303afkunm2c382520783
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PDI6Kzo5LTItDBYrGSMhN00u
	CxMaCwpVSlVKTElDSE1DSUtKQkNMVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhLQ003Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_231707_600684_9DDD1334 
X-CRM114-Status: GOOD (  11.55  )
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

If low level driver claims to keep its own power domain always on,
let pd driver respect the flag of GENPD_FLAG_RPM_ALWAYS_ON.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v3: None
Changes in v2: None

 drivers/pmdomain/rockchip/pm-domains.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index cb0f938..b2bb458 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -621,6 +621,9 @@ static int rockchip_pd_power_off(struct generic_pm_domain *domain)
 {
 	struct rockchip_pm_domain *pd = to_rockchip_pd(domain);
 
+	if (pd->genpd.flags & GENPD_FLAG_RPM_ALWAYS_ON)
+		return 0;
+
 	return rockchip_pd_power(pd, false);
 }
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
