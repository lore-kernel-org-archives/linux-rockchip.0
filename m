Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B2C4FC6162
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 03:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBQJGP2JKLkOay/kX/8UyCX3KpFofYhVO/ZhqG86Ejs=; b=ZP5pz6Xj2F8dyt
	vQbRM3HKyRId5Rv5dE9h6KXTxbZs42tISw4849pQnsSieWLJA/CWde/8/FKkEd9legjO5O6h7jsa1
	iuKi/PF0znEq6GR9aZAQmJvUJRs3LbF53ZNrKIGz1EuzkGBv7/zgPfts3JK6oBKBOy3kz6IJv3Wt6
	0ZMdipEWpFgZNWM+3VHNKQYE9mvpQuNJW0XFbx8Zvae6amsaFbLJrupXBKqJMULkyr0EptlWsAwXv
	K2A164Jbon8WwPTQ7qiQ7xnU+hcN+EEUkqSPxfekNs6eVPrAZduHUMtBC1JnoBhjpoEwlh/YJrnoW
	dR+7ed9NJdK9/WwGXCjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbsOo-00000008w2H-2vT1;
	Sat, 03 Jan 2026 03:33:54 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbsOl-00000008w1p-0D68
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jan 2026 03:33:53 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-888310b91c5so3583876d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Jan 2026 19:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1767411229; x=1768016029; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5Rx4mxodgB1DZmHp5H8zfG7zdDZzjgVY/DGJF5Uvfuo=;
        b=pS2DtNMKaZ0xilB3ZI7eR40wWqGcEJyfRnUXfPYCtf5j7eRiyhQReVYqOfzw9tgoAA
         yH70BG3hQM1yvOmEOeQeh+4U7X5sEPtc3jcsAENTxeTwpFnMGYYSS/37DwDSK5frU/2u
         bL+92DiPlpt1Tj3n6YHERy3xJUvMpVg473UYQjlEfORnMZVLoYEHWXEffS2fqWvVjLOJ
         mEL+gLDZQPLvjOADA182z/zolgRvUzOSEpXm8rMy7ysDHXzHYeb+FX11aZU5QVHfe5o5
         KW4KMEmmtTdGHWKlNFsyw7fWqPETgHHaZ7QM37OX12I80ZbcXCi8lBI9k+97YOliI4cI
         D6+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767411229; x=1768016029;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Rx4mxodgB1DZmHp5H8zfG7zdDZzjgVY/DGJF5Uvfuo=;
        b=AZ316VBhJU2LX78+mu+b3J70d8QOkM8oQFqtwmuyBqKHJ5JuHbuUpV78fCk3tbr76k
         qWC/k72AQoyOqpCQs5NIWwJ8osvSnXYETmcy8t0cMBRivB8M+Xmu7dxECmwvj2SXJmjE
         NBGtua8WsYUYHsqHP2sUqM5O5HNlGwb5eBeEM5nIzQr+0CQOFNEccjwaLQRnlCzFuqj/
         vVxmuWrYJLtC6prafNPBmv3AjUA/hR24qFQVTmoHdDeh95mnnMeBgk/M1qTzNSFLP5zK
         ZRuiW8XQIuS7H6nLNuSjXseot21khsJ3IYDyQtFyVQ1wr45YNKP4phrqxrD91AMlvI7M
         u0XQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0AKCYTYHnAG2FHP5jUGF1+GRGsDiph3vsfgqFDENuAIy2YY67aZXAc9jpP3etqbA2MxMbJGhfFFOSn0NBZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyu8SSFrE6hqUCGuiYrJ7PKMkkSsA9fS3KnWjSjYat3zmVJv6J2
	Yd8Nw42e1UcnXyhnHhOClOenglvySB7GBabOO/NBLT9zatlu/wwc6eq5Lli0eGxS3A==
X-Gm-Gg: AY/fxX4ZW0sZIE7ltmk5CKPezm5E8QKwFmE4Iz9yi/wYRHpwSbNRgjg5BEKXEH366kL
	2Witr6mpD8jGsTM2H8/lNAi8ht9vNqhoTjeHYW6jAOFGnDETp0ljFb9IlkTfjqcJtwYjrbdLuJ+
	Kdf6nvHr265KCivr0thU81A2Cpu8wIXvdGaA2eNELsAO6Hv4gB8VP3ScUMcQN/9tzsTB9gHWBcw
	OH+rgeFSzrLDqC3anPLULrFkOmw8hxqes/+Asq1w1NrjG2TzHzLGT30tXE4WSR2XFewm52Zyehc
	O3G0WuTqyCiqZNer1dDwhvj31K4G25N8/mmER2dAI+44yoRZyW6LLTqGZReziTKDcyTvgrIPjtm
	a4ZfbdHe0byQBIyXcZ8YjA/fmFeUlcjgGx41N+cHi1PmftT6szhLF+zMrrx36pZYCMp+dE7xtai
	m+ZMrhJHoy+77A
X-Google-Smtp-Source: AGHT+IHoyxqPLEaWnJ/LDGZOADLupMTl9wzEwLf9s+fKpC12/nZpuwilwnAGwaE+DlCKqsZXJWpJyQ==
X-Received: by 2002:a05:6214:1cc1:b0:88f:d4b0:10ff with SMTP id 6a1803df08f44-890594f14c6mr25041866d6.7.1767411229499;
        Fri, 02 Jan 2026 19:33:49 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::16e7])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac66841bsm299275101cf.30.2026.01.02.19.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 19:33:49 -0800 (PST)
Date: Fri, 2 Jan 2026 22:33:46 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Huacai Chen <chenhuacai@loongson.cn>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Shengwen Xiao <atzlinux@sina.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
Message-ID: <98e36c6f-f0ee-40d2-be7f-d2ad9f36de07@rowland.harvard.edu>
References: <20251230080014.3934590-1-chenhuacai@loongson.cn>
 <2025123049-cadillac-straggler-d2fb@gregkh>
 <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
 <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
 <CAAhV-H6drj1df3Y4_Z67t4TzJ5n6YiexsEHKTPvi1caNvw5H9A@mail.gmail.com>
 <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
 <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com>
 <34c7edd0-3c0c-4a57-b0ea-71e4cba2ef26@rowland.harvard.edu>
 <CAAhV-H7j=cD9dkaB5bWxNdPtoVR4NUFvFs=n46TaNte1zGqoOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhV-H7j=cD9dkaB5bWxNdPtoVR4NUFvFs=n46TaNte1zGqoOA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260102_193351_534329_F541D1C9 
X-CRM114-Status: GOOD (  18.33  )
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

On Sat, Jan 03, 2026 at 11:16:59AM +0800, Huacai Chen wrote:
> Thank you for your explanation, so it means there are two methods: The
> old one is EHCI with a companion OHCI; the new one is EHCI with a
> USB-2.0 hub. Right?

Right.

> > > So I guess OHCI/UHCI have an EHCI dependency in order to avoid "new
> > > connection", not only in the PCI case.
> >
> > Do you know of any non-PCI systems that do this?
> Unfortunately, in 2026 there are really "EHCI with a companion OHCI"
> for non-PCI systems, please see
> arch/loongarch/boot/dts/loongson-2k0500.dtsi.

Since these systems don't use PCI, the question I raised earlier still 
needs to be answered: How do they route connections between the ports 
and the two controllers?

There may be some exceptions, but for the most part, the code in 
ehci-hcd was written assuming that only PCI-based controllers will have 
companions.  If you want to make an exception for loongson-2k0500, you 
will need to figure out how to get it to work.

Have you tested any of those systems to see how they behave if a USB-1 
device is already plugged in and running when the ehci-hcd driver gets 
loaded?

Alan Stern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
