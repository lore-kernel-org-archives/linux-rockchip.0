Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C965C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 14:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULzzJ4phQniW1QdaSbiGiQleBAq44uR1mnrGUyla6eM=; b=Bjfl0PlVR5+Cw2
	vtN3DI75jErPZLmSW89VNc1wQORjmALLKAQyWkkSV5m5PEkG5K1pJDl1HqTa7YAQuAWkacWdGzJO9
	Qxwkn+n5dSpBQN6QmbE7ou9VwyP73pGxNtf0OS9Xer3yOkNurbJH6/0Uw57HX4C1aluVrD3gLYpWR
	5p5ws8PvajLwRvBxNjVOsDTSZKd5L4EGXjhce8aSs/wu3gMn0bSIRlCQoNlGrOM68Q2xXlnrT9p3X
	ehciyVo53viysK6OfzJw2gjXrCCefe9LuKpEidt7plLhvrK/27Q4wwgKfNNsEOIbr2EWhATZMEKgX
	xk/ZI/KZp4CJg+mn3t9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mqw-00D8y5-Pu; Thu, 22 Dec 2022 14:47:22 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MVE-00CvgO-6d; Thu, 22 Dec 2022 14:24:57 +0000
Received: by mail-ej1-x62c.google.com with SMTP id ud5so5283913ejc.4;
        Thu, 22 Dec 2022 06:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HdAXRp18Yhl+PSUnXtbvxR+DNOmBhpNB7mLZxnFGxfA=;
        b=Ak5UOvazOKQI4voJRBbw/aBCbllxV6iZfxLX5kvr7a5k5+402RTMNX9ttsPTN8xVOn
         jT6T0+rXU62S82MDgMd+aQlPOOz/nfCu0pq1ZLDkC8fIZcYV/qrF/bpFwM8yAWQ0x7EQ
         q9HcoG9P5F+9jZje1fi5sgQoaWHo7hmbgbgOJE7cM//3AeuvYbrpdL0Sl9FsN+43sM41
         8MexiDyS2m+RHro68c2blvLTjRBbFlnQ4ynqfyt4QdPsL54m7KwwZe765Cl5pAO+TBLQ
         kh0a1doC6s6qxvb+rN0CUV2+qE2y3WmNyNet3Vn2IghdsPmFXjRJdFOalNe3uBpXFpbA
         /VTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HdAXRp18Yhl+PSUnXtbvxR+DNOmBhpNB7mLZxnFGxfA=;
        b=S+Zu0sDhChc/Q8/6BX9NhnbWFhOGNIpbGpNnq8ByAt3jqLn4Ei8GX2CasBWCqYZ9Rv
         8PI3/BYdJXUWiqjlP0EDnwq4oxiXIqZLzjnxvtiHRR07fReRd69HJmAr8dJGTCkRKz/t
         gBoUadG1cuScreDsAkS4D8SvXVNhekxqkpx3cni2Wo8OexYYx4dJFCH8ErAhVjq3219U
         Y0shzDiwPQ1UFWzqZrFuj/vMN46vdXK33FEkF4V+0zOvf4czbgLcsnYVowOsTY1rjdmg
         0Y5EFAlWr2nxWksYrAl+uJF1JNqmBRN+xAY/CWi7oRjejvGYcWG4NEVH2XyU4C1/2gzZ
         mKCw==
X-Gm-Message-State: AFqh2kqfPY6Fvbo0U6+DvNBDxb6nXJP4C1GXCRFEBCyQSt+v91PkIW/Z
	t5deyzZbfCuyfh5bujLK56I=
X-Google-Smtp-Source: AMrXdXt45+koOLdg7WkWVuXyCH9JMIXYsbmfdjeRv0hUdjOfPc/eqO1XzGfCc9tGBAYRQkxdVQZgQA==
X-Received: by 2002:a17:907:1b0b:b0:7c1:6344:84a with SMTP id mp11-20020a1709071b0b00b007c16344084amr7096364ejc.5.1671719093335;
        Thu, 22 Dec 2022 06:24:53 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id w14-20020a17090649ce00b00835dababb9fsm283580ejv.214.2022.12.22.06.24.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:24:53 -0800 (PST)
Message-ID: <1c3b18ad-350f-e862-de98-a775e11e132c@gmail.com>
Date: Thu, 22 Dec 2022 15:24:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 03/17] dt-bindings: display: dsi-controller: move
 clock-master property
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_062456_355115_732FF000 
X-CRM114-Status: GOOD (  11.08  )
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

The clock-master property is used for the controller and not in the panel,
so move it there.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/display/dsi-controller.yaml       | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/dsi-controller.yaml b/Documentation/devicetree/bindings/display/dsi-controller.yaml
index ca21671f6..67ce10307 100644
--- a/Documentation/devicetree/bindings/display/dsi-controller.yaml
+++ b/Documentation/devicetree/bindings/display/dsi-controller.yaml
@@ -30,6 +30,15 @@ properties:
   $nodename:
     pattern: "^dsi(@.*)?$"

+  clock-master:
+    type: boolean
+    description:
+      Should be enabled if the host is being used in conjunction with
+      another DSI host to drive the same peripheral. Hardware supporting
+      such a configuration generally requires the data on both the busses
+      to be driven by the same clock. Only the DSI host instance
+      controlling this clock should contain this property.
+
   "#address-cells":
     const: 1

@@ -52,15 +61,6 @@ patternProperties:
           case the reg property can take multiple entries, one for each virtual
           channel that the peripheral responds to.

-      clock-master:
-        type: boolean
-        description:
-          Should be enabled if the host is being used in conjunction with
-          another DSI host to drive the same peripheral. Hardware supporting
-          such a configuration generally requires the data on both the busses
-          to be driven by the same clock. Only the DSI host instance
-          controlling this clock should contain this property.
-
       enforce-video-mode:
         type: boolean
         description:
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
