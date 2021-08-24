Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.9 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4471CC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 13:40:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E8DCF60F91
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 13:40:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E8DCF60F91
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZlCTD5uL+Y4SDcKpb0emziQBrCvAr4ZbLNbYnaj/Q8=; b=eJUMIdtM2fI8ch
	cbiMCboHUB/4Ah4xmXe5Qvfer/6PCuNbnef22nkQE1Dex1fhjSrZWb+/0F4iVTSKFDv8UUO5QpGHf
	v4avW0zYuPlvTI8rYUNFcVqC2+t5WVrsMU5h+aiDuWqJN2u5apewQdh7tfS6RgfZIQMhvmZFFOq6F
	DQoMXn+higsbycHhT5cgdiA38P+FvR+XBXphjuR6VYZTwrf0NV3rUpKxn6dynwfUKFIymbpm3EVO2
	Ucx23TKzq+dWG05yGZb+GhZ3C4D+RCs/P/OAPqc5qCXWpQ/UqY0rDMOAjVGXKy+lu3tdnm71NxCr7
	RMNPP3h/Di1q3vXR976g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIWfM-003Gyt-DU; Tue, 24 Aug 2021 13:40:36 +0000
Received: from mail-bn8nam12olkn2062.outbound.protection.outlook.com
 ([40.92.21.62] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIWfH-003Gxc-4P
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 13:40:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H4vaBnSnLuOw1AF2FP2lbEQTYoBT4tR2ZKJw40lbir3aiuk21BTVkM6wYOmRAIgZkeTt73JcE2l8iNhcVwj93j4u0MP7CklOS2mh3LKxjBDqC/mfHjJjz/2DU7aPdsh6mQBO9cQAAr49LgAlRMMSaX6qOMU3TAAwcvvpL4LoKcz0tQAMqjG6h5RVI3RbH9HWM5E0gQUhwz3vYj78q0kyLcPEaCxpg4Pf5PDDTufNSaA7HbWn642y2waFCvBREvUdgZVDjkly6iNtopPbpegLjjb0QF5E566SiOQk1yo9FE/Hj/vM8te5LIJsHXNt+Mcy7rotFYj1jwuCZkBMvjQ9pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3gyAuQv5nEHm6KLe1SxhQpELaxWDLuEsiIF+fX5ZSsM=;
 b=BkVAR+yEFG7WR+ACOd6fKt06LulO3UYYSqCOx6JVrT+KkDI9v+GUmdYSgkPUPGiQE5i5X9dcajUSsjkJ9w3a2IOV7dkCkXhTuwTCtisvq1IuenaZ/EoN10gEDL0DFzSHu7c8PRr+GyZLreQ5CkN2rMPagMKIHEWfrqb60K4m2NtW9dgdk+f2h6oVlY98UXht0CNibrTWrYaqGwban8yqWn/7pNh+bvCZCYfrSWAuf+rfFv3Ek1FCwprhSIbAJX4asRyhxUl00Wja2sS4JEqvZn0I4wNa5BnEDJPJvRtobm6hvUMGnnAHG36AuPf+1BYkBF6/EGZYTzUnXDSxk0ExFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3gyAuQv5nEHm6KLe1SxhQpELaxWDLuEsiIF+fX5ZSsM=;
 b=RUPM+bGVsDotBqDXZy7RA8uvIah0kmBT+DG4aqiBaa7XvRQXegcayt7sXtPpwQ2BaWHZRun9+M5g/oy7mH1h0bUvz898gAQmuWKdufOYUua6jU+YCuBtJiQVcyR3Wzk2t/gBU1Go+MDrV3oz2uVTJMbAmK/3P8E4gZRSGsezpKeO9v+MzrPCY0TFe8/TQFiUi3xV3ih3URAdg5sBcliiRUj2a4uh5BtvdZFKkg+khqvofO8+vLlPUkIDbcQOLYamjnV4NJvEndGZWW3IBA85QL3qxDYEeUrEQuxsOoYawsvFRedHdGH4tLX7MUcyWH6q1fPYxFZFR6TB5xkgGDlvVA==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SN6PR06MB5344.namprd06.prod.outlook.com (2603:10b6:805:101::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.17; Tue, 24 Aug
 2021 13:40:27 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::e1f4:5eb1:d552:af43]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::e1f4:5eb1:d552:af43%7]) with mapi id 15.20.4436.025; Tue, 24 Aug 2021
 13:40:27 +0000
Date: Tue, 24 Aug 2021 08:40:25 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, lee.jones@linaro.org, heiko@sntech.de
Subject: Re: [RFC] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <SN6PR06MB534285CC551A4353D741034CA5C59@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210824041922.30586-1-macroalpha82@gmail.com>
 <YSTwms6+17fw8bcN@robh.at.kernel.org>
Content-Disposition: inline
In-Reply-To: <YSTwms6+17fw8bcN@robh.at.kernel.org>
X-TMN: [krvw/Y0rkMud/9fjjSnnXUBPsf+pg8zR]
X-ClientProxiedBy: SA0PR11CA0078.namprd11.prod.outlook.com
 (2603:10b6:806:d2::23) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20210824134025.GA9930@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SA0PR11CA0078.namprd11.prod.outlook.com (2603:10b6:806:d2::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Tue, 24 Aug 2021 13:40:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1d407fb3-ea65-4388-89ef-08d96704bb48
X-MS-TrafficTypeDiagnostic: SN6PR06MB5344:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /TOLGX0wTxG5OOULEBD0ELFt12bvgfnn3Y4j5NlfMBQadrslVVi2tBj/ZRjvk8MG/TF8dYHeNmuj2ddiegC6qVP2zZb6+rtj19DhpGlH2c77S6j2UH1EbQLqHepqCS/ZKm9zXmFjx6pOhSxBs0kS2Tii9UjcwdAZ/GYmYsXQiMdxk13ZIE//ZTBJlWlNlUpSAhc35HrwNxd8p9SPccGI5ieTqfrK10/wMy0O8tqN7k2dVTD7ZIOHHv2xUn54SVc6B2ul2VG2NZqTcQq+f0m8S/ebiYHQ7vqk9tAMOtjTwY9ywQBgr7mml6K5dbmsX0TueDmZZ/HgdgfX/0iB/NPybPhnrAwxiR3nQMdI0g/vF9XgBym6qH0DYbMNfWmjoQxrFMIY2xBLs/2odCxQXJPCoQA4quXASk8Lik1z1kaaKBCWf9+Y+PJ07Bn9oe3Ivc2jPPc3ENs2f3SvAlGwJShvVUBVSiTOl4WkhtCENRN4xcw=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: GKJQForpEL0hM/z0qzlbJUb9ZGZVXSEWpleTqBz6Sc/Q//mgewD6nw04G1g5cjJn7JYYq+XJgD8sASvdx23kmL8iil7uB0wq95OD+cFfibfa/lPogGFHcHosPsFmTzo1r3Gh5/1Inw9b+ORhWZ15RA==
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-94543.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d407fb3-ea65-4388-89ef-08d96704bb48
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2021 13:40:27.7844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB5344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_064031_469292_05542870 
X-CRM114-Status: GOOD (  32.23  )
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

On Tue, Aug 24, 2021 at 08:14:02AM -0500, Rob Herring wrote:
> On Mon, Aug 23, 2021 at 11:19:22PM -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > This is an RFC to convert the rk808 bindings into yaml format. Please
> > note that currently there are a few errors that appear when performing
> > a make dtbs_check. However, after looking at the errors it appears
> > in most cases it occurs on device trees which are not following
> > the current rk808.txt document today. For example for the rk808
> > there are multiple errors regarding vcc13-supply, vcc14-supply, and
> > vddio-supply; however these supplies are not listed in the current
> > driver or cared for in any way.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../devicetree/bindings/mfd/rk808.txt         | 503 ------------------
> >  .../bindings/mfd/rockchip,rk805.yaml          |  89 ++++
> >  .../bindings/mfd/rockchip,rk808.yaml          | 255 +++++++++
> >  .../bindings/mfd/rockchip,rk809.yaml          | 101 ++++
> >  .../bindings/mfd/rockchip,rk817.yaml          | 365 +++++++++++++
> >  .../bindings/mfd/rockchip,rk818.yaml          | 109 ++++
> >  6 files changed, 919 insertions(+), 503 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> 
> Most of the comments below apply to all the files...

Thank you.

> 
> 
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> > new file mode 100644
> > index 000000000000..347696f1709c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> > @@ -0,0 +1,89 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fmfd%2Frockchip%2Crk805.yaml%23&amp;data=04%7C01%7C%7Ca95e75ae88ca4019815908d967010cc1%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637654076499648320%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=%2FqYx3UM1fLwNcF85bvlyllhpneahnLE0wR5NVk6%2Bgsc%3D&amp;reserved=0
> > +$schema: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=04%7C01%7C%7Ca95e75ae88ca4019815908d967010cc1%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637654076499658316%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=6kHpWnVUBpuw1ujpF845IbvWsSUnP7uf%2FCKoaDqXBAw%3D&amp;reserved=0
> > +
> > +title: RK808 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK805 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes multiple switchable regulators.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk805
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description:
> > +      The I2C slave address.
> 
> Don't need generic descriptions. Drop

Acknowledged.

> 
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +    description:
> > +      The interrupt output of the controller.
> 
> Drop.
> 

Ack.

> > +
> > +  '#clock-cells':
> > +    description: |
> > +      From common clock binding; shall be set to 1 (multiple clock outputs).
> 
> Drop.
> 

Ack.

> > +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    description:
> > +      From common clock binding to override the default output clock name.
> 
> maxItems: ?
> 
> (and minItems if it is a range, but I think this is all clocks or none)
> 

I think it's just a maxItems of 2 if I'm not mistaken. I'll make the
change.

> > +
> > +  rockchip,system-power-controller:
> > +    type: boolean
> > +    description:
> > +      Telling whether or not this PMIC is controlling the system power.
> > +
> > +  wakeup-source:
> > +    type: boolean
> > +    description:
> > +      Device can be used as a wakeup source.
> > +
> > +  vcc1-supply:
> > +    description:
> > +      The input supply for DCDC_REG1.
> > +
> > +  vcc2-supply:
> > +    description:
> > +      The input supply for DCDC_REG2.
> > +
> > +  vcc3-supply:
> > +    description:
> > +      The input supply for DCDC_REG3.
> > +
> > +  vcc4-supply:
> > +    description:
> > +      The input supply for DCDC_REG4.
> > +
> > +  vcc5-supply:
> > +    description:
> > +      The input supply for LDO_REG1 and LDO_REG2.
> > +
> > +  vcc6-supply:
> > +    description:
> > +      The input supply for LDO_REG3.
> > +
> > +  regulators:
> > +    type: object
> > +    patternProperties:
> > +      "^(DCDC_REG[1-4]|LDO_REG[1-3])$":
> > +        type: object
> > +        $ref: ../regulator/regulator.yaml#
> 
>            unevaluatedProperties: false

Ack.

> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - "#clock-cells"
> > +
> > +additionalProperties: false
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> > new file mode 100644
> > index 000000000000..6bec1d9e4640
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> > @@ -0,0 +1,255 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fmfd%2Frockchip%2Crk808.yaml%23&amp;data=04%7C01%7C%7Ca95e75ae88ca4019815908d967010cc1%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637654076499658316%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=Dgq2GasTMbD3EKqa5dr5h%2Bg6gRKtyTGNQ45nWWr8Cpw%3D&amp;reserved=0
> > +$schema: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=04%7C01%7C%7Ca95e75ae88ca4019815908d967010cc1%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637654076499658316%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=6kHpWnVUBpuw1ujpF845IbvWsSUnP7uf%2FCKoaDqXBAw%3D&amp;reserved=0
> > +
> > +title: RK808 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK808 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes regulators, an RTC, and a power button.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk808
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description:
> > +      The I2C slave address.
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +    description:
> > +      The interrupt output of the controller.
> > +
> > +  '#clock-cells':
> > +    description: |
> > +      From common clock binding; shall be set to 1 (multiple clock outputs).
> > +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    description:
> > +      From common clock binding to override the default output clock name.
> > +
> > +  rockchip,system-power-controller:
> > +    type: boolean
> > +    description:
> > +      Telling whether or not this PMIC is controlling the system power.
> > +
> > +  wakeup-source:
> > +    type: boolean
> > +    description:
> > +      Device can be used as a wakeup source.
> > +
> > +  vcc1-supply:
> > +    description:
> > +      The input supply for DCDC_REG1.
> > +
> > +  vcc2-supply:
> > +    description:
> > +      The input supply for DCDC_REG2.
> > +
> > +  vcc3-supply:
> > +    description:
> > +      The input supply for DCDC_REG3.
> > +
> > +  vcc4-supply:
> > +    description:
> > +      The input supply for DCDC_REG4.
> > +
> > +  vcc6-supply:
> > +    description:
> > +      The input supply for LDO_REG1 and LDO_REG2.
> > +
> > +  vcc7-supply:
> > +    description:
> > +      The input supply for LDO_REG3 and LDO_REG7.
> > +
> > +  vcc8-supply:
> > +    description:
> > +      The input supply for SWITCH_REG1.
> > +
> > +  vcc9-supply:
> > +    description:
> > +      The input supply for LDO_REG4 and LDO_REG5.
> > +
> > +  vcc10-supply:
> > +    description:
> > +      The input supply for LDO_REG6.
> > +
> > +  vcc11-supply:
> > +    description:
> > +      The input supply for LDO_REG8.
> > +
> > +  vcc12-supply:
> > +    description:
> > +      The input supply for SWITCH_REG2.
> > +
> > +  dvs-gpios:
> > +    description: |
> > +      buck1/2 can be controlled by gpio dvs, this is GPIO specifiers for
> > +      2 host gpio's used for dvs. The format of the gpio specifier
> > +      depends in the gpio controller. If DVS GPIOs aren't present,
> > +      voltage changes will happen very quickly with no slow ramp time.
> 
> maxItems: 2
> 

Ack.

> > +
> > +  regulators:
> > +    type: object
> > +    patternProperties:
> > +      "^(DCDC_REG[1-4]|LDO_REG[1-8]|SWITCH_REG[1-2])$":
> > +        type: object
> > +        $ref: ../regulator/regulator.yaml#
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - "#clock-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/pinctrl/rockchip.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    i2c0 {
> 
> i2c {
> 

Ack.

> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        rk808: pmic@1b {
> > +            compatible = "rockchip,rk808";
> > +            clock-output-names = "xin32k", "rk808-clkout2";
> > +            interrupt-parent = <&gpio0>;
> > +            interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
> > +            pinctrl-names = "default";
> > +            pinctrl-0 = <&pmic_int &dvs_1 &dvs_2>;
> > +            dvs-gpios = <&gpio7 11 GPIO_ACTIVE_HIGH>,
> > +                <&gpio7 15 GPIO_ACTIVE_HIGH>;
> > +            reg = <0x1b>;
> > +            rockchip,system-power-controller;
> > +            wakeup-source;
> > +            #clock-cells = <1>;
> > +
> > +            vcc8-supply = <&vcc_18>;
> > +            vcc9-supply = <&vcc_io>;
> > +            vcc10-supply = <&vcc_io>;
> > +            vcc12-supply = <&vcc_io>;
> > +            vddio-supply = <&vccio_pmu>;
> > +
> > +            regulators {
> > +                vdd_cpu: DCDC_REG1 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <750000>;
> > +                    regulator-max-microvolt = <1300000>;
> > +                    regulator-name = "vdd_arm";
> > +                };
> > +
> > +                vdd_gpu: DCDC_REG2 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <850000>;
> > +                    regulator-max-microvolt = <1250000>;
> > +                    regulator-name = "vdd_gpu";
> > +                };
> > +
> > +                vcc_ddr: DCDC_REG3 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-name = "vcc_ddr";
> > +                };
> > +
> > +                vcc_io: DCDC_REG4 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <3300000>;
> > +                    regulator-max-microvolt = <3300000>;
> > +                    regulator-name = "vcc_io";
> > +                };
> > +
> > +                vccio_pmu: LDO_REG1 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <3300000>;
> > +                    regulator-max-microvolt = <3300000>;
> > +                    regulator-name = "vccio_pmu";
> > +                };
> > +
> > +                vcc_tp: LDO_REG2 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <3300000>;
> > +                    regulator-max-microvolt = <3300000>;
> > +                    regulator-name = "vcc_tp";
> > +                };
> > +
> > +                vdd_10: LDO_REG3 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <1000000>;
> > +                    regulator-max-microvolt = <1000000>;
> > +                    regulator-name = "vdd_10";
> > +                };
> > +
> > +                vcc18_lcd: LDO_REG4 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <1800000>;
> > +                    regulator-max-microvolt = <1800000>;
> > +                    regulator-name = "vcc18_lcd";
> > +                };
> > +
> > +                vccio_sd: LDO_REG5 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <1800000>;
> > +                    regulator-max-microvolt = <3300000>;
> > +                    regulator-name = "vccio_sd";
> > +                };
> > +
> > +                vdd10_lcd: LDO_REG6 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <1000000>;
> > +                    regulator-max-microvolt = <1000000>;
> > +                    regulator-name = "vdd10_lcd";
> > +                };
> > +
> > +                vcc_18: LDO_REG7 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <1800000>;
> > +                    regulator-max-microvolt = <1800000>;
> > +                    regulator-name = "vcc_18";
> > +                };
> > +
> > +                vcca_codec: LDO_REG8 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-min-microvolt = <3300000>;
> > +                    regulator-max-microvolt = <3300000>;
> > +                    regulator-name = "vcca_codec";
> > +                };
> > +
> > +                vcc_wl: SWITCH_REG1 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-name = "vcc_wl";
> > +                };
> > +
> > +                vcc_lcd: SWITCH_REG2 {
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +                    regulator-name = "vcc_lcd";
> > +                };
> > +            };
> > +        };
> > +    };
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> > new file mode 100644
> > index 000000000000..6d509e863da3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> > @@ -0,0 +1,101 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fmfd%2Frockchip%2Crk809.yaml%23&amp;data=04%7C01%7C%7Ca95e75ae88ca4019815908d967010cc1%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637654076499658316%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=V9xfkGcP1itXzALdg9mqt9ijiTJbhVPMr7VQ2LVKYmM%3D&amp;reserved=0
> > +$schema: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=04%7C01%7C%7Ca95e75ae88ca4019815908d967010cc1%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637654076499658316%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=6kHpWnVUBpuw1ujpF845IbvWsSUnP7uf%2FCKoaDqXBAw%3D&amp;reserved=0
> > +
> > +title: RK817 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes regulators, an RTC, and power button.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk809
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description:
> > +      The I2C slave address.
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +    description:
> > +      The interrupt output of the controller.
> > +
> > +  '#clock-cells':
> > +    description: |
> > +      From common clock binding; shall be set to 1 (multiple clock outputs).
> > +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    description:
> > +      From common clock binding to override the default output clock name.
> > +
> > +  rockchip,system-power-controller:
> > +    type: boolean
> > +    description:
> > +      Telling whether or not this PMIC is controlling the system power.
> > +
> > +  wakeup-source:
> > +    type: boolean
> > +    description:
> > +      Device can be used as a wakeup source.
> > +
> > +  vcc1-supply:
> > +    description:
> > +      The input supply for DCDC_REG1.
> > +
> > +  vcc2-supply:
> > +    description:
> > +      The input supply for DCDC_REG2.
> > +
> > +  vcc3-supply:
> > +    description:
> > +      The input supply for DCDC_REG3.
> > +
> > +  vcc4-supply:
> > +    description:
> > +      The input supply for DCDC_REG4.
> > +
> > +  vcc5-supply:
> > +    description:
> > +      The input supply for LDO_REG1, LDO_REG2, and LDO_REG3.
> > +
> > +  vcc6-supply:
> > +    description:
> > +      The input supply for LDO_REG4, LDO_REG5, and LDO_REG6.
> > +
> > +  vcc7-supply:
> > +    description:
> > +      The input supply for LDO_REG7, LDO_REG8, and LDO_REG9.
> > +
> > +  vcc8-supply:
> > +    description:
> > +      The input supply for SWITCH_REG1.
> > +
> > +  vcc9-supply:
> > +    description:
> > +      The input supply for DCDC_REG5 and SWITCH_REG2.
> > +
> > +  regulators:
> > +    type: object
> > +    patternProperties:
> > +      "^(LDO_REG[1-9]|DCDC_REG[1-5]|SWITCH_REG[1-2])$":
> > +        type: object
> > +        $ref: ../regulator/regulator.yaml#
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - "#clock-cells"
> > +
> > +additionalProperties: false
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> > new file mode 100644
> > index 000000000000..cbe6c2a9f254
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> > @@ -0,0 +1,365 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fmfd%2Frockchip%2Crk817.yaml%23&amp;data=04%7C01%7C%7Ca95e75ae88ca4019815908d967010cc1%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637654076499658316%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=q9%2Bq8%2ByU%2BQ2eIvopKuJu%2BpptYyWRBIZiQWlvwRaAiv0%3D&amp;reserved=0
> > +$schema: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=04%7C01%7C%7Ca95e75ae88ca4019815908d967010cc1%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637654076499658316%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=6kHpWnVUBpuw1ujpF845IbvWsSUnP7uf%2FCKoaDqXBAw%3D&amp;reserved=0
> > +
> > +title: RK817 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK817 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes regulators, an RTC, a power button, an audio codec, and a
> > +  battery charger manager.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk817
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description:
> > +      The I2C slave address.
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +    description:
> > +      The interrupt output of the controller.
> > +
> > +  '#clock-cells':
> > +    description: |
> > +      From common clock binding; shall be set to 1 (multiple clock outputs).
> > +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    description:
> > +      From common clock binding to override the default output clock name.
> > +
> > +  rockchip,system-power-controller:
> > +    type: boolean
> > +    description:
> > +      Telling whether or not this PMIC is controlling the system power.
> > +
> > +  wakeup-source:
> > +    type: boolean
> > +    description:
> > +      Device can be used as a wakeup source.
> > +
> > +  vcc1-supply:
> > +    description:
> > +      The input supply for DCDC_REG1.
> > +
> > +  vcc2-supply:
> > +    description:
> > +      The input supply for DCDC_REG2.
> > +
> > +  vcc3-supply:
> > +    description:
> > +      The input supply for DCDC_REG3.
> > +
> > +  vcc4-supply:
> > +    description:
> > +      The input supply for DCDC_REG4.
> > +
> > +  vcc5-supply:
> > +    description:
> > +      The input supply for LDO_REG1, LDO_REG2, and LDO_REG3.
> > +
> > +  vcc6-supply:
> > +    description:
> > +      The input supply for LDO_REG4, LDO_REG5, and LDO_REG6.
> > +
> > +  vcc7-supply:
> > +    description:
> > +      The input supply for LDO_REG7, LDO_REG8, and LDO_REG9.
> > +
> > +  vcc8-supply:
> > +    description:
> > +      The input supply for BOOST.
> > +
> > +  vcc9-supply:
> > +    description:
> > +      The input supply for OTG_SWITCH.
> > +
> > +  regulators:
> > +    type: object
> > +    patternProperties:
> > +      "^(LDO_REG[1-9]|DCDC_REG[1-4]|BOOST|OTG_SWITCH)$":
> > +        type: object
> > +        $ref: ../regulator/regulator.yaml#
> > +
> > +  clocks:
> > +    description:
> > +      The input clock for the audio codec.
> > +
> > +  clock-names:
> > +    description:
> > +      The clock name for the codec clock.
> > +    items:
> > +      - const: mclk
> > +
> > +  '#sound-dai-cells':
> > +    description:
> > +      Needed for the interpretation of sound dais.
> > +    const: 0
> > +
> > +  codec:
> > +    description: |
> > +      The child node for the codec to hold additional properties. If no
> > +      additional properties are required for the codec, this node can be
> > +      omitted.
> > +    type: object
> > +    properties:
> > +      rockchip,mic-in-differential:
> > +        type: boolean
> > +        description:
> > +          Describes if the microphone uses differential mode.
> > +
> > +  battery:
> 
> Is this the only PMIC with the battery monitoring? If not and the node 
> is the same on others (or will be), you should make this a separate 
> schema file and reference it.
> 

I know the rk818 has battery monitoring, but I don't know how it is
going to look or if it even uses the same values. Honestly I'm just
focused on the rk817 since that's what the only device I am working
with has on it. Do you think this should be a seperate binding or can
it be combined with the rk817 until we know for sure what the rk818
will look like (and someone ports the rk818 charger)?

> > +    description: |
> > +      The child node for the charger to hold additional properties. If a
> > +      battery is not in use, this node can be omitted.
> > +    type: object
> > +    properties:
> > +      monitored-battery:
> > +        description: |
> > +          A phandle to a monitored battery node that contains a valid
> > +          value for:
> > +          charge-full-design-microamp-hours,
> > +          charge-term-current-microamp,
> > +          constant-charge-current-max-microamp,
> > +          constant-charge-voltage-max-microvolt,
> > +          voltage-max-design-microvolt,
> > +          voltage-min-design-microvolt,
> > +          and a valid ocv-capacity table.
> > +
> > +      rockchip,resistor-sense-micro-ohms:
> > +        description: |
> > +          Value in microohms of the battery sense resistor. This value is
> > +          used by the driver to set the correct divisor value to translate
> > +          ADC readings into the proper units of measure.
> > +        enum: [10000, 20000]
> > +
> > +      rockchip,sleep-enter-current-microamp:
> > +        description: |
> > +          Value in microamps of the sleep enter current for the charger.
> > +          Value is used by the driver to calibrate the relax threshold.
> > +
> > +      rockchip,sleep-filter-current-microamp:
> > +        description:
> > +          Value in microamps of the sleep filter current for the charger.
> > +          Value is used by the driver to derive the sleep sample current.
> > +
> > +    required:
> > +      - monitored-battery
> > +      - rockchip,resistor-sense-micro-ohms
> > +      - rockchip,sleep-enter-current-microamp
> > +      - rockchip,sleep-filter-current-microamp
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - "#clock-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/px30-cru.h>
> > +    #include <dt-bindings/pinctrl/rockchip.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    i2c0 {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        rk817: pmic@20 {
> > +            compatible = "rockchip,rk817";
> > +            reg = <0x20>;
> > +            interrupt-parent = <&gpio0>;
> > +            interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> > +            clock-output-names = "rk808-clkout1", "xin32k";
> > +            clock-names = "mclk";
> > +            clocks = <&cru SCLK_I2S1_OUT>;
> > +            pinctrl-names = "default";
> > +            pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
> > +            wakeup-source;
> > +            #clock-cells = <1>;
> > +            #sound-dai-cells = <0>;
> > +
> > +            vcc1-supply = <&vccsys>;
> > +            vcc2-supply = <&vccsys>;
> > +            vcc3-supply = <&vccsys>;
> > +            vcc4-supply = <&vccsys>;
> > +            vcc5-supply = <&vccsys>;
> > +            vcc6-supply = <&vccsys>;
> > +            vcc7-supply = <&vccsys>;
> > +
> > +            regulators {
> > +                vdd_logic: DCDC_REG1 {
> > +                    regulator-name = "vdd_logic";
> > +                    regulator-min-microvolt = <950000>;
> > +                    regulator-max-microvolt = <1150000>;
> > +                    regulator-ramp-delay = <6001>;
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-on-in-suspend;
> > +                        regulator-suspend-microvolt = <950000>;
> > +                    };
> > +                };
> > +
> > +                vdd_arm: DCDC_REG2 {
> > +                    regulator-name = "vdd_arm";
> > +                    regulator-min-microvolt = <950000>;
> > +                    regulator-max-microvolt = <1350000>;
> > +                    regulator-ramp-delay = <6001>;
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-off-in-suspend;
> > +                        regulator-suspend-microvolt = <950000>;
> > +                    };
> > +                };
> > +
> > +                vcc_ddr: DCDC_REG3 {
> > +                    regulator-name = "vcc_ddr";
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-on-in-suspend;
> > +                    };
> > +                };
> > +
> > +                vcc_3v3: DCDC_REG4 {
> > +                    regulator-name = "vcc_3v3";
> > +                    regulator-min-microvolt = <3300000>;
> > +                    regulator-max-microvolt = <3300000>;
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-off-in-suspend;
> > +                        regulator-suspend-microvolt = <3300000>;
> > +                    };
> > +                };
> > +
> > +                vcc_1v8: LDO_REG2 {
> > +                    regulator-name = "vcc_1v8";
> > +                    regulator-min-microvolt = <1800000>;
> > +                    regulator-max-microvolt = <1800000>;
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-on-in-suspend;
> > +                        regulator-suspend-microvolt = <1800000>;
> > +                    };
> > +                };
> > +
> > +                vdd_1v0: LDO_REG3 {
> > +                    regulator-name = "vdd_1v0";
> > +                    regulator-min-microvolt = <1000000>;
> > +                    regulator-max-microvolt = <1000000>;
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-on-in-suspend;
> > +                        regulator-suspend-microvolt = <1000000>;
> > +                    };
> > +                };
> > +
> > +                vcc3v3_pmu: LDO_REG4 {
> > +                    regulator-name = "vcc3v3_pmu";
> > +                    regulator-min-microvolt = <3300000>;
> > +                    regulator-max-microvolt = <3300000>;
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-on-in-suspend;
> > +                        regulator-suspend-microvolt = <3300000>;
> > +                    };
> > +                };
> > +
> > +                vccio_sd: LDO_REG5 {
> > +                    regulator-name = "vccio_sd";
> > +                    regulator-min-microvolt = <1800000>;
> > +                    regulator-max-microvolt = <3300000>;
> > +                    regulator-always-on;
> > +                    regulator-boot-on;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-on-in-suspend;
> > +                        regulator-suspend-microvolt = <3300000>;
> > +                    };
> > +                };
> > +
> > +                vcc_sd: LDO_REG6 {
> > +                    regulator-name = "vcc_sd";
> > +                    regulator-min-microvolt = <3300000>;
> > +                    regulator-max-microvolt = <3300000>;
> > +                    regulator-boot-on;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-on-in-suspend;
> > +                        regulator-suspend-microvolt = <3300000>;
> > +                    };
> > +                };
> > +
> > +                vcc_bl: LDO_REG7 {
> > +                    regulator-name = "vcc_bl";
> > +                    regulator-min-microvolt = <3300000>;
> > +                    regulator-max-microvolt = <3300000>;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-off-in-suspend;
> > +                        regulator-suspend-microvolt = <3300000>;
> > +                    };
> > +                };
> > +
> > +                vcc_lcd: LDO_REG8 {
> > +                    regulator-name = "vcc_lcd";
> > +                    regulator-min-microvolt = <2800000>;
> > +                    regulator-max-microvolt = <2800000>;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-off-in-suspend;
> > +                        regulator-suspend-microvolt = <2800000>;
> > +                    };
> > +                };
> > +
> > +                vcc_cam: LDO_REG9 {
> > +                    regulator-name = "vcc_cam";
> > +                    regulator-min-microvolt = <3000000>;
> > +                    regulator-max-microvolt = <3000000>;
> > +
> > +                    regulator-state-mem {
> > +                        regulator-off-in-suspend;
> > +                        regulator-suspend-microvolt = <3000000>;
> > +                    };
> > +                };
> > +            };
> > +
> > +            rk817_battery: battery {
> > +                monitored-battery = <&battery_cell>;
> > +                rockchip,resistor-sense-micro-ohms = <10000>;
> > +                rockchip,sleep-enter-current-microamp = <300000>;
> > +                rockchip,sleep-filter-current-microamp = <100000>;
> > +            };
> > +
> > +            rk817_codec: codec {
> > +                rockchip,mic-in-differential;
> > +            };
> > +        };
> > +    };
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> > new file mode 100644
> > index 000000000000..8440353e5dbf
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> > @@ -0,0 +1,109 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fmfd%2Frockchip%2Crk818.yaml%23&amp;data=04%7C01%7C%7Ca95e75ae88ca4019815908d967010cc1%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637654076499658316%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=8ZpLcOO0kUKQb0hvByX5F%2BSrHZF6Pi7e3gX%2F34GqE1A%3D&amp;reserved=0
> > +$schema: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=04%7C01%7C%7Ca95e75ae88ca4019815908d967010cc1%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637654076499658316%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=6kHpWnVUBpuw1ujpF845IbvWsSUnP7uf%2FCKoaDqXBAw%3D&amp;reserved=0
> > +
> > +title: RK818 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK818 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes regulators, an RTC, and a power button.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk818
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description:
> > +      The I2C slave address.
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +    description:
> > +      The interrupt output of the controller.
> > +
> > +  '#clock-cells':
> > +    description: |
> > +      From common clock binding; shall be set to 1 (multiple clock outputs).
> > +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    description:
> > +      From common clock binding to override the default output clock name.
> > +
> > +  rockchip,system-power-controller:
> > +    type: boolean
> > +    description:
> > +      Telling whether or not this PMIC is controlling the system power.
> > +
> > +  wakeup-source:
> > +    type: boolean
> > +    description:
> > +      Device can be used as a wakeup source.
> > +
> > +  vcc1-supply:
> > +    description:
> > +      The input supply for DCDC_REG1.
> > +
> > +  vcc2-supply:
> > +    description:
> > +      The input supply for DCDC_REG2.
> > +
> > +  vcc3-supply:
> > +    description:
> > +      The input supply for DCDC_REG3.
> > +
> > +  vcc4-supply:
> > +    description:
> > +      The input supply for DCDC_REG4.
> > +
> > +  boost-supply:
> > +    description:
> > +      The input supply for DCDC_BOOST
> > +
> > +  vcc6-supply:
> > +    description:
> > +      The input supply for LDO_REG1 and LDO_REG2.
> > +
> > +  vcc7-supply:
> > +    description:
> > +      The input supply for LDO_REG3, LDO_REG5, and LDO_REG7.
> > +
> > +  vcc8-supply:
> > +    description:
> > +      The input supply for LDO_REG4, LDO_REG6, and LDO_REG8.
> > +
> > +  vcc9-supply:
> > +    description:
> > +      The input supply for LDO_REG9 and SWITCH_REG.
> > +
> > +  h_5v-supply:
> > +    description:
> > +      The input supply for HDMI_SWITCH.
> > +
> > +  usb-supply:
> > +    description:
> > +      The input supply for OTG_SWITCH.
> > +
> > +  regulators:
> > +    type: object
> > +    patternProperties:
> > +      "^(DCDC_REG[1-4]|LDO_REG[1-9]|SWITCH_REG|HDMI_SWITCH|OTG_SWITCH)$":
> > +        type: object
> > +        $ref: ../regulator/regulator.yaml#
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - "#clock-cells"
> > +
> > +additionalProperties: false
> > -- 
> > 2.25.1
> > 
> > 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
