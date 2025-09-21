Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC4CCAC5B0
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Sep 2025 06:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4q+6MTPejPXjjTQPxUyOKfdRJoKAS8DMiMLZ8Abm4U=; b=js7/qz/QZ73Pjb
	/qx1hqM7/QVzFKbzZ6d9BvB/s+Q/HP8Wnds3EvZQ6pY7SBRjbnU1OepodsUVPTNLFP/t1VPjLGS7Q
	5psHqXT+GVOTxaYnTadNssrkGveK0ABoI7lcn5XtVJ3YL4qAkgyNSY11jV6cU1PnvhJH6G87N2ftC
	UrXNpWbeOJk+NImSI604zQAo1dz+4Azuz4Ql4bE1Ru/wI7iQNQjcFuJa5nb5Uk4hslju6L3HOQjHh
	6A3iVhbsZrve8YgOJ6AK9HXre46WdrpXDbmMSKT/r0UQEgH+DeWyLmud/8VdKuoeBQlzy+4wpKHfX
	2PlOYq5+1W1ji87gIwSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0Dl6-00000006plJ-1wFa;
	Sun, 21 Sep 2025 06:41:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0Dkv-00000006pen-1uMX;
	Sun, 21 Sep 2025 06:41:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7899944958;
	Sun, 21 Sep 2025 06:41:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 461B4C116C6;
	Sun, 21 Sep 2025 06:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758436864;
	bh=tWkryI5Fn0tquUFMSgR7wEMVnb6X+aoYcV4XgpFoxII=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=MwMfYkEv87yYuN8Gb/NL2fjhvSLiaH8sv73sBLNcVGc8TWCzD5LMN08bt4fy8rFre
	 1Ksu7ymmjMqL4iP633bXgBp+STpiwzdspBmZy0aYm8HGVtO+hsk8xzrjBu4lNIc7HC
	 FQxGowvzs22+ozT+POrqbltYI9vVBdoUNNaNVedoYN+jzVhpDWqTOTexltMkWy1vT+
	 f7Xvsfbq3SOZQ4xzPNdmGwC4YgnZ/i6MIwvc4uO4N/ecQdZJTsnZNruqHkWKIvL+7o
	 Z4sHwkOzMA64S36FortAFCLhbJKgc4eqrru4hO2LKyO+2ppgMNvzMPmnyK8URBLN9s
	 ki2Pi7RbugGjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C759CAC59A;
	Sun, 21 Sep 2025 06:41:04 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Sat, 20 Sep 2025 23:41:04 -0700
Subject: [PATCH 2/5] arm64: dts: rk3399-pinephone-pro: Add accelerometer
 sensor support
MIME-Version: 1.0
Message-Id: <20250920-ppp_light_accel_mag_vol-down-v1-2-c8bbcd3e2e94@gmail.com>
References: <20250920-ppp_light_accel_mag_vol-down-v1-0-c8bbcd3e2e94@gmail.com>
In-Reply-To: <20250920-ppp_light_accel_mag_vol-down-v1-0-c8bbcd3e2e94@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Ondrej Jirman <megi@xff.cz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758436863; l=883;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=SfqrwYTRcKhC1h7DV8dOsoX/vi0YcmV/gXhDpcpF9vw=;
 b=7qCe7uXU7IlkiQxeGNCcIveyXGrAhfeincuEYiMyWR3o4jwBCh7vttA2bIreRtDoMYHdckn/x
 Q6Kd7ALLhJmDazfyL4BMXqDB6MJlB20zGdduy4HUWaONbY0qPnOpsoz
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_234105_530723_E6564CE7 
X-CRM114-Status: UNSURE (   8.24  )
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
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ondrej Jirman <megi@xff.cz>

Pinephone Pro uses mpu6500.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 7d1257a3f2e0cbdc65a810062ecd5117f9f5b687..da7ce905152269436410b959be937e07c23772b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -544,7 +544,13 @@ mpu6500@68 {
 		reg = <0x68>;
 		interrupt-parent = <&gpio1>;
 		interrupts = <RK_PC6 IRQ_TYPE_LEVEL_LOW>;
+		vdd-supply = <&vcc_1v8>;
 		vddio-supply = <&vcc_1v8>;
+
+		mount-matrix =
+			"1", "0", "0",
+			"0", "-1", "0",
+			"0", "0", "1";
 	};
 };
 

-- 
2.51.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
