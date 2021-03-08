Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AEEBC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 15:57:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 129B065105
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 15:57:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 129B065105
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4N+wBQyfAa4ESSNtEVpzJU/98dsVrdQne4ZqGnlaN+A=; b=pWil70/TBOqjuwwcBdQ/21DCV
	nMUT02AA6h1oc8jVK/pqy685T9dDdjCoTErMRfwadaahIQk0ONLVxT+vPDOwQW2dDAGt5oRrAR5zP
	ozJ2HK/ARkGJ+k2f0hVILLezzEEcv90XLMc5SgFwOnLn6icuxkGTSHFJ7k9jgXAsFsKCds/zMF5wf
	ZB7ffRDopYWv4weNllOVX8HBQT/qOPvnPHx6e9Fu+cgP17+8VLY4wDru6R12/AjEFFAG5DQtguFd4
	FcU1oNGngEGWvug5Iqni5ozjiQ8qD6s1EHa1Nk9m/Oh0OoiB0lj8Xq/IQ/d4n3FAcpzJoP8zzZOH/
	QRb9VYLuQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJIGP-000nCc-E2; Mon, 08 Mar 2021 15:57:46 +0000
Received: from mail-vs1-xe2f.google.com ([2607:f8b0:4864:20::e2f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJIGI-000n7X-TD
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 15:57:41 +0000
Received: by mail-vs1-xe2f.google.com with SMTP id e21so3086909vsh.5
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Mar 2021 07:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SwCFKt4GMozKY730ds1tdX8e7lguf4IlSDg7liGwqag=;
 b=uVTM3kaXojfmBzvO37KITKTrxLkPmHU1poLanoepTW0qTgWVZm/5x+F/I4G5bSwr/I
 kZToSGaToHTvNcnZpH1LbXXxdItf0LsmPcDBblkzdYfLfH0AnakyZT5ROjW3ih4euyfx
 I8uHxryN+8cX9afGFLptLJgu6UPQHmcIOjqiY6H78RVZihypTqSchQSPDwGutEAXQXwi
 rycioaUyd+s1up7QIh8GCngrGdJlFBnjraiDdvBy1sdpjv4ptqQ2AuH9tvfXR6TM1AOh
 5kJgV2VmTnShyz1xD4uDqqEA7IU4coUsPYTPkelrYqKjA0TEMAhKipsm3y0HAqdpDnZN
 09CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SwCFKt4GMozKY730ds1tdX8e7lguf4IlSDg7liGwqag=;
 b=gz4S53vv/806gvYcpJXxIivtQZJldQJLCG3ehIWDDP+W5kIPotq+q4AohenC6jyEa3
 lQi8s/OfJndVJv5+N/yVb497qK7ozSFev3uQwgjFhySrVdOE1Gmox8UR0Bgi7Y50o0Ga
 ihZgKFFsHwR0/OvHVDhmoFBGIjiVMpbXI31EfrqmbCt7oAM+i78Ty8if4aKBm52hM03/
 S2jh+4T+MvUZR9sG8HgfMFE9383TN6GijViDW1rVGLPgajRnxsACJRVoUxa7znlkRodb
 gfVhmY5oakfdCHX7DV1LjOdfP4s0dJgTMZleWpBUjD/BwE+g5+ik7cLX4n+2WN61m0fa
 dGnA==
X-Gm-Message-State: AOAM530UsSlS84lVysN290a5FO7hQ7KqnVddtHy4XQCzLwKzRkv2Zw7l
 E0M+JOM1wgNcXhuTjPJiNExPNg8UQ6VGYmaBK3E=
X-Google-Smtp-Source: ABdhPJxRY5PAXQbO2E8L7KGjxzRnWIIivSjsRhaRYV3E7/RFN0Jf9vaLtpIiAen3eZB8wpvg511wf1eiUeCvrh7B+ck=
X-Received: by 2002:a67:f04f:: with SMTP id q15mr13359263vsm.22.1615219057722; 
 Mon, 08 Mar 2021 07:57:37 -0800 (PST)
MIME-Version: 1.0
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
 <20210305183924.1754026-8-emil.l.velikov@gmail.com>
 <915739c6fc01f17b00c4fac8b7fede1f25396286.camel@collabora.com>
 <CACvgo51peuKsuqx-NwZSWU4Ys1q5MuXb=BRx7GLo3tkWH+vb0w@mail.gmail.com>
 <2e921a53-def3-ed3a-6240-b81ea3ddf946@microchip.com>
In-Reply-To: <2e921a53-def3-ed3a-6240-b81ea3ddf946@microchip.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Mon, 8 Mar 2021 15:57:26 +0000
Message-ID: <CACvgo52dNRyiLDGDf8wQMKoxsCUyn3Ro=hHL7GAMtVXRdC_19A@mail.gmail.com>
Subject: Re: [PATCH 7/7] ARM: dts: at91: sama5d4: add vdec0 component
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com, 
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_155739_192044_43ACE9F5 
X-CRM114-Status: GOOD (  10.91  )
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

On Mon, 8 Mar 2021 at 13:21, Nicolas Ferre <nicolas.ferre@microchip.com> wrote:
>
> Hi Emil,
>
Greetings Nicolas,

> So nice to see this support! Thank you so much for handling that.
>
> Little comments below...
>

> Nitpicking: I would use "microchip,sama5d4-vdec". We tend to use the
> microchip name for new DT bidings and compatibility strings.
>
Should i use Microchip (instead of Atmel) only for the DT bindings or
throughout the series?

> I'm fine with having a "staging" component. Maybe add the hantro vdec as
> a module instead.
>
Ack, will do for v2.

Thanks
Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
