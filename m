Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDCFC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 04:28:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B6542389A
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 04:28:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B6542389A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ij7rsj+wMwCQDvN2vEcRUDBeWXqPdig8GKmMDeoOJMc=; b=Oyp/YUJXoc2SX2mA1NucgcuN5
	CSDOKMHD7QYPn0UFTkEzHfSHTDLpIfC9oOzrwm13+2QbSUTAWp0dOw7xZDbI3JMUi20oqribHsP62
	c38Fz5HziW/BW7fOeO5nAHxm2skRJCjVOg+JGwTE8PpgRuOzLz/PkTarS6GXrcJMwSlTAvraHiKM5
	MqwbipwbDpp+w8B9n8pAqD/UGqBH/AIDJ10Lqc4A69dKHv28ABd1911Q+W6ZsLa25WcfePrXWdlWJ
	BcqxNVrxsokNcLLKHEJIolbrhY85yBuR4d/8HxlJJ2IGey6tkbradejaj5eonnuvK1++oU819GOTn
	6fC1GAXiw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2RaQ-00063I-9t; Thu, 21 Jan 2021 04:28:46 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2RaK-000616-M9; Thu, 21 Jan 2021 04:28:41 +0000
Received: by mail-ot1-x330.google.com with SMTP id k8so435254otr.8;
 Wed, 20 Jan 2021 20:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sEz/iLIdTw9v5WxUC29+q1wZ0vu+7s3YddxeSahPgM0=;
 b=DFUJkNHbazeR7OGjGEldoAx3hJrrb/8aMvXHpvsX6zSPYjQo1YvkfVAlhUjhA2+1i+
 Yw99LWlssvLnZ7JoK3YWdByLBl679kA9ALPU3U4MDc1M8dodj1Hm06fiATQrHQjuGeE1
 pbGNXX21WBBq2kh3/XW7c8FAA+NYf0jhk+oSGQxYY7tS1PZrT2PstR7GXq+a/8pyfjo/
 PF7sPxZwSQ2POTncI3sb0Ef3Bwt9Y1vo3WdTnxDIMzumkWb51r3mjastToBJnl3EF37w
 yP1eRVdaUprqvG4h5IQzoF5pI8IunB3tKA/Q5YLHHsl5yXGl9ybC7ZzMs/MgxBAbSm03
 Bdcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sEz/iLIdTw9v5WxUC29+q1wZ0vu+7s3YddxeSahPgM0=;
 b=TNY+z8V13AafwUHUQUiWoXtvn7kA/b+IdKrxzvD2pA/TJluWN6ro5yZ/A2wTHG+hlL
 9ujip+LfdQObktZpReOJQsOcPjbi0TsrN7fa4YkdUaLL+MiPp6d1ggKgYvF57wc5Q5zv
 TI5ZQKTQykfRng4JhLm4eiRrRxtmFOqCCPPhSV+do7I6876RhHC4fWiRpLmv20HVDq4L
 DVYqy/dDFD59anKOxtY2aaDb+u66YMtmXjhsRWS1IbktUYXwYKyQqH1Sxt88nhycCp8H
 eyP+PuWBz/wADdeRhSODDlZvXy0PqsMEnk3q/XqkqEf+TgUDnEuquVioQbf6nVEi3MYD
 4FbA==
X-Gm-Message-State: AOAM531o/aQMbRE/E8pTbL0hxiKxVsBvjxOsxizABVXJsK7hlsWJmAHD
 bsUyx7WY0wabhu/elEpLXTXR6OFKKcWddITox7Y=
X-Google-Smtp-Source: ABdhPJyxCiEV+f+RiJbu5bYWFH5Mi6vlzsXNdJt9JvjH/4TG73sO4Nd/q0sC6TuVsDRpFmrME1l/M8WE36ThKzrww9A=
X-Received: by 2002:a9d:6f14:: with SMTP id n20mr2136998otq.285.1611203317361; 
 Wed, 20 Jan 2021 20:28:37 -0800 (PST)
MIME-Version: 1.0
References: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
 <CAEr9=gsH2UhjMO_55FKmGKS0DYrT_-XKf0iwCKCNc93epbiXNw@mail.gmail.com>
 <87ft5ly5nh.fsf@kernel.org>
In-Reply-To: <87ft5ly5nh.fsf@kernel.org>
From: Lindsey Stanpoor <lindsey.stanpoor@gmail.com>
Date: Wed, 20 Jan 2021 20:28:26 -0800
Message-ID: <CAEr9=gsc0L=rn5YDLrArqbOMSt25HhHF7cwhp7sxdPa6-PQGpg@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: usb: add rk3328 dwc3 docs
To: Felipe Balbi <balbi@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_232840_777729_C990F746 
X-CRM114-Status: GOOD (  16.37  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, cnemo@tutanota.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Nov 6, 2020 at 11:42 PM Felipe Balbi <balbi@kernel.org> wrote:
>
>
> Hi,
>
> Lindsey Stanpoor <lindsey.stanpoor@gmail.com> writes:
> > On Wed, Sep 2, 2020 at 11:12 AM <lindsey.stanpoor@gmail.com> wrote:
> >>
> >> From: Cameron Nemo <cnemo@tutanota.com>
> >>
> >> Document compatible for dwc3 on the Rockchip rk3328 platform.
> >
> > Hi all,
> >
> > Wanted to give this patch submission a gentle ping.
> >
> > Rob Herring acked the documentation changes, but I have not heard
> > anything
> > from the USB or Rockchip maintainers. This patchset would facilitate USB3
> > support for Rockchip rk3328 devices like the Pine Rock64.
> >
> > If there is anything I can do to help move this along, please let me know.
>
> Sorry, it had fallen through the cracks. It's now in my testing/next.

Following up on this. Will this move out of your testing/next?
--
Cameron

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
