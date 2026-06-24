Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41862CDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 08:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzuMaLFX91l7Dwzz0XnXIV/5LmYiIrbhodMZgJh0pcQ=; b=GQONKlg/HiX67E
	B7sSc6EB6Q8LJY4nUfGbbjmz2fdHGL3Z+LiEnX/A4ADs7eI33a2PsOrhQ5HQaXiLyGPgpDpktTYP7
	OF6AalADNZffmelb6ZwGvNKgZ0V+movi2hIq6395nPQc+JuWLvhz9WKh4yrLOreFXDKC6K26oAO61
	Jf/dzLo7yqzoZqRmf5kQVqpX5SMsINXn1ALpLKQPQYhCkdxdUJrfJDCDX6rZM6slGxrXAZL1QAg/a
	Dnj3ENkzOtgIN3ZY7plRrDw6J3cewssbQ5VS53Y4l5Nx+tGbbFgSe+Ln5mwhVPM9x0/NvCqrGK44K
	GUuASDbnb8tDpIwI5jPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJGB-00000007Q99-0KVp;
	Wed, 24 Jun 2026 08:47:03 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJG6-00000007Q6V-2bVQ
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 08:47:01 +0000
Received: by mail-pj1-x1041.google.com with SMTP id 98e67ed59e1d1-37cae11ba85so591044a91.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 01:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782290818; x=1782895618; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=skj2iu380j1PKL/xdlE3SsAEeiyHxzabmaPPRXEHU2s=;
        b=h/IAc6nUnibPqgyRlpOzBRP0+St3cauSzYzgvmMEHkIgsIOfmtzg3Cr+0YamBBh0UJ
         2cdWoDhWhFfFFPauNpAsh+km5ljJmt/xq0mYkVgD2QB2ccvUkOlBFqCsZ8vEBVF6u4RM
         h/t8j6BmaYaAbK2e6uSkzHmizAXbpyyXK/7ZQQpWkLwRzT4uJOetA4aNOf1ANSISluj+
         FIrP7umsUcnlOrhjk7pEDn3UWx2TU1+tjHGyHdzCpMncDGTrT1FEu+lse+ZQ5lZP46wA
         2gPzXKCJIPeYeoO5TQhr/QXs1cIom8hECb/jx8ncyBgSCk2LQmKZcMz3vZwy8o2WjQ6g
         u3Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290818; x=1782895618;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=skj2iu380j1PKL/xdlE3SsAEeiyHxzabmaPPRXEHU2s=;
        b=HMOD7Gy/ChdPjCHIsRdXaD/ipng5MTbLB3RoJEL/ptI5UnD5K42YI1YZOz75DHhQkJ
         ePrITt5HFa1N7V1Tvc8/B4824r3fF1UFCwGRDjAW7a3qBnhaKQSa8PWrjsuwcQ1ODx7y
         fwjlCdAGClAB/ucBOdqNf0zpX7rzTNBQVxDlJ6/wOr4KWDaxExeq0cI6nPHZWbeBZFuP
         Xs4q48YMzgRUSUKVS+Jbyl+gDl36a9yJqOVrHKVvX2kfnxyZhw3I7f77JhWaMCsBvuM9
         rW+z8Xx/dI1n1d63VvNIXRAfePwH1xLCeTADuLrlUE5Xdfr7EPIhxAOdGMTKEB0pVxMt
         hggg==
X-Forwarded-Encrypted: i=1; AHgh+RrNS2fwkNAwu/JJXslFZBOhsNoH16HI8bgC3EErYKf553RobbCUEYuAwxe8VzMNZNt591uhqw27ltYL6E4VTg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5U0AlVsB6s2cGcae9K2Bo7CqhGemsLu5f0voswPgknIzn+Bnu
	8hYfBd66bxT3th3BcxqLCjl9ij2ZMPSjGshiXTRn2X4/PVK8nX9OIiwZ
X-Gm-Gg: AfdE7cksVB60YAUl0fd7bJe8fi0VDIGcqgb92CsyaXfJcxInh9dKwFVTz3wz0m0s4tQ
	T1y+MHE6lD7QkQXUEhQnq1AnuAqt8qNPBV8UMz4IwXT6eogpadi/uLf67nv0UYnenf0tdy2i6HZ
	/bXk+nZ2OwIPBPMbHZOSbLpFGLYyJfD2lhXJJYKNTuyt6ifULB7NSyIn25s5PYhh1+5j5PPBWQE
	zsZWsEUPqz5urMoJsBAcQgMKw2jQE55aLb/Zqr/uOOaAaFWglOiR2BKNvx/jEFCnCyGiQxTWKgF
	ZcuHBwU/3cI18kHHiDgr00ZYRYCSwHHbXZdMiVRolEy2htVxwc+H4g0WAzNCPQ8MMREXm6btQex
	e1XhXy4sk+0M8+nspBnuLsi/u3geRqq/Rk28LjBEGniKWBaKfLOSQVJUe/00DTYALH7Ki/5ILIG
	yBmTqpOb3ybND8crsaTNOFuLp4
X-Received: by 2002:a17:90b:48d1:b0:36d:8e6f:8d9e with SMTP id 98e67ed59e1d1-37de428c345mr2433079a91.20.1782290817925;
        Wed, 24 Jun 2026 01:46:57 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3d152f4sm2138146a91.14.2026.06.24.01.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:46:57 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Date: Wed, 24 Jun 2026 16:44:40 +0800
Subject: [PATCH 3/7] dt-bindings: net: rockchip-dwmac: Allow 9 clocks
MIME-Version: 1.0
Message-Id: <20260624-rv1126-alientek-dlrv1126-v1-3-5aef608a3f64@gmail.com>
References: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
In-Reply-To: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782290789; l=790;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=7ocGNYRnYoq9maF2qAH3laNWa/8XOoI4f7GpRXsmMt4=;
 b=uzOAy6qn4x5/EXYbBgpWhNj60Kg44wCLTm0qHhvgeTMI+w1MXiBW2yw05av0FmzEnKcNPFl/2
 lhmTEwFcLUWDNbN0W8PzbS2ebsv35H1x8pduzk0iFDXlOiBZFmhJT3E
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_014658_676008_9B9E52BA 
X-CRM114-Status: GOOD (  10.51  )
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

RV1126 has a separate GMAC Ethernet output clock used as the external
PHY reference clock. This clock is described in addition to the existing
GMAC clocks.

Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349..86a7e83675ae 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -71,7 +71,7 @@ properties:
 
   clocks:
     minItems: 4
-    maxItems: 8
+    maxItems: 9
 
   clock-names:
     contains:

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
