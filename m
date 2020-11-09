Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 165E7C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 22:03:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97F2E206CB
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 22:03:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="l83kA9gS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97F2E206CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iLUheoxUptsEnNxvWVdF9gvrrqRagBhtHZgUqWaYD0I=; b=l83kA9gS0owshs8SBBABJYKUt
	gfkooWkqNSlrmCnWIT1st3PdwWFitSGe8m6ML/dXkmMstCTRz5bnqzW8rFdjPUCf798LQwE2kxx3S
	cquo6ZXFRz/ItZrWld2Fk+knAIp4UzggMmI+GMuHYFVj7YEbr5/NxPRZksoqq+eKB8Y0fs2WxjbEa
	Sn1jLk0g/LW/43VDR3A5CBK4soqaHo/WHdMXGOD9cftDaFH0ls+7yzpLBvoWD9EHYbLzR6yQgiapc
	I8VIh0L9dImzdwJgYxBmPIXFd0LFp0PyKlPiqromQCahD34n1OKiluLFxFipJw7JMa/JohK44WBxj
	GJlhmtz8g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcFFt-0005Z6-Ie; Mon, 09 Nov 2020 22:03:17 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcFFq-0005Y0-Qu; Mon, 09 Nov 2020 22:03:15 +0000
Received: by mail-ot1-f66.google.com with SMTP id i18so10553369ots.0;
 Mon, 09 Nov 2020 14:03:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EePEy4ijH1/6uTZdSxjulsoqmXlf9L9kEMCID3IAUL8=;
 b=YlWtELp9XJemzEgrfFQe4K3SGhv9zZNhzJBqtwF4WS9Y/6x/NZktAOrlBROnOS69yX
 2FQRcobMp/lfSMxPOtv+aP2XPj37wkhJK6Mdms/C17gQ9aPBSqaExgVYtEvsRNnGwFoA
 C6mogRu2kgpyF2kODTES0DEwaNI4J98hVbmtOapWenl5WfSBRdjhbaaZvlpnV0KqRDik
 GGUc/qtLEnfKM5uSm2mm+YlPV/A7cmKeXmuBsk+nVdDsuTQALF9Zx3MxcMFiZobUGQYq
 71J8b9zyp2E75XE+GMaCiiOIsEXDGfdbV0efoQszVPFuN02okd7p8I7iQPMa/BpAvpEB
 YWHg==
X-Gm-Message-State: AOAM533Rf9y57SHPtAFOg5SqaW6gqDpTEL5FsRHyjTAfKjq65Vssr2tj
 bwKkMXjLrwnfIMPkv3v0KQ==
X-Google-Smtp-Source: ABdhPJwtpN9Gi5e6MyNFObgMW4csuzD+Wm7XSMgWvgC3pf396MEOHK4Kea5bevGbVXkGwMaxU6bTwg==
X-Received: by 2002:a9d:4b0a:: with SMTP id q10mr11845542otf.271.1604959393936; 
 Mon, 09 Nov 2020 14:03:13 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m3sm776153oim.36.2020.11.09.14.03.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 14:03:13 -0800 (PST)
Received: (nullmailer pid 1835486 invoked by uid 1000);
 Mon, 09 Nov 2020 22:03:12 -0000
Date: Mon, 9 Nov 2020 16:03:12 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/5] dt-binding: mfd: syscon: add Rockchip QoS
 register compatibles
Message-ID: <20201109220312.GA1835439@bogus>
References: <20201107170103.25608-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201107170103.25608-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_170314_899446_C4DF7A2B 
X-CRM114-Status: GOOD (  12.88  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 07 Nov 2020 18:00:59 +0100, Johan Jonker wrote:
> With the conversion of syscon.yaml minItems for compatibles
> was set to 2. Current Rockchip dtsi files only use "syscon" for
> QoS registers. Add Rockchip QoS compatibles to reduce notifications
> produced with:
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
