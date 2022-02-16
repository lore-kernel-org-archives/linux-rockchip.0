Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DFEDC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 16:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hlqyQ1+oCWlRaMTrcWdxdjEx4OhvBAkL/d4yHg8FCRI=; b=1KQL7ITWfsjUTO
	fxledxoibhejnusxuGbmWYvq3mDwPay3A1IsdTXxBu6m8jp9kLEF3RZ2XYtOK3xlI9p35RVDJIExz
	DTN/JkZ/CVOgApSREbsNHj4iuCy3F2eUAtYEA4mLlCnOb4RZr9BWwCuOcz1m1Ke4aVpYBgRxSrSBs
	M9PyR4sDFTHE+nSKy+nrG1rbRT9oSIca+v07qtuGJJqn6hFqj9BrSsLbttnnpgYqgfw0nHNeDqPlK
	k5idDg7eNZ1LYuLv7R+K9CDkrIIc3gyJgjg0gKG7MJE3o+BmSr9s/urrN6Zx9pVr/p/dXe6P0U9+9
	1jGkDp5k4wBKbzCIVp/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKNdc-007pMG-8v; Wed, 16 Feb 2022 16:58:44 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKNdZ-007pKg-LG
 for linux-rockchip@lists.infradead.org; Wed, 16 Feb 2022 16:58:43 +0000
Received: by mail-oi1-x232.google.com with SMTP id q8so3078700oiw.7
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Feb 2022 08:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lNu8D54ph+W8Cps8UhmIk+4rU/QInxr5iG0JuEbFSPg=;
 b=iZdiQ4Sm8DS0Hi5NnV4sOxvZR3hFaRjnPKyskwSsRvFIPgR9CX8RVLHHnmXBIX1L9N
 MkpxH5+t+yT3X8L9av03F1HIBlLiHTYYLcOzsiGgbGuFKRkTpSsuG9OSflDWCMYKHQRU
 eMVJ55iYWL4t6Nc96yVS+WYgyzBXrD//JJvbLN1Yw2eyvbn789c4hb+jgKIKPzyiGrcN
 0U7djSyVPmw53M90DbZd6pBFIcV05+Og+liiMpQ+WZgM843Rl+r/ZuZPcLuhTxweY1d5
 p/bD7ibgeyR/neaYOeutIBmPmvymJCs0LIENgpPGJLhWjhaz9TnL+7U28fUd8t8LX1RF
 ih1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lNu8D54ph+W8Cps8UhmIk+4rU/QInxr5iG0JuEbFSPg=;
 b=wzRovy2OuyDMHK2J0ST5CLTnNPfbfu2xfTMTI3r5a4l/qXtQoITTRXB6gjZNkya3sj
 4UxJUH7u+ci8gO6xujgPj1oB3LQP0fFdIfBZnLkbbn24/x70RtXvlYgXBthPTy5/uXFv
 xd+cuctirskVF4nnNQ+ZLZ6dwP7rqO0j3dybF1wLk85samtVMA+DOSfmwoiCwRNcrLQ1
 faAzmDIHJfz3jRhs3l4JQE++pgWTN+wkDccoOixmyi2AqVkdvRnNWpHr21GNwVuo5dTi
 sRZvCDAemgk/VCVEdng5stEwlDJ9P96P2k4Ot5duycw9P39cx5fu95J1x6euSM0ER1sN
 0qHA==
X-Gm-Message-State: AOAM5328pW+2nHSiC3SKOCmSeN2OoQwnjPf0GS3o510bYmlWs7Z50ldx
 AlnwGgUE1rtB8SdPm8zm3fA=
X-Google-Smtp-Source: ABdhPJz3jUd68o0ULVl4RwNQNaiE12bSQ2/TGlRD+yPdovUMIreOb2DvcBm9dZXhUZkk7nuxSpF2SA==
X-Received: by 2002:a05:6808:f04:b0:2cb:f30f:7183 with SMTP id
 m4-20020a0568080f0400b002cbf30f7183mr1074071oiw.157.1645030720463; 
 Wed, 16 Feb 2022 08:58:40 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id o13sm3712438oiw.17.2022.02.16.08.58.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Feb 2022 08:58:40 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: heiko@sntech.de, robh+dt@kernel.org, jon.lin@rock-chips.com,
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Correct clock-output-names for rk817
Date: Wed, 16 Feb 2022 10:58:37 -0600
Message-Id: <20220216165837.4721-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220216_085841_743244_1461B9EC 
X-CRM114-Status: GOOD (  11.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

According to the datasheet for the rk817 there is only a single output
clock for the PMIC. I don't believe this is causing any harm though
and testing this change doesn't appear to have any noticeable effects.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index ea0695b51ecd..5b23e607876e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -296,7 +296,7 @@ rk817: pmic@20 {
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
-		clock-output-names = "rk808-clkout1", "xin32k";
+		clock-output-names = "rk808-clkout1";
 		clock-names = "mclk";
 		clocks = <&cru SCLK_I2S1_OUT>;
 		pinctrl-names = "default";
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
