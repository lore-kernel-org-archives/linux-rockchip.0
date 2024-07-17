Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A07DC3DA4B
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 08:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VPUmVPw2rh1dUwySLaFRLIGGfKfqxWSWP5quqAw6bzs=; b=NRICs0jAFpD9g/bf/6ZCNQ3FAX
	v4XF2gAv+k9z20AR95yDg6ZXonDzjdZ2RCCamL4jrar/cOK6YBITbJfH+6oDynVyt4Scp1mM6kIGf
	fObCxdowEqfJE/IUE9BiJQqYs893/kM5fD6G5D8fBLFJZYrdhSj8baIMngMVQkw3XG+4I9zoNlahZ
	3CALHcAsRsw2EAM9Fc9UvWeD8Pd1pV5WTOJsynMoWihet9BR2swtN89b6YA9TsAOFiBXiaVoUlwEj
	nOgsWGNbtF5GqDahb0VNrymR7eks6zXIEyzywPi04CmFwb5sRhw0wjfljuQnNNQ6vS4CtkG/bwGa5
	wJHsxjyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU0MF-0000000DCru-33vQ;
	Wed, 17 Jul 2024 08:49:55 +0000
Received: from mail-westeuropeazon11021104.outbound.protection.outlook.com ([52.101.70.104] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU0Ls-0000000DCmv-3NfQ;
	Wed, 17 Jul 2024 08:49:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sbvDpJVaXwdKpqvN2wRWowSunw963cYLkI4D17x7/VoCv5jbl+r2QfiGHS9lhlN4yEtZ08RBHDUAVh3eP244RWmmxynLe24isuPm4Yzl8ThMICLYYXirGgKkVZIVnZ6fnvN5V2nqKp3htadc29EhQLLittQEYlAW1hi/npXfHYz/njJmreBDx8IfpMCCB+TGoVyAxWPWYR0m6raSACsDci3IuQtOdAk4LFiavuC4OcAMiT5yG9yUrI3bPu8XQqZijNVxkuHQ76VxSNypbizTRfjXcXAiYSbH7AVc3Gfghd0fJNgjos3U83h920TTUjpbCg/jAR7RWnIQ49ExzWJnkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TfpWQqJb1Lfv1avR7mK5mCOMjst/DVDV+75ajOccN1o=;
 b=YxkEvF6HqrSvt7s/pW/qeRlbH+wX1gYY5KcZZVSjC+sxqF5Jm2ae0rYKeAjMNKk3iQBSm5UA3rSv7/hZy5BDdJFJGH3djl/IdmxtrWUVU8R3gEZ5hFmlDfXq9rjxasrZtQgQMrMbzvTX80MYVYMU7qs4KSvU/77c9Shi+Qfy5paCr9xo4Efuxj1xgLBLSEIOkkHUZIks0LSmCTgp6Il/BXZCAPjNSGd1FMzXYb6LFK9aJqUy9UB9JEQNpd1Ppl3eSVzPTZEUFwp78d8oJkX2bPIDrWZX1nJrE3y/fsx3x3rC2ekEqu5HIC570dLNm9oiSxRL0n2MztGtxS2qdhdOHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TfpWQqJb1Lfv1avR7mK5mCOMjst/DVDV+75ajOccN1o=;
 b=F0NkZtWhZ2PdbSTOkuBX0Bix6i89AydzitZg/rVoxRJNOUO+xKLSF8N3WNJvSReJ731/rV779q/PNtdx5wGY/t2Ww3bEK1kNfZq0gd2LZiY06Q9o4Zq0URNkbUEBa8b5JymH/degg3lCFfdzXRuTnjn2D3izHrL3iN+eyTwi85A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DB9PR04MB8493.eurprd04.prod.outlook.com (2603:10a6:10:2c5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Wed, 17 Jul
 2024 08:48:54 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.7784.016; Wed, 17 Jul 2024
 08:48:54 +0000
Message-ID: <33d93798-459b-4d33-ac59-623a68ea48cf@cherry.de>
Date: Wed, 17 Jul 2024 10:48:52 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] pwm: add mule pwm-over-i2c driver
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Farouk Bouabid <farouk.bouabid@cherry.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240529-buzzer_support-v1-0-fd3eb0a24442@cherry.de>
 <20240529-buzzer_support-v1-2-fd3eb0a24442@cherry.de>
 <5hd7fndgivgusx76wq6mbvgefngd3tllqsfsk6pppbphchczte@ujagkep4miet>
 <25d71c19-6e94-477d-8d04-758015ca4b2c@cherry.de>
 <e7b3bfpvtrvt5g637yy7qxsbvfiylyzrjvwsro4hzp5t6cmeux@eqafx3k7oaks>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <e7b3bfpvtrvt5g637yy7qxsbvfiylyzrjvwsro4hzp5t6cmeux@eqafx3k7oaks>
X-ClientProxiedBy: BE1P281CA0127.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7a::7) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DB9PR04MB8493:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d4271a3-c935-438c-ac71-08dca63d49c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VWFBU1RSeVdxbnhYZmpjc3hrZklUYTE5ZnVoYzl0QVlIV1l5OEl2c3V2N0pL?=
 =?utf-8?B?ajRlc1Y4anROcjBZbE5lN3VabmUzZnVKSTBrOWpKdXN3cmNCNGFhVG9BSjZ0?=
 =?utf-8?B?ZDc1UzNidk5tQnN2WEIyK2RxdFdQMmtKYUl4cjRzeEVZYzQ2d1RTU0owOVZm?=
 =?utf-8?B?eENFV1daNmt5RCsrQlV5dU0vZm1vNTNJLzhJbFlkUXZVNTNGUG51WTZWOUZU?=
 =?utf-8?B?UUhDdG9BVnBTVXQrdFYrREFvNjVWZDk5T2Z0dEU2UDZlUHVHQVNrTVBVbFVN?=
 =?utf-8?B?VXFKRmhYRUJzZkFadjlKRWl4Q1VjajY2d0MvakpiUDNJUFJVOFprUXR4eitP?=
 =?utf-8?B?aGN1cHlNdGhvZE1Fd2twZ3BKM0lWUGdhNzQyRkwxd2pXVTMwcSt0S1pqalhs?=
 =?utf-8?B?djd0SVJ5b0xwSHp6b3lLNjdDS2xQZjZKcE12dTRIU2FlMFdCVkI2VVRKL0JD?=
 =?utf-8?B?YjY1TU5YSDhwZ3FyYmw1OU9CQW9LOEQweDVpbHlIYXFDK25US0E0WXN6Mm5C?=
 =?utf-8?B?QUFUUzFWV0pCOE1rSCt1d25DSTFVL1dTQVA0NWZ6NnFYL3RMaDRnOGJ2SFpR?=
 =?utf-8?B?cGovWURvTGJmUkhyQkhyTXd4WU5EUXlwSDAxN1ZDeTZEL0ZuTlNzellzT0ZR?=
 =?utf-8?B?UElYaTNnaVZwaTV6RXYzbExJaTJBejU1Ym1tZGkxWDY2UFFhMFhiNWRsQTVK?=
 =?utf-8?B?VDNVTkt1OG5VOXZabitqMC9NbXU2U0l6RG1jeFFaMUVjbzhDOFRJZldDZXNu?=
 =?utf-8?B?clh6ZkVaUDZEOUM1RUxiMnQwdXkxR3pzeENWOVg4WEwzSzVrWXc2WGg4cGV3?=
 =?utf-8?B?VEJ5RlVURTZyNENMYm5PT3lKTGE5VnlNbTBFOFBmV2R0Ykh1cGZ4Tm15MEJ5?=
 =?utf-8?B?TDJTT3Y1ZFZmS3pLRkdaMjRmTW8rb1N6T2dtZmtZMjhDN2kydVhGZVExeVY5?=
 =?utf-8?B?ckdWS0laZFJ4L3dHUFcvcUFvN1hjaGhoWFYzT09lazlxSktxUnJTR1VHanRh?=
 =?utf-8?B?OTd5TDNPMSthc2l2OGdIWTBjanRnd0haUjR1bG0rNWtkN25OSFlZL1hlbmw2?=
 =?utf-8?B?dGszOU1QckFHeThLaUw0NERoY1dBY0hDWVJCNnZuSjBBL0RuRXVGSk9hYTh5?=
 =?utf-8?B?NUVuNHZqNVdsVXloNzdYQ216ZTIwZ0FuUnpJaklvRGtxOGd1Z0piTG9kNHd0?=
 =?utf-8?B?TVArNW1rMENEaDdHNnhROW52OC85QWEyeFVuY3FEKzhCSFJ2RmpiQTZJZnZ2?=
 =?utf-8?B?dEpMdGhvek5aL3Q4VzF0bXpnZWlkZWNCUjNLRm9LMVFtVEZrTHlzQ2VYUjJD?=
 =?utf-8?B?UldBdlhFNStrQjVDQXM3R2duZ0FZTHMyQk4vNWtsbjdvdStrMGZEZkRmSHhU?=
 =?utf-8?B?K2gvaW9oWnVHaEdhYWlsN080M1RYNFFsVGwvMlV0Qm1nQXFvY0t6VVFVL3Ay?=
 =?utf-8?B?cXFuNE5od2tZQ3Q0K3hUYUVTM2d0bmNKMjBscmwxT1FvSWtsbjZobkJGL0xQ?=
 =?utf-8?B?ZDhxRjYvOFVHOXN2em5hR0ppWmR5UmExM2pZdzVvSmNuTTJXdGhMY3VyRmZ6?=
 =?utf-8?B?OExMaklXNHJYUHhmbzkxcnJZKzlBbndIOW1wRWEwZytRby9GaEIweXl2NTR3?=
 =?utf-8?B?S3Iyand6eEoyV29CN013YVNyN205ckdpNGFQZWlNMzRZYzJUcWVSKzJNRUp1?=
 =?utf-8?B?UUNZeUdEYUJoUlVKY1lwSHRCamU4ckdTS0doWGdPSHFnc2xkL0t2LzY5TFJ4?=
 =?utf-8?Q?avJqoxHxwfPDOwL2M8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7416014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VC9XWXZWMUtCQjFGY2dNQWZGdWJkNTd3MFRRUk1vQ2xtaHJCQkE2WmVQWDk3?=
 =?utf-8?B?NGhLUG43ZVR5R0E4R2FCb3NPUzFhM3hKUkhXZ09uTmtYR2pWUWgwUlk5cURV?=
 =?utf-8?B?b0RDZ1k3bk5teHdySVZTam1WZjlNQUN2Z1ptWWhQd0dUMW9PbEFCSUxlSnRw?=
 =?utf-8?B?OE1YaER4WmwwMy9nTUZuTEhnZGwyUlpXcEVSYVBSZDdTcDRUN1lFcWI0MU5i?=
 =?utf-8?B?TWhpUW1yL213K21KL1c5aFM1a0s0ZUFzaEFLVjdWeVJud29zRXhKNENrTWJW?=
 =?utf-8?B?dEtZM01ZNUVUTFpiT1lQcjRDRXFYbzNpMncxMEZkVFl2bTV4SWo4NERGUjdI?=
 =?utf-8?B?a3VHVlRLTzRRRElWbEJwdER5QUdDR3JtbVhtQmlQb2xRa21yWjZNdVorYlpU?=
 =?utf-8?B?eDJVWklQckR6Kzdrc2trZXJXSER5aDI3OE1BZFBQbXJwYWpuRmJ0eGtWZ0Nl?=
 =?utf-8?B?MWdNbUc5aFFmWnV5L0grREgwdTd2Z1hXbnViaWZDcmJTY3JBb3VPU1dOQ2R4?=
 =?utf-8?B?NmEwWkRWNjNkaTk3TURHT2Ztd0hNQ1YyRkFoU0RxNnZlUkVCeVorQnptby9m?=
 =?utf-8?B?d3o2a2hxOWtUUXI0bFJHUncwaDZXWlZtMEhiYkRTVHdkQkVoOXJXcTlrc0lm?=
 =?utf-8?B?WWU1K2NsNTZiRFA3QjB4SS9UdTlxZGZMd2NtRmVQa3VlZ1FTT09xTm5yb2Vu?=
 =?utf-8?B?ak5XVEttam5NS0NpQjZkYmdoaEtsWXYzQzhNblRiS1VRV1Awa2ErT1FxVlNC?=
 =?utf-8?B?ODdNcHVnSFVCMnZxdzVXRS9NaHJFbzQ3RW5pWUxkV3FJamw1aGZDYUtTU0VL?=
 =?utf-8?B?V0ZBdUMvRzVZdGRDOWx2NFR2NE5qVEoyUjg4aVlNNDhuMklHdDAxUjVjWWpz?=
 =?utf-8?B?WWhRbUdqTWdYN2dwTFhyWW02U1pUTUw2bHc5RnZvQXVhZFFjZEhnaUVzcEcx?=
 =?utf-8?B?bnpmWG11V2FpeEp2b2dEQW05dFFnck9DYktxclhyK3Z6VkJpSjlxL0hIT1JE?=
 =?utf-8?B?T3U5T3poZExJK0hvcUc3TW5ZYTIvb2RnN2JiaTdnOFV1TWRNUXFvcEpHNkZr?=
 =?utf-8?B?amQvaXNwMzQzOVVFV0pIbFVqc21ZTmlkeU5qL2E1c0c1N0JueXYwVkZrVlBv?=
 =?utf-8?B?Smx0T2dvM0s4M3BoOVp0dXpQbytBZmNnVXlXS0FleVZZcEZXR0U1dVo1S3Jr?=
 =?utf-8?B?NzVNcUZNanJudTdRUWZOVUdETHg4MXNXL2h5VVJrTW5BSTJWVlhqWncvc1VY?=
 =?utf-8?B?Y1VlNGtNb0xMNzFzaW5JRncxakxRZ3Y1cmVVTHowMXlJTWF2SG0zNXZIQWd1?=
 =?utf-8?B?Q2gvRitiMHZEMUIyVkNNVTFKd0RrcCtMWW1mVlZLYU1lRERWeCsrZnFvMGZi?=
 =?utf-8?B?dWpjVTBybkloNkt3N0dYMUtONFJSLysybjdLRjg3bjF5SFFxM1dDbldlMk5j?=
 =?utf-8?B?bWhGY3N2OVlsTU80a2N3K2p0ZHdqa0dlQ2E2aEE4NUI3QXc1SmtWemZlYzdF?=
 =?utf-8?B?dDViRWUxOWtWRmVMOEN3My8rMVB6UEhJTitQM25rMVZCY1hPUUFjRHU5YkZ5?=
 =?utf-8?B?NE9sUWJoakR1ejdlMzNYUmxGQ1hxU2NUZzBLTDBoRWtad2dqNmY2RkJ5NmVQ?=
 =?utf-8?B?SnU2ZWFpdXBhdWJlRGxzbkZDd1U1ekppU1FiRG0rck9TVGtFQ0FONXVhWVdT?=
 =?utf-8?B?eVJNd3VRbEF1cjVNTDJ6dHd0TktzYlk5OEpDQjdlMkZPTXcwUEdVZmxubTFq?=
 =?utf-8?B?TWVZa05QdktWK0pybmFUZzZUNWZSZkt4RzdlQU54a3BEOHBQUnp3WnhCZjVW?=
 =?utf-8?B?azRqM0tFZTgzbVdqOXE0d2xBemdoaGNJYzZ6OThvUGhlVzQyMEIwbFBvWjgz?=
 =?utf-8?B?NFZ5cllFamsweXBVbUhVQXBTdXVTMmZJMDUwNms1OW9sV0FTb3YvNDArQm9P?=
 =?utf-8?B?T3hORmZySksrR1BWb04yMVl3M2VHaVRkcjAyVDdJR0xwNmhya3pBclQ0c2RP?=
 =?utf-8?B?QXFoMmttMnZXazEyeXFzclVLQnUvNE9aVDJQZFNlVHhjZHBxSEtzOGM4Q3d5?=
 =?utf-8?B?VGFrS0ltYmpuaFpoSmU1aWFpL1dJWWwzRFdKQVJWZHJDalVTWW5HVXVia0dm?=
 =?utf-8?B?QjNFRkQxOXk5UVlGWnNuczlzOVZNZjRtM2tFSGxmM2lyRld3YnVwejBHOWNk?=
 =?utf-8?B?Vnc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d4271a3-c935-438c-ac71-08dca63d49c8
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2024 08:48:54.1893
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SpJRNZUBqQR7pLPFagISCMw776SGeJ4WtvV0R+6PXEiplcAitvkDk2X/pBfSOjyPXuh59ToUV7OZX4DksgcEqjh0EM7BjaZmpgLoyn/9e5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8493
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_014933_307019_5CA5DB2E 
X-CRM114-Status: GOOD (  10.38  )
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

SGkgVXdlLAoKT24gNy8xNS8yNCA1OjA5IFBNLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiBI
ZWxsbyBRdWVudGluLAo+IAo+IE9uIE1vbiwgSnVsIDE1LCAyMDI0IGF0IDAyOjE2OjE1UE0gKzAy
MDAsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgoKWy4uLl0KCj4+IFRvIGdpdmUgYSBiaXQgbW9yZSBp
bmZvIG9uIHRoaXMsIHRoZXJlIGFyZSB0d28gcG9zc2libGUgZmxhdm9ycyBvZiB0aGUgTUNVLAo+
PiBBVHRpbnkgODE2IChkYXRhc2hlZXQ6IGh0dHBzOi8vd3cxLm1pY3JvY2hpcC5jb20vZG93bmxv
YWRzL2VuL0RldmljZURvYy9BVHRpbnk0MTYtODE2LURhdGFTaGVldC1EUzQwMDAxOTEzQi5wZGYp
Cj4+IGFuZCBTVE0zMkYwNzJDQiAoZGF0YXNoZWV0OiBodHRwczovL3d3dy5zdC5jb20vY29udGVu
dC9jY2MvcmVzb3VyY2UvdGVjaG5pY2FsL2RvY3VtZW50L3JlZmVyZW5jZV9tYW51YWwvYzIvZjgv
OGEvZjIvMTgvZTYvNDMvOTYvRE0wMDAzMTkzNi5wZGYvZmlsZXMvRE0wMDAzMTkzNi5wZGYvamNy
OmNvbnRlbnQvdHJhbnNsYXRpb25zL2VuLkRNMDAwMzE5MzYucGRmKS4KPj4KPj4gRllJLCBvbiBB
VHRpbnksIHdlIHVzZSBUQ0EgaW4gc2luZ2xlLXNsb3BlIFBXTSBnZW5lcmF0aW9uIG1vZGUgYW5k
IFBFUkJVRgo+PiBhbmQgQ01QMkJVRiBhcyBwZXJpb2QgYW5kIGR1dHktY3ljbGUgcmVnaXN0ZXJz
LiBPbiBTVE0zMiwgd2UgdXNlIFRJTTE1IGluCj4+IFBXTSBtb2RlIGFuZCBBUlIgYW5kIENDUjEg
YXMgcGVyaW9kIGFuZCBkdXR5LWN5Y2xlIHJlZ2lzdGVycy4KPiAKPiBXb3VsZG4ndCBpdCBiZSBt
b3JlIG5hdHVyYWwgd2l0aCB0aGVzZSB0byBoYXZlIGR1dHkgaW4gYSBiYXNlLTIgcmVnaXN0ZXIK
PiBmb3IgZHV0eSwgaW4gdGhlIGFzc3VtcHRpb24gdGhhdCB5b3VyIE1DVXMgaGFiZSB0aGlzLCB0
b28/Cj4gCgpOb3Qgc3VyZSB0byB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW50IGJ5IGJhc2UtMiBy
ZWdpc3RlciBoZXJlPyBJIGFtIApndWVzc2luZyB5b3UgcmF0aGVyIHdhbnRlZCB0byBzdWdnZXN0
IGEgZGlmZmVyZW50IHVuaXQvcmVwcmVzZW50YXRpb24gb2YgCnRoZSBkdXR5IGN5Y2xlIGluIHRo
ZSByZWdpc3RlciBpbiB0aGUgRlcgQVBJPwoKQ2hlZXJzLApRdWVudGluCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
