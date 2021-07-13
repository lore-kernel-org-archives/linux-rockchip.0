Return-Path: <SRS0=z+fE=MF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47064C11F66
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jul 2021 08:44:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 10F8A61361
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jul 2021 08:44:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 10F8A61361
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VhbrKf5ATVq/fA06sMRTiNCycTmrhL/Jb74ARBIV6Us=; b=1dXhXe9dZsCFO0pXBui3KIXcNh
	mL1J7RE8f0xeOQOgn3HcPmzLiyQFVZvm0ityQvwPs669wss+hx0V4GgLwlLfp5OhHsg5h6pO7Z0rK
	6ajH2CrDzhLyIRQRUC7e+xeR8x+9a4gCFDbXU2uznWgYQsY3/MVgSH2Hgvok+5rl0yYgyUPOBOn6S
	JyDdMhIWLPIRzHe5EPxPh9yVPPd2pdnHSfCaIQ9yiM11YcnPGE84zCrcTi1YcwM7LKSoP4Mb6Coj3
	DYOpuLNYBxwcBbo6IDxzwMeXE343WDkgo8l/Pj1Dt+CKk7jF3lQiUXd/9zWmJBmt2pzytbQF+mPzL
	Evmi7Jfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3E1S-009Tfy-Ug; Tue, 13 Jul 2021 08:44:10 +0000
Received: from mail-vi1eur05on2051.outbound.protection.outlook.com
 ([40.107.21.51] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3E1Q-009TeG-4m; Tue, 13 Jul 2021 08:44:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BQlItuqBhSziqOnnnZHHfOSmVhADGOX3VWVU8qlZo847axwEOQu2XGUuNPHVpQL+I49BmUHfo7ypOX2U28AgZ5vpSZn2iX9OjhXZ7Bbk0r9QXJrHw0XBZKDtMtZap+GdLv50eEcnt5Ixtj9mqvNrkxW2Od3FfHreWnCRjAJSAAY+fg3Cbujr1zXiKTESTbNkYVGyo55bwusBjXze9bqa27+Km15yEk6oNOeV1I3j8364FyUMK7H+sde7oiwlZo9K/IsF1TQ8hGwFQ2H15856oFWIZLSuq/idKRulE1u1WU0XtZXgig6AJYoucgnZaJiZIVrfVDdJiEcByt5BGCoc8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o6z6cRcL5ZaJtkebEHEpfrL4LGa/7GHBeCEyg3dC55w=;
 b=fp5pNxdWjLIbTx2D+ulumIz7qi7IrAQDazAurA5+CUytlKBs9ogRkZqfj0SS0z4UoZMpieQsWhB8zXA3KtX4LHo/I5TKUej+Macb2R2wb7LPHyvtuYvXyxT78F1ZKIAeuEqh0FOj5FxXLLq5j5IKXCKH3fO8FrJgXF4zvUhdSFmLW2yRYujYeOVEg5Bp6LDmfS8ohKGmiceXF7aDw/yuFAoZ4HRLgANpPap2HuUC+lWImKDSHiDUqquOSbP0aUoDT+E/THx3ACdqjBFLfY2MylkwDULfZ0CMl6wfVNNt+MvTidjiWwnnnNsJwVSkkTTjObhbmNng1OzWj8BMwWaSOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o6z6cRcL5ZaJtkebEHEpfrL4LGa/7GHBeCEyg3dC55w=;
 b=unlIuiyMMZQRVJbpYWgNGdXbfL8cVOfemCakLxfdJ99I/KBaEoulK62hJlhOj1tK5rZYvkbZjuewkxP0R0PUpdM12rzqRBJaFdWMA5bgn2Kg+/nCRm3jnjK4YKs7lgdiMqYQnte+3t0ueRKMvuuunU5/U8rFcOMDHOR1l22M/b4=
Authentication-Results: collabora.com; dkim=none (message not signed)
 header.d=none;collabora.com; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB6298.eurprd08.prod.outlook.com (2603:10a6:10:1f7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Tue, 13 Jul
 2021 08:44:02 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4308.027; Tue, 13 Jul 2021
 08:44:02 +0000
Subject: Re: [PATCH v2 1/2] dt-bindings: display: rockchip: Add compatible for
 rk3568 HDMI
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hjc@rock-chips.com,
 heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
 algea.cao@rock-chips.com, andy.yan@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20210707120323.401785-1-benjamin.gaignard@collabora.com>
 <20210707120323.401785-2-benjamin.gaignard@collabora.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <1bd64284-0a20-12e3-e2e7-19cdfdbf1a25@wolfvision.net>
Date: Tue, 13 Jul 2021 10:44:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <20210707120323.401785-2-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-ClientProxiedBy: AM5PR1001CA0012.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:2::25) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 AM5PR1001CA0012.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:206:2::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20 via Frontend
 Transport; Tue, 13 Jul 2021 08:44:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c04c85cd-549e-40c3-d79c-08d945da5d72
X-MS-TrafficTypeDiagnostic: DBBPR08MB6298:
X-Microsoft-Antispam-PRVS: <DBBPR08MB629869DDDE29F235C9D4FA38F2149@DBBPR08MB6298.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0oHd9oJZXWkSok+MhwYw9kdq00BvKD4ro7zXCNv7xRDZjHI9lf5Ee+xTvvDVJlhfInXMgLeEDgWLqb0wqgd/0c32C/2sMvxBbKfMHOFqyZpQBBJxNKXgu7ytooGmQrpkux/9tQy/bck8l88v5oAMja9uxTCWBHb2wdjiMzrGeeZES3eTL+lFnLYPvfuWNmES13yNIw9TFp7nvrw+4gfWgznFaJaquJutrs2iiUXtrTaAYzVi0ciKKuSbF5k5U3SbYSxcbX+yk526A0StJiCdhIvKDgcaOkcreNl8BTU7gkNM+A7aUbWyy5UTlNLCVc9rgB6ALes10HYDz9Ogp6Rk5bXocppMHDiMNyWjhCOvAnfq/AWx2zVHpvyLHNM91mKW3oit+3lOfGe26Ba2jyYMjKyeDighNz9sfN3GVU4PcRcjQqY7gRLBgOiizLczhpMnovEELwtFd5zBKj2v2Ap17qVU0e4IXVAQ1DP3QPX8TW8Cf1nGoBR55jXc8hAta3YrBE6UX2ZNKl7duQZjk6F1mD0lxWgZCvhsCiVabVTjqCDJfIaTUl9uY61UkPaJeHxq7ySE5pwxkGL0jX6wx++hE1sqnUY5ZjQvN8l3zneT+2YL3SO3IPD/vXta7aYK/oFMr+eIzGVRvnHVYmGBVJ5T7GlSMpXGqYjIXhmC7tan76jhRIiuC4LJYHWlrZsBCNKzzBABC8cqfEk9Mvyblci1QvU6Sr0pl7kaFAGth/VyM+Nw7tOJVBSrJLkaQC7NhWy7zA4MtoQqGljrmS/hZ8bUlw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(366004)(346002)(136003)(376002)(396003)(2616005)(38350700002)(956004)(4326008)(8936002)(53546011)(16576012)(316002)(31696002)(83380400001)(38100700002)(2906002)(86362001)(26005)(5660300002)(186003)(36756003)(44832011)(6486002)(66556008)(36916002)(66476007)(66946007)(8676002)(478600001)(52116002)(31686004)(7416002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0IwcDNxRXlJRGZsVE1ISGZoYmFSSWJMaEdTM3hFbmk3UEZSTVRRTmRoZzJ6?=
 =?utf-8?B?VXhEMUh6QzNZSFc2NWR2SlZ4LzRSV1pYdnZxL08yOE9uWFZ2RmovWHoxVGln?=
 =?utf-8?B?M3FZejBEYWRIUDhST0d3WVBHK0t1bk1rU0loR2xpS2NyaXJoWGhQVExsU1p4?=
 =?utf-8?B?c1FDTDZYaHdMUVNsaERMdDU2b1g5TjlFYjFEYmtZcjhjQ3FPdnJaOThNUTNL?=
 =?utf-8?B?dHM0VlFZTVlreHZCbWdGSi81K1JjTzQzOTNFRWdQV1d1cHhZbTQrVUkrSTJl?=
 =?utf-8?B?K3g0YjM5ZFZCQzlaZWNpN2ZUYXRHcFovdHJJajU1dTdxWkUzRms5MzMvNmw5?=
 =?utf-8?B?MXQ2UlF1MnZEZUdZTS9zOE9FakJxTVdUVmdFSzhBZGp3Uno0bVhNRUEzM2NW?=
 =?utf-8?B?Znl2R1Vuc1Nmd0w2Y0tRY2VDTG9qM1psUnhtVWxuUUx2REtlS3lBRDB0ZXBP?=
 =?utf-8?B?Y0FKM0c4MDBWNlMrN3RJS21icG5JcmRRbHVWUHB3cnAzbDRDSS94Zkh1STRT?=
 =?utf-8?B?a0xUeFZ3cGFKbTFpTEhITWxpbUYxNE1RMndyTlNkQmo4ZnFQcUFJdEJoZDM1?=
 =?utf-8?B?K0poTm53KzAzZWlrTkNjL21EUmdCVkRYSGdDMHNKNTkxZXV3VlpQK1hFQ1VS?=
 =?utf-8?B?T3ZVbGd5UldOOHd3bjQxc0Rwbk5IOTlQdkJ4S1hMcVZYLytQZXpDWE1tTHdE?=
 =?utf-8?B?dVhJTXRhU0ZLdHE4UU84REQvbXU0dkROZndRd3JwVURPeVlJWVlBU2V3eWhP?=
 =?utf-8?B?K2xtVDBBU1JvZjlvMDcxL0RuOWFyemdSR2MyUjc4YzVSNVJFcXVDMEdhWFh4?=
 =?utf-8?B?Ri9PNi9MMnpDblRGUVMrRUVPMjdsZTVzYmFQb3RwdlFSSlY1c0NYZEgvczNs?=
 =?utf-8?B?QlBiVDFnRndtd3ltVHE1Q3VNaHlyUUJSdzFtRTVjaVJIVDQycHZQSHJYRFUz?=
 =?utf-8?B?VnVLYWVxSy8xVlZzemlsYVZ1ak1zWDNjSC9LTFJ3NjJlTy9xTFRhbnBUbVRG?=
 =?utf-8?B?QkNvN1l0aWdjMXhqbklZRktrTmRSOUxMN1NoK2tKZVhEMUV0WmYxTU5xcFAx?=
 =?utf-8?B?cDQ4eXNuREZ1NFN5VXZzY1JqQkpkK3NSWFljVGIyWXJoNnEyc0loVXR5NXRn?=
 =?utf-8?B?SGJPN3RSRWdacEszM01vR3IyUWw4Y2RXN1IyYThXNTZ0QnQ1dHlVWmltL1hj?=
 =?utf-8?B?UzNidGc0OHdHVFlLMmVRc0tBNzNvRnpmb0MrM2pDSnlTenRaNXN2V0w2dEVu?=
 =?utf-8?B?VkMzWmswSFpIbDdCSnIzaHRNVi9zb2d4VkFmYUVUS1pFSWFUT0FLclUvcVFB?=
 =?utf-8?B?aSt5emtuMXltbmNWVk14T3hHaS9Oa3FPSkRCMWJiaDhvVDhDd2NuNTdDUkZm?=
 =?utf-8?B?djRpRTUzQ1d6bzlCVDQ4RWN5d1VmT1RON2ZWQlZxK3JXckpIUUVpRXdjMlFF?=
 =?utf-8?B?aTdNNHdYa0NxeXJGa2U3VW4ybGsvL29jQUgwSTZ6MElPU2M5UkxxazlpU3ZX?=
 =?utf-8?B?R1Y0eHJCVjhTOE5veGNDSmRSSUFQMUdMTVI3RFJ0RElxK3JKTFl3Tk1KY0ty?=
 =?utf-8?B?WlA5VjAyQWV4QjN2M3pIVEtZV1RjWUdhdzBDdFF2UGNJVlc0NlFNR05ucVcw?=
 =?utf-8?B?MTIweU1YeHFZV2RTYmpFcmprNmt5ZWpUN3l2THpGT0Rpb1F2VitVZTVYeXEx?=
 =?utf-8?B?TGkyaUp6c1FGWms2NVlmQzRHSUx2M1VmRWJsZ2IvczZqUzhYdHltMCsxOEta?=
 =?utf-8?Q?dbssc9w2bvSlw5ooJcTBk5JgcCa+dhAX6loul8x?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c04c85cd-549e-40c3-d79c-08d945da5d72
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2021 08:44:02.4489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pcZ3NZL+X4aEdNEQyohG6hlknQtxgpD8/OopBKaxPISzSM2h/wwrczki++7zrccnozMzvYoae40LTHFz52p/EjKVlarhc4KOLSL6EtQ8F0w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6298
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210713_014408_245999_94816A77 
X-CRM114-Status: GOOD (  22.58  )
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

Hello Benjamin,

The HDMI TX block in the RK3568 requires two power supplies, which have
to be enabled in some cases (at least on the RK3568 EVB1 the voltages
VDDA0V9_IMAGE and VCCA1V8_IMAGE are disabled by default). It would be
great if this was considered by the driver and the device tree binding.
I am not sure, though, whether this is a RK3568 specific or
rockchip_dw_hdmi specific thing. Maybe it can even enter the Synopsis DW
HDMI driver.

On 7/7/21 2:03 PM, Benjamin Gaignard wrote:
> Define a new compatible for rk3568 HDMI.
> This version of HDMI hardware block needs two new clocks hclk_vio and hclk
> to provide phy reference clocks.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 2:
> - Add the clocks needed for the phy.
> 
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 75cd9c686e985..cb8643b3a8b84 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -23,6 +23,7 @@ properties:
>        - rockchip,rk3288-dw-hdmi
>        - rockchip,rk3328-dw-hdmi
>        - rockchip,rk3399-dw-hdmi
> +      - rockchip,rk3568-dw-hdmi
>  
>    reg-io-width:
>      const: 4
> @@ -51,8 +52,11 @@ properties:
>            - vpll
>        - enum:
>            - grf
> +          - hclk_vio
> +          - vpll
> +      - enum:
> +          - hclk
>            - vpll
> -      - const: vpll

The description and documentation of the clocks are somewhat misleading
IMHO. This is not caused by your patches, of course. But maybe this is a
chance to clean them up a bit.

It seems that the CEC clock is an optional clock of the dw-hdmi driver.
Shouldn't it be documented in the synopsys,dw-hdmi.yaml?

Also, it would be nice if the clocks hclk_vio and hclk featured a
description in the binding.

BTW, I am not too familiar with the syntax here, but shouldn't items in
clocks and items in clock-names be aligned (currently, there is a plain
list vs. an enum structure)?

Best regards,
Michael

>  
>    ddc-i2c-bus:
>      $ref: /schemas/types.yaml#/definitions/phandle
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
