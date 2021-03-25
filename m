Return-Path: <SRS0=wzRa=IX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEFC6C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 14:22:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 64551619F8
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 14:22:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 64551619F8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Eq19sGNXcEb9RHrybtwcHGbFGyx+YcMVG6oTFtJAn2M=; b=kuNtV6p7Omu2W7G93qf1gIltK
	aFeH50b1+wqKOa8ceapJd0jkk2SpxahoSiR77z7fGUy53GK8S+eQ2LKmrqIaIFEgLB4KMvWsmuNUu
	jykvnxDLH+u6TQLsbbsoHlFgcFmnZmDAA6c8jhf99K+WfARPT2lcbcBFN1oKCJ9MFTRYIMnMueJWw
	BVynGRJZpbRg9W78LaCU9A/WCG44OlRSTHfohUg4rl1cj9Aew/u/lS21+N90LgRY36DMEBvgxus0a
	N+sNcSdCXtMa8y4rHYunCf9XXdwH65cmEQwlgUK6GVGFyAHVeWYJMzHX1pYkfxmJqUfCSJVH16kCz
	9KPE/wcjQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPQsR-001bPr-CE; Thu, 25 Mar 2021 14:22:23 +0000
Received: from mail-ua1-x92f.google.com ([2607:f8b0:4864:20::92f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPQsM-001bPA-Cq
 for linux-rockchip@lists.infradead.org; Thu, 25 Mar 2021 14:22:21 +0000
Received: by mail-ua1-x92f.google.com with SMTP id j4so560066uan.1
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Mar 2021 07:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S57t/1uwRfKG1nwTAGZ20K/6m0RxzmSR5OX1ptPVg94=;
 b=NW7W1qRvf4csE0KVccOVAq5d6aLpAik7ZL3gHuATuZsTcmPe4FwyptfuK1iFjHkLU6
 liLQQzgOAO35WF2+BvQP4jRs0VVvt1LVmWhdg5QLNgUcmLuY7YAWZBfADxqSaC7VGZBt
 CdrOkMVOonbMZD3vvoPrBdsFuzfduLQKp+A6HEPbiVTDi/TAlWkG1N7zFSlBBr/NqSYC
 syQNIP0KjFEm7qKq8YGzihrznCsIyXkN80bswPa1/8Wdc/B19+6ZwGTaYZmjkGDNQUbT
 qZNsu4E5MVv+3KSdnNfAgS0ZmcuzhGYVbk64eat8IPbuE0UlfF59Dep8mxZGitDBOQG4
 jXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S57t/1uwRfKG1nwTAGZ20K/6m0RxzmSR5OX1ptPVg94=;
 b=mr9xaZafGBpJqDrFzR32+jX9+3EIY8Onf2hEL8ykimI7oB7pLLYuaPqoRvd/3YThcD
 4EdLuJGL+M0/5lKGWBpwQ6F1JMjJz3GrOMmi1XxJ4cGMlFMkgKkOfALJN5zHBcFZ/9eZ
 gncsfwYwnzq4DGvcwVhTKe2NGoSXM2qyjDiOp9BX0ZHhEN4Q5ETKgFQxVNMgS9KoUIX+
 aQOTzUt7YRMOthkoj3lmHCZdMk2Qw3AJ9cdCpml07CrJsnimk0DYD/CdUcup24moT/uC
 SIFlIAKYah5QrctUz4DVA7SltAeGg6QeMB5i/KL4YWnpqQ31dNItreJXu/C4JgDK1JvI
 CxWg==
X-Gm-Message-State: AOAM533WmZtoCfDDREdH+w5e4+t61LLOAU71s6v9cV/GYrNYhO7Xp41v
 WNJ27x/K3A10xjsLyxhGPhikmTgFNR7r4NyZhNY=
X-Google-Smtp-Source: ABdhPJwIt5+cIAgYSFiUoxo0sH/fJcm+vHdY0ZMGYnBh5vACdXvgETtySDruWU7NTuQMIgZwon8bevCtNc32q5WaDJg=
X-Received: by 2002:ab0:6954:: with SMTP id c20mr5160344uas.106.1616682136426; 
 Thu, 25 Mar 2021 07:22:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <5ecf1d3b8a8f88d6387a1549faeb4f4180cf5d4b.camel@collabora.com>
 <CACvgo51uNyQgzGdW=f-0wxvjv-+OD1p7E4DJXRzu1GvnAHbcCQ@mail.gmail.com>
 <50b3b4b3-6c5b-3f1e-3499-c88574ce9f74@microchip.com>
 <YFxObibxqK23WTMf@piout.net>
In-Reply-To: <YFxObibxqK23WTMf@piout.net>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Thu, 25 Mar 2021 14:22:05 +0000
Message-ID: <CACvgo53V8sZ2PA0NTR1=JCqcFGBecqs7=aB4uofApOa-C0GZCA@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] Microship SAMA5D4 VPU support et al
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, 
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_142219_828129_16D62928 
X-CRM114-Status: GOOD (  15.22  )
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

Greetings all,

On Thu, 25 Mar 2021 at 08:48, Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> On 24/03/2021 14:44:14+0100, Nicolas Ferre wrote:
> > Now, when we have the tag from Rob, how to coordinate these different
> > pieces? Will it go through the media git tree? Will we benefit from a stable
> > branch to share or will we just have to wait for the driver to hit Mainline
> > before adding the defconfig and DT patches?
> >
Thanks for the Acked-by Nicolas.

>
> I think the defconfig and dt patches can go through at91 as soon as we
> get Rob's ack. There is no build dependency so it can be taken at any
> time. Worst case, we end up with a selected config option that doesn't
> exist.
>
My personal preference is to merge everything in one go.
I believe it will be easier from maintainer's point of view, plus odds
of conflicts with the AT91 tree are close to zero.

Then again, as long as the maintainers are happy - I'm fine either way.

Thanks
Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
