Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EC93C4167D
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Nov 2023 11:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wara4+P1UQmL4f3LbmHkooJKUciUT7CQc4mtjFJNswo=; b=TqfXB3Fsllu85y
	Q6xIbUP5Hniw3j//T3fokfQZWZlo4MuP5gsy8Ew6Wu2ze68Mi9LoEWqlQN148O6TJqQM13Q07s/RJ
	1NZc2l19k5Mt4JyMyFiGr+KRjE3uX7M5Ko3W7bq3WxQSEVoGHLq0CCGgqvyqmOrnE77y0oMKtASIN
	Aq8hO0ghfkr1SUBIyqQ8V7gwt3dY/hP31bQrY/aylAVyHnuSXq4ec+vlxfT0+LecYB6SMOY0H+piT
	3VSagGjM82N3F4qnHWT9TFX3lcda36xXs1RTGkb2n9YhmPj3i6+a0re4ivJblQr+i0yyG9rtMIdeV
	k55nFnk9dtIhqASwPatQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rb9-00Fg1F-0Y;
	Tue, 14 Nov 2023 11:28:51 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rb6-00Ffz7-0r
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Nov 2023 11:28:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=+qJQz
	SNuwveCVk6IeGOImzTHjvxdDU1zu6KXYVYxyLc=; b=cmKt0NUUEPaBE2jgl05B+
	tvPDMgJFGKT7lSHB+MBQryPs+Uoc/tWpnOvOHAOAsep1dGyzXG/4tr7F3vHA6K1n
	PXq65iW+bCbO+Pa0kl2wHCeJaP5AV2WoktPYXLadv4bZJ7MsUpCANTWJJjnQKrWu
	gN6i4Bztc3l2OuF6B0NtVg=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-2 (Coremail) with SMTP id _____wD3X_PVWVNldxVuBQ--.54859S2;
	Tue, 14 Nov 2023 19:28:24 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 07/11] dt-bindings: soc: rockchip: add rk3588 vop/vo syscon
Date: Tue, 14 Nov 2023 19:28:20 +0800
Message-Id: <20231114112820.1771240-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231114112534.1770731-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3X_PVWVNldxVuBQ--.54859S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7GrWkAF4UAr4rZrWUtF1xAFb_yoWfJrgE9a
	4xZ3WUuFW8GryFgw1qyayIk3Z8A3Z2kF1kCa1jyF4kCaykZrZ8KF95Jw1avr15uF4fuw1f
	uF1kWrWUCFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8iSdPUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAEoXlghlUyjWgAAsy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_032848_655279_2DF31E00 
X-CRM114-Status: UNSURE (   6.90  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Add VOP and VO GRF syscon compatibles for RK3588

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index e4fa6a07b4fa..26db4f48ff62 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -28,6 +28,8 @@ properties:
               - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
+              - rockchip,rk3588-vo-grf
+              - rockchip,rk3588-vop-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
