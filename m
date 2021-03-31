Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B79C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:37:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7244360BD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:37:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7244360BD3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=daAf4pylEY5v1UyKR+8QoYpGSxYyTndbtToIlEE1V38=; b=dsv5bQQfqtKePY+TPEK0Xz3NS
	1GPgRZvynphHGEb9vWeID3g8/oWZxlJHZelywfFpThqvnwRaTs4S1bS1SFeAX20NN/8/xUe48aV/y
	8ZX1O2vIiyjYZ/T4Fkzzv6F7HafI+kC4poI5odVwCpNGVCYh3c0p2ESc2DcK4BHLdPldWFFNzcDMc
	19OafmnKQ/Hegom+42iI4T1dE9F6Cna+rQe0Yk+25+lnk8Ou+ot+QxPnoAuBiWWT9t4hyKLx6nj4g
	LoTB2I+kwk8t0i2ofLVqH7vKMoAmjxbsGgdVDLEYc87/ncGV2K04U8l8AehgWSSS8s4s8kc+4DhRI
	a5KXWxsTA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRemE-007Ct8-OE; Wed, 31 Mar 2021 17:37:10 +0000
Received: from mail-vs1-xe32.google.com ([2607:f8b0:4864:20::e32])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRemB-007Csc-Tp
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:37:09 +0000
Received: by mail-vs1-xe32.google.com with SMTP id i126so10274862vsi.3
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T5aWfvcz8u1FqqDGdDL6+xvWowM95AwK3yzA+ivU68k=;
 b=LGe9GR1/zmzY7Bw4iwGyqNB2EfzGnXvve/KRMSnvZPaD9vRsQvM9zW7KnUMj7Z52WB
 JUq8LviYd5S3NqWtANefpx78Oj9GNy3egbUVIPa7OPIJlLvoq+i85ViNPl04DBqAH9R7
 798uNuQScz3YyGrdsFIQvUj/VYhHqazF56aY3EqcY5HVXqFjVNLpiCzV+hwktzO+veno
 K/no0vaawRUmVpCstcMKSB86B6A0jxcjdh+67YFtGITjw7pgr+7PQjwQ0J7Fd5wjwzCp
 vZRYCcj9L0J8zTtrorZLwVd1JLtzGyjFbceOnfANunmQhcuxzdHD2XIjYWUmOffyS0o2
 /XuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T5aWfvcz8u1FqqDGdDL6+xvWowM95AwK3yzA+ivU68k=;
 b=k6mCpshfld8OJTusDlbz1Zz/dEhGKQs/HULl0z3/0OJm8HOm6zPoD+3/e8vWq16r33
 Q+RdB9TJiSbc6XHkCw8Tt3JaCbHznZ/EP2sbSsFtIl1qLMoyKouSFy60Rpi9mzz0mNg1
 QxeFAtgCBeKe88/JnW8XbBXUBptwmKPU7wGpCHvvNsiQSz3fDuChr2ED9RQCJF1s37dE
 ACI4vvGOaLSZ+fJHLaFOsqOKE5cwLFkygu3rfMqlfspogQD8NlXqhoswxbx7btnX8tYm
 rDTEOSRkL6Ua4VFrmkCGy9WH30VE7tN1BQLPJHobJdTSxLp6oh3JKrzboeO7YkTNyl3v
 B4NQ==
X-Gm-Message-State: AOAM531Nu0e9ksLTlDMNFI02GOfLp3QjVcwiKHFnf49u/IJ5j+c0XSzy
 WQTl3uLM5OdQVMVQxbCsllazrcegLSxaD/KRd7A=
X-Google-Smtp-Source: ABdhPJzCfcI4pNU+3xrqudaT5wmZzJPE2MZmFf8fWWrNRShRIebblLgnhDIz2xErtIx2+kBt2nF5dMlJiVxMhH7uqCw=
X-Received: by 2002:a05:6102:21d1:: with SMTP id
 r17mr2544845vsg.19.1617212226819; 
 Wed, 31 Mar 2021 10:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <5ecf1d3b8a8f88d6387a1549faeb4f4180cf5d4b.camel@collabora.com>
 <CACvgo51uNyQgzGdW=f-0wxvjv-+OD1p7E4DJXRzu1GvnAHbcCQ@mail.gmail.com>
 <50b3b4b3-6c5b-3f1e-3499-c88574ce9f74@microchip.com>
 <YFxObibxqK23WTMf@piout.net>
 <CACvgo53V8sZ2PA0NTR1=JCqcFGBecqs7=aB4uofApOa-C0GZCA@mail.gmail.com>
 <3aeb1924-d461-ab8b-440b-81f33a1a8213@microchip.com>
In-Reply-To: <3aeb1924-d461-ab8b-440b-81f33a1a8213@microchip.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 31 Mar 2021 18:36:55 +0100
Message-ID: <CACvgo53CCZ8N2w9+6s8KfVtoVYxZPGQYOWYrRTdXv_y9ZqMs5A@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] Microship SAMA5D4 VPU support et al
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, 
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183708_101376_D7BA7AEF 
X-CRM114-Status: GOOD (  22.00  )
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

On Mon, 29 Mar 2021 at 10:54, Nicolas Ferre <nicolas.ferre@microchip.com> wrote:
>
> On 25/03/2021 at 15:22, Emil Velikov wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >
> > Greetings all,
> >
> > On Thu, 25 Mar 2021 at 08:48, Alexandre Belloni
> > <alexandre.belloni@bootlin.com> wrote:
> >>
> >> On 24/03/2021 14:44:14+0100, Nicolas Ferre wrote:
> >>> Now, when we have the tag from Rob, how to coordinate these different
> >>> pieces? Will it go through the media git tree? Will we benefit from a stable
> >>> branch to share or will we just have to wait for the driver to hit Mainline
> >>> before adding the defconfig and DT patches?
> >>>
> > Thanks for the Acked-by Nicolas.
> >
> >>
> >> I think the defconfig and dt patches can go through at91 as soon as we
> >> get Rob's ack. There is no build dependency so it can be taken at any
> >> time. Worst case, we end up with a selected config option that doesn't
> >> exist.
> >>
> > My personal preference is to merge everything in one go.
> > I believe it will be easier from maintainer's point of view, plus odds
> > of conflicts with the AT91 tree are close to zero.
> >
> > Then again, as long as the maintainers are happy - I'm fine either way.
>
> I'm taking defconfig 2 last patches of your series right now. No need to
> include them in subsequent versions.
>
> For DT, I'm waiting for settlement on refined code. As indicated by
> Alexandre, changes will need to travel through arm-soc tree so we'll
> coordinate when patches are ready.
>
Ack, dropped from v3 (also fixed the Microchip typo).

Thanks again
Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
