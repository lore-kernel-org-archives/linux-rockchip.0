Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78AA2D277EB
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 15:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwSga3N7JcgB2vGHyXCBl14M/LsHdmiNigXy9cPPTB8=; b=ANEeY49nr05eES
	jcx1iW/P4wH9WlQKgyduaynHSUfyANeLSbSJ+xV070syw3tufcMYHbq2rRCHvirc4lhT3zbAR0ypC
	pBdOu+f78WCd71TI5OmlQQxlUHvFMlZhL38ShsuuYryMj68nckv/ZOwoZk7Z6dJYefRRzLjrnTgwl
	Nh6fmxvQVSfju+KzeW9Z4O5Jnw+E1tKK5iyc3mXy/tv2w21WKlILJg9+MRefxPr/6kk0gn0JQn3+f
	+76FudKqcQz2OdQAVyMsRNAOI6RcQMY68/1UZYYML9PatsoVetkb9uQNXE9PJ2y106n8G891p1ES5
	FowEVNaIu4CJz6yIj8lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veaS3-00000003VTq-1d22;
	Sat, 10 Jan 2026 15:00:27 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veaS0-00000003VTM-1hEw
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 15:00:26 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-8b21fc25ae1so564719985a.1
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Jan 2026 07:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1768057222; x=1768662022; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WAtmem3iFCasTDCpGTLe5nm4nO45+wonDJ0VZ3vLsHw=;
        b=swOyeL4jH0omotiv2H89t8It/GuDBUbJ8L77ciyUNKFiKxvQGsd9QZWl6gXc//OsYN
         iXwinuqCrGyyJ2OGAY9Ie2oagSPrQw6DG94V5M/aXJo3cTLtZPuD+r+J++4y6xfoxT+p
         dgk8KmBC/qYGx4KHP4X8ySrEdqViQ5qRygTlTbCaUGs4A8WNHEg/vu8CbuWy7o/gpQ0O
         0IbhspKkd3CkokLKti/c6615/4uE//x/CPYQmvQs0GfWYh8Wqo7UMtQlOzgdEkC/DSYD
         PdXM9YyNR7VUGeq38eFWowF1cXwYKa4qMZaYR73WeQ9n4uvDfsVeZV9WH+mNghdDsqYN
         BVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768057222; x=1768662022;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WAtmem3iFCasTDCpGTLe5nm4nO45+wonDJ0VZ3vLsHw=;
        b=c/WPtnLdCHgxC1yZljYXZ1ZAiSjNRDNDECINFd8r0FkJXIMmti1GIMj0EhuHpBgApc
         CuPyc3lthEZ6TdFpZ/DYQIZpnPDI+bjovbOELEhs/3bmLW18CdnsWuFBlHCZGrHEqU9r
         1p25f2eWXKM0TGrLMbNfTYzyQAxVO0i4zHEZmU8E+iIJ+2sJnvc3l47z+6yCbk+8Ycsv
         hqCrDZ6uiB3TmXIhMVNH/qelsRo5KFC3ddb14x3MqWCoDHkbt5aTDxvCBDbJtWya1kfT
         H6qrqJnaBxziQTiu6vJVFiKza00szQE3g6dnPFY6eHAnDZSfb3IE9ruHv4H4x+9m0ZC1
         HlzA==
X-Forwarded-Encrypted: i=1; AJvYcCWN195GcDJ1mugM1y9IFGxXZ6G/s9upkdyUVMjUHUxU7lz7a8eRC3hzPVJrjjrbeoMCdbl+dsrgRVO+OJTUcQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8E15LlbAuLMMqszN/L6Lmkarym48ErBka38Aa5V0NTXU0AVMS
	33eiTfwXKMkuhVgszg/tUKR6/WejViFkQFLiMBskOs8z409WXMDhHEiws/6nGgsbtQ==
X-Gm-Gg: AY/fxX5mPNtmIdRUM40mke226amFUR6t1N7ElLNCj9yVZYLK79KlF7ZcPYGuocTNkXk
	dVV0v2jqGcQU2XJYQau9IH+7oDlqcUjj+bklEDug5CCUzGzheLckLAGTvBSbyPURPxqOTpmN9Xt
	Airyled39MSYsqvEUaKWJPD/F1tCM+sG8t2KZxhFwDHw9N5L82tNxKEn9dHylb1Ae03kjuM/rJJ
	MRjlB8hnRzPDgM5QkR2pKshVsUYUUn5AYeDT0dvliyH28DwmipCDgXJXAJJg46DqIFx34liWA0F
	Ga0ro18USsUfl+R46KcdZeD0saxT+1YkSQd0q/XUc5f6yZxmDo7oNKc0UEolLIOT63s/IA97dzU
	OHT+LqAWHeg1kroXjxX0v3MWmmCae4jIXGsyOJ1OeImV1lwGz8KNQ0NvWYfGeTWSNMXmj6gPUS4
	1sG60mqjUw2Xn3
X-Google-Smtp-Source: AGHT+IEV3jV4AdKvuTC/8uuHZMVrsBX7rlYSWqRCbMQ/RrgvHpoEFKPD4MQCxw5ld2273kc1QY8Z/A==
X-Received: by 2002:a05:620a:bc4:b0:8a9:ef98:6835 with SMTP id af79cd13be357-8c38938540amr1835922985a.33.1768057222161;
        Sat, 10 Jan 2026 07:00:22 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::7a0a])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f53c422sm1114021685a.46.2026.01.10.07.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jan 2026 07:00:21 -0800 (PST)
Date: Sat, 10 Jan 2026 10:00:17 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Huacai Chen <chenhuacai@loongson.cn>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Shengwen Xiao <atzlinux@sina.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
Message-ID: <e6a02bff-6371-4a03-910e-b47c5eec726c@rowland.harvard.edu>
References: <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
 <CAAhV-H6drj1df3Y4_Z67t4TzJ5n6YiexsEHKTPvi1caNvw5H9A@mail.gmail.com>
 <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
 <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com>
 <34c7edd0-3c0c-4a57-b0ea-71e4cba2ef26@rowland.harvard.edu>
 <CAAhV-H7j=cD9dkaB5bWxNdPtoVR4NUFvFs=n46TaNte1zGqoOA@mail.gmail.com>
 <98e36c6f-f0ee-40d2-be7f-d2ad9f36de07@rowland.harvard.edu>
 <CAAhV-H601B96D9rFrnARho4Lr9A+ah7Cx7eKiPr=epbG17ODHQ@mail.gmail.com>
 <561129d8-67ff-406c-afe8-73430484bd96@rowland.harvard.edu>
 <CAAhV-H41kwndL+oz2Gcfpe3-MCagaQd2X21gK9kMO2vpw_thhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhV-H41kwndL+oz2Gcfpe3-MCagaQd2X21gK9kMO2vpw_thhA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260110_070024_833448_E167291F 
X-CRM114-Status: GOOD (  16.75  )
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

On Sat, Jan 10, 2026 at 12:05:19PM +0800, Huacai Chen wrote:
> So I think we need a softdep between ohci-platform/uhci-platform and
> ehci-platform, which is similar to the PCI case.

Yes, on your platform.  But not on other platforms.  (For example, not 
on a platform that doesn't have an EHCI controller.)

I think the best way to do this is to create a new CONFIG_EHCI_SOFTDEPS 
Kconfig symbol, and add the soft dependency only if the symbol is 
defined.  Normally it will be undefined by default, but on your platform 
(and any others that need it) you can select it.

How does that sound?

> > There are other issues involving companion controllers, connected with
> > hibernation.  You should take a look at commit 6d19c009cc78 ("USB:
> > implement non-tree resume ordering constraints for PCI host
> > controllers"), which was later modified by commit 05768918b9a1 ("USB:
> > improve port transitions when EHCI starts up") and a few others.
> >
> > Also, read through the current code in hcd-pci.c (for_each_companion(),
> > ehci_pre_add(), ehci_post_add(), non_ehci_add(), ehci_remove(), and
> > ehci_wait_for_companions()).  Your non-PCI system will need to implement
> > some sort of equivalent to all these things.
> At least for the device probe, a softdep seems enough.

Does this platform support hibernation at all?

Alan Stern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
