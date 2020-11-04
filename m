Return-Path: <SRS0=eRos=EL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538EBC00A89
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 05:01:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E43B1206B2
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 05:01:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="SlBWpQdL";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="YCD3m3Yj";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="SaylY8xY"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E43B1206B2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uhj33AUY9tjced7DQEmPBnG4rp8ERUAkBDd+PUL0Vxo=; b=SlBWpQdLpdHW0pdFYIC3maV/q
	+j/jYPvxDKmEleLrZ40rKomoD3Va/sCS17i8Rl9HjMZ8quPPLxtB9E/UvonzrzcWq0VNQdML+nmOi
	DonBt6jRbN72UU5COjaSMcxfYuZApLJvhlK3xw41YJvre5c+T50YDOb9Cr0IOdhHMFtzwLqJDjuOI
	rL6T4yQYUOzUZ037KpYgkbY1J98h+0bkbPPFTh7s6HSN/zXXWCe7IhqnNfUBtdhMUSMPAhCHF49rY
	L7ifi91ddkIZWsyRwvIV4Mt8TL/hI93QV1GdqsHOgTQEjYoA+MfJkAHJ14/g6F0AChEzQTzW132Tn
	kZaQvR8Eg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaXOr-00031y-E0; Thu, 05 Nov 2020 05:01:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaWAE-0002bw-2w
 for linux-rockchip@merlin.infradead.org; Thu, 05 Nov 2020 03:42:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wYADTYJrthOK2FgDOSfisjNfho6lkFoYFvTmRS3AF6o=; b=YCD3m3YjgKZP2hpbClmoiiN3VA
 Dl69VFHgPzbn47vyylNOab07Zwa7M14mYHjJpG+e4kIXeLgpywpK41cTqNnAyvWuti5ZSf2rHH4BC
 Sv5njTQ+YQynVN2tTzGmSnAMZCCGkDjgCIbomLLnrDTFIRBk4eDwfxcGIlx7H5Ym8JBSspNPKk5O4
 KivqfEHGii8GetiCadr/OA+vy+aflmmu3aM74bcpHOzJ9pxg+6PNKKA7ElkjbU5SASjQ5TZKtH7Ew
 YOzekT9jRS2T6HyfbRjqJIxoypzzvgQ9Hog9oitEEgfpupdaa+6MqSKUEP2nI34Kndma43jywiiF1
 I1pMpwZA==;
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaOst-0001xK-Ky
 for linux-rockchip@lists.infradead.org; Wed, 04 Nov 2020 19:55:58 +0000
Received: by mail-ed1-x544.google.com with SMTP id o18so23801078edq.4
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2020 11:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wYADTYJrthOK2FgDOSfisjNfho6lkFoYFvTmRS3AF6o=;
 b=SaylY8xYIN/kn6pp6vqgZKWFPI3aMZEDuGl40Neby3UAsh/OdwbL/BOL6VIMd1xr54
 u1lN0DgFxGMEutrFHArJ0+jAUUmRPp+XeZlWdBtTzx09tswaSsx7r/lNGnGT2jBgUTok
 zbibiQOU8l2pYWkCZ1XrGFaXIxEfntBR1qvWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wYADTYJrthOK2FgDOSfisjNfho6lkFoYFvTmRS3AF6o=;
 b=MC0JOmDq4Py4ZRfIgjlrDDevQoYRy1HawvqV/PRlxIsQEOjv0FwZS8GQYXdR+cPfTq
 3UDnYe8sB0MzVcAlfBlYolw6/b55EAyORT0reJ8beMJcxXz8THubVtHOwxvAyFPWwWU1
 tmS0deg789q6F0xd7D1/e96OKe/iR8M6IeVTyJLUjq6vKGisOEZv98+3T+0dtl3sd5QJ
 tqvaiIZ1+aMzMFQ7xJmIoVSedSj9rTAlpzCt6O4Ej/A2S82Avg0M9yP5QCLMrZFjkuI8
 JZZz/97XScQlE4FMS/gBFXK1UAtlvKq000A55VhlxKqF1jXUghX2UvnJHhW9gFAKBdmV
 mtfQ==
X-Gm-Message-State: AOAM531EPkrcNn3gxdQ/qO+s21F52HKy1Qv0fHVf+8jfdja71qHLE5dP
 PfU8g3hjlz0Z1KbeT838/lVRxXqOZocZNMf2FhRl3w==
X-Google-Smtp-Source: ABdhPJyH3fRc/wAho0q8pS/XUNnVezYAhmkOPcUqHUyfU9i2UwdS5LOu0HHusgD6sVSsJlGpr/H/BfOWEDafPK6G6Qc=
X-Received: by 2002:a05:6402:4c6:: with SMTP id
 n6mr29304524edw.204.1604519692471; 
 Wed, 04 Nov 2020 11:54:52 -0800 (PST)
MIME-Version: 1.0
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
 <CAMty3ZDHDC5TMF=8HJRmZd7HijOM6RP-k4y9JkdWVQGgPKyGvg@mail.gmail.com>
In-Reply-To: <CAMty3ZDHDC5TMF=8HJRmZd7HijOM6RP-k4y9JkdWVQGgPKyGvg@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 5 Nov 2020 01:24:40 +0530
Message-ID: <CAMty3ZCib5TiQdzU95WS1Xiq1tAQ7FHEQcbf5JhUZYYvofb_MQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] arm64: dts: rockchip: Add Engicam PX30.Core
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_195555_930502_776A8510 
X-CRM114-Status: GOOD (  18.25  )
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
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Oct 22, 2020 at 12:27 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Hi Heiko,
>
> On Tue, Sep 29, 2020 at 2:02 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
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
> >
> >  .../devicetree/bindings/arm/rockchip.yaml     |  12 +
> >  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
> >  .../dts/rockchip/px30-engicam-common.dtsi     |  39 +++
> >  .../dts/rockchip/px30-engicam-ctouch2.dtsi    |   8 +
> >  .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |   7 +
> >  .../dts/rockchip/px30-px30-core-ctouch2.dts   |  22 ++
> >  .../dts/rockchip/px30-px30-core-edimm2.2.dts  |  21 ++
> >  .../boot/dts/rockchip/px30-px30-core.dtsi     | 232 ++++++++++++++++++
> >  8 files changed, 343 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
> >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
> >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
> >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi
>
> Any further comments?

Gentle ping.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
