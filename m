Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1282EC46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 13:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NNWvt8L8t9IOnTELiXrnV7mZ31WCQJwwBXlR3yNMC+A=; b=oKN+whu+l/WdZ2
	Z9TtDYLkNoUsDdKMWxtD/IZfTosmxE9JPLiicpe0RRR8wg94ltXGl4BpGLe4AOPF1zGLShUX5FxnE
	lfCBbh8M0GjMPfm5oby1tcWkkYoxzORaeJmBg0dyq2UnQREzhkp0T900+S7Fjydu/SFBLOauhr/s3
	XzELZw2NjKIrKjYTunjbymh9Wx42MY2wiiJpCfZEKITTf3fLjLGMwBbQuIrrMk8pnghYTuK1v07rz
	EVUiKhah4q5NG0B50UaTmXDwN8sAGS0zvRWZvnDU3Um+QW4C0mpLpsxZdKnLQivblZ8VvGv5EYZBh
	gdZdpHIJ//aQcZ834fEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEya-0076yR-SC; Tue, 10 Jan 2023 13:47:40 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEyQ-0076tj-E2
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 13:47:31 +0000
Received: by mail-pf1-x436.google.com with SMTP id k19so8834660pfg.11
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 05:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ow84DXZInzqrwBE07cuouWfpF6O2i+QaiVux+qxgTKo=;
        b=6YvzQGC/8tkTNKTgLXQZ27uyeIgl/80BZ4TwVwiI/e8JuXwPAyAMmL7KnfGd14ArX0
         Sp8L7w/OSA71RBcnG8lxrF6uCwbjUa13B/WB6wJsPHeSXEn4w4OSq9DIbDdjRmHhz771
         BPIkTDQ3pni2vXDUwz1OVqOM650ICzurIs2f8Yo8PtZSUi517voL+R+PzzKG4uD/pPPk
         S7jYaFnu2eFR/a4yIuTNi4vYIt6lJh72U2hevqPurzuiZwR2ucg6r8tldQtibyxtASOl
         u7+PAUVQa1GA+dH0qAkIg+Bhx3vBcXx3qf6dDZFMSIGxCI406Tehk3H7avi0m/5uTkuY
         Awgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ow84DXZInzqrwBE07cuouWfpF6O2i+QaiVux+qxgTKo=;
        b=NmPOm582HhZgPbksyVuIgdPZpdofWaEF6kG96B+/1cNjR9gDJ5Qmf/qtwa8r+QKXIF
         GHnEs5tC9byyoCjDlcnCTYEnu8Q24wpopo82JCD67pyrADnqA5aB1BkGf56QWdHs5s70
         loC3YVTeGPABpImyMOFQ+/kk0nB8jb9E1Rw/iZw9o+vaTDf9+/KBbNzmxQlswcWTu+GK
         5lB1/Tzwd8DZ57yRVAChd1QrGqGSiilgM63fiI+cgnZ9crxqz7UEeylJfmdqz1zxjcL4
         HA3qjhsVKjGPdNFW6+xvQlxIJqVwDP7D5teEhkwZp4/xc6kinD1wJes8mo0U4sri1RfX
         QlLg==
X-Gm-Message-State: AFqh2kqbc/LBzDL//GWybQfWtjtVI8ZSinhF3YEHY6fJ5BTWPhAlZDuP
	5U4oWKtAMqMH/XerwQK021fwrQ==
X-Google-Smtp-Source: AMrXdXt4YFUgyrx7X3NMsEACWsWINIH9oWoiF8fjjf3zt7O9M1gtUg2WiqvWO/r7KLVpydNeICXBoA==
X-Received: by 2002:a62:ee19:0:b0:583:312a:b344 with SMTP id e25-20020a62ee19000000b00583312ab344mr15983095pfi.31.1673358445593;
        Tue, 10 Jan 2023 05:47:25 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:d32:8399:ca6f:14d7])
        by smtp.gmail.com with ESMTPSA id y12-20020a62640c000000b005819313269csm8077426pfb.124.2023.01.10.05.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 05:47:25 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 6
Date: Tue, 10 Jan 2023 19:16:56 +0530
Message-Id: <20230110134658.820691-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_054730_476853_A09DA47E 
X-CRM114-Status: GOOD (  10.21  )
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

Neural Compute Module 6(Neu6) is a 96boards SoM-CB compute module
based on Rockchip RK3588 from Edgeble AI.

Edgeble Neural Compute Module 6(Neu6) IO board is an industrial
form factor evaluation board from Edgeble AI.

Neu6 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 6(Neu6) IO platform.

This patch add dt-bindings for Edgeble Neu6 Model A SoM based IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Note: Patches on top of
https://www.spinics.net/lists/kernel/msg4644731.html

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5066059ff676..70ed0ab1b190 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -96,6 +96,12 @@ properties:
           - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
           - const: rockchip,rv1126
 
+      - description: Edgeble Neural Compute Module 6(Neu6) Model A SoM based boards
+        items:
+          - const: edgeble,neural-compute-module-6a-io  # Edgeble Neural Compute Module 6A IO Board
+          - const: edgeble,neural-compute-module-6a     # Edgeble Neural Compute Module 6A SoM
+          - const: rockchip,rk3588
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
