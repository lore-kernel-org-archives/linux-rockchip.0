Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71858C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 07:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeE0XCN13kpDXUPGP6ocwYXIkHazidgvBAdm5SeIG5E=; b=tgHdtRqwTWP7J3
	6wGGuTcAaDeJRMwZA0FQ35q52vCswdRimFZDEHbw4Rb17gW2cffwwxplyWr2P4vBRrbcQJHDObDTW
	sparE2w5MoSDLXmdOO3YkFpDJmmeB7nL0yZr8YCU0HcylrzT+wp/ZPYmOY7/MjqaL91InoKqu7v4l
	pcO7StaWIC/rAPpPcyxuA3wcAew/3rlRJrSKhOX1YfyJGiycdOO3RaKwMsK9Obq5ap9SpVxk4W+rR
	qTAEzTIpN7U0NJiIYWpoqminF8HZrGTQOM+4pc6ier+ZZWNXrb2pgXok/mJwisLdqezTKfHCxBakb
	57e+hNwzqO0W5SMD3PEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvUh-0078cy-47; Tue, 29 Nov 2022 07:57:31 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvSU-0077WC-Iz
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 07:55:15 +0000
Received: by mail-pg1-x534.google.com with SMTP id 136so12301225pga.1
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Nov 2022 23:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yi0hIKAz2bHj1gClqya73Veoh6oAoi4qrsywjGJhsy8=;
        b=8PdPJNedsN7Zhu0sdci8eKnpIQfZ+WU4JnDp+sGa26soZQS97oQqnjolTcegPR9e0M
         oqqy0QacZm+SCgFohLyE3tLo4KdhQRFfFNuo4CEVZE98XqXFpWbaPG8NaMgkAF+aEzwr
         hLdcvhEHNqQK1a5NWU9S4D5mBFNn5+iA24jeUT+QRWCGbjGhCDIrbWSFLOK1JAOeK1qf
         ymOFM78sFadj7Wrbdb3urnAhqkuC8QPZn0KbN6EviMqhHdgU84aN0d97Qez4IU4xtAik
         jhhsZ/ZC3N4rTvGpp3o07++vCQUvt3de80VZ1x4qdRcwWga/omDfh2itdGPttbTQrDrI
         3Bnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yi0hIKAz2bHj1gClqya73Veoh6oAoi4qrsywjGJhsy8=;
        b=WjQxev2N9WoC4nPiQMYvocbORN6B7tUHv2f0bA7Edo1ixvDDYPX3w+gzIdA+6vnSvo
         V1jq3srrUKm8/t5Lvy9Nq+9xVPR0NGq1Z18Otr1Adl91yoNYmoSZI5aEBNrevQYH46si
         jiwKRQSjHSKVQS9mSIQ2zSpPjenOdbxb9VM7CBl22UCm5n6Z3lDdNbpLPtwsXRsp3K29
         zOZov3GvK2giQPi5/B3p+yagFGhUtvGyBNPnvYo7ZezZg0eHQtsR/wp4Sef2xuCArzCh
         x36eLmQmkC/lH7AxfowCK20kreI4cvW+j0DocYiJkwA/8WAQd/Ky5MLa6tuUyf9d4sXS
         XrxQ==
X-Gm-Message-State: ANoB5plRJZW8fpVI3ybvjrZfu5AiLHvbSw9RISx3v53aysQjEujs8xk8
	1fvxWollL7apBfu+WBZYJJUxcw==
X-Google-Smtp-Source: AA0mqf6qrbMy8Ze7AjvsmlamNTbl2zjFogRE/pqUD+XtUqybBzT7XNAEm64b6OAJgP03mVFyu1RjUA==
X-Received: by 2002:a63:5511:0:b0:477:ce06:6c94 with SMTP id j17-20020a635511000000b00477ce066c94mr22415439pgb.138.1669708512526;
        Mon, 28 Nov 2022 23:55:12 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.55.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:55:12 -0800 (PST)
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
Subject: [PATCH v9 5/8] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date: Tue, 29 Nov 2022 13:24:21 +0530
Message-Id: <20221129075424.189655-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_235514_683898_5FD21DBA 
X-CRM114-Status: UNSURE (   8.07  )
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
Changes for v9, v8, v7, v6:
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
