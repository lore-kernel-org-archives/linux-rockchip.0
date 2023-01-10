Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A089C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 15:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tawz0fEvcvbixj16mlWHlqmOYhdAE7h2mboA742x13U=; b=MowaVffJOPnU2+
	AHDDM7LKQIvi3kaPwDOxjYgCSrT8VxvMhXLiQoHBZ7ShqYHTB8BAXkD8pVuXrrLSCS3GC+5uMD2X+
	U/EfketVMeOfKrpyQqQoWrfG3BC1Y+tE6sH7yW2lzZMnUmJvZuE7acYaWJ1pjOvjyGFTJUF4x2gqJ
	g9yL40JWowHfk3g+bXjT/cbIIuVE3DTsDpVdtW3f9QICHb+3MLqoLrVMJ0q18AFBzo/hbTSibh1FP
	j5vHOjnLrD7Tl4TmG/WpAEpf+KpFgH3vnMEj4utVZJyLSu2g2b+Jdz18kaMMxc1iSX78pk5QLbSKg
	VK1qOGPd5wlL5LlQuT9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGwB-007feQ-Vd; Tue, 10 Jan 2023 15:53:20 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGvu-007fTj-G0; Tue, 10 Jan 2023 15:53:03 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id ED4CF6602D88;
	Tue, 10 Jan 2023 15:52:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673365979;
	bh=NifcOS43y+N68BurrSuB+JMF2pV8C2qpP/aWsRXSUKk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MqwyudRT1PL6D6Tkp7yCXoGGWR1WwqJV/wdzoT3fVHB+r+Uo5SUhdCTp8ZnBxRyYg
	 74OmvChDrczxyw3nC4HEBVaVrlc/KAijfRCNacVLjoTnREr0dW+3UiUeZYLzeo6QlU
	 2hRnAoBh2ux6X7s9ONZ6xLw+m18aUvEigTUWBXYgGXFd9fSfqaxUXRBESyoIacs4fO
	 1XqecZmkQyxPAB962SkrjgtbRltkpzdvG5YzIsvcRMfdTKmKoQXBhxCsSsaDEO1u1u
	 4tRn2e+KEixWuZ6lmoX3xkwJycCDRhK2diONFVmgKVTZtDdxAfuIq7y5GxU3K6I45R
	 rlrizMspoT6ng==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v1 2/3] arm64: dts: rockchip: Remove empty line from rock-5a
Date: Tue, 10 Jan 2023 15:52:51 +0000
Message-Id: <20230110155252.189300-3-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230110155252.189300-1-chris.obbard@collabora.com>
References: <20230110155252.189300-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_075302_759553_F966CBE0 
X-CRM114-Status: UNSURE (   9.16  )
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

There is a line which is empty. Remove it.

Fixes: a4a8f1afb360 ("arm64: dts: rockchip: Add rock-5a board")
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index c85af1334c05..6432b586bf5a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -52,7 +52,6 @@ rtl8211f {
 		rtl8211f_rst: rtl8211f-rst {
 			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-
 	};
 };
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
