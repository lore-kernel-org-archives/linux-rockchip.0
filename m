Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F1A1E9270E
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Dec 2025 11:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgSR0WiSaOetaXfkB1Q/Z32HkvU8sNOPmgowyeVHemw=; b=MyTgWLxBFQ+H3s
	XLkCeswuE+2xWFGniDlkqAGYUC4MrcvYMAn7qta1HBd5XCC8GyEs9Xby11dwfJ9y2a5AfLiXE0SE9
	7X7Yryf+rHx2wchi16mAF0ukvPHHQV0GcYHeUtkDejDuPycVrQiwYPpRWXnqpMccJ0CP7wKqYPNPu
	6qZhErMo9BAiV4BnKhtA9V++b3tp/Ivz6xuFrrtnipu3+ZQcWwkcyLm29GVXQC9aEBrquvg1MMqjV
	G9LLTxCipPVMBiwp/+KvduLHZf0sv2M3lLbqU6uVinTaCZzSYp4BuG75Fiu1DpdGltBS9oNjvKAIO
	OE+UF1OT/2r+pp7eLnMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZSoI-00000001tn4-1gca;
	Sat, 27 Dec 2025 11:50:14 +0000
Received: from mail-m49226.qiye.163.com ([45.254.49.226])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZSoF-00000001tkx-1j7j;
	Sat, 27 Dec 2025 11:50:13 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ebf64df8;
	Sat, 27 Dec 2025 19:50:00 +0800 (GMT+08:00)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: Ye Zhang <ye.zhang@rock-chips.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	tao.huang@rock-chips.com
Subject: [PATCH v4 1/7] dt-bindings: pinctrl: Add rv1126b pinctrl support
Date: Sat, 27 Dec 2025 19:49:51 +0800
Message-Id: <20251227114957.3287944-2-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251227114957.3287944-1-ye.zhang@rock-chips.com>
References: <20251227114957.3287944-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9b5fa4e53309d8kunm85cc97d2e308da
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh9KT1YdGUlMGkNKT0MaT0hWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZRnvBHbMoZeiXJmknGLzA4OWmvTPFBorXKQUtfDoD8sdLKsQrqgBVCPu4VCOpD+EJY0/bXIpjadJICOaN7oXcWezjvvJQ970nVQ+PalTlHTtNw98UltOBFfgZmNAc3AJEJtmQaczABE2w2UiOJvsva7USNMS2sEg2diUW6DidH0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=NVZd4LbAX/ESPe6p2DZyRdPbrAlNEDUy2MXVhXGH2V4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251227_035011_957085_ECF868F9 
X-CRM114-Status: UNSURE (   7.66  )
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

The RV1126B is a new SoC that is the successor of the RV1126. It has
different pinctrl registers and is not compatible with the RV1126.
Therefore, add a new compatible string for it.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 125af766b992..97960245676d 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -51,6 +51,7 @@ properties:
       - rockchip,rk3588-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
+      - rockchip,rv1126b-pinctrl
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
