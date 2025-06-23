Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 884A0C7EE32
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 19:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4xr1+cjY/121lUdaXaVR9p5rnEck1r4czrSzV7YVd8=; b=t2oegM0xhaia+I
	WuONyjgPvIF1XzXO1bnWrRXn2jl1e7iRY3FdN7HdpXVGqrefZuaVZr1wqFLhAa7WFDEQHquC9hPiR
	ryzrFURlIy2TnSsCk1Me/Me7MqUC9sD3/hVnJrIQkrBPNSyYOJM6qBt7m7HszEl4DtUaDs43hm7v7
	Tg9gex/069uhNmZ+7wRRAwG36+ESKaG1e8cZGLEznw8zLjAmXnNv6e3UEUtx1K2IdVGo7war8Pg1P
	xc7sV/A9+5NckwXO7cctxbb93dVk8guUTCK+0a1jW9S+GVM54XL0rehUt1JODynIZUxPS9Ba/M/M2
	624swoopX9itS3JHjcrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTn3N-00000003p6I-1VgQ;
	Mon, 23 Jun 2025 19:42:05 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjGn-00000003Gme-3Te1;
	Mon, 23 Jun 2025 15:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1750693180;
	bh=4bDNVFCV1Re2zfChjnEdtk38UjbrX0DDqSN/Fh1aO6E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pQUPwO3h6u5ZEtSj+b5wGM9tiwlaUtD+Yam0kFhTNsaW44MuIvKdLbV7DfbX5wMao
	 zrcliNYkCe3hDalEgve12860WSP04Hlz1/WkNVlciFBRuSJEk7SClOFLOQayY9PqYp
	 /LyDFZulUB8Gm2eZt0Txi49yOVRBZwC3L/myNFfvzLQkrtk4W7mwWh2sCL2oGkxuc1
	 IJsWLbA8ia4WY4ZRfLE7D/1uOoPf/Eb591EHspqmXbX5C8q60JH+P1JFLF7YbwtYZi
	 iviFOiNs4RqwK1g0JWQotQSGzRDVdqU2MOvl0PZpSk1hLCk5m2wc6S1aSSXA5tadiS
	 mdMKUcc5EawsA==
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d44b:b63b:15ee:9c1d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8A43917E159C;
	Mon, 23 Jun 2025 17:39:39 +0200 (CEST)
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
Subject: [PATCH v4 5/5] arm64: defconfig: enable Verisilicon IOMMU
Date: Mon, 23 Jun 2025 17:39:29 +0200
Message-ID: <20250623153931.158765-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250623153931.158765-1-benjamin.gaignard@collabora.com>
References: <20250623153931.158765-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_083942_043453_5FEF9F1E 
X-CRM114-Status: UNSURE (   7.54  )
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
index 897fc686e6a9..a5122990ecfa 100644
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
