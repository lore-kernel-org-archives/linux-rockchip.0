Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A7B1CED60F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 11:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpDnczUx0l4eA7OAOtcmkM8lYfXyLbDhVAPEdS294/s=; b=X28fHs21NXo62G
	Xe+TugUTq+XyoCOurGFLMOPJKOCsMPt9NUgB1bjmK5WYVuTqmEDc7htFdw6KAIuIg3Gl3xXbDvrhX
	Z/LvSBD9zxSribMwch1ZIPbiv2CJMZJIa5h7zn6N/l5dVdau0SNsFHEj1Rfe0lIMHwxpeaHnUBPWi
	V/b02zRUEpUracnTtUWeqaqLDyND7xFfkFuNqCaUoayejKvvL2xtZD5dl3Ku7Ae8VRd0H55xXKwAx
	Cggbg0abKu0TJbMhzNJb51GPYyD6XokvH5a4rE6cfXLZJwsxoxpB/Gck/Bf838M8oGR7mox9W0uUZ
	+T77ZQtzmd95sYSFy1nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLJhc-00000000K6z-2lWI;
	Tue, 18 Nov 2025 11:16:52 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLJhZ-00000000K5v-3LCl
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 11:16:51 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6419aaced59so7266465a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Nov 2025 03:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763464608; x=1764069408; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ICI58HqE+ly7YapWrb44Ml5uRJuKE+CUkOe4M7qjE5M=;
        b=QOq9cbPRCTQE+iCuYos8DhOy7bZuXGcf8KJdKur5vsa4CZpcELkCDHghc1/46APfJZ
         maYCNeT255v02uM3LsvHKNoya2kVCDTXL9nahSXBS5K77o/5M7hekoWZBeCoHxw+dOWS
         ZECinoVqmpPQQ5I2bA0+BffTNihgTmF1gPFLzVGxWml3TwYbpGki+2nFRLBANG/6H+U1
         qp9VY7bXWicHlx/tG4d1Bd9TgbLo7guJmK1QwkqLSkkKXPoqtOlprnkMKy4QRY8+6yVD
         6ZS4rfvgzgF5OljAyhyfDRKZRjdfzW6MgEUulP0DMac4jXSaMd+jAsnA8jXUgB1VBTog
         5PlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763464608; x=1764069408;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ICI58HqE+ly7YapWrb44Ml5uRJuKE+CUkOe4M7qjE5M=;
        b=fYUmufoLJHPLqej0ImJxle1KdhTDY/H5U+r6VeMctDAMe7+FRoSiiYQtbw4dYNl5SI
         FwwZyDUtHrEmqcay/TN5Avo9WepDg9PJs8Hkat/TYHjNHwDnCF67IxTK97lIuNfnfb5L
         XUiKYvTr9YDYv5hqT3GjNvgK45LJYwiyOWTDVRdfqkgKphwUhLwiuCcerC35N4pAZoh+
         UVxDagEPGUVUDZCZXrqYXdx7rrzFKhKmZqwWjgHwgVGHTEyKgS5NmyeJ/bojWNaAkGY8
         NiowdTIVL0hu1CFGN83zRppf2u1cdUgPGEwlRG3BIhB0zTO+GFlhSh2MYFgCpac5+dQH
         c8VQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmzRSE9VEAbr8m0v10swuJlP8JSZnHaz1JoEx7EQWcqOLsDUKvUpXnDphtBqiJ0aFPE9mymtfrA3mfZtRHpA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzUILJ3QrQJH+OppGzjwYhG6zXah1M0twEDemZTF7dpEZBqa9ik
	Q4Ookm/JqQTCSM2j5KkosSaZk5oUXs9T6WgjDM6sP1YXGo1GqB+Vzr0uOuZOMf0xotxdNkaVuX1
	G+YfdNPx1WRSj3wsVpTo429dgZwOnSyc=
X-Gm-Gg: ASbGncuzy0zlGlkIjVIBw/pWAnM+1f+XeISmoyxHBxpKG3vqP1FEGYGNA6HIEHZLSuk
	+dGyL1MjXzVnhJRfeh0iSsfGZjLbIqzMk09AGHNa3Sf/dgadM6rtzC8vi7/CwlvYneQVq5iCcBI
	1fmMeymOH9x9TB8fQ6WApNV3CzSfBvkEyVQ811MQN5xaFG8PG82Z6v44pEA3KlYBv6BD2KyXUvp
	aNS6RBeLLfvqiJQ35p8ZKFRbaLh07YTmq4EEhZpLTfQx+kXTvU8+vMGrPlHTAbIRaeQDQ==
X-Google-Smtp-Source: AGHT+IGk8eL0HoWbK04CZRhqLg9Zqyg4kUzMUvvqXtI9msvINBej1DvZVcQa01Y7VyQwGu9XDV2OL2RxowdJygXo/7w=
X-Received: by 2002:a05:6402:26d1:b0:640:ecaa:1973 with SMTP id
 4fb4d7f45d1cf-64350e8ccb6mr13827406a12.24.1763464607610; Tue, 18 Nov 2025
 03:16:47 -0800 (PST)
MIME-Version: 1.0
References: <20251117181023.482138-3-linux.amoon@gmail.com> <20251118005056.GA2541796@bhelgaas>
In-Reply-To: <20251118005056.GA2541796@bhelgaas>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 18 Nov 2025 16:46:30 +0530
X-Gm-Features: AWmQ_bksxI4TM_0iWFBAZwf_P1h7XfT3sMIf2tlbZ560ebj9GBa7XRzaoXRCoWo
Message-ID: <CANAwSgSMiRrPp5G+guGQSsqArz7M750NAg8SQoorUQ7gJhUxHQ@mail.gmail.com>
Subject: Re: [RFC v1 2/5] PCI: rockchip: Fix Device Control register offset
 for Max payload size
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_031649_879922_A9EDA7FF 
X-CRM114-Status: GOOD (  32.11  )
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

Hi Bjorn

Thanks for your review comments.

On Tue, 18 Nov 2025 at 06:21, Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Mon, Nov 17, 2025 at 11:40:10PM +0530, Anand Moon wrote:
> > As per 17.6.6.1.29 PCI Express Device Capabilities Register
> > (PCIE_RC_CONFIG_DC) reside at offset 0xc8 within the Root Complex (RC)
> > configuration space, not at the offset of the PCI Express Capability
> > List (0xc0). Following changes corrects the register offset to use
> > PCIE_RC_CONFIG_DC (0xc8) to configure Max Payload Size.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >  drivers/pci/controller/pcie-rockchip-host.c | 4 ++--
> >  drivers/pci/controller/pcie-rockchip.h      | 1 +
> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> > index f0de5b2590c4..d51780f4a254 100644
> > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > @@ -382,10 +382,10 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
> >               rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCAP);
> >       }
> >
> > -     status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_DEVCTL);
> > +     status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_DC + PCI_EXP_DEVCTL);
> >       status &= ~PCI_EXP_DEVCTL_PAYLOAD;
> >       status |= PCI_EXP_DEVCTL_PAYLOAD_256B;
> > -     rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_DEVCTL);
> > +     rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_DC + PCI_EXP_DEVCTL);
> >
> >       return 0;
> >  err_power_off_phy:
> > diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> > index 5d8a3ae38599..c0ec6c32ea16 100644
> > --- a/drivers/pci/controller/pcie-rockchip.h
> > +++ b/drivers/pci/controller/pcie-rockchip.h
> > @@ -157,6 +157,7 @@
> >  #define PCIE_EP_CONFIG_LCS           (PCIE_EP_CONFIG_BASE + 0xd0)
> >  #define PCIE_RC_CONFIG_RID_CCR               (PCIE_RC_CONFIG_BASE + 0x08)
> >  #define PCIE_RC_CONFIG_CR            (PCIE_RC_CONFIG_BASE + 0xc0)
> > +#define PCIE_RC_CONFIG_DC            (PCIE_RC_CONFIG_BASE + 0xc8)
>
> Per the RK3399 TRM:
>
>   DEVCAP              0xc4
>   DEVCTL and DEVSTA   0xc8
>   LNKCAP              0xcc
>   LNKCTL and LNKSTA   0xd0
>   SLTCAP              0xd4
>   SLTCTL and SLTSTA   0xd8
>
> That all makes good sense and matches the relative offsets in the PCIe
> Capability.
>
> I have no idea how we got from that to the mind-bendingly obtuse
> #defines here:
>
>   PCIE_RC_CONFIG_CR == PCIE_RC_CONFIG_BASE + 0xc0
>                     == 0xa00000 + 0xc0
>                     == 0xa000c0
>
>   PCIE_RC_CONFIG_DC == PCIE_RC_CONFIG_BASE + 0xc8
>                     == 0xa00000 + 0xc8
>                     == 0xa000c8
>
>   PCIE_RC_CONFIG_LC == PCIE_RC_CONFIG_BASE + 0xd0
>                     == 0xa00000 + 0xd0
>                     == 0xa000d0
>
>   PCIE_RC_CONFIG_SR == PCIE_RC_CONFIG_BASE + 0xd4
>                     == 0xa00000 + 0xd4
>                     == 0xa000d4
>
> And they're used like this:
>
>   PCIE_RC_CONFIG_CR + PCI_EXP_LNKCAP == 0xa000c0 + 0x0c
>                                      == 0xa000cc
>
>   PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL == 0xa000c0 + 0x10
>                                      == 0xa000d0
>
>   PCIE_RC_CONFIG_DC + PCI_EXP_DEVCTL == 0xa000c8 + 0x08
>                                      == 0xa000d0     <-- same as LNKCTL?
>
>   PCIE_RC_CONFIG_SR + PCI_EXP_DEVCAP == 0xa000d4 + 0x04
>                                      == 0xa000d8     <--
>
>   PCIE_RC_CONFIG_LC + PCI_EXP_LNKCTL == 0xa000d0 + 0x10
>                                      == 0xa000e0     <-- but LNKCTL was at 0xa000d0 above?
>
> And the mappings don't make any sense to me:
You are correct, PCIE_RC_CONFIG_DC + PCI_EXP_DEVCTL  results in an
incorrect offset.

As per my understanding
#define PCI_EXP_DEVCTL 0x08 /* Device Control */
#define  PCI_EXP_DEVCTL_PAYLOAD 0x00e0 /* Max_Payload_Size */
#define  PCI_EXP_DEVCTL_PAYLOAD_128B 0x0000 /* 128 Bytes */
#define  PCI_EXP_DEVCTL_PAYLOAD_256B 0x0020 /* 256 Bytes */
#define  PCI_EXP_DEVCTL_PAYLOAD_512B 0x0040 /* 512 Bytes */
#define  PCI_EXP_DEVCTL_PAYLOAD_1024B 0x0060 /* 1024 Bytes */

What I was thinking about was mapping it to a register to offset the
Max_Payload_Size (7:5) at PCIE_RC_CONFIG_DC (0xa000c8).

Sorry for the noise.
>
>   CR -> LNKCAP & LNKCTL
>   DC -> DEVCTL (ok, this one makes a *little* sense)
>   SR -> DEVCAP
>   LC -> LNKCTL (would make some sense except that we have CR above)
>
> This is all just really hard to read.  It looks like if we defined a
> single base address for the PCIe Capability, we shouldn't need all the
> _CR, _DC, _LC, _SR, etc #defines.  E.g., we could have
>
>   #define ROCKCHIP_RP_PCIE_CAP ...
#define ROCKCHIP_RP_PCIE_CAP (PCIE_RC_CONFIG_BASE + 0xc0)
Is this ok? But the current code uses the same.
>
>   rockchip_pcie_read(rockchip, ROCKCHIP_RP_PCIE_CAP + PCI_EXP_DEVCAP)
>   rockchip_pcie_read(rockchip, ROCKCHIP_RP_PCIE_CAP + PCI_EXP_LNKCTL)
>   ...
>
> with maybe some minor adjustment for 16-bit registers since Rockchip
> only seems to support 32-bit accesses (?)
>
> None of these registers are *Root Complex* registers; they're all part
> of a PCIe Capability, which applies to a Root *Port*.
>
Ok, I understood
> >  #define PCIE_RC_CONFIG_LC            (PCIE_RC_CONFIG_BASE + 0xd0)
> >  #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
> >  #define PCIE_RC_CONFIG_THP_CAP               (PCIE_RC_CONFIG_BASE + 0x274)
> > --
> > 2.50.1
> >
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
