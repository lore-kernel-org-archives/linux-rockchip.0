Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C3A2C432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 17:21:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 53E8961357
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 17:21:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 53E8961357
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpnqB2uEJDuzEOegZqN8g7ZX6iRirZb+GWNlyxXhCJA=; b=jjay7eJn2qZWz2
	AFCYdQtOKvnADgxQn6j2T6x0XPQbuuLND37kUESJV8RdN7m9OX1hCWhGjnlJRbm4BXMpzXPA2C8bn
	AIoITXrH4D4EcJ9gFVUFaf5wwtsSRT3gaCAIbv3DncBxJI+qFkmpbXPV8fHBqs1IRurJO1WJQd/AZ
	oF1VfmmtNUxLk7JG42FoHEk0/9Z1TY+Q/36PyvW8srRStYMMXfWTYKR2BhMzzE+KqaCe29m9Lr2t+
	peNr9YKDx0km9KvmW61wbf3CsV9UAPinWu6l7OBhZqjT0MVQMD2sDWYdT9qIke+o+joxKQ3NcJu6k
	iy/xkTTO3ywev964/dJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIa76-0048Kd-TQ; Tue, 24 Aug 2021 17:21:28 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIa74-0048Jt-GQ; Tue, 24 Aug 2021 17:21:27 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 x9-20020a056830278900b0051b8be1192fso27345343otu.7; 
 Tue, 24 Aug 2021 10:21:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hlWC9+vUVVELeqKVJ2DC9hi41GL/e4i4yVESIWR4T5A=;
 b=ef4v/3dgV7rpaeqhs/wJBc3+GHkQFBnarRoJurtW7l3Ploqgg/AhjQnpyTF6G/X3Qe
 mEYEY1qLcTDyihF0eJu6To4xpA0bkRpGEoG60RL7IpPUekpxlpM4PD4CEubPxwxOyqX9
 UzvLRiXqkuEkbRi8n1gRbvb1An6xw4jxLLJn3FJySoVEqxOddsdJATJVCIOr10Kz1+ki
 A0GSr74/a9FcGEMv1rbIy4HHiE6VRY41TLHRMXgL7JEt+YWf1Hjw6K30busg7ap9xNVr
 jIHR/FbeMn6t5BW/CfqatpsAHqjj4i3GpWrEF3VWQNcUb1EKzE19ug+FqJRHwAezszQX
 KDiQ==
X-Gm-Message-State: AOAM532sFAsnVxPw/+VdiXmHyU42ReKUrgBbedc/CaY7IA+1JwKn8EbN
 WNGGkIhU9A/uTIkFVDF4/VsXdj0TnA==
X-Google-Smtp-Source: ABdhPJxMsPbj7DqNPHORp0UDP+Z9S7EF7aFEMtnEsKD4R7HA5m8wOSCsNcw49YJJoVL/sV4Edu7h6A==
X-Received: by 2002:aca:2305:: with SMTP id e5mr3642749oie.36.1629825685671;
 Tue, 24 Aug 2021 10:21:25 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id p4sm4149663ooa.35.2021.08.24.10.21.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 10:21:25 -0700 (PDT)
Received: (nullmailer pid 661564 invoked by uid 1000);
 Tue, 24 Aug 2021 17:21:24 -0000
Date: Tue, 24 Aug 2021 12:21:24 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: tglx@linutronix.de, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, daniel.lezcano@linaro.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: timer: remove rockchip,rk3066-timer
 compatible string from rockchip,rk-timer.yaml
Message-ID: <YSUqlE2S+YGR6680@robh.at.kernel.org>
References: <20210824095637.2547-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210824095637.2547-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_102126_590677_2CE359E0 
X-CRM114-Status: GOOD (  10.74  )
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

On Tue, 24 Aug 2021 11:56:37 +0200, Johan Jonker wrote:
> The Rockchip rk3066 timers have a different register layout then rk3288
> with only a 32 vs 64 bits timer channel. The timers in rk3066a.dtsi have
> "snps,dw-apb-timer" as compatible string, so remove the
> "rockchip,rk3066-timer" from rockchip,rk-timer.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
