Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93D93C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 10:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aOWkNb2Gb0rVL++n1FpWNs5aRqpl5/rnxUyO4428taI=; b=lJPwHiZiGp8hYhIjTwqvtqSStO
	MOPXPLNw8XS2Ox776G9QpQ5icV9V5eGiNKp3IQLY2uBCZ6GRRUwkyitiUEfHrljIVfX8lWT0bOkMc
	8rMJwpRQ9RWi8RQcYG7AXNr/eKoB+4Vx7IpX2y/cFQWHCIDreOAgQoYrvPfgxEl7yIAuWGLq0EEbY
	Uf4VRvDTX8GuP3BO3rAh6ksF+DYss1DP54pMzgYFW2dHVg5+0FWQbGnSGDM61IGNajYHoYBCxC/rC
	fX9BECJh0TK3xp9WB/R85BPmu8lauQKoWOh0qVLRenEeigg/ST1VitiNHcSCWd/XNe5sNEDdF23MI
	DwJXPgRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsJB9-000000085la-493G;
	Wed, 12 Mar 2025 10:19:11 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsJ7x-000000085Mc-3hBY;
	Wed, 12 Mar 2025 10:15:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HMuE3kXp052e+yon0eotBtXokFyywlUjoXQr5ChRR+8ylvbrkFz49YasKo3ORJs6yaYb8asYwhAwdJ954JKUqPYQk7LCU8V5BKeZL3+CqH86MhK6LEnN9bay1T9jKXnlenfqcA/jZgy/AEz0CGInyYqc6cST1ycCaf0Sy+IbZB0tuzuMqQ/4BZ6BV4YugeRXTzE8+GTApS4xFNtUXtHCGCMtu6EUlU3STxRUhdeRpgxbB2aazk4MSn8geoGqcnjBU635PUzLE0eRiuxir0VQ5HaS4hF2Vwgcsc0CcdN/weKneGuO4SxS6NWudrc4jKIl7+vhNJK6d+RwTPFv4vC2yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ERf+ymyqRiU8mcDEb2pLA8db02g8C2m6b1cNm9H2Z98=;
 b=kPZUvbvNVVNBVn7xIgXjsR78Hp5QsUKdF1QjbOql3AntNHfKyIhtVehBcecZfRNspYl+j972ZboMIQygmMmcdcrZ+oQR3Oiq7TQNyH1jyEQ+W81jjBUIeEY29IpwrR0NMQ4rGaUWQOhMQ/a0qXM6YtswdiuTnU7p38G9xuH6/Xp0rNkZh1ojbYyva6BOcqiRjZ690G+Yft+1jk29bbIiU9z2kBNSqVbWiqk8ZnEGQJ+38f8i17CIbC6Ki7lVvXxAorAgdQ7OnJ34Anoej6GRGhvJYnV/K90mYBl2IauX9hdVSyvQvXqeMNeKHhBDIY5qXzw7AnZca5KJ59PzMeK4fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ERf+ymyqRiU8mcDEb2pLA8db02g8C2m6b1cNm9H2Z98=;
 b=AF7icau2ypiDtTMOuRq/6cNPcaliDtM9llGltJPpbrHW7UjsIAu8sW8xr3xxhU/7YygNx+L7cX4oPU372JMSYKTTCHlBpUeXCXf9Z2w6LlL4abwgHAPOUwgF95LPE948X7/Fjhc6m/UIU7G8Rt/t1zrro3Ot1mAXL5gCNo8FpGE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DU0PR04MB9251.eurprd04.prod.outlook.com (2603:10a6:10:352::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 10:15:43 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 10:15:43 +0000
Message-ID: <e55125ed-64fb-455e-b1e4-cebe2cf006e4@cherry.de>
Date: Wed, 12 Mar 2025 11:15:42 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 7/8] arm64: dts: rockchip: Add OPP data for CPU cores
 on RK3588j
To: Alexey Charkov <alchark@gmail.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Dragan Simic
 <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
 <d8ce8db2-1717-40f8-b53e-24cc71a758c9@cherry.de>
 <CABjd4Yw-r-ogfwcrph4K1wbkybS25gk6LFg8wpqLG27uWdybNA@mail.gmail.com>
 <2914631.KiezcSG77Q@diego>
 <CABjd4YxF4N1tAgGUZk-oKkMUO+Q9rWHZsas9gMQdJ+TF4A1=NA@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CABjd4YxF4N1tAgGUZk-oKkMUO+Q9rWHZsas9gMQdJ+TF4A1=NA@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0016.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::21) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DU0PR04MB9251:EE_
X-MS-Office365-Filtering-Correlation-Id: de83757c-635e-4723-4c33-08dd614ed8d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Wm1zUnVLM1lOclU2YTBNUXN3UTZZY1hkT1pjejUySGpvdUdkVzFiblFucnN5?=
 =?utf-8?B?VDE5alBKTTV2MjMrRmt2VW92cGhuYVpZQ1drUEJOMXNWN2haNlo5dXVRbmFW?=
 =?utf-8?B?VURtK3krQXlNdWxxZHc1NGMvanIzVWpBVGFWMk54dVhlVjg0ZStFd1ZTQnF1?=
 =?utf-8?B?Z1owcUF6QjMrMXdmVlFUYUhTZ1RtK2JhSFVSeW85QzRWT0w2TWUrOWpjM0JV?=
 =?utf-8?B?djJ2UGM4aWlPUXBjN1FYVWJsck8xczZHbzg4aXRYMFdqQ0lCVTNWT1J1R2dx?=
 =?utf-8?B?aVU2b1U4TkJ6MWdNYmMzZDFTU29FMEJlY0JXVUlOUVlRb0VTOVZlcVA3WFVr?=
 =?utf-8?B?SlBvTS9mTXdwRmpGbkdxUHJ4ZGNLdWk3dmNTVkY2MU50MUdWVDBHdVF3dGIr?=
 =?utf-8?B?RWtKTFZhM3F2TUlHTkVURWJlYTVLSWZzZENBWHAzWEVYVFNqcmloWTFNcjRT?=
 =?utf-8?B?dVd4SHJITDN2SGtYZUljYW5CQm4xcW9lcmEyZS83YkROS0NpWEFaVktZRUpG?=
 =?utf-8?B?WllPNjZDWTd3dks5Q1ZTYmRKek9keEZqZmlXNWUxUTNKd3BvVnVlODZSTzh0?=
 =?utf-8?B?cXlMdGVJcmlsYjBWZ21hUkdWTzN3Z1BpOXpYa095RlIzMWtzc0VZUmlTUFpv?=
 =?utf-8?B?QWtyNUl1RGs0RGllOWNLK3JYOFBBd293QVl3RXQvTjc2VXF0UkxHSzJTbkFP?=
 =?utf-8?B?SGdRRmxWbVVnREhlejhmaDJRNXI0eU1WOEtoYWUxRXl6N2lNbW1VT2lnQ3Ir?=
 =?utf-8?B?RERiek8wbzh2RGsyYUhFOFUydDBDSHJ1WWpReDdvZDQzOVI0bFcyeDhTRnV3?=
 =?utf-8?B?bHNEM2ZUQ2pWZHBPU20rR1ByaG9CcVZxOExMVHZiZ2RHOE5HM3BaWm9mdnow?=
 =?utf-8?B?Nm83RVg0R2h6TG41cFkxeTVYa2N3WHQyNVFOamFKSUpjUm1WRE41SFFUbTkr?=
 =?utf-8?B?dk5SU2NHaUt2VUFlTU1nQ09sd2cvTnpTWDNGd2xLWUxPdXo4dEd5QUJHakdH?=
 =?utf-8?B?Q3VvVmU3aTVTTTNhVjkrYTVxL2tZVEVWWWlzeEJGT2xYVWF2WWFYRmQ5WXpH?=
 =?utf-8?B?RXFDZnRycTlaUGsrZG1uWCs1V1Z6Q1g4VGQvQzBNODBablNMRnVwQ3FmOWI3?=
 =?utf-8?B?U05ENHFGaStpSXEwbW5QdWYwMkhLZTBIemJNaVFlam4wRk10bG1aQkEzeXFF?=
 =?utf-8?B?VmtldGYzQmdhOElDcXFhSXJIZHEvQkxkUjJ6K05NMUFhUEtDSWZpSGNFR0sy?=
 =?utf-8?B?ODUrQ3pyK1NEMTNmcFpzenhJOG1BNG0yR1RYTElhQ1ZYVUlmWDdzSXRzMHUr?=
 =?utf-8?B?U2hvNWExR3kzY1pwOTdWcERuUnJSeVp4MEZGQ2VqeitHaEtsd2F3MnJBOCto?=
 =?utf-8?B?NGEvVVZQQVJmVWlsckVDOFV2cEdKaHNZM01EWWI2RUVZMGZERHRPMWV3QUpR?=
 =?utf-8?B?SllsUlZQNnkxTFpJS3hnVi9oSkZQUGR3YjZURkZLR20vNUJpUUw1ODg3RDda?=
 =?utf-8?B?TzRBZnN5NklRT1ZINXlHMk1QNE51KytIcXhUYkRqU1g4YjVUSmJ0aG8vSTdp?=
 =?utf-8?B?dy9EbzVoY0hFUG55Wkpnd0Q1Y3RLRGdoZ0tRL1RlWGI4SnFUVE8waHUrb0RL?=
 =?utf-8?B?RERid3lRYjNoREQ2WnlUUkVxWVlGSDFIOTBIalpDSEJSL0NqK2NwTFFWTmVx?=
 =?utf-8?B?d3pISzYwUkJpWlhPYmIxLzdXakJ6N0NXelZ4RXBscFRkWVFMSlpUTE5QSTcw?=
 =?utf-8?B?aVNoT2lKNnczdHNpb3cycjk4WTRYUGFGSHpBMXF6ejdlNkI0ellNTllwaHha?=
 =?utf-8?B?Ynd0K3I3MTFJKzd2VjFvUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1NxYWw4R1EwejdNbHJxZ2R2Q0RjdnAzRWE5R2lSWFJqbUJaZWlpaHdZTUpP?=
 =?utf-8?B?bnVGT29UWmt1MHdaL0hObGVFM1hETkFoaWV0alZEdHJBQWMyLzQyb0V1b0Ra?=
 =?utf-8?B?OEk2cml4Y2orVEt3b2dXSDIwcVVQNUkwRmxYcFM3Y0FaMGIwN21DVVBXR29m?=
 =?utf-8?B?c0JnbDhDWUhGdkRMV1lJampwT0VhM3NMY0ZSdE9PamRaQnl5UWtlYktyS2F3?=
 =?utf-8?B?dFNGeHdOaHhuQTFsODVPaWNQR3VMRTVKaElsd2dKTGVVc3JQbFVTV05NdHI5?=
 =?utf-8?B?TlNtcDZVQXRLR2VZVTVZUEI1Ulpsd0EyMUNZakN1WEdNaWVTK2diQ0xZT2to?=
 =?utf-8?B?eTRTbHZlci9HazB5a3hyb2VLd3psamhUNDJ6OEhjQmlKME9yVHhpWlhJbDE2?=
 =?utf-8?B?RmptRjlkNDNDL3RMNXA0ZFRoWmtFRmRIbVV5Q2FiQzN5L3pHVVJ4Sk5TUWdp?=
 =?utf-8?B?QlRqcWVCZWRKK1Bwd1RDSVE4dDZyUEl6ZnpML0hXalNmMGVtVndNN2N6QkVJ?=
 =?utf-8?B?dFh4V2RaL0ZCL2xMbmwya09TRkNRRHg2L2t6b0VUbC9ITk9iZkEwSFNxM1pO?=
 =?utf-8?B?Wm02c1ZJcG9hRWp0MkEvS1NCbGg1VTV4ZldtZWhTcW9vUCtHUzJsYWRId095?=
 =?utf-8?B?ajFrc0FVQlkzSnlURVdWanNWbHE2bGgxU3Z5dGRqd29LZzgrUzNQQlRhMHFv?=
 =?utf-8?B?SHo2SGhJY1UydEY2eEh1S2NicGJWcVpaMy96OHBNNm5DNWRGQmhEOUY4M3JN?=
 =?utf-8?B?bmNDNE5HVVBxVVdSZWZCdlY4OVpDS2xZK0ZQNk5DdkkrM2U1dzRRNFR5WDI5?=
 =?utf-8?B?eFpPVy9mY2lWRDNMbllZYTVVcWxSY050TjRuS1Y4RlovNFo1MnpVTEEvRWpH?=
 =?utf-8?B?MHNsSkI3RXhBejJTTW13Y2o3L1I0TCs2NjcwOGhFVFB0QlBJNWtRM0RxS0h5?=
 =?utf-8?B?dGJwTElmdzFhekZOYUNONWZIVGZjZWZ3MmFHOCtLTXJIRUVsSTNRUnB2OVEw?=
 =?utf-8?B?REIvblRGMnRhVzQyWUVhTC96cWxDSktjQlVFTjVpZlRSWkJuRG9XdDc3VmI3?=
 =?utf-8?B?bkNEeXlsS09TTXNhQXJGS0dmSG9HTXcvWFJQYk1sMnNCNU82Uy84d1V4SXNj?=
 =?utf-8?B?M3oxODRoWkN0aVpuTG5DNTRNWjZsa3VXSi9Ra3BvL1p3UDJXOUR2ek1jWjBS?=
 =?utf-8?B?N1RObmY2RDN5VmQvWTlUQVFQc25NZnZVb3BKRGNoaUlsV0YzOVFQcTUxWTgv?=
 =?utf-8?B?a0NRcWRJNWkrdDJEblphaXBXekk1bHk1dGY4ajNhNVBoL1lUQlhva2tKajZM?=
 =?utf-8?B?cFpnVDlya2xEWG5HbUFienhqenBOaXU4d0k4bkg2QVZHUUhRdEwyUm9YRmhS?=
 =?utf-8?B?Q1hsUS85eWxMSnk3SEIrQTRMYTEyTk1ub1VremFiN241bVByZDhVY2VlV09z?=
 =?utf-8?B?Q3dFRVhkWVI3cjhKbTdzRmtUckRTd3ZPdHdJeGx4OElGL0lIRXpnUFN5UGRF?=
 =?utf-8?B?L3phQ25qSU54VmhFRkQvR0VNUHdjdllDbTJGWGpQbEhMKzhHY21tV0dBdXJk?=
 =?utf-8?B?NGQ3a1l3NXVjNXlCbk9nVUNUaUMya0hxbUdMbktOOVQ5a1JxbHhkelIydFVN?=
 =?utf-8?B?QUdyaEhlM3FaYUxiUHAyM05NcURpdHJEcCtnTHNFMXRjNFpORGZVUmdMU1k4?=
 =?utf-8?B?cDVocFZCWjR3TjNGdkZFek1Yd0JYUHVpZGVrYTBaMnFQVEhWQjI3eTdKcWVy?=
 =?utf-8?B?V2FsL2ovUUl3ZjNBTUZScDJwY2NWQ1pmbGh6WjZza1ZyL0FOZWZRbDU5VElo?=
 =?utf-8?B?ZTI0WG1XUSt3Njcwb3p2MVJNcWhnNUtaRlQ0aHgxT3ZBN1dCZXUwS1JuMGlQ?=
 =?utf-8?B?VHBJVThUdFdoOEorZURNL2g2K3RZcHdhYU9OeVdtaWlpNjU5YThlSkU5TEtC?=
 =?utf-8?B?L3Q4d3pVN01QUnJyWi9hWVB2QVl2OTdTcmhFOFJjdE04Ry9FU241ZWEybStT?=
 =?utf-8?B?c3ZUMGZXQlkyTFJadzBkNGZLWDk5aklSS053aUlJM2tRS1FkdXFCWEl0UW1k?=
 =?utf-8?B?QWZsbnpXajhwYUh0dThrZ0pNU3BRdVN1aDQwQzRqR3AxOGI4MklXM2p5WXZR?=
 =?utf-8?B?VWJLRHQ0YUoxRW5SbjhGa0p4SW56c0pjWG5nMXZ3V3JINEZlZXZablp1OUhM?=
 =?utf-8?B?emc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: de83757c-635e-4723-4c33-08dd614ed8d5
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 10:15:43.1061
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HRkxQcW70Lpna68MEN1+jiQrAKwsJzTmalwOVM1d0OiKQ5U0rrX8FuXXkWV/UrV58yhWaH/Eg8tzxzQ4tKuPLmYYe/Kkk1xY2BX86KyG8mw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9251
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_031554_250513_123566BA 
X-CRM114-Status: GOOD (  30.02  )
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

SGkgYWxsLAoKT24gMi8xNi8yNSAxOjMyIFBNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiBIaSBI
ZWlrbywKPiAKPiBPbiBTYXQsIEZlYiAxNSwgMjAyNSBhdCAxMTozMOKAr1BNIEhlaWtvIFN0w7xi
bmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Pgo+PiBBbSBTYW1zdGFnLCAxNS4gRmVicnVh
ciAyMDI1LCAxOTo1OTo0NCBNRVogc2NocmllYiBBbGV4ZXkgQ2hhcmtvdjoKPj4+IE9uIFR1ZSwg
RmViIDExLCAyMDI1IGF0IDc6MzLigK9QTSBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpA
Y2hlcnJ5LmRlPiB3cm90ZToKPj4+PiBPbiA2LzE3LzI0IDg6MjggUE0sIEFsZXhleSBDaGFya292
IHdyb3RlOgpbLi4uXQo+Pj4+PiArICAgICB9Owo+Pj4+PiArCj4+Pj4+ICsgICAgIGNsdXN0ZXIy
X29wcF90YWJsZTogb3BwLXRhYmxlLWNsdXN0ZXIyIHsKPj4+Pj4gKyAgICAgICAgICAgICBjb21w
YXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIiOwo+Pj4+PiArICAgICAgICAgICAgIG9wcC1z
aGFyZWQ7Cj4+Pj4+ICsKPj4+Pj4gKyAgICAgICAgICAgICBvcHAtMTQxNjAwMDAwMCB7Cj4+Pj4+
ICsgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDE0MTYwMDAwMDA+Owo+
Pj4+PiArICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9IDw3NTAwMDAgNzUwMDAw
IDk1MDAwMD47Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBjbG9jay1sYXRlbmN5LW5zID0g
PDQwMDAwPjsKPj4+Pj4gKyAgICAgICAgICAgICB9Owo+Pj4+PiArICAgICAgICAgICAgIG9wcC0x
NjA4MDAwMDAwIHsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2
NCA8MTYwODAwMDAwMD47Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0
ID0gPDc4NzUwMCA3ODc1MDAgOTUwMDAwPjsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGNs
b2NrLWxhdGVuY3ktbnMgPSA8NDAwMDA+Owo+Pj4+PiArICAgICAgICAgICAgIH07Cj4+Pj4+ICsg
ICAgICAgICAgICAgb3BwLTE4MDAwMDAwMDAgewo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAg
b3BwLWh6ID0gL2JpdHMvIDY0IDwxODAwMDAwMDAwPjsKPj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgIG9wcC1taWNyb3ZvbHQgPSA8ODc1MDAwIDg3NTAwMCA5NTAwMDA+Owo+Pj4+PiArICAgICAg
ICAgICAgICAgICAgICAgY2xvY2stbGF0ZW5jeS1ucyA9IDw0MDAwMD47Cj4+Pj4+ICsgICAgICAg
ICAgICAgfTsKPj4+Pj4gKyAgICAgICAgICAgICBvcHAtMjAxNjAwMDAwMCB7Cj4+Pj4+ICsgICAg
ICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDIwMTYwMDAwMDA+Owo+Pj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9IDw5NTAwMDAgOTUwMDAwIDk1MDAw
MD47Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBjbG9jay1sYXRlbmN5LW5zID0gPDQwMDAw
PjsKPj4+Pj4gKyAgICAgICAgICAgICB9Owo+Pj4+Cj4+Pj4gb3BwLTE4MDAwMDAwMDAgYW5kIG9w
cC0yMDE2MDAwMDAwIHNob3VsZCBiZSByZW1vdmVkIGFzIHdlbGwuCj4+Pj4KPj4+PiBEaWQgSSBt
aXN1bmRlcnN0YW5kIHdoYXQgUm9ja2NoaXAgZGlkIGhlcmU/IEFkZGluZyBLZXZlciBpbiBDYyBh
dCBsZWFzdAo+Pj4+IGZvciBhd2FyZW5lc3Mgb24gUm9ja2NoaXAgc2lkZSA6KQo+Pj4+Cj4+Pj4g
SSBndWVzcyBhbm90aGVyIG9wdGlvbiBjb3VsZCBiZSB0byBtYXJrIHRob3NlIGFib3ZlIGFzCj4+
Pj4KPj4+PiB0dXJiby1tb2RlOwo+Pj4+Cj4+Pj4gdGhvdWdoIG5vIGNsdWUgd2hhdCB0aGlzIHdv
dWxkIGVudGFpbC4gRnJvbSBhIGdsYW5jZSBhdCBjcHVmcmVxLCBpdAo+Pj4+IHNlZW1zIHRoYXQg
Zm9yIFJvY2tjaGlwIHNpbmNlIHdlIHVzZSB0aGUgZGVmYXVsdCBjcHVmcmVxLWR0LCBpdCB3b3Vs
ZAo+Pj4+IG1hcmsgdGhvc2UgYXMgdW51c2FibGUsIHNvIGVzc2VudGlhbGx5IGEgbm8tb3AsIHNv
IGJldHRlciByZW1vdmUgdGhlbQo+Pj4+IGVudGlyZWx5Pwo+Pj4KPj4+IEkgYmVsaWV2ZSB0aGUg
b3BwIGNvcmUganVzdCBtYXJrcyAndHVyYm8tbW9kZScgb3BwcyBhcwo+Pj4gQ1BVRlJFUV9CT09T
VF9GUkVRLCBhbmQgY3B1ZnJlcS1kdCBvbmx5IHBhc3NlcyB0aGF0IGZsYWcgYWxvbmcgdG8gdGhl
Cj4+PiBjcHVmcmVxIGNvcmUuIEJ1dCB0aGVuIHRvIGFjdHVhbGx5IHVzZSB0aG9zZSBib29zdCBm
cmVxdWVuY2llcyBJIHdvdWxkCj4+PiBndWVzcyB0aGUgZ292ZXJub3IgbmVlZHMgdG8gc29tZWhv
dyBrbm93IHRoZSBwb3dlci90aGVybWFsIGNvbnN0cmFpbnRzCj4+PiBvZiB0aGUgY2hpcD8uLiBE
b24ndCBrbm93IHdoZXJlIHRoYXQgaXMgZGVmaW5lZC4KPj4KPj4gcGVyc29uYWxseSBJIGRvbid0
IGJlbGlldmUgaW4gImJvb3N0IiBmcmVxdWVuY2llcyAtIGV4Y2VwdCB3aGVuIHRoZXkgYXJlCj4+
IGRlY2xhcmVkIG9mZmljaWFsbHkuCj4+Cj4+IFJvY2tjaGlwIGZvciB0aGUgbG9uZ2VzdCB0aW1l
IG1haW50YWlucyB0aGF0IHJ1bm5pbmcgdGhlIGNoaXAgb3V0c2lkZQo+PiB0aGUgZGVjbGFyZWQg
cG93ZXIvcmF0ZSBlbnZlbG9wZSBjYW4gcmVkdWNlIGl0cyBvdmVyYWxsIGxpZmV0aW1lLgo+Pgo+
PiBTbyBmb3IgUm9ja2NoaXAgaW4gbWFpbmxpbmUgYSAiaXQgcnVucyBzdGFibGUgZm9yIG1lIiBo
YXMgbmV2ZXIgYmVlbiBhCj4+IHN1aXRhYmxlIHJlYXNvbmluZyA7LSkgLgo+IAo+IE15IGtleSBj
b25jZXJuIGhlcmUgd2FzIHBlcmhhcHMgdGhhdCB3ZSBhcmUgbG9va2luZyBhdCBhIGZpbGUgaW5z
aWRlCj4gdGhlIFJvY2tjaGlwIHNvdXJjZSB0cmVlIHdoaWNoIGxvb2tzIHJlbGV2YW50IGJ5IHRo
ZSBuYW1lIG9mIGl0LCBidXQKPiBkb2Vzbid0IGFjdHVhbGx5IGdldCBpbmNsdWRlZCBhbnl3aGVy
ZSBmb3IgYW55IG9mIHRoZSBib2FyZHMuIFRoaXMgbWF5Cj4gb3IgbWF5IG5vdCBjb25zdGl0dXRl
IGFuIGVuZG9yc2VtZW50IGJ5IFJvY2tjaGlwIG9mIGFueSBPUFBzIGxpc3RlZAo+IHRoZXJlIDot
RAo+IAoKUm9ja2NoaXAgc3VwcG9ydCBzdGF0ZWQ6CgoiIiIKSWYgeW91IHJ1biBvdmVyZHJpdmUg
bW9kZSwgeW91IGRvIG5vdCBuZWVkIHRvIGluY2x1ZGUgcmszNTg4ai5kdHNpLCBhbmQgCnlvdSBj
YW4gY2hhbmdlIGl0IHRvICNpbmNsZHVlIHJrMzU4OC5kdHNpIHRvIGVuc3VyZSB0aGF0IHRoZSBt
YXhpbXVtIApmcmVxdWVuY3kgY2FuIHJlYWNoIDJHSHoKCmJlbG93IHBpY3R1cmUgZnJvbSBkYXRh
c2hlZXQuCiIiIgoKVGhlIHBpY3R1cmUgaXMgdGhlIHRhYmxlIDMtMiBSZWNvbW1lbmRlZCBvcGVy
YXRpbmcgY29uZGl0aW9ucywgcGFnZSAzMCAKZnJvbSB0aGUgUkszNTg4SiBkYXRhc2hlZXQsIGUu
Zy4gCmh0dHBzOi8vd3d3Lmxjc2MuY29tL2RhdGFzaGVldC9sY3NjX2RhdGFzaGVldF8yNDAzMjAx
MDU0X1JvY2tjaGlwLVJLMzU4OEpfQzIyMzY0MTg5LnBkZgoKV2hhdCBpcyBvdmVyZHJpdmU/Cgoi
IiIKT3ZlcmRyaXZlIG1vZGUgYnJpbmdzIGhpZ2hlciBmcmVxdWVuY3ksIGFuZCB0aGUgdm9sdGFn
ZSB3aWxsIGluY3JlYXNlIAphY2NvcmRpbmdseS4gVW5kZXIKdGhlIG92ZXJkcml2ZSBtb2RlIGZv
ciBhIGxvbmcgdGltZSwgdGhlIGNoaXBzZXQgbWF5IHNob3J0ZW4gdGhlIApsaWZldGltZSwgZXNw
ZWNpYWxseSBpbgpoaWdoIHRlbXBlcmF0dXJlIGNvbmRpdGlvbgoiIiIKCmFjY29yZGluZyB0byB0
aGUgc2FtZSBkYXRhc2hlZXQsIGVuZCBvZiB0aGUgc2FtZSB0YWJsZSwgcGFnZSAzMS4KCnNvIHRo
aXMgc2VlbXMgbGlrZSBhIHR1cmJvLW1vZGUgZnJlcXVlbmN5IHRvIG1lLgoKQWRkaXRpb25hbGx5
LCB0aGUgbm90ZSBmb3IgdGhlICJub3JtYWwgbW9kZSIgKHRoZSBvbmUgd2l0aCB0aGUgbG93ZXIg
CmZyZXFzKSBzdGF0ZXM6CgoiIiIKTm9ybWFsIG1vZGUgbWVhbnMgdGhlIGNoaXBzZXQgd29ya3Mg
dW5kZXIgc2FmZXR5IHZvbHRhZ2UgYW5kIGZyZXF1ZW5jeS4gCkZvciB0aGUKaW5kdXN0cmlhbCBl
bnZpcm9ubWVudCwgaGlnaGx5IHJlY29tbWVuZCB0byBrZWVwIGluIG5vcm1hbCBtb2RlLCB0aGUg
CmxpZmV0aW1lIGlzCnJlYXNvbmFibHkgZ3VhcmFudGVlZC4KIiIiCgpJIGJlbGlldmUgImluZHVz
dHJpYWwgZW52aXJvbm1lbnQiIG1lYW5zIFJLMzU4OEogdXNlZCBpbiB0aGUgCnRlbXBlcmF0dXJl
cyB0aGF0IGFyZW4ndCBPSyBmb3IgdGhlIHN0YW5kYXJkIFJLMzU4OCB2YXJpYW50PwoKPiBJIGhh
dmVuJ3Qgc2VlbiBhIFRSTSBmb3IgdGhlIEogdmFyaWFudCwgbm9yIGRvIEkgaGF2ZSBhIGJvYXJk
IHdpdGgKPiBSSzM1ODhKIHRvIHJ1biB0ZXN0cywgc28gaXQgd291bGQgYmUgZ3JlYXQgaWYgS2V2
ZXIgY291bGQgY2hpbWUgaW4KPiB3aXRoIGhvdyB0aGVzZSBPUFBzIGFyZSBkaWZmZXJlbnQgZnJv
bSB0aGUgb3RoZXJzIChvciBub3QpLgo+IAo+PiBTbyB3aGlsZSB0aGUgc2l0dWF0aW9uIG1pZ2h0
IGJlIHN0cmFuZ2UgZm9yIHRoZSByazM1ODhqLCBJIHJlYWxseSBvbmx5IHdhbnQKPj4gY29ycmVj
dCBmcmVxdWVuY2llcyBoZXJlIHBsZWFzZSAtIG5vdCBhbnkgcHNldWRvICJ0dXJibyBmcmVxcyIu
Cj4+Cj4+IEkgZG9uJ3QgY2FyZSB0aGF0IG11Y2ggd2hhdCBwZW9wbGUgZG8gb24gdGhlaXIgb3du
IGRldmljZXtzL3RyZWVzfSwgYnV0Cj4+IHRoZSBkZXZpY2V0cmVlcyB3ZSBzdXBwbHkgY2VudHJh
bGx5IChhbmQgdG8gdS1ib290LCBldGMpIHNob3VsZCBvbmx5Cj4+IGNvbnRhaW4gZnJlcXVlbmNp
ZXMgdmV0dGVkIGJ5IHRoZSBtYW51ZmFjdHVyZXIuCj4gCj4gRmFpciBlbm91Z2guIExldCdzIGp1
c3QgdHJ5IGFuZCBnZXQgYW5vdGhlciBkYXRhIHBvaW50IG9uIHdoZXRoZXIKPiB0aGVzZSBmcmVx
dWVuY2llcyBhcmUgdmV0dGVkIG9yIG5vdC4KPiAKClNvIHRoZSBoaWdoZXIgZnJlcXMgc2VlbXMg
dG8gYmUgdmV0dGVkIChhbmQgdXNlZCBieSBkZWZhdWx0IG9uIApSb2NrY2hpcCdzIEJTUCBrZXJu
ZWwpLCBpdCBqdXN0IGZlZWxzIGxpa2UgeW91IGFyZW4ndCByZWFsbHkgc3VwcG9zZWQgdG8gCnJ1
biB0aG9zZSBoaWdoZXIgZnJlcXVlbmNpZXMgYWxsIHRoZSB0aW1lPyBBbmQgZXNwZWNpYWxseSBu
b3QgaW4gCiJpbmR1c3RyaWFsIGVudmlyb25tZW50Ij8KCkkgd291bGQgYXNzdW1lIHdlIHdhbnQg
dG8gc3RheSBvbiB0aGUgc2FmZXIgc2lkZSBhbmQgcmVtb3ZlIHRob3NlIGhpZ2hlciAKZnJlcXVl
bmNpZXM/IEhlaWtvPwoKQ2hlZXJzLApRdWVudGluCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
