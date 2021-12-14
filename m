Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77392C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Dec 2021 12:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A9ePiGzMMenY9lt/ZN5Cn0sEIVYiebElFSesZLhFw1g=; b=lX3Be0K1vI8FSxRwYY1cxsfpm2
	4XCFCJjDb7BGeIb5zaRT7WvAQ4Y/SYqKx/Pu6mMAqi4TtAhPqnOJZqd5rbVLLnGQlSpK9MXnLYAnC
	kL+QoKtK9WNWHGrjZzvK7FUd2mMFqhZxQ7wGpOeNDYTUx0xy+8Aqa4fDZlJlTw4VAYzG5OCmFFp6G
	kTmAKyw9iTWO2kQ6vG5gdyAyysWzWoNtHGf48iqjJofRAlB0Z8B1vz21Yhca/qR54CqwRUay8fcyB
	955krXVNABUxtMJt+wnU99KObM8p9AO08NxFKxP20OgY5lQnXEFObQ4+yK/bTUNcJ7bFWjTkc0myF
	ZC7VASCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx6uT-00DvXQ-Es; Tue, 14 Dec 2021 12:27:57 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx6nF-00DtXL-Av; Tue, 14 Dec 2021 12:20:31 +0000
Received: by mail-ed1-x52e.google.com with SMTP id y13so61940693edd.13;
 Tue, 14 Dec 2021 04:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WcN8wDlG5PNay+ZlgpN4uIRDkjwlYVcGaRqvE1MmS3g=;
 b=mrdKHVAa1KRct2FPvnrBu686J731EvXOUonV3JGeThWXyHZc2UDo8hCEcNvid1mggh
 r0bHGEQ+oqjhLzWJSP4xettUtQ+v/MUPMm8ax28kU7SgUuXJUxOVpTMaLe/Vc1nCq6x6
 jNeKNHpIi7Mzsjp2U+2vqKA57NPMnug+EN4rSxJjhgPdFgNdrE180r2m5F/b9UqM16ss
 mFERey1jZUKkC1EFJCh5yzfJK3aouxbV3jAsOID5FYSXLEbd7TIGcOFgG8CMBLtZuBzf
 e5p6M0FX3sNDz1PrXTaNRRlsuFJ3B7DWwI5q+Hqhkc6NYwdw9C6bIcojRIC77Ry0IciD
 yfaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WcN8wDlG5PNay+ZlgpN4uIRDkjwlYVcGaRqvE1MmS3g=;
 b=G1C1MQ18kcuJVrE0mhtLol7VEzLpwZDphbeyctNMf/Y1AlF1CvEMs4ZCumSh3XgVU4
 ahEBCiGg5latlaJSjFmA4KwbgIduXI3+vulr3FgXlNXL1UiIo1q4pUb6GQhzm2uJvcgt
 CRwx3uttNKd1M/95L5XMrGKHZB9S073My4q9Q92NR7zJQYkzpwOW8jj5Fejh46weoo8b
 zHWonw6DsSHgPSfmJzlbiI3+b6+fyWd8dOQkSW8NEe5BxB2DhesWlhczft9L6MRk/LK2
 3WJaCdQkdK5MT3Hqoo+26FHGDLt9TO4A6ckFFIVMibzZkfvWWnmnDss1jCDqepnlTtux
 Xx4A==
X-Gm-Message-State: AOAM532pWRGWtrGNQ28P7fAa5VvLr2yqvR1lYHMtzyYGPL3itVQ4VCNe
 4x+iZL04VNOW9It8x3T0fyg=
X-Google-Smtp-Source: ABdhPJyWDLpF+j0qspecZPM6JE+sBXgyNO/mc0jWbHN67DGTiXCSfqro2mnjM6wKAK07hf4jYJWh6w==
X-Received: by 2002:a17:906:3408:: with SMTP id
 c8mr5423009ejb.41.1639484426442; 
 Tue, 14 Dec 2021 04:20:26 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 e4sm1003501ejl.196.2021.12.14.04.20.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Dec 2021 04:20:26 -0800 (PST)
Subject: Re: [RFC PATCH v4 2/4] dt-bindings: phy: rockchip: Add Naneng combo
 PHY bindings
To: Vinod Koul <vkoul@kernel.org>
Cc: heiko@sntech.de, robh+dt@kernel.org, kishon@ti.com,
 p.zabel@pengutronix.de, yifeng.zhao@rock-chips.com,
 kever.yang@rock-chips.com, cl@rock-chips.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20211208185449.16763-1-jbx6244@gmail.com>
 <20211208185449.16763-3-jbx6244@gmail.com> <Ybhc0VW6JeJ4CNY9@matsya>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <2aef2271-6667-f6bf-0d7d-399b8ec450bf@gmail.com>
Date: Tue, 14 Dec 2021 13:20:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <Ybhc0VW6JeJ4CNY9@matsya>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_042029_495670_A2FB576B 
X-CRM114-Status: GOOD (  26.02  )
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

On 12/14/21 9:58 AM, Vinod Koul wrote:
> On 08-12-21, 19:54, Johan Jonker wrote:
>> From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
>>
>> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
> 

> Why is this series still tagged RFC..?

The phy DT nodes are urgent in need for other USB3, SATA and PCIe follow
up series. When the author doesn't respond for some time I can kick the
can a bit if it's for 'little' YAML, C style or DT changes. For larger
changes it's better to have the hardware tested as well, so I
carefully/politely marked it RFC as I don't know the author's intentions.

> 
>>
>> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>
>> Changed V4:
>>   restyle
>>   remove some minItems
>>   add more properties
>>   remove reset-names
>>   move #phy-cells
>>   add rockchip,rk3568-pipe-grf
>>   add rockchip,rk3568-pipe-phy-grf
>> ---
>>  .../phy/phy-rockchip-naneng-combphy.yaml      | 127 ++++++++++++++++++
>>  1 file changed, 127 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
>> new file mode 100644
>> index 000000000..d309e2008
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
>> @@ -0,0 +1,127 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip SoC Naneng Combo Phy Device Tree Bindings
>> +
>> +maintainers:
>> +  - Heiko Stuebner <heiko@sntech.de>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - rockchip,rk3568-naneng-combphy
>> +
>> +  reg:
>> +    maxItems: 1
>> +

>> +  clocks:
>> +    items:
>> +      - description: reference clock
>> +      - description: apb clock
>> +      - description: pipe clock
> 
> no maxItems or minItems for this?

Documentation/devicetree/bindings/processed-schema.json

      "clocks": {
        "items": [
          {},
          {},
          {}
        ],
        "type": "array",
        "minItems": 3,
        "maxItems": 3,
        "additionalItems": false
      },

With 3 items the properties minItems and maxItems are automatically
added. Only when the number of clocks varies for example between 1 and 3
one should add minItems.

> 
>> +
>> +  clock-names:
>> +    items:
>> +      - const: ref
>> +      - const: apb
>> +      - const: pipe
>> +
>> +  resets:
>> +    items:
>> +      - description: exclusive apb reset line
>> +      - description: exclusive PHY reset line
> 
> Ditto?
> 
>> +

>> +  rockchip,dis-u3otg0-port:
>> +    type: boolean
>> +    description:
>> +      Disable the u3otg0 port.
> 
> why not make it explicit and say rockchip,disable-u3otg0-port
> 
> Also why should this port be disabled?

From Rockchip RK3568 Datasheet V1.0-20201210 page 16-17:

Multi-PHY0 support one of the following interfaces
USB3.0 OTG
SATA0

Multi-PHY1 support one of the following interfaces
USB3.0 Host
SATA1
QSGMII/SGMII

Multi-PHY2 support one of the following interfaces
PCIe2.1
SATA2
QSGMII/SGMII

===

Rockchip RK3568 TRM Part1 V1.0-20210111
page 233-234

PIPE_GRF_USB3OTG0_CON1
Address: Operational Base + offset (0x0104)

usb3otg0_host_u3_port_disable
USB 3.0 SS Port Disable control.
1'b0: Port Enabled
1'b1: Port Disabled

page 235-236

PIPE_GRF_USB3OTG1_CON1
Address: Operational Base + offset (0x0144)

usb3otg1_host_u3_port_disable
USB 3.0 SS Port Disable control.
1'b0: Port Enabled
1'b1: Port Disabled

===

https://www.cnx-software.com/2020/12/01/rockchip-rk3568-processor-to-power-edge-computing-and-nvr-applications/
https://eji4evk5kxx.exactdn.com/wp-content/uploads/2020/12/RK3568-multiplexed-sata-usb-3.0-pcie.jpg?lossy=1&ssl=1

===

USB3.0 OTG, USB3.0 HOT, SATA3.0, PCIE2.1, QSGMII are all multiplexed via
three Serdes lanes.
The driver in it's current state doesn't keep track of which phy[0-2]
node it probes I think. Nodes can be probed in random order, so it's not
able to tell if usb3otg0_host_u3_port_disable or
usb3otg1_host_u3_port_disable should be used. That why the author
probably choose to use a property.

Please advise if we need more complex logic, state locking, etc.
(Any example from the kernel source for that?)

(with more complexity I sould better pass this serie to somebody else)

Johan


> 
>> +
>> +  rockchip,dis-u3otg1-port:
>> +    type: boolean
>> +    description:
>> +      Disable the u3otg1 port.
> 
> ditto
> 
>> +
>> +  rockchip,enable-ssc:
>> +    type: boolean
>> +    description:
>> +      In U3 and SATA mode the SSC option is already disabled by default.
>> +      In PCIE mode the option SSC can be enabled.
>> +      If Spread Spectrum Clocking (SSC) is used it is
>> +      required that a common reference clock is used by the link partners.
>> +      Most commercially available platforms with PCIe backplanes use
>> +      SSC to reduce EMI.
>> +
>> +  rockchip,ext-refclk:
>> +    type: boolean
>> +    description:
>> +      Many PCIe connections, especially backplane connections,
>> +      require a synchronous reference clock between the two link partners.
>> +      To achieve this a common clock source, referred to as REFCLK in
>> +      the PCI Express Card Electromechanical Specification,
>> +      should be used by both ends of the PCIe link.
>> +      The PCIe PHY provides 100MHz differential clock output
>> +      (optional with SSC) in RC mode for system applications.
>> +
>> +  rockchip,pipe-grf:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Some additional phy settings are accessed through GRF regs.
>> +
>> +  rockchip,pipe-phy-grf:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Some additional pipe settings are accessed through GRF regs.
>> +
>> +  rockchip,sgmii-mac-sel:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    enum: [0, 1]
>> +    default: 0
>> +    description:
>> +      Select gmac0 or gmac1 to be used as SGMII controller.
>> +
>> +  "#phy-cells":
>> +    const: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - resets
>> +  - rockchip,pipe-grf
>> +  - rockchip,pipe-phy-grf
>> +  - "#phy-cells"
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/rk3568-cru.h>
>> +
>> +    pipegrf: syscon@fdc50000 {
>> +      compatible = "rockchip,rk3568-pipe-grf", "syscon";
>> +      reg = <0xfdc50000 0x1000>;
>> +    };
>> +
>> +    pipe_phy_grf0: syscon@fdc70000 {
>> +      compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
>> +      reg = <0xfdc70000 0x1000>;
>> +    };
>> +
>> +    combphy0: phy@fe820000 {
>> +      compatible = "rockchip,rk3568-naneng-combphy";
>> +      reg = <0xfe820000 0x100>;
>> +      clocks = <&pmucru CLK_PCIEPHY0_REF>,
>> +               <&cru PCLK_PIPEPHY0>,
>> +               <&cru PCLK_PIPE>;
>> +      clock-names = "ref", "apb", "pipe";
>> +      assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
>> +      assigned-clock-rates = <100000000>;
>> +      resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;
>> +      rockchip,pipe-grf = <&pipegrf>;
>> +      rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
>> +      #phy-cells = <1>;
>> +    };
>> -- 
>> 2.20.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
