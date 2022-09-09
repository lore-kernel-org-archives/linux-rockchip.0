Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0941AC6FA90
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 22:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBcHCh/3g4FLvfXqzfFYapLa5Bj3TUuwB2HcH6ik7jE=; b=Fj6ctBS9uiXcyj
	OEx9R66E5RGNVnj1QAJPIcGEF9E1E+y18tQi+7jXMkI2To6xcJVZ3tvP9XDi2z3hDM63KsTirgJ2e
	07vMqopAZV//WSmj40+EaS3CBgKGFZ6u5ZlqnXraWfYdnLHxa/iCcOgk0KqC6BH34UoZXK6fMyzIh
	rWkEdG5CPDdcKDQKgR1VUnUBblipshDn5WS9HFo4eEIFOxE8E98cYKaX+jXkXXPY9xJf8S1BYdbKX
	NJtVuXm55f6RNAacLB8QEGq8LVU1Nfa2i9oVKoP+6E/SuDK+K7HL+kdSdIinpLlPzsoed/CykeV8D
	oxmKRkwh6WZWhoojhLtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWm4Z-003HwS-K3; Fri, 09 Sep 2022 22:02:03 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWm45-003HYq-3H; Fri, 09 Sep 2022 22:01:34 +0000
Received: by mail-ed1-x531.google.com with SMTP id f20so32853edf.6;
        Fri, 09 Sep 2022 15:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date;
        bh=NmRnkF/b4urbMwNGs+O/IXW2teRNRXDeqTuXV1ih1+E=;
        b=T913G/OwVTc6zJHTucTLdGC3/1L6OaWQQgTlxwoLmdOWRj+HhCfMwgTVNdXXMjeQ99
         3bbHk2ooY+VF8lYwPmn/40Nnpz66YekmDkprhbv9+s81ol8lziIHWgVCUPMuRw32KVDF
         EdNcdgFMuOLVne5hmxU10uHbTtDjnxZ1mQ270druo+8KBMZRGvQ8T3f9Yz+EU/deG8uP
         ZJ1j+UZg2VsDMDP1DreWF0aCxBSefgK9lpeYIgJePdnv03fufzR5bHG8kMW0hM+W6OBh
         6+hu+kI1jlITROO5mwRYXtWc38GxgtXNmK7jggQbBThXkOK9mqtEgB6pEzByudNtTuzc
         eBeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=NmRnkF/b4urbMwNGs+O/IXW2teRNRXDeqTuXV1ih1+E=;
        b=ll4BLTjJm6S+xMQzsaingzr2DCfVotA5hL7muGDatdZ/DyivUIEEWhznjewzyOUlR4
         BhIDI0agRg99wJJhJof1i+uKOFxLt5j/SfQPJ/3nbmy0WTj2beqOYsUq0UeOxAswLsDV
         ywAIGm3gUveQX+NJII6dOBgWnXUAoMYHkIxtjnRNwTrFOkGVv0iPFNeWDLm3Jyr3oEcg
         BialWcmTM5509simRQsYmWv3ZoiBGd3Cv9+BlT8b+CjxbhpEL3pV0xAOs8F2RVGnhp9Q
         Ju+45WqP+h5wBFyVGXsWPlVz/JIjsEJIIbENuxkHx7L7WvvJz9mvkzXnyIssUP56+l1x
         yIDQ==
X-Gm-Message-State: ACgBeo1vnEdEcwgQut4HscmMZwztiHanqgIKDCpoHVF162objRd8SxWF
	KZlfHLv0ndGHAbHOJ3sK1Zg=
X-Google-Smtp-Source: AA6agR74AD/MIEsTUlaY2NmRHF+g7QaChAq+nYds+c0GE5UUrhGZiF/SHGbNr3Ib4ayILOCg5oaFxQ==
X-Received: by 2002:a05:6402:5409:b0:44f:1e05:1e8 with SMTP id ev9-20020a056402540900b0044f1e0501e8mr11804087edb.373.1662760890827;
        Fri, 09 Sep 2022 15:01:30 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id f10-20020a170906048a00b0073d83f80b05sm804688eja.94.2022.09.09.15.01.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 15:01:30 -0700 (PDT)
Message-ID: <4f283231-2ed4-202b-0c23-157bce0841ee@gmail.com>
Date: Sat, 10 Sep 2022 00:01:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 01/11] dt-bindings: serial: rockchip: add
 rockchip,rk3128-uart
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, ulf.hansson@linaro.org,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, kishon@ti.com,
 vkoul@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 gregkh@linuxfoundation.org, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net, zhangqing@rock-chips.com, jamie@jamieiles.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220909212543.17428-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220909212543.17428-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_150133_196696_620F7198 
X-CRM114-Status: UNSURE (   7.32  )
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

Add rockchip,rk3128-uart compatible string.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index dc74643ae..b9c2287c5 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -26,6 +26,7 @@ properties:
               - rockchip,rk1808-uart
               - rockchip,rk3036-uart
               - rockchip,rk3066-uart
+              - rockchip,rk3128-uart
               - rockchip,rk3188-uart
               - rockchip,rk3288-uart
               - rockchip,rk3308-uart
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
