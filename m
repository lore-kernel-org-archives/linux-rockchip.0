Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79E0AE69E87
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 20:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PhGja7Q48xi/PIMAjWsNMet/IH/v0FiwMKdf4AIFJRQ=; b=aOZFjesbjxrq8i
	ITiMJLvxfHHwMrAPQblCBhHx+0zsoy31HGBpkQMent6gxkdkSyPLv3eBDFirpBAYCaom2v0ixVtwi
	ELmga0WE9eSsuF2vuZu1JsXhDoHToBLHWIUTl4tHZJSoo4wNU4FbCrq71utwyHbli/vaOaUEpRRhR
	0VnOhhgYIZVqqQl9RQasAiOIvv/Y083xYDHZ28xqwMkPC7TkHAvkUcls7L2eqeJfRIc6LddrGvYg+
	lEYN52r3WIHySbHXGevzZRyZpkb0V/gnVgzQUMrFTHvV3xatJsFqiDC3/KdtQ8/GYYAMhyl543/KJ
	SwtcKIT2ynxNRaU/xOFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tICcv-00000007N2u-3aIT;
	Mon, 02 Dec 2024 20:02:37 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tICbr-00000007MnK-2ySd;
	Mon, 02 Dec 2024 20:01:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733169688;
	bh=AcS9h9A8rhS7zBTPZQsgnAul4AOihkxYcdRYoDEwHuQ=;
	h=From:Date:Subject:To:Cc:From;
	b=UIHJ/hzXSA65dcl7gpECngWh6Kxj5yyQWmrKTPHhbyigJW2R9mT+dyEah/IC4mpG0
	 yeql7GWzIHHthswYeo0TVyUIfJ67/RrOycoUTy3e8gcn7BJNwcE4Ui+KesOp3/mKzs
	 dwX1lU1rrCtzykx+LSxtMCG83mwGyHecTXCbQCpxUA8NWEQpZwzTWxPAhy5r126fM7
	 ZBHS/8Vx2Y2cxpIk5wiwrLIBCZvNRFVveNKhTNrzIpSd0R+McS7QWbbZw5iMXjQgxl
	 t1go9XUkAB9rooJPyZRKk+B8awPxTZ0Qe23tbazMQuSEQ93BCWfoCBBdOmRRGfW4PG
	 9+XnlmfRYmc7w==
Received: from localhost (unknown [86.120.21.57])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1D44617E37DB;
	Mon,  2 Dec 2024 21:01:28 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 02 Dec 2024 22:00:57 +0200
Subject: [PATCH] arm64: defconfig: Enable Rockchip extensions for Synopsys
 DW HDMI QP
MIME-Version: 1.0
Message-Id: <20241202-dw-hdmi-qp-rk-defconfig-v1-1-38757fc053d0@collabora.com>
X-B4-Tracking: v=1; b=H4sIAPgRTmcC/x2MywqAIBAAf0X23EJKD+hXooO4ay2RmUIF0b8nX
 QbmMPNA5iScYVAPJD4lyx6K6EqBW2yYGYWKg6lNowuQLlxoEzwiphWJvduDlxmJdNs3fWs6a6H
 UMbGX+z+P0/t+xW2wGGkAAAA=
X-Change-ID: 20241202-dw-hdmi-qp-rk-defconfig-dd15747526aa
To: Heiko Stuebner <heiko@sntech.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_120131_927587_F267807A 
X-CRM114-Status: UNSURE (   7.70  )
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

Enable Rockchip specific extensions for Synopsys DesignWare HDMI
Quad-Pixel (QP) driver.  This is needed to provide HDMI output support
for the boards based on RK3588 SoC.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c62831e6158633f07c1f3532fba62f09b31e7448..286a386496014cf6d7d03d1efaa84ef4cffd57af 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -872,6 +872,7 @@ CONFIG_ROCKCHIP_VOP2=y
 CONFIG_ROCKCHIP_ANALOGIX_DP=y
 CONFIG_ROCKCHIP_CDN_DP=y
 CONFIG_ROCKCHIP_DW_HDMI=y
+CONFIG_ROCKCHIP_DW_HDMI_QP=y
 CONFIG_ROCKCHIP_DW_MIPI_DSI=y
 CONFIG_ROCKCHIP_INNO_HDMI=y
 CONFIG_ROCKCHIP_LVDS=y

---
base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
change-id: 20241202-dw-hdmi-qp-rk-defconfig-dd15747526aa


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
