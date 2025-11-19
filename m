Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E72CF34B5
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 14:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=noxNxd/5nxk+7ADO558+Fh3mE9sBzQNpTpBtyCDXUgY=; b=vR2VjmiO9N2SZX
	Po2S7qPYRnYAxmBGx5j43h0W+W6XwhsGDCNPTOgxU7GfL7bH3GyzMr2SQ4h/1RBCJ+cQhVct31n7N
	yKor4B8TVYxyD7PxEZG05OgeQjXKFroi9MKDuZzK+vG6aXrtyfsjLRsO9sGRcgOjehNG9Wk5nSBTI
	bLHUQqE2s3itZ66ON5nkv1qoR0AxJGmE3JlGtShQT+BehGs5z8WU1FxmpiZQRo7Jq4Qal117FQ0ju
	0QOnqEgaXXSdvcNGUcNGZa3gq9ST7RqIJgL63wBw4pT7wIvgmCLokuitpqnHsZqbVJ11QXqmEYRBs
	2ja8oSGFuE8ABwZa/IQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLj1r-00000003MV4-0TB6;
	Wed, 19 Nov 2025 14:19:27 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLj1o-00000003MTx-0vbo
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 14:19:26 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-640d0ec9651so1982953a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 06:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763561962; x=1764166762; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vr1dpfGNw8l/5vNvUXIIntV65WtBCu9bD5JykGnKkMc=;
        b=BRDp2b544F6bXtq9Y6iZQFgjVC19X/jtFiDizsFo2tsZx6ms3I4UOPpc725O3QBmDT
         VBCw7kF44i4KO7zlmX/xUGo4oPEovCN48cP78X0qZSNNTkUIsBi+fG0YiL3cpag/ThQ9
         0ozZFmQCe1gEbRZC2ptO+KN1LOv5+PWBRWBN+MtFz2bz6Vsi0rZ4RWxqs5dTWpER9Vvq
         CKsQiwV6pni/gCIlS2BSeXHdju2SbH8dr3k4Ma6ugqO8WyoCLKipOmPagI1J/uwj+By+
         uc5duwZ6vBJ1MgCofbSEn8eEolxv4NLgGSEmb2R2/HBGNrr3sQy3ALtqSlqGE/ichQgS
         BbUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763561962; x=1764166762;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vr1dpfGNw8l/5vNvUXIIntV65WtBCu9bD5JykGnKkMc=;
        b=WVNKghVNhnbqB561USpGkDPF0e0BMOWQMWJ6v31k5Z+OlX+hYnVkcPaDpSt53B1rIN
         H/ZU1Fl1bOZZiL+meDenVE7JAX+Tn/ln8rMPA7Hav4rTmQixaaD5F2C5tzoiIeerIVSi
         MiYf1geiVopvczNFHlXny/tKUnFHO/EQRlD2CfXT2QDEyZP2jjPw58K3hfwVv7SqOO05
         rJWoeMDzSDPucLRicBUwVVGFF9id5SQOUv2+xHhsXk6o7gwjb2e7Pb4n4ceYVesb2hJP
         CdYCCRrlYQeBkwv2yhrE8K18+vl48asAOQSWr3rB/Es0/Osh00q3pHaW7jmZCGuYdpD5
         XQ6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUTgo8xOiXOLJbwSOQQuuiaGhkDDqSTPuzVPnyKuGtFYH/cbxk8BeSlXw7kntTwztWy8fGik9q52Alfi0SH0w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwMiBicQl8McceeEONjTnhyY8ppolCglPhq0v/Q9w0dhrPUgRdY
	+PGkQMMXUQIO3UyN62zEH5JbaJdI3JQGao0v9uKT8gu/PUep86JtIxEvfGlTRsQMBA9nnYmGHy0
	pba83gM686anpCQcrCNIIxcMBlxNGLn0=
X-Gm-Gg: ASbGncs8H2VAFCV0ATLgCiY5MwQhmygoQZPgLNQ1GHU0Ygw1fIHMGdsCQA7i5lMQn+M
	AeSL1fEzyOYmJcQtQeanPEWdvse+gleIuvl2Q34etFnHkG+7dMQAJ6u/xYnM0Fom+Ped0OWFagM
	Z/8iBYyb0ARwskNDOZHMoOCDMHU/64hJfiDQxESSF6piCNm678IH6w2xzL2DrHOa01pvhpLthqH
	QhHh8fMdVPpHJxT2UYREhhqQpiqBvMNiaX7wb0RiQlXrQCH3ke+1L+++G3+n1Wgvmm6l1seeUkp
	gg7d
X-Google-Smtp-Source: AGHT+IGBygbukpk6yduRHNozh26lUY1eqFn3jw+WTJaKmU8sdnCUFf/GONmfLjz9RpF1iPIA6SIUQM2yIzIvhwxifFM=
X-Received: by 2002:a05:6402:518a:b0:641:2a61:7da8 with SMTP id
 4fb4d7f45d1cf-64350e21ae8mr21299288a12.15.1763561961633; Wed, 19 Nov 2025
 06:19:21 -0800 (PST)
MIME-Version: 1.0
References: <20251117181023.482138-2-linux.amoon@gmail.com> <20251118175010.GA2540980@bhelgaas>
In-Reply-To: <20251118175010.GA2540980@bhelgaas>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 19 Nov 2025 19:49:06 +0530
X-Gm-Features: AWmQ_bkeVnYjjZY7uh-tqm_7FCTPYOF6ZeL5xaIPxi_RSTSTk__wtl2eB_qRL6c
Message-ID: <CANAwSgRHuwoQjr95sXp-X97=L-X3vqUPxjR5=2jNtFZA+4gnwQ@mail.gmail.com>
Subject: Re: [RFC v1 1/5] PCI: rockchip: Fix Link Control register offset and
 enable ASPM/CLKREQ
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
X-CRM114-CacheID: sfid-20251119_061924_295060_DEF32F4F 
X-CRM114-Status: GOOD (  31.95  )
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

Hi Bjorn / Shwan

Thanks for your review comments.

On Tue, 18 Nov 2025 at 23:20, Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Mon, Nov 17, 2025 at 11:40:09PM +0530, Anand Moon wrote:
> > As per the RK3399 TRM (Part 2, 17.6.6.1.31), the Link Control register
> > (RC_CONFIG_LC) resides at an offset of 0xd0 within the Root Complex (RC)
> > configuration space, not at the offset of the PCI Express Capability List
> > (0xc0). Following changes correct the register offset to use
> > PCIE_RC_CONFIG_LC (0xd0) to configure link control.
> >
> > Additionally, this commit explicitly enables ASPM (Active State Power
> > Management) control and the CLKREQ# (Clock Request) mechanism as part of
> > the Link Control register programming when enabling bandwidth
> > notifications.
>
> Don't do two things at once in the same patch.  Fix the register
> offset in one patch.  Actually, as I mentioned at [1], there's a lot
> of fixing to do there, and I'm not even going to consider other
> changes until the #define mess is cleaned up.
>
Ok, got that.
> What I'd really like to see is at least two patches here: one that
> clearly makes no functional change -- don't try to fix anything, just
> make it 100% obvious that all the offsets stay the same.  Then make a
> separate patch that *only* changes any of the offsets that are wrong.
>
Ok, understood.
> I don't think there should even be an ASPM change.  The PCI core
> should be enabling L0s and L1 itself for DT systems like this.  And
> ASPM needs to be enabled only when both ends of the link support it,
> and only in a specific order.  The PCI core pays attention to that,
> but this patch does not.
>
Ok, I get it.

> Bjorn
>
> [1] https://lore.kernel.org/r/20251118005056.GA2541796@bhelgaas

According to the RK3399 Technical Reference Manual (TRM), and pci_regs.h
already includes the correct, pre-defined offsets for all PCI Express
device types
and their capabilities registers. To avoid overlapping register mappings,
we should explicitly remove the addition of manual offsets within the code.

Thanks
-Anand

Here is the example. Is this the correct approach?
---
 drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++------
 drivers/pci/controller/pcie-rockchip.h      |  2 ++
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c
b/drivers/pci/controller/pcie-rockchip-host.c
index ee1822ca01db..af438d59e788 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -32,18 +32,18 @@ static void rockchip_pcie_enable_bw_int(struct
rockchip_pcie *rockchip)
 {
        u32 status;

-       status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR +
PCI_EXP_LNKCTL);
+       status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LC);
        status |= (PCI_EXP_LNKCTL_LBMIE | PCI_EXP_LNKCTL_LABIE);
-       rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR +
PCI_EXP_LNKCTL);
+       rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LC);
 }

 static void rockchip_pcie_clr_bw_int(struct rockchip_pcie *rockchip)
 {
        u32 status;

-       status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR +
PCI_EXP_LNKCTL);
+       status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LC);
        status |= (PCI_EXP_LNKSTA_LBMS | PCI_EXP_LNKSTA_LABS) << 16;
-       rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR +
PCI_EXP_LNKCTL);
+       rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LC);
 }

 static void rockchip_pcie_update_txcredit_mui(struct rockchip_pcie *rockchip)
@@ -306,9 +306,9 @@ static int rockchip_pcie_host_init_port(struct
rockchip_pcie *rockchip)
        rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR +
PCI_EXP_LNKCTL);

        /* Set RC's RCB to 128 */
-       status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR +
PCI_EXP_LNKCTL);
+       status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LC);
        status |= PCI_EXP_LNKCTL_RCB;
-       rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR +
PCI_EXP_LNKCTL);
+       rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LC);

        /* Enable Gen1 training */
        rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
diff --git a/drivers/pci/controller/pcie-rockchip.h
b/drivers/pci/controller/pcie-rockchip.h
index 3e82a69b9c00..3313cd8c585f 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -157,6 +157,8 @@
 #define PCIE_EP_CONFIG_LCS             (PCIE_EP_CONFIG_BASE + 0xd0)
 #define PCIE_RC_CONFIG_RID_CCR         (PCIE_RC_CONFIG_BASE + 0x08)
 #define PCIE_RC_CONFIG_CR              (PCIE_RC_CONFIG_BASE + 0xc0)
+/* Link Control and Status Register */
+#define PCIE_RC_CONFIG_LC              (PCIE_RC_CONFIG_BASE + 0xd0)
 #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
 #define PCIE_RC_CONFIG_THP_CAP         (PCIE_RC_CONFIG_BASE + 0x274)
 #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK     GENMASK(31, 20)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
