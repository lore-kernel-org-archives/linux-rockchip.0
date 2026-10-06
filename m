Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17022CA5FF0
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 14:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccHu94t4kZSw6Ik1TnblLqeL8sxmij17EJ7QPxoMLec=; b=ocVstmE8lOpFZW
	dz5XPjaJudnbkMuqJ0BeXUGpjBzKd9aEettQkwVJYgd4ugsJA/OWAnEvwb0HGid2K0P18admnhpsZ
	aeAlB9sVsUBB/aObynvDYd03ZC3xm1qhNGSoU3AX+7aZalgmrS6cOk3VX1qrUcHW8+9kIZeby/kQe
	XZj+oMg+GUvhcgbwH738+nVRu5XrHzEwt0v1GVZxbwmY6EuBzDP7AuOJFmAkS6MzxRvbhqqu8LBKD
	qK71ERfw+2RmPhnyIUAlZbHmNAVhOoGqLgttDMKGVgB0ly3R0GXjHIjZtTcJaeeVJWUmL/DwVyj9w
	cvv+Ax8Xz8esaKo75z1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE5i8-00000000v8q-1XWo;
	Tue, 06 Oct 2026 14:00:04 +0000
Received: from mail-pz2-x08.google.com ([2607:f8b0:4864:3b::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE5i3-00000000v7O-05sh
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 14:00:00 +0000
Received: by mail-pz2-x08.google.com with SMTP id 41be03b00d2f7-cc75f2924abso3091129a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 06:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791295198; x=1791899998; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=1lgDiGiDkESTunf7jYG2kAM7tCOtBYTh+K/PRaEYgo0=;
        b=F7/fq4fL2MC0/rV5NzlBLFxfMmpld1wqJ2j+/66ws45RvXnId5T7zRFRhi8y59/scH
         k+hcw9S1dBmkmplffJ48qKp+cWqOq9W24ogn31keoTxdysIcYLqZBG2P4ZhrFCCWoIEe
         OQqI04649Hkslr4Rxfol33RsUiL2XWWXb8SKNt0QFK7M2W2NJhl3DO9OxT8DpdTeg9JR
         U2FvLdaV/otoBLSC5mL6bbRZQ3J86jZe+frMxZtJ7oQgs1GIBQojkqNm2zf353eLYijl
         ZIK2W1yXIB3nt6SxKXGmhFrSkIyNGGCa0I8NhqD/kd1tFMtuvCIanZt75TDRyud9aJcV
         pUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791295198; x=1791899998;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1lgDiGiDkESTunf7jYG2kAM7tCOtBYTh+K/PRaEYgo0=;
        b=M5+3XWTGJRtrZLdLLDR+AJe24RMZii9BwDB+BRq2kp8vtcDVlfgHMWSDMdlUjJV0iD
         QPeRgTjq5jUGDT0E1g472kK7pwzZDcqUzroWP6S7/JW3WAhPm+K5WlI+ftuW+vVYj9h6
         k98Vk7+yiHNESFZ03P8Gk1yYNRg+XzA+ILy+Fjv/EVoRFlbLoCb9vk4hOUNZ9nc79jux
         OzJBLC7I78P4XYPgp4PyQX7l/ysNGt4RTD7CnWJOcmmYkzkHm0OT3eoWaIQen/gMTnWk
         ZQ8y2tLSzbPlftNJjZ+LfbEAqywCOTnO5UGrjBBh3TxTf1QwboRLZFZMjs5lUjHKkZNO
         hBww==
X-Forwarded-Encrypted: i=1; AKwUvBwy5ZeB2HaPRzdMC3OzHj9qRt/GwvA70m+WDPbvJSGct9C96bIFOYHF1wwIJFMT8GWGOKOEjmXYBT9VIDxsZA==@lists.infradead.org
X-Gm-Message-State: AFuF++m6gVSi2BmjHOFQB5ARRXmtdo6QPlvn56WCqkekKDgj2bg0uWGL
	5Gl4dGLtD9UJw+Y3Hs50KqN3sOaZIH53PiEX7NQPy5JBXiwAKm9Y/nxi
X-Gm-Gg: AYBFou3gHdo/9H1FRNrUlUlbQ77rQ6XqaL/gtW9HhsoI3OrG+xBMOE3R6cHrk6qKuTu
	om94DH7klhqtZxFgnRiAoKzXDuJinJDHU9btP1+Chb3s8oabxFXZjZ3yQj4XfFjjCO4MTZQ9vry
	ovV/CfOCtUJij7dJxe5U/3Ne9cGMpF+lOkSUVSRrMgMmUQ4sGVtHYI1gfCeJ1+MRdNUqdHiN0pM
	+naU+psa03OgeFIo9fvmWYHbSs2TbQw0GBfHCKg5M358NqNRRYSD+Qomgx5vv/xKkWWVBkv/1TU
	ASbaCrQZvrlsJS4rUKek/qq/wn2eyPV5atsBprJ+AiKIhXU73hTm6nI7q1GG9fjVNp4L71iSRCW
	vLpADCMq5RhPcttOehrKBggn8Flj3InRcJBVCRk3qHsQZ4F8JSXoFgprn06B67ZS9ejmgzici/p
	jV93IZ6r2NT6LZNyLWABq+kb5znofeliEUiMk0ydq+LaFBrg4nCELvrZPw2ixy/99JA94=
X-Received: by 2002:a05:6a00:3319:b0:882:ace7:88e2 with SMTP id d2e1a72fcca58-890ddffc726mr1294423b3a.12.1791295198063;
        Tue, 06 Oct 2026 06:59:58 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2603:c021:8000:9500:233::14])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-88b0d04ed92sm5001409b3a.51.2026.10.06.06.59.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2026 06:59:57 -0700 (PDT)
Date: Tue, 06 Oct 2026 21:59:49 +0800
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
In-Reply-To: <20261006132428.GA1659963-robh@kernel.org>
References: <20261005223011.1124347-1-coiaprant@gmail.com> <20261005223011.1124347-2-coiaprant@gmail.com> <20261006132428.GA1659963-robh@kernel.org>
Message-ID: <96FA84EA-3C0E-4FAC-963F-2A8165538748@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_065959_068354_8625967E 
X-CRM114-Status: GOOD (  21.47  )
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

On October 6, 2026 9:24:28 PM GMT+08:00, Rob Herring <robh@kernel.org> wrote:
>On Tue, Oct 06, 2026 at 06:30:03AM +0800, Coia Prant wrote:
>> Add device tree binding documentation for the Synopsys DesignWare
>> XPCS integrated on the Rockchip RK3568 SoC.
>> 
>> The XPCS is accessed over the APB3 bus and internally connected to
>> a Naneng Combo SerDes PHY.  It supports 1000BASE-X, SGMII, and
>> QSGMII modes, with four MII ports.
>> 
>> The four MII ports are described as ethernet-pcs-mii@N child nodes,
>> consumed by the Rockchip XPCS glue driver later in this series.
>> 
>> phys and phy-names are required because dtbs_check only validates
>> required properties for enabled nodes. The SerDes link is a board-level
>> design choice (combphy1 on some boards, combphy2 on others), so these
>> properties must be provided by the board device tree, not the SoC dtsi.
>> 
>> The CRU reset lines (SRST_XPCS*) are intentionally not described: no
>> in-tree user requests them, and bring-up relies on the PD_PIPE power
>> domain, the SerDes PHY and the in-IP soft reset. They can be added
>> later as optional without breaking ABI.
>> 
>> Signed-off-by: Coia Prant <coiaprant@gmail.com>
>> ---
>>  .../net/pcs/rockchip,rk3568-xpcs.yaml         | 110 ++++++++++++++++++
>>  1 file changed, 110 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
>> 
>> diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
>> new file mode 100644
>> index 0000000000000..703fcff0e3f70
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
>> @@ -0,0 +1,110 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/net/pcs/rockchip,rk3568-xpcs.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip RK3568 Synopsys DesignWare Ethernet PCS
>> +
>> +maintainers:
>> +  - Coia Prant <coiaprant@gmail.com>
>> +
>> +description: |
>> +  Rockchip RK3568 SoC integrates a Synopsys DesignWare Ethernet Physical
>> +  Coding Sublayer (XPCS).
>> +  The PCS provides an interface between the Media Access Control (MAC)
>> +  and the Physical Medium Attachment (PMA) sublayer through a Media
>> +  Independent Interface (GMII).
>> +
>> +  The XPCS is accessed over the APB3 bus and internally connected to a
>> +  Naneng Combo SerDes PHY.
>> +  It supports 1000BASE-X, SGMII and QSGMII modes.
>> +
>> +  The block contains four MII ports that can be individually enabled and
>> +  routed to one of the Ethernet GMAC controllers via the pcs-handle
>> +  property in the MAC device tree node.
>> +
>> +properties:
>> +  compatible:
>> +    const: rockchip,rk3568-xpcs
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  "#address-cells":
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    const: 0
>> +
>> +  clocks:
>> +    items:
>> +      - description: APB3 bus interface clock (clk_csr_i), required for register access
>> +      - description: EEE clock (clk_eee_i), required for Energy Efficient Ethernet operation
>> +
>> +  clock-names:
>> +    items:
>> +      - const: csr
>> +      - const: eee
>> +
>> +  phys:
>> +    maxItems: 1
>> +
>> +  phy-names:
>> +    const: serdes
>
>You don't really need phy-names if there is only 1 entry.
>
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +patternProperties:
>> +  "^ethernet-pcs-mii@[0-3]$":
>> +    type: object
>> +    description:
>> +      One of the four MII ports of the XPCS. The port is linked to an
>> +      Ethernet MAC controller via the pcs-handle property in the MAC's
>> +      device tree node.
>> +
>> +    properties:
>> +      reg:
>> +        description: MII port number.
>> +        enum: [0, 1, 2, 3]
>> +
>> +    required:
>> +      - reg
>
>Why the child nodes? They don't contain anything.
>
>Perhaps that's due to pcs-handle not supporting arg cells to pass the 
>port number? That's about to change[1].
>
>Rob
>
>[1] https://github.com/devicetree-org/dt-schema/pull/198

Hi Rob,

Both points make sense.

1. I'll drop phy-names since there's only a single entry.

2. For the ethernet-pcs-mii child nodes: you're right that they only
   contain 'reg'. The reason I used child nodes is because pcs-handle
   arg cells are not available yet -- PR #198 is still open and in
   RFC/change-request state.

   The RZN1 MII converter binding does the same thing: it declares
   MII ports as subnodes and references the PCS via pcs-handle, until
   arg cells land.

   So I'd like to keep the child nodes as a temporary workaround, and
   I'll add a note in the binding that this can be simplified once
   PR #198 is merged.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
