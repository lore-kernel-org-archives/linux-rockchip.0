Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45BFFC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 17:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mcTlRiuysWTz394cYTaWzvNWLR08BomCImQrEBeesM=; b=ov0fqrgU40bi25
	xsCjTE6zWnZODN+IewHVlSzCQl5Mf2zqCJjwlOlMfZ9BjkH8dH86UKTCeLgoOIREU6y7FOl1Um5lI
	w2Dl+Ex1Ev0mKp3yhBkf4EPG1V9nrm9kCugqEu/TYFL0gH5zp/bBXjrrF/kyOf/zRURRF1iaxvi96
	LOG51KaK5s0AUHNxEfji/n6ax6oNA2N4hQiUhVbkseCzZmkRgGDAJl4O74ROtBGLsbrAtq3NuMsBG
	cHWtyMMKmna9cBTfOuHqErivdD5XNNIZFFBVzwPy3VP+bStzS8AjKxYJ43novakJyPvdEmXwVrBh+
	tEzIaB54ogfzBb1fWBEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOjQ0-00DRMy-4B; Mon, 28 Feb 2022 17:02:40 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOjPg-00DRDw-1q; Mon, 28 Feb 2022 17:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646067719;
 bh=k0F6SvpCnls0O/0DV0EzovTEbGLpabyeCkX8dCik5jo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Fc/tFMfnhnLQjv5kZ7pSXE/dQgPU6KhkZPWtyb2CPNrs8kEcT1pogOrMaJ1lYmnvV
 VdV1pBsK9814RNDWLpRKOBHND+OQRGoU22oQE0wCOe25FywrkoNiZluWk8uZIFiZ7L
 W0fjGQWyv+b8+xkqPBVGsfLlqVJO6oH7BDvJKgWU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.12] ([80.245.79.12]) by web-mail.gmx.net
 (3c-app-gmx-bs53.server.lan [172.19.170.137]) (via HTTP); Mon, 28 Feb 2022
 18:01:58 +0100
MIME-Version: 1.0
Message-ID: <trinity-bfe6b2d5-52cd-458d-92b2-66216620a4b3-1646067718759@3c-app-gmx-bs53>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Frank Wunderlich <linux@fw-web.de>, Rob Herring <robh+dt@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org, Heiko Stuebner
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: Aw: Re:  Re: Re: [PATCH v3 1/3] dt-bindings: Convert ahci-platform
 DT bindings to yaml
Date: Mon, 28 Feb 2022 18:01:58 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <ddd09f4f-782f-67e9-ec2f-dd5818ae26c5@canonical.com>
References: <20220227182800.275572-1-linux@fw-web.de>
 <20220227182800.275572-2-linux@fw-web.de>
 <4c3303f5-7af5-9974-7bea-b7f0d6c7ef53@canonical.com>
 <trinity-ac45bde6-392d-4810-8aad-9a06d2bcd85a-1646050780475@3c-app-gmx-bs53>
 <8fbbce9e-4fd9-d420-43ef-953e846d29f1@canonical.com>
 <trinity-f1b6ce3a-6f22-4cf8-bf51-a5e7f007dda7-1646057347735@3c-app-gmx-bs53>
 <ddd09f4f-782f-67e9-ec2f-dd5818ae26c5@canonical.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:1sAIoTtR42be1SxcghXxsWmzRmXeoAOJamY6t168/WaUJiXHT+4izW5decLTrn8wEXQT7
 7sJw/WzpVBqu1akl+pvbxgb7zMRcnKCaNX2ZZXJLAtQnb8WiWCUYkRC04sbpZpqbeNpX0z79jpCX
 G3/uTEddAB5iIVsCTcrtnlXazbRlxitcDF/MnxLdbpFh2esg0pU34lIOxb41swWoI/R/0MgU5DB3
 TBqyHo3GR1IqdDRcSehSA/t0vhnl7IfYkTuyV+aMZR/xYB3vODSCW2qrkUIMhRJRhG8LdqL8B4ZP
 AY=
X-UI-Out-Filterresults: notjunk:1;V03:K0:VmkEUVxE6/s=:AgE2Y0u0Dd1vG2/ZILjYR/
 fhoyEv+mJ/Y7cEKejpo16PPfmCiYpK7Zjq2rVzM93b9cyHx5LAeoEDAyRw6aFUvK15hBK2Ekx
 cY7nE3icg0HTddlthKYBkgeIEqb6/NvAO8wt2qDgTPJU/GQLyoOh2G3EP3Xhz6fyPFsU3pfGk
 ASDrN4geUk0/c0DJMf62yew1n/gG84cHzoYSL+n0C4S50s+MVFvwZeHTxw1sTdcRz36WWSlg7
 xCURwi0olci2GPJmE3Da9A0pcsTNMr+gORV/u1Q4kHRUbnEdlblHaEpZA3DkNxpKzYJcfjRPI
 QUKG4xzKdYV0dKaWeEGravMhEuwCQgLFLogJKHPYaHUKEVnIIuYM97u+Bt8+kA7yq4vjHmjKj
 HQCOc9g9NqkJyBxJyMrKJlhNP6awcxTKjfQtJ+AgmtqluLl9ilQxwDf6zXJAY5fJ3xGiBDqCr
 XENhmE/GUNnnB5Sl2O3LNAvzd/itkVSIceRLpj/3G3sLd37bmL12q0K7lyc7MzHNp7lmw5+me
 kcQaCeiBtLruBhTUsg7heVQKT8hhgAFd+BKU92KQx2ZiDNZZztspKqvpJwQMPNY1If/Zflauj
 NxvKrf/D2TzRXrYr0+pchFUOXo5zRJqWlOEjmJg6pEC6KiVY42kZ1o60fqZAGkwRLVumHB9KD
 EuspsrjujA6Rgu8/+ohzGV4ihDgbzq0mjefJwdAIj7soWW9IGuMC/5GYk0QPikRpnGCFLy5vK
 Zh3wxy7fuC5sJz+VPcARyM2zg4cRpUIgT1Mx118fiMZHruUPbXarkCddzI9lhdE2yrnl7OTFu
 ZN6NPDv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_090220_432431_536F22E8 
X-CRM114-Status: GOOD (  12.06  )
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

Hi

> Gesendet: Montag, 28. Februar 2022 um 15:35 Uhr
> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@canonical.com>
> >> Gesendet: Montag, 28. Februar 2022 um 13:38 Uhr
> >> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@canonical.com>

> >> No, this has to be oneOf. See for example
> >> Documentation/devicetree/bindings/gpio/gpio-vf610.yaml or many other files.

> > compatible:
> >   oneOf:
> >     - enum:
> >       - brcm,iproc-ahci
> >       - cavium,octeon-7130-ahci
> >       - hisilicon,hisi-ahci
> >       - ibm,476gtr-ahci
> >       - marvell,armada-3700-ahci
> >       - marvell,armada-380-ahci
> >       - snps,dwc-ahci
> >       - snps,spear-ahci
> >     - items:
> >       - const: generic-ahci
> >       - enum:
> >         - brcm,iproc-ahci
> >         - cavium,octeon-7130-ahci
> >         - hisilicon,hisi-ahci
> >         - ibm,476gtr-ahci
> >         - marvell,armada-3700-ahci
> >         - marvell,armada-380-ahci
> >         - snps,dwc-ahci
> >         - snps,spear-ahci
>
> That could be one way, but instead I propose to have only second part
> (so enum + generic-ahci) for all compatibles mentioned in
> ahci_platform.c, which do not customize the driver behavior for these
> compatibles..

tried many ways of defining it, but none passes with the examples. either to short (first example) or too long (second)

as far as i understand the logic it should be similar to this:

properties:
  compatible:
    oneOf:
      - items:
        - enum:
          - marvell,berlin2q-achi
        - const: generic-ahci
      - items:
        - enum:
          - brcm,iproc-ahci
          - cavium,octeon-7130-ahci
          - hisilicon,hisi-ahci
          - ibm,476gtr-ahci
          - marvell,armada-3700-ahci
          - marvell,armada-380-ahci
          - snps,dwc-ahci
          - snps,spear-ahci

this passes the dt-binding_check (examples) for me, but i guess there are many more compatibles defined with the generic.

dtbs_check found some more like

'brcm,iproc-ahci'
'marvell,armada-8k-ahci'
and many more

it looks like these are also checked in the enum, so the yaml itself look correct, but needs some kind of wildcard instead of the "marvell,berlin2q-achi" as second for the generic-ahci compatible

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
