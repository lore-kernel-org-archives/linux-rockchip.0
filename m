Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE359C54E67
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 16:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyArH2XpynWl5K1XPV6/PE9tN/dd2DxoyPKkjjWS87A=; b=myCdh5c7ExFGK/
	SCQsFuoXtnZX6mzbgjTp9u3dFHGezUXa6dGptC0fSo7y2lApMAskPmsPczwH3R5cn+lk29bscCIbK
	4TdUtbo6oIzIv2uesDaoXLy7zSsCB3Dyj1jN9VqgHdG36tqNZon7c0B6MLoezrL0twgZABjJxevhb
	udbI4Z24XIGSAJzByUdin8QKtp+Z/tjTTji8k88R3aPvGodbG+zUbM0NpvPL+0ue7IzITyFC2vB2l
	kABdQqStYEcZV8jVmCV1R/0Ew1Mgou0ZkohqibnFrcPQOAJeBk8C5V4NVQ0SxjJBQmY1GkUfonIvz
	XuYnEB0T91DcE15RAYAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpA2T-00000005aGM-1tm6;
	Tue, 26 Mar 2024 16:52:41 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpA2P-00000005aD3-3MMg
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Mar 2024 16:52:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711471953;
	bh=I3p4Ib0ISW7IQcsOO8wa91qosPmVrlgxRcCilUELSWY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=r07DPXCb3eSsJ+fTABB6u4byIZ15gIFRrWsVgKw+7Z/pyO2WwsSWPSYMip/RrclC1
	 wdUa9U35P4fIjxYNtmQtqPPIsclLTk4Mp2ATMqI2v9/UvqA/ucbKiw6UJNQ86fky+Z
	 O49SjWs1zaKf4YrNObTczT2rQp+41lULnmHyUxWfowbWne0phPvULFFwNnDiqyDN91
	 HEM5safl4msA3icuRiE7noHGu8wkesy3YRBg9FdCPjy4uWrgkILCyCmzsAWLYnD8qO
	 jM/alM0iWltubxyxgUyP/SgCrupC9255lLfen0xRkTF8PVzKl0hlP5ChlwMQyRckpF
	 6vSijGRZBph9g==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6A0B137820CD;
	Tue, 26 Mar 2024 16:52:33 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1188E4800CB; Tue, 26 Mar 2024 17:52:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 1/4] arm64: defconfig: support Mali CSF-based GPUs
Date: Tue, 26 Mar 2024 17:52:05 +0100
Message-ID: <20240326165232.73585-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240326165232.73585-1-sebastian.reichel@collabora.com>
References: <20240326165232.73585-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_095238_149189_C628BD6A 
X-CRM114-Status: UNSURE (   8.98  )
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

Enable support for Mali CSF-based GPUs, which is found on recent
ARM SoCs, such as Rockchip or Mediatek.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2c30d617e180..65e33174f813 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -907,6 +907,7 @@ CONFIG_DRM_MESON=m
 CONFIG_DRM_PL111=m
 CONFIG_DRM_LIMA=m
 CONFIG_DRM_PANFROST=m
+CONFIG_DRM_PANTHOR=m
 CONFIG_DRM_TIDSS=m
 CONFIG_DRM_POWERVR=m
 CONFIG_FB=y
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
