Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C00CC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jun 2022 21:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGbqZjkH4dfkz94rVSagYczwviDe/R13q4sDggWl9Wc=; b=WW8eiUBuTVLGNe
	5CXmH20aSKGpsk/Us2s7kNhV1TN/ghTALMxyhfXz40v8uIt//LQ5QeqJzOWlR4AL7EjBh+RJctD/e
	fThyjDRsGSnoAhrzv9N7eBTIpDABq4Uvew4OzeKWK5MS4vGmFLhpQhR/GzpJ3mq0RdMEXipCwvPkH
	ZbMulTTC0YbAYqnB43JpCkmMd2Hde5EWI5poFspAkfAgnddSFYWDJ2F/cPvQzGz2eUQBSkgqt4peP
	62cOXDho3RK8lUwBBAobUEiFzYxtm1o1FuODHHQBFi6/xImqrTrcRKeoz/4ibc0YP9W9+TLCGutRz
	E+RnJ8viVCEnREVi0xQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygsJ-009mSB-75; Tue, 07 Jun 2022 21:36:31 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygs8-009mQx-CK
	for linux-rockchip@lists.infradead.org; Tue, 07 Jun 2022 21:36:21 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d13so258082plh.13
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Jun 2022 14:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+tlXHJz9kisGrwJfIL/WMzkc1MTPDPH2NkDRgofMQXA=;
        b=CAQl78ghMWdgJpqs5v1tnPv/lepLaq6E6vHOQGSNFpzq0er9j5lbI4PgArppRnxI1i
         OhUHFhwQFCvy16F1fowJJ0nOReoDaAayxdilL8hHuOdrtYQOZkulXHx7HI4Tqfp0C+OG
         Vq9dE/RfMBMoIXhW6yIroAQ9UKNnH2hPxxa8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+tlXHJz9kisGrwJfIL/WMzkc1MTPDPH2NkDRgofMQXA=;
        b=2N2Al4J98ouiXgRXEqAxzzGWQ/6t+9TCS6dCg/Elgv9hqFVDtmVEoXhwgxqZrqjrYJ
         9mIsWr8fAwS+JOu4RKZnbOllrssz8Gy79FOmJUkhAIqX4xLF1WUfRBPoXbx5U/k6aPb/
         RndSC35FQY4BuN1Sg9zliMXSkoAmMsKBCEixSxo9MBu2WnUebBcVX5CS6J862t9csGKJ
         2kIs6rmSnFSm9PTc8tIU0TdrSN3OBKrvuSwvjjdd9NnpSM1DqaE1CG7SZN2zs6DaPe3D
         Jw9BEx1Je0IM/MOK/W0s58ofy5gpENR/movv4PCXfjKilu5Qc/PgabCGYnQ/3vmJxHWX
         fBcg==
X-Gm-Message-State: AOAM531DtM0iJona1C1e8QCGpnN4APSfiR4q3ucfCFRZFz5ZaBPMPygE
	SG12BBeKoxjLJLfDHIE6XwYmJw==
X-Google-Smtp-Source: ABdhPJwOhl2xigdWsk9Ip1jYWJh9CMdZiN68xBIN0cOrLS7fUs1z4TCbxFVDM92Dxke6O0smj4+FAA==
X-Received: by 2002:a17:902:9b8a:b0:163:d0ad:f9e8 with SMTP id y10-20020a1709029b8a00b00163d0adf9e8mr30304386plp.79.1654637777427;
        Tue, 07 Jun 2022 14:36:17 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:b689:cc5b:e6ad:930e])
        by smtp.gmail.com with ESMTPSA id q21-20020a056a00085500b0051874318772sm5823056pfk.201.2022.06.07.14.36.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:36:16 -0700 (PDT)
Date: Tue, 7 Jun 2022 14:36:14 -0700
From: Brian Norris <briannorris@chromium.org>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Assign RK3399 VDU clock rate
Message-ID: <Yp/EzreGUkFIvwhG@google.com>
References: <20220607141535.1.Idafe043ffc94756a69426ec68872db0645c5d6e2@changeid>
 <253e2771abb13a3e62c07dfb0b420169bb572c2d.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <253e2771abb13a3e62c07dfb0b420169bb572c2d.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143620_478668_69C10369 
X-CRM114-Status: GOOD (  12.23  )
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

On Tue, Jun 07, 2022 at 05:20:41PM -0400, Nicolas Dufresne wrote:
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

Thanks!

> My only doubt was if you really needed to duplicate that setting into gru-
> scarlet.dtsi, but I've simply assumed the answer is yes, and that you already
> checked that.

I didn't explicitly test without modifying gru-scarlet.dtsi, but the
unfortunate nature of these long monolithic
assigned-clocks/assigned-clock-rates properties is that if you want to
add or override one element in the array, you have to repeat (or
override) all of them. And because rk3399-gru-scarlet.dtsi already
overrides some of them, every additional change has to be reflected
there.

That's why it would be much nicer to be able to distribute the
assignments to their various consumer nodes, but as noted in the commit
message (because you mentioned it to me out-of-band ;) ), we can't do
that.

Regards,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
