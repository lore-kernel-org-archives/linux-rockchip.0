Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64C4FC27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 16:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcVWJ1B0A1WWI8aojmuF1UCIHdddkzukggFW31cA/O0=; b=ugOLOFdm5UzL70
	XxQwUt9qH3RQQVu9dngen+4CndR38iMrOWnkKJVv30dEHerMdM1JkSWRWWsvZpd8rgqnUW1O8idX0
	RE6qk5iyfCnGR3Nj1AkkMmOA6PuRWnEoQcaSvZotc51fSKkLB+1lhUyWvvMjGC+2/hCSBHbkpb5eL
	lvdMPThEcugKE2H9Kfw1DC3/CRKlfsAuBA/2ot0dza4HqWWTmdE6I/C6WoBQzsVEpenmPqrqzWRSM
	97kOyaOdKMjij/RU3qcSaBS6XKQI1Zw7UsmxE08PXSIbIt7/s05PROXFZyMtamJS94L39y3VVerWj
	aPy946p5G8ULvbwpGMfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbTk-0000000FnwS-1ibl;
	Tue, 18 Jun 2024 16:14:40 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbTg-0000000Fnte-22p8;
	Tue, 18 Jun 2024 16:14:38 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a6f1da33826so779343566b.0;
        Tue, 18 Jun 2024 09:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718727275; x=1719332075; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lXY2wNetGBX4+8SEarC8cQJ8+XvQEsopyU4osLmOcK0=;
        b=f+u9XuooV+TMmqSmS6eHynjOT2X6rHpoU3muwYJOeXnm3T73OhGp/ePswAPd0qzpsg
         c+kB19m7X9LB0Yw518/vJeEy5W38dXBeErkOs8M1yRBjw8ZWNBDQcMEFv5ZgqkEkmLb2
         eJ7Z6JOGhS4xDvZG8uLtOfSvZPn9YCN5WJRupc6k5F4smHsJzMPEHPPPl3DdwL8eX6xe
         o4WGpDS9TKvOoN/DAl2O7ydd8X/nX7kbbfAyaHSbVqiUTmyqL/DvmmhYdoB5/322VuxG
         uJpfDu/8xSGbE1DABNmdqANmMaMMXl/2DAm/4qGw1nEnyuOPAuUJH6ix6vufd3AjWEvv
         W7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718727275; x=1719332075;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lXY2wNetGBX4+8SEarC8cQJ8+XvQEsopyU4osLmOcK0=;
        b=PTIy6yhytP2Of6cxPl2HnxyGnoxnjG9WHDEuZoZH+pWYo97Olee4RoXuMoI+Hw2wKh
         5I/J71qZaCrDDTNLqTB0sitqKsT0xj0NYWGWZzSCtdbm4UWBRtqMNOwFe4a/G7V+Rp1D
         APk6Bs4mD+H+tcN63xa1Mf9kBs9GD6jr1p6bHnHG2mlxMOISYabALtSKt/5rPL5aM3xQ
         OBmlLvv6hstoaOxI0b9VcEQjDcK77Rvs/hzomtk46x0VjPuben7+yQTApjw2vFg1IvFv
         F+jCKqB5e35lOEvSs6kJ+YziiHaN09WZCvaj8oL9XREvCgiJJtQlkO24zxGx/P/h2X1h
         w2iw==
X-Forwarded-Encrypted: i=1; AJvYcCVAHjhZbhnKD39FebRO3jUSe29SJBBkAIQWshzVpVlzUgx3tcNdA0bfHRhGcy6Qr9Jmw6Fv+Th4ClUb3LWrmwn5sOsuHsezC74j3FdPzrdQ43XKIesrq7KT4CXY9lS8tC5I3JNHbNn7QLG2qJon6iyGo8K6ZuMB5f8=
X-Gm-Message-State: AOJu0YziEbX/DmxRs8ZXIQq/Pd/sK0dexE2i2+wEZL6hrW4Ns8wu1QBf
	LdBVlpWCet1cK8ZE/ErId7VY6djtvsro6Sbv5DKCzvlaxOA8RQ1i
X-Google-Smtp-Source: AGHT+IFB+t722ELPdoX0iI8u6bwyvFZWAx3Dyl72/Psm768hxsjFKwtHjQqf3M69ACUYk4beBIapeA==
X-Received: by 2002:a17:906:b088:b0:a6e:5801:ed43 with SMTP id a640c23a62f3a-a6f60d38249mr1001596066b.30.1718727274772;
        Tue, 18 Jun 2024 09:14:34 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f8a6e58bdsm207763166b.187.2024.06.18.09.14.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 09:14:34 -0700 (PDT)
Message-ID: <1a45f178-3ed4-49cc-9bb9-c1f9978356bb@gmail.com>
Date: Tue, 18 Jun 2024 18:14:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/3] dt-bindings: net: remove arc_emac.txt
To: heiko@sntech.de
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
Content-Language: en-US
In-Reply-To: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_091436_985917_5D081878 
X-CRM114-Status: GOOD (  12.97  )
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

The last real user nSIM_700 of the "snps,arc-emac" compatible string in
a driver was removed in 2019. The use of this string in the combined DT of
rk3066a/rk3188 as place holder has also been replaced, so
remove arc_emac.txt

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

[PATCH 8/8] ARC: nSIM_700: remove unused network options
https://lore.kernel.org/all/20191023124417.5770-9-Eugeniy.Paltsev@synopsys.com/
---
 .../devicetree/bindings/net/arc_emac.txt      | 46 -------------------
 1 file changed, 46 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/arc_emac.txt

diff --git a/Documentation/devicetree/bindings/net/arc_emac.txt b/Documentation/devicetree/bindings/net/arc_emac.txt
deleted file mode 100644
index c73a0e9c625e..000000000000
--- a/Documentation/devicetree/bindings/net/arc_emac.txt
+++ /dev/null
@@ -1,46 +0,0 @@
-* Synopsys ARC EMAC 10/100 Ethernet driver (EMAC)
-
-Required properties:
-- compatible: Should be "snps,arc-emac"
-- reg: Address and length of the register set for the device
-- interrupts: Should contain the EMAC interrupts
-- max-speed: see ethernet.txt file in the same directory.
-- phy: see ethernet.txt file in the same directory.
-
-Optional properties:
-- phy-reset-gpios : Should specify the gpio for phy reset
-- phy-reset-duration : Reset duration in milliseconds.  Should present
-  only if property "phy-reset-gpios" is available.  Missing the property
-  will have the duration be 1 millisecond.  Numbers greater than 1000 are
-  invalid and 1 millisecond will be used instead.
-
-Clock handling:
-The clock frequency is needed to calculate and set polling period of EMAC.
-It must be provided by one of:
-- clock-frequency: CPU frequency.
-- clocks: reference to the clock supplying the EMAC.
-
-Child nodes of the driver are the individual PHY devices connected to the
-MDIO bus. They must have a "reg" property given the PHY address on the MDIO bus.
-
-Examples:
-
-	ethernet@c0fc2000 {
-		compatible = "snps,arc-emac";
-		reg = <0xc0fc2000 0x3c>;
-		interrupts = <6>;
-		mac-address = [ 00 11 22 33 44 55 ];
-
-		clock-frequency = <80000000>;
-		/* or */
-		clocks = <&emac_clock>;
-
-		max-speed = <100>;
-		phy = <&phy0>;
-
-		#address-cells = <1>;
-		#size-cells = <0>;
-		phy0: ethernet-phy@0 {
-			reg = <1>;
-		};
-	};
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
