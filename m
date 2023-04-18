Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EBD9C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 16:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gz26H+UqiycidHd/VNLE1O+CN/cQiG6DD4P/cYn7GFg=; b=q73SMlZ6RT2z1C
	WEn/V+XwIEVkaBv/DhXvKSHak2asv8PMbeLfCfZUW79mWramsTzhlDGe8HS3ruyJKikqKdB/flmAA
	fPxxBrQqBAesmvlWznb4ZzhX6BuZb82gnrSVBbQMR+aSNkW4BnNEsBiUl9eP+KGEaP4SNKNTo8HHH
	eGHAAw5PWx06tEQ8ljTuehJMRWmmEOqhEqn9MI/QDOpDFs/ag5zV012iimpspj8Q/Y3f3kTLHvont
	dfyFKm4lRCjZlG5UElrouhaiDM/XsQwU2UpHxO16wsW5PSINS0+9M2tsv5VFf7hvQv7hHYazHdJCT
	Rk/sM+PIk/1DXzdSCLZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pooCL-002mGS-0j;
	Tue, 18 Apr 2023 16:28:53 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pooCH-002mCd-2v
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Apr 2023 16:28:52 +0000
Received: by mail-ej1-x62c.google.com with SMTP id vc20so19778141ejc.10
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Apr 2023 09:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681835324; x=1684427324;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O1izybgkMQUv0KTZ7YUu7PpN/DThKjHSmFy8njwpB1c=;
        b=X8Ey7dsXee/yR992EOF1qafczskzajgK8aFDKxqtfkXTxWYc8uaP/XuMS9H0A3G5tv
         3kTEz9+1Z6LOeYKHEZhVU1LveHkTxwzVtlzH15y7MgvrqXji6nqomuIJakAV//iNHh+u
         9GFj8faUSKqt5Crr2sa9eBDogCBMymWnJEi2oC42aa++dD/WAuvPMoxvaFwa657oyY+g
         zSoVXCNVQtAvORQcYpD3yCfpu4ZgxGjqZ9fYu5wfticR61IdbB+OkbkxBlGW/3lEEVjN
         VFE4eGNHw5Hb180xJ8ZK0gHR0dK2+pWrkahxOAY6q4+dvPfwYawXBIwt9oSMTQC45EmL
         r+hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681835324; x=1684427324;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O1izybgkMQUv0KTZ7YUu7PpN/DThKjHSmFy8njwpB1c=;
        b=QMu/Wyeh9F+C/xCLZaAOVrQuvK5M6eaUcKnsuImEykjN/SBfaZij8nELtsBtFCH1wk
         SJFB+FvpTwS1HYgnLbmVnT2SUwIxTiJXpvWwG4YycoPsVjgPdhquUMcla+tZQ1qNt5oC
         zSMNbEFns+C+oh+xZYgfTVfNaLzCrNIYUplRgQgMdHyTVINf96AOBvdImS2TNADLPQCT
         eRR5pw6fQGAeJtER1hPp/TXtCEpUaUsYW8Tfti85WVg8yKEnB3xVy16SiHJQ/tORrOFn
         2tSAkEIoDfrT2dOKkyXvC6ksNCRk2GMgmcEezs9zsskuS9rbkk74WWzPaxWhU2uH2G+F
         nXig==
X-Gm-Message-State: AAQBX9eT9E9BO6vfzfRhh1W8lVjtTw7xBo1rmA9QVGuiiBzL+fNRo+74
	eG6lMRgTZm1FCftXbmEN4HXtqQ==
X-Google-Smtp-Source: AKy350ZT/VNF6S77XnDwAlGAQQrnfDmKzogv1WdK+lyOcAFAAwcnhCm6pUEJv1P0LOWRQ4MDvnlNFA==
X-Received: by 2002:a17:906:dc8c:b0:94f:2927:1f0d with SMTP id cs12-20020a170906dc8c00b0094f29271f0dmr10575212ejc.53.1681835324273;
        Tue, 18 Apr 2023 09:28:44 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a276:7d35:5226:1c77? ([2a02:810d:15c0:828:a276:7d35:5226:1c77])
        by smtp.gmail.com with ESMTPSA id wt10-20020a170906ee8a00b0094f225c0cd3sm5160756ejb.86.2023.04.18.09.28.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 09:28:43 -0700 (PDT)
Message-ID: <98c66dd5-2621-b194-d49c-b03047f52cc1@linaro.org>
Date: Tue, 18 Apr 2023 18:28:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 2/3] dt-bindings: timer: rockchip: Add rk3588
 compatible
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20230418120624.284551-1-cristian.ciocaltea@collabora.com>
 <20230418120624.284551-3-cristian.ciocaltea@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230418120624.284551-3-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_092849_966463_456EA8D6 
X-CRM114-Status: UNSURE (   8.16  )
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

On 18/04/2023 14:06, Cristian Ciocaltea wrote:
> Add compatible string for Rockchip RK3588 timer.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

(Wait 24h before sending new version for fix in 1st patch)

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
