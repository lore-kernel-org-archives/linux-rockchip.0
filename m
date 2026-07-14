Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62F70C4450B
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jn1WaXEaa7wDZhdD5JeNevJdb5OVNHq96uudNLAjbpk=; b=Pi/3Z+lwMlUylV
	ISX2F4VRknG1b48G/CF10CZ+2hLk18FZ11Q9bIO4UApBCE2bs605ZNPKSdsE63Qly//ceb7eLl+p/
	aamCI6PnKOHFO2Lk5tsjXzY8i4Q2WE0Fouc24NSqwwhpSTa+ahif0A9wJwc6ZxrVl2c5VDY6n+zew
	SCsK977iZZhi6+jAXiwtHHcc92ad4OhXIZY2CKzlZCbAmYP90UwvTpkxwhIWmhu4uNrjod1cUe0HH
	t0PdXqol3b50vhZ9I0EfrV6AYHRMSE8SCNH0B74U3LZWaNGIPEeuSwkFC4D7kApPCUymZ/pJJ25oZ
	eG/Zypavhu1XjnJ5HwOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjilW-0000000D2a8-1TS0;
	Tue, 14 Jul 2026 19:26:02 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjilR-0000000D2Wo-2tbN
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:25:59 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7e9dc546f40so841882a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784057157; x=1784661957; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4qhLkMDf0+YlirUGcXz6TF2rj0izbPoAZeNkitt1I2g=;
        b=LIRn+DWx5tVunuStHFRoK6OON+6sIzOPC6zJNVP4ghUdMcyPhQSE7OX1mMEdQot3TA
         Ve0ImvS0Td/eW78GgAReLWc7btQL/UtNnJy/SCKQkpmxMIE5rGADoOQscCjTxjqXhGwd
         v5V4fBDtJCDA4ISO7KdJQOHCZ1g1Izcxy0Vfs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784057157; x=1784661957;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=4qhLkMDf0+YlirUGcXz6TF2rj0izbPoAZeNkitt1I2g=;
        b=L/dFfP1/ZwDnIlyMZEhS55P2t8svzap1bP1NhsDw2PcXyI3D5u1BHUvIBQ3o8d/18L
         YMgWrlyVkmvMtrDJ2yfkC/sxO7m5eeHE4ESqIJxE/hLoOtVe9pCDVZiNiCTacQk3KXmp
         tYa6H2HdBXrEohH1q7jnfe++gFZsOOZ6U4TyZqvjPYKepIpq38RMBOCttEPL7f095grB
         Q4YyhhSVZvHfOsPdTjZ0zucBX+Q6IVr5UCWzEovKR3hmxHG+mGg5fwIfntpFn36fK0iG
         tlDeTOofj9H5Ig55sO1LbBxgl4Q8S3OSqevp0o/w/dxTkJWbwyXeuvn7LykyxMYv8e53
         5sCA==
X-Forwarded-Encrypted: i=1; AFNElJ+0dqnV6MQYQVp0vPEcNKVj+bfAwIXeGTkRSZPLu6DNBopImNDsITV3ijDa6bbL1fPvZo94xB/wOVEB5w2BzQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyeWqgiwdcn1ByiFdqqqmKgp9lBq9qprXub1OwJ7LTWLZlGxHfk
	IKd9fkvuh29a6yr/bm3TRYYQpaPZOBfv1I8MBxgQXSUH0rNhhO2ldznP74JZ/kw+aw==
X-Gm-Gg: AfdE7cl83tTyhYgexhY8cvoL2rkrOi/87x4eaUAkTM2PoY/CZt9puZk/B+Ji5yh2xp2
	eqs+HiRtv2WmtGU1SIprftLU8aWzscIw/6NtQO7YldjWsReUK8BEfLslynR+LNhZjxlucR3vBB7
	JYF8hAVBFyrX+Q1cAjW9pcDDOVn0+edmxAxkdYocOKOc0fweVNWtELYQF8JhCaa4X0lykKrOSuF
	u3wG85C4C2hNm78soVxiUgkO4zC5WOUcikOWR6gAsqroLJDmsOrbJyjSJ6vz7XiicnRinB/oC7E
	wtIiEnmxF7b//rnZcJz43BcNr/Ua1BlCTi//Y75beyZiH8D2+MGSPt3BxlkLEdV0bquZvwxpWRE
	t2f4kExyozrjMOjmZZRCSEAhX7S7KjDEnReK4Bl+JLuckq0hPfhD8KSnNM8lUXldJaLJjr5MWQg
	Oe16KGfnRzw461BfjmDg==
X-Received: by 2002:a05:6820:1b0e:b0:6a1:7af8:a048 with SMTP id 006d021491bc7-6a38b9f1f93mr9540469eaf.33.1784057156624;
        Tue, 14 Jul 2026 12:25:56 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4519d89f7desm15759043fac.7.2026.07.14.12.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:25:56 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Simon Glass <sjg@chromium.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: pinctrl: rockchip: Add RV1106 compatible
Date: Tue, 14 Jul 2026 13:25:30 -0600
Message-ID: <20260714132531.v2.2.3a4f9d47d4dba36e14141f8796afe8907028aa9c@changeid>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260714192535.2082729-1-sjg@chromium.org>
References: <20260714192535.2082729-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_122557_971305_EAB28591 
X-CRM114-Status: UNSURE (   8.99  )
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

Add the compatible for the pin controller of the Rockchip RV1106 and
its RV1103 package variant.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v1)

 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 9b3cbeb54fed..81747bb53056 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -51,6 +51,7 @@ properties:
       - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
       - rockchip,rv1103b-pinctrl
+      - rockchip,rv1106-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
