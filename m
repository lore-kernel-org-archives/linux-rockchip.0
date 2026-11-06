Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDFE606D81A
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2026 21:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NBBohhdO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=JC5/HUVV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=cQcn7oRMO7IDHfy9pf192av91eX5L5H8XU/J7VLhVIU=; b=NBBohhdOqS2gyIvvveO5Brc9CP
	sVLcxBdCmrvyT1AoibPsy06CWMgbvf+4vrp9XspILpxlV6FF6+ML73NtwjfmrwasSv2YO2lulJK54
	WRLHHPlbFVAd/WqDMC0FbT0JXjzhkCs0ICBKB5OfoPnC7ZsH+5NdxLRvFQVObgLtKMgqp3Iu6tgNn
	mGRWzJ29iW7w+AcHqgg2uXJTD19zrN/SABav8riimW9Irj8XNfKWTMCxCS8SnUmfBy92FxoYec7HO
	sIOCbRt/OpYTW+8oVaxuQg3DOAw3gcOUn1Cycmbp3pLpD2PRGAvsPeEewBXM3z6km5mjqxQ4mtPM+
	ZCmCjVPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRw9-0000000DkKk-2Fx1;
	Fri, 06 Nov 2026 21:57:29 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRw3-0000000DkFh-1nfG;
	Fri, 06 Nov 2026 21:57:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1794002240;
	bh=GwsxCh0AXOERUXo7gF0gQrMDOeUWpvtvAN+2/W8c+Eg=;
	h=From:Subject:Date:To:Cc:From;
	b=JC5/HUVVUUKB+7jlmcuSkL1H69b/fsB0X7cx49xzmFlutM+WfmZV+B/Ja1+M7Xgug
	 D4z1kLG/8yWv7rIcCThR1ZACjPEx9euPq3Legd3BDQn3S+xQbiYqSTNh+hW9fWGOV3
	 5htShih36DZ85BzCvGSylSUQBdhAK0gd5nohKDus/J4ZxCFXqkACxALN6NdDBC/aDr
	 L19QKR3YPTxf9+oz8gR3DMDSgKcdDWSLO2Lfq0IK2am0pd9R7wdKgWryvgjiWh2wBt
	 W8MQfle4dHGWscBvhzexq95/ipvCAEOG9uuzkYt7o45M3B/2AIB9PMAVzeFd/V7eKH
	 79A9tyrpEs1zA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5ACCB17E0411;
	Fri, 06 Nov 2026 22:57:20 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1183348002B; Fri, 06 Nov 2026 22:57:20 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH 0/5] arm64: dts: rockchip: Enable more features on RK3588
 EVB1
Date: Fri, 06 Nov 2026 22:57:05 +0100
Message-Id: <20261106-rk3588-evb1-dt-updates-v1-0-bdbe16223589@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMwQ6CMAyA4VchPduEssjQVzEcxlq1miBZBzEhv
 LsTjt/h/1cwSSoG12qFJIuafsYCOlUQn2F8CCoXQ1M3LVHdYnq7c9ehLAMhZ5wnDlkM2Xl3Ie+
 jDwwlnpLc9buPb/1hm4eXxPy/wbb9AH7ewtZ6AAAA
X-Change-ID: 20261106-rk3588-evb1-dt-updates-d3739177c7ad
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=780;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=GwsxCh0AXOERUXo7gF0gQrMDOeUWpvtvAN+2/W8c+Eg=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGruTT8yHuUp5JsA0YUEcSipA8BPrEgv9tOTn
 BpyKhKn7iHae4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJq7k0/AAoJENju1/PI
 O/qant8QAIDMrLDxob+tGOo/PrHD97F9SUAJP2RGPodQFfQpg+NG/3ouQBzRCayD5KaJCQHBAjt
 1BOMrZfXRUj/ZpFIldVJCvV69ybFHSLnqQv0emDwRFP4PGNJPPDv8sSAmvKaKdUGeDECvfpvfl2
 hrddw7mjU6LBzOT7nB98U5AKEY/cBBIYQfc4pSVYRdcvMendL9BHoaCSBkdky0AClNDpVqWAM4M
 ZtrcwchjkrzZS1l0WwKqPjDz+SqmNIKhVJfnxheJGWkXqpfw4+KGHU+VkWSZxQIL+7vMI614uOS
 Sn896Fp0XI5MTDXvk7M9I6Zs89sV4WC8wbCqv1qL6C/4Q6dZdWyIbuKjwea58Gl7AscjtRUNhY6
 rJpXQfpnE16e9YEEujM/E6fAKmz5KV8p2+bv4dggRPAsGFqRm4gMQi2v/xtBYL/FN0T75exnLAS
 n23770Hiviq39bY2B2VEcwXmAkgWRue37jIZ0AB5X2uJKbtvFysQ+dx3GknsKPWZdYl6vxgAm/z
 rRB5XUggr1L+uN7jbp1DVFnCMgHrHg5CO7EVDN+q1LwbsGnZYLeexO2FjDEsYUcjkEBnJ2npASr
 NEBn4MIPR/nP1SyifNTOYk9GUM7uLVAS6LWXVv65nErQrW1en6Aq29UltqXFbxsUBaheBUqcNvO
 v0Wklf9t7kLVpG/+iMewngg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_135723_653881_D2C5AF30 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Enable a bunch of features on the RK3588 EVB1.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Sebastian Reichel (5):
      arm64: dts: rockchip: Add missing PCIe wake pinmux on RK3588 EVB1
      arm64: dts: rockchip: Enable NPU on RK3588 EVB1
      arm64: dts: rockchip: Enable HDMI sound on RK3588 EVB1
      arm64: dts: rockchip: Add DSI panel to RK3588 EVB1
      arm64: dts: rockchip: Add Bluetooth to RK3588 EVB1

 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 180 ++++++++++++++++++++++-
 1 file changed, 179 insertions(+), 1 deletion(-)
---
base-commit: cabb6811c38a46337d5f4252b4dc390f9296856c
change-id: 20261106-rk3588-evb1-dt-updates-d3739177c7ad

Best regards,
--  
Sebastian Reichel <sebastian.reichel@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
