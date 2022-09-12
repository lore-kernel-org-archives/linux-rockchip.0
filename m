Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D308DC6FA82
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Sep 2022 20:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2otbm/hysEXGKh5nQEIafKmX3RHyn9WSTgWJdXFis+Q=; b=FfniYHCAT0AOzL
	jfTj9LfZdYaA2cPKk8Zs3DocXRNJENln5WaDkJQAR3Njnc6YRyAm2BFJJ3DgCa20056Fo/E6B0Akd
	DcOCuXrBlULRbBdgxZeQKzuO1n3qJVxhsE+zUvhWYiHqf+7dL8Od3HQ/F7weK5fdWRuKgb+flen+I
	mXXyGeeFWps++lEt9v0Mf4qgQvoq8zAIe49gEbFhzByCIOUBlk48+bbNvT15JFARnSlxuPqFzP+Mo
	e+SLIUxhUFADply9yMi5qvZwvXNlklQs1fHKq6ZsYYNJL59InTPWTfzHd53Jlrh3F7sQPzfWqA5Dv
	E4mw9MOM+EA64UYSK3dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXqTe-00DrGu-Au; Mon, 12 Sep 2022 20:56:22 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXqTW-00Dr7H-0O; Mon, 12 Sep 2022 20:56:16 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-127dca21a7dso26651508fac.12;
        Mon, 12 Sep 2022 13:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=yFsRMGoJfFzIx0hmtF+SSRSGsw8tVqOwTpmksCelJN0=;
        b=WrL/rXZaioDZJ85eyX4S4PDMz3Mxx8m7w1X6QUwSnLWCBArO+YToXs9AlPcp+J6M3s
         ksyH7IHRWrKzqcg9BA6Nw+vVE7Li6sOw334I7ANGHyPV73ZuwkTSKdbAicUzcSX+LuXI
         XMPLa7YPFzaUK2RYIL9GItF+NArGw/u2sWZ9OR/NJndjF0XNNO0zu/4JJDk4Hwlchfjx
         v2br0oSMunfDr1n8aHmp2btKWWXg0Fdfh/kgPKDKr0g0eZz0810aBn4cVulP2WYBiUab
         d5BrvK5mKVbiyiX/qLAdraMVx7Nyf6/Fh5A7VZfZuzkpjDYHmWEFzOpG28YLtddKXsPS
         jBxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=yFsRMGoJfFzIx0hmtF+SSRSGsw8tVqOwTpmksCelJN0=;
        b=OW5FoO6VsbqvebnZZe9H/FT5LKMQspmY7Opemf89H9TJFR7CVygG7AZiqYj/UDpbjF
         tk9jLktZ/wt4jcf9tVuRa9U8A92XpedP6LE3Zkv6FC5m40172PIH+eFTFoKFD8Aqm/JV
         Z6cbC3hIT9kWrgFeLq6pBJ5YHQ2Kp8U8UbTqsV9h6xmsw0vBQiszW8Cx3l8tPFrqgwTd
         63hTKB6SwohCSXuzB2zqN5vf5NMdJrsxL9frVRvnjqAVJL0FHyhi0aVLRsTjuQOHjFqX
         2o3FFNKoGHOAHnjPq2i9hF192e7P5c2Yoo04EUKGsTIlfAbU+i1+cgo3LwweidL7Q6VX
         Ngew==
X-Gm-Message-State: ACgBeo01UieRAtoC7XImGvI+7liRDxFT/8atXGgQ6sA18oiWpbfFGEF+
	Go/xadFyCM/W91uOo0vbYfZ9/br3oMA=
X-Google-Smtp-Source: AA6agR4wTkFwu88EBRkOpmnRaCLj7fH4WjcwqRpbzw50/mbh89EKioonmEAU/+P2kKB35dxMILhEzg==
X-Received: by 2002:a05:6870:831d:b0:10d:a96f:8bc with SMTP id p29-20020a056870831d00b0010da96f08bcmr111462oae.143.1663016172558;
        Mon, 12 Sep 2022 13:56:12 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i21-20020a9d68d5000000b00639749ef262sm3385355oto.9.2022.09.12.13.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 13:56:12 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	cl@rock-chips.com,
	s.hauer@pengutronix.de,
	frattaroli.nicolas@gmail.com,
	michael.riesch@wolfvision.net,
	pgwipeout@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH V3 1/3] dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
Date: Mon, 12 Sep 2022 15:56:05 -0500
Message-Id: <20220912205607.5969-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220912205607.5969-1-macroalpha82@gmail.com>
References: <20220912205607.5969-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_135614_115435_4C2A6C3A 
X-CRM114-Status: UNSURE (   8.29  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add a compatible string for the rk3568 dsi-dphy.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index 8a3032a3bd73..5c35e5ceec0b 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -18,6 +18,7 @@ properties:
       - rockchip,px30-dsi-dphy
       - rockchip,rk3128-dsi-dphy
       - rockchip,rk3368-dsi-dphy
+      - rockchip,rk3568-dsi-dphy
 
   reg:
     maxItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
