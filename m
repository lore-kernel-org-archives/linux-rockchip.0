Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D76C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 18:44:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5643E64E2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 18:44:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5643E64E2E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mLTsFK+iwdROfY+R1cWlJ7a31HnTB3zVV5vb7KOyoa4=; b=dN6NPeUZ7JAwrrfKoXyGxIRT9
	N8KSI8gPbh29XNo37mCD/hNsAjBC/iARjNlR7zSrrNsloyATUkFPoUsIuYRhNCxXZ4/+qR+sfWhyt
	er+8cLahM7QWsrIpbjpzAzWmwyj6kmBCbrniE1kG1+gG23OOJBFtqtoEswZZfs+Ru0WRhMNw3jQ8L
	d1bUCYqBQKAtTe4g9Gg8QsOvwWjYsPZUpYHo33U8X17kla18bn/AxovzZTL9NbWCTeM6ORNXKFGUY
	EU1NorLWda+HgImLGBj5hanCEJuJMnz0o4D+AbLK9FH/2uF6Bgh1MYQZcjqic7gDJIo5ULq+WX0yV
	DF+k2Luqg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9uT1-00080F-Mq; Wed, 10 Feb 2021 18:43:59 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9uSx-0007ye-3d; Wed, 10 Feb 2021 18:43:55 +0000
Received: by mail-ot1-f46.google.com with SMTP id q4so2757289otm.9;
 Wed, 10 Feb 2021 10:43:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JLKTPoir/h9R65s1iDflvlmy5CWbPRCBVjFlvRoyomw=;
 b=jNf3laRJFEAkR0+I9gCoW5wEShSztc8Osd5pM1ocPp+be2nVwsWHoWk2goKYTpWZR5
 nQx3Y4Lml/Lcjzu3Z4TL7pUgYPB4w+W60+6YkjJqh8t3lYI7JZ2MYxVUEBHIfBmnj+1z
 mCP8DZRL8+iHCndykGVfwtxuY+Fp5qGbaGE/7JOLUsc+/T0u5T6sl8xnE0CKmqEBthDh
 RxX7l03Jy67n5m2vlTFLsepY5mIW5QDB39ZdETc+VpggVR9/B6h9d+GaBpUtxM0IGxFg
 CbD4vQskpLVF3juHdlVuQHdMcE6msquIBlvGAtHLJ+W/lWb7JHe1lZbLEJYEsHK62ig+
 rUcQ==
X-Gm-Message-State: AOAM5311yldkv0E1RyWQnS7X9KHQd77len6MvqoMmpRXfGyLLHmS1B3L
 E6aEIJeyt3XcIj86yPT8PQ==
X-Google-Smtp-Source: ABdhPJxM1FaimNqlBQvzW+q9M3P/dnUkivLE3Ea3GcFgSXrF/r89b3iadrMmpJCYaYpo7zH5UMgNkA==
X-Received: by 2002:a05:6830:1496:: with SMTP id
 s22mr3099422otq.249.1612982634364; 
 Wed, 10 Feb 2021 10:43:54 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w13sm541373otp.51.2021.02.10.10.43.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 10:43:53 -0800 (PST)
Received: (nullmailer pid 2520857 invoked by uid 1000);
 Wed, 10 Feb 2021 18:43:52 -0000
Date: Wed, 10 Feb 2021 12:43:52 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v5 6/8] dt-bindings: usb: dwc3: add description for rk3328
Message-ID: <20210210184352.GA2520802@robh.at.kernel.org>
References: <20210209192350.7130-1-jbx6244@gmail.com>
 <20210209192350.7130-6-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209192350.7130-6-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_134355_180557_702277F9 
X-CRM114-Status: GOOD (  10.93  )
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
Cc: balbi@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 09 Feb 2021 20:23:48 +0100, Johan Jonker wrote:
> Add description for "rockchip,rk3328-dwc3".
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V5:
>   add select
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
