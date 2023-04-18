Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B66FC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 07:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqzD9RWk7sLG6dn+oAGRMoP8F3eddGZALENxuIQDurM=; b=nkWgFD4UVjedbL
	xx4OBJq/UJ57B3dfdexMNmdivRDYk+85NJkljrX33vBtwao2xRSsXJ5WglXXlXT41GF/Vz24pGwmK
	JbYjlx/KLFS01TqJNwbM0Yipx6Jb4ktQh/HfVLNNK6sr7rd4ftbImPIhEktbdMikcnYxbKicHl0AD
	7d8IhWyFPLx9932/P3k8iYJBpLJ7lbYqFSyYPAhl3CjR1cD720fnjxU7uUFuKseTPk37obCxTm1FQ
	eq/BY4Vz3BjyKZ8SjSZXwN9nZ2FQuclUpF9io7eEkfv5SLQf0zSOALInUIvxx1pyFWipKKqGspkw0
	srJOu51Y8QuOB0a6zDrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pog4O-001Bez-1X;
	Tue, 18 Apr 2023 07:48:08 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pog4H-001BVq-20;
	Tue, 18 Apr 2023 07:48:03 +0000
Received: by mail-ej1-x62a.google.com with SMTP id fw30so18035459ejc.5;
        Tue, 18 Apr 2023 00:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681804081; x=1684396081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gXA2hp0m2ISM3D3+h81RjtKD9xln/dgRYjKYAUjtQ4k=;
        b=HeGTxBf5hkXgKM82MTFMBD1JwNMaS+brmpfjsfyAc/stReV+zQGDm3L7DAFgXeeV/a
         JtGc6oQfx9gdPrOTAtI99+AoIKG+35GFkwZfzG6YDvdSU/mynPuBMOHZvkK53auXYliz
         ec+/swgcYT4LWcH5qRDffWJRufhEc6tNZs8U24Aj9/vaL05AIuG+Yt8zKiszNDfHzPUi
         MKo8UkMoryGjbln11/5vjBmCsZx9MnGDVWD+SnXY0WIC+Qfw9PgT3zi+J8FUpN//gIrF
         uW4wlOC8bCTrcluf6WSaT1qvljqzMAiDARCbgrSDPq6eL1CYedPFG/W5lfdzCO34MYCS
         yfJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681804081; x=1684396081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gXA2hp0m2ISM3D3+h81RjtKD9xln/dgRYjKYAUjtQ4k=;
        b=bMtenAvxYxZJGMA4lZ3TIQpROr6jJHFszfu0UDGU8bveewrTGQf+FRaZrP2C27N5OV
         IB64hQIV+th9zyRu8Ulms++ldZrkv5DjfRwSm9VrVxDWMDMrIqnSGVaUkY4GH3CreK7Q
         57cDBjOWeNlX3O54at7iE/F3diD5YRVqaXR3+s6H2NVH8t9o1n3Sfk4u3KamUcwSQEoO
         KfmOWA7INkr1DJk4lBomF5vq7z2iMIt4+nmYRz4bJuW1Iydt/3bzXJT3cZcjMD5Lljp8
         apITfIIUf1ILN6w1WuCwZ359hE++1EwZUbXzH0Vzi2oLQJ8E4A94wcpIPu+WRYwnuycR
         2roQ==
X-Gm-Message-State: AAQBX9fPa9jkeq/KA7sWF2aa+usox57sqWyTKc9Fas04cpKzydOG4qC1
	LEqUYllgSLs/4MbE9BsdjZU=
X-Google-Smtp-Source: AKy350b3uvf3QU6Pks+6V6f07eNS+rVQtEMVNNrUYXPONdsugq3XZKDH6diqvWA5xXyFg9/1QyqaPQ==
X-Received: by 2002:a17:907:7f04:b0:94b:7743:3971 with SMTP id qf4-20020a1709077f0400b0094b77433971mr11033815ejc.63.1681804081136;
        Tue, 18 Apr 2023 00:48:01 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id gs8-20020a1709072d0800b0094f694e4ecbsm3048545ejc.146.2023.04.18.00.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 00:48:00 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	dlemoal@kernel.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Brian Norris <briannorris@chromium.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 06/11] dt-bindings: PCI: Update the RK3399 example to a valid one
Date: Tue, 18 Apr 2023 09:46:53 +0200
Message-Id: <20230418074700.1083505-7-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_004801_730352_A0FE6894 
X-CRM114-Status: GOOD (  14.05  )
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

Update the example in the documentation to a valid example.
Address for mem-base was invalid, it pointed to address
0x8000'0000 which is the upper region of the DDR which
is not necessarily populated depending on the board.
This address should point to the base of the memory
window region of the controller which is 0xfa00'0000.
Add missing pinctrl.

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml      | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
index 88386a6d7011..6b62f6f58efe 100644
--- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
@@ -47,7 +47,7 @@ examples:
 
         pcie-ep@f8000000 {
             compatible = "rockchip,rk3399-pcie-ep";
-            reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0x80000000 0x0 0x20000>;
+            reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0xfa000000 0x0 0x2000000>;
             reg-names = "apb-base", "mem-base";
             clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
               <&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
@@ -63,6 +63,8 @@ examples:
             phys = <&pcie_phy 0>, <&pcie_phy 1>, <&pcie_phy 2>, <&pcie_phy 3>;
             phy-names = "pcie-phy-0", "pcie-phy-1", "pcie-phy-2", "pcie-phy-3";
             rockchip,max-outbound-regions = <16>;
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
