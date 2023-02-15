Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92764C636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 09:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2XZ0NC1UJsfPWSZAB9v0RyC2l5MuETCtF0sun3eEiw=; b=h/oFXnbAgvabSV
	IoBSy0PlY+pj9gHDaXnNf6ghySjRepEckCj9r84dEwf+oSqwX4kUeXX49m4CAWHuC+l9WVOze6GCE
	OHjZGckYziGHaIfXtmlNfXD7mHVj/P5qY0iDAdwW2734cAbURl5GPQSE7jhd0SSlEkCGtLjOhKRDp
	AnGE2e/pF1w+Z4klkD+Eom2WPVr9CmjxTn4CukQDW9Ke71Agy7Bi0Vu1Sqv97nE++D5D3+/KCMZNV
	VKiBk9O64BTz9jadP7toTkfP++uIij04zz2niW5Zv84Fo08no7Cr4CRhEJSit4tWwCY3O7mUZPCMU
	dQWJgXbP4ckGRdnraOGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSDic-005Fou-Ef; Wed, 15 Feb 2023 09:04:50 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSDiR-005Fmt-GV; Wed, 15 Feb 2023 09:04:40 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-16df32f2ffdso11480276fac.1;
        Wed, 15 Feb 2023 01:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uwa6xK/yGoAax/0OsXHRKw57tyZBvF5xhqokekA1410=;
        b=GDNghYFolCi/Hr9GJz4CtFq5HIGPlsnHond8PtR6gzV+AKOQI0c5ta1t8Ys+Vo1+1+
         LqR0SIWfHg+uDEfxg3zJoWLWm+ItSFe3B/rEqWrQZlX8B9RIJfiCtFlsbhgzY8FgqvEi
         alHGClndUJRnWimlqeV7L6aFizOTLqkXT5HyOUbMaVK7Vy//g4Mmwg5Q36vb4NCDj/co
         B07mudnoacRsfm9fjD1ljLv2fMgc/j3hXmfPcMJScf97NTnxM8z5LIiQoFWpSKwojuo0
         OCM9Zu/SqB1cpmsXSsKi9j4VQqxFPXnlpkqwRp99noQIh0KsEt4vaXVB2SobFL1Q8SNP
         cGXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uwa6xK/yGoAax/0OsXHRKw57tyZBvF5xhqokekA1410=;
        b=MCm4TSvio1yMF7bY7OU4pFT+/x98JdYQM6Hc5zrRfTssbVTg70kO32+saZX5mgmrwE
         DWpFDUcy1MXt4FVcQ1OMDL/PmfCH5pNl1tkzjlwPF6evqaZ1d42/W+trn2T1cThVPfeZ
         t1ui1JEXqJ9sna/mvE4If7uWqQIDRGB//BhOkUigG95b7MIQ1062evQpkdr0yodahyLi
         L6OQocK4S6C8a5sJTtXOrITx09O1px53uuT+CXd3z4c4IZdSFKEFV15hLtBrIiRRR9Cz
         IqIgfeoOOc7dSnwDz/Gik1eqQJdmHTLpM+0ITndxaL/RaqOsiYKMAntsCFitHBKhvU67
         X8IA==
X-Gm-Message-State: AO0yUKUKzqtOhushDs1WEtQErV8O46zUlNRAeqgmk7Ob4bfOydLg69SC
	BQMGu5wBLxZMN7DA9a5pl+He+pv+AvYcpmJ64AA=
X-Google-Smtp-Source: AK7set8M3FNYNbgcQtYa5GBece8pIU/sBsIHK/rNnMAtR/NLp0PkALLbNqbe2utTTajf92iToM7B0At0xEH85Sc6K/0=
X-Received: by 2002:a05:6870:10d7:b0:163:9dc0:78f1 with SMTP id
 23-20020a05687010d700b001639dc078f1mr206361oar.265.1676451876492; Wed, 15 Feb
 2023 01:04:36 -0800 (PST)
MIME-Version: 1.0
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-2-rick.wertenbroek@gmail.com> <2ebd33e2-46ef-356d-ff4c-81b74950d02f@opensource.wdc.com>
In-Reply-To: <2ebd33e2-46ef-356d-ff4c-81b74950d02f@opensource.wdc.com>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Wed, 15 Feb 2023 10:04:00 +0100
Message-ID: <CAAEEuhr273bKFBWiTVyTjhHhxjuTK=TVd+5K2B07WfWMD+N7mA@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] PCI: rockchip: Remove writes to unused registers
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, 
	rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Mikko Kovanen <mikko.kovanen@aavamobile.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_010439_573115_5DBA6448 
X-CRM114-Status: GOOD (  20.05  )
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

On Wed, Feb 15, 2023 at 12:56 AM Damien Le Moal
<damien.lemoal@opensource.wdc.com> wrote:
>
> I checked the TRM and indeed these registers are listed as unused.
> However, with this patch, nothing work for me using a Pine rockpro64
> board. Keeping this patch, your series (modulo some other fixes, more
> emails coming) is making things work !

Hello, Thank you for testing the driver and commenting, I'll incorporate your
suggestions in the next version of this series.

This patch alone does not make the driver work. Without the fixes to the
address windows and translation found in [PATCH v2 6/9] ("PCI: rockchip:
Fix window mapping and address translation for endpoint") transfers will not
work. However, as you said, with the patch series, the driver works.
Good to see that you have the driver working on the rockpro64 which is a
very similar but different board than the one I used (FriendlyElec NanoPC-T4).

> So I think the bug is with the TRM, not the code. THinking logically about
> htis, it makes sense: this is programming the address translation unit to
> translate mmio & dma between host PCI address and local CPU space address.
> If we never set the PU address, how can that unit possibly ever translate
> anything ?

No, the bug is not in the TRM:
The RK3399 PCIe endpoint core has the physical address space of 64MB
@ 0xF800'0000 to access the PCIe address space (TRM 17.5.4).
This space is split into 33 windows, one of 32MBytes and 32 of 1MByte.
Read-write accesses by the CPU to that region will be translated. Each
window has a mapping that is configured through the ATR Configuration
Register Address Map (TRM 17.6.8) and the registers addr0 and addr1
will dictate the translation between the window (a physical CPU addr)
into a PCI space address (with this the unit can translate). The other
registers are for the PCIe header descriptor.
The translation process is documented in TRM 17.5.5.1.1
The core will translate all read-write accesses to the windows that fall
in the 64MB space @ 0xF800'0000 and generate the PCIe addresses
and headers according to the values in the registers in the ATR
Configuration Register Address Map (@ 0xFDC0'0000).

Translation does indeed take place and works
but requires the changes in [PATCH v2 6/9] ("PCI: rockchip:
Fix window mapping and address translation for endpoint")
because it was broken from the start...

The two writes that were removed are to unused (read-only) registers.
The writes don't do anything, manually writing and reading back these
addresses will always lead to 0 (they are read-only). So they are removed.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
