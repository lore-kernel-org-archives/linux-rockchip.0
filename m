Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B97E6C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 18:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8d2zaPsPz0TZNWnCW448wdH7y3u60itAZBKckCz2VV8=; b=0N42nqiucTijFI
	lHEMkn2VT5Psnh5Qlz3DhnGLwrYmPQKZ4O2lhO9kJnKz3P4/gzPyi/yfWJZf8GMf9aFSjkpGw+Oe6
	lLztRf5ow5H4v5uZT2j4gSjBAS/hR+ubbEBrljYrLcJVvmq2jkTYfSgxDt2X1/7buZ7mzbqtx/k9e
	7MXSECMetxx5tQzQKdlqeUyAnDKVfAA4fXtNojGCEI4ZyrDClSbZ9uyWCptDoty/Jc+5W6Won0cG6
	JmS+WtWaZE0rNpcMP1d4FgMalvGRGSbHEeQDwrWEQYf6yB7rGngSYuA2gj0Qj9M7q0c9jwDCQLBPD
	hKISD890baHoQDp3rcig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxueZ-001hla-Ew; Wed, 23 Nov 2022 18:39:23 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuYT-001ekY-RW
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 18:33:07 +0000
Received: by mail-pj1-x1032.google.com with SMTP id mv18so8908211pjb.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 10:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hznmRLGZtWDVk6xe+cEmfh6ERNdIeWQVT8+xAR9en0M=;
        b=NEAyrYuBSWUZzzYC/CArDINnXej33Ml6CHoNu0hyk/vpTAaoHwaMK2m9xcV+Zns+SO
         KNoxHJOw8E3m7JnE4ajYr7RzXbonEWpCNybI7ddbZ1cDyD1/Pwvg4/NZXtpLA0V4vk6g
         Q7c6/lZ4vZ4zfpNmREdbUvLKIuqRPsuIhLjZ5AMpuInqzfDPEA/xnOvRxyGTkln4WXZO
         rw4HUbZ5VwHMYm1GjfUJxLbOSYdBircnM6bNX6D/OFO8SZ1lmx19Jn4VnDsHRjenfme/
         ilkPyPRbcKplLZPDKSrGPlKHp4bp9IxH8ALF5eoOa3WF4owfd+TPj4n8NvowDUAPgEom
         oRFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hznmRLGZtWDVk6xe+cEmfh6ERNdIeWQVT8+xAR9en0M=;
        b=ctbhon6uqZ9PGpMZMOGtiRt1jLsRnjyQUptgRDbU6AEVjU3kgrDRMT0kZBaz1tGDAX
         hSD5DgzWEaJZ5IVaPQV0SzcIxMYXaWNci7eyY3f/4yRL70lGaPauHqpw4RQ2UsP1wZP6
         0Z9XRLFhwWMiUlrZlzaLZORf2zEjm3pdGCF/qAQKyQCddqSzk28BG/Er4YclsBM33qCK
         318LALyj5IrOahEfvZSHpQOcw6BhEoU/vAVUNU5LEn56Bhjrd2uGN2KAilIzhPHtcsso
         CgWUHF2jZ59sJ7Aqevjsp5XzdhmHH1vpmNuq7CmPoH/ljbsu3AfXOYPRgC0YmQFvvx0z
         At6w==
X-Gm-Message-State: ANoB5pmuA7q64kTyfwmN6kusoAJ/MqiiS625HsB9vfZgyb326je0f9OW
	K+Wym/FOaY+VIXaBhp//+sx/Xw==
X-Google-Smtp-Source: AA0mqf7ELS3lGTglZuQNe3jM2Ys1koYx2Ube6ZvZqNdXK6zI4QRPeYs5zoAHPo0/ZINyIaLZdS84+A==
X-Received: by 2002:a17:903:291:b0:186:994b:5b55 with SMTP id j17-20020a170903029100b00186994b5b55mr23514251plr.100.1669228385515;
        Wed, 23 Nov 2022 10:33:05 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:33:04 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v8 5/8] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date: Thu, 24 Nov 2022 00:01:21 +0530
Message-Id: <20221123183124.6911-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123183124.6911-1-jagan@edgeble.ai>
References: <20221123183124.6911-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_103305_928019_E255D3A1 
X-CRM114-Status: UNSURE (   8.38  )
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
Changes for v8, v7, v6:
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
