Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08A27C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 04:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6bTuOZNfk0IJgl1TV1DjNCfZOdDlfUSFWrHbQacbDM=; b=3w/2EKiCq+oFJX
	MStvT/XSQfRRtL9AgvIoNiaQE9EyvKCHii9SecuVoyYUd2X9vHtbWWhn+QWU1U3k7Juk0K3nYDm9j
	0ED7dkiZyf1puaSlWV4hqWM9rihEgrxRhcDCGioyf+r48pMFmSPPF8EDCeaskcvtpd7HhOG9WJ+uN
	j8ck1OlTd5AhDBCq9IJeu5soUCwIQia6N+W9zi1iUZPIQw4aniqzIfuHeIpytq8OOrvcLL3/KHP6i
	movB3dsH/vNx7Xhz4m3LxzNUzv7rP/trmDJW5JC0SPqfao1+DArSARMATn4uKhaqP8RMtSgtFizVU
	CWezJsy1E/KziCOWbJPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG2L-002bNB-It; Tue, 08 Nov 2022 04:16:33 +0000
Received: from mail-pf1-f170.google.com ([209.85.210.170])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG0z-002aYq-EM
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 04:15:12 +0000
Received: by mail-pf1-f170.google.com with SMTP id 130so12722822pfu.8
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 20:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qVOEvkyYaZx4zfNA7ja9/Y1cc6/CGlvhh8eaDdH7L4=;
        b=eBg3VeRby4Wie387PjhdCc3k5Sr+wlVZ2Trr65u5jIwnychaNKQPim70TLoVes8NJU
         BCTnvay5/9zsKMyyHN2tPLnXsh0i5g+h92VZx7HtaCo2aDOhVF+wv+tCEHL4I4IB9F2d
         ZJYIHHPjOTuvuacMmM+HrRqwNCMInxfqjAuyFIHpGTE0qy2w4iw2uqfd3TNS8B2Lq9B8
         9/uU+CDmBDwU4sVnxInOb4YOVFoAcVThKXN4T6QAG/ircDYdooNf8WYpHFiHzVxskAWH
         Y0W/yQ55lYDfpuawxenB/dzeeVMnOL+YuCKhIRxSfq1X4rorlVUbDMAeOyy8yRLXi9aH
         uHyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/qVOEvkyYaZx4zfNA7ja9/Y1cc6/CGlvhh8eaDdH7L4=;
        b=uAYLpuSjW/Cr3Z1TBfLdNv+P9jIoQpLsd23IBHjsZeJ6sEhfGf2dh1aA/krQ7QAwOO
         w3JldkUv4T30mr62wtZlGd54lIqM1zRPljHo3UnFXEeNeESHLIwLMuu4IQ/GYQN8U/UH
         PT6CBfIME9IsfiBBUUJkwFxZgegoW03+F/qJvzLo4/suJN2nA1Erkwj26a9p8pXIYUv3
         v87HTZsTqLQzKSX1Z/cuEsgaXOa1REa8b5IN99OP/8paov56gihKPA5qofLtgklpBAD1
         Sc736/iMEZS4XouTsEc6v3eDowmT8aYNnBaLJn0uwwyAZkxeLPibqoPM2Cx4v1/iAcAk
         9chA==
X-Gm-Message-State: ACrzQf0CzwaKh3mMuPriFitZwRVtyEPLJtBCQ5spRs9YUYBAoU+hBOF4
	6UXWYih2NSQPyn2RtG7mvKbTiA==
X-Google-Smtp-Source: AMsMyM4tZbWmhnBnQXqvt/O2B2Gr/a3wwoWIhf8Ts3ytZrzf6J4iXteF1Rjg8z3GXky9VrAmy114gw==
X-Received: by 2002:a63:5d0b:0:b0:464:bb2b:9b0e with SMTP id r11-20020a635d0b000000b00464bb2b9b0emr45177669pgb.583.1667880908228;
        Mon, 07 Nov 2022 20:15:08 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:15:08 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v7 07/10] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date: Tue,  8 Nov 2022 09:43:57 +0530
Message-Id: <20221108041400.157052-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_201509_510153_9DDA8283 
X-CRM114-Status: UNSURE (   8.51  )
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

Edgeble AI is an Artificial Intelligence company with a focus on
deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7, v6:
- none

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c601f5438b02..dfc071548e91 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -370,6 +370,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
