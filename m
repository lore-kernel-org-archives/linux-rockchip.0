Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 861ACC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 09:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKpu9I9SANC0OkUoek8+0ms2zgYRVm79DbnB4lSZaLM=; b=4k2cBIKCF3riOT
	ZHMPKE3HuPq/SbrQpXZXgW1qqqmJz7CfY51sAJqbrL3EKPhv60Lh3IPbJi8V7+Q16wGotvjItVAku
	3UlI3l/epMzk6uAl+whGkqCJVlQNRVJ+8NGYlMVH5r0wgIGeQh4zR4H+1AWIas27+8knAXaAcgTnn
	GbK5ybt3+nXdNWo+30TCntdJeXqb6lQiUGdMk50M46C99XJhQPdEMMbC8gT7Ao8K81N06Kv72ooKQ
	WCJvfcdiE7Of4DxlKrlFxm7t4Sa+ljsvCTWAisjU+dvMD5+sEQ+T+Xx8fiFy5AWK8l3F2dagF9zr7
	pbnkluOVjJxnKxeT+wXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5qP-00000000YuL-1M0W;
	Wed, 31 Jul 2024 09:42:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5mV-00000000XGv-3VB3
	for linux-rockchip@bombadil.infradead.org;
	Wed, 31 Jul 2024 09:38:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XncJZQ7OKXnB/SysUxLfHbPiabbVjtzlWBVLjsZ4HYA=; b=ZAoRYgcgv7HMwYGgm1YvNpCe6C
	Gnvz3STtDrS0NaU1stsk13hO3gf0VZ1bzX7XiStEuKyo5oQQX9PDWMNENdn5YMCIVgxcWubPB/B1w
	FGA9L6SdOQKvVZt66n1t4XKB2kZ/uWE0cLmwlBqqebZ+E9eriUE5Nxke/5JDDKyn/yjSwm95f8qm2
	gE7tYBX8ozpyaQ2KC9ab3BdIe5nxadCuccm+/CglWH/EEJcBo/57CGvKnYWVmH/oO6RzelQoGSUOQ
	O7hTh7XtYjoAd0MWPF5ZKVCmI3H29ssN9IBGZTdkXy54dS7lKlsbkyAsQXCB1J1He9mhGdixYgXic
	BAy7K9DQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5mS-00000005BOZ-2D8J
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 09:38:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ5mQ-0005cS-Om
	for linux-rockchip@lists.infradead.org; Wed, 31 Jul 2024 11:37:58 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ5mN-003UlR-3Y
	for linux-rockchip@lists.infradead.org; Wed, 31 Jul 2024 11:37:55 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id BACCC31286D
	for <linux-rockchip@lists.infradead.org>; Wed, 31 Jul 2024 09:37:54 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 2C86D31280B;
	Wed, 31 Jul 2024 09:37:51 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 06dbfc81;
	Wed, 31 Jul 2024 09:37:42 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 31 Jul 2024 11:37:10 +0200
Subject: [PATCH can-next v2 08/20] can: rockchip_canfd: add notes about
 known issues
MIME-Version: 1.0
Message-Id: <20240731-rockchip-canfd-v2-8-d9604c5b4be8@pengutronix.de>
References: <20240731-rockchip-canfd-v2-0-d9604c5b4be8@pengutronix.de>
In-Reply-To: <20240731-rockchip-canfd-v2-0-d9604c5b4be8@pengutronix.de>
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
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
X-Mailer: b4 0.15-dev-37811
X-Developer-Signature: v=1; a=openpgp-sha256; l=1219; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=71zf/MNfEu3gRqn5xXuWHDmR5jq4HnnTZs6zICou+pI=;
 b=owGbwMvMwMWoYbHIrkp3Tz7jabUkhrRVrBenl67kKfvcoy7hoMDhKBZXfHCGcrxm8sV11n8rD
 63oOfa7k9GYhYGRi0FWTJElwGFX24NtLHc199jFwwxiZQKZwsDFKQATmW3D/leI94G07MH8grvu
 Cz/NWJqsMKOBWeHAhqMqt+LU47YeVNHw3ywzJdSfeY1Z8mmldBnL20dStxtybVWyZjBjW1cw8bK
 pou7ynFjOpbxteldWWFbKdbXN/i2kXL/jXtCaY0KF4Q8cHdOk8+9dYVmZccqPhzVgfXjylcxvRT
 eeF4R3cFd9P5kUKyfvsj2agVV+YfbheKsTSYzZUjF7pgXOaOb7yxvxTGW5sPeTCfEa8wqm3zzw+
 oto84tf/4LFEqXeqWu1hojsqvNKq7Py7eDUY/Bbyj8pKfnkCcZb9byycxb3q37Z43f3hf76M/dc
 XTZxBUW9Kfyv2nNjxUrXg4bRCnFqvky7NbwuXMrfeHgLAA==
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_103800_681339_C39A2C51 
X-CRM114-Status: GOOD (  11.18  )
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
2.43.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
