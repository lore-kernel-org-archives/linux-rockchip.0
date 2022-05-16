Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45983C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 May 2022 19:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:CC:To:Subject
	:MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pea1jza5vMgKNAqu/2FthMguNc1+anOjpv3hfokERDo=; b=3LsHJHilBARYlw
	v+9jPJpbg8jF0u/EbNxXalcDjb8mlCbqjPfd8YiLuhHNcbukCqz3T+o5FVbagtJTKKcWfk090ABY7
	tpNZcQkMCsiSKDCMlDi4z4sBHFEqfJJTPb6EllFrIJ8sS77nT4FHEQjS1Ryy5pw2URqCs4W33X2VH
	VllWtkEtYKPoMHcEMCdjPficdiTBDmrxrGZ6kbGISJdX7e/gQy3KH5deed26/MLmXTRwONoPVf8Uh
	Sv11lMDyxMtoPUP4EjVNrbwjgld39cPKZRBwbWvB0weFTOy1tmC/zJJ6aBTB5cpJqQ0cLYGj+rvxC
	SkEmbndEcZgntfKSeeXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqgI6-009mA2-MT; Mon, 16 May 2022 19:22:02 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqgI2-009m77-R1; Mon, 16 May 2022 19:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1652728896;
 bh=n3B1tFZFIsJ89uIoiL7dX/rVRMmDUZ1088RdBsJpfxE=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=iAqc3i/yie0yQ2RO4KjEodO6JlsmEeoCluKIjQQeD5VvGXK2FMakTvhlaCwZTxZSO
 +AzMBHyTlzQIQMaEQ316PydcD87/HFx5pXYq2+cMNj7A9Gvv91zdDVmJwriY3yGh6i
 6WBPQ5hsPF1ev6OmpV54UGGyP8a06ZCPvBlzup2c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([80.245.74.14]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MGyxX-1o3ajL2Lzf-00E7Xg; Mon, 16
 May 2022 21:21:36 +0200
Date: Mon, 16 May 2022 21:21:31 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20220516173537.GA2942634-robh@kernel.org>
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-2-linux@fw-web.de>
 <1652570081.002742.3276245.nullmailer@robh.at.kernel.org>
 <trinity-02ad648c-f6f8-4383-b389-a0578d5a02d2-1652615387162@3c-app-gmx-bap15>
 <20220516173537.GA2942634-robh@kernel.org>
MIME-Version: 1.0
Subject: Re: Re: [RFC v3 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
To: Rob Herring <robh@kernel.org>
CC: Frank Wunderlich <linux@fw-web.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, Vinod Koul <vkoul@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <9496CAFB-6CB6-4BDA-A539-3A6E1B562299@public-files.de>
X-Provags-ID: V03:K1:f5Irn2u3e6Zhnd5do173aOUv5ETb+hLAEAT30DBf0+1ZrVkoATS
 Fhws/gr/3BwWNsggKEhfSKQkuKdL2wcpALEinrn8h6gKmm20zJmzf3QTFk3lHJlZjBMttx8
 SBN/2jVpFWVUSFkg+pdar6rvQxC24N68914q1lpLgr6mh56mrI47hOdOOiqsN2BIO4LVmoA
 55GtwGo3goKFxsQZm5N6Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:mRgqnWkK9Sg=:YTdRH5LtJInU/r+qpgpHTp
 RkdHzdHcEvxu7D7CwcHrfaWdoYRljfDrihJYlHodROSRLr7fcp7ZVLDwlAfAj2SQ7ABS6rvix
 FUSMNn7R1Uw/eep6ikgEjSetAPpQ3ovZr6hPl1H26FBChTQX8uEQg0fji9RBXE4hkMfLEYgRj
 qi1IThmmCXf8ruHD3NZF+MtfyAm+yMlowRrf/hAeb494As4sPPs8qjUjZ0uGZ8XKDzi0WPZGb
 pUfNnutYtGbnB129EOlQEMxbdeKCczFMhHimE/8ajesstSfHFzd1JNbjDmDcCg7rpzidmQdXr
 4Z7wy/UB5TcHfzptUdOZZSWGOXNkGMPFiBVhusjhAY2scwkxwXAPd5G++7Q1ZBTagos7sp3pU
 3g5r8paoFTrw0u/zBC5b7THS8qm7ojKQoY3ABU5rBo181Dcax8wW5R9Mwea4ylhEdbmRhL0WI
 HctnSZH8CP89tV+aFOIvDuWKV7y5Vs0MmczPLz95pmq/5AaEwzPCbbjbn2etye/9Rl7tih67O
 D/aHepkA7IUWi6rDA7GSPTa6cXxYNslD7+suV7ReIBLuIdKd3ptfM2xMsofZ6Vg1mwq1dEnVC
 pE4fe4ypJ6EZ1c14gUDANN8b3eGXA+3XqEuO0AqaM71t5Q4CM4rAmNcDXMcHtaVgtUJN7/Xbf
 MzdP+CJo81lBGDeth+6cW8nkP6ias3KfYPNg67lR8Zp7Sb/ErzQPZ3aW7eLTwHrYZsgaX1rvP
 QBBMBjBeK9gib4axMHxAX7UoCGuY2SNoNYqc63ymHbj2Vw8UJVw19bVtqdjXdFiuzZATlDzyX
 MP2H5mKv8T6PlnNdFzn85gFEqS3J07cyApRMrAjM5PFlK7DE4qs4+dspPeOBEHPa18BMnBHT/
 DufwIomMAa2L65GCXfO3zLkPu6ZRWp5vdMNbMvxXO52yCnLqn6beF8z5fRLkoTYh7Wr7nZ/Rs
 CnOGakp5eqt3eMJXbdyPlIBwfjg+0j05Z/hEX55/wYUxOlety08eHvKqD58ZzN2cG77jclmci
 xQ19HjerZpf+P4LlW+Y0ZJ/wm0PfvAjH1E0Xix1ywyrrXTHJrBNH95hpbZWZyOqELguiFVRlc
 flu7VLme4boB+0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_122159_203993_09160A0A 
X-CRM114-Status: GOOD (  13.48  )
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
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am 16. Mai 2022 19:35:37 MESZ schrieb Rob Herring <robh@kernel.org>:
>On Sun, May 15, 2022 at 01:49:47PM +0200, Frank Wunderlich wrote:
>> Hi
>> 
>> > Gesendet: Sonntag, 15. Mai 2022 um 01:14 Uhr
>> > Von: "Rob Herring" <robh@kernel.org>
>> 
>> > On Sat, 14 May 2022 13:59:42 +0200, Frank Wunderlich wrote:

>Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
>> > >
>> >
>> > My bot found errors running 'make DT_CHECKER_FLAGS=-m
>dt_binding_check'
>> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
>> >
>> > yamllint warnings/errors:
>> >
>> > dtschema/dtc warnings/errors:
>> >
>/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml:
>properties:clock-names: 'oneOf' conditional failed, one must be fixed:
>> > 	[{'const': 'refclk_m'}, {'const': 'refclk_n'}, {'const': 'pclk'}]
>is too long
>> > 	[{'const': 'refclk_m'}, {'const': 'refclk_n'}, {'const': 'pclk'}]
>is too short
>> > 	False schema does not allow 3
>> > 	1 was expected
>> > 	3 is greater than the maximum of 2
>> > 	hint: "minItems" is only needed if less than the "items" list
>length
>> > 	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
>> >
>/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml:
>ignoring, error in schema: properties: clock-names
>> >
>Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.example.dtb:0:0:
>/example-0/phy@fe8c0000: failed to match any schema with compatible:
>['rockchip,rk3568-pcie3-phy']
>> 
>> seems this is fixed when i remove the "minItems: 3" from clock names 
>> (which is already fixed length because of the list).
>
>Yes.
>
>> needed to change type of lane-map to this:
>> 
>> $ref: /schemas/types.yaml#/definitions/uint8-array
>
>Why? That's not a standard property though, so needs a 'rockchip' 
>prefix. Though maybe a common property would be appropriate here.

Originally it was a bool property named "rockchip,bifurcation" and we changed it (after comments) to be a more generic property "lane-map" that can be re-used on other vendors/controllers/phys.

Driver reads as u8 array and range is small enough for u8 even if used for larger controllers (e.g. PCIe x16).

>> then it looks clean for it....
>> 
>> -m causes many errors unrelated to this schema-file even if i pass
>>
>DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
>
>The fix is fixing the remaining 40 or so '-m' errors.

So now clean for you(r bot), too? Did only get a bunch of other unrelated messages.

>Rob


regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
