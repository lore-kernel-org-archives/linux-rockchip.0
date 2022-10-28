Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80D98ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 14:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TM6kUIYuQN+1GNgHmFqUZoYk7bi7qpCnTfNbkrrANN8=; b=WD9tiE1ceGr04f
	gsUd0x4Qz9ZA1lMm3BDEyKAWR+60k6j/xu5Nhqgke3b1/8PCOE1Sbf0vmapiE/FRBhVLAdKCLzrNV
	rvA7PeFUQCuVLYMkSlLM95cqQezUGDMOeKwGERiRwjAICxX3LzKqUkeL3bL6DBiN55TofiMfvtyh6
	N+doIa2/ysEUKdRvUp2P1ZmJ/X2RHYAVEbvlhuVdXtYmOXcuPE510Ewc/rjxfdEPN5hzS+A8kzET7
	gNhGYlITDmwhQhc83ZFoEiODqILcfwf9MCO3mOhD7ga54x4iV2bHrFaXEsh14fS+tyUJP+EGSLBOy
	iMOkSn4rfy5V4mt9BxWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQYD-000AvI-Jj; Fri, 28 Oct 2022 14:41:37 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQXs-000ATm-F7; Fri, 28 Oct 2022 14:41:17 +0000
Received: by mail-ej1-x62e.google.com with SMTP id y14so13410319ejd.9;
        Fri, 28 Oct 2022 07:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SVxJ12c1A+xM0aCvd/9/hnx+Wg8Tkv2AsxQ0FKrV7Fo=;
        b=e8PuIJKYvVwZG8pMIVdsuACZ9hgCDCdCOOm6qZ9QEXRFloflT70eDzvCkEx02u8Eda
         A9wmqY1bfVxFQ7oZGfaGC/LFp3NhBBLwH91Llp1msKGVILazbrSIe6cz1PnC2rbhAWuG
         Lap2dQLywubkbNeFVdmBrX4fKMuAJfbKnLCuICMcD8nqoeoeEBFL6zO7Juarwj1CcA4A
         vaCof7MQlpnqykdvT6ZcdfNYA4jnC9IAuW5VPOKgSFKZzBvnU3qQta5s3ZkcRxzvG5H4
         5QCPzg0derVXMseJUguLo1RS7bwdblG31/bqP9a92i8FRKom98aLXGBHzvsYcTDY88Cm
         URYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SVxJ12c1A+xM0aCvd/9/hnx+Wg8Tkv2AsxQ0FKrV7Fo=;
        b=vK7fdquI5ZCj1SADwi7jS8+lvjbDCRUFyR+lqquQsr/lpHeCW82K5VXZYsHg8ByxyF
         /gtQIM7H2JbZeQcoBe7jcYZRLttU9EiUkt0eZydyLrUJuzqpR9/aLNAZ+L22W3QxlejP
         y8vsBkKR0nCBVBXly+54A4YBOHoyneuRRUSwuMGqyFEN0CFytTE+yq5GK8yaufE+xphi
         v4utbZq50IB51zG+oGrZDPBLps5dceMWvVOhFdHDVrC6Ho95kUQ47wZeZ/+aQdjupztl
         MGEvbSC1hDyV2s/qF5SRkfVqEfVJGAfOeYA4gggtcYIe5MIvzbq7tf5LWTtA49jjTCgU
         wESw==
X-Gm-Message-State: ACrzQf3dOtHcvhGOdca4ShHegVn7eej6ZiacU2Zhr9yY5XfeNaWBN2w4
	RJJvnuGu5idCgOrW8W1NisY=
X-Google-Smtp-Source: AMsMyM7HXQ72bbrXuPMgRLSwI+e9C5ONtGcWO383f1AvM3xeoYFRDCq0hKSnjGHViuvp1OXIqoWYtw==
X-Received: by 2002:a17:906:730f:b0:791:9b75:2ca1 with SMTP id di15-20020a170906730f00b007919b752ca1mr45292306ejc.140.1666968074370;
        Fri, 28 Oct 2022 07:41:14 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id my7-20020a1709065a4700b007417041fb2bsm2237114ejc.116.2022.10.28.07.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 07:41:14 -0700 (PDT)
Message-ID: <dca18633-54d4-1264-725c-213d82fdf1c5@gmail.com>
Date: Fri, 28 Oct 2022 16:41:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 1/4] dt-bindings: arm: rockchip: Add Rockchip RK3128
 Evaluation board
To: kever.yang@rock-chips.com, heiko@sntech.de
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com,
 hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <e83964fe-ad87-0905-4586-e235757c6b2b@gmail.com>
Content-Language: en-US
In-Reply-To: <e83964fe-ad87-0905-4586-e235757c6b2b@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_074116_541805_C957F789 
X-CRM114-Status: UNSURE (   8.00  )
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

Add Rockchip RK3128 Evaluation board.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 72bf2fbfe..e81d9d1ef 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -662,6 +662,11 @@ properties:
           - const: rockchip,rk3036-evb
           - const: rockchip,rk3036

+      - description: Rockchip RK3128 Evaluation board
+        items:
+          - const: rockchip,rk3128-evb
+          - const: rockchip,rk3128
+
       - description: Rockchip RK3228 Evaluation board
         items:
           - const: rockchip,rk3228-evb
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
