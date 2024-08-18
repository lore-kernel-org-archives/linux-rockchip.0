Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CE67C5320E
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 17:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QRRvmfDUgJ4mx/HUQw1VSbw6imUruxBEOj6Ciat+S8=; b=tTL3Yj25ykFbio
	hcbQ9s6YXLrWfYMzMt4d9yi6zO/Dhc40CEVbBjdInjwLwJu5VKXZ3gxycpZV/i32APuZR4JlS5fw+
	brGnqNGmkidvCL98au9w0Cnzh5y3fpIKavCbWfj6ch7yisdKbScekXumDYr0tVbUqi7T9D8WW3y+M
	eChcrgv8R+A0zBBkdNRNjFamYAJTFkUpcjgAtf+nIL1UhkgrX0O25G86+w2Zz/sL13n9pIQAWE7gF
	uSIYmQgt/cG3v19SEXczXdbgCsAq0N1RkI1TiK8sidDXQtIz3Gj3HKdm8gec7peWAR/1AvTP1NLv6
	6GSG/t32K7UmwR1+tEmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjqw-0000000Gv3f-1PSu;
	Sun, 18 Aug 2024 17:38:06 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjjV-0000000GtBx-2oTf
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Aug 2024 17:30:27 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-428e0d18666so27182505e9.3
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Aug 2024 10:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002224; x=1724607024; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4LJzGmSDXl8HNs+ZJgf58xM3uvdTJPYEdQtiLGgE/Vo=;
        b=Jf8p/JrrLDWGhNiSrV5+Ilg4/+aYOYW0bB0wTEPcaD+WOLmO+rB98d70ryprKBHplI
         42ClVM5f7Y+VVpsl0U/kypv+bOxz5ExkNky67CTOa7zW4+awCdPYanzEtb0X86LYkuvE
         McUnRldEiq8aYiCRIUy/iD6p3Ni4mr7M5+eO+2klmQlaCDHX0l9simocEW6CehRTGkny
         K9zT8mPmslFRsB675zAE97HXo6JNHVb9uB9sRmoan+0LiK36GImoQpncqY+Hk9IaYF3t
         Hatg4XUxg8XevNd/SNlsQC/JqbheZOA6EhOWiC06CnyRzsY9fWOIod4ZZHj1OP4kUaop
         CC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002224; x=1724607024;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4LJzGmSDXl8HNs+ZJgf58xM3uvdTJPYEdQtiLGgE/Vo=;
        b=g1p8vO/Gxz60GzBkPpfvETMwG40Wjq3EOLQtUEiPsB5KabQcnnz0GOfd5Rx5Uzntx5
         jYVOZf/YRptCPQLsw9K6r3ADAISg5MiIkx7rRLYK1+Fi7MqW0M9GZvKDE5DLm5kU63+V
         G6R2QY/pmgzY/HG6kSGsbvghVOsKakneMmcBah0eEKVVaBcn8nYMYEUC75FDSXHA04PP
         MIDGW6ikHHeXlqI0WlW2CqCBfclMiYofwVa6nVpQAIzVPX1IkcD5IaDRq0hc1i/nt8u7
         AFxWDgK2Sda/X2Zl5WRGJzH2MH0gXtlJXZVDzCnUKN02tTVUf4dymM3zJZnzRxcpQ4hb
         YXfw==
X-Forwarded-Encrypted: i=1; AJvYcCXoJpQmqwherKfCDfwn0jGYoyBPsyrs3D9yBqLusn8hlwltVkMQIuO32rPcT8st4fqpYgD+XyS/w5DkUBFkuw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3x86TggpCOAWVe6c1tr0/PplYBL+IV4MOkU+ZgJLktqRtwK0E
	fcHXpEjhXpqn819OvHBSnFK3nt06bIYRWVmMjOgY5Tb+SlVByM8DrSoffEi3wu0=
X-Google-Smtp-Source: AGHT+IGekL2+ttve0hynRqEEzbgRWcWynLHa1J/EMMNb3eGD6VlpT3jMglNMhKBlzMDg3B561e5RkQ==
X-Received: by 2002:a05:600c:5254:b0:429:d43e:dbb9 with SMTP id 5b1f17b1804b1-429ed7cc4d4mr55016825e9.23.1724002224225;
        Sun, 18 Aug 2024 10:30:24 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded7d5a9sm134999915e9.43.2024.08.18.10.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Serge Semin <fancer.lancer@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	patches@opensource.cirrus.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	linux-mips@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/5] dt-bindings: clock: rockchip,rk3588-cru: drop unneeded assigned-clocks
Date: Sun, 18 Aug 2024 19:30:13 +0200
Message-ID: <20240818173014.122073-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_103025_827094_28685D35 
X-CRM114-Status: UNSURE (   8.35  )
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

assigned-clocks property is redundant, because core dtschema allows them
if clocks are provided.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/rockchip,rk3588-cru.yaml        | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
index 74cd3f3f229a..4ff175c4992b 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
@@ -42,10 +42,6 @@ properties:
       - const: xin24m
       - const: xin32k
 
-  assigned-clocks: true
-
-  assigned-clock-rates: true
-
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: >
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
