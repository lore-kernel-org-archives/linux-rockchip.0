Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D3B606D80A
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2026 21:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EK13x7c6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=pBffYMiJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xh90SXqtiQ3iM40YdSPjQcmJIal3gk0mjrpwng56tKk=; b=EK13x7c6IguErGZXB9S3F55lAi
	YOUysZrc0rvms71RAeAvJ/PczE+Zl1cpaoms99Vk2z23Ys354DSWdMQxDj8CYJNQFGkorZtg4b8sR
	zm3xuJq9QSAasRlgXzAdQ33XGdfJa72im5L+/+LD978afkHFNaryeCEBFscB+XvlDM80sgMwoIHu8
	dbWWd5ksKg1+VJ/LGDSZq2P12QMRwth0dnBQ9twfCxs3/oeWIGK3yHkKUnt98MQOcHszHQCOjqPBT
	MnREPhS34PDilKIzo5/QwxcGJAMDpQ+xXVermOSfkrQ/kCJfrUht43tyTODWUxIFZXV1BuwFhPdVt
	Ul1EPEJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRw5-0000000DkHG-0zXs;
	Fri, 06 Nov 2026 21:57:25 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRw3-0000000DkFf-0HyO;
	Fri, 06 Nov 2026 21:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1794002240;
	bh=q2L96RZ60cbuyzKR+jlRIdp24LTnJ4KU7VVBXZsfgOY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pBffYMiJEL4qpB8IPcyAwIQNVXcFlfmKhOPHCudKZW1UBg+/8XqXrDdnv9FNBCyw5
	 NjADLX7YOx3uJ+2oAdRlHsMGTdrpzCwEvDCHqBa+1ylLHpWQ/PAHi5DZrqJxexrb2s
	 3EvS7YWmzEpRmEL599llqxI0v4YxYMzZFzN2UZBFhCLo1pbtW+pScv3ksYLudVOYrL
	 VlX34Wlv0VbIH9m5q5EnoDMmyEI5r+k6ovP9SkOX35oUfj5av9+B/tkEBht+4UGfLn
	 IWM3aKaNVuvXFKjnG+wy43khsvx/neIPKsG5ZJB4a8dHQvBP03FRHz9qZFfAGlgRHm
	 OICGU6MkEoVbQ==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5989917E038E;
	Fri, 06 Nov 2026 22:57:20 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 12ED2480029; Fri, 06 Nov 2026 22:57:20 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 06 Nov 2026 22:57:06 +0100
Subject: [PATCH 1/5] arm64: dts: rockchip: Add missing PCIe wake pinmux on
 RK3588 EVB1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-rk3588-evb1-dt-updates-v1-1-bdbe16223589@collabora.com>
References: <20261106-rk3588-evb1-dt-updates-v1-0-bdbe16223589@collabora.com>
In-Reply-To: <20261106-rk3588-evb1-dt-updates-v1-0-bdbe16223589@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=900;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=q2L96RZ60cbuyzKR+jlRIdp24LTnJ4KU7VVBXZsfgOY=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGruTT9Q7rqoWchJ0M3nVrXKDhUEF7ppZXTGf
 tETOliRIiIgHokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJq7k0/AAoJENju1/PI
 O/qalHIP/2H4u7L4Hv/3W84depaMQ/Rnbnd6IMNcdZHtI3vgpUDUJtWqPTjeuGAJkA2wcBCBlV9
 B9dpRNbp1z1hpkXfOW2i5RhT+ExvjqlTDG0sUAK3zBg8rw0PFvWMJ9n4vnO8TNPg7QIHsnk1mlc
 4LB0tWLusBO7PD5wpizvEpYMm+vS9AXjuFCfFpe40fZJnwyE6T2uYtcig+GiatCKfl7DeVtIPSK
 pYdv+vqyQbw+WyHoKKvPIKtHqIOOGtFA5EsSk4lX2uLbKw/CNFB5XS+SRPGUFl+0/9VgYyHbpTf
 ftxBRIKt58x0pVv1zzn6/d0ITstuVnFur4/9nvA8BrcxpaOXP6DTH+rn33I0ZokeZizWZQhBnmB
 C0KsivwOLroRwS0tKGR2AXt3nDEeKra5cy2s0wFm+g/xonmEguN4m8AYU7+8iCNHmqgO03fBEkc
 WY3/SUEOnSdc9gvmM6i0DXZAItHIJztMzwdYkGAmev+CbDQsU2ft9z53X7GPt7mknxSPPxjP8lA
 GoZe/o9pceNXdbRciI+yKneLI4HSzagNDOdjoYcnxCkXRFcxrvcOiJoTXMNoto019T1ayQxSLG1
 54jNd5Stv4GxcJHvcUFi4QbKWEvhG45cWgkkneG62tCKgpdESs53klcoMz1AzVGEGI3WqIF0ZEh
 gO63Co6oqp3a9c0sx53Itvg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_135723_295391_6DA7E30F 
X-CRM114-Status: GOOD (  11.07  )
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

Add missing pinmux for the PCIe wake signal for the onboard LAN card.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 8969b56f3063..87e624d1e094 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -555,7 +555,8 @@ wifi: wifi@0,0 {
 &pcie2x1l1 {
 	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_1_rst>, <&rtl8111_isolate>, <&pcie30x1m1_1_clkreqn>;
+	pinctrl-0 = <&pcie2_1_rst>, <&rtl8111_isolate>, <&pcie30x1m1_1_clkreqn>,
+		    <&pcie30x1m1_1_waken>;
 	supports-clkreq;
 	status = "okay";
 };

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
