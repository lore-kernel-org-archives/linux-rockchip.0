Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC131C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 18:12:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8CFF4206EB
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 18:12:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="o6HK8L3v";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bhB4Utg1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8CFF4206EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NFTb1RYo3WGA9iU7+BxiwSlZ/BUcxGQiVjn7vms2PhQ=; b=o6HK8L3v/yR2B3dL2Hup6Nflkc
	8IWAgCYk+FAiGRub+floob7MbYO/ZplYR95pOeJXkEX2hosaRsJrpwsGCjyoNqjEtgpADVof+Li5V
	hW2P1Z0MvCzhENU3LZdyxHejP9LnDZeeO6XqjML4+0yKyf8hZA4++7lFpTkiz8H7+EHVKerd0bIa7
	gMQB5fRaMcjsyHQ6zPDdihezPa33H9tkfHyIbIT/wkdmvc8gJLbSh3L8g4iMc8GIC3h0orvyMH6lC
	l9xhqxmHOElJ2qil3qnUMfrgVaLB8hVqxuVpCxFWm2fZpt7Px5JDcmeFpa2ORmAMrS0QGEY5YMs3H
	iNtcOajw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDXFb-0006nI-5Z; Wed, 02 Sep 2020 18:12:51 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDXFW-0006lD-Io; Wed, 02 Sep 2020 18:12:47 +0000
Received: by mail-pj1-x1043.google.com with SMTP id o16so194757pjr.2;
 Wed, 02 Sep 2020 11:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h3f9lrWEnIT8HUEopKzesuhjDoqNNwJ+zYjj81qDGgk=;
 b=bhB4Utg1ATXtd2Dfd7kZCmepTMUzHRvLckIBrXX5TWBfUJ/erjfgy80A5/gWGYM2U9
 ym4bihNrlVhUadMl6R1Xh6anLk9EciD/mSWAFd7ZcFgLO8rLWdLkS/8MSOUd+chNr4Ep
 8n78vkuGH4YhGmYN7k2SJpkkbzUfqD3UCqnJ6VCUyd3z1cVIJhmKlZ568Fp8e+U4ttKQ
 OFXfgrGiHVvLzhqZTvpdsKtRZh75uS5l0gIQaxcqt8bQQT6QnJBk62mkORcFUQyBQsPT
 Km37lu8JEJ6OfJ42ZjMWTeQT9JyMMilEfzjhhNwPeILP7gwk2IYdb7tyqQoFRIfpgLYf
 s3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h3f9lrWEnIT8HUEopKzesuhjDoqNNwJ+zYjj81qDGgk=;
 b=YtD43/YMcLzzqoquONiju0hhe/CE3oZP8Fbp4Lna6jN83gmF2zsRftR3/Uq0KcJ3rp
 LZTY3RswxJbj+Ogduow/P0TWcDONuP14c9h8mJNYv+JAj83lsveNq2IU2gqcQT6GYlmP
 j60gYGRuzWCV5wErmdPS/s34XdvJk/bLr/QzIBT6EwbVE2zPH1LIlkd8fmyhGzZa3NRh
 Qx9c5QcCjGW98VEh95iPBsw/dM5QEQLlcS1BObSMKSVq819xG69eDyYdAqKmKpprPfFs
 fQ4ux34OL1xupGBYeh7Vdjt33KvC5E0VkTNnfCMcGLsTqrtXNIcypEeC2T9yTJGDvf54
 3nlA==
X-Gm-Message-State: AOAM531sIAcNRGPAhKM827qRHVM66Y0/qSDQyQiVYhAGBlj3onMwLp+b
 lhzGuwdoxbwW/EncMEToPgc=
X-Google-Smtp-Source: ABdhPJw0Hl+6859WKV8nvo4KGjdx6+L+6AaUXsSU2feSqDzwvX7zAQRFPC5XKmyfeDam/8LzLXItLA==
X-Received: by 2002:a17:90a:7084:: with SMTP id
 g4mr3002233pjk.116.1599070362994; 
 Wed, 02 Sep 2020 11:12:42 -0700 (PDT)
Received: from localhost.localdomain (cpe-172-112-234-200.socal.res.rr.com.
 [172.112.234.200])
 by smtp.gmail.com with ESMTPSA id u123sm148993pfb.209.2020.09.02.11.12.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Sep 2020 11:12:42 -0700 (PDT)
From: lindsey.stanpoor@gmail.com
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 1/4] dt-bindings: usb: add rk3328 dwc3 docs
Date: Wed,  2 Sep 2020 11:12:31 -0700
Message-Id: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_141246_639641_2695C538 
X-CRM114-Status: GOOD (  12.39  )
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
