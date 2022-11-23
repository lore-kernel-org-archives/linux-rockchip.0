Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28B7DC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 18:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMQjJRV3B+Ut6NoJeouoeqj6bPEaf3m6bRXEPvzxgRE=; b=KGFY2ttk6FHkUQ
	p4UMmTm+owxb6qFZCVFjI0LqTWTvQWLhuUh9kLD9eq43S/LVUD2Ewmljgdf3WYVjWbqjCiZEqtmjC
	w+jPqc1qlxeQrHnqgCXPpE7NUX+t+27PQgNAZEdAUxbnQso01bKG04TbgzQn8dx0dwIe78kqO/tlJ
	JekGS5dc3RCWqupUg8eVTB6sLeIKp4C2W/uG0Kfv5JK3vsFbzepECXhUwnRqrWztbTjOf+AysbXzU
	Kz+TzWng7Vovf4X+ENg7iowq4mQfDnYr08bwvoTGQMleFDtl5hnE6MBnatVojjciBWKF7thu5g2Pp
	9uo70eU/pVwHRYSWqoNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuZz-001fSa-Iq; Wed, 23 Nov 2022 18:34:39 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuYH-001emX-2v
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 18:32:54 +0000
Received: by mail-pj1-x1033.google.com with SMTP id k5so16554889pjo.5
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 10:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QH40xdstEqWGzwJenNT3rCqkfJ9ajN5rIUi4+/Qwboo=;
        b=JrFdo9zzSZq4vcjaRKG7bUw2d1ykyBu3DmR5uM6AoS+kqrWKKR0uFmlc4c7lXispzd
         kFkiPLTW3txvogFwPDRXz8P6DOUXh5m0ICVY8h9AN1Iy1OcessiYG1rL+sLgIZOekjTB
         7D6rtGJ8fVUdxvzJqhK+uAj9Muon9ZZEMU1aNjcspSZAstB4EgbeI5QQy4n9x+oMpinL
         jwVJBHIlwK2bpelndwekvu8+SplY++A5Ug8+Fl397z12i7M1A7yDdIVzLARJsnL4DOGc
         rXbv1tYpQnJJddseV4Jxn2l029mg0S1ZnkqEiPk593Z9AUqNtvHXQdTu24TVK3fK747f
         Yxaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QH40xdstEqWGzwJenNT3rCqkfJ9ajN5rIUi4+/Qwboo=;
        b=7qx5dhrpqESHuByQ97D+u6+Ki8hR/ZAjC8W7FbmrjMdd83TKqS0pDcb//tQCdwiFud
         XjffWef+8N+Gt8IacPg7wqB8SecQVLx0tRFZtczPCdr0j8I+fvi9DC/vohj5uTLs1AbG
         4EGkQ413UGG3EzaiBMa5nQGWeDawHqRYPrDt5pL19Xe4Pp33oOa3/d1jGziY1z8wL7p+
         0wzaXF+Gb1Rq0gZ6RhzfROVHfRXLM6lxEKeli0LSG7mM4uGfmJ4nWr1l3SfIWe+ndoPw
         M7ElbgXKeGtuTfVBGU91JNgnkwIlZooIamPxCiQN65bUY0tEM/wg1E/Pnh3Ytpv6r2Vb
         MbHA==
X-Gm-Message-State: ANoB5pmQ1LazOKFC3fhZNVEZDB8RM2W/ankX7aeYCseaZxlRX4TAcOtJ
	S09NFu07utMuBesFqlYZAP9DKg==
X-Google-Smtp-Source: AA0mqf4pLxcJq9p7xF2+hlaeWUITQBV/rTFCR2so3rNYWpE+TbroSTO+lGHvi5XnoOSkv/PMshemTg==
X-Received: by 2002:a17:90a:1bc2:b0:218:8bdb:de3f with SMTP id r2-20020a17090a1bc200b002188bdbde3fmr24941981pjr.225.1669228372327;
        Wed, 23 Nov 2022 10:32:52 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:32:51 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v8 2/8] dt-bindings: timer: rk-timer: Add rktimer for rv1126
Date: Thu, 24 Nov 2022 00:01:18 +0530
Message-Id: <20221123183124.6911-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123183124.6911-1-jagan@edgeble.ai>
References: <20221123183124.6911-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_103253_163199_5FF5C7D9 
X-CRM114-Status: UNSURE (   8.59  )
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

Add rockchip timer compatible string for rockchip rv1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v8:
- drop cc list

 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index dc3bc1e62fe9..a6221222e948 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -17,6 +17,7 @@ properties:
       - items:
           - enum:
               - rockchip,rv1108-timer
+              - rockchip,rv1126-timer
               - rockchip,rk3036-timer
               - rockchip,rk3188-timer
               - rockchip,rk3228-timer
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
