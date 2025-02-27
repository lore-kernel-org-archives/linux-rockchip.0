Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7691CC021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 11:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11M7pyqmDSoiMGOuWq+Rx7mUl0Iqy+zSZeiiN4v3wCI=; b=OMdvgbDjFlZzv0
	+7ooPQsF12OQ0YXD9FmSAWHG+diWZXd6lIDxtvaJR9BS+5NvAzkki94cAnqY3vd7Wl8p3uy+U4cCE
	cSKQQgWdSdrwOvluxUiHPWu1Eo43x0oASsxwu872C9ohtW/YPwi5/0bs2eEMJCUToKvupwvrhjSZf
	bNKYbQMeGeCwxSBIhE0I8kblwbVmLZD8NxnG3CT/rnfbkjMgYHrsV31H+aZ7xHq02QTs0Yv+a2P2g
	d0b+SsUCdQUorSwxl2t3ix9Z+dBWlZIW4GQtbM6xdbtUZ8UbN749ECIP86FWoGM4XRZNuvKj9KqXn
	xUqsjUDkSz7jEePlgQGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tncNG-00000007Egj-2SK9;
	Thu, 27 Feb 2025 11:48:18 +0000
Received: from mail-m3268.qiye.163.com ([220.197.32.68])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbvT-000000079Fv-3tNI
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Feb 2025 11:19:37 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c65f97e3;
	Thu, 27 Feb 2025 19:19:32 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-serial@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>
Subject: [PATCH v3 08/15] dt-bindings: serial: snps-dw-apb-uart: Add support for rk3562
Date: Thu, 27 Feb 2025 19:19:06 +0800
Message-Id: <20250227111913.2344207-9-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250227111913.2344207-1-kever.yang@rock-chips.com>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR0eTVZPQx8fGUtPSx1NGUlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9547221bef03afkunmc65f97e3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PT46Ayo4EzIJNw0TKENRHkJI
	VhgKCh9VSlVKTE9LTU5OSkxIQkpDVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS0NPNwY+
DKIM-Signature: a=rsa-sha256;
	b=jwLz3DjPvTEj5JXyro5xpmO0HlmZp6R6gdo3em7Sg39uALNEAx1FvscoIiIsvzY/W/KCVVbXis7q66EMFpRskMmLJFRn9UrGUkrEqUTez5xpScpU4d5LYR7i/vqiL3v2dKnQSp+ejL5dvgxnfuRrluGtecCLa1+FURpJ4oShZik=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=jmSlRRHgiKaCPjF9zIpxCVTtDRNDshAA457xOf536FU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_031936_132959_CE933933 
X-CRM114-Status: UNSURE (   8.13  )
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

The UART core on Rockchip's RK3562 is the same as the one already
included in generic dw-apb-uart. Extend the binding accordingly to allow

	compatible = "rockchip,rk3562-uart", "snps,dw-apb-uart";

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v3:
- Update the commit message

Changes in v2: None

 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 1c163cb5dff1..1c16ca3b4e29 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -51,6 +51,7 @@ properties:
               - rockchip,rk3368-uart
               - rockchip,rk3399-uart
               - rockchip,rk3528-uart
+              - rockchip,rk3562-uart
               - rockchip,rk3568-uart
               - rockchip,rk3576-uart
               - rockchip,rk3588-uart
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
