Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62F16CD13CF
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 09:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xlq4FzXSxsTbEh6XVb7hXFs7uRGcCfudDNLRN8ZR9BM=; b=SPFyrV5f+hadrI
	l6Hf4dMi4xG4/Vey5etl3uEu067upNCXjKRBwXGhZHrRwYENgpiixXllmZ+VBoIAG6ODysE6HyPR5
	pz+de2H/eUk4qImvWvZuwyN/JWhNrzDpi6E2jBnyC3FEXjupojhDsQpybp6Qwq8mgNsoIj1abN3oN
	13tUixBdReKzJ1R46Or3x96BE9vh44n/x0258eLoGPSQTjvkoC9gU1gBnFxczM568UkYwHRZQRhy3
	tgg5qbQcjofcOO6fuD5YmHGN4h2GQXriejCNBARaTKA+JXdJj4ZiOeuCLlgymPj+j3ODmQe5QhaG2
	SHk4VZRAFjIAFtUxgvyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQ05-0000000HCZ0-2U2b;
	Tue, 03 Sep 2024 09:39:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkT-0000000H7Yl-3YiM
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 09:22:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ItkcVi7ThTGtZefrPWCHoiNpuKYhjr5fgK2z7o00adE=; b=MqZKFSHJKFi+WXMIEYQhd0JQ0x
	pNyon4SxS1ckisHnHtweP4BcnRpos4CocmV5UsnSpFr5dqGDDkqmfciiJroUQ20nor6DkkzzeuTbe
	ZAyGVmUyhfzg5vkZzeo0jYEYLdMF/hLGD3hjo7BwXOYe6ejnp30xLq6eUMkTaeiLnC17mPzKFonX9
	xpC+e0LAnhp+wSYeYSe+/qJB42QYH1HHwSn8F0k5QQXim7IZe9WeKHoqAZ3Y4wkEHFbB9lDt/yg2N
	o7B5cyt16lGlq/hz7KGBWwsGEzTBXbVgDFCpu8GP+csJzNwykH226EjlfZ1GdZ5AW5RrRfOQarxxn
	JDTsCIJw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkO-0000000CIdn-1f7K
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 09:22:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPkI-0000o1-MY
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:42 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPkB-0059SX-Hm
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:35 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 083D433110A
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 09:22:34 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id A046B331031;
	Tue, 03 Sep 2024 09:22:27 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 7eee1df5;
	Tue, 3 Sep 2024 09:22:26 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 03 Sep 2024 11:21:50 +0200
Subject: [PATCH can-next v4 08/20] can: rockchip_canfd: add notes about
 known issues
MIME-Version: 1.0
Message-Id: <20240903-rockchip-canfd-v4-8-1dc3f3f32856@pengutronix.de>
References: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
In-Reply-To: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
To: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 David Jander <david.jander@protonic.nl>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=1269; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=dZ/z0OYSJdLd/zc3tGmB/s4VwJfdIqUEsJyC51U0B6w=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm1tU/bADVIpOb2y3m8ufpqN6eoibZ/0jgX5iXw
 3IOqrUBaECJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtbVPwAKCRAoOKI+ei28
 b4ngB/9/EDr2Wl0N7eR8to3BPdEfWb1ZNLdklUXo8B3YcbWERQU6rSp3z+YYnQ9PmToZrVr1+yJ
 XeS31v3etcJOnFxiM+ELM/B51U/vyxhpH/eyrQeQC7ZWH8ytulU8C9hee+Wb7sCWmmVPm3tPSry
 mGugF7IpcJhN/EcS+emvmxL7XuatDyUQBKz2OgJyyS4je3qURwBeO5f+UxbBZsLMfuOg8HKP4XF
 E2ABOOwk0YOjACtEyvvFSkidJYrQnnHaCbU/gSQEge8eLIJqqrkZ616pYX01SAqPDRpr++ZWkDB
 j8U+KD2ZfhYiiSI2jOmYLWYgGbSGRu75A9DRQ1zWH9fFQSoG
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_102249_015821_37DA42B0 
X-CRM114-Status: GOOD (  11.83  )
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

Even the rk3568v3 has some known issues. Document them together with a
reproducer.

Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index 9b446331fbd0..3dafb5e68dc5 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -370,6 +370,26 @@
  */
 #define RKCANFD_QUIRK_CANFD_BROKEN BIT(12)
 
+/* known issues with rk3568v3:
+ *
+ * - Overload situation during high bus load
+ *   To reproduce:
+ *   host:
+ *     # add a 2nd CAN adapter to the CAN bus
+ *     cangen can0 -I 1 -Li -Di -p10 -g 0.3
+ *     cansequence -rve
+ *   DUT:
+ *     cangen can0 -I2 -L1 -Di -p10 -c10 -g 1 -e
+ *     cansequence -rv -i 1
+ *
+ * - TX starvation after repeated Bus-Off
+ *   To reproduce:
+ *   host:
+ *     sleep 3 && cangen can0 -I2 -Li -Di -p10 -g 0.0
+ *   DUT:
+ *     cangen can0 -I2 -Li -Di -p10 -g 0.05
+ */
+
 enum rkcanfd_model {
 	RKCANFD_MODEL_RK3568V2 = 0x35682,
 	RKCANFD_MODEL_RK3568V3 = 0x35683,

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
