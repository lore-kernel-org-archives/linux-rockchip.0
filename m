Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CB8DC83F09
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 10:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xpv+WX3ouElMBVYIpeBC6oodGiU2ERnDnyil2aJVzKI=; b=kLrxLpOIULJjtA
	e4xJQeO5UyhqKtXRfdJGUQ7PQgaGXze6NamPE9lrXueZlNln38jsHQjqXd5q/A5a5Ddg4mFM7ymg4
	ftHOrjqd5CB+MfbjXJYz6TRx64tTK8I8rYnoBF4ZJWK3a4xvJ/oHg/T8gcenwygUy/JEanuM6HrgF
	x6eX6yom3nOb6I9YQa8uOcVD2FNxLdtkpquyfHh1WnWAsOOgQGpaVL8HPl5v4IrRD1L2pPKj0TiWs
	UYim51o4qk6GtSytAUpbskr4HC3C4lVAC73e7YGnO9NFjTYQyWP1vawqEYP0R7wZHJoq274mL7qkR
	T93fnTvscjY+neeRdk5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSI5-00000008Lrm-3KWB;
	Wed, 09 Jul 2025 10:44:41 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQYl-000000081ry-3Rdg;
	Wed, 09 Jul 2025 08:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1752051225;
	bh=QYXHcCL2Vs79N2X0jF3tLL5lpOOl+YSA52sVaeKfUeo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=m3hO8Z/Hm/WU0S2/37/px10JjlMVhXiD/fzyJW0SGXHoI8NvJNx04URZMYlnuna0q
	 4W7Jk3s0WDiWqE3t/HabB5kpht0mAhHhQE3FBsb40PNpaNyWLfpmxiRQMvVTr9+HRq
	 aJn3FnC1s3VbAraASXGMoNm9b6ATG8WZXnk3zs0+gRnlczo+7ykdEt+EzjE1WmfzRC
	 yzuXt08zNRT8Srax5ietcZ39lylFVwNwpxA98mlmA/WDU2vdGbbGHCarb/70Me85vv
	 JnpSwi2Kw62X7rfrcXp60jDfAXzv0M4q+Zb0sTZmdzvW40ca8Xsw6C3xB29aCY68Bx
	 Yy6b1u24sghSA==
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:8d6b:4a4d:ad13:46c1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 41E4217E1110;
	Wed,  9 Jul 2025 10:53:45 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	nicolas.dufresne@collabora.com,
	jgg@ziepe.ca
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 5/5] arm64: defconfig: enable Verisilicon IOMMU
Date: Wed,  9 Jul 2025 10:53:30 +0200
Message-ID: <20250709085337.53697-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250709085337.53697-1-benjamin.gaignard@collabora.com>
References: <20250709085337.53697-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_015348_003582_A9B0777C 
X-CRM114-Status: UNSURE (   7.61  )
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

Enable Verisilicon IOMMU used by RK3588 AV1 hardware codec.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7e04a2905ce4..a639388298e7 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1451,6 +1451,7 @@ CONFIG_ARM_SMMU=y
 CONFIG_ARM_SMMU_V3=y
 CONFIG_MTK_IOMMU=y
 CONFIG_QCOM_IOMMU=y
+CONFIG_VSI_IOMMU=m
 CONFIG_REMOTEPROC=y
 CONFIG_IMX_REMOTEPROC=y
 CONFIG_MTK_SCP=m
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
