Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 325FDC00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrZLZQg0/auorMsF101srlEf2ZaNoRZK5w3rzfL8f+Y=; b=Z+ZGnWoJRnrY+k
	m+CVb+gAKTzWGkT6fFt4b5K1+CjJ4RoeDxyNMxZEmm3H2d2YXZL3Of9VPYIua7HEEdf5iA2Y57ZIj
	AiNNRK4G5SWEv6dsvVU+egdoNbAfPp7aUTsumON0sHqZQmC/Yfn2WJVvXGGKLRzs646R6CbojLziP
	kZWB8hLj3EWbWfmxgRiYLC3xo05VrwUHE2Q/K8imzwfgLEyAbmHkDTkIngUZbNi9nvO5Y2Wr3OEOE
	fe11Bwkfv/fvk09mwrb+N+yFvraNncdwWKSnwqMZ+900qOtaCdFdCv+qRXHezPeWKlIneOxIE37ql
	mfLNI+WNEmdD7SyLsh/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfGV-0056dg-2G; Thu, 18 Aug 2022 13:08:51 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOer0-004kKS-5f
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:42:32 +0000
Received: by mail-pl1-x631.google.com with SMTP id u22so1387696plq.12
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=4s0QS1YI0paySYsrNb2nScBUXsP2sNl5MUjElvRFqho=;
        b=XAD0qX9CZDcoAwKOoHt4O2qLebesJ8pIPf4PK7e0q6QLPA+C9Z9uQ+qhtRU39t5k3p
         7TUYo5LaXpEeN83eUUZAz2TP+4JGSrY78VWZea83C1zC/FeL91fE3jvrVVUA0Cid1ze5
         MA31HEw6HGCR0VuEQS50cei5p0lYf6kuBs/rS0rk0NNP/o421lyj8n0vAfNUhNBQFouG
         Sx/IHtzcRaZfV1EhgyedSPieLZ8HyZ/5hDoPq/wSdR7Z0Xs/kDaLMXhmkLpPlG2ad9Dn
         wr4nozBvTIGIYfhILZnnCJWKBeH30Fl+IPfACWarQfB7rG0esj7AuNkRlK/FluZ9BkHQ
         6OyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=4s0QS1YI0paySYsrNb2nScBUXsP2sNl5MUjElvRFqho=;
        b=HZp1XvNjnc2ctOv4TodopMsaE1/MhuZ1BpL0xvGRki8OXv/lJKfi1QKVfR/b/IXAtm
         Yk9299e+0xjYT956NM8b1KmaB151AnG0t3sS2tcJ5kT/O/IhIBDNB3dOAmig2sixF75a
         gjF+AoHjIcGPBik8IN8yf0QC/2OGl8PdxTTlhw6eOv7QPz3daoMIvkcP5oyFtPxWY8/6
         xHsMTHBGEHQ758BkLo7i7bXWDJkg1gVvJa1FAszVeCHFZ8ManmAUtoiDtTMkwosyZTD7
         QVBtMVAr9gGqfBlQaYshLVgfnoaC3NPyf+ExaH4NgU1N1VvemPBhluQm2P0jN74J7Ipz
         0hrg==
X-Gm-Message-State: ACgBeo0N+gRQlxT7+UaYUxIjrXdf/CmtwF/ttknwYQvC1disLfkAqivF
	C+lFKRii8zt4wM8d8HMVb+Sjvw==
X-Google-Smtp-Source: AA6agR6SU9vsvktMtY8/dhE38ozK75m/CFOIHLtERKeF96QosbQG74dWJWMYkTWZgzm6YNLdAbd5mw==
X-Received: by 2002:a17:90b:1c82:b0:1ee:eb41:b141 with SMTP id oo2-20020a17090b1c8200b001eeeb41b141mr2989422pjb.143.1660826547926;
        Thu, 18 Aug 2022 05:42:27 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:27 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 12/19] dt-bindings: soc: rockchip: Document RV1126 grf
Date: Thu, 18 Aug 2022 18:11:25 +0530
Message-Id: <20220818124132.125304-13-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054230_261675_1BADD2CE 
X-CRM114-Status: UNSURE (   8.75  )
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

Document compatible string for Rockchip RV1126 grf.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 75a2b8bb25fb..dd7090d668f5 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -45,6 +45,7 @@ properties:
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
+              - rockchip,rv1126-grf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
