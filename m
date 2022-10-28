Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B0A6C38A02
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 14:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFcyWUgxusgXgHplVXQtM72YVhSC920EN0dDEVdIc+c=; b=aIBRcdzzGVj2XL
	wEDZucBK1uwrvqCwzFkMyOEgqi6dU8bBfunYUA9zW6aC8dF9v6PfvhFoCFdMhdljy7ckLxBn/lrhY
	jbuazcIXiTniJecWtFtdgm0NLEleN7emjr0mPcKjnDcJgV2l/KX2P59f6mSBEwF8m505N3/0MJJjx
	UOJkZmo5hsA8j/6Hfx4PEL7TNv2lrGIHDXQxSmCan/v1PWJbnNtrA2sNpPv6u0WRpDkFB08HLY4DX
	jhRix3mL4GcS1eTDDSN6/GniVwbwSyagPR0M9mDS59E0fea25TXitfuCDBuBUadpDNum0WWYGYzWp
	WvYh52AqC7K4MAGjLtnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQYn-000BMB-In; Fri, 28 Oct 2022 14:42:13 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQYK-000B1Y-LA; Fri, 28 Oct 2022 14:41:45 +0000
Received: by mail-lf1-x129.google.com with SMTP id g7so8650389lfv.5;
        Fri, 28 Oct 2022 07:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=neowCr6oVr3vuPg1WjdiJZukZ1wtscf+gZ4yxqYQOrI=;
        b=SHZTjrmp9L29dDhO6NAh0ZPr0eez3l/Oxd5GjIFS18GwLCGLpjYvOk0miK/lOxzIZQ
         7Bb0siqxcEdzp0W3oRSh8Io0s0AMwR20GENJHCne0egP6cqfBfYMFWnTNwuNsknN2aC+
         j0Q4cFeH8clH73Ej4qqWRQJYb+L96vPXHJEipua3ZVlsj3PfPZmCBQ/WXhXyZ3m9xczM
         DnRwgdP+imsiKs/e+bW4TZfq6EaTivmNI7Dk5OcQ+gn8+2ezHmFAKUmX2SEF2zIADMr2
         wdF6cm+Q6pp0Q4MH8TVgsUtZkhsjPVFNvbCg3GNhUqtB1ST7RcDl8ErxvH0GcqHn14OM
         9uuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=neowCr6oVr3vuPg1WjdiJZukZ1wtscf+gZ4yxqYQOrI=;
        b=hDn3K8gXQ/AzJeBi6b+rAaGMO6omz1fXf0e0Kp93q0lvYj8sa3C/MbuhZ1Jq6VTHKi
         KdOuCucN8WDsqmodmWw0JtcNLMh/h345TX+1rFwMniFK+tmE+xAMlq66JwsrW4oOMHob
         tsbe1VTYoOyAQgscl0+YOju7DGOVVxeRkRNXSQC4kiv0U7soxM0SPj5+jyZxtsrojk8N
         2qxPLuUNQAWaVrHeTcEYvDgjSkGx41yzfR2srQ0eX2deqmTppV0QwHJHsSlopaQQp0ty
         X5uB++LRjXeZcApmbwEvH3vnh4I6jIw47WT3IzoxE5GuzeSJM1oincVikdrUZD+3GBJl
         +lQQ==
X-Gm-Message-State: ACrzQf0F42prkNOfZZIyxKphsU8tPmftnvb13BD1cr91pcr0w5/X0agR
	7dS95AoIjQQy4Bdu6HzZVe5o0/ksotE=
X-Google-Smtp-Source: AMsMyM5OBcO+LDLOQHxISLu95CbLOxbNR+n9EWCWrV/yBJI/GkvE+GKGE/5SNpSkKQ4JuXH8kKV5yw==
X-Received: by 2002:a17:907:8a24:b0:78d:cd60:1022 with SMTP id sc36-20020a1709078a2400b0078dcd601022mr46727644ejc.384.1666968092017;
        Fri, 28 Oct 2022 07:41:32 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id qh3-20020a170906eca300b0078dd4c89781sm2239439ejb.35.2022.10.28.07.41.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 07:41:31 -0700 (PDT)
Message-ID: <0e57f38f-bace-8556-7258-aa0b3c0ac103@gmail.com>
Date: Fri, 28 Oct 2022 16:41:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 2/4] dt-bindings: timer: rockchip: add
 rockchip,rk3128-timer
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
X-CRM114-CacheID: sfid-20221028_074144_722161_5ED2C87B 
X-CRM114-Status: UNSURE (   7.97  )
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

Add rockchip,rk3128-timer compatible string.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index dc3bc1e62..b61ed1a43 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -18,6 +18,7 @@ properties:
           - enum:
               - rockchip,rv1108-timer
               - rockchip,rk3036-timer
+              - rockchip,rk3128-timer
               - rockchip,rk3188-timer
               - rockchip,rk3228-timer
               - rockchip,rk3229-timer
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
