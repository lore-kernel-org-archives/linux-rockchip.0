Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BB60C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 18:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gf91J/0fbs4X5V4meZKenzhXNchMecqeQZFF1s93A2M=; b=4CesXNZqIek7Nn
	EgSc7Z3vEWU4BIMIhOLuHWcecU+MlRr9qdxNAjwDlCPUDzXX82T7aLeGup2oT3LSf5SUiv3lkIB8K
	k2pxtA/LnHzERt1CRGG8XnaF+tmCySn1bqXXRzTZ64DP46jkoPQ+E1ERHB4GMULzvKvvGor4chrF+
	2v1WyaekbpdKZMm/0GrocPZLt2rJfth+9barELtNadEPrIu5doKjgmyF6MQsyjvcntp1Jud3v7Ikl
	pZvXczScxW4MK4XgpChWBXcefbLAaOWzvvmj54lXme2fX524276r9Hff3+b54YIdkHDne9q1axGjG
	teq/xNqvPorxKKeL2dzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7L8i-0008hP-Km; Mon, 19 Dec 2022 18:45:28 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7JSD-00GOU3-MW; Mon, 19 Dec 2022 16:57:31 +0000
Received: by mail-ed1-x529.google.com with SMTP id c17so13722921edj.13;
        Mon, 19 Dec 2022 08:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PhS7akt6/5GjmmwqRvvKx92tJjukY5PHM/MpxFGF9Zc=;
        b=O6tqEZsEXSBDdaMX34qiTVIG/tCQZf3MHEbs5did8QH3VP+2Jlcupm0+WKd90mIeiy
         Bk65T3wxesG04szD7+xUhDEaB6cQnlihEjONTv6S5QnHc+ctVfPYu7I2hJhJQ/3V2beQ
         PWCqYW5ZJYFoc5QxT5/8l9lRQcgdTT8oi0X/OSCLH8jFhP8lZjSCD6pdopivuC0sSvaa
         hQND66rxBh6Pzr7nA8ECL5hW53QBPaP25K7LmWnw1l0zdwhP+6aQNHHBdM/aEEKWZ9kL
         xJzCfBCN4X7O2LWbYIEFPRaZb/NaaMkZtQSjQ+2EaAbkt6FRNmgI+JLc9E8yTVjV4Dye
         x2pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PhS7akt6/5GjmmwqRvvKx92tJjukY5PHM/MpxFGF9Zc=;
        b=1UDdQxuYHd1s7g8FEnvvsw9Dv75zeJqTEIw4dNgsVIwiaeWzOQKZLEEBzrI5RZnMMF
         6RG1oon459/xnM1t1h6/KySfgvQcULshCoJ80Ix2FxtKd62Njg7iql2qGwoe3F8b/JHw
         l1hQ7joHt+oY2m9jAFK9NpJGvoTLlD72fv0CmrKApi2xcSPbFnWz90MVFp/l8CjWWlAL
         kIjibc94SZm92hbeeGR7+9anqqQ7hFbNsxhWaP2hcOgPxy94XNi5MVRCtQeSu115aRUN
         FT1HXdYC4/7hCvkBFhsrFa5xWufQprB57yw3jIrYcByMa43cTNu5YthUlZFtFA1xndYU
         P1Lw==
X-Gm-Message-State: ANoB5pk6wh5RNeNX9VvFiUb0nvLkWa432Gm5VmW+EuATFP5NC0t6xuFq
	R5xMryfkCIkyHMuyAzaUvXQ=
X-Google-Smtp-Source: AA0mqf5amfEQflBYCgdGYyKTURYwp0xR5McAfORx30XNSIPPpUGv8Jy8egORwKoegqp/8goadXoj7g==
X-Received: by 2002:a05:6402:289c:b0:461:bf47:ba43 with SMTP id eg28-20020a056402289c00b00461bf47ba43mr50547191edb.28.1671469046095;
        Mon, 19 Dec 2022 08:57:26 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id b23-20020a056402139700b0046c4553010fsm4633925edv.1.2022.12.19.08.57.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 08:57:25 -0800 (PST)
Message-ID: <cde111a8-2a0f-74bb-9a0a-653091fd3788@gmail.com>
Date: Mon, 19 Dec 2022 17:57:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 5/5] arm64: dts: rockchip: px30: add lvds_out node
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch,
 vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
Content-Language: en-US
In-Reply-To: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_085729_889777_E9552A34 
X-CRM114-Status: UNSURE (   8.75  )
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

With the conversion of rockchip,lvds.yaml a port@1 node
is required, so add a node with label lvds_out.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index bfa358042..eb414d0f8 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -468,6 +468,10 @@
 						remote-endpoint = <&vopl_out_lvds>;
 					};
 				};
+
+				lvds_out: port@1 {
+					reg = <1>;
+				};
 			};
 		};
 	};
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
