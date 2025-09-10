Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D46E2CA0FED
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 20:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uburNz3s8pJQETruzK4NKj7OpFCLZE9fvraQK7MHzoA=; b=44osfXZQM8qc8p
	ywNEYZjPp1BPQMde6dT1epadKtVpM/x2I+PYulSuumEMxCe/wh1HHVgofdLGlzsv0Plmq1YK5HSEJ
	GE4G283zRwrPEv8j50o1CPb1PueysP2Hvuje6blBecE2NODLV5nJihBd1cL7gsRy5/gw9m91mHevl
	q8aE2om3b4WHRP+Gq4Kw/fbDi4uzPEFk8T69UM7W1tNq1/RjaYlzZyrPBr4mdzpnECboEZX53d9Sn
	Fvi6SdxKneVypLk06HQefEnez9KejeL5pUlEHTGlvJ48bCLr4FFXPJvQFqno40aiV07m80kkk7uM+
	Exya5us0/H2IKSd/iDMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwRPj-0000000GYDa-1WaU;
	Wed, 10 Sep 2025 20:27:35 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwRPh-0000000GYAn-1x11
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 20:27:34 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-6229f5ed47fso7132710a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 13:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757536051; x=1758140851; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j5pTTBsCZxE8ml7jMSs82pqh2azxoiA73/8pBU1HAuE=;
        b=AXRPTnDd00vmRh0fPtncOQmTpsUSMgjaGQQQBWvp9f5089UuLMxPs4XvSLZUbz9eL6
         0T357oUDjk+G6p616PHo/NFUrwciVm6tA/yzJfLoacMWavmvXD5GptoBpT4j7FO8xRFL
         04q5z4C4ULjdSZ2dcZHq+9XwIOcKkv4jy64Shz+KdW70WiL36GaTz878gR5yKhOji6Q9
         ISv12HZbXYybXThRnBmfX84DahNyJwXZo+shnva25KWnk+8SWfFG/3kfOWQdRofyzU6o
         EXHltEZdUj7ZfHNJ8N38sIXuTTdD9O7l0fLMPJf4VmyBV6m0kh+h7eGDWkFxoenIVqbY
         BZAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757536051; x=1758140851;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j5pTTBsCZxE8ml7jMSs82pqh2azxoiA73/8pBU1HAuE=;
        b=e7KD2Phqh/R3t6AqaN4DJAO07E5dR073iP08RjZW4NoNUxAYjARo9zRu7ihNWOXsAw
         BoLgFDuVG2VrRFajbUtOwLi6U3yh5HUWoOEW8byfM1nRX70ddpLCaoa0rRjrr8RwHHeM
         L3oTWFcpjAJJ45KYsLMOhlg9TqpucqtFDW4XBGj/ExY7BI9w9X8NgryKJ/UkLkHh/7eS
         N51iI2xcyDniwCrmIdpbd8Jy2RVvkV1/HUOTdHb12PXhnxsE9rek8XWamPp8IOYrML2W
         dzpfNIVPziMOH5g4b9eaPbAKt3eE5B8ytJ50nIqOCQacaUAPNTQmXKvtgEs7LL7kRK8P
         H+AA==
X-Gm-Message-State: AOJu0Yw6acS4p7kA38wLPWFXXJ4dFx3pjQ0Y4jJe7fEu8ItwHv9vh35A
	7Dzxa+LEMwXw3j+Jv1LEIWkhwfEgGlGs2dJu1+A998fkdWzVCfh92gdR3yXtVsPF
X-Gm-Gg: ASbGnctfJhJ6ws+LQdnPR0akv94WHAadTcuw1TsdUCy2JLIJmGF+/pJUWozvFt5wqK8
	AVLPsc8GOLlGgItixJBK0ngwbqVLf2vwPRNbwG55A91xlaycF9gZI85F7BKQ9cearBZ4xibUSGP
	aSlOmH2ih9HNzP1rmdQGH3sfxHJT1GcMWEVTh+rsc7vI1zF0isovHH0LziEFpGP+rLmj6srKaSe
	RqdzQkTkeXn2x8qSEdrPdvdO9G4vpgA2XV7MX/s6DzM6l/3s148O6NdseqzQZPwhl+c64FK1G1C
	ZdxEB1RAiMmAVfY9KP/q7KTCjen3Z8OXaP/t2sA9pD8LF4maBLESYBdiybGME9gkVcH1AgkYRpE
	0pg6Z6S9LtKcB+cfPpK4CMe9Yw62GDFu2R4lZiAwLx9UT62I=
X-Google-Smtp-Source: AGHT+IF20KBIsmublB2iYf3sUhwwxsZtUloyLDy2q77NS8F4JgWICTL8lv7Eoo/TtDzy0dFx4jQYzA==
X-Received: by 2002:a17:906:48d6:b0:b07:874e:b988 with SMTP id a640c23a62f3a-b07874eec03mr313323866b.31.1757536051059;
        Wed, 10 Sep 2025 13:27:31 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07834124c0sm227715466b.102.2025.09.10.13.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 13:27:30 -0700 (PDT)
From: andreili <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: andreili <andreil499@gmail.com>
Subject: [PATCH 2/5] RK3566 BTT Pi2 - Fix GMAC default delays.
Date: Wed, 10 Sep 2025 22:26:58 +0200
Message-ID: <20250910202704.2191182-2-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250910202704.2191182-1-andreil499@gmail.com>
References: <20250910202704.2191182-1-andreil499@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_132733_510527_B4B95819 
X-CRM114-Status: UNSURE (   5.77  )
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

Signed-off-by: andreili <andreil499@gmail.com>

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index fdf7d00edf4d..d31b9bd54162 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -265,6 +265,8 @@ &gmac1m0_rx_bus2
 			&gmac1m0_rgmii_clk
 			&gmac1m0_clkinout
 			&gmac1m0_rgmii_bus>;
+	tx_delay = <0x19>;
+	rx_delay = <0x05>;
 	status = "okay";
 };
 
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
