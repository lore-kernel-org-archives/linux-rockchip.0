Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E088CC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:43:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D47761152
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:43:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D47761152
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XGvwfvLHd1IWPl2/Ppwz+OHAQWga/oyMilClsFZI1Wc=; b=ocd4Zajdr312bCJYhC/fv3s5XQ
	yU8dDgeXzVyBpAg3G9WXcPK7Y8njbeZ4jY8ig5RmZRhUUiSZnfqdsbOMIYhV6BAs1H6iGxnOjPpES
	Zg4wdPLg6s+oQbCxfCD2F8g08UZx5pyF5GFXyWFJdf+jpnkwBoySwv4JLvpNG5KGHgnvq6843hai5
	V8HbfkWrxp+ZDrW3wKd9MZhY1+rKIW60szdq1kj853/fBNUICWKuWyF9Cs/IkXduVdd3cWsKNjtmi
	zFsfUld01PmOSSsxoiY6nznVUhuEvQrAWgDEKx4VPldVtP8YaafiK5e/JFv6B6rka/1Fmt5DQ5d0g
	M1lpnfFg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXK4l-001Pf8-J3; Fri, 16 Apr 2021 08:43:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJWD-001HfG-Ci; Fri, 16 Apr 2021 08:08:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dW71RUeT0a6iBVCowrrCy27Ig3MirCGSJbJRZ5FSubM=; b=ekMGrUt0xNV090E2G3HnZtQ5p0
 WDLRK5DB19OFutn0FrGN//iBjmGA6piCxeddDXa3CdNv2gfGcMv44xLdMoDTzYVsBCGF+mNkPBn30
 TXp76Um8n+1jEIddmZxxAZLfAMMmZi17s2Ut6zacVIzdaGM94Zr88gjxusg2Xy2CzJHE82kCDuLRn
 q9D/EXib/0Pvn2JLd/1swm3ajMUZPBaJLFFDmWpZ5bZa50/sRghNDECAMJzIjK0c2fEeRJ9kUwf9l
 hOVqau3JHK3Lc9yGoSVv8Lo4IhaqKQAz+8lPYFMV2+7DyjhhxFOu8pDo9V8NK6yhB8k3CyoaVoKjP
 ieZcvFTg==;
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJWB-009B11-0p; Fri, 16 Apr 2021 08:08:00 +0000
Received: by mail-ej1-x62f.google.com with SMTP id l4so40799970ejc.10;
 Fri, 16 Apr 2021 01:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dW71RUeT0a6iBVCowrrCy27Ig3MirCGSJbJRZ5FSubM=;
 b=PbpOP3vGz5DLPcykfNpuEqOgQ7euRr1YJ4mv0QKHrtOsDULR10X2KVqYS0vphNODtE
 tlD0smBqv2AaXqVA75h8IoEMglQdGMIvs/hhiN6wdGXWFP7dgFjmJszlH8YywYH6STZj
 uCJM3SdyBIHkCiGI5ssPV4IZkj5bXNBR2okTdrjaXCqO4A3pu3FoaaiKBPiP+78tzJfA
 HEQNF4E2WUTWbG2GZgDW/k0vHWh9tTLcqGDqdq/sjNYPrJLt+5b8nGBGRcQ45CxXz4/W
 zlTaClVP4vzxqvwJWdnDt0xdpR4Z4gQRFMy7z8r/05QJbB6pUqm8v0J4VrR5tgpGR0fn
 oyyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dW71RUeT0a6iBVCowrrCy27Ig3MirCGSJbJRZ5FSubM=;
 b=pV5FI9Uceh4QlzuuoXHjPckG7q/jC8SsISahL/YB0FxYAU3LJFs9VeIe6UjW/N5hoR
 wTIafSr26zR6CMJT5GeOTkeiRYaZpp2mYQMarfu6w4QBRxevlGNf4CNfukCOZDCNowbB
 JGE2zyvp3L4nixnUiBfmXdnfcsOW/IsLfZUPRSiHb8gASExTjZ+L4r+/ihhAAbRHejeM
 crT7SkmlxAcjAQnCTew00Oh9csYHncqx9YvmocDcoqE41IljLMpxhKOXapinOMMolseM
 YSIGac0dmrEWnh3VE4PbVHGZpvvhexXjonIt8hP4y0P0Rg3Ue318o70igR0b5WIIrDq4
 U9IQ==
X-Gm-Message-State: AOAM532V/7cYua5+bDY95snyc5JMZGLVtJd5Q2230E0XCLaEC/19RwV2
 MoYzVpgOlw7X5hyirdDxd8g=
X-Google-Smtp-Source: ABdhPJznwZS4qVKmloH7SP7EsHwDRkIeAKU8RRrzkuHSVxIS6x73VsHdXcti+LmnUyqceNDbZmaXkg==
X-Received: by 2002:a17:906:f56:: with SMTP id
 h22mr7420791ejj.494.1618560477849; 
 Fri, 16 Apr 2021 01:07:57 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.07.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:07:57 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 12/15] dt-bindings: arm: rockchip: add more compatible
 strings to pmu.yaml
Date: Fri, 16 Apr 2021 10:03:39 +0200
Message-Id: <20210416080342.18614-13-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010759_079251_2162EB7F 
X-CRM114-Status: GOOD (  10.86  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The compatible strings below are already in use in the Rockchip
dtsi files, but were somehow never added to a document, so add

"rockchip,px30-pmu", "syscon", "simple-mfd"
"rockchip,rk3288-pmu", "syscon", "simple-mfd"
"rockchip,rk3328-pmu", "syscon", "simple-mfd"
"rockchip,rk3399-pmu", "syscon", "simple-mfd"

for pmu nodes to pmu.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 0b816943d..678be9011 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -19,7 +19,11 @@ select:
     compatible:
       contains:
         enum:
+          - rockchip,px30-pmu
           - rockchip,rk3066-pmu
+          - rockchip,rk3288-pmu
+          - rockchip,rk3328-pmu
+          - rockchip,rk3399-pmu
 
   required:
     - compatible
@@ -28,7 +32,11 @@ properties:
   compatible:
     items:
       - enum:
+          - rockchip,px30-pmu
           - rockchip,rk3066-pmu
+          - rockchip,rk3288-pmu
+          - rockchip,rk3328-pmu
+          - rockchip,rk3399-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
