Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45B07C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 22:15:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B878D613FA
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 22:15:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B878D613FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZmmlKgJBZMDL2sjRIqzRHfWUVSCTRX+WHN+rH5rgj7I=; b=QoQkLyWLhFDKUY/dyrAfJ3ESQ
	CnGWRwuS98B9GYUKs0vcYaRAsMCbIj5Zx4t7TQ+VuBuI4qZgtn11E2NLh14BcSGCqkkNPWLlAIfEx
	+hsTdVHkHvfb92KelyE2Y9gfwZzqxTojNepJnX0YlE4HQHsKZ+Zw0cUZDk/qqMIU8b5dTb0KhzKc6
	4imHxHqcYWLDFSuKN8oQ/lErb2SozAPthStyYHPhfpcEnssiYzT3T5dTvoHb9TPC2zQXK86e8ECLA
	0VcY1m3On5PBqp4EdE5ey/kE05CmXMbKLqK+SNBNDzZMrrn8thjxGJ2+4N71AfFTPzuKvutQWPhSF
	aQFd2ezBg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcbPZ-008jko-Pq; Fri, 30 Apr 2021 22:15:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcbPM-008jj2-EG; Fri, 30 Apr 2021 22:14:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=7SSvv02TsbkrWOwWlBM9seTIZP42kaPiNEe9dizb4ew=; b=AzqerO+pQeayrY5U3O4ABDPlAk
 z6Lqxh8I2qMZQU4ezfr3JGBEBJ0VPYJeDzA3R0IA6VIxKZYYA3LfF2colFvlgvQEGiZ2Dr+M4TyKT
 wfjEGzMqiWBNoQNMMzt26mcmkjSPEibkQasCuRqqgf/GcjXRLY3bwJSLzxktngpsjgdu3Np0u6PTH
 mQO2FEspZYikMXNMN+SSjC0FaO+vNTG/vHKZ/FWfDkOalWyXK+i2h4dt92xR9w7zC/JMzjW5eSQ5s
 qjcdnCROpR6zt6D+rlwawZK8mJX88qOyDlXfYYEgaprUpdnGzp4WGeCmnU/ZlRYZaZbCt3qcYLh/7
 guI0zhZA==;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcbPJ-001htH-D9; Fri, 30 Apr 2021 22:14:47 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 b5-20020a9d5d050000b02902a5883b0f4bso2470225oti.2; 
 Fri, 30 Apr 2021 15:14:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7SSvv02TsbkrWOwWlBM9seTIZP42kaPiNEe9dizb4ew=;
 b=qAoyKhddT/jdC1zyfl64dycgfikC2YMNfsuyvq35guZXrFE7NlzMDykWpSzk/sqay/
 XjaV+awtO96qSJL72CFuW9TqNnoTk7UdDBrBpc1wr8iddrv3g9qdKFggtoi0K+KoejCV
 B6uAXS9oSWVQUNOGFhQjUbxz3PWlitAppxxq7DF+ANqkaCTFVkSoKF6ec7C/B/nQQ2Z6
 0dJksN7lSHCgLQZdTi6HvqCKXZ0ypnrXN7AWDej5ZWWm+okFxpzfUE+TJ/WhwjLS2jUx
 GhRBeLdy8iMnZsSV3GmhrT3JF72EDhUGpXuA8tiOkvb3OIlRWhXqDzZTOzEXkrZQ6SC9
 fmmw==
X-Gm-Message-State: AOAM5324IxHUmIt4G80enOS2XSLzNutvfHZe1xbQt7DIoTcq2+mZGzej
 q19r+eiuXGRSVdRs/DcpNx2JQgqUkg==
X-Google-Smtp-Source: ABdhPJybcXW/btKHlVv6/oMKk9lt8LC61n8INzSUoyfrM2mjKCMtaL7sricjsJZqmqqq5BQ8Q/rsZA==
X-Received: by 2002:a05:6830:1103:: with SMTP id
 w3mr5343380otq.304.1619820884331; 
 Fri, 30 Apr 2021 15:14:44 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b64sm215922oii.12.2021.04.30.15.14.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 15:14:43 -0700 (PDT)
Received: (nullmailer pid 4001411 invoked by uid 1000);
 Fri, 30 Apr 2021 22:14:42 -0000
Date: Fri, 30 Apr 2021 17:14:42 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
 will@kernel.org, heiko@sntech.de, xxm@rock-chips.com,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: iommu: rockchip: Convert IOMMU to DT
 schema
Message-ID: <20210430221442.GA3970483@robh.at.kernel.org>
References: <20210422141602.350746-1-benjamin.gaignard@collabora.com>
 <20210422141602.350746-2-benjamin.gaignard@collabora.com>
 <7557bc8aaaa1924ad39676b32ba6a3f6474a3722.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7557bc8aaaa1924ad39676b32ba6a3f6474a3722.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_151445_479377_34075E67 
X-CRM114-Status: GOOD (  30.17  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Apr 22, 2021 at 02:16:53PM -0300, Ezequiel Garcia wrote:
> (Adding Kever)
> =

> Hi Benjamin,
> =

> Thanks a lot for working on this, it looks amazing. Together with the gre=
at work
> that Rockchip is doing, it seems RK3566/RK3568 will have decent support v=
ery soon.
> =

> One comment here:
> =

> On Thu, 2021-04-22 at 16:15 +0200, Benjamin Gaignard wrote:
> > Convert Rockchip IOMMU to DT schema
> > =

> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > ---
> > version 2:
> > =A0- Change maintainer
> > =A0- Change reg maxItems
> > =A0- Change interrupt maxItems
> > =

> > =A0.../bindings/iommu/rockchip,iommu.txt=A0=A0=A0=A0=A0=A0=A0=A0 | 38 -=
--------
> > =A0.../bindings/iommu/rockchip,iommu.yaml=A0=A0=A0=A0=A0=A0=A0 | 79 +++=
++++++++++++++++
> > =A02 files changed, 79 insertions(+), 38 deletions(-)
> > =A0delete mode 100644 Documentation/devicetree/bindings/iommu/rockchip,=
iommu.txt
> > =A0create mode 100644 Documentation/devicetree/bindings/iommu/rockchip,=
iommu.yaml
> > =

> > diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.txt=
 b/Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
> > deleted file mode 100644
> > index 6ecefea1c6f9..000000000000
> > --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
> > +++ /dev/null
> > @@ -1,38 +0,0 @@
> > -Rockchip IOMMU
> > -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > -
> > -A Rockchip DRM iommu translates io virtual addresses to physical addre=
sses for
> > -its master device.=A0 Each slave device is bound to a single master de=
vice, and
> > -shares its clocks, power domain and irq.
> > -
> > -Required properties:
> > -- compatible=A0=A0=A0=A0=A0 : Should be "rockchip,iommu"
> > -- reg=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 : Address space for the conf=
iguration registers
> > -- interrupts=A0=A0=A0=A0=A0 : Interrupt specifier for the IOMMU instan=
ce
> > -- interrupt-names : Interrupt name for the IOMMU instance
> > -- #iommu-cells=A0=A0=A0 : Should be <0>.=A0 This indicates the iommu i=
s a
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "single-mast=
er" device, and needs no additional information
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 to associate=
 with its master device.=A0 See:
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Documentatio=
n/devicetree/bindings/iommu/iommu.txt
> > -- clocks=A0=A0=A0=A0=A0=A0=A0=A0=A0 : A list of clocks required for th=
e IOMMU to be accessible by
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 the host CPU.
> > -- clock-names=A0=A0=A0=A0 : Should contain the following:
> > -=A0=A0=A0=A0=A0=A0=A0"iface" - Main peripheral bus clock (PCLK/HCL) (r=
equired)
> > -=A0=A0=A0=A0=A0=A0=A0"aclk"=A0 - AXI bus clock (required)
> > -
> > -Optional properties:
> > -- rockchip,disable-mmu-reset : Don't use the mmu reset operation.
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 Some mmu instances may produce unexpected results
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 when the reset operation is used.
> > -
> > -Example:
> > -
> > -=A0=A0=A0=A0=A0=A0=A0vopl_mmu: iommu@ff940300 {
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0compatible =3D "rockchip,=
iommu";
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0reg =3D <0xff940300 0x100=
>;
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0interrupts =3D <GIC_SPI 1=
6 IRQ_TYPE_LEVEL_HIGH>;
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0interrupt-names =3D "vopl=
_mmu";
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0clocks =3D <&cru ACLK_VOP=
1>, <&cru HCLK_VOP1>;
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0clock-names =3D "aclk", "=
iface";
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0#iommu-cells =3D <0>;
> > -=A0=A0=A0=A0=A0=A0=A0};
> > diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yam=
l b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> > new file mode 100644
> > index 000000000000..0db208cf724a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> > @@ -0,0 +1,79 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip IOMMU
> > +
> > +maintainers:
> > +=A0 - Heiko Stuebner <heiko@sntech.de>
> > +
> > +description: |+
> > +=A0 A Rockchip DRM iommu translates io virtual addresses to physical a=
ddresses for
> > +=A0 its master device. Each slave device is bound to a single master d=
evice and
> > +=A0 shares its clocks, power domain and irq.
> > +
> > +=A0 For information on assigning IOMMU controller to its peripheral de=
vices,
> > +=A0 see generic IOMMU bindings.
> > +
> > +properties:
> > +=A0 compatible:
> > +=A0=A0=A0 const: rockchip,iommu
> > +
> > +=A0 reg:
> > +=A0=A0=A0 minItems: 1
> > +=A0=A0=A0 maxItems: 2
> > +
> > +=A0 interrupts:
> > +=A0=A0=A0 minItems: 1
> > +=A0=A0=A0 maxItems: 2
> > +
> > +=A0 interrupt-names:
> > +=A0=A0=A0 minItems: 1
> > +=A0=A0=A0 maxItems: 2
> > +
> =

> AFAICS, the driver supports handling multiple MMUs, and there's one reg a=
nd
> interrupt cell for each MMU. IOW, there's no requirement that maxItems is=
 2.
> =

> Is there any way we can describe that? Or maybe just allow a bigger maxim=
um?

With #iommu-cells =3D=3D 0, how would one distinguish which IOMMU is =

associated with a device? IOW, is more that 1 really usable?

If you need more just pick a maxItems value that's either the most seen =

or 'should be enough'TM. If the entries are just multiple instances of =

the same thing, please note that here.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
