Return-Path: <SRS0=lrNZ=GD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 117C8C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Dec 2020 19:16:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C17B82076E
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Dec 2020 19:16:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C17B82076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d08+WEjTP4ZXy8FzmDCSxistjwDm+nHCWcGH7hcKiGA=; b=t8Ya5TKfQK8L79wyZL+JM0crS
	N41xu6EVfr0y8hplKoHdUnTAIq/VvBpAtYuTPmIo3Es9tpIFx3VO/TTVq/BeQ+b0wCdaCnGWZ5Jc5
	aVQQLr9SbzTZg17M4USmU3j92bG34Is3NiG7fXLio5zy4OjTOxOvewVluGrpOHqzCCPPDk9ks68dy
	5ywMCXWu1NgCXYc20/M+k9CDM/LDGHjBWrD+Li92dbMw3x8fbQ0vpY/f2loMF/ZLm8A4Y8dFlfQQk
	ypsTDHogr5nC96keI0AXGz6SbRXib1ifUchgyOIA6UF96QqDulKVLi9WpyY5mj4k9S/Xukta/CZML
	HQqbyRmAA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kv3R4-0000rW-LY; Thu, 31 Dec 2020 19:16:34 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kv3R1-0000qc-44; Thu, 31 Dec 2020 19:16:32 +0000
Received: by mail-io1-f47.google.com with SMTP id u26so15132163iof.3;
 Thu, 31 Dec 2020 11:16:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WIeSBo6yv1g6tueM5MfrSEO4VtHQ5xYK2u3vHaN1aNo=;
 b=J4gsVTgLOl3nGwm1X09Cke2mSaF9XR/zhu+XVQ7noqldFvH/Z7TI6Y97avdDcALrHz
 YETyPQNd4AnxUDSQtBA6lOCv+lVwm/nhH75aQawrgarWe0h0od3FEKPtH2+uLUlE48fZ
 s6xwHBSNd70xy7JvEqZxjkixgbtVQHphCP5R+Ze+Q7JMwYW+/73auzLLlR3mvvkWG5s9
 bTi77MJFjmoWoBFn7IsMmLXQkf+mnQotZAGCq8+/R6yHmgsDaG6yIHC8jWpyBEwNgz50
 zxsMaV81cA+Cj9vNnge+Kzf50oWNSMycsq+kOc8KVmOjuqOpS5d7mmvaXp07iwPw5NBT
 i5Rg==
X-Gm-Message-State: AOAM5338MoDv0C5sCjL/zPOnqTuut/KX2cvAxFxHHn3uNCuIyPNllGYO
 8RsXjxMrJ//prR+e+eV3crAEeklx1g==
X-Google-Smtp-Source: ABdhPJwt6KZBt6GUAzo90fcHcUxG/1/p50U6VtuLexqkkODl5UXWnpjzUlJZoIX7YYEyyQMGtbJwdQ==
X-Received: by 2002:a5d:8c85:: with SMTP id g5mr47341946ion.154.1609442189517; 
 Thu, 31 Dec 2020 11:16:29 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id n10sm35060460ila.69.2020.12.31.11.16.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Dec 2020 11:16:28 -0800 (PST)
Received: (nullmailer pid 2197700 invoked by uid 1000);
 Thu, 31 Dec 2020 19:16:26 -0000
Date: Thu, 31 Dec 2020 12:16:26 -0700
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/8] dt-binding: watchdog: add more Rockchip compatibles
 to snps, dw-wdt.yaml
Message-ID: <20201231191626.GA2197646@robh.at.kernel.org>
References: <20201218120534.13788-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201218120534.13788-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201231_141631_189224_211E0929 
X-CRM114-Status: GOOD (  11.08  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux@roeck-us.net, jamie@jamieiles.com,
 wim@linux-watchdog.org, linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 18 Dec 2020 13:05:27 +0100, Johan Jonker wrote:
> The watchdog compatible strings are suppose to be SoC orientated.
> In the more recently added Rockchip SoC dtsi files only
> the fallback string "snps,dw-wdt" is used, so add the following
> compatible strings:
> 
> "rockchip,px30-wdt", "snps,dw-wdt"
> "rockchip,rk3228-wdt", "snps,dw-wdt"
> "rockchip,rk3308-wdt", "snps,dw-wdt"
> "rockchip,rk3328-wdt", "snps,dw-wdt"
> "rockchip,rk3399-wdt", "snps,dw-wdt"
> "rockchip,rv1108-wdt", "snps,dw-wdt"
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
