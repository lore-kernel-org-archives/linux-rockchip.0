Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCB3FC43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 09:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNi8wpEnXLIaMe4SN4Vk5n8oM5bKS28irMO4rVHytk4=; b=Z8ND4I9ECHVLz3
	qaMk5/7ad07pRIs64CukEy4xvsOg2AgLL5XTu1tJUGq7OqEkQlf7NqXT4vinS2JYgPRn3XhSyfnao
	8tR2exCxcoacJbgIoYGW2MoXURZAFjBVmiA++kFc3PEE11ilPuS2VG9uzDYK1ZGy8NfEBjhBSx7en
	4jbnOxzlCYBF+i3ros37hBmsg/KbEzmeC30u/bsaw5gXxwOuCVFf0AgjthcanZfIeVxsYawGiMPpF
	ifjYOhCIy+u+XS6uvqUR0whdocjuT2prVMZ5UJmFQ40GjLkjuefn5V1F99Sngg6aBb1r/67guTzQh
	9HWtne/7z7ags9Z6uulA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfPw-0000000ByiP-2r8U;
	Mon, 06 Jul 2026 09:15:08 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfPt-0000000Byfr-0W7n
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 09:15:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id d2e1a72fcca58-84536ecfc5bso2790859b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 02:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783329304; x=1783934104; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MLyPjG5C5L4PyonbjPrLAmmPBiN4HQfMBWtrcgyX/W0=;
        b=Q9tuw93A05vq2GL3eGI64TU3D/b7YhoT8WikETLlm+9K/6dPSBw+YuE+0I2yx7FQ/h
         lQ0CUfvTT/0ojWxHyAxyrgYpY6CKO/9dcFF5t6YWncJRqnOx0nsoTDGmI7ev+Pqv7sY+
         2IBqvm5FFGavMUtZFor9IdAt+nkvyolFgZiQWLbxulTUjdM+E5GuY4ZfWkoV/GO0dGzZ
         e5ghZ3gAgKDdatxlBadtmGwNvOdvisimodKTQHgsegkp5ayAEpCpf0pzzyxoqm4mJeA9
         npTG4qZSs2cnClCwtj8QvF0kbCvmYGc9vfDYaQGXJDNsUoaeASKJjcLgKyjJopzieVre
         tUFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783329304; x=1783934104;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MLyPjG5C5L4PyonbjPrLAmmPBiN4HQfMBWtrcgyX/W0=;
        b=sk/bizD9utfiy5rJd1knJBWdcpOgLKbUaDXG9pPHzLv7cBSUWfJT2nbk6Ggc1p7jFI
         qIHfpJptm+gCPROzoH/dPZkME6/Azz1CNTfLcUjfjnrdMX0/Zvodqms2DfOKbCJtJ9s0
         x6W9triTJdz50p7HIQuSIJuiGLsFyDbubfqh3dWIzxzbWMvm5h1lhTIWE0TYtSqz7pqA
         lpA1+6pNj/mmPxalbVqFUp+XYzDxwZCHsnrPayvcpDbiVDBXg8nw5k3sL+C17aHv8Vul
         +h7WiHp+69HyYaINm77UPs+1x3nxgAa/6Im18mDWDRu4MMTq/AmF2bFc+DzwiqlQC6cn
         A2dQ==
X-Forwarded-Encrypted: i=1; AHgh+RrU7gY+oZFCBz+wbB67Za9j6tPiAjJhaDjhvKiAWOq4epY155bYQqpqwm39+UDRi5yeqkxtouiMcgi3Khj7Vg==@lists.infradead.org
X-Gm-Message-State: AOJu0YweEfT8mw6tCNM9Nbi5weJRXpp2Nm+uvCU1Xx9akZXMDtikKBmc
	qC0HFbpsfQqIRNaOv+s8A7/t46oclnBpoeWuYQX8EdGdmdD+cBpeshC9
X-Gm-Gg: AfdE7cl9VFX/6h0OImj02p3cZkFEg8xS/BHQuLxRJRo3qVNAnGJR4yaEPWDbsQ4ehRA
	D556R9O5kD6JJNAdPs65ElWd0AkY9Fmo/ToZPlAdydvDj1y+QWI4Pa2IwfnM7DJfWO51czmibrZ
	rXZ/b1FAaBAL11DiXdcas8z2iSLLm8wRbj6Xb4yp8BZ32xCmuV0GKalaT7oQxs7jSxJZQSB6Eht
	2rfsceG90fLT2VVCyla7GryP7iki10v64t7mpJ6Z1aFpAV7zSunuSjiYnb6BSPMwoEnZR+H3hHG
	3NeSeIJw1uYLM56KNF1yUN5eFQm32+ZBBoZS47DbacmVfdPNcNd9FHTB3w9nHzU2a2Bk2vySeu5
	59zXPeJtceq//SwD3Y91iw+HyQaqtsx/aHfFSe1pilVC8440QIy7051AMnfyKPobbn+Z+cF1DMk
	L0rD2c1EJLkfHFjYciQjFaMXW5
X-Received: by 2002:a05:6a00:928d:b0:846:c7f4:74d with SMTP id d2e1a72fcca58-847f6f4dc63mr9274624b3a.41.1783329304103;
        Mon, 06 Jul 2026 02:15:04 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6db29d1sm3445963b3a.53.2026.07.06.02.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 02:15:03 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Date: Mon, 06 Jul 2026 17:14:41 +0800
Subject: [PATCH v2 1/5] dt-bindings: vendor-prefixes: add alientek
MIME-Version: 1.0
Message-Id: <20260706-rv1126-alientek-dlrv1126-v2-1-ff3176ca362b@gmail.com>
References: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
In-Reply-To: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Frank <Frank.Sae@motor-comm.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783329286; l=883;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=mcE6Yk5jQAt+Yt1V2EfWURtYiAgr7yrD8IJBZ/7gloY=;
 b=BxvGMeEMOJIcDK1cuZcQyswYfSolbuWRu2T2E+i4BOAKIXIhu8SvtnBgIthxgHZ8eezTIYref
 jRshprlBawRB4rPkB+L3GtuaunnK7RYifBztV8pZ/pbn8jfugmoNo2I
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_021505_160421_431F2B7F 
X-CRM114-Status: UNSURE (   9.73  )
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

Add a vendor prefix for Alientek, a board and module vendor used by the
ATK-DLRV1126 board.

Link: https://en.alientek.com
Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 396044f368e7..914d5a8fd628 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -88,6 +88,8 @@ patternProperties:
     description: ALFA Network Inc.
   "^algoltek,.*":
     description: AlgolTek, Inc.
+  "^alientek,.*":
+    description: Guangzhou Xingyi Intelligent Technology Co., Ltd.
   "^allegro,.*":
     description: Allegro DVT
   "^allegromicro,.*":

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
