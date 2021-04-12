Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEB59C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 15:05:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 83A9D6128C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 15:05:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 83A9D6128C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ee8irTS0TQO4tBQEzmqUBenwAOyl1JBgQI0frs/ZFAg=; b=ONknR/DOQ/MYBL8JT+xjYlne8
	uUwWiuhGjm8ERmZ7tqlBnssJGmHva3r6kHidLRJJHjZUDkkvTYwrrtkvJrXeMboADjtz/vDAgWZmp
	/7O1T5Vjh75P5rQcZxWQD0YgU+llhQWGl0uRJpxV4pM1QJbQZ41eahPuCnTxsnHiS3mt1lZUDF9ix
	utVXCC8Phyb7VY4c8mXXsEUIh8Eofb3rQI6vrZnhgFfUqE437ku4HSGDlaMNgucUEIyQ0Mpiel0LJ
	fQMAu7jhslAEx6uulZJBHCyKPtZxqAJzA7FTvumqvoa5KruZUQyR98ZBSC8JkH5dc8XXx6888HSWY
	qBPk94Myg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVy8N-0071nF-5e; Mon, 12 Apr 2021 15:05:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVy8B-0071m1-0Q; Mon, 12 Apr 2021 15:05:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DA+3bC7YalkPeYhisMg+v8Yd2kXOD+0wUU57sv4bQ/w=; b=NK1CoLXtzAaKowuLRGvZYkaVSN
 kN55payQbRoKl5e0SmujYrDB0T5hdPlurAg3tslicFveDbSe4rL7BuPLwqYBNkz6qMpFhhdjiyIk5
 Gha6c1lFpzYaNv8G8Dmeju4ePuJY2dfCilYwJaR217omG5k2Wu2AnwxhrCMIm0tiNxJkWaYq55URH
 KZchOgamV46UhWGF9NkGDfpaY4vZnH9bfK9LIOh/a/WZqsTovhhiXdxnPv3njiVYECB1dfIj2CRPC
 /oajHFGOa06sj2RippPMLg7exiEZKn2rBvfmGFg8E75o36/2ZTI6OyNyzXXDBU6czxYr8AX9kjXsK
 PPchJfBg==;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVy88-006KTw-FU; Mon, 12 Apr 2021 15:05:37 +0000
Received: by mail-oi1-f177.google.com with SMTP id j24so2863435oii.11;
 Mon, 12 Apr 2021 08:05:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DA+3bC7YalkPeYhisMg+v8Yd2kXOD+0wUU57sv4bQ/w=;
 b=fd0uSraUOoECXbIEF9YMYzf6o79IaUg9++WP5iJ/qYJsOCVj1VQOMXDMfSda51ChqE
 zSD248kKJazOIgtLqZz9+ZMjsfTs8xMYLO6TFSZt3p0ShD4VHIeZGCPzfTxJcvq32CRa
 cyBdsJA9v6qMOCyYAekD7l3ATG+GKLwekoaaF6RdsNWjkeqiXXOQsGKRy2voL1tNtiYe
 HIktZcs6MBfms76YbSWsVyQjIjXazL5d1WbrsgJkuhC8CPraQcCaBmXPee/izAp53Q/z
 A7vbqbQle+RL6+ehFIcNsD4DXuX2N94b/23uPSfzvGj7G+ce6euw3ULj4cEm7gwv4oY4
 ZNAw==
X-Gm-Message-State: AOAM530xJK8AvFRgWBMIg/9IStBU+3xYu/ANoqRt5gIezJP4EUZh1aHo
 1vdKrvzit2Ztot7ZJxB7Vg==
X-Google-Smtp-Source: ABdhPJyO25hHcn5aQcCqyPyKsLc+O9vOjBhqhW4NUWFk4x/dfwhaVeCQCI+JW698edtqxuFU3RoQ9A==
X-Received: by 2002:aca:1803:: with SMTP id h3mr19854196oih.65.1618239935589; 
 Mon, 12 Apr 2021 08:05:35 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u1sm2799546otj.43.2021.04.12.08.05.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Apr 2021 08:05:34 -0700 (PDT)
Received: (nullmailer pid 3898415 invoked by uid 1000);
 Mon, 12 Apr 2021 15:05:33 -0000
Date: Mon, 12 Apr 2021 10:05:33 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-rockchip@lists.infradead.org, heiko@sntech.de,
 thierry.reding@gmail.com, lee.jones@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de
Subject: Re: [PATCH v2 2/6] dt-bindings: pwm: add more compatible strings to
 pwm-rockchip.yaml
Message-ID: <20210412150533.GA3898302@robh.at.kernel.org>
References: <20210411131007.21757-1-jbx6244@gmail.com>
 <20210411131007.21757-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210411131007.21757-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_080536_543590_A74BB36A 
X-CRM114-Status: GOOD (  14.77  )
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

On Sun, 11 Apr 2021 15:10:03 +0200, Johan Jonker wrote:
> The compatible strings below are already in use in the Rockchip
> dtsi files, but were somehow never added to a document, so add
> 
> "rockchip,rk3328-pwm"
> 
> "rockchip,rk3036-pwm", "rockchip,rk2928-pwm"
> 
> "rockchip,rk3368-pwm", "rockchip,rk3288-pwm"
> "rockchip,rk3399-pwm", "rockchip,rk3288-pwm"
> 
> "rockchip,px30-pwm", "rockchip,rk3328-pwm"
> "rockchip,rk3308-pwm", "rockchip,rk3328-pwm"
> 
> for pwm nodes to pwm-rockchip.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V2:
>   changed schema for clocks and clock-names
> ---
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
