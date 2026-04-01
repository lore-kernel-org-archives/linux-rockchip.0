Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48C2E10F9314
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 01:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkZpDJjSuKENtdvyFxoEWNvi+fzCPvVp/p0BM4zrZgI=; b=X6MRBNyadueKie
	7GDIttiZ1h10pek7caw7BkFPEXwqSCp0d5dkAzi8bJqkHhuljIkW55pJeUEVS5kWSa4Eje1MqK8g4
	cwYUBylFbVi7xZGV/ODx1lsfae8oU5z0Q/Aor95KDAW4GWwMWeh+Yj9we8s1JcQexTnX6M9LjXFbR
	zR42UdiS5m4LumUdVGsjTKndvoNzt2/6hlkbajSw09l4hdePX8AviaV48xX+yed6qGYnBzPSMABzr
	WqtdQuOlVxX9oAu4HTc9RxGq11NKhJ2lmtq/H2an0G86pKRh25ML0Cw0u2QlXaZU5tS+WZ0RaM+ow
	t3XV/ql9Eg2uvRo5m0XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7k3C-0000000DlUq-2asz;
	Wed, 01 Apr 2026 01:07:18 +0000
Received: from mail-qt1-x863.google.com ([2607:f8b0:4864:20::863])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7k38-0000000DlRY-2OsU
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Apr 2026 01:07:15 +0000
Received: by mail-qt1-x863.google.com with SMTP id d75a77b69052e-50bc115f206so36983031cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 18:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1775005633; x=1775610433; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=WQVOuyL/vRLdxUtPH+yr42OCv6rKXKG4HXJOzcEqfiPaNAvywEfiKH/8N52chMrZFF
         RZveXotG12erbL1xA03GKZ4R0hSCUfIctI9z8jCoUvkTdf7iQjPVKDFF9ViKerk1gihf
         U33Enl9XCzXqVc2pGY72nRX32Ir7jgL8oSTdXYaX1k9W/Eb6sE49VsPROF81DnL/AlDC
         7hdM1Ra7bw32O5Qi5qQaWv62eChEK/GYRIyKPXgwHpm2OIjQApI+CSwZyz+raN+Ez3IG
         UE+/T1tlE7wlmhsiUmhvt1xeDXhnlLsePAlZ8VUuroAb8EAX384nxLZJB2E+vWZcuhA0
         viMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775005633; x=1775610433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=gflYwD8QSr/BV16lsXhMWbb3MLw5N3MmHW1JtVFKgk0C4dZXEPqL0Z3Smvj3/KSPlU
         5LXhtHooC/843WCXHBqWdCyLXhfCk9hAFIV1YRpEuzA1nSfAAKBgBQLoVJXYv354rHJs
         3D9YHe3dwLx91eP9odoNunc38InHcdzL/8tcmi3LKyZ6+Hk2XncaeMbzTx9C8aGPFbPe
         VGy5dgxsjbYaz2IPHpgJvJEWqNqCfZ9RZuDkRqbQgyQNsjCmm9PjTmmMt1JJDh7SrU5b
         ncTT8Qxzp7ghVyaT8SbIFGM08W/GSfzi+U0tchjXlWBBaqaTaBMLSfDeSGjkzOm6dDYo
         dLSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIUwdCI/LFzKjmck39JaRYiVNATxvsGnNOuakj0BUwnFPO85eLa1SCk6Azpajans5FX1aVaAXJ6wOT/bmf0g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9HGPDi0aabBQ3uyXQzgkYhEzG0o4ee/0ZoGpTHRH7cXyVGlj+
	pQaYzKnQRFauSOZq9xzTq2ETIgu95WCLPB4yocP5D3wkDLaNmjpfEUtbDaEcHVgws/Raqslt6C0
	SqLFDa/mHADnHghq79FsNC7IGPbLqbUiWu42C
X-Gm-Gg: ATEYQzxytsebC7DOO89WJmJahThfDtZDAfC7mZ5lnRxmZxKDPr5FUUiJPenul7SwpKc
	XY6Gn1r9r9+MuEEo5leIZeKKVwA7AUMIIL0mGsFOoGHr2O3v4QbBR5HY6k/aZmFJan1RQCL6XHg
	mjy/wThD05uV79veZwITlxErIHkBDPsNaD3/9/rzTJ6DdKVcgyK8txv8DOAtX9Nk9FrxC8FuAVB
	i28Xys2zD8OCv/2P47Pq6ngGeOLkYrT+RjAfPDT1sH00K2wgwUdpfZMDCANru8iXIl6DPEAgGgZ
	MqOGMOseOk7F6xVg9l11uSdZykipl782OlN7XUglzoS+0lJ6Ds/UkdkOdz2va+le4+K8KzzWVAZ
	yNRYEkpNuP3MAlG7XNsRg6e2jVFbYEvhvr/jhRCbqnRe/
X-Received: by 2002:a05:622a:10c:b0:509:3f5d:4fb4 with SMTP id d75a77b69052e-50d3bc15895mr25873091cf.20.1775005633089;
        Tue, 31 Mar 2026 18:07:13 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-89ecd72ecd5sm14105766d6.15.2026.03.31.18.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 18:07:13 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Tue, 31 Mar 2026 20:07:05 -0500
Message-ID: <20260401010707.2584962-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260401010707.2584962-1-dennis@ausil.us>
References: <20260401010707.2584962-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_180714_617324_059D4ED0 
X-CRM114-Status: UNSURE (   8.03  )
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

From: Dennis Gilmore <dennis@ausil.us>

Add compatible string for the Orange Pi 5 Pro.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..3c6b83a84463 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1320,6 +1320,7 @@ properties:
         items:
           - enum:
               - xunlong,orangepi-5
+              - xunlong,orangepi-5-pro
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
