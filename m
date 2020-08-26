Return-Path: <SRS0=0IO0=CE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E4C433E1
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2020 17:06:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E46320737
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2020 17:06:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ouW0prKp";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=airmail.cc header.i=@airmail.cc header.b="nih16olN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E46320737
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=airmail.cc
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NFTb1RYo3WGA9iU7+BxiwSlZ/BUcxGQiVjn7vms2PhQ=; b=ouW0prKpHqMCRTOF8SiM2ioVvS
	kyy9miWMW+8z9cMbmaDQ39zqcZOTt7dhS7c2xQYdE/IHEICU3xnNhsd8202eAc/avP7LICvY4wpsP
	WR3VCP73Xmre1Pq70ogEcDq27a56gaEsKMS0RRL+XEmWNKWZIFB/bv+kNYcbFFtFVGF5Frs+XoHhe
	oOGLBZkTE1YhqBpHEpLapx6HP4/Fch47b4qVCfNeRsXCojtUHDtdyyaX6J+yY4W3Xr0b9gfELvy+f
	aAec9jPBDk9W3jL74Pvr7Y28TSyQ/AKqxXYr+xSqONgob4AKMVX3265cH7nKMcZtAiSJHjoPXGI7I
	r1bX+eLQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAysj-0001pB-2T; Wed, 26 Aug 2020 17:06:41 +0000
Received: from mail.cock.li ([37.120.193.124])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAyse-0001o9-Et; Wed, 26 Aug 2020 17:06:37 +0000
From: travelvia@airmail.cc
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=airmail.cc; s=mail;
 t=1598461591; bh=UgOM+roZXfnn3lqaoJqMtjxXynnikZ73M0zwtTekzb8=;
 h=From:To:Cc:Subject:Date:From;
 b=nih16olNyhDL3U/5lHjVPyzGCwh/cCDVP2AtKkK+T0wSfACCi93ztkbCt8x9kIpH1
 T5orhD7bNO+H+y+nAsGHIG5+2DvIHL/pccDLSHKDyYBocPvc/cIAD12GYHoHsbq3zt
 cMwNdqyuHw3T1SUH0PMMigB9yNGitvwWOI5kOsnweFUlBUy6dYWK1fjvBs/5uA5cRk
 /M395mxMLsgHLf3g+uvnYKjOL7+Y4/bnQKL8h0ncLSfT0wYSryw4x3LiULQy6qm5z4
 6eVRBBEKIcQB56qi38ixtkIujKdSfGVr2ZNgIbCc0WcEuiyx1n3+Vq5YhfvYK3xwW4
 m9tq3RJWT8j7A==
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 1/4] dt-bindings: usb: add rk3328 dwc3 docs
Date: Wed, 26 Aug 2020 10:06:20 -0700
Message-Id: <20200826170623.15469-1-travelvia@airmail.cc>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200826_130636_790624_AC5BF65D 
X-CRM114-Status: GOOD (  10.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: gregkh@linuxfoundation.org, cnemo@tutanota.com, robh+dt@kernel.org,
 heiko@sntech.de, balbi@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

Document compatible for dwc3 on the Rockchip rk3328 platform.

Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
---
 Documentation/devicetree/bindings/usb/dwc3.txt          | 1 +
 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
index d03edf9d3935..d625cd5966e9 100644
--- a/Documentation/devicetree/bindings/usb/dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3.txt
@@ -25,6 +25,7 @@ Exception for clocks:
     "ti,am437x-dwc3"
     "ti,dwc3"
     "ti,keystone-dwc3"
+    "rockchip,rk3328-dwc3"
     "rockchip,rk3399-dwc3"
     "xlnx,zynqmp-dwc3"
 
diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
index 94520493233b..b41f30a61be6 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
@@ -1,7 +1,8 @@
 Rockchip SuperSpeed DWC3 USB SoC controller
 
 Required properties:
-- compatible:	should contain "rockchip,rk3399-dwc3" for rk3399 SoC
+- compatible:	should contain "rockchip,rk3328-dwc3" for rk3328 SoC
+		or "rockchip,rk3399-dwc3" for rk3399 SoC
 - clocks:	A list of phandle + clock-specifier pairs for the
 		clocks listed in clock-names
 - clock-names:	Should contain the following:
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
