Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22E7CC761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWlkvc0vCFTGxfAEJHK3WKTnzLq8VPKH6sYk3OKeu+M=; b=gR399mc4k/304T
	dA9rmvxbvqQ8v+5yWQWIEyKytISl4ggxfOzZlTH9DTofYXYMr5A2oJwkJFABidSFsLscAhQytjMxz
	Q6xTwwQdzyUyny8T2L5AlIpk6tBUOHytBZgRvT+owj0lnUQwClIkkMFnZ9Rmt2kh/1cB+RzOX+HgI
	q91MFwjwerJjznD4CJdsZxGcc4sriTSBJWsB6Pj5AHyrlscgOWEAOAaGJbjShWnijtQ6szanggIqw
	ZGvQFQ6v+T2YToJsPl3vRLgotmvtz6mUzE4ipoJ/1zrwjf+5+KvcEAh5WAgzIIi4uKugoj5hWhEy3
	k2UX4GYUt4lIBCaI9tSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjc5G-000V1w-2F;
	Tue, 04 Apr 2023 08:32:12 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbyg-000TBd-0C;
	Tue, 04 Apr 2023 08:25:38 +0000
Received: by mail-ed1-x52a.google.com with SMTP id w9so127286335edc.3;
        Tue, 04 Apr 2023 01:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nz9Rt5llaKTGY8gvxSvQqyvro9YAn45RkiHqvQ+NW6Q=;
        b=cbd6vhqGnL/IKhxwKvQkqeLqbxgMQAj6qIxQKYNB+hULyN6c9r2m3BZiAEH0i3l0mS
         UIBzqoVgM2oMExcy8929mkZUYdxX0GvBAb+ufKauaXrxTAQ4Ofl/oQoNvlsXhP1QQqgE
         QeSBHHPHlJGzH/BK1EHBLTxnMKNv87m/N4weGn8Pqikky93Sxg7jyJBegSKh34di5kUV
         VVZpA5jB3kQ0lzZkU9KvVkUBA91haq7fQkFGzdEDE1L0/YjPDhr82XIuwjHkjJO90llh
         JwFr309c0r1X/OBFCg9Qu43Gs17XJW8r24z68ktMlZ0UaCVyyEK6qbGfMh2hq94/zziL
         asGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nz9Rt5llaKTGY8gvxSvQqyvro9YAn45RkiHqvQ+NW6Q=;
        b=qoq+/M871XZ07EGm8I9lBZRcpONK/Qn1is9jqck6u4YVWennH1T5BMsvbUvE1PF1+b
         F6TcH9Ll07Z6Di1ACRqQ900kt5XULkpHhNDBtHGPCBNBtYYmUdNpbay72upwpB2y4a58
         e/EkVHt5aTCY4PrIM+rI9Ay+xVyO3I9PmkRSlRE+jUV3LQue0+cxt3+xCJIaW+P3KjZr
         Wu9y1OzNh6dljIoIChquuYjkM01uvUcLDMyT+rK1KwJeq4zCYpwk4QCMaF4KGCBvL3qt
         jhYXs/XuzU/2caRn6FBG4yT+pGEL+h9PUj1XWuTGsGcxe5BG864T8RK9VbFgmVe9kNyq
         IaYA==
X-Gm-Message-State: AAQBX9fj82ybxU2CJEM2GEFJ9XHg/nox0/sVQjdhxIuGF8OceItTeyXK
	N6XYmdaJ1UAqT92cMfuV0m0=
X-Google-Smtp-Source: AKy350aXHXD8VID4zXf64e+YvsL7aQVBObI4XTPTF4eARYu187ArEiSIAleYEt+IuoWWbwj9nRBecQ==
X-Received: by 2002:a17:907:3e1a:b0:93e:fa12:aa1a with SMTP id hp26-20020a1709073e1a00b0093efa12aa1amr1864794ejc.1.1680596714183;
        Tue, 04 Apr 2023 01:25:14 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5640652ejq.74.2023.04.04.01.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:13 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: damien.lemoal@opensource.wdc.com,
	xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Lin Huang <hl@rock-chips.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 06/11] dt-bindings: PCI: Update the RK3399 example to a valid one
Date: Tue,  4 Apr 2023 10:24:19 +0200
Message-Id: <20230404082426.3880812-7-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_012518_748483_53B1BC92 
X-CRM114-Status: GOOD (  12.14  )
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

Update the example in the documentation a valid example.
The default max-outbound-regions is 32 but the example showed 16.
Address for mem-base was invalid. Added pinctrl.

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml  | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
index 88386a6d7011..0c67e96096eb 100644
--- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
@@ -47,14 +47,15 @@ examples:
 
         pcie-ep@f8000000 {
             compatible = "rockchip,rk3399-pcie-ep";
-            reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0x80000000 0x0 0x20000>;
-            reg-names = "apb-base", "mem-base";
+            rockchip,max-outbound-regions = <32>;
             clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
               <&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
             clock-names = "aclk", "aclk-perf",
                     "hclk", "pm";
             max-functions = /bits/ 8 <8>;
             num-lanes = <4>;
+            reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0xfa000000 0x0 0x2000000>;
+            reg-names = "apb-base", "mem-base";
             resets = <&cru SRST_PCIE_CORE>, <&cru SRST_PCIE_MGMT>,
               <&cru SRST_PCIE_MGMT_STICKY>, <&cru SRST_PCIE_PIPE> ,
               <&cru SRST_PCIE_PM>, <&cru SRST_P_PCIE>, <&cru SRST_A_PCIE>;
@@ -62,7 +63,8 @@ examples:
                     "pm", "pclk", "aclk";
             phys = <&pcie_phy 0>, <&pcie_phy 1>, <&pcie_phy 2>, <&pcie_phy 3>;
             phy-names = "pcie-phy-0", "pcie-phy-1", "pcie-phy-2", "pcie-phy-3";
-            rockchip,max-outbound-regions = <16>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&pcie_clkreqnb_cpm>;
         };
     };
 ...
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
