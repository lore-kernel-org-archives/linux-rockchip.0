Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 752A4C77B6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Apr 2023 14:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08OZrxIMEMmexTERviFVzQk+SFuSoFYlPnDxQQTwbxc=; b=eDmhN9jzwzpVTy
	UP848FLOq2yc07piK56lDCDy0/5p7hPPa4jXgqnWRXOXAcz4JJCYVUGqsV6cOquu8R9YnmQ+Dv44z
	aLSB20F4Jx1JNi5b0INsZHTfP3uEDC5NFYkmnKorLLVGgpywoU769aZDKXR8ii/O0AdyHzGMf0axY
	SIyzkvYtuwH0K/DnxSFdTeplAY1tGVgI66t3tlKGXS9LyoIl8A4BxpMsy+UONJw0C8GkTcr9o8gLQ
	devSDBnhQV2TacUqJVZbWP/pddMhQhu9Up+EJ6R7YLOLuQeUYu2VcvkqMkFp37dHiwp/lfuv6rEE4
	ULT66Ec08AiurjA+UQIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmbXu-003V56-22;
	Wed, 12 Apr 2023 14:34:02 +0000
Received: from mail-oa1-f42.google.com ([209.85.160.42])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmbXq-003V3A-21;
	Wed, 12 Apr 2023 14:34:00 +0000
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-1842e8a8825so13933194fac.13;
        Wed, 12 Apr 2023 07:33:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681310035; x=1683902035;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lHl7bFM+hPA2OAnoHzAjdjShunlEKsH84bFgDDDCRpc=;
        b=a1hKemQTCxEGiDU/S6FqRyn30S+9+Rz6sabFQVmflmR8bNldrLIHINDAK4gJBofzLZ
         nxG+Cqe0d2KIr5Sx7NzGKza2g2UhW90KmusZjaKonbGaUA7CPyxegdL9IvAk1QFxJF/e
         F5Gv0OCxxgod6Fz/vQMsRRv31rg9bV9zWIpQo0o5tPImzeFmFxj4pM1adLWBBKbT2tpK
         xUNW+2V1ynrvhoFOZqNqvM2eP81o87Sovkepd5XF/OfRDSwMPp7WUAo3jC91X7o1K/7o
         5SV/6ZtMoDrXPXGL0mZYps3MklRFATMmxYRQydiOomvd3JCwTi0Rg1VsRpHd9/86y+D4
         E54A==
X-Gm-Message-State: AAQBX9fmq3tnOlzzncr6jPR8DenrWARqkQsgvs+xp/KSF6CZYa6rFMMy
	Dva/A3VJw6kDWpiK89HWIA==
X-Google-Smtp-Source: AKy350Y5754AlFvbTw8HbhL/YBBNUAcozSrM0fpRgg+uHdIxHIl4b6t9mmHuBl24joivOlLZa12tOw==
X-Received: by 2002:a05:6870:82aa:b0:184:4d7f:b89a with SMTP id q42-20020a05687082aa00b001844d7fb89amr5696550oae.10.1681310035298;
        Wed, 12 Apr 2023 07:33:55 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f25-20020a9d5e99000000b006a415acb87fsm1054183otl.21.2023.04.12.07.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Apr 2023 07:33:54 -0700 (PDT)
Received: (nullmailer pid 2324854 invoked by uid 1000);
	Wed, 12 Apr 2023 14:33:54 -0000
Date: Wed, 12 Apr 2023 09:33:54 -0500
From: Rob Herring <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, kernel@collabora.com, Rob Herring <robh+dt@kernel.org>, linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/1] dt-bindings: hwmon: pwm-fan: Convert to DT schema
Message-ID: <168131003355.2324791.7234116759532739020.robh@kernel.org>
References: <20230406182000.956275-1-cristian.ciocaltea@collabora.com>
 <20230406182000.956275-2-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230406182000.956275-2-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_073358_660797_F621FF4E 
X-CRM114-Status: UNSURE (   9.70  )
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


On Thu, 06 Apr 2023 21:20:00 +0300, Cristian Ciocaltea wrote:
> Convert the PWM fan bindings to DT schema format.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../devicetree/bindings/hwmon/pwm-fan.txt     | 68 +------------
>  .../devicetree/bindings/hwmon/pwm-fan.yaml    | 97 +++++++++++++++++++
>  2 files changed, 98 insertions(+), 67 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
