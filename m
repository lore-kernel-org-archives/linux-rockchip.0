Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95A95CCF9EE
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 06:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Na4k7cIIFQS1TWY6FzVZc62QBvlqwT+D413ZH0RaMPs=; b=DjUsiuNvkm6on6
	5dK/p81r+Elsw4NOMAuZVBxyAEnz+KxAM4qutxeOCmb9AaBzRM/5XaETvNVceE1B119+SF0nrjU5Y
	flxt6BxOPSLROW/aRmBd2vE09YD+hsECj9d2islPAo+QlHQ9l2AMD04+yaOvJ8bk0cAHggfRhNuC8
	kEv9NaI2ovkuxA+n576NqHwzz0QzdUzkAJ0VuxkrxWOPFHXLwI/QeW8G7X860JD8pJuzuEi4PvpdE
	X/Ue5XqnpbDy5Cj/Ur75gzAHh5skXRQVK/drowHF3StdX8AT8dMF1/PwxXjOrLFUV/t8yHUk0ATho
	/CzvN5oua5KKQeXWXcBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEj4r-00000005V8f-46O6;
	Fri, 31 Oct 2025 06:57:38 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEj4q-00000005V82-0MHl
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Oct 2025 06:57:37 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-63c45c11be7so3200124a12.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Oct 2025 23:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761893853; x=1762498653; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hF/sVbbm9Ao9b8Ns6PIrso6umKYBwwEUA+RHQF/p8WU=;
        b=PusivBd6dxkYzbGAwK29cTTmrnmWJkeOxq/efLkAc3GcgbQ/xshGsUyh4RGTZW+nHL
         Hjt9wuN1EUG+vL/vaXDEiVZp+rJTz7EfzIHBXmE3rpltbmzjvI6A+s9B6x9+Ek+UDQt+
         mEty+bDiWV/4QXjPIZE4vmFvV2oEhktLgLUAGAKM1IEsrHaK3UoNx/p+J99Sa0nRFIIu
         t5jOYsA9oYeNEDSMmPOeWN+1WG/xl+3wd/+umNiuJUqb6FQ4IUtH54VSnfxoeLv7/6Ib
         NTypIOA7D8KvpTDXaEKANSneTSKSnGiSDXv9/QWFN5MsMWZVplcmWFBWWeJ/3MSFRRZT
         QRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761893853; x=1762498653;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hF/sVbbm9Ao9b8Ns6PIrso6umKYBwwEUA+RHQF/p8WU=;
        b=KqhzOi3GNACrBZA2wkmIAdMdL36vY6z+69vlLuC0zOwBylK+oH6mGUa5SfAG19Jc+E
         oNfXWQI1rAXwe1MhL30eyoMcN5oB9lp8cWngmdE+Hg59oiQmjYenLPeYOdJQU8tNb+h/
         Zg2JVe/OOPfKlcvLp9ccuIjez59hCrz/+OAhx19vk+Qur7pGm3vl68UfLdhbcVT9mIP6
         IVcuR62APjE0Vg0sPZuPxf9bPHhH8EEgXzYDKynbR5mIiFgYKWRJ+iE2oPfkSoBaP5ny
         0Y9AcBgekR5spQBTVI0bHmYP+c/9DHavscqm1qbs7UvXAW4do63bnYfMURo7HX1oD2kT
         JnQg==
X-Forwarded-Encrypted: i=1; AJvYcCVPNmc8grRtKX6Nsvf6qWkmYjyWaV2JGjiHh17c9rXPeJFpRsbqAqbACQUNmV+Ht4qB/+0SygW8E9+MAsDdrg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwvxPvyuwPb7FebMNVLd9bWxlBsbWs1wp6x/pdHbXi5PFVMCxer
	blASCBI2mlN+sfDMrWanyxfeFPcQCt3Vnq/F2/roZwAz+e2lha4Wz8IxwZNMHtu66naMW7/Xmdm
	NG9vaAML1QVlWWttQS4aTWKerWWwmkDi/kjQu
X-Gm-Gg: ASbGncsElR1VyZa654+gaZIEETosFLfUjnH+GqWXGUFcQsSyKXaGCP/Q7hE2Gvn3mYP
	5tHtHQAYgyuxWJuQc0MjSotuelTA6capjQK9bgy7pHpV8O1zZZWdnDxH2oFRty6XraYJEDl/ZS/
	kLvHnmDOipCpCCFxUrxndW9RvWXGmO9PsmyvmQhG6Njak7YV2FVOQLj1k9A2b0M/XWV5PK5KdMc
	a5nuHsJJpaaW6QMG8KO5LaatE6SVuHdn0rw7zO63RiPoj3FTJWMvmXXreJCzPhsilk17A==
X-Google-Smtp-Source: AGHT+IFyei+klT+e0zDZRYAQ8WfZ4bnVZVHTeB/u6lCn4sY3PNMEr1huxXolqGu7fMkBJJ2eI8cU2oPW7PqE/lfnbIQ=
X-Received: by 2002:a05:6402:42d2:b0:639:4c9:9c9e with SMTP id
 4fb4d7f45d1cf-64076f745edmr1865815a12.10.1761893853181; Thu, 30 Oct 2025
 23:57:33 -0700 (PDT)
MIME-Version: 1.0
References: <20250905112736.6401-1-linux.amoon@gmail.com> <176085588758.11569.7678087221969106036.b4-ty@kernel.org>
In-Reply-To: <176085588758.11569.7678087221969106036.b4-ty@kernel.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 31 Oct 2025 12:27:15 +0530
X-Gm-Features: AWmQ_bkdpeuvODAhvIaaZqDfiic9UVZyJJONFz6Rrfy4AXRXj22BM3Tny4odqv0
Message-ID: <CANAwSgRjXS4V_Kpw5kaJnPA8f=18uN-MgfEQ5ErN3aFRqbJKfg@mail.gmail.com>
Subject: Re: [PATCH v1] PCI: dw-rockchip: Simplify regulator setup with devm_regulator_get_enable_optional()
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_235736_216689_57009BAF 
X-CRM114-Status: GOOD (  14.85  )
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

Hi Manivannan,

On Sun, 19 Oct 2025 at 12:08, Manivannan Sadhasivam <mani@kernel.org> wrote:
>
>
> On Fri, 05 Sep 2025 16:57:25 +0530, Anand Moon wrote:
> > Replace manual get/enable logic with devm_regulator_get_enable_optional()
> > to reduce boilerplate and improve error handling. This devm helper ensures
> > the regulator is enabled during probe and automatically disabled on driver
> > removal. Dropping the vpcie3v3 struct member eliminates redundant state
> > tracking, resulting in cleaner and more maintainable code.
> >
> >
> > [...]
>
> Applied, thanks!
>
> [1/1] PCI: dw-rockchip: Simplify regulator setup with devm_regulator_get_enable_optional()
>       commit: c930b10f17c03858cfe19b9873ba5240128b4d1b
>
I am looking to suspend or resume the issue. We probably need to
toggle the regulator
to maintain the power status on the PCIe controller.
Therefore, dropping the patch is an option; I will add dev_err_probe
for PHY later in the patch.

> Best regards,
> --
> Manivannan Sadhasivam <mani@kernel.org>
>
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
