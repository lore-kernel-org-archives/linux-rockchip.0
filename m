Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 560DCCE7D05
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 09:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hPhk+Lo1qFROEL8WqvjH8imBx8QVsrIE/XAOvaVxRiw=; b=CZdkUPu63JPPM3IMH4x7og7OJ+
	wP3xrIlpG7HCpgYTL3OiJrkcb7RcgnYp4xzJjxPI+RjjWG6ocy+bsVR9TM8G9pfbJPPS7Y5Hnt3oG
	PXKmabV3nRzopFju5TDntuM9VUe9kEIALJnW/OrulKJTZzIWbjReGcgWi/Ov8uLGtEXl4zjdIirIN
	nUuN4AQATD/ZOPUbeL6WDFg1zPdoIW1Ddi6QdqmcWp/7xRPE6yPKrjGN9ItANo79rYiE+wBi6LtsO
	Zfc0sApAotWlDK0R/0YqqmpXxou9R13IMbNEqo3HZ/t3vXdtUijP+Du89JkS6daUlhRTdFHpcWeIq
	R5ESbPZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svZbt-00000002HSp-0W1r;
	Tue, 01 Oct 2024 09:56:01 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svZbp-00000002HSD-0rPI;
	Tue, 01 Oct 2024 09:55:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mAryq6SMoMhQ1G43A1GEiDtSuJdQ3jSTKgc8ohSmnJUce/BwreF9EZz6P/fpiVskBj15dL/u6xjtOvfOHSkxG08d3BdlDfaATQ9ebytmfeU2HmjLwaRikrvFzOVoOSVN776rMwmSp8wpysPTynrslC17ZlSInzbnHKvf98c6c5E72T874MALMHUBQmVxOEzjXIKIxKUxVtalatjTBzQdSMlLdCu4rlQO4EtE4R137KWKyaBlXp1fxexErB+/DJjXIl3QEoPMSSl5RQf3/JDD2nm6JXbfYkN6KyiQw0Nn2afkWY+R/2DfYruqh82dL7U0ItDNS1THQrlNZIG/FwNAKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7uqUdcH37OV2VyqhaUTKOf6oPhsSABG2NTmU6xWNSiY=;
 b=B7ALaLY1DatkZfQ28V9/ishaFL2Mg5+eWC8SE1NXiljwoe10NSCZmVXP9A7UgSt0g6HIOcFakT8sXJsKaRCIuaJFZIMTu145PQRxKb5Ctku8pR8yLsOMcC7DkZX6mxxiy7j5YOocziYbMaHh519mNVhzh2UwsLTCU0XbNwFr/RX+5keYwYyZYPdRqf5Jl1WMjlKkbgGGO7AsXw/LffohcSbuaWZYu314Hue3JLIRA4ODKrvv+xR9zL9o/YjJB8wg5r8EZr0VOlcIpDTst2xtNIAwxRWU/zQqfU+W2DXsQ4AAe88abxyXepnLYuI9cW+2Do0UcyEKG3bi0nBSJE8eXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7uqUdcH37OV2VyqhaUTKOf6oPhsSABG2NTmU6xWNSiY=;
 b=gup9P1b5m+B6K51DgdjMUaxokQjOR0ugCDiXCwh/FOSZ4swO897fU3Vm8ovnQ5FJuyPcB2YXmsXQmVWvX6Jx0lsLGne1lJ8qLxAMvO0JRWy76vrYt1vTBKHPMScChp7nzVpOp61lYJu8TfzQe6oehnX/0Wz0zmqR2/MDM5fi6vQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by AM8PR04MB7778.eurprd04.prod.outlook.com (2603:10a6:20b:24a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 1 Oct
 2024 09:55:48 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%2]) with mapi id 15.20.7918.024; Tue, 1 Oct 2024
 09:55:45 +0000
Message-ID: <4ca5cf41-4eaa-4050-b831-f4ee97f0a7bc@cherry.de>
Date: Tue, 1 Oct 2024 11:55:41 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: Remove #cooling-cells from fan
 on Theobroma boards
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-9-heiko@sntech.de>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20240930210112.1993625-9-heiko@sntech.de>
X-ClientProxiedBy: FR4P281CA0163.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba::8) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|AM8PR04MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: f62eb696-9d05-4f06-e403-08dce1ff37b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZHhPK2cxT3ZtT1JJNmc4bVRVWXpXUy9hOGxmd0ZsQysrZ0JMY285SmRVY0xN?=
 =?utf-8?B?azJPcmkvRTY0ZU1mcWkxWXZQTVoyWVBSMHE2UWhTSnpRMUtYVy9kNGUrNmVz?=
 =?utf-8?B?dUJFdEU3Y1Z1NmRFNU9maXlBSDRlRlNFUmNXdy9CaHkybUJCTlliTDBvUkpo?=
 =?utf-8?B?c2FIcXVibFdmUFdPYkw2aTVIMFpZZFgwa1JMRkVJeVRock9jN2xKMlBraXlw?=
 =?utf-8?B?QVd6UXdsVG9mS1ZkNFVWYko4UEQ4L0RyakRPSUNSRW5oRXhyZXRUaHJFZmNE?=
 =?utf-8?B?dXBDczhGbWxXd3h2eW9QcFZWN2wvWmM0YmhtN0s4Y290OXhoK3lJbEZYSmRK?=
 =?utf-8?B?OGdlai9RYjlneEx5M0JGNWRkb0dyWFZNWktYU0pSSVR0Z1NGNXRSQUh2cjF0?=
 =?utf-8?B?Mmpjak5BUWR4VkdyRzlFaTNseUdTd2ZlbHFkY0ZDa3ZIV1g5a3VMSXFkd3E3?=
 =?utf-8?B?NGlhZ3JPMjliWUV3bFRzV2tnQjBZWlROdUt5M2NFN0doVGJQVHU3bWhWQUs3?=
 =?utf-8?B?MVMwR3FnSUR2RVJ5R2ljdXV5SGpBNWd1T1lBSTBZREI1MmZRd09jWVlYZWpq?=
 =?utf-8?B?SmkrZ3lNbGdaeUExeElKVUphODFjZ3UreWtDeDdhUmhZYVFvVC93ZXZZRjBI?=
 =?utf-8?B?eGtDay9NUEZBWW81Yy8wVjVHK0FuVEhZVXNYSmQwMklwWTVRMUkxQlhHNmwx?=
 =?utf-8?B?amNhUVc3YXFpZUt4L2NCaUZTbU4wR2svM0pLNmVDK3dRamwvQWk2TnBQaTZ5?=
 =?utf-8?B?dmUvYjFYaG9mcDdvSStmdStuV0RMSG1kLzJrUHorRHE1VFRzUmVTN3BpbWly?=
 =?utf-8?B?bUZwOE1XMjBGK05Mb1hzTGVObXUrVW03SHMwdE1SYmRxRjlBdEFkblZITCsw?=
 =?utf-8?B?cEtKRVhzaTFmdUk0UmcwbGUzcmxaRmphQlR3MER5VlVZZlZKOWZESkdwME5H?=
 =?utf-8?B?VkNMcVgrL0lZUXp4RHlUSzBzQTdpNHQ3UkhQV3J1ODRFVnFQeWJxd0krV2lH?=
 =?utf-8?B?NVBsMlg3UWlQVkE3Njg3QnM5emRUOWtCR0pla0F5amJEdTJ3a3NoaC9PS1NH?=
 =?utf-8?B?SFV5OW05NmJEeGxQSFRzSlZFK2x0aW9HeEJxV1pBTWVuQU5mN1FKQ3UrSGRM?=
 =?utf-8?B?Tmh4WlhDbkVkR1pqbkJ5OVpNYUdHeGtWNW1lZndJdUtwZnFjTW4vR21SMENs?=
 =?utf-8?B?S0tlTVdXVDRneGkxazB4MnRZV1NPaDNxaEZjZGg5bFc0YVhuYmExak02dDRP?=
 =?utf-8?B?bmQvTE5pWEpkWENqODg5NzNqZmRBNGwyZFc1STJwc1pmbWtpVU9xNTVIeVpu?=
 =?utf-8?B?YTR0U0hocXZlWUpoRlNDTVJBbmVXZW04Q3VZOExJRU5oVXJDcEEwZFJPNy9Q?=
 =?utf-8?B?RWJTREM0RjBQQlRIbStwY2ZydTh4eEVVcnRVd3phWFB5NVU3WkZ5aWpVdFZv?=
 =?utf-8?B?MTkvc29pVGY5QUVQVHhVSUZPaTJ4bkhUVXBUQUo1dmx4YTNrMmRQd2dXMW9w?=
 =?utf-8?B?d3ZBWmJaaExRamdPVWhOSy95Z3ZHMkcxcUo2N3lxak41SngyTGY3NG5SWXo2?=
 =?utf-8?B?eUxyMFZ6U20yY000b2FDU09UYVhWUkYxV0RNaUpNZi92R1FESlhUdVlPTCsy?=
 =?utf-8?B?RWt3N1JJU3hKODhKd0xsY1UyczNXa3NGR3FDRVFTZzFma0oyWmVrTmlPUXdU?=
 =?utf-8?B?aUJKbFdueENqMlIvM1FjbzgrL0NpOUVQTGJjUklZSEpFYURrZm4vMks2bUE0?=
 =?utf-8?B?UmkvTjV0cVFPN2RndU5EcktaOGhXdkNzdlVTc0lvMkJ6a05na0tNemw5ajBw?=
 =?utf-8?B?OHFDYWFiSk9XMUdJbXo1dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QksrV0I4aXZTdFBQd2NtUnpJOUltd1F3cVJpc1o5bVdab2IxT09wVE5BZzJE?=
 =?utf-8?B?R0JSR3lSc0h0OUFuTWxEc1E4WnFIR3Z5eVlrclhMeTZWL2dXRUZySFMxT1hK?=
 =?utf-8?B?Uk5Fa3Fkc0xxMi9mQkxuRGkreWJsUVpuckt4ejREVlM2Qk1WL0V0ci9XbFhT?=
 =?utf-8?B?c2g1RnozbGVyVUNGeUUyc01iaFFmdzMxdUl5cmp6QlFOYXF0WnMzWktqWXJS?=
 =?utf-8?B?cmhZOTVGcDc2YmNqUU5PYmpjRUh0N0FFSGRYV2E1T0dqYitLOU1HYkM0NVVO?=
 =?utf-8?B?WUQzU2pUWGU0MjBMTGY4L3kwRDYvcmE5NXBWZEQzV0lHOW1qMzRqSDMrb05W?=
 =?utf-8?B?RFNwRjcrSlZSVE5qRHJBSWhOV3RyWk1kUngxUkVLeDlIWWZESzdsZnJVQmt3?=
 =?utf-8?B?U0NHZjNiY0YxMU0zS2E4NnBGZWNhWElSK3UvalpoWVkwVnRlZXNZYXBmQTZp?=
 =?utf-8?B?ZS8rUHp5Q1pmd2c0U0p5THpIQ1pQU1VxZnl2TU8wandRYkZqS1VkZG00MkMx?=
 =?utf-8?B?VzJ2VzBYLzcxcmVJaGNRbUs2Wld4a3RpWnJZTDRGSlNMQ2Zab2tWZ3ZBOUJa?=
 =?utf-8?B?Ky9QYlhmcU1WZUZPUzlwclRvdjQzZysvN0xUeWwrajlTckxCc1RFQjMzZzdC?=
 =?utf-8?B?b3drd0ppUGlPdC8yNjRZUHFJSklNaStUUjB3aUxudmFnR2ZQei9ocG82VVJs?=
 =?utf-8?B?NkZwRGJFMXQ5VG8xY1pvUjdHWkE3Vk5GZm9SUWtES1VBbjFHQTJ1K0cwZGZW?=
 =?utf-8?B?WHFTMjdKT2dZZjJ3ZjZrUUxvd3BYSGthbHpsdDU4L3VWV0ZUa3pQc0U1RVBL?=
 =?utf-8?B?cmNTOCtUWEZ6TlZaajVoeUJoR3N0UDhwNGs2bkpqbVovR3p2SE9STmVmZ2Fh?=
 =?utf-8?B?ano3em1qdDZnWklpNThvdUJnd1ZoQjE4UUFzcFRyaVpjcnJ6WlZNc0VWNkpQ?=
 =?utf-8?B?WWljaERTOUtOZVJSQ2lkZU1kZ3B4V2ZDNmtjWVRKb0JqMDduazdOZEZFSVpL?=
 =?utf-8?B?MUUrTFRPb20xOXlJTWFtbXcxbVA4ckkxcGJwNzBaTC93ME1JU2VadC9Vbmps?=
 =?utf-8?B?NXE4VVdHZjNZenAvY0tCbzdmWVNzVXJQNGR3L3poMVBjZWVkYU5RZVZKZjln?=
 =?utf-8?B?QjR5OWxrMndGMEMzMy9nTHpId3dEYncyYXpyOUNsMFhLMWdId00zSEx5YWcw?=
 =?utf-8?B?Y1hYVWJRSm5LYXlneDcvM2YrT2dPZ1I3M3I4ZGxjQkdjZi9YdHRsVEtvSzJL?=
 =?utf-8?B?eHhCY1l0QkhleHpsblowbWxtRjV1YzFRRTdQRTcxbzM0RTBkVDhodWJTdDVX?=
 =?utf-8?B?ZzVYaG5xK0oxcnVyZWsreUZVbGhlNjJoU1V1V2d1OVJCTnpzTVlITHdGZjYw?=
 =?utf-8?B?ek0zVHlUWXg0NkFZZVlIZVlucGxLcXR0TWFmdlZOeTJzSmhpNDJGU2hQTmJF?=
 =?utf-8?B?VElaZ2dQaU9kSEdmYy9CUkZFKzhLZkpRbjNUY3NUNFhHcW12RlkwZGFmOVdG?=
 =?utf-8?B?ZmpBVVJWZXF5UVA1eUhiclcwdDc0Njd0eDRrK0tPR1dvcVl5aG1mM3hjTDh1?=
 =?utf-8?B?d0FvSHlQVU9UbnozK3RTelF1L1QxVjl5OHB0bWE3b1hSY3dLK0lFUlNnK050?=
 =?utf-8?B?MGRHUGs4NnArUmJyeVQyUVZTbnVCWFlsM1VUTExjTjlmNURvTitMaE1GcGFC?=
 =?utf-8?B?YmY4S3JNUm1vWnFiZTlDOEhxZEphYldMNWhRUGxrNGp5QkYvb2xtQ0RKeWJW?=
 =?utf-8?B?SDUrZTdsaitUS3ZnQU9BRDk5RHkvOUtIMWtUZk44YmlYaXFCSGtIc1Jza3o1?=
 =?utf-8?B?RUg3NW9INFpqanBuYncyWHJLNWE3empBOG5BUG5wenRJY0k0UENxMi9tdVBR?=
 =?utf-8?B?ZlBIdUdhV0YwN1NFTmd3a3dYZU9ybGR0YVZLNFdZYXBjVTUwWkhYQitzVGRO?=
 =?utf-8?B?S0Rkek1Fa0pQQ0RNcUJja0lEYm5vK3V4R3BPeFdUbHlER2NsRVBsN1QxTlJ1?=
 =?utf-8?B?aWovR0FkR0l6Ykt6dXVrR2ZFRkdtUEdoYTQrYkVxSm1MbzdaQzdESjBXU04z?=
 =?utf-8?B?NGFyZjQxNFBvbnpJWjFTNEY1VHdzREowM3hTTmdRbklTUVVsam5zMy96UnFN?=
 =?utf-8?B?dDgrSWhQRld0YmtpSXNrMmgzSXBpYW43SWNXUW9JaXRFdHpTZkdMNldVNjRW?=
 =?utf-8?B?K2c9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: f62eb696-9d05-4f06-e403-08dce1ff37b9
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2024 09:55:44.9551
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ev0xc6bha/wuaRMRFtO6AnATa4WCzGQFP52vIw3I8gqiiMcjkO95GIbYHss8Tt0P9m6h+jchn6huyoJka2zjtoME4l4gVre8lrBWHeaELyM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7778
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_025557_647238_EFC1B26A 
X-CRM114-Status: GOOD (  12.03  )
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

SGkgSGVpa28sCgpPbiA5LzMwLzI0IDExOjAxIFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBB
bGwgVGhlb2Jyb21hIGJvYXJkcyB1c2UgYSB0aSxhbWM2ODIxIGFzIGZhbiBjb250cm9sbGVyLgo+
IEl0IG5vcm1hbGx5IHJ1bnMgaW4gYW4gYXV0b21hdGljYWxseSBjb250cm9sbGVkIHdheSBhbmQg
d2hpbGUgaXQgbWF5IGJlCj4gcG9zc2libGUgdG8gdXNlIGl0IGFzIHBhcnQgb2YgYSBkdC1iYXNl
ZCB0aGVybWFsIG1hbmFnZW1lbnQsIHRoaXMgaXMKPiBub3QgeWV0IHNwZWNpZmllZCBpbiB0aGUg
YmluZGluZywgbm9yIGltcGxlbWVudGVkIGluIGFueSBrZXJuZWwuCj4gCj4gTmV3ZXIgYm9hcmRz
IGFscmVhZHkgZG9uJ3QgY29udGFpbiB0aGF0ICNjb29saW5nLWNlbGxzIHByb3BlcnR5LCBidXQK
PiBvbGRlciBvbmVzIGRvLiBTbyByZW1vdmUgdGhlbSBmb3Igbm93LCB0aGV5IGNhbiBiZSByZS1h
ZGRlZCBpZiB0aGVybWFsCj4gaW50ZWdyYXRpb24gZ2V0cyBpbXBsZW1lbnRlZCBpbiB0aGUgZnV0
dXJlLgo+IAo+IEZpeGVzOiBjNDg0Y2Y5M2Y2MWIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRk
IFBYMzAtwrVRNyAoUmluZ25lY2spIFNvTSB3aXRoIEhhaWtvdSBiYXNlYm9hcmQiKQo+IEZpeGVz
OiBkOTlhMDJiY2ZhODEgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIFJLMzM2OC11UTcgKExp
b24pIFNvTSIpCj4gRml4ZXM6IDJjNjZmYzM0ZTk0NSAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBh
ZGQgUkszMzk5LVE3IChQdW1hKSBTb00iKQo+IENjOiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5z
Y2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+IENjOiBLbGF1cyBHb2dlciA8a2xhdXMuZ29n
ZXJAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgoKVGhpcyBoYXMgYmVlbiB0cmlwcGluZyB0aGUgZHQt
YmluZGluZyBjaGVjayBmb3IgYSB3aGlsZSBhbmQgc2luY2Ugd2UndmUgCnNvbWVob3cgbm90IGxp
bmtlZCB0aGUgZmFuIGNvbnRyb2xsZXIgdG8gY3B1ZnJlcSBmb3IgdGhlcm1hbCB0aHJvdHRsaW5n
IApqdXN0IHlldCwgdGhpcyB3YXMgZXNzZW50aWFsbHkgbm90IHVzZWQuCgpBcyBmYXIgYXMgSSBr
bm93LCBubyBEVCB3ZSB3cm90ZSBmb3IgY3VzdG9tZXJzIGhhZCB0aGF0IGxpbmtlZCBlaXRoZXIs
IApzbyBJIHRoaW5rIHRoaXMgaXMgdGhlIG1vc3Qgc3RyYWlnaHRmb3J3YXJkIHdheSB0byBoYW5k
bGUgdGhpcyByYXRoZXIgCnRoYW4gZG9jdW1lbnRpbmcgdGhpcyBwcm9wZXJseSBpbiB0aGUgZHQt
YmluZGluZyBhbmQgbWFraW5nIHN1cmUgdGhlIAprZXJuZWwgZHJpdmVyIGFjdHVhbGx5IHN1cHBv
cnRzIGl0LiBBcyBzYWlkLCB3ZSBjYW4gYWx3YXlzIHJldmlzaXQgdGhpcyAKbGF0ZXIgb24gaWYg
bmVlZCBiZS4KClRoZXJlZm9yZSwKClJldmlld2VkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRp
bi5zY2h1bHpAY2hlcnJ5LmRlPgoKVGhhbmtzIQpRdWVudGluCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
