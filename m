Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D9D5C9832F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 07:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NDuXzJ/Z/KYtB5zO0SKcDmogZ4c/D3TGkOTMLuJALb8=; b=JEmFCud037NMLq6pVfE3LoTGQy
	iE9XKbjfEK2X/pqx1GGPDP+6pwEQAVhDjs6UojChQuQd4cFeUlnXO/pkK0UVCl/2BX8G3l+w/QDoQ
	zt5Gcf40Gl5WBi2WFTUnAOtE84l+lHKWWX9GJ/WtF2pycxdF/dCRBK39qkfVGQBZv94ajBhlFz6Es
	6PXoXPPzloO6l1rAVY9SEoYrJMKk7ACW12P+Lv63cnmj241Tx1xx9XWmMondV2Wy6q0eINevZxQab
	7G61j1tNnsnVZSXxNv1QqhiHo+0TjnDBhNRcuWltNOjyk3sNSjYAjIeXSlPQKrJUdZNBTikpP0aOv
	3RgzKXsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB5xf-0000000HZ2y-3sFI;
	Mon, 28 Sep 2026 07:39:43 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB5xc-0000000HZ1w-1r8N;
	Mon, 28 Sep 2026 07:39:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v2biOePqz1o4suZe2dWt95T1NrAcxXVyvQzChCL7UG8oxJhXB1AXuTGBWn/o7Sy1pF314kRvdoTp6iksyysgryzDzU7vBmQXWNXajg5eaS+s6VTigbPEeKwR/E2Zs/KkTjSMRL0KGckCvHm1i90RS0NFgXsOMZfHNFFZGy7yh4pPrORA1V2yxzwpm6UD09TJdYGyimYScMJGrJVvL9d5cKmVSPnsQj3bpk9cuJQW7SprD1pnLDnMSDEcsmmzWfgWgQPVhy6qMb39zFlqDsw00Q8w4a+d+Gbg0ep+sT8vEspgcFfUkyZGWUxNEm9codgzlrbidt3ACcICTeW2MgqxOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxfdRPBCnW2cZJuYiTid8FtTDf0UXr/U5DuD52+YWSQ=;
 b=ts6j5kOMG6B0Fuu4jvCYmPkxwLup6sRw1ihp0+4meaCZLd9L4/LwSx1fmWfwq20LnlIj/ux7IKR+0ML8aVmuQqMYqtmv2krEsB3/pgVIn0xbTu5dMbJJP6l3O0hG+WNwKcrmdp+DkH4oNmTQb5GmEb6cIH4YAGToMh14MxtgI3mCHiXcQh0POcvSogcjDi4aGyNSGuUBIs3GXzH5cVjDStUjNGthSN/8V7/oBoFK7zR82cAXNfF0MnghDZVtsJ7QK17ZaglB3JO+ri/0ueNZ4CParRFvZFe0QzoisGNKGWNe2DCBrX+I4B1ObPWxFjTUX9bmvBXadfaDGf5Z+IlTDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AxfdRPBCnW2cZJuYiTid8FtTDf0UXr/U5DuD52+YWSQ=;
 b=gXQWgb0OTlkLAgdU9rPLk1yvsFi7gzUoF9UifHuSbhYfcSI9ANIqUHefsmuTKmkS1D2hnj4oKTVSzpQR7UJNNVnpeucbBwcvrBk9lVLhU3DNFTBkYdIRG2x7ZaT96M+ysbj3z0yl7gZgefnPSVFWmVXRLd07qA774+UmAH91200KJx6W4j9Vdi7wqlUJr4H5KeDqSi5ACMyGeQ78YRgX7mIxpbi5QOHPSXbm5i0cPoW8c/CKdBZYjVlwjG5OdU2l2OdE1009RDWYJUFcp49Ff+pU5ea8eFsPVU5wSCAR8GtS6xqXCFrZyMIVACl0i3SHgJ2C76XG3WKnXM6FspbnzQ==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from AM0PR04MB5858.eurprd04.prod.outlook.com (2603:10a6:208:132::23)
 by DB9PR04MB9498.eurprd04.prod.outlook.com (2603:10a6:10:360::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.23; Mon, 28 Sep
 2026 07:39:32 +0000
Received: from AM0PR04MB5858.eurprd04.prod.outlook.com
 ([fe80::bdf4:c9d1:4e3f:68c6]) by AM0PR04MB5858.eurprd04.prod.outlook.com
 ([fe80::bdf4:c9d1:4e3f:68c6%3]) with mapi id 15.21.0451.022; Mon, 28 Sep 2026
 07:39:32 +0000
Message-ID: <b61c912e-2a3c-47c2-aa0e-9e1584c8d3a6@oss.nxp.com>
Date: Mon, 28 Sep 2026 10:39:18 +0300
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] can: rx-offload: add a per-IRQ receive context
To: Max Staudt <max@enpas.org>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Vincent Mailhol <mailhol@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Dario Binacchi <dario.binacchi@amarulasolutions.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Manivannan Sadhasivam <mani@kernel.org>,
 Thomas Kopp <thomas.kopp@microchip.com>, Ming Yu <tmyu0@nuvoton.com>
Cc: kernel@pengutronix.de, linux-can@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, NXP S32 Linux Team <s32@nxp.com>,
 imx@lists.linux.dev, Haibo Chen <haibo.chen@nxp.com>,
 Enric Balletbo <eballetb@redhat.com>
References: <20260925144558.2909639-1-ciprianmarian.costea@oss.nxp.com>
 <20260925144558.2909639-3-ciprianmarian.costea@oss.nxp.com>
 <0daea1b3-82ef-48f0-8d35-6ce0100b60bf@enpas.org>
Content-Language: en-US
From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
In-Reply-To: <0daea1b3-82ef-48f0-8d35-6ce0100b60bf@enpas.org>
X-ClientProxiedBy: FR0P281CA0236.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b2::8) To AM0PR04MB5858.eurprd04.prod.outlook.com
 (2603:10a6:208:132::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB5858:EE_|DB9PR04MB9498:EE_
X-MS-Office365-Filtering-Correlation-Id: cce91ffd-b157-4dc9-75fb-08df1d33a2cd
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|19092799006|7416014|366016|23010399003|10067099003|11063799006|921020|6133799003|22082099003|18002099003|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: GgNxXys003GvR/QwnEiT8ZP71HvPEORGm4Oo6gUWGFF+wM5l/yBND9+U626nZL3t1Z2CqjFLA/dWi5VqV7DWGJSHc8sYrssnW0MRFw+Aq1AcNCZSDY8FAVP3eFO2amgSRjsqjXFMvwwS/oJkw9W93+jXMnl36flRHka+QJS0+NRF8M0ukrYjA48kGwBrrtvJDfQyQ5BWmm3HVY4diPu0vJY83PXimIaueUrOLP106vWZF5MES/vi+hFBVY8psbm6kn2KI1/yjL/hQAbS3arqH9k5l2CE1mh7PaTnyX3AEKdWqcqvFgWN5SvIXhvVheJJBnBbjWOZ5bWRefszLvnkj1A3cw7534qcONjaoexkVp1lR7eNksEWjGE+xgsg3EUNfvdXkniXD9DEV8MPStj4LWtQqooW+b/lxjDlXU6W1HVV8pnyVozwp16SKXDtTo+GdkGDSllsR65NIGJMToKuAEaSHqwoKqIWbp+MapnU47Wwftl61O3itR61XjOKeHC1GW4wKqMsC2LvD488lHYbHecPGBZOD2PQ7pxHmzd4pBCAF8j5OcjU9QR5RJRCysQf3ADpXjAvBQuK/ZzXbb1hVY3Tuo5QsKYuQFO673hUApi1y9cWmboIrPz13pQEuXR5v6rs8zd8l9pHzj4eznUMvh/Hg+tpB96GwTIhpiu5+/T9tzdS0sEydOwGiZ2OBOM+SbSidMRGrkZ0JEk2dS1laQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB5858.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(19092799006)(7416014)(366016)(23010399003)(10067099003)(11063799006)(921020)(6133799003)(22082099003)(18002099003)(4143699003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aCtRYkVlMWVEQ2J0L09yMWFvRnFVWkhxK2JXa1hEaDNlaWh0SmhkZGZlWk1o?=
 =?utf-8?B?VmM1ZFdlTnlWUjZQeXh0cGh0OHA3K0pnckcraEpTRW8za1VNR0VIYkNyV0w0?=
 =?utf-8?B?N2N5d1VPWDRFNW0vcUZUdHZLbEZBOVllUWloREtHeFVaUVpNcG1FWEExQzhB?=
 =?utf-8?B?ZG80ZldkbHpkNmJ1NGQvWUpIVER1MGplSWJIbDcwM1pSNnhmUTVONGluazcy?=
 =?utf-8?B?OG9kd2ZrTGlFaW1IVFJQOVZtbDVUOWhkclJ2L2tSN3dRM1p4RSt1QUw2aGs1?=
 =?utf-8?B?SjBlMjVRTkNLOTZ2SytuVWZEMXJDdWZtelVBRldaV3pBN0hZRVdnRjBsV1Rh?=
 =?utf-8?B?Nk1jTllCZGFIbitNZHM1ZllGWHY2M2V5Rkppbm5VcTdUZ3BNS0Rzem5HeFho?=
 =?utf-8?B?bTQ2NW1WK0RsQjZGdHhLT2paQnovWWdhazNzdzU3UGlVZ0p0TzZsWmFNbkM4?=
 =?utf-8?B?dGZlYUxKYTB5Ky9zNUlkd3BicnUrLzB5Ymx5dUJRK2lqT2psWG9JdWhmTG1t?=
 =?utf-8?B?WVdncUYzeVByeVJobkNELzJwKy82Q2MxcXZVbW5jQmUxTnVkUXFhY1Npcm5w?=
 =?utf-8?B?ZUpORHppdVV6Z3UzRlViUmFGQXUwZExiK2wrZTNWV25VUWl0Vlk5aDROWWZ4?=
 =?utf-8?B?aklRQ1FLV0I5dTlTWUd5WkpyZHMxbWU2OXFYWmEyVkUwaHVxaEc2dFQyRXFF?=
 =?utf-8?B?MVljUmpPeGJCUVoxcWVJNFZyTDVKSC9LNlFwVHFtQ2I3MStTVGxNOFE0VjhR?=
 =?utf-8?B?NWtkcUxzZExJa3dOcm5jcmVkMEttU2kzRVl1ZUd0bDNNRDM2ak15c3V6TVdO?=
 =?utf-8?B?d1NZdWRwa1Y0Y2FIaFRUREJzZWtLUDBqL3pUM1hmOGk1ZG5yam5NeHhwc2tu?=
 =?utf-8?B?V1FhVjk3NUlaUTVOZHFaaGJ6RXdveXg4N3RrTTg2cGhlWmt5Z05YWFdUalBs?=
 =?utf-8?B?bUUxWWFNakZXZ3QycU5tVFY2QmsxZUtPdWZNNytxV0FtVS90Yk4xcWNMcmZU?=
 =?utf-8?B?U3Y3bFRNRmpDMUxTcFhPaVQ2UFhjVzk3VnplVFNETFVyeTE2VFM5Z2tnUzRl?=
 =?utf-8?B?a0w3cW1oNkFnZE5TeUgxbGVOcEl2WjRjdVV5TzNwcjg2NUxXRXBSMXlDWWtN?=
 =?utf-8?B?LzRXeW5LS0tmeVpkMEZ0eXZqdmFUNTFvOGt4Qk5YaE5Xc2RHeUsxK3c3c3lH?=
 =?utf-8?B?Vm1OZUM5c2lWWmxOUWNhWGREeUR2NjFjVktCNnVyTyt5T3EwT1dEUWxYa1dZ?=
 =?utf-8?B?dDFnd2xOYXlGbEcrcWQ2ZjlFRkxneFJOM2k3M0hPVE1BdXI2bEwyOUlsN1Jx?=
 =?utf-8?B?cTVlN3o1UCtlcjR6aW5ITDdjdzZKaW8wdjJWSmsxVnpIZUhGNDUrY3UrbzBR?=
 =?utf-8?B?WUwzK1ZqYzZ6VWRwL2pUc1hsNDdGOXlQZXVmVFN5OFJsTHd4TlNGVC9pcUlq?=
 =?utf-8?B?YXFzRWlXdGtMOWxvZWVGZGxuckk1Z2JPcnpLa0lma3h3RWZxMExXK1dZa01S?=
 =?utf-8?B?c2g4eVpQZFpvclNjSENnYVJDNWtFZ1diUFl4WmJLTWxjUGJLVFNiSjkrWUVs?=
 =?utf-8?B?b1Nxc3M5R29QenplSDdtZjNCR3oxQm9NSHRzZDZHT01uU3NEa0dqbmlSRWFS?=
 =?utf-8?B?bnoxNDRQb2JkTG9SMUlLSWM4ZlZIektVMXBjMjNkZ0NTZTFqbUxSZGdGaGt5?=
 =?utf-8?B?YVZlcUJYeXorSXdIVlZkRHdRTWpoVHdGS2txdnM0bEVzVmJrUUdOajZ5MFFp?=
 =?utf-8?B?RmdaT1lKWVBoMVlUOVhGNkJwUGtXNjNwYnYwTkZQSTFRMW9HT2lOT3lyb3Vp?=
 =?utf-8?B?bm5iZkxHZnVxZ2NuWnZsZFlpdEsxMGlkTFA2VE1QRElQdlhqb3p3UmR6czIw?=
 =?utf-8?B?TU9SbXhTWVVwUWIrQ25CNS9jNGh4VTRPOERmd3J0R2RTZGd3eHMxWlVwK0N6?=
 =?utf-8?B?OFB6dlRDWE1jc2xVYllIWmxnN3RqMmY5SXhtaGE3em43Rmx0ZllHYStPazlK?=
 =?utf-8?B?WUxhUlI1VXBkNUVsV21WN0RkVU41dmthWm5lbk5halMvcWMrL0hpTkREWmFn?=
 =?utf-8?B?R3NpWUE2TndDMlplb3ZZNVlBOTRYLzJ6cWxFd3ZNc0NhaFlTTDc3UitZbFJm?=
 =?utf-8?B?TVpqMWU0VTIvZEhnUENtVFJ6cnNoazErdk82Zk8wMXJKemcwbDEwZ1QzcTN1?=
 =?utf-8?B?alVrZUNGcUtuWHB1S1VUUWJZMitybmg5SElPZ2ZPckNzWXFOYnRTWlhGZlV3?=
 =?utf-8?B?ZkNucERVdnZkNmVTSjg0Y1d2S2xBbUdnWldsMWFhc0hmRnRIRjZXSzM1Q3Q1?=
 =?utf-8?B?bFRNbnFlQnMvUE44Z1pmT05NMEpwUDVRbDEyL3A3VVVqRmZCUEVsYnVCd3VS?=
 =?utf-8?Q?gKCY5ncLwRiXYM0w=3D?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cce91ffd-b157-4dc9-75fb-08df1d33a2cd
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB5858.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2026 07:39:32.3630
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wVa5CUjRhq/HyV5xLGZSs4wsieiRLD20nij+JHa+WBxb8iY9xTNIEZD/ZPSEfe9mqUkSBTA0RT+vbkKCi6TVqDZrkEOx+7F4FF97Qg8cC+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9498
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_003940_657826_422E87F6 
X-CRM114-Status: GOOD (  39.39  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gOS8yNi8yMDI2IDY6MjYgUE0sIE1heCBTdGF1ZHQgd3JvdGU6Cj4gVGhhbmsgeW91IGZvciB5
b3VyIHBhdGNoLiBUaGUgZ2VuZXJhbCBpZGVhIHNvdW5kcyB1c2VmdWwsIGFuZCBhdCBhIHF1aWNr
IAo+IGdsYW5jZSwgdGhlIGltcGxlbWVudGF0aW9uIHNlZW1zIHNvdW5kLiBJJ20gbm90IGFibGUg
dG8gZG8gYSBmdWxsIHJldmlldyAKPiAtIHBsZWFzZSB3YWl0IGZvciBhIG1haW50YWluZXIncyBy
ZXBseS4KPiAKPiBDb21tZW50cyBiZWxvdywgZnJvbSB0aGUgcG9pbnQgb2YgdmlldyBvZiBhIHNp
bXBsZSBDQU4gZHJpdmVyJ3MgCj4gbWFpbnRhaW5lciAoY2FuMzI3KS4KPiAKCkhlbGxvIE1heCwK
ClRoYW5rIHlvdSBmb3IgdGFraW5nIHRpbWUgaW4gcmV2aWV3aW5nIHRoaXMgcGF0Y2hzZXQuCgo+
IAo+IAo+IE9uIDkvMjUvMjYgMTE6NDUgUE0sIENpcHJpYW4gQ29zdGVhIHdyb3RlOgo+PiBGcm9t
OiBDaXByaWFuIE1hcmlhbiBDb3N0ZWEgPGNpcHJpYW5tYXJpYW4uY29zdGVhQG9zcy5ueHAuY29t
Pgo+Pgo+PiBUaGUgSVJRIGhhbmRsZXIgZmlsbHMgc2tiX2lycV9xdWV1ZSB3aXRob3V0IGEgbG9j
ayBhbmQgdGhlIGZpbmlzaCBoZWxwZXJzCj4+IHRoZW4gc3BsaWNlIGl0IGludG8gc2tiX3F1ZXVl
IHVuZGVyIHNrYl9xdWV1ZS5sb2NrLiBUaGlzIGJyZWFrcyB3aGVuIGEKPj4gZHJpdmVyIHVzZXMg
dGhlIGhlbHBlcnMgZnJvbSBtb3JlIHRoYW4gb25lIElSUSBsaW5lLiBPbiBOWFAgUzMyRzIsIHRo
ZQo+PiBmbGV4Y2FuIGhhbmRsZXJzIGNhbiBydW4gYXQgdGhlIHNhbWUgdGltZSBvbiBkaWZmZXJl
bnQgQ1BVcyBhbmQgY29ycnVwdAo+PiBza2JfaXJxX3F1ZXVlLgo+IAo+IFBsZWFzZSBhZGQgIkN1
cnJlbnRseSwgIiB0byB0aGUgYmVnaW5uaW5nIG9mIHRoaXMgcGFyYWdyYXBoLgo+IAoKV2lsbCBk
byBpbiB2Ny4KCj4gCj4+IEFkZCBzdHJ1Y3QgY2FuX3J4X29mZmxvYWRfaXJxLCBvbmUgcGVyIElS
USBsaW5lLCB3aGljaCBob2xkcwo+PiBza2JfaXJxX3F1ZXVlLCBza2JfcXVldWVfbGVuX21heCBh
bmQgdGhlIG1haWxib3ggcmFuZ2UuIHNrYl9xdWV1ZSBhbmQgCj4+IG5hcGkKPj4gc3RheSBpbiBz
dHJ1Y3QgY2FuX3J4X29mZmxvYWQgYW5kIGFyZSBzaGFyZWQgYnkgYWxsIGNvbnRleHRzLgo+IAo+
IFRoZSBJUlEgbmFtaW5nIGdpdmVzIG1lIGEgYml0IG9mIGEgaGVhZGFjaGUuIEl0IG1heSBiZSBJ
UlEgaW4gdGhlIGNhc2UgCj4gb2YgZmxleGNhbiwgYnV0IGNhbiBiZSBzb21ldGhpbmcgZWxzZSBp
biBvdGhlciBkcml2ZXJzLiBBbHNvLCBfaXJxIGdpdmVzIAo+IHRoZSBpbXByZXNzaW9uIHRoYXQg
dGhlIHN0cnVjdCBzdG9yZXMgYW4gSVJRLCBvciBhdCBsZWFzdCBzb21ldGhpbmcgCj4gcmVsYXRl
ZCB0byBpdCwgYnV0IHRoaXMgcmVhbGx5IGRvZXMgbm90Lgo+IAo+IENhbiB5b3UgcGxlYXNlIHJl
bmFtZSB0aGUgbmV3IHN0cnVjdCBhbmQgY29uY2VwdCB0byBzb21ldGhpbmcgZWxzZT8gCj4gTWF5
YmUgX3F1ZXVlPyBBbmQgdGhlbiB0aGUgb2xkIHN0cnVjdCBjYW4gYmUgcmVuYW1lZCB0byBfY29t
bW9uIG9yIAo+IF9zaGFyZWQgb3Igc29tZXRoaW5nLiBUaGUgbWFpbnRhaW5lcnMgbWF5IGhhdmUg
YmV0dGVyIG5hbWluZyBpZGVhcy4KPiAKCkkgYWdyZWUuIFRoZSBuYW1lIGRvZXMgbm90IGZpdCBj
YW4zMjcgb3IgdGhlIFVTQiBkcml2ZXJzLgpJIHdvdWxkIHJhdGhlciBhdm9pZCAqX3F1ZXVlLCBz
aW5jZSAicXVldWUiIGlzIGFscmVhZHkgdXNlZCBmb3IKc2tiX3F1ZXVlLCBza2JfaXJxX3F1ZXVl
IGFuZCB0aGUgY2FuX3J4X29mZmxvYWRfcXVldWVfKigpIGhlbHBlcnMuCldoYXQgYWJvdXQgc3Ry
dWN0IGNhbl9yeF9vZmZsb2FkX3NvdXJjZSA/IFRoZSBmaWVsZHMgYW5kIGNvbW1lbnRzIHdvdWxk
CmZvbGxvdyAoZS5nLiBzb3VyY2VfY250KS4KCkZvciBzdHJ1Y3QgY2FuX3J4X29mZmxvYWQgSSB3
b3VsZCBwcmVmZXIgdG8ga2VlcCB0aGUgbmFtZS4gSXQgaXMKZW1iZWRkZWQgaW4gZXZlcnkgZHJp
dmVyIGFuZCB1c2VkIGluIHRoZSBtYWlsYm94X3JlYWQoKSBjYWxsYmFjaywgc28KcmVuYW1pbmcg
aXQgYWRkcyBhIGxvdCBvZiBub2lzZSBmb3IgbGl0dGxlIGdhaW4uCgpNYXJjLCBhbnkgcHJlZmVy
ZW5jZSBvciBvdGhlciB2aWV3ID8KCj4gSSB0aGluayB5b3UgY2FuIGtlZXAgdGhlIG5hbWUgc2ti
X2lycV9xdWV1ZSBpbnNpZGUgdGhlIHN0cnVjdCwgbXkgCj4gcmVxdWVzdCBpcyBhYm91dCB0aGUg
bmV3IHN0cnVjdCdzIG5hbWUgaXRzZWxmLiBJbiB0aGUgc2FtZSB2ZWluLCAKPiBleHBhbmRpbmcg
dGhlIG5ldyBzdHJ1Y3QncyBleHBsYW5hdG9yeSBjb21tZW50IHdvdWxkIGhlbHAgLSBwbGVhc2Ug
Cj4gZXhwbGFpbiB0aGF0ICp0aGUgcHVycG9zZSogb2YgaGF2aW5nIHRoaXMgc3RydWN0IGlzIHNv
IHlvdSBjYW4gaGF2ZSBvbmUgCj4gcGVyIHNvdXJjZSwgKnN1Y2ggYXMqIG9uZSBmb3IgZWFjaCB1
bmlxdWUgSVJRIHRoYXQgdGhlIHNhbWUgQ0FOIGhhcmR3YXJlIAo+IG1heSB0cmlnZ2VyLgo+IAoK
VGhhbmtzIGZvciB0aGlzIHN1Z2dlc3Rpb24sIEkgd2lsbCBleHBhbmQgdGhlIGNvbW1lbnQgdG8g
YWRkIG1vcmUKY29udGV4dCByZWdhcmRpbmcgdGhlIHB1cnBvc2Ugb2YgdGhlIG5ldyAnY2FuX3J4
X29mZmxvYWRfaXJxJyBzdHJ1Y3QuCgo+IAo+PiBAQCAtMzUxLDY0ICszNzgsODggQEAgCj4+IEVY
UE9SVF9TWU1CT0xfR1BMKGNhbl9yeF9vZmZsb2FkX3RocmVhZGVkX2lycV9maW5pc2gpOwo+PiDC
oCBzdGF0aWMgaW50IGNhbl9yeF9vZmZsb2FkX2luaXRfcXVldWUoc3RydWN0IG5ldF9kZXZpY2Ug
KmRldiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
dWN0IGNhbl9yeF9vZmZsb2FkICpvZmZsb2FkLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgY2FuX3J4X29mZmxvYWRfaXJxICpvZmZsb2FkX2lycSwK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQg
aW50IHdlaWdodCkKPj4gwqAgewo+PiAtwqDCoMKgIG9mZmxvYWQtPmRldiA9IGRldjsKPj4gLQo+
PiAtwqDCoMKgIC8qIExpbWl0IHF1ZXVlIGxlbiB0byA0eCB0aGUgd2VpZ2h0IChyb3VuZGVkIHRv
IG5leHQgcG93ZXIgb2YgCj4+IHR3bykgKi8KPj4gLcKgwqDCoCBvZmZsb2FkLT5za2JfcXVldWVf
bGVuX21heCA9IDIgPDwgZmxzKHdlaWdodCk7Cj4+IC3CoMKgwqAgb2ZmbG9hZC0+c2tiX3F1ZXVl
X2xlbl9tYXggKj0gNDsKPj4gLcKgwqDCoCBza2JfcXVldWVfaGVhZF9pbml0KCZvZmZsb2FkLT5z
a2JfcXVldWUpOwo+PiAtwqDCoMKgIF9fc2tiX3F1ZXVlX2hlYWRfaW5pdCgmb2ZmbG9hZC0+c2ti
X2lycV9xdWV1ZSk7Cj4+ICvCoMKgwqAgc3RydWN0IGNhbl9yeF9vZmZsb2FkX2lycSAqcG9zOwo+
PiArwqDCoMKgIHUzMiBza2JfcXVldWVfbGVuX21heDsKPj4gKwo+PiArwqDCoMKgIG9mZmxvYWRf
aXJxLT5vZmZsb2FkID0gb2ZmbG9hZDsKPj4gK8KgwqDCoCBfX3NrYl9xdWV1ZV9oZWFkX2luaXQo
Jm9mZmxvYWRfaXJxLT5za2JfaXJxX3F1ZXVlKTsKPj4gKwo+PiArwqDCoMKgIC8qIFRoZSBmaXJz
dCByZWdpc3RlcmVkIElSUSBpbml0aWFsaXplcyB0aGUgc2hhcmVkIHN0YXRlLiAqLwo+PiArwqDC
oMKgIGlmICghb2ZmbG9hZC0+aXJxX2NudCkgewo+PiArwqDCoMKgwqDCoMKgwqAgb2ZmbG9hZC0+
ZGV2ID0gZGV2Owo+PiArwqDCoMKgwqDCoMKgwqAgc2tiX3F1ZXVlX2hlYWRfaW5pdCgmb2ZmbG9h
ZC0+c2tiX3F1ZXVlKTsKPj4gK8KgwqDCoMKgwqDCoMKgIElOSVRfTElTVF9IRUFEKCZvZmZsb2Fk
LT5pcnFzKTsKPj4gK8KgwqDCoMKgwqDCoMKgIG5ldGlmX25hcGlfYWRkX3dlaWdodChkZXYsICZv
ZmZsb2FkLT5uYXBpLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNhbl9yeF9vZmZsb2FkX25hcGlfcG9sbCwgd2VpZ2h0KTsKPj4gK8KgwqDCoCB9IGVsc2Ug
aWYgKHdlaWdodCA+IG9mZmxvYWQtPm5hcGkud2VpZ2h0KSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAv
KiBBbGwgY29udGV4dHMgZmVlZCB0aGUgc2FtZSBOQVBJLCBrZWVwIHRoZSBsYXJnZXN0IHdlaWdo
dC4gKi8KPj4gK8KgwqDCoMKgwqDCoMKgIG9mZmxvYWQtPm5hcGkud2VpZ2h0ID0gd2VpZ2h0Owo+
PiArwqDCoMKgIH0KPj4gK8KgwqDCoCBsaXN0X2FkZF90YWlsKCZvZmZsb2FkX2lycS0+bm9kZSwg
Jm9mZmxvYWQtPmlycXMpOwo+PiArwqDCoMKgIG9mZmxvYWQtPmlycV9jbnQrKzsKPj4gLcKgwqDC
oCBuZXRpZl9uYXBpX2FkZF93ZWlnaHQoZGV2LCAmb2ZmbG9hZC0+bmFwaSwgY2FuX3J4X29mZmxv
YWRfbmFwaV9wb2xsLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3ZWln
aHQpOwo+PiArwqDCoMKgIC8qIExpbWl0IHF1ZXVlIGxlbiB0byA0eCB0aGUgd2VpZ2h0IChyb3Vu
ZGVkIHRvIG5leHQgcG93ZXIgb2YgdHdvKS4KPj4gK8KgwqDCoMKgICogQWxsIGNvbnRleHRzIGZl
ZWQgdGhlIHNhbWUgc2tiX3F1ZXVlLCBzbyB0aGV5IHNoYXJlIGl0cyBsaW1pdC4KPj4gK8KgwqDC
oMKgICovCj4+ICvCoMKgwqAgc2tiX3F1ZXVlX2xlbl9tYXggPSAyIDw8IGZscyhvZmZsb2FkLT5u
YXBpLndlaWdodCk7Cj4+ICvCoMKgwqAgc2tiX3F1ZXVlX2xlbl9tYXggKj0gNDsKPj4gK8KgwqDC
oCBsaXN0X2Zvcl9lYWNoX2VudHJ5KHBvcywgJm9mZmxvYWQtPmlycXMsIG5vZGUpCj4+ICvCoMKg
wqDCoMKgwqDCoCBwb3MtPnNrYl9xdWV1ZV9sZW5fbWF4ID0gc2tiX3F1ZXVlX2xlbl9tYXg7Cj4+
IMKgwqDCoMKgwqAgZGV2X2RiZyhkZXYtPmRldi5wYXJlbnQsICIlczogc2tiX3F1ZXVlX2xlbl9t
YXg9JWRcbiIsCj4+IC3CoMKgwqDCoMKgwqDCoCBfX2Z1bmNfXywgb2ZmbG9hZC0+c2tiX3F1ZXVl
X2xlbl9tYXgpOwo+PiArwqDCoMKgwqDCoMKgwqAgX19mdW5jX18sIHNrYl9xdWV1ZV9sZW5fbWF4
KTsKPj4gwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4gwqAgfQo+IAo+IFRoaXMgQVBJIGlzIGNvbmZ1
c2luZyBub3cuIEl0J3MgY2FsbGVkIF9pbml0X3F1ZXVlKCksIGJ1dCB5b3UndmUgcmVhbGx5IAo+
IGNoYW5nZWQgaXQgaW50byBzb21ldGhpbmcgdGhhdCBhY3RzIGxpa2UgX2luaXRfb3JfYWRkX3F1
ZXVlKCkuIFBsZWFzZSAKPiByZW5hbWUgdGhpcywgYW5kIHdoaWxlIGF0IGl0LCBwbGVhc2UgYWRk
IGFuIGV4cGxhbmF0b3J5IGNvbW1lbnQgZm9yIHRoZSAKPiBmdW5jdGlvbiBhYm92ZSBpdCwgc2lu
Y2UgaXQgaGFzIGdyb3duIHF1aXRlIGNvbXBsZXguCgpSaWdodC4gSSBhbSB0aGlua2luZyBhYm91
dCBtb3ZpbmcgdGhlIHNoYXJlZCBzZXR1cCBkb25lIG9uIHRoZSBmaXJzdApyZWdpc3RyYXRpb24g
aW50byBhIHNlcGFyYXRlIGhlbHBlciwgcmVuYW1lIHRoZSByZXN0IGludG8KY2FuX3J4X29mZmxv
YWRfYWRkX3NvdXJjZSgpIGFuZCBkb2N1bWVudCBib3RoLgoKPiAKPiBUaGUgY29tbWVudCB5b3Ug
YWRkZWQgaW4gY2FuX3J4X29mZmxvYWRfZGVsKCkgaXMgYSBwb3NpdGl2ZSBleGFtcGxlIC0gCj4g
aGF2aW5nIG1vcmUgb2YgdGhpcyBzdHVmZiBoZWxwcyEgQWN0dWFsbHksIHRoYXQgc3BlY2lmaWMg
Y29tbWVudCB0YWxrcyAKPiBhYm91dCAiY29udGV4dHMiIC0gcGxlYXNlIHRyeSB0byBhbGlnbiB0
aGF0IHdvcmRpbmcgd2l0aCB3aGF0ZXZlciB5b3UgCj4gcmVuYW1lIHRoZSBfaXJxIHN0cnVjdCB0
bywgc3VjaCBhcyAicXVldWUiLCB0byBrZWVwIHRoZSBjb2RlIGFuZCAKPiBjb21tZW50cyBjb25z
aXN0ZW50IGZvciB0aGUgbmV4dCByZWFkZXIuCj4gCgpXaWxsIGRvLCB0aGUgY29tbWVudHMgd2ls
bCB1c2UgdGhlIG5ldyBuYW1lLgoKSSB3aWxsIHdhaXQgYSBiaXQgZm9yIE1hcmMncyBmZWVkYmFj
ayByZWdhcmRpbmcgdGhlIG5hbWluZyBiZWZvcmUKc2VuZGluZyB2Ny4KCj4gCj4gVGhhbmtzLAo+
IE1heAoKQmVzdCBSZWdhcmRzLApDaXByaWFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
