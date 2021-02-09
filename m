Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3724C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 23:25:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 598CF64E4B
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 23:25:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 598CF64E4B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BiLFQf6FmUAvXlQCLH64UM4lpxrYwm6VaZ9cdsqJgtg=; b=EUZeLmoM5MS/vrS8DFi3NOmxq
	xXx8XXFvm+VRVuUVApWHupSJZlqemE+DwfKoGvdfFCl+tpcJBGvwqixxuyMnf/5UjTrIfD0kWxfOU
	W3/pI1ewbgfgZuhKsW4ZggSCqaVjC4GOe2yAN258aGcEeUezvNt4E0n19rnZHDwLv0reWPAZ/NCQW
	0UQcS9FAlYytpXcsKL8xAK3OljFVTCOPzUTpI6I7Nz6C0qbVjsn9sGFFtgcvQVXxuSevvKishOtQ4
	FHsC+y67ignLacOgJsg+H5L0DdxBC270LaZ1A9FYz3oUqHYVtJSJN41MmLSCeGBYFU4e8j9T7tO+d
	Ki5YE8ZRg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9cNM-0003uj-N6; Tue, 09 Feb 2021 23:24:56 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9cNJ-0003tj-76; Tue, 09 Feb 2021 23:24:53 +0000
Received: by mail-oi1-f173.google.com with SMTP id l19so18392oih.6;
 Tue, 09 Feb 2021 15:24:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3Bs5+vaQTu+eCwDRoOXl16FTbRsekAUffxOjU2JLISk=;
 b=gzg1gYkpjcDPi92HrdJNAs/pgLmjyx/UjcX047myS7+CbQCc/lkpxarDTccrN421MA
 oViL2SKEftRuulz0GCaza5885HnkhF95saoBdGcHQYiFUTFnwpWtVhTXdgiKwjmfmKxQ
 Uxyn6I91jcykKGkfv2++vDjs8en55SsnVpFl7PqokpDDsi0/oLX8Ym4M6kmW92lnF3ic
 gvT37cI9jsSYuuALXe98EboAknghrPHKTiZ/4SeHx34I9v5F56pBeProE53JhdiD/5zm
 dI9tjkevLLP9fgyVUcvimbZ6nd2Fm65xpNS0HmV24xuFgXuMzgKSVRVTP/mzArTsSneW
 1y9w==
X-Gm-Message-State: AOAM533eQgS1DeqOpMe8aE1inIMnbzNGoxZbDLLnlgX6GQr/Rq1zsnu4
 lrShS4crNKh9RNXGBJu9Vw==
X-Google-Smtp-Source: ABdhPJwuRLU0qA6aSkp6ZsCLRlc1ySgFvlDhnByEU6jyCSWa/eOdPW6uZYxHS23tscc7L8lpayL5xA==
X-Received: by 2002:a54:4886:: with SMTP id r6mr122676oic.54.1612913092548;
 Tue, 09 Feb 2021 15:24:52 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m22sm10147otn.62.2021.02.09.15.24.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 15:24:51 -0800 (PST)
Received: (nullmailer pid 429553 invoked by uid 1000);
 Tue, 09 Feb 2021 23:24:49 -0000
Date: Tue, 9 Feb 2021 17:24:49 -0600
From: Rob Herring <robh@kernel.org>
To: Tianling Shen <cnsztl@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Message-ID: <20210209232449.GA429524@robh.at.kernel.org>
References: <20210208191646.6511-1-cnsztl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210208191646.6511-1-cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_182453_297006_D8192BB7 
X-CRM114-Status: GOOD (  11.62  )
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
Cc: devicetree@vger.kernel.org, Jensen Huang <jensenhuang@friendlyarm.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
 Tobias Schramm <t.schramm@manjaro.org>, David Bauer <mail@david-bauer.net>,
 linux-kernel@vger.kernel.org, Emmanuel Vadot <manu@freebsd.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Marty Jones <mj8263788@gmail.com>,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 09 Feb 2021 03:16:45 +0800, Tianling Shen wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R4S.
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
