Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC876E7718D
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 10:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7he85TnQKAZMqL99xc6MTWEVF53CECb6/W9KNakxOJY=; b=L1wy2I3eH8WMSc
	PJsAjNR22GKXKLKFDSYO9dONxBtJu0TPTcX5Z4WOEeXWC4WTNGbHKcu9LW0xDAQ6T8UMadXyacs6Y
	qMmZqgBtjAQEIN0VYyRuj+KjqrAnMovOoXDXyTxfUWAH5O3Xts0Suhd8AZYzY+MJKgQ2vU8DT5Xg6
	RINBOMoPgxdjmKBkMkXXSk5Brx/GX779aD1Gzyb9Y/4yzqyJmreEjtzo8/5sriyB8kJYjXBCcp/IB
	29i7+y3MwPfbY7td85b1QpyVRAXT9jNPmsX1vOo703Re16/nL2pyX4ey0Jo/1X1FUjFkJgvFWINZz
	W/qHE+Grks55YASCxT8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1n5-0000000BhAj-04v2;
	Tue, 24 Dec 2024 10:05:27 +0000
Received: from mail-m127214.xmail.ntesmail.com ([115.236.127.214])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1Xp-0000000Be3O-2V55;
	Tue, 24 Dec 2024 09:49:42 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aad4f59;
	Tue, 24 Dec 2024 17:49:37 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 10/17] dt-bindings: usb: dwc3: add compatible for rk3562
Date: Tue, 24 Dec 2024 17:49:13 +0800
Message-Id: <20241224094920.3821861-11-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241224094920.3821861-1-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhlIQlZNSk4YGEJNQx1JSE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f8126f1e03afkunm6aad4f59
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6M0k6Izo6GjIJPkoWLEsLLCE1
	FxUwChhVSlVKTEhOS0hITExCS0NIVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSkxLNwY+
DKIM-Signature: a=rsa-sha256;
	b=HlfSvl5/UF4BxSCe2K7AJgdps7uY8ZjKeF60whpmphLfqs1dXG8m0vwT4jRHjuMOp+EsHrDbh5El5/tar0koX5MfIzdbYkoU+N/sCV1crnlTwsn8ssTQ7Ld3Zcoeo3NcLwNT7oKF8P6Za1UXSuc+fyUZUWQw3T4fYClKTspwgoA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=68ftBDlYO9wugDwPKtS3dP5ZbdpY5EAp5ZhhRM8+9lk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_014941_834437_1BA71310 
X-CRM114-Status: UNSURE (   6.50  )
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

Add "rockchip,rk3362-dwc3" for rk3562 SOC.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2: None

 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index a21cc098542d..999f704c3ec0 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -26,6 +26,7 @@ select:
       contains:
         enum:
           - rockchip,rk3328-dwc3
+          - rockchip,rk3562-dwc3
           - rockchip,rk3568-dwc3
           - rockchip,rk3576-dwc3
           - rockchip,rk3588-dwc3
@@ -37,6 +38,7 @@ properties:
     items:
       - enum:
           - rockchip,rk3328-dwc3
+          - rockchip,rk3562-dwc3
           - rockchip,rk3568-dwc3
           - rockchip,rk3576-dwc3
           - rockchip,rk3588-dwc3
@@ -72,6 +74,7 @@ properties:
       - enum:
           - grf_clk
           - utmi
+          - pipe
       - const: pipe
 
   power-domains:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
