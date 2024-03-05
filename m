Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B8D7C54E41
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 14:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qt5dwobmv1o/+5cmzFXC9/15kpQiKGSrpJhOAB9rGx8=; b=EkL+oU+az292N6
	PFl9pIE9iN9dbrgHOErKF1Cugh/6v7OvEkKoK1BB4xiMWETPB7118pmzDRyNSA6rFH/dEuxN/9UNH
	aFakkq5Nf7bKwn+wdldaKopYBDYTRIf0Qs5xWMgsCtCr8OnYoXBuKNmnLCJCkpw9LCyvr8H0Lpcem
	oUGPo3BuRQ1AQxBJulEP51tdq/cymsvxpXzq/8uDd6LQUCsalyHJ5Yp+Xj2gsfjXxLzIJjrGgBpEw
	e12ZRi1qJJ/SolFxZhRsgzJyl5cx+qFTyLhJ6FnFHW1N1an9+Tu9l9Jh30sXRF/odxUnq+xmjBOwg
	alzVIzuwv9pYesQhcRBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVs1-0000000E2iS-052h;
	Tue, 05 Mar 2024 14:34:17 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVrx-0000000E2hK-3vSn
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Mar 2024 14:34:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1709649250;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JBzs20izmKSa/w0xJo132WZv3DDpsSKC3qmblEUsN0Q=;
	b=M6gaDSHW38XmuCUMRcApgqb24CI9aNySY80u1gdhvU7yYOLpHfQdmjCflEMy5mWPEpUbyo
	L6Tyw5WBU6lbLnq48pm6fRtcUnK0jscrBXOxsEibqnZhWHRBWu/wOD22f7mmZJ6MRzeJsF
	Ad1/bjB35wk36c6hVXOdsJY0T5HxYvw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-37-QgkDEyOIP6iJvdrHKJfo7w-1; Tue, 05 Mar 2024 09:32:29 -0500
X-MC-Unique: QgkDEyOIP6iJvdrHKJfo7w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CDD01800442;
	Tue,  5 Mar 2024 14:32:28 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.39.192.113])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A4EB817A8E;
	Tue,  5 Mar 2024 14:32:25 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	david@ixit.cz,
	cristian.ciocaltea@collabora.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
Subject: [PATCH] arm64: dts: rockchip: regulator for sd needs to be always on for BPI-R2Pro
Date: Tue,  5 Mar 2024 15:32:18 +0100
Message-ID: <20240305143222.189413-1-jtornosm@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_063414_146247_60641F8F 
X-CRM114-Status: UNSURE (   9.85  )
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

With default dts configuration for BPI-R2Pro, the regulator for sd card is
powered off when reboot is commanded, and the only solution to detect the
sd card again, and therefore, allow rebooting from there, is to do a
hardware reset.

Configure the regulator for sd to be always on for BPI-R2Pro in order to
avoid this issue.

Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index f9127ddfbb7d..b3ea54b6ba37 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -416,6 +416,8 @@ regulator-state-mem {
 
 			vccio_sd: LDO_REG5 {
 				regulator-name = "vccio_sd";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
