Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C3DCC71136
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 20:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nI7WdcYxkGSXkxWLfr40gAH5Phesu4MvpuIj9ssZ+xw=; b=YW/F7cwYytVl6x
	oOk+WSR2ZIRaPdR4BIQSxoMvdh1/+5N1AH6dZIsE1gFvAuAW7WPJRHnmHTzkcFTLxj2ABzSQV+IQN
	7O40sdbcjQnLgEBjJ3UU3A2kTvCeC7wkLEOI8wOxiQSVMaV5/cTVK2Me+jzy/YUEKpz3mlkNlLa0c
	CbmkpHuseZeq5BlKUdYj0cg9+9eAoGNDaia7lRWzo7lUD6g5kJYLn+h+6RYoPucz/77SC33wlvmQF
	zFidhq3s7fdQjFomBC8qD7mxZQ7n1wTOfKYHTekMX+C7QHyyAa/HjcS9HCa9PTqMMIqW99mnsWxpu
	kFX8Qwn7xZ3ZeGGkI9cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPRrR-0000000B8le-0Z20;
	Wed, 11 Jun 2025 20:15:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPP6m-0000000AhR5-3pBG;
	Wed, 11 Jun 2025 17:19:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Reply-To:Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Content-ID:Content-Description;
	bh=2ufWrUTClve7Nla0w1wYuSup+O9LSgCuSAMViPexR5w=; b=fiHacnvcMEiwqz92vO9gNmsvWG
	XpEI1L7TCFo1dAz93RIqD3qXQ+zH5wLLKJOyiTPuUoL34w7byXbEx6qgCBDvq2gPMm+qqyYG9fOF9
	c1iT8xEatwqOU7H75Y6ygYFcFKyOJFMpDWeRfDUFqa6DHfDNRsxdrR5EFZZhezsj1arxbJmWP5ZRk
	Qg+jG8VQeffRZGFkOFxWoI/bLhjPqgfuKY02xQkUj0ivtSwJQbA8Pz8fTs2ncUVu0kKufzI//Nzxq
	7wqannEj4fFP5JZxz2lWo7NkfEvgRexKeNuWjfIkoXZasptQv2HoJAX/S8PdvBo4kKfKGnJ3d7PLP
	6cTsHmOw==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPP6h-00000002Sdg-42XA;
	Wed, 11 Jun 2025 17:19:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 09A694A970;
	Wed, 11 Jun 2025 17:19:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65BEEC19421;
	Wed, 11 Jun 2025 17:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749662357;
	bh=nxLCM24P7cubSUi7T31Eqd5AAY6vpTE9c1xWbT9LPwM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Uk4Ydl56+0jskp364VikNGL/gS2DrXRzbQ+SoAA2fX20lONglMwG3mrXvj+uRJYcQ
	 4PVL3iqhuMGuCve/q/UM8r38Q42CUbC9zBcvKpghaMgEcg2Iv4tVQzQoTXN5FwuFfG
	 Slr3IpAk6SIwm7zyCCzNngWaCQZeJfCHo+XD/Z2tKo7OvKOwHxvnp0seyduy7GWF1R
	 WZ254IrxdVFOdd23UirV79HVIEXjP0e7QLic97BaUipm/rk2HR3loqajdbXZtN8YVd
	 ALzmgIhvvti0OFm7FbLVIOp+pM8lDLXBhNj47gKiNu1VxAL59oCuHDcGFF66nT1fwT
	 NLLqlCnDW3eQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B97C7113D;
	Wed, 11 Jun 2025 17:19:17 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Date: Wed, 11 Jun 2025 19:06:54 +0200
Subject: [PATCH v8 09/13] arm64: defconfig: enable rockchip camera
 interface and mipi csi-2 receiver
MIME-Version: 1.0
Message-Id: <20240220-rk3568-vicap-v8-9-9d9cbc4b524d@collabora.com>
References: <20240220-rk3568-vicap-v8-0-9d9cbc4b524d@collabora.com>
In-Reply-To: <20240220-rk3568-vicap-v8-0-9d9cbc4b524d@collabora.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Gerald Loacker <gerald.loacker@wolfvision.net>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Markus Elfring <Markus.Elfring@web.de>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Collabora Kernel Team <kernel@collabora.com>, 
 Paul Kocialkowski <paulk@sys-base.io>, 
 Alexander Shiyan <eagle.alexander923@gmail.com>, 
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Michael Riesch <michael.riesch@collabora.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749661609; l=837;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=s455V9CkyvpGzSN6VrzWbnGJFsrnYK1zOquWGv1ME3g=;
 b=mfLu88r0mj7ziuH24iJxgfOkRVs26CXynMOS6vyyAlqmvc/gdRXzv+mQLubStZj5r6nE9BDAM
 Ys/Vf/C7qnTBH+P7PVbxJ513uuV9dgVkhUtyJugXVeTi/FDc61UMriU
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_181924_357596_F090E09D 
X-CRM114-Status: UNSURE (   9.59  )
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
Reply-To: michael.riesch@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Michael Riesch <michael.riesch@collabora.com>

The Rockchip Camera Interface (CIF) and the Rockchip MIPI CSI-2 Receiver
are featured in many Rockchip SoCs in different variations.
Enable the drivers for them in the default configuration.

Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 897fc686e6a9..fe07209102dc 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -865,6 +865,8 @@ CONFIG_VIDEO_RENESAS_FCP=m
 CONFIG_VIDEO_RENESAS_FDP1=m
 CONFIG_VIDEO_RENESAS_VSP1=m
 CONFIG_VIDEO_RCAR_DRIF=m
+CONFIG_VIDEO_ROCKCHIP_CIF=m
+CONFIG_VIDEO_ROCKCHIP_CSI=m
 CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
 CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
 CONFIG_VIDEO_SAMSUNG_S5P_MFC=m

-- 
2.39.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
