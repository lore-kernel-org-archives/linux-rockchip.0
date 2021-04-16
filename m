Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 359DBC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 18:56:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D75536137D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 18:56:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D75536137D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2PAPQr0zDa0x7jesWsi4SqtkLI79PcfZmO+EWrh7ZQI=; b=Pah8hAwRvBWuiZmDCDQQqaHCh
	IzT56jsUGjGSxUrycwxcWhgaAh0E3tji8ZJh2iGGh1b7VvhqZ+YqQUcFgzfMt57433X8tw2fb/Yy6
	G78He0+ngqm7zslh1ZPL5xhujx28b4WiA4yM9IxO5aVtcyONVb44CZNqOLy2FbR1bUlqAu9xvAf+B
	aBWnMAEI0EBdAjLS04kMT7lSv0UJaBOSPMAG4bg0aDAiQIjB5aU23UBWSHyehs/tcNOmgSgT8ZS/4
	0J456ZZApIIr7L7AXup+wemkiQKuxV4oAHwAR5+QYmbZyFWxJDZ3yWuC8MQQLWwB2YireSgzkBqZN
	B3c3XMWLw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXTdM-0039OX-Ri; Fri, 16 Apr 2021 18:56:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXTdE-0039Mk-P8; Fri, 16 Apr 2021 18:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Hma+9zO1Y6oeqJ6JVhr4MtqPIcdulc3xEHbwZSzOoVY=; b=1m913PA5wo/VTeOiKEj5gB6cyk
 yaRKmzcayuIztNTU9A+i45MTu/yztiBLi7TFGhYVwmjASVqp5ppjU2YuG3UV5RuBzMsCXHvn32ANm
 27XJgCXH0SmpbHsXRMhhyXwSQTUiFeG61XV9OffJBagAs37o+00yD6cVBdaY4IidrfPEAenTKKGqC
 pnmmCgaUAgUXNHCu5NTfobqb5gqDU+cbw+mq38cBkUaOKaLkiZI3ePKVb+s6cu6dQ1fHOizX90JTF
 +CS+aiv/16g2W02NP3b0XBoeFSAlkgKZ7hGEALxBA5M7SIja8fb8dNpYjzb75amhFkAxpg9WehL3N
 4g+sq6Eg==;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXTdC-009dnd-BQ; Fri, 16 Apr 2021 18:55:55 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 e89-20020a9d01e20000b0290294134181aeso863300ote.5; 
 Fri, 16 Apr 2021 11:55:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Hma+9zO1Y6oeqJ6JVhr4MtqPIcdulc3xEHbwZSzOoVY=;
 b=IDEDYzF5kXXbwR+EXV5CMzOLPR94dzoZrWoO8xaMFjZse4vBCUwJSUSvqFoJ6NS3I0
 wAlhdeuyhbdspFL+au00KDm5ytPYfznyBYintnu8F6HcgrHdzFFafUbkI+Q7kclnrjr4
 eIagdj2cHLvs+mLexEFI3Usxwv/qhe6er1XBl4ursyNn54t4LDRg6vnS8EbLP/Tf5Vye
 fLKHxJjYN1pGV6AoOnxHvsoUUUGu4ZaBJ7aJQ+Ve/SVOsgLlts6x0QPPiwcoX6EpaZX+
 38B/3lKFdaGDxOE0FJi10vkRzraRvgz4EY2rpNLkSgjYBdLo6xIEqTSX4evS42Zi9Fwm
 BfHg==
X-Gm-Message-State: AOAM533R488D2Q5RXR2vSPscCdvlxMf+0B6MjLxT8UFhS3uvnExsLGOi
 1hQNDxLTsEpTXbg5SuKsnA==
X-Google-Smtp-Source: ABdhPJxp/ZNYTBcin4+hkWrZfaH8k7QNcoxv1l7/DutQRgLTMiDLbgoQatvHS8OXjYhAkYyOwgnv2Q==
X-Received: by 2002:a05:6830:10d3:: with SMTP id
 z19mr4938562oto.59.1618599353779; 
 Fri, 16 Apr 2021 11:55:53 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 8sm1539175ott.68.2021.04.16.11.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Apr 2021 11:55:53 -0700 (PDT)
Received: (nullmailer pid 3752283 invoked by uid 1000);
 Fri, 16 Apr 2021 18:55:52 -0000
Date: Fri, 16 Apr 2021 13:55:52 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, enric.balletbo@collabora.com,
 zhangqing@rock-chips.com, robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 12/15] dt-bindings: arm: rockchip: add more compatible
 strings to pmu.yaml
Message-ID: <20210416185552.GA3752233@robh.at.kernel.org>
References: <20210416080342.18614-1-jbx6244@gmail.com>
 <20210416080342.18614-13-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210416080342.18614-13-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_115554_409618_5C7FA22F 
X-CRM114-Status: GOOD (  11.14  )
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

On Fri, 16 Apr 2021 10:03:39 +0200, Johan Jonker wrote:
> The compatible strings below are already in use in the Rockchip
> dtsi files, but were somehow never added to a document, so add
> 
> "rockchip,px30-pmu", "syscon", "simple-mfd"
> "rockchip,rk3288-pmu", "syscon", "simple-mfd"
> "rockchip,rk3328-pmu", "syscon", "simple-mfd"
> "rockchip,rk3399-pmu", "syscon", "simple-mfd"
> 
> for pmu nodes to pmu.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
