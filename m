Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA573C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Oct 2022 20:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1mF0xiBf95VhHdkDLciANUi4CuT2L3wK0VdeNbm4k0=; b=QOWmpQwxvhUFkr
	4JWy2X/plNAp/cTqisBW2QVIbKxUP2vOHTpOqInmSc4/WUZrBCfNdrkhP3/JnQm5tL9AnKE+F0hqc
	fBT3b0VSVFwn0sRlCHhuwNCTXwc7MLzVWefsND0ykr4tDG1P5OksBAP3/Xevh5Y41AkqZomB7ls41
	Gq/LR1h5A3xI3F7b+jXq94iG8UHs/xE640r1KuQ7pRGJf9JhrxKpAawPWMPDbdXk2OWWJLAxQqgy7
	9UQM8rlt478qSpwbM64coWA0TALBsEBGbbdeidFqIg7f2EiwAqRfA/myyIFBYzpk8adXnnCSJP/T8
	RSNrfxNo9uA+tYtA2qFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogXui-005Ack-HY; Thu, 06 Oct 2022 20:56:16 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogXuU-005AV3-RS; Thu, 06 Oct 2022 20:56:07 +0000
Received: by mail-oi1-f178.google.com with SMTP id q10so3413503oib.5;
        Thu, 06 Oct 2022 13:56:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DqeI+R+Wl9n6YmzBn1dp1u6WiX9q5YBC2Gudgl+n04c=;
        b=In3XLumxMLMqgzn/I6I0HGiDmvXYXkcXzoFpmVgMVaSlctf81QSNnoteSq5ykl5i9P
         CuzBMSetSdgg7Gtg6PWq/l7nLotbSXeUBcoJtrfbl+Qs6zlpOJYKMiG0Rhio6NxfiImB
         QCOrTNu1LorjcEwBsE1/G2PfoDQc0lfPO046pd6VOZWnJOx2pONmcDJ0lGi58JMjpRLf
         3nNJH5/RGs6c3OADNMDt/s94wN5woyXhWeEz+hURV7/bAPFnI7pfniy0h9aYRLs8Fwkb
         zkR5xQ12Ixl47WNMl/s8mvAt8RdWpxpr+0yO3ApbOzWkB5g+uF7PVRln4w4NVLOqY3VM
         ES9w==
X-Gm-Message-State: ACrzQf0Bb3dSKOtcQzlh3M4+xyZA4NxUbokyRBc0EjM7OjDKnaV4pm/5
	YWRiw8Ildofgq6bgzGjTj+9EBXpUlg==
X-Google-Smtp-Source: AMsMyM6X6LpwRO/LcfoVsg5SIuVkOuBwInx2Eda/zfB6hqIDLzgK7FK2p36n4ry++iDeYNau7IEijA==
X-Received: by 2002:a05:6808:106:b0:354:2aa2:6d14 with SMTP id b6-20020a056808010600b003542aa26d14mr294097oie.86.1665089761039;
        Thu, 06 Oct 2022 13:56:01 -0700 (PDT)
Received: from robh_at_kernel.org ([2607:fb90:8a65:c536:245:842:a3a4:9017])
        by smtp.gmail.com with ESMTPSA id u12-20020a056808114c00b00353f2786f44sm83144oiu.52.2022.10.06.13.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 13:56:00 -0700 (PDT)
Received: (nullmailer pid 132399 invoked by uid 1000);
	Thu, 06 Oct 2022 20:55:59 -0000
Date: Thu, 6 Oct 2022 15:55:59 -0500
From: Rob Herring <robh@kernel.org>
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, macroalpha@hotmail.com, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Odroid Go Advance
 Black Edition
Message-ID: <166508975874.132347.8187333745126261016.robh@kernel.org>
References: <20221006174519.46161-1-maccraft123mc@gmail.com>
 <20221006174519.46161-2-maccraft123mc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221006174519.46161-2-maccraft123mc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_135602_906803_1CB3D89E 
X-CRM114-Status: UNSURE (   8.90  )
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

On Thu, 06 Oct 2022 19:45:18 +0200, Maya Matuszczyk wrote:
> Add entry for an updated revision of the Odroid Go Advance.
> 
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
