Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45B31C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 03:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=swQQVMnMUOh33w4jzANPUqyjvy6kGgUpTnaqEdwuSas=; b=bzAxegfOZSrt4h
	hmb4OHAGMTsHDIHWYcRN0TEQOam/8PpLNC9AlgeOYJK9jGvRP2cktp6fraoS0juo+f7QQi7rRF9GD
	pgkNErQMrIBZsH8aQf5fx8z6y4shpNDcKzTAZnkcQQiczGfB09mOC8OUcJwdVMgpSvJEnWZu+Nair
	6eVZc9D4KKTAl5KlfXJ3FuJA/v40f2hwgQrb8D4YKrDitSedTp45wmB1B72IUFpO9JoQbyq9ihdz3
	Jq3wzog3pKaxaFqN0ZCsa5HzG50bFflnTi5THk0KJvVGoBzmdpPEzaU3XKMDdoGv/5oXxnouGZNcz
	j0sX6H6Mg37IDLl4W6Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHdoQ-00G9R1-Ge; Wed, 09 Feb 2022 03:38:34 +0000
Received: from mail-m17635.qiye.163.com ([59.111.176.35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHdoC-00G9NR-EX; Wed, 09 Feb 2022 03:38:22 +0000
Received: from HP1216 (unknown [58.22.7.114])
 by mail-m17635.qiye.163.com (Hmail) with ESMTPA id E661C400250;
 Wed,  9 Feb 2022 11:38:14 +0800 (CST)
Date: Wed, 9 Feb 2022 11:38:15 +0800
From: "zyf@rock-chips.com" <zyf@rock-chips.com>
To: "Rob Herring" <robh@kernel.org>, 
 =?GB2312?B?1dTSx7fl?= <yifeng.zhao@rock-chips.com>
Cc: =?GB2312?B?SGVpa29TdKi5Ym5lcg==?= <heiko@sntech.de>, 
 "Vinod Koul" <vkoul@kernel.org>, 
 linux-rockchip <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, robh+dt <robh+dt@kernel.org>, 
 "Lee Jones" <lee.jones@linaro.org>, 
 =?GB2312?B?s8LBwQ==?= <cl@rock-chips.com>, kishon <kishon@ti.com>, 
 Kever.Yang <kever.yang@rock-chips.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "david.wu@rock-chips.com" <david.wu@rock-chips.com>, 
 michael.riesch <michael.riesch@wolfvision.net>, 
 linux-phy <linux-phy@lists.infradead.org>, 
 =?GB2312?B?zuLBvLfl?= <wulf@rock-chips.com>, 
 "Philipp Zabel" <p.zabel@pengutronix.de>, 
 "Johan Jonker" <jbx6244@gmail.com>
Subject: Re: Re: [PATCH v8 2/4] dt-bindings: phy: rockchip: Add Naneng combo
 PHY bindings
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>, 
 <20220208091326.12495-3-yifeng.zhao@rock-chips.com>, 
 <1644352412.075016.2969144.nullmailer@robh.at.kernel.org>
X-Priority: 3
X-GUID: BAFBF4C3-EA5E-4053-AF87-B88D46D080CE
X-Has-Attach: no
X-Mailer: Foxmail 7.2.23.116[cn]
Mime-Version: 1.0
Message-ID: <2022020911371529703712@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUJJSU9WSxkZSU4dS0xCQk
 1JVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MzI6GRw4Pz5WAhohLCENITU3
 NVFPCzBVSlVKTU9PSExMQ0JOTE5PVTMWGhIXVQECHTsJFBgQVhgTEgsIVRgUFkVZV1kSC1lBWU5D
 VUlJVUxVSkpPWVdZCAFZQU1IQ0s3Bg++
X-HM-Tid: 0a7edc8f71f9d991kuwse661c400250
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_193820_740964_157DFA21 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

Hi Rob,

We move "rockchip,rk3568-pipe-grf" from syscon.yaml to grf.yaml.
How to fix this compilation failed?

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index fdd96e378df0..e9bb96ab9446 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -52,6 +52,8 @@ properties:
               - rockchip,rk3288-qos
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
+              - rockchip,rk3568-pipe-grf
+              - rockchip,rk3568-pipe-phy-grf


>On Tue, 08 Feb 2022 17:13:24 +0800, Yifeng Zhao wrote:
>> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
>>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>
>> Changes in v8: None
>> Changes in v7:
>> - remove u3otg0_port_en, u3otg1_port_en and pipe_sgmii_mac_sel
>>
>> Changes in v5:
>> - modify description for ssc and ext-refclk
>> - remove apb reset
>>
>> Changes in v4:
>> - restyle
>> - remove some minItems
>> - add more properties
>> - remove reset-names
>> - move #phy-cells
>> - add rockchip,rk3568-pipe-grf
>> - add rockchip,rk3568-pipe-phy-grf
>>
>> Changes in v3: None
>> Changes in v2:
>> - Fix dtschema/dtc warnings/errors
>>
>>  .../phy/phy-rockchip-naneng-combphy.yaml      | 109 ++++++++++++++++++
>>  1 file changed, 109 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
>>
> 
>My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
>yamllint warnings/errors:
> 
>dtschema/dtc warnings/errors:
>Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:0:0: /example-0/syscon@fdc50000: failed to match any schema with compatible: ['rockchip,rk3568-pipe-grf', 'syscon']
>Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:0:0: /example-0/syscon@fdc70000: failed to match any schema with compatible: ['rockchip,rk3568-pipe-phy-grf', 'syscon']
> 
>doc reference errors (make refcheckdocs):
> 
>See https://patchwork.ozlabs.org/patch/1589719
> 
>This check can fail if there are any dependencies. The base for a patch
>series is generally the most recent rc1.
> 
>If you already ran 'make dt_binding_check' and didn't see the above
>error(s), then make sure 'yamllint' is installed and dt-schema is up to
>date:
> 
>pip3 install dtschema --upgrade
> 
>Please check and re-submit.
 
 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
