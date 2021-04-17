Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D41DC433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:35:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D9F72611AC
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:35:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D9F72611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DczzGQO2kWay0EqnBttEfKCfvcCbTA3vAJAZo701KhI=; b=hEC+8eBi5GCXutSfl4l3xi1LQ1
	TM2WkT5MlCOspFZ78H/pxrRwq17C8W+DlwqgmX6RvN5iEeWtDakhQZbSovHnUVCI8yDGMjnjPHgF4
	IVcaPwGI15IJIm0ac5VR3/B0/v7Fz/HGobMEcr6ZdEnmPrnNOm/1ZINcCD9yPaEzTdY/z8T/DgMR9
	TnQKsN1eNGkg5Yt0SRmBMWJGMPeHOcuCkKBNB56ERIBGEu2MpOPt2QJHQ8yYsi+Ws/W8JKw+pWj9c
	DEJGbDmS2Q4NdWcB71v/44Zk7K49L1CoBTKIvmsmSKFf4C7teDZdGZen5voMvajXVtRD1/P3aBcS0
	jZ5vHesw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjER-005AcY-7Y; Sat, 17 Apr 2021 11:35:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9e-0058QV-0P; Sat, 17 Apr 2021 11:30:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=WpY6qaVVbiXXNlFP7xWIKSLPQ4/30CArlxUBPJObKKU=; b=CHuvKEEaUgi7vSUxahE7+cO/6S
 1+Ql6P8qunh4EvXzRltvbImhBhziF3Q3FRb6JGVn/vGEJe8eOZ0cAAgNbzVm4en0MjKtyYjuK8E1w
 O/t1p0RUQqa6Uq4OYm64niubQOBFfnRUivH/4CeEE0cYbjt2FA6bvI+j1vJ0FRVCNNVUaeHq4aO0g
 35xFyo+Qdo+lWrwsUqOhaRtHPdGBh5/iLm0kWymzx39sxHxd1UWx7SlgAB4OEbCso72s0GEwtRzRg
 7nhuAdXQInRz1Tn7MqaK2msTgQlsJthujDbC4Xp0NrP9YypPJOcStwPjBSOcwOoUpZ+JNH8zuT3JV
 yT9GUOHw==;
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9a-00A0F6-Ac; Sat, 17 Apr 2021 11:30:24 +0000
Received: by mail-ej1-x62e.google.com with SMTP id u21so45851837ejo.13;
 Sat, 17 Apr 2021 04:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WpY6qaVVbiXXNlFP7xWIKSLPQ4/30CArlxUBPJObKKU=;
 b=sjmEiYPvwk8+WgblZL1E8/PrigzmiV4oUkY6MoFgJYa39jFWdOK0v+/SKji0B386/7
 N8IW90BLm6FPEVZOWL5Rja7rmeWMhZPT+Y13+yGjrIqUCBwta1y6zsjf+18IUy6SuNHi
 tQWMcAPLsjVWGnoP565x8yN4jwNYCqUvtbjbyi2IyrXG3ACyOIz41AMQl8sNxsSTYFk9
 QnAkBUHoaBJF4nbsjqns6bC2/7/98qmHjOwijIW6SvpHvqoGMiPfGJdm8VlDSULspqPN
 Qsyue7l+nG1DGbwSUZ3KbGMSxV7mzxROq4vK1K8Kc/BO8FKTnNCXsQeO64NkrurAnL4+
 lUgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WpY6qaVVbiXXNlFP7xWIKSLPQ4/30CArlxUBPJObKKU=;
 b=W9TcdAZAFtmURVxKIJZ+lgrJPyxk9yAa26Z1bGN5N/6seqGzbzgSAt079kVOcPgitr
 AySjGHXXd7I1Ap6mefRyhGNzb9qSnd3LBVIF/Ba4tWg29hz7Z5gUlPknuwUULgmYqoQy
 AN1gW/nC+5jxTrWcCN9H5k7uJV/3SI80SYwAnoBSpP61IWAsWbpnnUwyZoaFZNkrg36Y
 X9/fdpbC8tDToN/CTiskLxsUy4mmLcB5OyVYyOGR/eDd9FQe+3hK5cV6Jl4W4CLEyNvd
 20+JnDj7lX4aNrZOdEU4BLOSS/zH0npxGf+YswBMWlLCcs9p5ptA/mPk6rAOym8fGAxP
 //7g==
X-Gm-Message-State: AOAM532pOv2l/FZ3mTivYLT9Z/U6hJEWPJhXLQw+hbeNUJUkcoPB0lUA
 X5lp2VuX4nijiWGKb5r5Xxg4TXx3zOwP7AlN
X-Google-Smtp-Source: ABdhPJx9so2DJWJkXpaaza7EcdenoKizJJmiylh9P3u2FqaiZqNuaZGYX9tg5CeMB49SJcrpCDphZA==
X-Received: by 2002:a17:906:b0cd:: with SMTP id
 bk13mr7525557ejb.184.1618659020603; 
 Sat, 17 Apr 2021 04:30:20 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:20 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 14/15] dt-bindings: power: rockchip: Add bindings for
 RK3568 Soc
Date: Sat, 17 Apr 2021 13:29:51 +0200
Message-Id: <20210417112952.8516-15-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043022_404413_8E0A4700 
X-CRM114-Status: GOOD (  10.34  )
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

From: Elaine Zhang <zhangqing@rock-chips.com>

Add the compatible string for RK3568 SoC.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changed V8:
  Add pd-node ref schema
---
 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index f71569de9..9b9d71087 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -40,6 +40,7 @@ properties:
       - rockchip,rk3366-power-controller
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
+      - rockchip,rk3568-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -117,6 +118,7 @@ $defs:
           "include/dt-bindings/power/rk3366-power.h"
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
+          "include/dt-bindings/power/rk3568-power.h"
 
       clocks:
         minItems: 1
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
