Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2FADC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:18:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 618D62068D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:18:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="h+j5J00V";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="XCKiiSxj"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 618D62068D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LkD2iEdpu2cl5Lg7PLBaUBetbBWa2xJMx+hrUrTLeAU=; b=h+j5J00VmUXDCdA1G3Vcqk+yI
	CpUFWQgtxdfimjVtIgXlJAMEEy7FTpyPBh8qrZVqwZS6zsEvO9k4HFNzvo5usHqr0bnr2yZmnhCwP
	067Gs1lrCaXL1Hp3BTCIvjPjJoZ7o6LwMjrluDj9sf2OI6bLH7NMpWhQxUx3JX3eOj89d8DNwrKZp
	lqB41Y2VBS31Mr+sFOSez61jzY/vJgbCr5ZDkTazzTpzmzflTgYlLIGGEqsBUtLASwrfz1sToVgLm
	iUfqLF1PANGEgWZNUXUDhF3bTma1ccveeO+4PV4u68iOBMpS8Hsq9pPQA0dPBztP2hG6GCokr381d
	jWMtwR1Eg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcBke-0000Tf-5Y; Mon, 09 Nov 2020 18:18:48 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcBkb-0000R6-5T
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 18:18:46 +0000
Received: by mail-ej1-x642.google.com with SMTP id 7so13676331ejm.0
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2020 10:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FiNrwUISwF83ew9A0Wb1PQjOzvs7NmR058vtWFkrXSA=;
 b=XCKiiSxj265kGAovEwvBErEpKXrR6NnlpN/l4thHKYBPZIZKDcg4dHWM8nIft7kpHB
 NBpYPeBcfAU2oahKXuFBy01lLXh/2DNgCKS6996KJt5gbAd7N2jAYSO11FCvpw9fWPyS
 Qip37jpS+ODYXRdYrj2F6WBpennsHxDNnDaIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FiNrwUISwF83ew9A0Wb1PQjOzvs7NmR058vtWFkrXSA=;
 b=cWn+hncgIbgwAtoePbW8OU7lWJTxniXzQOEfVg15rGkJwodFgX9TixSn0gYaEsjwYY
 kYI6LHHNb02ogXQExP4aXlBqyE1ixoKMklOruwK8Wh2OeN+0ng9MCK48+xO4dJTSSA73
 gkewNbzeDxOwVbRIe23xzlh30T2dX7a6h1QEAjOyM4r3bGKfild6tTTd4O9uBga7QYAT
 uXzNxMc0JPDQb+ytMPq4whZzHAGw/LNxUSdeUSZVcQQW0OErGG+zYdLfYMeJaP5ktAiv
 QqExjjqZqRBJV8maQ+MDfgap7HGFe4/5SMY0g4ZbJodsfRj6nAmToUME6/29oQWiTYfo
 qCow==
X-Gm-Message-State: AOAM531xuSeaTu9m4WiEdBUBy6fgbUE9JvmK6LaS3tPvDtk8sMowwJFf
 7C4x0boWWka/xkb+37yN3pEk6sV4ox9oh4485k+I4A==
X-Google-Smtp-Source: ABdhPJwIZbj832ZQWCgre/0E9MllmcikcplewmTeRE+FTjaDLQ9UlEBsbnle0ZDh8exswvBRFOgXVH1TjGRq+nNjHnA=
X-Received: by 2002:a17:906:5e02:: with SMTP id
 n2mr15222726eju.295.1604945923889; 
 Mon, 09 Nov 2020 10:18:43 -0800 (PST)
MIME-Version: 1.0
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
 <2320954.tcIoyGMtcG@phil>
In-Reply-To: <2320954.tcIoyGMtcG@phil>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 9 Nov 2020 23:48:32 +0530
Message-ID: <CAMty3ZBtQ2f2poAmQCZrws5TZOGX8sn8v-DSpEohi+4=rTYwsw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] arm64: dts: rockchip: Add Engicam PX30.Core
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_131845_260675_20D3E101 
X-CRM114-Status: GOOD (  15.22  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Nov 9, 2020 at 4:45 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi,
>
> Am Dienstag, 29. September 2020, 10:32:10 CET schrieb Jagan Teki:
> > PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
> >
> > PX30.Core needs to mount on top of Engicam baseboards for creating
> > complete platform boards.
> >
> > Possible baseboards are,
> > - EDIMM2.2 Starter Kit
> > - C.TOUCH 2.0 Carrier Board
> >
> > Changes for v4:
> > - collect Rob A-b
> > Changes for v3:
> > - resolved Johan comments about sorting node properties
> > - add copyright to Amarula Solutions
> > - update px30 dtsi author
> > Changes for v2:
> > - include C.TOUCH 2.0 carrier board
> > - skip 10" OF LCD as it requires separate dts with panel support.
> >
> > Note: These baseboards can be used for i.MX8 SOM's as well. So having
> > baseboard on respective SoC seems to be easy rather than making it
> > common across all.
> >
> > Any inputs?
> > Jagan.
> >
> > Jagan Teki (6):
> >   dt-bindings: arm: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
> >   arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
> >   arm64: dts: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
> >   dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
> >   arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
> >   arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
> >
> > Michael Trimarchi (1):
> >   arm64: dts: rockchip: Add Engicam PX30.Core SOM
>
> I've applied the patches for 5.11 with some changes:
> (1) engicam,px30-px30-core became engicam,px30-core
> (2) px30-px30-core.dtsi became px30-engicam-px30-core.dtsi
>
> That double px30 is unnecessary and confusing in compatibles
> and the px30-core thingy needed something less generic, as that is
> not px30-specific but specific to the engicam boards.

Agreed with the updates and thanks for picking up.

Other than these few patches around the mailing list,  let me know
your comments, thanks!

https://patchwork.kernel.org/project/linux-arm-kernel/patch/20200731160324.142097-1-jagan@amarulasolutions.com/
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20201023181814.220974-1-jagan@amarulasolutions.com/

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
