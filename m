Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BB17CDB474
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Oct 2023 19:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQeTAFNEQfYlnd3NmILGh3pfCCZosyN2kji3zun3rCE=; b=i+F2AzglYRoGG8
	0TUczy2BERyqb3LGmI+V28qE2rhRVYNdu/cZ1Bi9bCqecq/Mav6wjFMSkmoD7qALq6rQeORzgKpvo
	ZoeM8eeiBSfGrz0Bab8y+UbOD7dOTz7cNiMqIShqT902O93tMDb0P2ZeG8eOapII1D82qDCyw1Pur
	+quMhBeig3QP+23uUjKqmdX4SZSeCKT4gwfaFcPsDZ57C1clcRahQSBnig3okLXwWzMLGfwTm/ZLe
	xVb+XpLAr2Bmdl6rebzeuaVG1IHZYMZnVXROIjHOsBzwhkVVW0rM9fY20wP5XSxYwtNip16uMRtmq
	ceOjb0++Zg6FxLqVJHvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qspRz-00D3Xj-1q;
	Tue, 17 Oct 2023 19:09:55 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qspRw-00D3W4-0T;
	Tue, 17 Oct 2023 19:09:53 +0000
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6bd04558784so4235138a34.3;
        Tue, 17 Oct 2023 12:09:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697569790; x=1698174590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hsq/qKnq6l/ZglDvqX8puzt3/YPat0dlcmzHX8n059w=;
        b=Ttf75PB73PrWWg4FBFW3N6dEdSgKF5js75RrZDa2Lef7KHasBr9+++ByfSwjmkQU/e
         nKLtxvtJrF/zeimIo7JskHdw/lRdUrXDZJc2BqL1m1KdpqKW0Bmq50flxhK2ny0sUtBt
         jFnyuZeYhwQZHqdqQYaSA0hCtF7kJP/DfgH0DGCZR/IolTwUWaqhpfF0KsxmG6HG0thC
         bi3WU9ZvstzWNqGlgQZ4djmDwnaYT+ocsYdz94u+xdoUx9LkFHbQS2Ql4U4Aj3A/7Jw2
         UMc0iXDOan3/fTHQqfqp0AfjyLKdWk5qIGWBxBFgSpo1Cnq1fb7uxGJmEH53io8l1ERC
         q0Kg==
X-Gm-Message-State: AOJu0Yw9OeJo776UAjgdkuMI7YTb0E47vIBb6OnGyPGg7i0/U/64TquM
	y3IAQ2YhLt9NGQZ97Y8iEQ==
X-Google-Smtp-Source: AGHT+IFsuTE38qfeNB0xuLfLDlF3//sxJrUPKESH01L/xPOutm3tTkoAeKJmsazGo7ze21d+XITEfQ==
X-Received: by 2002:a05:6808:138a:b0:3b2:e12e:d2db with SMTP id c10-20020a056808138a00b003b2e12ed2dbmr1925675oiw.39.1697569789785;
        Tue, 17 Oct 2023 12:09:49 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bl24-20020a056808309800b003afc33bf048sm253949oib.2.2023.10.17.12.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 12:09:49 -0700 (PDT)
Received: (nullmailer pid 2526574 invoked by uid 1000);
	Tue, 17 Oct 2023 19:09:48 -0000
Date: Tue, 17 Oct 2023 14:09:48 -0500
From: Rob Herring <robh@kernel.org>
To: Sam Edwards <cfsworks@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Daniel =?utf-8?Q?Kukie=C5=82a?= <daniel@kukiela.pl>, Lokesh Poovaragan <loki@gimmeapis.com>, Sam Edwards <CFSworks@gmail.com>, Sven Rademakers <sven.rademakers@gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Turing RK1
Message-ID: <169756978718.2526521.10700760788625408970.robh@kernel.org>
References: <20231011225823.2542262-1-CFSworks@gmail.com>
 <20231011225823.2542262-3-CFSworks@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231011225823.2542262-3-CFSworks@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_120952_184396_7941FE47 
X-CRM114-Status: GOOD (  10.05  )
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


On Wed, 11 Oct 2023 16:58:22 -0600, Sam Edwards wrote:
> Add the Turing RK1, a Jetson-compatible system-on-module (SoM)
> powered by RK3588, from Turing Machines, Inc.
> 
> Signed-off-by: Sam Edwards <CFSworks@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
