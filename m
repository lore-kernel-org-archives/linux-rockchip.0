Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DF52C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Apr 2022 09:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r67dUP2dgGRuqdKSmSbHlmceD90drzLS2aiXALEt97Q=; b=LHzavDt6MnK8Bg
	4H7M84RurYqAtPIP1H0ddWyNBUAvteunQKdnfvr/Hfqmewb8AItXOM8IZIDEu0/k1MALrt5+F2y6I
	haS4+DuG1OXe/l/SFKmEW7jI03N98iDXBPVjMlFeJzafQohW7n5KdOkjAa0Oj5JTacWLX9wdcj7R9
	SNX0RaQ7W+Ecs4MWkH+FzsqlFOKNz5cd9uPT88tcQUfOaNOYx7woF6xAJdjdont16O7U7a4DXGhxA
	3i89v/qCVNw2wNkQsTyIAYYFOf8MWXjwtF+r+8z+b8w+zKttaSs3OObXA0Sqo9yJTa/FZ9SssWtmF
	DHusgpTxbaPl/oiD0lug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ng0ti-00E9jY-95; Sun, 17 Apr 2022 09:08:46 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ng0tV-00E9i3-N0; Sun, 17 Apr 2022 09:08:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1650186483;
 bh=HiCerFGpE/ayU2rNlzN03bfcN/5dOTZBCfCNgKlWJ0o=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RF5LsLbH2pRh+HPMUdHXYyIBKr+lyPFri3MbyzolzXymfWSog757kCMGuw2EDSBPj
 gcp95NvBQcqc6iX/vCYQOvzo5AcGGQ6Hq0QeisYuj5/ex09d4/68Hob4Uk2OIVc3qi
 VDJacmm5WsMHG5GPWztGJXgqTW50DwwsiYJQAZ7k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.151.209] ([217.61.151.209]) by web-mail.gmx.net
 (3c-app-gmx-bs58.server.lan [172.19.170.142]) (via HTTP); Sun, 17 Apr 2022
 11:08:02 +0200
MIME-Version: 1.0
Message-ID: <trinity-a220fd81-2ee9-474d-bd65-505b9ed904b2-1650186482865@3c-app-gmx-bs58>
From: Frank Wunderlich <frank-w@public-files.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Frank Wunderlich <linux@fw-web.de>, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: Aw: Re: [RFC/RFT 4/6] PCI: rockchip-dwc: add pcie bifurcation
Date: Sun, 17 Apr 2022 11:08:02 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220416233047.GA938296@bhelgaas>
References: <20220416135458.104048-5-linux@fw-web.de>
 <20220416233047.GA938296@bhelgaas>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:2bpGmb0SGB/uw7Zt7eXuN4pld6iukRT7tzTTsFyOx4YULzjSB9kfUHZXHXv87BGPUG1fF
 Ea0IN1aJksF6SwZFzKGn4eBJIt3IH8e8T1HeghhbpvbIzv8UkKCIIfhdLOdPxJWBdK4fC8S5/ceS
 F8/4MRTjwu2r6Hj3MTb7GJJktcfcSXWinWqfZHoHhSCxqWiyf9nTJQ/nN7ADw+m5s3R68WLA30qN
 WVdjwONHPS4oTdl/p/ar5oVZO5LO5c3Vn3r/xfaicL03CI3/JTzMGZJvUOodWCpp2+/iwlnT16Tf
 Zc=
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZfuaCt4JPa4=:SvXYLMCMbDSlLrN7ezprt4
 om6bbWzv0yCV8/obOHIlm947NpThP8O54jmXsFPHcKL2NvznDfiM3GQhRGnJqIbb+DYf1P9pY
 UXLLKrWgrDEltMyrscIJO45o0UEgsA2v/s4VZhazYCVyoIVP1YtKwNUsD93MTCxOIgZsGw43A
 YVHzaE8EGaxXz6aG8LnmT5UWt3P9mOX6gBImUxbJvXMNESiW5w2rxseRIiKF8G1Ceb6xMx1sn
 RyhmRCA5+OcitHzHP3Ca4ySaRJkc6XQ3GuRbjsTlnOLpYXOzFM2N+xrQxxMWaq7Ej2FsuV56l
 i+vkfx+ecru+OP+ehU3+gKL2u2WWYWSCz6CViszAkU7Y2k8hD/L5OFLdJw5amTPD7hD6uYIIh
 CJ2Bhh8WeLtkWClvfVbDE7cgam5OBXrk0Aigg1IW0v3I1oMyn2Irg4RMJuu0d+ZIrkHMBugsK
 DqvVQwA3zzpECG+VksAFMasJn6aeZWzbA8BX7UiwvVrEOdSRq88w+VX6p8AimzTWyFOsLPA/N
 dPxW2JVnWp+nytRvRqaGm1bHG+t7oqWj7iuakk2M9AclYnAdh9gmNj7fUChOs6ZNQn5K16QjJ
 7rKsQeoFdW6pXJAOcn/V3hJuMVab5ONJOTxDfrfLDx3nzfggTeNMBIZWn1KqRtchmtqd062gs
 bNO1e6zHL/qIoovsuucAEKsd/6gPad5g+Lwd044BN05SRFUZvSv/lP1wvFYHoEgaNMF7MlTVO
 EzoOcTUrYdFi4moapEwgKPHby5l5b4lKrjxM0W5TbFjqvAWLie5e3zTzj758vCxZK91wAjGIX
 9Ennnk3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220417_020834_309850_5A864462 
X-CRM114-Status: GOOD (  14.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi,

> Gesendet: Sonntag, 17. April 2022 um 01:30 Uhr
> Von: "Bjorn Helgaas" <helgaas@kernel.org>

thanks for first review

> On Sat, Apr 16, 2022 at 03:54:56PM +0200, Frank Wunderlich wrote:
> > From: Frank Wunderlich <frank-w@public-files.de>
> >
> > PCIe Lanes can be split to 2 slots with bifurcation.
> > Add support for this in existing pcie driver.
>
> Please s/pcie/PCIe/ in subject and above to be consistent.  You also
> have kind of a random usage in other patches.

will do

> Mention the DT property used for this in the commit log.

good point

noticed that i forgot to add it to pcie-bindings  (rockchip-dw-pcie.yaml).

> Is the "rockchip,bifurcation" DT property something that should be
> generalized so it's not rockchip-specific?  Other controllers are
> likely to support similar functionality.

I do not know if other controllers support similar functionality, but i ack a property without vendor prefix is better. Should i use "bifurcation" as name or do you think about a different name which is more generic?

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
