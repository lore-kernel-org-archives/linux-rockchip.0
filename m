Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50647EE57D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 15:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IWKNPCg3H9WZ22dzpxRecqBBGR/W+rGilGcM7bwu1wU=; b=j893BUZPFLdtk7
	+Xz1DuGMit3Re1czsqWbpoNkHsIaE7NRi15oycpVFc4Gg8xBvOw8FynMfwS31mcjZdCckf4HUnOY+
	tqgM7PKmLuJCHvd6A7sb90zmJDznVH7WUNCMSYsGdOpKznzJfZglGxA06Ngs1yb/EABoTo5XZhwpY
	7UIuh9ZOiPbpB+T8xMwU2ehrARctL36WBHbNJ9j9lGPwVI1lzyMdJI3q7NHMWBW3ISoum5FXMnk8v
	2xI4fcox49oJMsq1eGP/uKJMAOrDrH7gzeaOfHnbsAjBsSEDDnPC++VyMR2U9rDsWUGcfXQKNndMv
	pHPlxszIAvSCHjtNG9ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vay0Y-000000064Yg-0Zf1;
	Wed, 31 Dec 2025 15:21:06 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vay0T-000000064Xs-2ZwY
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Dec 2025 15:21:04 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-88a3d2f3299so129179246d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Dec 2025 07:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1767194460; x=1767799260; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iCsMgC1RHJ0xZHT2ayosqiToNS+TooDnH36P842rda4=;
        b=v4WiPQU1wAaEdVFH4ROwvQzdua0Bib54eoADhTstQWhd1flBnK1kN1oPvglWePH+6r
         QvzrITPyVZ+aMarPBcHP+S8AuME98wz4AuMWMcKOCHPjm5fB9xRXoAuCjiB9F8De6h7I
         iHgyMBIU0dGJCAn1rTf/7cVoFX062ryv1xG2i3SWKlEwY34N7EzlXKPgf8n7QT02fKrG
         51rt3mnb1C1pkZdzpreQi0QFFYVgqoYHV8GBr/JBXKZcjmIjpvj6bLe1zIfptHPulLBl
         0+n8XCSs3x6DEZWmxRZU5HvSyYM2IxGNY1wYF4rRlx5nmSbsKpxfMzbISglLaCRO8FR4
         /psw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767194460; x=1767799260;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iCsMgC1RHJ0xZHT2ayosqiToNS+TooDnH36P842rda4=;
        b=VY4gNHEUDYbSXzXzTPErr+/fUBSwiyJMbFdzvt4poiQfNabV6HJmBR9njv2O0eBGb/
         TZlbWmXHRZtf3tGr4i24ljKfL6b22SGYmOLg3qzHl82HtKeaRPR748/33j3PTeH/3NJI
         zRoKr9tWC95C6VqwEzQ6tvKUi4GRiQLbdmQVX2JvrzH3A/1Ke5IyNeMZ+lLmjZECWD1n
         muzi1BVxKQI66x12nGSi1vyef+Fg1LI5uy7GWsOG/utZWiX+EenTG2MU84zcv8YBbUsG
         fmq4trVdsPV+A9Y2CvZ+2CcrBggjIKy3eMnYLi/BrxQVpNgUt/0SjcxeD0DP331ZPMxH
         X1DA==
X-Forwarded-Encrypted: i=1; AJvYcCVcv+6PfzP9rzmkrjZQtDv9XeQ6RY9COzbjay2AOP5H9boBThEKBo+vbvU2JOGkiPaEZgT8loQGUhyZjU8nng==@lists.infradead.org
X-Gm-Message-State: AOJu0YwMiHJB24fsCxzAwB68snpIsDwLJXqpZl9pG4MFyMGIpxTLXhtO
	qkE9ELbaoHLNuskdpkUYJoQEvKIHY7d6z4OcWyedIYSjSJtnCSpbtvETSJDxjJ0PgA==
X-Gm-Gg: AY/fxX4ABaz+cLBv5S/Z28PNuBNooxzmRfOI4goPyAD1vBv28HALo0PK9Uw9YTIMwSy
	WfceT8D34J/HHkBwJ/hYcSOVWeAERQ2boPHY8ZpxgFg2c62J6RVfKKd1wHhOqIbrC04yGhVDqiX
	+LdAVZIKnJ5Z5NS1cfHs+qd76z6REvqBzI73P5sEnpYMTR21FSHDAK7365YG2ZM9lKfMT3zagMg
	zgnms5SwIKgW5JeESZ+ZzQf+176h7WreSXbC7CVK0P56/TjXjHRC+cGKUGh1h4mj/wXht4GTP+B
	Rt2sJPXncabXvNuaRa82I4bgrmtenE4awt48tpbozaiD6NZs+8uKYqps1YyTwxaIjy6PLgnSVRi
	I5EIGP3HPCXidu9eUCCY20ppDG6/53AhWxVlyxGQbAAmsQ1g2CBBb+lKLFAYlRgaHAQKTf7ZTxn
	7KjV5IlWgM+jYa
X-Google-Smtp-Source: AGHT+IGzcUj+q0xmvRBW/bmPF+mchNTCZWyYIyc4hZPOiB90Xz8x1i2LE/eY0oT3eC7aDYNsOokA1g==
X-Received: by 2002:a05:622a:4295:b0:4ee:bff:7fbf with SMTP id d75a77b69052e-4f4abcf6ad2mr525954221cf.4.1767194459966;
        Wed, 31 Dec 2025 07:20:59 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::7e72])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac62d53dsm271058211cf.19.2025.12.31.07.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 07:20:59 -0800 (PST)
Date: Wed, 31 Dec 2025 10:20:56 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Huacai Chen <chenhuacai@loongson.cn>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Shengwen Xiao <atzlinux@sina.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
Message-ID: <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
References: <20251230080014.3934590-1-chenhuacai@loongson.cn>
 <2025123049-cadillac-straggler-d2fb@gregkh>
 <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
 <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
 <CAAhV-H6drj1df3Y4_Z67t4TzJ5n6YiexsEHKTPvi1caNvw5H9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhV-H6drj1df3Y4_Z67t4TzJ5n6YiexsEHKTPvi1caNvw5H9A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_072102_045474_2CCA6A9C 
X-CRM114-Status: GOOD (  16.20  )
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

On Wed, Dec 31, 2025 at 05:38:05PM +0800, Huacai Chen wrote:
> From your long explanation I think the order is still important. "New
> connection" may be harmless for USB keyboard/mouse, but really
> unacceptable for USB storage.
> 
> If we revert 05c92da0c524 and 9beeee6584b9, the real problem doesn't
> disappear. Then we go back to pre-2008 to rely on distributions
> providing a correct modprobe.conf?

The warning message in 9beeee6584b9 was written a long time ago; back 
then I didn't realize that the real dependency was between the -pci 
drivers rather than the -hcd ones (and I wasn't aware of softdeps).  The 
soft dependency in 05c92da0c524 is between the -pci drivers, so it is 
correct.

To put it another way, on PCI-based systems it is not a problem if the 
modules are loaded in this order: uhci-hcd, ohci-hcd, ehci-hcd, 
ehci-pci, ohci-pci, uhci-pci.  Even though the warning message would be 
logged, the message would be wrong.

On the whole, I think the best approach is to revert 9beeee6584b9's 
warning message while keeping 05c92da0c524's softdeps.  Greg might not 
approve of soft dependencies between modules in general, but in this 
case I believe it is appropriate.

And so your patch really is not needed, as far as I can tell.  While it 
might in theory help some peculiar platform-dependent scenario, I'm 
not aware of any platforms like that.

Alan Stern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
