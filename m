Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15E84E77197
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jan 2025 13:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuiO0WEJgPcY1BBi1d0DVkq52eM1SQa7kRqG1sIIHac=; b=ILlfmFqj3DfMTh
	ic3h2Z61VCYhk0Pt/d67Jb7Twdq1Q3hAdMqNO4ekcgFOugf8/Ulu5M0pN200PGbJZtN1tT1xcSBdO
	e4J2qWIjJg5meu1SENUXzs3ETzGcdYGNOCHCHpY6nVoIW/2CfDVVW1jOpuFvn+a4lNwkR3QXplxQZ
	YwwnS5C/BPcqojdl5690riAVAxKX8/z1jMgQTdzcZzOuy1ALzMc306Pk0A0nzPoL8CS/klkwyNZDM
	XqLhwzISM3bAp6J6qk5TsZZdKsFTCW+Lnnfb8WIpgTkdbstO+R2JqzFqvsHwVqbPr891KN8wtUpiu
	IZpVF4hDJvRpvGbU2NKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV9VK-00000004yx5-2EIr;
	Tue, 07 Jan 2025 13:20:18 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV9Oz-00000004xLS-2ZsJ;
	Tue, 07 Jan 2025 13:13:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=TvCtZRn6q2yrOkVr53SYY2q+vLoe2lQ9suphlIdglAc=; b=XiTQokded4/20LkiEtgFMPQTon
	GQMLclhYTJJjBsn3umKCydHoX5+QzGoLJjUxO3385EVQymx8hF6WSsEYMNEevcLAG7ZZXxPydXWB+
	H/6jTdPjcs5GlpnEtqKu1bHnss3O/e0o+lbIliqiqA1JbkIYH+eE9b0t2w4pF/PxRxHU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tV9Oo-002EdJ-RP; Tue, 07 Jan 2025 14:13:34 +0100
Date: Tue, 7 Jan 2025 14:13:34 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Niklas Cassel <cassel@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
Message-ID: <c08f3d69-1f3d-49a6-96ac-0c2f990f9a8d@lunn.ch>
References: <20240809073610.2517-1-linux.amoon@gmail.com>
 <Z3fKkTSFFcU9gQLg@ryzen>
 <CANAwSgS5ZWGTP+A11r_qFSrjWZH_DqsM89MLiP+1VAxhz+e+2A@mail.gmail.com>
 <5a3e8fda-f9e4-4c2f-847b-93f521b8313b@lunn.ch>
 <CANAwSgSUuEvJb2Vn58o0i7Soo3jGzM8EYHvDtUTPxRHekCpruA@mail.gmail.com>
 <c94570db-c0af-4d92-935c-5cc242356818@lunn.ch>
 <CANAwSgQ_gojVxvi_OyHTyTSdzRrno=Yymn0AdEXyTHTgDTyFcA@mail.gmail.com>
 <Z3vGXrUIII4ixNnF@ryzen>
 <b49e6147-32c6-4239-bdba-72f25ef04a9f@lunn.ch>
 <CANAwSgQqPREeFQisQZXqB52+w+j54Bwq4RMiHf3qUTXmnTxCAw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgQqPREeFQisQZXqB52+w+j54Bwq4RMiHf3qUTXmnTxCAw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_051345_650946_9A6BD11E 
X-CRM114-Status: GOOD (  11.22  )
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

> I was just trying to understand the call trace for mdio bus which got
> me confused.
> 
> [0] https://lore.kernel.org/all/Z3fKkTSFFcU9gQLg@ryzen/

There is nothing particularly unusual in there. We see PCI bus
enumeration has found a device and bound a driver to it. The driver
has instantiated an MDIO bus, which has scanned the MDIO bus and found
a PHY. The phylib core then tried to load the kernel module needed to
drive the PHY.

Just because it is a PCI device does not mean firmware has to control
all the hardware. Linux has no problems controlling all this, and it
saves reinventing the wheel in firmware, avoids firmware bugs, and
allows new features to be added etc.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
