Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 724F6C77B72
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqzD9RWk7sLG6dn+oAGRMoP8F3eddGZALENxuIQDurM=; b=u+MZKGdsngXWGk
	a0op4t+Kt0svlbTzsPsSCA4+ynH2VyFbb/2/SjvoxmxgmgTTPgQ0tgEh7oHJZRbHq1ZgEZynt57EZ
	2wsjqPmGPUGBennVCHuDVS50Z6wBR90r/tgIP1aAH9Wgk3N/g4TEubujrqXzPI9Th0xSJhvoBzxbY
	Dsf0evkP0zGawueA/OwonTsfwfyaTrKarwrZ43iRx04+GAlrq6amKLDnGdQDph9P6kxFKqk9iFa3e
	irSlFNy3IpGJR7UaRjE7q8CVQqTSHo0KP3yfgzaJIdBF2RInTcnHhdjYpeWXQBMy57U8vjoiUYR9K
	u0cufyWxkZLeVrmstizg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poL95-00FXWn-0f;
	Mon, 17 Apr 2023 09:27:35 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8m-00FXEO-1Y;
	Mon, 17 Apr 2023 09:27:20 +0000
Received: by mail-ej1-x633.google.com with SMTP id dx24so18331216ejb.11;
        Mon, 17 Apr 2023 02:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681723632; x=1684315632;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gXA2hp0m2ISM3D3+h81RjtKD9xln/dgRYjKYAUjtQ4k=;
        b=oFabUIkr/m+0dhBqr8gVR8KkmRWL++HZH5j8rqMLnfN4+mOJ7wqUzQN7uhdmu9CGFc
         r2Kt6WHNPtSupwxNXGrMLT99fMxTWPfoa50ZUgybjirQYOxzCIu6YvXamevyDKRbg0o3
         Mbi14eDAFyAcRJ3GWk1kiLYr+DAiCZOqLUIsH3FLuIkTBU4jqdIFxP272npGnLsTsgov
         Ij8LcwcoX3pELHwOnuF4SXzcXP2Y90Qp3zDLRvR6KvXrGXQMUj+hcDRq4qi0/XMn3wxT
         iL+QxlB+2034pcH0jRjVKbRkVKVLHDslyTpWNCblg87MHyAmRWg2mFYay3DihUMuo99v
         jyDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681723632; x=1684315632;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gXA2hp0m2ISM3D3+h81RjtKD9xln/dgRYjKYAUjtQ4k=;
        b=XMKvX0MlVuDXutOUOkQyeIRQeO2AI5OjAIPgEfsvyuOxxKjuDncnQ5EL5hLfxxTCVD
         zPtS2U0DJWxQvWa5sTahB85jULs/r3b9j+1KD8oIbxDWeeGemixdgHmaaCop47899rM7
         4N0F1BMJfszOgtEvadeT7y8qcbO0vZzncw+kKLFF93fVYgePPsWfXcTs0l2L978h9Ww7
         yIW0zx9Xu2ezh1BWZDNdzVLKmK3/wb6KXkAw4xxHhMtrorAn/wvbvCTnbeXlF8wBSwqs
         RcB0lzT1dRQeZiv3fs6Z/diMdLf5ZDGvmlDuCdX+k1UM6a46rFHrjLpvCAS3Sv18NMma
         AE3g==
X-Gm-Message-State: AAQBX9ekkcfQDBvMV7ivmonFcmW4JMbcCK5iDtKyxvJG+a8klqvR6XcT
	BTQh6PiBpTM0r5jwFbCUqvM=
X-Google-Smtp-Source: AKy350Z3d3oZ8gjXp0kYIKMiHU1JEUW9LT2ioCMIwpyqXxaeVrEBUwYD28cDIam7VOdX9oBt6oWo9w==
X-Received: by 2002:a17:906:d8c6:b0:94e:afb6:eda2 with SMTP id re6-20020a170906d8c600b0094eafb6eda2mr6322692ejb.8.1681723632708;
        Mon, 17 Apr 2023 02:27:12 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id p20-20020a170906615400b0094aa087578csm6398596ejl.171.2023.04.17.02.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 02:27:12 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
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
	Corentin Labbe <clabbe@baylibre.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 06/11] dt-bindings: PCI: Update the RK3399 example to a valid one
Date: Mon, 17 Apr 2023 11:26:24 +0200
Message-Id: <20230417092631.347976-7-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_022716_533394_B6EBF455 
X-CRM114-Status: GOOD (  13.58  )
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
