Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDFEC4320E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:26:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2533360C3E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:26:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2533360C3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDhjD3PJstPMPYKYy9QEDjpN98PPAHoSELbNOjvMBCw=; b=azIAWsSRMSpD/d
	ssGrzc1Apoqhkfh8NmywEGCxQDrf9iTJw1ZGtazFTJCkQKsPNuonypcx6iE3uSju8Sh70ZGBVxeAm
	zDYIxKafZq7kfAjBjTiFVJmHj/8ngNKX6bEdeItwBXNoRgCqNizQjID6f6yLSfnT21oxbiEQ93d0K
	9/jGHnm5Po+Ok1XAvJ4V5HktPfBSTOPPDGOhQwYyHTHnn3KUW3o3Di+mDl7SK9Nbg7uJH+iAi5sV3
	S/8nFPOXI+6GST/EaNP96gPIh47AO35nOexwKvbaFBjMNAQLPnUBjEVHkllnbEojIR4mbhmA5E890
	c5kvVHnJmRkYL0/AyetA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8ie6-000cms-WF; Wed, 28 Jul 2021 12:26:47 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8idh-000ced-HP; Wed, 28 Jul 2021 12:26:22 +0000
Received: by mail-qt1-x830.google.com with SMTP id g11so1150902qts.11;
 Wed, 28 Jul 2021 05:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cqVElBTymsj42U9y84VWCRYbnR5OUCvocbx2B46HwA4=;
 b=lfHZWifbnkRx73BjJ2DdNFoh76LTI/lR/JlGRqXWxJb8VDd5lGQmojCJBJ0S2JOHQA
 DUrgcauL4hNPhsLLPxolrKmT3lZ2aVwln3R6WyPmgqw3ADU2hx6Ie0q1F8vjs47yUUIx
 U6erLvl4z6Wc/te6l/4qlmIkyN7Hn9T26/D6XnHbwHTItUxU5wdQX9cVtf7YVBGGy0WI
 DkXEdn2ucXcIEAVN/POOmw2ylW8NEiqKfjboJwmFtpSBjhf2cHF+hmz8ijGA9fM2Ckrb
 lKB+if/AzXsndXcz9hWPyi95hUu6AkT0VA0gP9gaHifrZhz+mErtN5m81PTSDmk011uw
 W4Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cqVElBTymsj42U9y84VWCRYbnR5OUCvocbx2B46HwA4=;
 b=c7EPjdk7iGLvqT6afTfzrshUYBYIByEz8Q8Upp+EzOjdMIT3trSDiSg6MvN6NprfAP
 Ni2X8qaRY4of+DUMzPvEUEId/IOq9UnJW7lo/jNmKTLERr/BDp9I4I46TVkOdLBOpguf
 S9jsbp73n4TMdOuO3VmBtDKvJqalS4QbaocNt9FpROSzdEdHisnSJAYRCvLMGmUi/d+d
 KYkzlB6lqDMqe1+kHdVOjNOhk+QwwqKIdZcnvTKamiJKvnId4uook3GDuiXhgNEkJZRa
 VWEysdnQynqslidXhZvJVlQN1FZSV2+905apu72rvP0xAt2+HD6hf2J/LGiecKz/vW4n
 gFyg==
X-Gm-Message-State: AOAM530lVxscxaOxWJZu2z0G5frI+U8d+7tFhbRkitRRzo9WW0rP8PsR
 yc+EwLHeRvymWgtmrstTvH4=
X-Google-Smtp-Source: ABdhPJxg8GxOcLAwV95w2hX1hG2TcoDsu76sI3iNr3XLbBM4hoL0FeYRELgeOO/MKNl97IqbmxiNgg==
X-Received: by 2002:a05:622a:50:: with SMTP id
 y16mr24452703qtw.322.1627475178609; 
 Wed, 28 Jul 2021 05:26:18 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id z9sm2842972qtn.54.2021.07.28.05.26.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 05:26:18 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 1/9] dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
Date: Wed, 28 Jul 2021 08:25:58 -0400
Message-Id: <20210728122606.697619-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728122606.697619-1-pgwipeout@gmail.com>
References: <20210728122606.697619-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_052621_627551_68D3B225 
X-CRM114-Status: GOOD (  10.25  )
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

Add the documentation for the rk3568-usb2phy-grf node, which is separate
from the usb2phy node on this chip.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index fa010df51a5c..3b0e06b6ea61 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
               - rockchip,rk3288-sgrf
               - rockchip,rv1108-usbgrf
+              - rockchip,rk3568-usb2phy-grf
           - const: syscon
       - items:
           - enum:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
