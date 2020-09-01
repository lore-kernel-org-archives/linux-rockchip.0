Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ACDC433E2
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 10:25:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 57FC7207EA
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 10:25:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="EZAVSDzg";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ZvssPmbe"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 57FC7207EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V2Taz+DZ/931XVjXrt8Sg47tT/mRLqE8+gF6XRvDfGE=; b=EZAVSDzgXttAaiF1Rx3M1MbwX
	/vkLXW1d0/k/VF055MUelBx7JYMD0zn6tTJKrwwR+QPKT7s8uNfyuwrLMAx6QcQvsMHnmnZqT9ly9
	SD1drcmzvIv8u/DQZG7bSTwvaVoUFpcjAXsasntKIxSzJSwfiR1VWavmUItAZ1m/T1rljEiPez+lg
	/pS5TchtrX4U7aunlR5uhOumlfk70rGQ7h1DyId5R85si3IHiFCcrUCtJA2nKZW2uDvQpLrw+gV9I
	7GVAheerP3tZoWn5f9QQCHruCcnVY5zWWiazdZpHDr8BKRvBmeFB7ZpMmCT+12AFBHSQtW+h91OWP
	f1InbDzWA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kD3U0-0007DP-BW; Tue, 01 Sep 2020 10:25:44 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kD3Ty-0007CD-Hm
 for linux-rockchip@lists.infradead.org; Tue, 01 Sep 2020 10:25:43 +0000
Received: by mail-ej1-x642.google.com with SMTP id a26so898642ejc.2
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2020 03:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DBY03aljOyI/2fhPi5fgkXmtcr1ZgjsMqOgg6fOIlH8=;
 b=ZvssPmbeG6XDh2TWAE2Wd4jboUyecQ9Z9B7+kp1ntN0VP2oEbf7XObj9ZD2vPNS9Q0
 asc6ijuQ/UyS8orgtyeO9KVXLLCLoCG8KDIeKTX94lP9x0TCB7DiBoIAwFI8W/vSD1z2
 G6Wdnk6WR9iltPjeKLoH3vq6U9J+Wr8LdXqbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DBY03aljOyI/2fhPi5fgkXmtcr1ZgjsMqOgg6fOIlH8=;
 b=M39LWleY+rJk4LNSLiZPaihEZdwv3G4pxWoY6vCFQQxiIWngB1qMigLk/ysPVooLMS
 viDdc/+sOiSTUV/A3mHWEAMlE6AEd99HgvYuq0w8UKBItTaf5kS6miKiCj4UeCmB0rbP
 PvqIXW3KkbiC1SAO3dvKXMfJ74lfYNVzhvWhaRfAp5VPW1hUS6ftoIG4ye6kIpyVD3Tm
 lrkH4YWfHazVkqN4SsDFVhcRzv76mDqyGL/CfVTEiWq0Hjw/EvK6g1ErRU804eMs/cqm
 fWqb8sOChPV/uhCfLFVFdGISO5MIHH/nu6IvlQ2uZpL+Y3xVBPGfcH1+/9Lmxi7vYL+Q
 hnrg==
X-Gm-Message-State: AOAM5321kYR0rYrB5yTKGcXtm5DGDYKZKFbuT8A6vYcPIeB6A1O4y0EQ
 Gj2afqqzNojXv3FQejW5EsMySEzdIluNaFXTZM+FNQ==
X-Google-Smtp-Source: ABdhPJxoLwkmE9GI/4RYl7jfvvcWo/Kls6xYJUneBBMoNdmQ04dudp2j2v1X//3rzOVafeyuohPwjIghls3Gymh8JzU=
X-Received: by 2002:a17:906:150b:: with SMTP id
 b11mr840127ejd.234.1598955940451; 
 Tue, 01 Sep 2020 03:25:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
 <20200831082917.17117-7-jagan@amarulasolutions.com>
 <0e286dbd-36e7-54cf-b901-4718d5f7ee6d@gmail.com>
In-Reply-To: <0e286dbd-36e7-54cf-b901-4718d5f7ee6d@gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 1 Sep 2020 15:55:29 +0530
Message-ID: <CAMty3ZCux4dz_qE4ie1r3mOeEzxTfrCkb_riiV-9694poEd+tg@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_062542_963092_02FE082C 
X-CRM114-Status: GOOD (  10.61  )
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
Cc: devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
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

Hi Johan,

On Mon, Aug 31, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Jagan,
>
> A dtsi file with only an include and no changes isn't useful.
> Are you planning to add something to it?

Yes, some WiFi/BT bits (with LVDS if OF used), but the idea of having
separate dtsi is as per the Engicam's hardware topology. C.TOUCH2.0 is
a Carrier board like EDIMM2.2 and each as its own purpose and possible
to use or update as per customer needs. Maintaining separate dtsi
files for a carrier board will easy for customers to use the same SOM
and create their own carrier hardware. This was the customers can just
add their own custom carrier and reuse existing topoply in Mainline.

Hope you understand, the structure of these dtsi files.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
