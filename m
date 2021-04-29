Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8455C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 12:17:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0087061352
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 12:17:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0087061352
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s9dmaJXujLLWhmx0/S7ypw9FAOviqAaKSje7uWPwwY8=; b=AcoDJoYDzSydX0/A5NJKDJSCR
	GZpLosJiObIwcAHfFwn1fOb0lWifrANZdqd3POV0vmnO7Q3Sr/OWcsqTCQ1r4gBMAGH6hqMInpKvg
	9g2s61JPgefiV1z1KotGjMgQGRQSSE8LDkkrfJ+/W/gIGQ3FdWWQduECxaHhi/AS3FVj6m8lxRaP7
	J13QoiOZq2p+6HY5TMVkPsLdzCB+7zRFZHthnB7/wH9Tog3WnFL0jqpClrhvS+tjMtybXo3r3FxAp
	7IP5XICz2q0UifJwhWtXY3qMqSehbK2ToXTf9vsZThQCHQHBu4T3PB8HABJs1V32ACLNELKPeY5MD
	M4bjRruZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lc5bO-005bo5-Ef; Thu, 29 Apr 2021 12:17:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc5bM-005bng-7l
 for linux-rockchip@desiato.infradead.org; Thu, 29 Apr 2021 12:17:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=pvKSWMA+h4VY1N/pm8V8CpfYjYpoN5VTSiX9cgYoepk=; b=Lbb3PcBQsq2EpkEKcsH8Z70Wg3
 4GsPBV4MXmZsGLPh9hFnFFaOimU4+ntFp6oiXsA+VkMybB27sB4bkK5B0JIjUC+hlicll3G0sLj7w
 4m+fUnBqPHXk0R+0/5O9gBXjTWe5YZ/QWQCi1YDwoldEYgHsQbmutlJItbnsyT82uQ3T8gxf8rVzE
 saITapj2Lunw6jptcoZ3xAEBYp1B8XzZ432RxNhB1k+sJ06KBnq2/mugWpmYHLgju1Sw3L30VG+XS
 i/caSfUqyzTnnSEy7UhY3XI6mseTNuDXDXlG3QrgScEPaWPkED5LawzWwAd2sHEx/anXRwAwq8gUg
 NgytgO9Q==;
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc5bJ-000cE3-RK
 for linux-rockchip@lists.infradead.org; Thu, 29 Apr 2021 12:17:03 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id y2so76102032ybq.13
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Apr 2021 05:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pvKSWMA+h4VY1N/pm8V8CpfYjYpoN5VTSiX9cgYoepk=;
 b=F4D+bf3TUu0ExjDShsKGSlCLw9q5eqgc6LEUVOERxdD3UJbfGrucWcgAtNA7ZdScLT
 znkipL8joyRG1ux7QOfpI2fEYq1x+nuS2DAGm0KD3ZXruwiisRQVSzP1DZhPo82x3PII
 fhd9uPhTz4kt++jkW5HujLexy5D1bk043KoPWUcTy21KvY4AsVa+u6wBWcmNED6RC1AS
 dN/00Ls7ZrhVC+78kPKhuPt+34U6M9JupTV3tM/BiQtf7MmrFBUVPq8As/193AzfNqC6
 HsWUyD/fDH0Ai7JjH1CMK3zi+7SKjznsn8iSFNHjcR+dxjXjOa9ja4Ql5FLSYMvJxm/k
 03JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pvKSWMA+h4VY1N/pm8V8CpfYjYpoN5VTSiX9cgYoepk=;
 b=rG2k4NrL91Px40TAtOZgjE7k21IVMLX6u26wOTJbvTw2j1XoTMMYIaHAYvYfFv7qfZ
 6EtP6pgEgO1a+cITqdf0mVAueVyEoEquXJs4lp6lZwbOXWb0NimIq4dM8lzY6S32dxtD
 xmk6FL5P7wsxWgP7PFTTO5YVwSbG4DGHvSl4lObyn3SifQZ1xQldbJnR4k1ljQxRn41P
 ZPK+e7pldeKi4PFpMPmA51eX+B3Ftj8IKlS5uAcia+kOLmLavvBvYQRd5/+xOITTmvE6
 0q7FcUvknU5nxUNBjtgTBCivNzwWuf+ZF9D2+Xwy0BwpL1OS8mEp+JKcRESTVjuaxsrk
 Hpjw==
X-Gm-Message-State: AOAM532TvGVcAYHo0bqLaXKwbcz/NtWS1Bx4e93wBSMqUp76KVf6jFw2
 gCWJfGCo3wR6xd9j0jAGdxtowtDTWMcnKhI3wxJtfYQOLisMEdUe
X-Google-Smtp-Source: ABdhPJwn6bV0wQmK8I7sO2LuJG3UbMEjwgZXHROeUPEs6Mjuq4x7MUSg4zlwALybADmOp0QK7T5DsSTG00FGMVycQt4=
X-Received: by 2002:a25:4d56:: with SMTP id a83mr43509949ybb.437.1619698620408; 
 Thu, 29 Apr 2021 05:17:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210414070325.924789-1-xxm@rock-chips.com>
 <CAMdYzYqf3FhYrFR1DGrP=_CbNpq5uB+J-m42Mv=c6Pu71Jcxww@mail.gmail.com>
 <5af0f6f8-bc29-f50e-ca14-94049b7d17ed@rock-chips.com>
 <CAMdYzYr=i7X22-38VyY-GQLWs+aV+ZcWwO_uDymFxmaNO8SpmA@mail.gmail.com>
 <20210429064117.GA2214470@infradead.org>
 <CAMdYzYrbfD-jFC3uPVPkhjXWZGeaUw5X=0w1Q=m-6OuhEGOKkQ@mail.gmail.com>
 <20210429115451.GA2287423@infradead.org>
In-Reply-To: <20210429115451.GA2287423@infradead.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 29 Apr 2021 08:16:48 -0400
Message-ID: <CAMdYzYobyyROToMXng25NQEgSC7OpYLmo=iM9eDuPbSfkKuKgA@mail.gmail.com>
Subject: Re: [PATCH v7] PCI: rockchip: Add Rockchip RK356X host controller
 driver
To: Christoph Hellwig <hch@infradead.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, 
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_051701_904367_F720467C 
X-CRM114-Status: GOOD (  19.51  )
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

On Thu, Apr 29, 2021 at 7:55 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Thu, Apr 29, 2021 at 07:26:40AM -0400, Peter Geis wrote:
> > Good Morning! I'm trying to implement the MSI workaround in as sane a
> > method as possible.
> > Do you have a better way to have the kernel only allocate memory in
> > the lower regions?
> > (Without disabling everything above 4G altogether)
> > This chip only supports a maximum of 8G.
> > (I know, why they did it while maintaining a 32bit bus is beyond me).
>
>
> Please use dma_alloc_coherent to allocate the memory, the dma_addr_t
> return value is the address to be fed to the hardware.  Before doing
> that set the desired mask.  DMA_BIT_MASK(33) would get your 8GB.

Thanks!
Unfortunately this isn't actually DMA allocation, they were using
GFP_DMA32 as a hack to allocate regular kernel memory in the 32 bit
range.
It's in drivers/irqchip/irq-gic-v3-its.c for reference.
The functions are simply kcalloc(), kzalloc(), kzalloc_node(),
alloc_pages_node(), and alloc_pages().
I'd prefer not to have to rewrite this driver's entire memory
allocation system for one errata.

I'm following the code path for dma_alloc_coherent to see if anything
sticks out to me though.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
