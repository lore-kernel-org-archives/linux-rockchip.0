Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6598C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 11:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUXGtNfL5h6ruwndkKzbSK45V3R2Us1xHWrIg8/ct0I=; b=Wj3wqtw7ha9Gns
	KaTvj1nILivF2tfVgwgGunajeyblkJwddMDBfWM1/8Trx9qPbVJlipxQSis//zsgqLOWyEFLx/8tD
	qr5StuWlv4e1/Hu1jHoLDn2mQjaQED/rrS7DN3lsFFYFHrhhLaDXBwqBGcGax9Tee+QECEZWmp/AX
	dj8Fi5GB9BLupY7tlD4bCYkgNT9RN9cVgaiZhNfB5Qsgqx+5IzM/G6aDzcYCOUU+418DSw20UX/hb
	28dW0r9w0Arw71gpemE9Zkj0vs1plpHMMBqF2gBYyylAQU/RMws7pJBQjo5jL9YHUAA5nK1nvD1v4
	ja6DXP5u3zpWbGU9zmpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niDfE-004E2n-Q1; Sat, 23 Apr 2022 11:10:56 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niDf3-004DzJ-3X
 for linux-rockchip@lists.infradead.org; Sat, 23 Apr 2022 11:10:46 +0000
Received: by mail-ej1-x62f.google.com with SMTP id y3so510689ejo.12
 for <linux-rockchip@lists.infradead.org>; Sat, 23 Apr 2022 04:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=YOA1DyguzoVjmBi7XCeE8zovNraVkKZ3s4vArozjUoE=;
 b=uIzGnS/huGv+QjwaGUzL9SbzKv72wyULmUBtKBPSqYGoTICDxBZKYEInQtMAIIM8n9
 FqjNjbc3uR2AJWOqscy8acx38wPlm5bMvVAJlPW0KtwlmAGJH02y4nmXdXPRCaqlJDGC
 J2DatpZ36PNJR8h7KRRIPCuaGbsjF0OIxZ5QFx8BcUbmVDugQRg9Duo9HSP+UEgJznC5
 M94tGjOPF4+zX6NNNbNfkrK1xbwOPSzJhYEAx2Cl84qhu48rf27fQlbFTxvChiLB97KM
 Ubc1raX5zuWd+7O/0hFBNZ/ylifHwVqDLfo6i0cPT655WpQDkns1be3PI7e46DnLazPb
 hk2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=YOA1DyguzoVjmBi7XCeE8zovNraVkKZ3s4vArozjUoE=;
 b=TEDivMVgnf79oG0nqwTS0WXaGjiyN/9eyTDoQg2tgDevJjSA9HuRQqHv8L8gVvPrUU
 1sZAZN0J6+00jTIrrSDCEB1JVugaJTRVm9y+JKWhIuCwX+HKI3D0oGfAc8je/PYUDk6z
 9U4WyoeTbe5TEd/qh9Zw1kUYuGQJGxuQHqhMQ//XroTQmzBkSs2hL9kh8uNKaiqCSc8m
 2EXKIWH99A7gIOAlivJGQmXpLpJS0CyIvaHWmbtFLahhLS63Bz3DaDHwjSPTSrGbjghF
 RhJ+rcRUhmR+s1OxNzWM+1zyWQNqC0EkS4WFkT+9kK8Nc+jhHm4PORt0sx3Zt1Hy3WtW
 wfkg==
X-Gm-Message-State: AOAM533ToDqLmb9NBhUDGhIa6EZ9daDhTaOARo5m/KtiIzOi4pSmTv5V
 SnE5RzqK5LjeOAG/vhlnL+PxAA==
X-Google-Smtp-Source: ABdhPJxhtL97HOhbKuFx3GU4SYR07afL0RgN1lqtAdGzxLeDjbXG68ptL7Ip57i9TdZTa4ssiU3SVg==
X-Received: by 2002:a17:906:7f02:b0:6cf:86d8:c31c with SMTP id
 d2-20020a1709067f0200b006cf86d8c31cmr8235764ejr.518.1650712243005; 
 Sat, 23 Apr 2022 04:10:43 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 c2-20020a170906170200b006efe7be5f10sm1586405eje.185.2022.04.23.04.10.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 04:10:42 -0700 (PDT)
Message-ID: <ff87d5cb-b0d4-95a2-90b0-7827a2a34d05@linaro.org>
Date: Sat, 23 Apr 2022 13:10:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/3] media: dt-bindings: media: rockchip-vdec: Add RK3328
 compatible
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Alex Bee <knaerzche@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220422133803.989256-1-chris.obbard@collabora.com>
 <20220422133803.989256-2-chris.obbard@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422133803.989256-2-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_041045_172935_4939DCAC 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 22/04/2022 15:38, Christopher Obbard wrote:
> Document the RK3328 compatible for rockchip-vdec.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
