Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0031CDB466
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 00:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EdASp+buSBW3A5HhUjC89Pbk7sX+moiIJul9EjG/mc=; b=ZltronW0EgBzYf
	iZaHNyovZLTx1NgS2PLqPaUPZedYcfK3CSkxV2ol9oIwC4zvBX9zw0OfmCdq+gWXNlDAc8nHSGL8j
	2sLDMkOu9AmeHSH+ZbxxuHwmtZevSKejDlB2xdrFNAxtK6bxkZgB21zaH/JHRio0CossMkrKpI/Oh
	rdVPYJJGl7oZC8x3KuWqncwYXLi0COmPu25Fv47JdTaNOkwkVQutWEK34GxpbvhpKZ/tA/S81VKM2
	HSBTt7m8g4a8P0RgfHNxxLAhHaUWFm3NbNcDJ6DQ5/ilNulwePKgfdo0/20gfuJm4GoBPY1/xHg1g
	mzPCRikHSWaSeAOe+V0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbof3-00000005UIh-2pJV;
	Tue, 23 Jun 2026 00:06:41 +0000
Received: from mail-northcentralusazolkn190130003.outbound.protection.outlook.com ([2a01:111:f403:d111::3] helo=CH4PR04CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wboew-00000005UIG-1ita
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jun 2026 00:06:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lUZ9FueFbRJ7gfdd4WBmbgWngTP/lPhVlOrprR1JOWGkShcOz7vOPHV3VuLEqCbffBWMZMrnt27fkF3A4ZT3B6xCt4IvJSNe9+7kY1uqvxpCaKwIJthNereINWTrEKi/sf8ZF+DKMOvgkc1TYyw8N6MnSJNJiR1SEqEyldmNDT1JoyGYMkBnnjvU9BaS5k54felAhZn4692ruIEpzLxR2/W35wMR/fOQqTMdE8nhzXQ6jG1rztSi88uQv3kRWUFcHK6hkNFKNUfTrKOjGIzCh8udzsO6EacOpslrSjkvoKEGuPSNiED1s+6YGKPT6RK94Y3CFXI29EFOrGX3O17VXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rCEBVp/XanFgUUvJQFDB/q2i8WlQf0QIV0ZbT9CAfY8=;
 b=PgBagARKKzT/bfxzVV1SPkAXBYqR3Gj4coppkMFLKDGz+MexkQ0enBj7ssVwbC6wwuEKApErfUV8lRh+TAGrrbFkluXe+hoKgVjfBHvTe8Rq81ocXPNjNcPZwhX0JhU4s0w4DHtAmVJ9hNZGelBMGE56Cjk2ySqz2zfHEhi2Z+zFsQB2oIysfuaEGxVrL3dPCGjg6HtDwC8HQuW6rPByzD+4s+ve8zuzcw5CkX7k8WvzXwH+5QO4WF1EBmaAvkLcypEvGA9N/5QAoa6lx7OvC1R6C/B/VVBYszcyJEgZ18OQtiLKd2Jzzg3Rd9Wyud3Pm2XEYQxdHBHHrRspA6yBNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rCEBVp/XanFgUUvJQFDB/q2i8WlQf0QIV0ZbT9CAfY8=;
 b=skpDo/BkWpOl3hXxVK25Ue2t34NNqC0bYlpZNDXzd6dGuaTXKGn5ta7O3djWS0GxHyW0aHbtQtwQbuDt4w6b4H6U7MgC3rR+0h1RoHj52+GOAky02V7zQo7euBr8Aq8vPkm1lOacz9vj9kfxRRDRZMig/UAL3HYZsro6sBA2KZwtAX172A+sS78qcvOEpD0ytOJT+hcr1NtiYErTi9aTC/dXgGWRLbwzgRUoeNM8h3qUpMzrnOr0LaV2efKQtKro2dw65W+4IfnEMbdYL99ERnsIou5ohb56Qu8Ww86w6+VbLghs62i8ta5klaInd/iy1ew8j4AWKHmhBITAZPsaLw==
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18) by PH8PR19MB7143.namprd19.prod.outlook.com
 (2603:10b6:510:215::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 00:06:26 +0000
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172]) by PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172%6]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 00:06:26 +0000
Date: Mon, 22 Jun 2026 19:06:23 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Jean-Baptiste Maneyrol <Jean-Baptiste.Maneyrol@tdk.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Chris Morgan <macroalpha82@gmail.com>,
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
	"andy@kernel.org" <andy@kernel.org>,
	"nuno.sa@analog.com" <nuno.sa@analog.com>,
	"dlechner@baylibre.com" <dlechner@baylibre.com>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"heiko@sntech.de" <heiko@sntech.de>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"andriy.shevchenko@intel.com" <andriy.shevchenko@intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V13 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Message-ID: <PH0PR19MB997338ED05370F27B730FEE60CA5EE2@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
 <20260615172554.160910-3-macroalpha82@gmail.com>
 <20260621181804.27b44942@jic23-huawei>
 <BE1P281MB1426C557A66945951D382EDDCEEF2@BE1P281MB1426.DEUP281.PROD.OUTLOOK.COM>
Content-Disposition: inline
In-Reply-To: <BE1P281MB1426C557A66945951D382EDDCEEF2@BE1P281MB1426.DEUP281.PROD.OUTLOOK.COM>
X-ClientProxiedBy: SN7PR04CA0031.namprd04.prod.outlook.com
 (2603:10b6:806:120::6) To PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18)
X-Microsoft-Original-Message-ID: <ajnN_7hWCUVrDadO@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR19MB997338:EE_|PH8PR19MB7143:EE_
X-MS-Office365-Filtering-Correlation-Id: 0935a4fc-c3ad-4414-4aef-08ded0bb448d
X-Microsoft-Antispam: BCL:0;ARA:14566002|19110799012|8060799015|4140399003|5072599009|25010399006|15080799012|37011999003|25031999004|23021999003|51005399006|6090799003|24021099003|40105399003|3412199025|440099028;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Io5jER4JHgC76cn3dmhPpa49VLk6kzRXfQTUNW6Uql3ZC6M2eQH5+MmywQmD?=
 =?us-ascii?Q?wrrnOFlIpG6bYH02g1XwZrJ5NKPGmSg04tYkKhDWwCRJEwuDc/SOZamaIrDh?=
 =?us-ascii?Q?9LX967rlDy7UaXzEOUr3hoVioK7f8LJSvIbxftTuZZmzPunZ6o6qfumR2sMG?=
 =?us-ascii?Q?N6y9wpuDGIQZqkGs6cEtYFEtWu2HHsDBR5yod37P7Ej4kBV/nATs8j6w3zWD?=
 =?us-ascii?Q?Hp2QE4o76N+BezQSqvfIptynrxjaDcMFdVwj4hJ+5k2ADy8tIL/PdKuHbSC9?=
 =?us-ascii?Q?DaEuLym4tZDAb3sjy2Gw1mm21xW2NamqNqq4WuIDeJP1HDsP/FTxk4t+6NN1?=
 =?us-ascii?Q?KTS9PdojwbhlVDD9KKQEd0vK0WA0j3nCknBbEiLezyusVfkrtw3ut9q8SyJE?=
 =?us-ascii?Q?4aAWi7ZQzblMEq5+wLfcGcvZIsOxmbunfdW0YhTpLXPxEE28E3mtfyUDOMAk?=
 =?us-ascii?Q?QqHFzeRz7cparwvfjUPSLbVJjVJup7GjENaD1chZXCkp9ejQ112qoj0UOJvW?=
 =?us-ascii?Q?VUVIQMa8eODnN3DPzcPiajcRkYADhTcXwBMTvEiMnATFkI6sJYZ9WGUHJ6Jp?=
 =?us-ascii?Q?x6qkYYdUJAEDZjR0LzYw9FxDXSsL4LIhd5yuG90qu3ILTr2fUqpHy8v7WLpb?=
 =?us-ascii?Q?CVSJIdVpXgJEg0yixKuONKgoS9gXG+4ChlyXxBxueTZAG2r2gB4vKXrYYV1D?=
 =?us-ascii?Q?J7/UUfQ/EGeyR1bVRcC+zMjaJMBnxXVzpQ1Arz5eMCZosuiSCCADLVrH6db1?=
 =?us-ascii?Q?e3tSmQDPdsv5VXX3QqTWKY6k6k9c8gmfelN2RRsxJhtdv02p9lsfWbWbNMat?=
 =?us-ascii?Q?5MboCKEyE482MSu2IDsN+H8cIFO9LqyAN5exnzcNyGkJuLsU2MrzhmUpGc50?=
 =?us-ascii?Q?uUrUhqUEBmfXJPDWkLbSzUzhbJapXItlzx4AJNYntfpmgPJbs9JOcTmQQ7GZ?=
 =?us-ascii?Q?n00W9vccAE92jFhsysb4if7BgomwcoBl/KtSi1SQMp3ujveCQrLYvkL7Y3AW?=
 =?us-ascii?Q?wU1AjyxH9QWk+PhOd2IvxOlfZQ=3D=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?c1W4+7Yo/NzZ8ihGAoFNWDDKGryBzEyAfbbQLEGIwBHtFaRWpgO14vO0gH0J?=
 =?us-ascii?Q?KexETSocZOOXEOGb88dXT5uOQ52kp0trG/hWjn4cP2oZMBBL43XIxhX7yS4x?=
 =?us-ascii?Q?6OF63MJZW1T9b1YJdUMhnTlegpFm9/6G6gqEJmya0ZxU0+20ohAAxWjT5UNd?=
 =?us-ascii?Q?wRxhAgubNy/ZHZehUbDpf1j2RRBBwtvAXzvKeMZtBqKxwb7UN8oC+Nj2XCHU?=
 =?us-ascii?Q?oYRznKmmdbc41mbiEQixqjWFP4tQ5J6XCb0d3Yd2+uMyyKWzNa7WeHWqtjnr?=
 =?us-ascii?Q?eYnvGLO8n60D5hXv2jQvFmhk+coJMOHlmaupJ6NUxQMhVy90GuFhAZZuR7Gx?=
 =?us-ascii?Q?8p5xJAERKrCrLUs4hWuiBcpcFISplmbDHDbUiFu/kDQXblFqd0xUIwr4w6aR?=
 =?us-ascii?Q?2cbtM3rbjoTb6UZ7MLKQnQWLNQVZvycCTqoIJElYKxOKgZrJA9m32T2wTQeX?=
 =?us-ascii?Q?FDs9ltevL2yHC1ZNaqdGPLKuiXmab0W0UJBPwLol1D8pOgSuptKKZTMHPfn9?=
 =?us-ascii?Q?waEfGgUhQsbaNoCYiqWvrkxrpeRUBhS33D9Z5j50E3x14H07ZVp4scTR5l5U?=
 =?us-ascii?Q?lP5nX2eATUE4x947qUnDuUFEkT6yDXYL/R8y6ooorlcS28Moa/u71gBcQGbD?=
 =?us-ascii?Q?NbBO9uvgJ/ge4ddGes7VF3I9C8Jn6c1w2WnwT6dW0wuBieuKaZ8RuhvDwgjf?=
 =?us-ascii?Q?RQvy+K7deSc7hg8xwAVP3qcOuHDD8eMniqcmE8sbq2sW9eOiXHRDQtlZXb4N?=
 =?us-ascii?Q?I5kR1SmVNKCJC4k/FTUkUcBqG0rXArYZJKHqUk1wiTR1dj0dNy6b02u9NkF6?=
 =?us-ascii?Q?jQuW60Q+1L1mH2GlUVuEwIMPFoS415ysqnazLjpIQx5zgJYGJXxmCxClxOC5?=
 =?us-ascii?Q?k5KdkksUfXvx9kU1ZZTyW7JXOQ34dS3/kpM7T7ajgjjH+qo12zYLzSolzROs?=
 =?us-ascii?Q?elpX/1RQTG+2G4DGbaBt2MD5jrnj1ekSvx1W4+odZb5/OhehXf9g/71B5cvT?=
 =?us-ascii?Q?lykb9D1lX2LAf1X0MtI8Z4zGHnoyA9+NxjqZAhXNjGYxegtDMEQq9lKuyk2R?=
 =?us-ascii?Q?p7ZllFAuAgcpdrQfCp/bqb5LpzXw3E72DVTRcJpzxLsSqGD5gWWGoJBjVkvf?=
 =?us-ascii?Q?m47fY8wrtc16xGwLwkVwQ7Eiou6nAhg+lM5pz8w2699ZENDNRrZy4L2joHq1?=
 =?us-ascii?Q?c56RUkto1PLiFDmfu9RrDKYtRRBkBof9nSDn3GC3M9WqkzgCmR9nXRMBmVOZ?=
 =?us-ascii?Q?ZFthv7YmQ1GIhCcZTIRns8uflvyFnD5nXfey2JDDuUH9UKAR8EsOXmxeVUgO?=
 =?us-ascii?Q?67sTRqPwZbl8PvnEBVXWWUFXGeqmB0Yh+VjXbXS/VDToapVHlY/ydA7GWuXn?=
 =?us-ascii?Q?HzsoP805VoI2xJh2A9gVSWFTZ4WzAwJthMBYoQ5AaBVAEhxqgiPh6MPXQLp4?=
 =?us-ascii?Q?Zcnui7nhSFO1po6086c2GhWBmY3psQjm?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 0935a4fc-c3ad-4414-4aef-08ded0bb448d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR19MB997338.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 00:06:26.3666
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR19MB7143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_170634_462773_58AB125C 
X-CRM114-Status: GOOD (  20.20  )
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

On Mon, Jun 22, 2026 at 09:23:28AM +0000, Jean-Baptiste Maneyrol wrote:
> Hello Chris and Jonathan,
> 
> concerning dt bindings, my initial understanding was that we had a file per
> driver. But here, Chris is doing a new driver for icm42607 while adding new
> bindings here.
> 
> Does it means we don't have 1 binding file per driver, and there is no need
> to create a new binding file for inv_icm42607 driver?
> 
> Despite the naming, icm42607 chips are a complete new design very different
> than all other icm42600 chips. It using similar IPs for things like the FIFO,
> but all other parts are different. Especially, it doesn't use banks for
> registers access but indirect access delegated to the chip internals for
> accessing certain registers.

For what it's worth I'm not using any of those registers in the driver
currently; from what I see in the datasheets I was able to find on the
web the 42607p doesn't do the indirect register access (again unless
I'm misreading). To be fair I don't have any other icm42607 chips to
test against. The 42607c does appear to do such register access.

Thank you,
Chris

> 
> Thanks,
> JB
> 
> >From: Chris Morgan <macromorgan@hotmail.com>
> >
> >Add the ICM42607 and ICM42607P inertial measurement unit.
> >
> >This device is functionally very similar to the icm42600 series with a
> >very different register layout. The driver does not require an
> >interrupt for these specific chip revisions.
> >
> >Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> >Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> >---
> > .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
> > 1 file changed, 17 insertions(+), 1 deletion(-)
> >
> >diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> >index 9b2af104f186..81b6e85decd5 100644
> >--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> >+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> >@@ -30,6 +30,8 @@ properties:
> >       - invensense,icm42600
> >       - invensense,icm42602
> >       - invensense,icm42605
> >+      - invensense,icm42607
> >+      - invensense,icm42607p
> >       - invensense,icm42622
> >       - invensense,icm42631
> >       - invensense,icm42686
> >@@ -67,10 +69,24 @@ properties:
> > required:
> >   - compatible
> >   - reg
> >-  - interrupts
> > 
> > allOf:
> >   - $ref: /schemas/spi/spi-peripheral-props.yaml#
> >+  - if:
> >+      properties:
> >+        compatible:
> >+          contains:
> >+            enum:
> >+              - invensense,icm42600
> >+              - invensense,icm42602
> >+              - invensense,icm42605
> >+              - invensense,icm42622
> >+              - invensense,icm42631
> >+              - invensense,icm42686
> >+              - invensense,icm42688
> >+    then:
> >+      required:
> >+        - interrupts
> > 
> > unevaluatedProperties: false
> > 
> >-- 
> >2.43.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
