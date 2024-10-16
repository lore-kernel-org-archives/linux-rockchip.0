Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72BA3D206AE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 07:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AW1Elb0BRi6MD7l41m2IQ4XtWttbVxdoWjSXWaXUvXM=; b=YQXRMo5Q8HI7N3
	t2moT5TwSlDhTmdGyIZOSjjozopyrcQyYkJDa7Nt20N2asKCTtdM7IOweSy7Et6VQcWOPrlNqAbSZ
	MRnBzBxUFIzpybfqHSjbsVHHKg/0GU5U/fiGqqOawU+YwijTJi6sc4OzElZ1K3NZAB58PL+tuvXsN
	8AdU0AQ+UNtvI4ZpC9c5a4cyaVzd3e2/kqEB/XZoDuCXK4QYNGpdZGx7AwWZmK1aJMn9K36Eudvve
	MRckdIABBNI7VgYocbrTcgY9Xtez81VbC8rqFHMp7Inzdm9sGNPrNqp2//ENAV8QSh3xKo7Zz6flh
	4NPk5yxxekLlObC4Krdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0yND-0000000AonL-3vCV;
	Wed, 16 Oct 2024 07:23:11 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0yNB-0000000Aomd-12MD
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 07:23:10 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-27ce4f37afeso2642462fac.0
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2024 00:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729063388; x=1729668188; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wd8Ym5tSSwsBLwbiURSvOdqd3ghlmcVdmxI2I4tPA/M=;
        b=F8GyiAYdHmYlj2na1fCEHHcHCutHYRNvop9/fi6DT3G7U7nA4vL+rUtPOCiCeaHmHx
         Yr3H62QCf0gm68XSRSd09MqpIlcJEFwH2FBAPaa8R5t86kMc/p+mxASlM2EQqcRgt/xY
         kGWwGuYbdV2GNVPXqHx6rUarSao1/K7EKQlpNnjtLXeHB0Q9tNhK+DVWhNdGdL0Skx/g
         HBEoxeNHv2yTXh+wy5LC6C636cpZO4d1haIGuiLr4Q7RF0Tnf0YPeNF5LcAGXdfE6r4a
         ULnTGwli5wBTqLIVqIZBAeLXaU92Peh5uDQT4G0IIBAi+DK49/9tdVooq/R3Ig4DnR9Q
         80ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729063388; x=1729668188;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wd8Ym5tSSwsBLwbiURSvOdqd3ghlmcVdmxI2I4tPA/M=;
        b=cG6RgdOfR9mAiIgMdWSFB2V7J59ESvTI2Bj+tg5J1GC68n+b4S4nHnFbdepGFNIwTl
         osQNE6saQzCR8hOB1i9iOkiVoD6B7Hmr/yBVvu+TRtXu94UW0OnKB1pVcCFDq9MMfbFk
         sPWv2s90EW57RG07McpN3WMddN5/s+44I/6U9dBBxdKLShZ7+JcpLTpysH3ZYiEgaxsL
         /bke2yDFziTwa3GSdci0qLWi/hGsLfpxNxLks8qRtVl46wJ3/ZniReJO/oE9ZDDBLOpD
         VmMA5USCDOrnR4eu9lyTu7WmT4TNb0sAYTxjdUpqo44A38POAioXImqJ9YNXzKd7z06c
         cc3g==
X-Forwarded-Encrypted: i=1; AJvYcCUTBUs9ZPlRCHCaBgNFJIDUrniU1CtobII1GxFDJkiaBRVJK5wjrLYfmJZGk+vHCBkJ3aJfXvYY8vhVc+IQ9g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxKF/yg0KhFIlg3pHHpAn+6ptvk2+xfu7nbzRKICHqDd4GUoO/J
	WXc+p28kehm3r+pNLZu/BuQToc0fSWvZ29AS6tj7nYRykGeV6St2FEKUdvJ3O9CsOPNO2WVI0Bc
	ULizggczP/zvYgQd1DKYEgH8Fww8=
X-Google-Smtp-Source: AGHT+IFIhDVUzESiMhhE/TlY7ASxMyIeK5VV3R4UKMzydpDPcQNVh9fJvlWSotSf20vztJje3Bo92Hxhu9h8zoCR9Hw=
X-Received: by 2002:a05:6871:2504:b0:288:eff4:49e4 with SMTP id
 586e51a60fabf-288eff44b5amr1179295fac.4.1729063388169; Wed, 16 Oct 2024
 00:23:08 -0700 (PDT)
MIME-Version: 1.0
References: <20241011121408.89890-1-dlemoal@kernel.org> <CANAwSgQ+YmSTqJs3-53nmpmCRKuqfRysT37uHQNGibw5FZhRvg@mail.gmail.com>
 <f13618a6-0922-4fc8-af01-10be1ef95f0d@kernel.org>
In-Reply-To: <f13618a6-0922-4fc8-af01-10be1ef95f0d@kernel.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 16 Oct 2024 12:52:51 +0530
Message-ID: <CANAwSgRDbCCridYMciq=xSDPV0qGhs-OhCJ_uniXFbp-yM5CcQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/12] Fix and improve the Rockchip endpoint driver
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	Rick Wertenbroek <rick.wertenbroek@gmail.com>, Niklas Cassel <cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_002309_328361_FA682EE4 
X-CRM114-Status: GOOD (  23.93  )
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

Hi Damien,

On Wed, 16 Oct 2024 at 11:45, Damien Le Moal <dlemoal@kernel.org> wrote:
>
> On 10/16/24 2:32 PM, Anand Moon wrote:
> > Hi Damien,
> >
> > On Fri, 11 Oct 2024 at 17:55, Damien Le Moal <dlemoal@kernel.org> wrote:
> >>
> >> This patch series fix the PCI address mapping handling of the Rockchip
> >> endpoint driver, refactor some of its code, improves link training and
> >> adds handling of the #PERST signal.
> >>
> >> This series is organized as follows:
> >>  - Patch 1 fixes the rockchip ATU programming
> >>  - Patch 2, 3 and 4 introduce small code improvments
> >>  - Patch 5 implements the .get_mem_map() operation to make the RK3399
> >>    endpoint controller driver fully functional with the new
> >>    pci_epc_mem_map() function
> >>  - Patch 6, 7, 8 and 9 refactor the driver code to make it more readable
> >>  - Patch 10 introduces the .stop() endpoint controller operation to
> >>    correctly disable the endpopint controller after use
> >>  - Patch 11 improves link training
> >>  - Patch 12 implements handling of the #PERST signal
> >>
> >> This patch series depends on the PCI endpoint core patches from the
> >> V5 series "Improve PCI memory mapping API". The patches were tested
> >> using a Pine Rockpro64 board used as an endpoint with the test endpoint
> >> function driver and a prototype nvme endpoint function driver.
> >
> > Can we test this feature on Radxa Rock PI 4b hardware with an external
> > nvme card?
>
> This patch series is to fix the PCI controller operation in endpoint (EP) mode.
> If you only want to use an NVMe device connected to the board M.2 M-Key slot,
> these patches are not needed. If that board PCI controller does not work as a
> PCI host (RC mode), then these patches will not help.
>

Thanks for your inputs, I don't think my board supports this feature.

> --
> Damien Le Moal
> Western Digital Research

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
