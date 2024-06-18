Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99BA0C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 17:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eWyfkyXnrNFOTn6iRAqrnyjsFVe/4kY87gIDK0N/S60=; b=QCHvOfhCFEuuUaLCfZyZwSFTy5
	RD7Fl3kXziyWT29HJ3O/t5nF6eV0cy7SxJY322B/idu1HnzPGXc8iy7ovEg9nbZfQB3dtCI50/aC7
	CL2Dv38VWbhlvgPpS2YDQ+mmX8J4HKZI8Lj3rkVD/UZAYOXZj3BzDXJhJVwECrZMNHzLQ6NT/y2pL
	Ym0B6Vz+DxNsHk/aYCQISB/L8hcualEaHyrCh7PySpqANfFl2lrcmqeqwK21VRImlwHNcDBfu9NJ2
	4vnwcSH72M6OcQcDbrUf/axTGHm7klvABNzpu6G1iSAoDMMD7QKmOoUR4z6xpc4/zsLNf5794NGl2
	oW/tuEww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJcRk-0000000G093-1dlL;
	Tue, 18 Jun 2024 17:16:40 +0000
Received: from mail-am6eur05on2072c.outbound.protection.outlook.com ([2a01:111:f403:2612::72c] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbPL-0000000FlMt-1tfY;
	Tue, 18 Jun 2024 16:10:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g1ogDyRTqfDlXoKQX/UgONZNrTzjrXI8JzPvB1QTgCNfTCmvauogO0jSUrbHoZQLJr6p0bKs4xi2NjilPAfbGv5Ck7LUaaZO9uCf4BkqubguOW1HuaDf7nNd7ffHOaXEyveGBFb1bS5a0li0Ls9WaHGBP/0ZgU3m56XhMmRWqiYlXMT0VmacNHSQaepcN9opofEW78Wa3Ac2jYzqU893zeaP+jIjQIoy4wK1faZQ8xmRPP6gnM+EpL4cEGOOOcy8pCjfD89oG/AOrIj8vb51sOm9LWUBvavY9UTB8Ww4VmT9sjn6r6rvxmOKuakTfTJvmzyu1Dx0GHMgnxgYB3Ceww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DyJgtSIXL+qYOu8RbmMP/ysmghYyFQgrLVvUP/JGLno=;
 b=fkXfYwxj3BADWm7CYfQBtmlrwA5lHqWcLcBWyT9LduMjW0dd7m31cTzTPaNGRGsU+KVf8A6WuNHsDvLDM0O6Po43CtcBzr0uew0rs0hoNKrkE7BrU/ntTeJj8AuHKDBLzHMc4ItXbiMMiHYFLbcZ2rsIKpH2z3vFwlIyhAkt8L6opNFeijenr07OXsMiXENMBJfcMMDRAQCawk8X34PUQd5kjbqgoClvLoPfb5rDBBb3s+1mDYEvNXePMWFplmhS5YEc1rebues6DvG1NCjWY4E/ohGlz+dNKTqqJisiHVcAjjgABFLUR2W15ZBLhmMNRVEJmEeTfX7SEfdl8x6XOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DyJgtSIXL+qYOu8RbmMP/ysmghYyFQgrLVvUP/JGLno=;
 b=Wkvu7ccFlRgWRnO2lxWZ63/7Gln/+ba9mkGrJNVJFXBD8WcNykhs+O70JWr280+LrxDqgPeO4M1ENpGqCpUI4YlKGz9/9+AO7K2wT3kHcGvl23g6U81ypyRPiozzNSbJn+Cv1FeTarPR2/fk3dPgehEb52eFkK2EHuKfR067vYg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by VI2PR04MB10642.eurprd04.prod.outlook.com (2603:10a6:800:27f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Tue, 18 Jun
 2024 16:09:50 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6%5]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 16:09:50 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Tue, 18 Jun 2024 18:06:49 +0200
Subject: [PATCH v4 7/9] arm64: dts: rockchip: add mule mfd (0x18) on
 rk3399-puma
Message-Id: <20240618-dev-mule-i2c-mux-v4-7-5462d28354c8@cherry.de>
References: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
In-Reply-To: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Farouk Bouabid <farouk.bouabid@cherry.de>, 
 Quentin Schulz <quentin.schulz@cherry.de>, Peter Rosin <peda@axentia.se>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.0
X-ClientProxiedBy: VI1PR07CA0286.eurprd07.prod.outlook.com
 (2603:10a6:800:130::14) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|VI2PR04MB10642:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bd627c3-7477-43df-dd1c-08dc8fb1150b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|52116011|7416011|376011|366013|1800799021|38350700011|921017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NGxBdm16US9ZVUdvQmVKSE5sa3ZXYnpYckFLeVk5SFRPVzFvT0dkMngrUUMv?=
 =?utf-8?B?clNTRzh0d1VxV1pBSWZvZ3BnbGhoNGpFWUJuM1FtVnh6UFcrZG5pWmFLbTJY?=
 =?utf-8?B?dm5BaEM1Ni9URG5aWUZkajVCN3A3M1JEcFh0QW43bjNBV1BybjQ1c0VGWVpr?=
 =?utf-8?B?MGswbnpYTU5GVWZDVTZSS2k2bllWR085QnFzRkM2eEEzY2VvMlBrV0x1dmdS?=
 =?utf-8?B?eVY5clJNenBQZGZQL3h2TzdjSFZYV2R5SkpYdUpodG92ZjVxUDN0NDc5UTBS?=
 =?utf-8?B?ZEJXT0ZTMUZsL1JuekNIQ1k3NjJ5ZUxUTFpBOXUwMEI0bWh0VDZDaHRxV0t4?=
 =?utf-8?B?YlgwZEtuVzFmMVZPSVh4UkRjR2NLVGc1RWtwWjlibFRpU3l5c3daSFhsZWsy?=
 =?utf-8?B?akIwYVRoV202WFFJc1hKTjdnZmNDV0NIYUc1U1R2ZGp4WkhKMUtiMzg1QnBa?=
 =?utf-8?B?YmhFT0JpdlhhVjRWN1lleUw3aDdNdFhwcjk4REhWVzVhTHBsRUpnLzBlRWQz?=
 =?utf-8?B?SWp6MEppVm1oWXZ1b0s4MGdCSW9IaldXOGtqemRlYWRWU0dnVlN3MzVtYktN?=
 =?utf-8?B?eEJvOUJ6YmtPMVE1RzFISUxHb0JXbHpGaHo5eWZFMElQaGVwbHZvajJ6bFky?=
 =?utf-8?B?eVVRMFM3d2c4dnh4V1BQUWhvdjlFd1V4c1NDSndwODhvYTRQQlkxYTF1TnBu?=
 =?utf-8?B?RmhjRjFvK2JaOFFFRHc2d2lXV0JPWjdNRVBEd3Z2Z2lqbUcwRVUzclhxU0NP?=
 =?utf-8?B?dUE2dHMvZkg2K3pFbnFDeG9QdXVUcDBTekFXN2x0VURvbzNhZExPWmowaXc4?=
 =?utf-8?B?UnFsa3RxN21jcGtWOHJhY1FNL1dBZjlFcGhTaC9uZS9FOFhxOUZMVFdWVUdR?=
 =?utf-8?B?QnR6c1F4VkgvenEweFowTEVhWUlXS0FVaTZ2Y0IvUnZjV3B4WHpieDZYQkRl?=
 =?utf-8?B?Wkd3UksvcVNOMzlsTDd6Vm9EVW9kdFltemRjNXJhVUdocGJ5Qmk4Q0dvY3pL?=
 =?utf-8?B?RXlsKzN1LzVtb1B0SUlrdFJEMGVpYUZsajBvZjhsV25aWVBiVlpwSGFHck1B?=
 =?utf-8?B?eUgweEdDQjl0UVJQeWR2aDFFYmV4R2N3ejMvc3dSU3EvN0Jkc2oxcmF5K1V6?=
 =?utf-8?B?citHcGRJOCs1TVRtcmlkNk9mZzVxOXNxbmNuSlExYTllOFByWDE4dTk0TVFZ?=
 =?utf-8?B?WE0xbWRmQUJVN2ppR29rMy9OOGxPbXRsV1UxNlp1T3pRS2JaMEcwQXhhSHAz?=
 =?utf-8?B?OTRvTzR4UGdlWDFJSnBUUUZ5V0ErRnVQWG95eGdDdW1vblIzTnlpV2krYWRz?=
 =?utf-8?B?RWJUZWZabUprcER4T2lMMkZGOFViNnJ1VmlKNzdoazJHTEFPOW9CeVUzZ3VR?=
 =?utf-8?B?Nk1jUG9kSXFYemRrdlBhR2R4YnJXeU9lOVI0V052eTU0N2VpTjEvT05OYU9X?=
 =?utf-8?B?RkxJZ1hUbThJSWFZbURvNlZIV3Q5c25zY0hHYkFBNXlvOXBDYmlZWm93b0E5?=
 =?utf-8?B?RDVoUmZDc0VvdE96THpHQmZVK2JkcXdyYjR2UWN5K0lKa2RnNnVlUnFOUU03?=
 =?utf-8?B?K0xDMHZoRDRXNm8vUTNvanh3RzkrTjRpZ2w3RjJuWmdScDU3TndQWndMMmFG?=
 =?utf-8?B?NUhtU2l2QTBHWnQ0SFcwTS9Jb0ljZFRJUHh5S2RuUlBzSGkwWDgveFdHMnZF?=
 =?utf-8?B?aEppNUZyOVZvUTdsbUpMdWxIVk5mSXpZZVovU096bUNHZzhFTjNUeU12VDVV?=
 =?utf-8?B?dnhqRmg4S3ljc2tYN3I3SVRCcllPUnlMcUlYV2ZNQS9nWXlKcU53VU9BYmRi?=
 =?utf-8?B?S0dDd2ZWL3hIRm9wa1JzZExnYVlLdW5Bb3VtcWxHSUhURXBVNkNqcjNuUTMz?=
 =?utf-8?Q?uLOcsF7EkHQiy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(52116011)(7416011)(376011)(366013)(1800799021)(38350700011)(921017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFBWelYyVzQxZ3BtZC9lcG9qVzJUSGFZeVRvcVdiWkVZcjU3NDZZZ2l1RkIz?=
 =?utf-8?B?c01Udk01UGhmT2g1ZkdCRjN0elh6VEowWVpuWXBlWXhBVkpwWG1TeTVuV0ZR?=
 =?utf-8?B?NEt5aU5veU02TUhPV3o0WXkyb3R6UThZbXZvdGppaDVtdFBxcTFrNXV4Q2t5?=
 =?utf-8?B?QnFEQk54YXpuQUNydkJGYWM4T254c3BpU0dKb1l0cUtHM2dwbEd2bzdFb1hF?=
 =?utf-8?B?UlJmQnhnT3phU2k5VVpaRjF4Z3k0WWdzT1prRDcvb1lJRTVSSnlLQlFEMlVr?=
 =?utf-8?B?S2Jnazd0U0ZaSHg2MmdOM1UyZDFqTkhkL0dua3VwTHBYQzBGMmpHWFlNQ3ZG?=
 =?utf-8?B?V010Q1dCeWEycW9QTVRnR1ZVa3hHSWRZVGxteXBjYmw1d0ljYittOVV3WEhz?=
 =?utf-8?B?TFNIWWIwUFFKTjR2aFZ6K2JvRndPR1Y4V2plNE9WZ1o3Rkt2Mm1ZS0FYeHZ6?=
 =?utf-8?B?VWpKYlBqSkRtekNuNWV4QmpGTmxUTWQ5bFJNWWswWjZsdG5odmt3NUY4VkFB?=
 =?utf-8?B?QUFYWmM1b1NJTS9rc252cmJBTno3aXRkQjkrVmYvb0k0bExBRE93MXltdVNm?=
 =?utf-8?B?VUN6OEVETzB2UnpZMkRwemdkUkx4YlIrb3N1TjZwQ2pHcW9Yb1I5R0EvdUcw?=
 =?utf-8?B?U0pPRnJWUXVpR1B4azFWd3FwS0w1eDhua3U0L01Ed2piSW5WVFVid1htY0dB?=
 =?utf-8?B?U2g2ODZaT05hVUdsdllSdVBGSFQyUk04b3VXb0xaRTJQamVqd2xCZ2xkUU9u?=
 =?utf-8?B?NGhrNFl1OEYxUnlTVVZ6SWk2ems3Zk1GOWtzdDN2bVRrbkRBM1NuRjlDT1la?=
 =?utf-8?B?QXdSemk1NkRBNEZYSTM0STNkL2JGeVZLbjI5SEpDdFpaejZPbEFyeWNDQzEx?=
 =?utf-8?B?aFhlVE9FQVBpbkVYdDZZbWEydExuNEUvQjVDVUhKZm9pSnp4Zk1CUzlPeDl0?=
 =?utf-8?B?RHFleFBqVVhDZ1c2R2hSQ2czeGN5Q0JkWWFITzlSMlczeVBhS2IwaFpubHJs?=
 =?utf-8?B?UzgwR3NVWitTV1NLVi9lYTFWNGdnZzh6WkZNMlZLYjE0QUtLdWNtUTkySGNF?=
 =?utf-8?B?SFJyK01TczJnUkgybHowWFpxM1NKYkw2c0xCTU5Xc3MwRkFYd2gzcXI2Ympn?=
 =?utf-8?B?aUNpSjE1aTE5ZEI4U0JiT3pRODFzenpZRmREUzZua3UvTHhzU1VzaE1Nd3lR?=
 =?utf-8?B?eVdZd2M2Yy9tNk10Rks2RXAwRUFhVVYxbHhnc0VIWituNW9EMWoxYk4rWTR0?=
 =?utf-8?B?MjFyNGdMZVZsVFRWWTlNU1BSdDAxY1ZrRkVQQlo5YnNOTWE2N2l3RVVENmhJ?=
 =?utf-8?B?TVRlaXhiZ3JHVGdYL2ZGQ25zOWdDeWpRcy9JM1YzeEpicEtJSCtZRUExM2c3?=
 =?utf-8?B?aWRkSmNtOVZsbVZ2ME1xcUZJenF4ZTl3aVUwUURBeTBjR3loYmNGc0U2QUpS?=
 =?utf-8?B?Ni9sWVhJa0xra0xkS29RU0dDT2dxaXJqZmhrQllnZWdyaUpXUTJLTXVxUjha?=
 =?utf-8?B?dHVHY09JRjBxRWxlZFBrN0dpZmJOaGRvaG54d2pEcGhsakU1Y3JaZ3o0TzVI?=
 =?utf-8?B?c1FHblljOVhzVDg0VHVtaWtVVFgxYktvOHFJVHJwUnJFbWI1ZjZremY0dWJH?=
 =?utf-8?B?R25QVkU3M0ZyU2hURW5BZFdsWHBnMVFPMW8xNUIxTzd0MWw4aXRtV1FuOW05?=
 =?utf-8?B?OTF4dkZOSHVOSVFoTjQxZElxSFRTUGFPZFdUckR5Y08xakpuTCtheUdwL3A5?=
 =?utf-8?B?eStqcXVDUm1TalJNZEV5R1hJVmx3WWYyazY0V21Va3dWMXpaREUvK09MNHNG?=
 =?utf-8?B?V3J5R0pGZ2RUcS8rUVNSRlBrVVNORmsxOE9hMVEzczMzSHdWMHZwdEUvTHRK?=
 =?utf-8?B?UmVTKzZOWlQxLzRkckdWbzNhRW91UmY1bnY2eTlYUjZjSFZOTTNSeEhBaUFi?=
 =?utf-8?B?aHh4ck1jcVUvcTA5cTZoODRjdUpOUWorckM3Y1d6YThHN1g4MUNaT090Vk1x?=
 =?utf-8?B?aVJGZFJWUDB6aHRwdVp6em1zK0RzUnJqY3JxbFZDWTZ3WU9vRXJPS0pGTGZq?=
 =?utf-8?B?aC9EZUt0OVJHOGRWRWhPNlVTdzZHS1lhYjQ3ZE9vcEwzS1ZsdHlza1RPa2Ew?=
 =?utf-8?B?a2lZNmp6cEIwbTRoeWZLdmJleXZmM3FJMCtvRlVCZWhldm5PTTFORm5NeTht?=
 =?utf-8?B?M1E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bd627c3-7477-43df-dd1c-08dc8fb1150b
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2024 16:09:50.5914
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vrfc+VCXVe3ccAuH1/4cGuGX7GXxXDcahyIwE7b9cvNdyrdfgR56hL4achGEi3urfoQC34AJjGq0e6qbX79Iw6K73IeUhnoydP1h9SBx6Bo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_091007_746266_BE79A313 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
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

Mule emulates amc6821 and an I2C mux (mfd:0x18). The isl1208 is exposed
behind this mux.

Add the mux node and isl1208 as a default device.

Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 33 +++++++++++++++++++++------
 1 file changed, 26 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index ccbe3a7a1d2c..052c01472c5a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -10,6 +10,7 @@
 / {
 	aliases {
 		ethernet0 = &gmac;
+		i2c10 = &i2c10;
 		mmc0 = &sdhci;
 	};
 
@@ -377,15 +378,33 @@ &i2c7 {
 	status = "okay";
 	clock-frequency = <400000>;
 
-	fan: fan@18 {
-		compatible = "ti,amc6821";
+	mule@18 {
+		compatible = "tsd,mule";
 		reg = <0x18>;
-		#cooling-cells = <2>;
-	};
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan: fan@18 {
+			compatible = "ti,amc6821";
+			reg = <0x18>;
+		};
+
+		i2c-mux {
+			compatible = "tsd,mule-i2c-mux";
+			#address-cells = <1>;
+			#size-cells = <0>;
 
-	rtc_twi: rtc@6f {
-		compatible = "isil,isl1208";
-		reg = <0x6f>;
+			i2c10: i2c@0 {
+				reg = <0x0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				rtc_twi: rtc@6f {
+					compatible = "isil,isl1208";
+					reg = <0x6f>;
+				};
+			};
+		};
 	};
 };
 

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
