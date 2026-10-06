Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D9CACA5FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 15:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K384+nKMtf7cP8MJr0v5TEyTDLgk7DeV0eFvRBSmY0=; b=1q96vfZpgLBwfo
	rsJGmdVXA6C6+NXFSLPyltfNqe2FFwlET40mhzTCEVgzer1jODwGnkmvHezP+I1aCgYQ7Opi61NTM
	sEPIOh0Dd2nLDN1KoTWXMsSXxpnp/ZlOa0ARK8Ir786wiVhP/r+tF3FVBN/Oov4P8NxcvnIWC4C+S
	O+rL3M4CwrCwT4AU6EYrlf6MXN9KhGGWwR+dbdmInOQDnSaMRCoCDa5m0belg3KPsKMvE5U/lyjJD
	qwU3xe7M14eF7Go2OhRGc5LyxOpVz7FxXVln2eb4bD3DWq+y67pDKW8O6iWcknM1pSzd78YXiVsrs
	nQxxpk2wqdtw/xdpJmUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7TG-000000014me-3Tnm;
	Tue, 06 Oct 2026 15:52:50 +0000
Received: from mail-pz2-x04.google.com ([2607:f8b0:4864:3b::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7TE-000000014lS-120L
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 15:52:49 +0000
Received: by mail-pz2-x04.google.com with SMTP id 41be03b00d2f7-ccc451ef3a7so324592a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 08:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791301967; x=1791906767; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=iCfMB+9jyOng6UjHASMF1if+uXMBv5ni2DoESrOf5F0=;
        b=iqCTVsn1EDecW6IxGEnI8NUUicVA6BxklOxM9W5YQXg54vjwLd9S64R5OoURAE/e+P
         KxUShFbHOMKFyBlN7JtsRaBvBf2/b1D0LW6bMQQpjrzkhzBqJ5ANbSzm6rAV8uPbZsqk
         mOSKHp/IM3RgrdEj6/pyZCJFjsn4Usc5rXZf19bkiUzE13MtV+nrpevMLOETBKMPChQM
         ResjJlSktOYS/Ua9vKNBI5Cf8GI9ux9pjAEziv/sF6YMM6y63VHNrTqMlBAl6/SLIyZ8
         ffG74Y6QvP906bd26bZhjiwmwRffOTQ8BnmW3N9HjAo7b5SORnEFyn4cr8Sj6GJqbC7c
         4jOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791301967; x=1791906767;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iCfMB+9jyOng6UjHASMF1if+uXMBv5ni2DoESrOf5F0=;
        b=JXB+8REuLjM86TG2d2gxXOpVvaJbsta/owlxaSZK9ldd0gPnqFZh1BQuzhp9kyEXe1
         V9rdtcntwNnrfQByyidI9zi0YppuCn1PB7UQmAXDOGd+iuYR26Ou6wCmqp4TdI5M7dXq
         WL5Mtg9BUFOcJaNHPGbKqukJBGnzaxt7RUjoocy946KSui1YxTMD/K7d/+P3HPE5ESA2
         OiLAiwVKNUHFNTQgbraxEKB3vEoICfyxL+vfHAxLmuK1OLbBGjJz7Mofs6BQXZRQF39X
         /pnmsc7/vtQ/hRuijV0U6hhphV82zwtFi8bigBHoEpn54bz8aNln5SJjgTiZ/XR70959
         QCwg==
X-Forwarded-Encrypted: i=1; AKwUvBzhHGDmFUd9xV8CPTFnXEgab+NL6CAq+Fm647sb6GTSa7WlJB8QFI0536I+vYWhASQ7taThBQQQkMCQvifWWw==@lists.infradead.org
X-Gm-Message-State: AFuF++keVf3RqEpGxaVwu5QeB4vTIu7BUE5XKG+mCgBMgJmSCJwDmoo9
	1CV7KJeuOBVp1BJGZH757fakbSKcqZz+EyLyIklurvqNVqwbd6UJsf1j
X-Gm-Gg: AYBFou2WLV+gop92E4nrRr/fGaKvDZA1zkMxF+3QpqsHlgYPOh8+jEaFX7cb711UPKm
	WW5Gjl4a55FSPQpkgVL6vAquLewBmtwT+L7YdBPEMjiK9QtnGJZgzgObVDzC9n2YwDoyMXtcQUJ
	8e0/HxW6YpeCY2uqyK+W38KpbzJxYw37CG+jhD81VYUCA42fP9HgyK+E+oQWr4ngdJo/xwMgK6y
	8XzDY00qFVDdRct20/D2OPNEv2VKhZr9jWKTiU8EJBcjGP9yvs5J3Ze0lQH58qFAWRomM/KqeeC
	gNOVsca+53OTOlB2rBRTkkIzvVCSC6O11WsxsF/4I3r5tG259eyM7/CMVE9JPRqtH1mK9mIU2U8
	xOzMoZR5eTVYh5g7kGQPt1PJ2thXGQxC4bR5MiX8E+UghrMyIOJ04ZdXd4c96pZz+LIh4XVGVDJ
	AVLd7+1nCkcXksoAhwtStaI50CHQaDunGUGbv4LeBQUUXL1nBguZIT572Z/eI37mqIErEN6xJ2s
	n9BBFls
X-Received: by 2002:a05:6a00:22ca:b0:890:e1ff:3bac with SMTP id d2e1a72fcca58-890e1ff47c8mr1583488b3a.8.1791301967068;
        Tue, 06 Oct 2026 08:52:47 -0700 (PDT)
Received: from ehlo.thunderbird.net ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-891894f6c0asm184007b3a.33.2026.10.06.08.52.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2026 08:52:46 -0700 (PDT)
Date: Tue, 06 Oct 2026 23:52:22 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>
CC: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>,
 David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_net-next_v10_1/6=5D_dt-bindings=3A_?=
 =?US-ASCII?Q?net=3A_pcs=3A_add_rockchip=2Crk3568-xpcs_support?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20261006150831.GC2194299-robh@kernel.org>
References: <20261005223011.1124347-1-coiaprant@gmail.com> <20261005223011.1124347-2-coiaprant@gmail.com> <20261006132428.GA1659963-robh@kernel.org> <96FA84EA-3C0E-4FAC-963F-2A8165538748@gmail.com> <20261006150831.GC2194299-robh@kernel.org>
Message-ID: <46337722-9C86-4118-8286-A506B455B23D@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_085248_331154_98A61A28 
X-CRM114-Status: GOOD (  26.67  )
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

On October 6, 2026 11:08:31 PM GMT+08:00, Rob Herring <robh@kernel.org> wrote:
>On Tue, Oct 06, 2026 at 09:59:49PM +0800, Coia Prant wrote:
>> On October 6, 2026 9:24:28 PM GMT+08:00, Rob Herring <robh@kernel.org> wrote:
>> >On Tue, Oct 06, 2026 at 06:30:03AM +0800, Coia Prant wrote:
>> >> Add device tree binding documentation for the Synopsys DesignWare
>> >> XPCS integrated on the Rockchip RK3568 SoC.
>> >> 
>> >> The XPCS is accessed over the APB3 bus and internally connected to
>> >> a Naneng Combo SerDes PHY.  It supports 1000BASE-X, SGMII, and
>> >> QSGMII modes, with four MII ports.
>> >> 
>> >> The four MII ports are described as ethernet-pcs-mii@N child nodes,
>> >> consumed by the Rockchip XPCS glue driver later in this series.
>> >> 
>> >> phys and phy-names are required because dtbs_check only validates
>> >> required properties for enabled nodes. The SerDes link is a board-level
>> >> design choice (combphy1 on some boards, combphy2 on others), so these
>> >> properties must be provided by the board device tree, not the SoC dtsi.
>> >> 
>> >> The CRU reset lines (SRST_XPCS*) are intentionally not described: no
>> >> in-tree user requests them, and bring-up relies on the PD_PIPE power
>> >> domain, the SerDes PHY and the in-IP soft reset. They can be added
>> >> later as optional without breaking ABI.
>> >> 
>> >> Signed-off-by: Coia Prant <coiaprant@gmail.com>
>> >> ---
>> >>  .../net/pcs/rockchip,rk3568-xpcs.yaml         | 110 ++++++++++++++++++
>> >>  1 file changed, 110 insertions(+)
>> >>  create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
>> >> 
>> >> diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
>> >> new file mode 100644
>> >> index 0000000000000..703fcff0e3f70
>> >> --- /dev/null
>> >> +++ b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
>> >> @@ -0,0 +1,110 @@
>> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> >> +%YAML 1.2
>> >> +---
>> >> +$id: http://devicetree.org/schemas/net/pcs/rockchip,rk3568-xpcs.yaml#
>> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> >> +
>> >> +title: Rockchip RK3568 Synopsys DesignWare Ethernet PCS
>> >> +
>> >> +maintainers:
>> >> +  - Coia Prant <coiaprant@gmail.com>
>> >> +
>> >> +description: |
>> >> +  Rockchip RK3568 SoC integrates a Synopsys DesignWare Ethernet Physical
>> >> +  Coding Sublayer (XPCS).
>> >> +  The PCS provides an interface between the Media Access Control (MAC)
>> >> +  and the Physical Medium Attachment (PMA) sublayer through a Media
>> >> +  Independent Interface (GMII).
>> >> +
>> >> +  The XPCS is accessed over the APB3 bus and internally connected to a
>> >> +  Naneng Combo SerDes PHY.
>> >> +  It supports 1000BASE-X, SGMII and QSGMII modes.
>> >> +
>> >> +  The block contains four MII ports that can be individually enabled and
>> >> +  routed to one of the Ethernet GMAC controllers via the pcs-handle
>> >> +  property in the MAC device tree node.
>> >> +
>> >> +properties:
>> >> +  compatible:
>> >> +    const: rockchip,rk3568-xpcs
>> >> +
>> >> +  reg:
>> >> +    maxItems: 1
>> >> +
>> >> +  "#address-cells":
>> >> +    const: 1
>> >> +
>> >> +  "#size-cells":
>> >> +    const: 0
>> >> +
>> >> +  clocks:
>> >> +    items:
>> >> +      - description: APB3 bus interface clock (clk_csr_i), required for register access
>> >> +      - description: EEE clock (clk_eee_i), required for Energy Efficient Ethernet operation
>> >> +
>> >> +  clock-names:
>> >> +    items:
>> >> +      - const: csr
>> >> +      - const: eee
>> >> +
>> >> +  phys:
>> >> +    maxItems: 1
>> >> +
>> >> +  phy-names:
>> >> +    const: serdes
>> >
>> >You don't really need phy-names if there is only 1 entry.
>> >
>> >> +
>> >> +  power-domains:
>> >> +    maxItems: 1
>> >> +
>> >> +patternProperties:
>> >> +  "^ethernet-pcs-mii@[0-3]$":
>> >> +    type: object
>> >> +    description:
>> >> +      One of the four MII ports of the XPCS. The port is linked to an
>> >> +      Ethernet MAC controller via the pcs-handle property in the MAC's
>> >> +      device tree node.
>> >> +
>> >> +    properties:
>> >> +      reg:
>> >> +        description: MII port number.
>> >> +        enum: [0, 1, 2, 3]
>> >> +
>> >> +    required:
>> >> +      - reg
>> >
>> >Why the child nodes? They don't contain anything.
>> >
>> >Perhaps that's due to pcs-handle not supporting arg cells to pass the 
>> >port number? That's about to change[1].
>> >
>> >Rob
>> >
>> >[1] https://github.com/devicetree-org/dt-schema/pull/198
>> 
>> Hi Rob,
>> 
>> Both points make sense.
>> 
>> 1. I'll drop phy-names since there's only a single entry.
>> 
>> 2. For the ethernet-pcs-mii child nodes: you're right that they only
>>    contain 'reg'. The reason I used child nodes is because pcs-handle
>>    arg cells are not available yet -- PR #198 is still open and in
>>    RFC/change-request state.
>> 
>>    The RZN1 MII converter binding does the same thing: it declares
>>    MII ports as subnodes and references the PCS via pcs-handle, until
>>    arg cells land.
>> 
>>    So I'd like to keep the child nodes as a temporary workaround, and
>>    I'll add a note in the binding that this can be simplified once
>>    PR #198 is merged.
>
>Bindings are an ABI. You can't merge the binding then change it. Please 
>comment on the PR that you all need it.
>
>Rob

Hi Rob,

Understood on the ABI point, and I don't want to merge a binding we'd
have to change later.

Could I ask for your guidance on the practical path? This series is
ready, and I'd like to get it into 7.4 if possible, since OpenWrt and
other distros base their support on LTS kernels. Missing this window
means a long wait for users.

Given PR #198 is still open, I see these options:

1. Wait for PR #198, then use pcs-handle = <&xpcs 0>. My concern is that
   I have no visibility into its timeline -- it could be weeks or much
   longer -- and holding the whole binding on that is hard to plan
   around.

2. Keep the child nodes as the final ABI, RZ/N1 style, no planned
   migration.

3. Something else you'd prefer.

Which would you recommend? If waiting is the right call, I'll do that,
but I'd like to understand roughly how long PR #198 is expected to take.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
