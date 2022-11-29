Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACBD9C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 07:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ba7pu9mohpG8SKhjKH3FnmvoZcq+2jicxdrl0AibRBA=; b=OXaNk4aMgThaNo
	0B8seicqpgFX6ZAftDrYtv+80ZBXpKGJ/vTOoMI2ZWAaNY45g/qcRyAB8Qq1XfBYIeygynNmbzlgJ
	BRQFJ1CcaRPj1w1XZ9jFQSf8pNe/8IG1ck1bZUD/+pa2s7U7hYp5l1yWqzRc6ZmYntcuFLRKilBVO
	hyFGvsqAqgXaEgFXBy8P1eveGL5vnz6Hq0ViCw1nDrknz+R5Q5k4gcGnu8CVpksrVefAriZuw87U9
	Bd+C0c+wKp9jCvai+FJShR1d67O6cfgoWkwlaY6wcqQnKcooMW1cNcocrlMj1spz9LbQIAvvnxlRK
	y4uAXS6FTXq2d7pNZe3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvTt-0078BK-Cu; Tue, 29 Nov 2022 07:56:41 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvSC-0077NA-0X
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 07:54:58 +0000
Received: by mail-pl1-x629.google.com with SMTP id y4so12639882plb.2
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Nov 2022 23:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eN1IGYSfqB9+1PAq7XzBkQKGbJY2SPdzTc3TfuZTt4s=;
        b=nItFdxSPwVB25MZdSVpUTa6VFsuz/xyxxLdZzX0QYGmDaiyKTEoLS1BqXBs7lneSWZ
         n9biDVGZ3beJvJa3754hAzKM3v8FJBbTYm3MuNn1SH/emd/INWv4zT9p7t2kmhfuLUQm
         1Os4R/u5cUfSffda6UzRJa8jtdzfW727bIKZ75fzDXbL1+OXJg4mNpSaTMDPo7syLeVe
         3g/pmHGT7wvxsP7ifvKOy3fKoJkxlHmhrBZV0yrRbGZeV8KlfpMAMu960XS++sPGhsqJ
         TNKAtrUdFErkPUZbRAyDY0tKIfokCXigW7PvZrSgT1ExaGbrYMElajYvamvmDDZ27fGR
         Tbew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eN1IGYSfqB9+1PAq7XzBkQKGbJY2SPdzTc3TfuZTt4s=;
        b=i/szr9eG+8zGxxWXWzVQtpOpqYmSakG93bNJ5Qj+/O5wXeoRCT1zIBzJ3pUdT7NOXC
         uK++G3ItnLFyWsawc/NmtGVz3tYBkvR5g5HxU9PKw8oBkwubesQLASJEksofffabLo6X
         sfNST6IBRxo1TUP5i4IuOmXxdf6DD4dLMSEoxq1HENLZtBxmT+D2KvqiO21q7blv6pXX
         pa3IkJZW5g0QCDBbIIfrTHtTP5gseCL6ekXwNa5mRWQBsuF+QpSauBXSL2rTLSxBzjjZ
         F2FG2EMKnqegnW/2JlzSMdz6lzHH7COx2pWizJiJJ0AWgLavsjhAiG8fGtbd/tBSCmRv
         6A6A==
X-Gm-Message-State: ANoB5pkTefgn9cNyzenIswJSdCDhSdi0aUHHSg8PXFR0x7y8E19LD5mz
	tEvYb7hiRjrB4Owi2DEv9OohYw==
X-Google-Smtp-Source: AA0mqf408+IYZeLUx/5AhM3Yqo+vv6GFxp0nLGgx/Ql+oXX+oBq+/6AiD3UJEv9HM0OZQsaAfjrI0Q==
X-Received: by 2002:a17:90a:7d0f:b0:218:d50e:5af8 with SMTP id g15-20020a17090a7d0f00b00218d50e5af8mr34602134pjl.26.1669708493051;
        Mon, 28 Nov 2022 23:54:53 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:54:52 -0800 (PST)
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
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 2/8] dt-bindings: timer: rk-timer: Add rktimer for rv1126
Date: Tue, 29 Nov 2022 13:24:18 +0530
Message-Id: <20221129075424.189655-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_235456_065067_CE44D1D4 
X-CRM114-Status: UNSURE (   8.22  )
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

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v9:
- add Krzysztof ack
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
