Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E74C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Dec 2023 10:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9pgzNibgVerA8aNDC92ESE5jOAFbG+tuQu1VIlsndw=; b=SlGXI7fhWbXiva
	THfbON+r2zlU8kz58jAwKUEqksA5RMTNubSUTM/e/B6R+TBLkJmGScVBwlnnSqlCUcfC8HFnX2v1c
	DGsf6/jmaHjv3GOsuGRdJqVEIe7HYT0pVH1j5t5GG4wzG0Jk1bHQsHyeL0mHCTlswG/3MQ/vSCVum
	iWzWIP+wPpduKSd/NfWWl3x4FtJvB9VuuJxGfGbmCqivRehMRBj2s7QGvDxqsJ/vELTRrtgNys0ud
	5WsMtTLQncQ6di215uloa6k2Fs6Utbqzb6fdNBBrQjmNrNtcBZ2s7B4TbRAUyU9Boh65WIpjxNPnI
	OGkjuvimMUgNqNEricKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEoZW-007UZq-35;
	Sun, 17 Dec 2023 10:40:34 +0000
Received: from m12.mail.163.com ([220.181.12.217])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEoZR-007UWs-1C;
	Sun, 17 Dec 2023 10:40:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=7zV/f
	rDYtvFPjeU9CMSJb6opdJPp9s+18alUIaxSRyg=; b=XsL+IJrgrIHBJSzUGoAJu
	KNwU55ItKydoFPED/sMRQrDuBOnEbSkXoA3MX/1olSPmOuzFIbfHbPIjas/XOXp9
	SGiSos3okJPFzJQy2RAhQeZnrcl/xVg88nXkLONtq3uHKhuBTLxJuapG5hHiiCJj
	r0PsAr/3T1XgKTEmMUxqjI=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-3 (Coremail) with SMTP id _____wD333AB0H5lTn2nFw--.50366S3;
	Sun, 17 Dec 2023 18:40:05 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 2/2] arm: dts: rockchip: Add stdout-patch for rk3036 kylin
Date: Sun, 17 Dec 2023 18:39:59 +0800
Message-Id: <20231217103959.2380661-2-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231217103959.2380661-1-andyshrk@163.com>
References: <20231217103959.2380661-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD333AB0H5lTn2nFw--.50366S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrtFWDZF47tw1xuw4fZFyUGFg_yoW3Cwb_ta
	4fG3Z5KFs7GF15Xw1Dt3yfW343Cwnakay3Gr1vyr1UJF1qqw4kXF4kAas3tw1YyFW7KrZ3
	AFW3Xa1qqayakjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0dwIDUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAxJXlghmCkkNwABsd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_024029_781129_266D0899 
X-CRM114-Status: UNSURE (   8.77  )
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

Add stdout-patch to get a uart console when system boot.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
index 67e1e04139e7..f12fa3831bbf 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
@@ -8,6 +8,10 @@ / {
 	model = "Rockchip RK3036 KylinBoard";
 	compatible = "rockchip,rk3036-kylin", "rockchip,rk3036";
 
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x20000000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
