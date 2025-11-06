Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A9B7CCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 19:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMK5xFZDh0TEya7x9V+M8LIJ3hLuxKcCj0Vj0t3MaxY=; b=0HJ0wZ/WA1v4Ah
	UBNSDjh9pgGwA68EROccNqo/FCEB0TqEacUmR7aViZ1mkLmJejl0oGXvv+ElF53Y2T0U48AicRzTR
	rQIhOAs1ZZ7mnbd3nRgKEXuCxOUhVZ3TL3niwCwbgZCw4uVlcbiFBPskS0AZ64IbPH5EVZeTUCuD1
	CrEJV0N24j+Q+4P4lG2LjBUd14b0SFsY22bcAf7Z9Nfw56t3krY7DUdw77KP6grWjOHsDooOZ8gux
	CJTPbNfV/sb0CrcVawnhJZ/hvrcbQ9HxAM6pRaGubT+YaILDRWvDI4c0gkeA4OzU0jTjXGoXBW0+6
	tE/uwarxEd2dvD9LmEyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH5Em-0000000G7Sv-3jz7;
	Thu, 06 Nov 2025 19:01:36 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH5Ej-0000000G7S2-0LEa
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 19:01:36 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-640860f97b5so2056006a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 11:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762455691; x=1763060491; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rmBA/KK70v6rBVGjZpKXDIBM4WBJIcvL/O3YLKuQiHw=;
        b=kNHTG8VOYpAK4ZiRFn2pgjuwQ5Bww41ySZVlG7EtWdzIIMFEpwsRiaQhS1p55o44Rw
         syd9/4OsEJhxfho4mC1JBAM4skP/tPVX58WKeChB5F8pyxLZqaAzDFegMIi8OyhMeEKt
         DJpdkPtgwYBFcOwnbPtvbUX2MMn/nS7dbsmH9ipVWPBTAHaOj9KDSOPaBttsRgnrXb26
         5onOyj+OSwcop0t7TGO/656sLNd9kZIAbIPwqHI7sh+6yG0orcqjnVdeB9IZxoMajh3F
         uLS8kC53LGrKLm+fBconQCSkIl8/l1d5Bzsb3AEd1/XqR0ej0ieqrfIo9p3/t+RpzEjB
         3qqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762455691; x=1763060491;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rmBA/KK70v6rBVGjZpKXDIBM4WBJIcvL/O3YLKuQiHw=;
        b=LdPdORS0lt992dQoir7IeFKeyT1p94G+ItiaG8LcNIcjYXy3zZlXf4h5fEEuuJooK2
         79Hv42QeGn7Z2OxW2j7LWgoGbeRrGuQJAlRDOZ34RPYwhXEzh5fZqni8n3yLAaQBYXws
         EoGKtB7BAR0wBvJLtHLXwdKNH6OkKrcDUx5zoFopby9lVx9TZBigGmVjzokhrr287Jdj
         Z82V8wZ+rCl6UOOTD4aEJd5gwvPMmC3Jy6GG5s5+DBdnoJG/P2Fd88H9J2r4sf9ZOYhS
         6HTEBg09G+qrb0A4gQe9RTSvNRxA+Cjq+vFL1XIGdvBEHyqoWfOwPv/KRlGzMgDTPMXY
         s7jg==
X-Forwarded-Encrypted: i=1; AJvYcCUJTYcfOBJO+Ie9b/7wyxIrDQHYaxlSkThfkb4Vi1K+tgmbZ2mxGJPMxkzpq7oT1X3u7zilXB6SHjk2GP5uaA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0sKBh0/cchvtJYEiMUM6CshzyNMYKSZHXTgU3EqpX/mqHw/eu
	ytJq0RJGdjwEJ9gTN1L4JpYcy/nKjpm9HucYsS+FyqUqMT/eqAAHnuUdM+ZqTbBodM3LVfRCeJ5
	5UG9wvG3IkYNY1gFAr7wj3xApZe8Jsxw=
X-Gm-Gg: ASbGncsa6Y3mR+6V0Ue5XyAjE1UB94beTzLzn89aApr7HdqPW81LhvuYpVyslAQGEup
	g7Sr0alM6pF8MjMf6Pat0U0cxRmITKStKOtKmTbJ/YNyCm5cbA+ytwKT4MbY89zGdXgR65HppXy
	uRE/4/pI7fTBcvWB3IiwT9eEwgHW2oQdxcnbqQYPBr7anqSGDBTFXc4cGzvZ6nD63lq8VurYEn8
	lAbi/sbX5HPh0u8y19lv5O5b0G4T6wSaeWKGD6M5GGT2PClJotxNyfnTzg=
X-Google-Smtp-Source: AGHT+IH+Y4Mu5BYHnpAhpDDYEu9pnY0g5fsOj+T+jrFEJrqRN2a3pdfy5tPNDE4xFkznVewhY7OLbh6GTw5tCYHmiBc=
X-Received: by 2002:a05:6402:26c8:b0:634:ce70:7c5 with SMTP id
 4fb4d7f45d1cf-6413f063506mr466646a12.17.1762455690583; Thu, 06 Nov 2025
 11:01:30 -0800 (PST)
MIME-Version: 1.0
References: <20251029-rockchip-pcie-system-suspend-v4-0-ce2e1b0692d2@collabora.com>
 <cf6zumlp4iiltglu7bbrpdeysaznrkyvlemwl4lxwkfjkgux7a@wl37bxilsprx> <cbvcjgcd7saxj42ifgqn3l6mwpgenlhbr4zuf5ibqbtj6rmzqh@yuc7flbwyi2y>
In-Reply-To: <cbvcjgcd7saxj42ifgqn3l6mwpgenlhbr4zuf5ibqbtj6rmzqh@yuc7flbwyi2y>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 7 Nov 2025 00:31:12 +0530
X-Gm-Features: AWmQ_bnqyEL1PybATXbJIxvw3HT9eVFRywU_mWpf-A2S9gMDT2HPtzblvdFHBN0
Message-ID: <CANAwSgSvtc57kh-VJewk5=_MvfL3KVxNFU8C+tGh4iqJhnEVtw@mail.gmail.com>
Subject: Re: [PATCH v4 0/9] PCI: dw-rockchip: add system suspend support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_110133_143099_35F09C1E 
X-CRM114-Status: GOOD (  30.77  )
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

Hi Sebastian,

On Tue, 4 Nov 2025 at 00:29, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Sat, Nov 01, 2025 at 07:29:41PM +0530, Manivannan Sadhasivam wrote:
> > On Wed, Oct 29, 2025 at 06:56:39PM +0100, Sebastian Reichel wrote:
> > > I've recently been working on fixing up at least basic system suspend
> > > support on the Rockchip RK3576 platform. Currently the biggest open
> > > issue is missing support in the PCIe driver. This series is a follow-up
> > > for Shawn Lin's series with feedback from Niklas Cassel and Manivannan
> > > Sadhasivam being handled as well as some of my own changes fixing up
> > > things I noticed.
> > >
> > > In opposite to Shawn Lin I did not test with different peripherals as my
> > > main goal is getting basic suspend to ram working in the first place.
> >
> > Wouldn't it break users who have connected endpoint devices and suspend their
> > platform? I don't want to have an untested feature that could potentially cause
> > regressions, just for the sake of getting basic system PM.
> >
> > But if your goal is to just add basic system PM operations for CI
> > testing, then I would suggest you to do something minimal in the
> > suspend/resume path that don't disrupt the operation of a device.
> >
> > But this also should be tested with some devices for sanity.
>
> My goal is proper system PM support, but I would like to go step by
> step. Right now system suspend on the Rockchip RK3576 EVB just hangs
> the board and it has to be power cycled afterwards. In parallel to
> this series I've send a bunch of fixes to get it working. It surely
> isn't perfect, but I fear things regressing again in other areas while
> the complex PCIe system sleep is being worked on - simply blocking system
> suspend is not very helpful, since it effectively hides suspend problems.
>
As per my understanding, the current DTS configuration is missing definitions
for critical PCIe power management GPIOs (clkreq-gpios, perst-gpios, wake-gpios)

clkreq-gpios, such as PCIE30x1_0_CLKREQn_M1_L (not sure if it is used ?)
perst-gpios such as PCIE30x1_0_PERSTn_M1_L
wake-gpios, such as PCIE30x1_0_WAKEn_M1_L.

However, the RK3588 TRM indicates that these power management functions
can be controlled programmatically using specific memory-mapped registers:

The PCIE_CLIENT_POWER_CON register at 0x002C provides comprehensive
power management controls, including link-state management, wake-up
event handling,
and clock management.

In PHY GRF, we have the PCIe3PHY_GRF_PHY0_LN0_CON0 register at 0x1000 allows
direct control over the PHY's power state (P-states like P1, P2),
enabling transitions into
deep suspend (L2/L3) via register writes
clkreq_n Clock request for lane X. This is a side-band signal that a
PIPE 4.2 controller needs
to enter and exit P1.CPM, P1.1, and P1.2 power states.

My thought is that using rockchip_pcie_phy_deinit() in the suspend
routine and rockchip_pcie_phy_init() in the resume routine are
incorrect; these functions
likely perform full resets or power cuts rather than managed power
state transitions,
thus disrupting the desired suspended state of the PCIe link

I tried a few things on my own, but I am not moving forward.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
