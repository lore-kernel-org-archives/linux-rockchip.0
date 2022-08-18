Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D154CC00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 12:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EttxsGiSycwOBeS7F+yBFKpLxYXb8oHGr8ki7pAhzew=; b=RR5nutKb4IP4WF
	2hkA39ubX3eUM3ycx2RC6wrRR/JDDAkoG/nBty5Spvvd5sZIyVvlAdFSj4TwcNKA35YfFWT1wksq4
	3OT7JKFOoUEmrFKLsrN7DPyQ1D5BhToztvO2AMKzTpvAcgls5Z1AOjEmo+jtUM9Cxh8HHG0d5nqwq
	MzEjMjgkU762LQmdFHe0HocscNMIWbQIUTBSiiaLLDZFdavosyl0idWG9NYf4zwyKdV+aYTO1hoaQ
	5C9dA9VxQR+1zE1iNkmB7bzKKWxW9JcyAqWQbzPVXgrd3OOBkMG935UJNNuVslA9XIpT8UORmauZe
	5PN9fRXhcr/Yb4UgH0vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOf7f-004xjY-TY; Thu, 18 Aug 2022 12:59:43 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOeqJ-004jl0-FW
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:41:50 +0000
Received: by mail-pg1-x535.google.com with SMTP id q9so283269pgq.6
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=QCOjBBtzFFko85sgu6SyGw6HeoZtmL6fE8Mcl3F6F/8=;
        b=plc3aIsSlj/N37EpDCcK4WXQ5jP07yp5slb5PcLu71tJ2spAeGHdS2+kFnSIWWt48i
         UZYXgfqFKiXtuczjB2x0z/c66536/Iw4TkxwVS4l2KrxqZxFAGpytrwvK4jqiMH8XFJ9
         Zt1PUEOiqna+qXmTTYG7Afd1bSb/UtxIhKP8ZShcxGc4QW15fii9rSI2ifWeVyNoIpwG
         4NvrtDZDFf2UATYUmn/4Z6s7vTbBuIW0LdEQX7adB8cuPoaMLFBYth8nykt/iXgKmh4O
         ZIC5gTGggYZyw8V6ezepwhS34uuaj6+p95iN1zd6ZqKLCB678vBiSydBYRdrJ1BMEzmB
         3iKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=QCOjBBtzFFko85sgu6SyGw6HeoZtmL6fE8Mcl3F6F/8=;
        b=YYbjCv3UYt1XVNAefF+UvhDclzTJOe7NEB4Qi7z/frY/idff/mmSiLOHp6kVHsKGnx
         LNYnORFhuelGcSUBJDTtSQukB7R4qves8+yGSbAjVL+7Gk2cdYnabuHMgU/1AzwqW85F
         wcbOcFD73TNZ8UtQeK+5NfHq98cI7GVYyCI8lFNMMYgo3Hqe908e+E22dWai0feKATII
         TY2rtm+HR6X3MnemoDXYq8R/JPkaUpaArbbPK3FP7uxV7CpfFGIdESbpHzT6rYM87++I
         ZyuxXTMkvw1s7FMqqFPzclb5iGoE48zJlEdV/UTZVjU0XMmKiKjw/KGii94+VbKivXGL
         kj1w==
X-Gm-Message-State: ACgBeo2jF1IpkMkBGPrDtHl8FtEo9PNw0999AH7Ss+11l/39zo9LXiNt
	7fAV6UsX7IN3Shlc1Hni3z6m0g==
X-Google-Smtp-Source: AA6agR7jdrbKfzIVhtLktPgPNRNXrI9KwbVeg8oUA99zenW+nO6Ie+IpnuiCT02zHRas8WcI2RkxPw==
X-Received: by 2002:a05:6a00:180d:b0:52d:9bc0:2155 with SMTP id y13-20020a056a00180d00b0052d9bc02155mr2835143pfa.3.1660826506873;
        Thu, 18 Aug 2022 05:41:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:46 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 02/19] dt-bindings: power: rockchip: Document RV1126 power-controller
Date: Thu, 18 Aug 2022 18:11:15 +0530
Message-Id: <20220818124132.125304-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054147_608284_4DE78187 
X-CRM114-Status: UNSURE (   9.00  )
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

Document dt-bindings for RV1126 power-controller.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- update the header file
Changes for v2:
- collect Krzysztof ack

 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 3deb0fc8dfd3..6840f089f523 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rv1126-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -119,6 +120,7 @@ $defs:
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
           "include/dt-bindings/power/rk3568-power.h"
+          "include/dt-bindings/power/rockchip,rv1126-power.h"
 
       clocks:
         minItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
