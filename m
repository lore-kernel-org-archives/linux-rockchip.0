Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60FA4C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 15:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5418cJGtQ9gxjWr+zX4h4ouUCAW5qsSiq1n07aAU9kk=; b=xDMFfdx/Goa55nRCVjN/nYTT+H
	BGpblvDcCOebyKxAArZuNCOOWO+ueGKV410dX+LjKXNpxLBldUZNvGeb8bNUalmV8PYx4bYXONswt
	knaon8VAzjiDgKfD7MmIf8I1pbgvAhB+nxijU675T9NrZaXeWLG2KFiqaW1HkJcd30UMGlUB8X+nK
	VEe70RepyR3m2DdVqrPzFoeDqI10xBPpaqjEolU7dvI4gAqYIjA4D5UYHxlft7M47QQi3Idcm8/Ym
	SsJkgnZibMz0/zwkBacv0cMHq+snnEFkziLAkNmjs9l9WvgJJzIBKzZLsZrFufK5l3V5J8yz1kHYy
	vaPu0eZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRZ1b-0000000Avfj-3foZ;
	Wed, 10 Jul 2024 15:14:31 +0000
Received: from mail-vi1eur05on20700.outbound.protection.outlook.com ([2a01:111:f403:2613::700] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRZ1Z-0000000AveZ-1SaO
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 15:14:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kQsTC1D8TfeaSwGjO+cKbLbjOAczemPsFE1S4KmDfEFEqH+UqgH6hf5WoS18c+ymfmTdNs/q2i7ZTrq1ky4KGkSGKivIZS2sTzvrPQG3t/k5hO0js8RxbsaEf6J+grdDkSOtCW7SHKYJtSsx8oJ0FYrPwTdCWw/LZciaQ78Mp2Bke8RKavzVuZp5rcPp5GCMsRKFIJoYPDbeRlQBv8awvicMTWCwX7ebmBTGWgKK0ByEcp4Eife2KqzeJ/XW+ZX2HLrGXYjEehOxhslgMnJf0u9jitcd5PnPmc9NnbUFfnjqtObdJOgLZsdCdSDoSwt31ftOnVsNzKFUKWXi/FWBbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4MBXmmZzKyTljTzsEcJiWnq3HVIoKsYYUQECCgevy0=;
 b=RP3u0vj0zTRUNns/EGmjHBw5RAmqQyKfeTmRog6HEeYzjK34L8Wmz7lBGrOQ1OSPX7uhafi8/zT2wD8WKGGZChcJwOmeAAiYz3bgS6iAQq5TxKEpqKlKUyOhA/GmQB1/G0zz76p/li/DzWVllbs2UfeR4VujxWblsWdkTrtGJ7wxM8W41YIoSwrjy80PCCy732wMk42oldi8YmE6wcfKfpy7ObXD6Bxw7eSkmxRZ09yaZHLsBbk2ZilTTduemdxoTh9E3uihqrYet4Td09goHyX52ICOmGwSoRpDJEdLGwWrKOfsJKlwqjg3Xklo6qKDRES8GnrrquGYoa/7W0C4yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pironex.com; dmarc=pass action=none header.from=pironex.com;
 dkim=pass header.d=pironex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pironexGmbH.onmicrosoft.com; s=selector2-pironexGmbH-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n4MBXmmZzKyTljTzsEcJiWnq3HVIoKsYYUQECCgevy0=;
 b=I+7+ql8uRqYwl5cG1WLNilwQ2G3YrSqOE39ixnv/XOuVktQtzKq7/ZCfaIfOKlOVnwvjGYHLnnEYjmXQockIOFtw9avOK0mi0bN24ZdXJsIhCy6zWaNJaVUq+J/FrOX8mIxyU40in1vVDlKT3ZIqodgsTAZSozlwRXUdss7qwxg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pironex.com;
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:158::19)
 by AS2PR10MB7639.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:645::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.20; Wed, 10 Jul
 2024 15:14:18 +0000
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd]) by AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd%3]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 15:14:18 +0000
Message-ID: <9da2d4cf-1210-4e5c-9cab-ae500ae303f9@pironex.com>
Date: Wed, 10 Jul 2024 17:14:17 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi
 for RK356x
To: Dragan Simic <dsimic@manjaro.org>
Cc: Diederik de Haas <didi.debian@cknow.org>,
 linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
 <9af7bd0db5bc5fd23cfeb121b78bbdc1@manjaro.org>
Content-Language: de-DE, en-US
From: Philipp Puschmann <p.puschmann@pironex.com>
In-Reply-To: <9af7bd0db5bc5fd23cfeb121b78bbdc1@manjaro.org>
X-ClientProxiedBy: AM0PR02CA0212.eurprd02.prod.outlook.com
 (2603:10a6:20b:28f::19) To AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:158::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR10MB3601:EE_|AS2PR10MB7639:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e3b48b7-deb9-4005-df4f-08dca0f2f805
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUNtWHo1ZEQ0cEVmdGpCc1AzMW9sL0pMeVJuVjdrY0Zlakw3eXRWdmZCYUwx?=
 =?utf-8?B?dXBaaWhUNURIVFJiZDAvMEZ6bUZxcnpQTHVlbFVxM0hSNS8wL2ZEdVFoZytI?=
 =?utf-8?B?RFd5ZlQ3YTZCd3Z0a1FPTXE0S3c5SVp6TW8rV1JiYTgwTG9qN0U0RVdCZnBU?=
 =?utf-8?B?dE5Ka0FhNk9VT1lZZXUyU2ppaXFxNkt1MlJkZG04RmFyL29RQWRIS09mLzNT?=
 =?utf-8?B?YnBwTDNmQzhBSmlmQ3pCaVRnVmdES0NFR3l3YjEyYVdIekNvLzcxV2o4QWkr?=
 =?utf-8?B?enlMVUlhNnIvaUhkSjlaVTZSbWpsWnNiSkwzTkViYVkyWklCTnFjNjBnK1B6?=
 =?utf-8?B?V092V3VETkw2c29HSE9UdXFCd0E3K1dNbXRvaHFwS3cyZ2RCNlhveWJ4aXdY?=
 =?utf-8?B?bU1oaUxwWE5sODdsN2ROL0xseFRKcmg1Z29aOWdSZGVZVlI4Q2I3S29XbFlH?=
 =?utf-8?B?Ukk2dk1aVm1IMjBQNkZyS0cxSFo1UUZmY1Y1c0d3aW5EanNJMzBvalpmTFRD?=
 =?utf-8?B?dmJsY3BJTHNIUk1uZzRnVDRqTEdxM2tOL3JldWR2Z0xyOWZTbXkvOGFQMkht?=
 =?utf-8?B?YnhnMFZDRlluV1pvYWhQR3RHdUtxMy9vU2xSOXBxSGVXWkdlZWFKZ3Vzb1dy?=
 =?utf-8?B?alZ1Z0prbGNBTXVCamZ1Z3N2RGlxSkRob2t0YUN5VFdTZUxGNVA2K2EvaXlp?=
 =?utf-8?B?QWpZdjZMMWx2TW5yRGVRZHg3aCtBRkdiK0o2VEhBRDA1Mm41U2l0TmYrNFM3?=
 =?utf-8?B?SnVkcGs3TTJDOTRlN2tKRm9FL2Q2MFNpa2lCMFhSNHlZVkY1cHFkNlc5VWg3?=
 =?utf-8?B?K3kyQlBaZ01RcjdzbFFiOVZEN2swRzEzMWp2VW15TkYyVWIvWjA3dm1DVlNK?=
 =?utf-8?B?S0twc2xzV0JvUGRIelRLLzNoY3N5ekhaeklQdzNDdzdSdi85dE1YQWMwU1NL?=
 =?utf-8?B?dWtXRlVhSzNBQS9hbVdUMS9WMDlnekRsQVFOUnlPbHkvdEJIb0crL3NRSTdk?=
 =?utf-8?B?SFNsVTVvb3BBUS9kakdiUHEwY05iZTNlT2tyWForMHZVUXhmaXF6WnozUmxQ?=
 =?utf-8?B?YmcwU2I0VElqelhiYmlQS0dRK2lVUDlUMVlCeGUzQXJBbDFzWGdVSjZNTHVY?=
 =?utf-8?B?bnRkMWorL2EwT1psTDJoa2xxYTZHdXo2cDF5R0Fvcy9TVGNWOXR3QkhTbWp1?=
 =?utf-8?B?Ylk1VnY0MUhsL0t0N0Y2TDlRZ2V0KzVqbW1ZMU83TEdqWnJMWVFxaEhRSmNm?=
 =?utf-8?B?aVdFa3gyRDBlS0NUTkNaaFdEWUtaS2RDUXd2YWZIVGlkb2ZQS3VZYy95YzRB?=
 =?utf-8?B?T21hV0FsRDJoWUM4NFNHUmkwYk96dHhuSnBObWJodUpHWndYMGo1OGJTWHoy?=
 =?utf-8?B?UDBTUk44NjdSbTEyRmJHbHVUZUdtNjhTbnNBV2w5V3pvRlppN2JoQXl6SVhJ?=
 =?utf-8?B?VTZLcmNSTUFGZGMyYXBzK091YXZlLzc4Z1J2Yi9QSXFzVjMrOFllaDU1K24r?=
 =?utf-8?B?VmE5V2h0WVhQZG95UkJZZlVrSjVXL21rMG5MMWNpK1pZSy8xeHVJOG42T3lz?=
 =?utf-8?B?M25nMEhaZG9uMisxRDFpOHMxMi9NamRYQ3V1akI3Z0wvZU5aMEdmb2ZYZHN3?=
 =?utf-8?B?eUFJZExvOU90RXM0aXJ3MU5OanJ0cVgzTHpaY1lBamxMaUhtdVNqT3RtQURL?=
 =?utf-8?B?MkVIbW5QYlczOWFnc0lxd2F4bks3ZHA3VDEvbEllYTBtSElkQXVlaDhvcThh?=
 =?utf-8?Q?6GQ+bCm5cxEa7V+c3I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1F0MjVlNjZLalN0NmxsZXpySFI0akRXRFBGYktJcnM5TlNMcGwrT1Z6SDU2?=
 =?utf-8?B?SUJsNmRLR01Wcjd1VWlJTk1lZXFiWnJHUlZVazVrWUpEUFNPSUc4NXdWUlRY?=
 =?utf-8?B?Vmd6K0xsS0hYL3diVi8xbWtvdXVDTlJhMlZZakpQbVd6SVQ2ZTdQdnpvdW5v?=
 =?utf-8?B?MGlGOGVhaWsvbjdOamkzNEZSKzd3VUxZQStRN3o5ZmQ3NXhrVFBYOFZ5NUs0?=
 =?utf-8?B?MTFWVC83S1RvcnhzdEc0UzJHQ1pOVm5SSjl3bFMvOGl4VWdEcTE5UGttampE?=
 =?utf-8?B?Z1NEbWg4b2VzYm1KdWQySWFFSXMvelkyVHBBUUtrNWZJTnV5WjVkb0k0eHlp?=
 =?utf-8?B?RlRSdEcyU0ZsZUI3N3Nqek5oWlVlYmlsQWY5ODBWS3JPVEgwa0pWeldWWVBI?=
 =?utf-8?B?b1FVMjVsUTJEY3FVa1prK2xOZmQyYkIzRlpBU3dCeUUrdVExYXVodFUxbEpM?=
 =?utf-8?B?Y2hkdlRtSm5LUi9uZVNxbVhoTkZrN2pxaFRBTk14b1pidGppTEVSNWY0c09E?=
 =?utf-8?B?eVFxS3FlSjhtdEZORS9NcWRWTit4aTVyVXkwcXk1ZG5CSE5ra3JoL0ZGbjg5?=
 =?utf-8?B?SEJDRWNFN0ZQdEtNY2RhSnJBdXdvQ2lnR29GWlhyMUs0QnV4L3JYMHRnc2RY?=
 =?utf-8?B?MXBZOW4xVmtUSWxGc3RabVYxQlZYY1ZZbEM2dEg4Z0hhZ3AwZUFRSFJDTDQy?=
 =?utf-8?B?TEhuZ3VCSEZkMEs5UW85TkRoMnZIMkJLN04vejJVc0VqS1dncVQwRVBWcWFI?=
 =?utf-8?B?ZEs4N3RYU2dmNHR2b3gzL0lGZ3pyWm8xWWRZcFQyeGhzWlJrMSs2RmFmMm9D?=
 =?utf-8?B?ZHFvSVh6ZUNaNDdmZ0pqbVBhcFNZcVRyUnFNTEFpWlhvdDBTOVVjWEJZYVlH?=
 =?utf-8?B?ejFVc1c2RFd5UTFZSVdYUkNvSWptYm5HZU84K3FlSHdtL1k5Ky9DWmo5Y1Fp?=
 =?utf-8?B?VkdLa3l6ektvaFRTQmJlMnRldUZnSVNFTU5rSmhQUVRQaXFuQUxtT2pqU2Zw?=
 =?utf-8?B?MmhwSUhBQlF5bFBGWlVaa0c1SUJlUWxKaDVGc2Y3N0o3UlBtVGhJdllleEVG?=
 =?utf-8?B?ellYNzh3TWpTR0lGbzdTejFWdjRqK0lpUHpXSm1BZnFkaWpQckdZbzRheVZr?=
 =?utf-8?B?VkVDd1FjYzROb0R2aXhFUHdQb3NwWW5ybFlmU2VSYW5Sa1JzZjlsa1RFUUpn?=
 =?utf-8?B?MTlvemVFdmsxLzZ1dWkvSHRoYTFHWERPaTJUWkxXMzIrK3BQaWdoeFU3aWxm?=
 =?utf-8?B?bFcvcUxkekxqN3dsbS9tVlZkWTVDUDF4dS94SWtrdTBqdE1DVzNWS2RSUEFq?=
 =?utf-8?B?VGtNU0gzdEJwVE1ZRXZhU0Zma0V5NkIyNlVrUEJqYXkwQS84TlJ4VDNwY2Ex?=
 =?utf-8?B?UVhEaTFqZ2w3Q0l4QTQ1U1hlWGlESlgxcnEzdGhVOGU2T3FNK1VzNWtHUkZn?=
 =?utf-8?B?U01mNnR2L0h4dTJ6MzJNQXhYTjJrUmg2SjlaajhyR2FqUWE0cTQwTzVjQVg0?=
 =?utf-8?B?SGlnU050c0tuQzRWOVVjd3NJOXRFaTFWeU1Fb2RuVmJBZzZlL0lraG5aekJJ?=
 =?utf-8?B?K0k3b0JqUGF1TktlSG1WU2tVbDJnMmhBdSs3V2tzYURQUVBGR2RFenRzRUtR?=
 =?utf-8?B?MmdDMlJEMm4wL3JTQ2JxSVRXajJDZ1o2K1lSQndSVW5xTmprckpzRXZxaThs?=
 =?utf-8?B?UHpBd0NmMVd3ajBBbFR4cU1iNUlYN01jYkw2RWFxMlNEL0VFcS9CRGxZNXQx?=
 =?utf-8?B?eVdrckh0SERJWFNISVVzVkRyS2FuaERYSW8wUHBSWGoxdHdjaXRxMmY5WHhv?=
 =?utf-8?B?UXVjT2hEZWhhRURGbTdUa04wekV0TlBueHhzWlNPY3NWa04xcGRhT1J4OTN1?=
 =?utf-8?B?OSttTHBjYWp1ay9EV1BlUWZZSnNFSlZNN3BtZGpLakJSK3VhdUdlcU5Edm9J?=
 =?utf-8?B?NWd6akJtZmVpekVCdmJpNERCMEV5bmZ5eG9sMWpMRVloU1FSeWpnUlNGM1I4?=
 =?utf-8?B?WkUwUnN2R1IwVHplSEZzbjdSU1NpenR3T0tHMlhIbGkxam5XYk9HMUpTUUU2?=
 =?utf-8?B?Y1JTMk9nYSt5RzluSFRYYVFUZjgzQStVMHNYdG5vWmorclIyRi8rSnV5RTZ3?=
 =?utf-8?B?RlVmMU1GQWI1NWdmWE1wY3hCZElUMGUzUlJoM1grZWZQL2JuOW9SNnpIN2x3?=
 =?utf-8?Q?yxh4c9y1DRS1sgVFeJzslDVpHeusOjN1O1CN+NYzgssJ?=
X-OriginatorOrg: pironex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e3b48b7-deb9-4005-df4f-08dca0f2f805
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2024 15:14:18.4363
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00aa8e52-eebe-489a-8263-3195e0a468ca
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8hqNDhFinUGRY68DQAL1rHymb+t1OmvSkZaDJfaHuhfVbLLOOQqIRX9ue2D6SGUm01d19z8PCRwjguml0hetGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR10MB7639
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_081429_421834_96ECFCC8 
X-CRM114-Status: GOOD (  17.99  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRHJhZ2FuLAoKQW0gMTAuMDcuMjQgdW0gMTY6NTYgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4g
SGVsbG8gUGhpbGlwcCwKPiAKPiBPbiAyMDI0LTA3LTEwIDEyOjIwLCBQaGlsaXBwIFB1c2NobWFu
biB3cm90ZToKPj4gQW0gMTAuMDcuMjQgdW0gMTI6MDIgc2NocmllYiBEaWVkZXJpayBkZSBIYWFz
Ogo+Pj4gT24gV2VkbmVzZGF5LCAxMCBKdWx5IDIwMjQgMTE6MzM6NTYgQ0VTVCBQaGlsaXBwIFB1
c2NobWFubiB3cm90ZToKPj4+PiBETUEgbmFtZXMgYXJlIHJlcXVpcmVkIGJ5IG9mX2RtYV9yZXF1
ZXN0X3NsYXZlX2NoYW5uZWwgZnVuY3Rpb24gdGhhdCBpcwo+Pj4+IGNhbGxlZCBkdXJpbmcgdWFy
dCBwcm9iZS4gU28gdG8gZW5hYmxlIERNQSBmb3IgdWFydHMgYWRkIHRoZSBuYW1lcyBhcyBpbgo+
Pj4+IHRoZSBSSzM1NjggVFJNLgo+Pj4KPj4+IFNldHRpbmcgaXQgb24gY2hhbm5lbHMgd2l0aG91
dCBmbG93IGNvbnRyb2wgYXBwYXJlbnRseSBjYXVzZXMgaXNzdWVzLiBTZWUKPj4+Cj4+PiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI0MDYyODEyMDEzMC4yNDA3Ni0x
LWRpZGkuZGViaWFuQGNrbm93Lm9yZy8KPj4KPj4gQWggaXMgc2VlLiBUaGUgb25seSBwcm9ibGVt
IHRoYXQgaSBoYXZlIGlzIHRvIGVuYWJsZS9kaXNhYmxlIGRtYXMgYnkKPj4gaGF2aW5nIG9yIG5v
dCBoYXZpbmcKPj4gZG1hLW5hbWVzIHByb3BlcnRpZXMsIHdoZXJlIHRoZSBsYXR0ZXIgY2FzZSBp
cyBmb2xsb3dlZCBieSBrZXJuZWwKPj4gZXJyb3IgbWVzc2FnZXMuIFRoYXQKPj4gaXMgdmVyeSBj
b3VudGVyaW50dWl0aXZlLiBNYXliZSBhIGV4cGxpY2l0IGJvb2xlYW4gbGlrZSBkbWEtYnJva2Vu
Cj4+IHdvdWxkIGJlIGJldHRlci4gVGhhdAo+PiBjb3VsZCBiZSBzZXQgb24gZHRzaSBsZXZlbCBh
cyBkZWZhdWx0IGFuZCBkZWxldGVkIG9uIGJvYXJkIGR0cyBpZgo+PiB3YW50ZWQuIFdpdGggc3Vj
aAo+PiBhIGJvb2xlYW4gd2UgY291bGQgYWxzbyBwcmV2ZW50IHRoZSBtaXNsZWFkaW5nICJkbWEt
bmFtZXMgcHJvcGVydHkgb2YiCj4+IGVycm9yIG1lc3NhZ2UKPj4gYW5kIHJlcGxhY2UgaXQgd2l0
aCBhIGhpbnQgdGhhdCBkbWEgaXMgZGlzYWJsZWQgb24gcHVycG9zZS4KPiAKPiBGcm9tIHdoYXQg
SSd2ZSByZWFkIGluIHRoZSBwcmlvciBkaXNjdXNzaW9ucywgdGhpcyBzZWVtcyBsaWtlIGEgZHJp
dmVyCj4gaXNzdWUsIHNvIHRoZSBkcml2ZXIgc2hvdWxkIGJlIGZpeGVkIGluc3RlYWQuCgpJIHdv
dWxkIHRlbmQgdG8gZGlzYWdyZWUuIFRoZSBzZXJpYWwgZHJpdmVyIGp1c3QgdXNlcyB0aGUgZ2Vu
ZXJpYyBkbWEgQVBJLiBUaGUgZXJyb3IKbWVzc2FnZSBjb21lcyBmcm9tIG9mX2RtYV9yZXF1ZXN0
X3NsYXZlX2NoYW5uZWwoKSBpbiBkcml2ZXJzL2RtYS9vZi1kbWEuYwphbmQgaXMgY2FsbGVkIGZy
b20gZG1hX3JlcXVlc3RfY2hhbigpIGlubiBkcml2ZXJzL2RtYS9kbWFlbmdpbmUuYy4KClRoZSBm
aXJzdCBmdW5jdGlvbiBleHBlY3RzIGEgZGV2aWNlIHRyZWUgbm9kZSBhbmQgImRtYXMiIGFuZCAi
ZG1hLW5hbWVzIiBwcm9wZXJ0aWVzLgpBbmQgImRtYS1uYW1lcyIgaXMgbWlzdXNlZCBhcyAiZW5h
YmxlIiBzd2l0Y2ggYW5kIGlmIG5vdCBwcmVzZW50IChha2EgZGlzYWJsZWQpIGl0CmR1bXBzICJk
bWEtbmFtZXMgcHJvcGVydHkgb2Ygbm9kZSBYIG1pc3Npbmcgb3IgZW1wdHkiLiBGb3IgbWUgaXQn
cyBjbGVhciB0aGF0CmEgY2xlYW4gd2F5IHRvIGRpc2FibGUgb3IgZW5hYmxlIHVzaW5nIGRtYSB2
aWEgZHRzIHdvdWxkIGJlIGJldHRlciB0byB0ZWxsIHRoZQpvZl9kbWFfcmVxdWVzdF9zbGF2ZV9j
aGFubmVsIGZ1bmN0aW9uIHRoYXQgZG1hIGlzIGRpc2FibGVkIG9uIHB1cnBvc2UsIHNvIGl0CmNv
dWxkIHJldHVybiBFTk9ERVYgYnV0IHdpdGhvdXQgcHJpbnRpbmcgYSBtaXNsZWFkaW5nIGVycm9y
IGxldmVsIG1lc3NhZ2UuCgpSZWdhcmRzLApQaGlsaXBwCj4gCj4+Pgo+Pj4+IFNpZ25lZC1vZmYt
Ynk6IFBoaWxpcHAgUHVzY2htYW5uIDxwLnB1c2NobWFubkBwaXJvbmV4LmNvbT4KPj4+PiAtLS0K
Pj4+PiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kgfCAxMCArKysr
KysrKysrCj4+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kKPj4+
PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kgaW5kZXggZDg1NDNi
NTU1N2VlLi40YWU0MDY2MWNhNmEKPj4+PiAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+Pj4+IEBAIC00ODksNiArNDg5LDcgQEAgdWFydDA6IHNl
cmlhbEBmZGQ1MDAwMCB7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JnBtdWNydSBT
Q0xLX1VBUlQwPiwgPCZwbXVjcnUgUENMS19VQVJUMD47Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBj
bG9jay1uYW1lcyA9ICJiYXVkY2xrIiwgImFwYl9wY2xrIjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKg
IGRtYXMgPSA8JmRtYWMwIDA+LCA8JmRtYWMwIDE+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBkbWEt
bmFtZXMgPSAidHgiLCAicngiOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgcGluY3RybC0wID0gPCZ1
YXJ0MF94ZmVyPjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCByZWctaW8td2lkdGggPSA8ND47Cj4+Pj4gQEAgLTEz
ODksNiArMTM5MCw3IEBAIHVhcnQxOiBzZXJpYWxAZmU2NTAwMDAgewo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqAgY2xvY2tzID0gPCZjcnUgU0NMS19VQVJUMT4sIDwmY3J1IFBDTEtfVUFSVDE+Owo+Pj4+
IMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAiYmF1ZGNsayIsICJhcGJfcGNsayI7Cj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoCBkbWFzID0gPCZkbWFjMCAyPiwgPCZkbWFjMCAzPjsKPj4+PiAr
wqDCoMKgwqDCoMKgwqAgZG1hLW5hbWVzID0gInR4IiwgInJ4IjsKPj4+PiDCoMKgwqDCoMKgwqDC
oMKgIHBpbmN0cmwtMCA9IDwmdWFydDFtMF94ZmVyPjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgIHBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCByZWctaW8td2lk
dGggPSA8ND47Cj4+Pj4gLi4uCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+PiBMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
