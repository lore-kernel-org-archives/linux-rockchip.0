Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E797CDB479
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 08:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PT+9+fv8/w64EZO7WDeVB9CE9pwPFdaflFa+P4bnQ3U=; b=JilZv2M+wf2cEC
	b5Xj2wnAiW4xFtgtUcXmSnZMjo/6viT+/D4EmrcsqXBI1ESrspson8WyaLzNmqNMtWni4HSBZY/R3
	92GYSVymFD+bCu7BgWguBx9ws8yXQ3ObZ8y43u2oKXD5LEFbO3VfWk0gYoDAeAZk/Rn2/Xbn0b1ak
	WSF4JiNkkTxof/xADmLZgWc8yh6yCu8vx1mlWfL3C0Ng8fjRucLpHY7osukObPwT+f4Ud3Y63pMeE
	hSM5tX/Jf9ArvjVmq327cUvCX7liYcOpPDLpPfCGYmY4V0+NgrVdY49nkUqDZafKyE+BZUJ4+vMq3
	J35MZlPA2i6vrxUgNbxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJFw-00000007Pz9-0YqO;
	Wed, 24 Jun 2026 08:46:48 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJFs-00000007PxY-3Uay
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 08:46:47 +0000
Received: by mail-pj1-x1041.google.com with SMTP id 98e67ed59e1d1-37d55e8d3e3so460793a91.0
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 01:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782290804; x=1782895604; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=80huAu9bkh6KHgzBZGFLSxb8JVOVhcXYtQUMYEe1cbA=;
        b=oWkWiUlEwY06zpNkOriL55rxkMH++M2n0ptQGAlIMxNxQUTKhPSUBdQf4LAlD98w8/
         2PQFXtU6TKH787uIc4X36Dq2xmwl+JoJE/dKWsNBytgFBegaUwg/s6OmVZFl1HqCb99O
         WeEEEV82bKMIIimzbo2GbDEXfIeAQQPVxsHFMuhLERPHuz0viEh2WExX/c5lW34sAx5V
         pvum+7qB1QKUrJWoYhSc6OT/Wca5vWRoIOPPoT6v2PfMb0CaEON36soY5K/VlnMHn+z4
         2p1tkQ0/whObW0u1cltmolGxrUzvE7WPIsocuwcx8DFtQ5sMIjBtKcrbEnqGK025XoML
         AqPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290804; x=1782895604;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=80huAu9bkh6KHgzBZGFLSxb8JVOVhcXYtQUMYEe1cbA=;
        b=OoEQ/Jep0sdgkIuAaSWfLhRH8TH/jcRoRMQhpsuytA4tZiKcbH0SUZlS7ftZq5k4Ir
         Gk8NSDMRyfB5zBtnsI4t8DwJ5BZYHPN5dk8UR/9roWGHWymrjWooZxUnVkV7AlbuSdjV
         6T71XYYkHCOx0J/TnFArq6RWBoXxHMxCaNt0MtK+flKoO2z0oc89hxJAXxBDmwJQ3PAd
         vkCiC3NwC1vvKtMX0agW11nWL0nZOm1WC7b0rb4MeO5MSrXtije5NvFOmoc9ssU37GKQ
         +7hX0wdIFgGczijslj1Obuj4riBzf3gKqeMCvz3yFMxOrwPyOZ0khZW/xIjRgrBg0kxa
         SQFA==
X-Forwarded-Encrypted: i=1; AHgh+RovFI0ySih8Krd/uADkGy0lR194uDfB2ZZo4AgXgYi4hurDUDN3CP+neLNH9xEIaAc33wzPNkYEXSa4R9DUMQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3rlTqiXIfdA/7rX3R8MNpAbB+37LKN/eHojJHoYh7U7xbqhfr
	LbqJCtV6hgy2RsZJ+2C1PADjVOMI+7gDTumMzW/TpK08B4RbnM7kgLLRkb1sI+zsEX4=
X-Gm-Gg: AfdE7cn4GJTYoaDAlYuonbgn7zUBsquQDkVLNzsn0vf4slHCpUvxGGyteq19xJjQGEQ
	xZBiyYC9GOWrv9gQsImc8R2HlPPI/5Fj1iWnbRW/NbZaicHL3jR6hn9Uvam/cdbVB8AhiuvGYwp
	ff3kzR0Vv5CvHiPlGLhfx43ael4l4hJG/+4lkWtMcg0/pkg6AgpY323DY4+kEsdgOGGGznRClZn
	yLxkgZjbpD5IN2SBHSpdJqu5FUMbaZYUROre3QcAeZj5Snxv1Pe8LiDJlvWd3xWyDZ2iIwa9x3z
	bKounqzZfu7mVxsT0shi/CZeEO2huIe0XbF5nrgfs0qL9VemQS3+SOG9It7TcbAjOh+PsPZmvRO
	e6aXVyuOvW3EOM/LLoIroRunkMS2rMPe5eTl13EZknIu/aR/MNOTrBtvUm4/HPm2P8dsNxED/dB
	hkl3elAmsscLTsEbtXy4NpIxZBLAJCwHUKNQA=
X-Received: by 2002:a17:90b:3d8f:b0:37d:9874:935f with SMTP id 98e67ed59e1d1-37dcd701ea1mr6306406a91.11.1782290803441;
        Wed, 24 Jun 2026 01:46:43 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3d152f4sm2138146a91.14.2026.06.24.01.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:46:42 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Date: Wed, 24 Jun 2026 16:44:38 +0800
Subject: [PATCH 1/7] dt-bindings: vendor-prefixes: add alientek
MIME-Version: 1.0
Message-Id: <20260624-rv1126-alientek-dlrv1126-v1-1-5aef608a3f64@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782290789; l=883;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=Jsh+4vP/f+Y7qzRXW4NmYmHJSetmziSvku7ESza+DQU=;
 b=Z9Lt///3m84yBAmd5Rx6elPweLgGZVP5itDksYZtTAsSRkl/mztlr90ckF6yRI06aMkezej95
 wSJvTw1mqiAB++WxygtHTIGc9+5JEekbHz0QDhcyHEO0zxJqsmdeR9j
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_014644_948942_92016B7F 
X-CRM114-Status: UNSURE (   8.94  )
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
index 28784d66ae7b..a23508a61373 100644
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
