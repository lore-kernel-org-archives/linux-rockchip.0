Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FE5EC27C5E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 11:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TaQIFc29q7E3BgG57ZeUMUXqvJOgAf4ds7yuq/hPa7o=; b=t3fUUcSy6sJXzF0I4YTI7Jjb5A
	tsZaMBLBqSeq6G1ziPbN1d/+EZy+1BDYJigDpFKrXQbD9Urehyear0yjEl9pYhGUcCdojxpQx1EE0
	5iFouA3QjOE5aup+ORpH009J3ik6M8W3tZoSK4XwgzEwjRGi3N7QdW6EpjFSUOXlFGOa0dqrcjDV0
	PJsiigB30T3gJBQF1aBNXCvE9lqsW+cnCV+HeECESMUJ0yzM5BEz/OXuhe/5jwToOsBL0odcg3Ovw
	GqlmC3hlPWttUIqE3nI5su93Rt2ss3Cs1omXTzgxHOFgA97b5D/f6c75+pFwpYI/RHOaixempjOIs
	Jeul/0HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGzvi-00000008hhX-18RJ;
	Tue, 11 Jun 2024 11:44:46 +0000
Received: from mail-vi1eur04on2070a.outbound.protection.outlook.com ([2a01:111:f403:2611::70a] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGzvc-00000008hdo-2MKu;
	Tue, 11 Jun 2024 11:44:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DWHgEvPAJd2yM9bK0zmCvYMEh3qbQWME5imT9GM/LMbu6j4S2TP1teNDJKd73ALZIJJCWistRYCXPHLy7sOwAEVRWRYW9DL9RKP62JMmFF4SHYU2oSbazIf3490LTUfnBoEG9w01p+ONn8IP7424HkA6frYZDSzXgHbkLe7YsTzySr1FMjfmyeb0zsgy6Uva2H0vbeBGHNWwQTzSsGF6MddiyXgWKx5eaVvsJy1HHBsJU/1U6/Icg7pR+lgt9HbZ/+5/q7uOYQTFQzNBwpuINXmPAoWMTntHh6i+1CxrxlvJxJSi4DoGfeI5vZniidYGWuyNwxWyZ6fTtMJsubA3UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ZFfJkKfmoyi3DJyI1piww+xaO26rxcAoVa8TjmN66A=;
 b=DQdEnoP/WQoyYISsVELSzsuxCrNxHMyYc+GE6WyrKdsmtQs8MXy1Tx+7CwrY4BUz65TWXctWlGvuTWgU1tbv0dJpasPgXyMqKmBx7G/nO4/lLMDaKnnxtoLelASW+N6ZJeNmT6AihZO6Mx6xeZOhjH4kuqDc1N0dX+UW/8PRqXr5w1CqXn1kdfF5oJfnGUGUoKoduagbgWyR8IkOX599wSAm741WUhZKn7zHWxEutdKLbTRn9TO8iYPbQ8RnBKiHDcdItKSOmsJJTwIwzTZK6lA26hLyz42SlpSm8kd8cTzJLfnYJx662mesEeaNOpcXY2PqlHfK3J/dNM9A5DLdEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ZFfJkKfmoyi3DJyI1piww+xaO26rxcAoVa8TjmN66A=;
 b=dRk9zqjzN0dDiNZaWi/vBbQYxQwM03VQgGlBiyX3DDwMI2C+vQz39U8ZUyhcbvZCpKdDKISgFySGDXGnPkBGh0+yX4AyR45ymUZK7rigoJHsapo+injk5+YKlBzM4o+KUKlgwCZ2IYyW81pPzkOIK3aAfl/muTu5Ex6V1fKiOwk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by GVXPR04MB10301.eurprd04.prod.outlook.com (2603:10a6:150:1dd::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 11:44:28 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6%5]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 11:44:28 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Tue, 11 Jun 2024 13:43:52 +0200
Subject: [PATCH v3 1/7] i2c: mux: add the ability to share mux address with
 child nodes
Message-Id: <20240611-dev-mule-i2c-mux-v3-1-08d26a28e001@cherry.de>
References: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
In-Reply-To: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Farouk Bouabid <farouk.bouabid@cherry.de>, 
 Quentin Schulz <quentin.schulz@cherry.de>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-ClientProxiedBy: VI1PR0902CA0050.eurprd09.prod.outlook.com
 (2603:10a6:802:1::39) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|GVXPR04MB10301:EE_
X-MS-Office365-Filtering-Correlation-Id: 0814496d-f05e-4105-39fe-08dc8a0bd91f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|52116005|1800799015|376005|7416005|366007|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ekxOVzlKdzUvaGw5ODdFZSsxT3ljVFhPMDB3OS93OEZpOTM2Y2I0ZCszYUZm?=
 =?utf-8?B?Y3dzTVE1aTNDbE9PTFNSS3RJQzBCeXI3c0hqWUoxQkd2cUNBMVdtb20vbUtJ?=
 =?utf-8?B?SFg2NmFlTVZ0eWVxU0xqMXFidFJmbHYyWEJyVXJPQW4vcHNOSkoyTW15dUFU?=
 =?utf-8?B?ZXRHSjdNeDlJNzk0M0tyb1FIVEZFeWFBdHdRRFdVSjZWdjNrbU9VS3EwQVVG?=
 =?utf-8?B?amJWcFJhTWpDbDZYMXlRNnlZaEVtdUh0S21WRWp1NzRvUmhRZ1VuV2dxNVRk?=
 =?utf-8?B?RnhhZVgrRlV2bUI2YjZUV25KYjZPRnNLcHdweHJVQW4xQllTb3BIZmlKbEox?=
 =?utf-8?B?NWR3aEZYeW1LSFl0bXU2dnMzN1RRNlFkay9JT2k4V015TCtmNXg0QTlsMjVG?=
 =?utf-8?B?U0pjS0NYbDNhVElBcDJpSlQvTExULzVwcktLNW1DS213MlhyYjM1YThFeGQ1?=
 =?utf-8?B?eDZzU010TjIwSUNuYURyalcyaW1lRmQ4Y3RDVmM3d2IwSm9jbjM4eGVHNmMz?=
 =?utf-8?B?THQzMHJGMmFObzBsbi9aWVhPOTN1Yk53NjgzbGhFMkI4THlrZGJGaGRtUWkw?=
 =?utf-8?B?UFdJa1NGTFk1eGsxb3BMVXhITURnMEVGc1JhUkJvQWRtaGtxOVk0RW1DenpX?=
 =?utf-8?B?WGphL0ZXdDBGemo1MS9XRVdWQ0ZwaEp2TW1SWURibUZHZGVjcUMvKytzQ1BQ?=
 =?utf-8?B?Vm5pWlphU2JqVzl2cFVBVFJkdGkraGpFcFBKVHhtdEE1dWRvTnRMZkY3OWE5?=
 =?utf-8?B?M2dSeDVheXhZZDBPaXhTMlMxenl6bndaYkR1SUZjcG5CYllQemlOK2xIblNl?=
 =?utf-8?B?RlNZbmVQRzc1c3BTazlqb0lwK1FGY2RjYjliOUtLSEhnV1d3YnY0UkdWdVhh?=
 =?utf-8?B?THhuQmRYbldRUnZDbVBBRWVCOVBwdVo5VmRERVRnRFNadXBueitUNktFSjUv?=
 =?utf-8?B?eEJ1TzZyVmhvemlJay91TWd6ZGFsZERvaVNOTXZuTWluR1lYYnhpWVNvTkRT?=
 =?utf-8?B?ejgwYkNLUG10dlo0U2grVndwV3l4K3ZtbWlPeDI2cWlFSkRYdjgwT2ZwZVly?=
 =?utf-8?B?VzBPWTNaRk1tdGtPaDRpME9hMGViTXZNQ1JhMmFFZ1Z4eU4xSWx3WnRTVW5a?=
 =?utf-8?B?U2JIYWNJZjRzRDVFeE53NmlNQkdKamNCRjRNZDVHTG9haExhM3NyaEtTcHhp?=
 =?utf-8?B?eHFlR1MxekxHUzdIU21Jby8xL2pGTFUxYkQzU2lITmRNMkh3NVpDWmcxOG9H?=
 =?utf-8?B?dkR0TGtEVzFMNTlmQi96aXc2cWQxaThyK0U5aUxSRmFjNnVPbDhjTi80WE5r?=
 =?utf-8?B?KzNuU3gvZWJOVHErSlF6UVQ4UkEyTisxemx2TldXRVQzYW5hOE1YZ1NUNVVW?=
 =?utf-8?B?ZGlsY2dSWHVjckdQc2R1TGt3WkJHYzlJZEpOQktxRDFxNFcrb01jTURKREYr?=
 =?utf-8?B?K2J3YzFZMitNbXRxbW5TM0pFakx1YlJ0Lzl1ZEs3a3hOU1JPRzZUN1QvVXFa?=
 =?utf-8?B?bktRa0NFdllNZXVZN2dBbDAvZjhBNFd0QVJXTExzWWtVUHdJKzlTV1d0NjVG?=
 =?utf-8?B?aUJmMzJuVHZTeUhraXBHRm03cnVGUW1qWU02U1FGWkoxbW12TEJDTHdvUm9l?=
 =?utf-8?B?SXpDQTMrdTRXZXMrMk1lSlZoZXZjUmNrdDRzU1BaeXFBaTRxZ2NqNkNoQUZl?=
 =?utf-8?B?bU1meXJIeHpmUjdGdTZKOGJhV1NMREFjMXJTTjB3SjZ4ejFuYzl3V3NEWlZh?=
 =?utf-8?B?QUVNY2lMOFFwWHpneE5udUhESzhaYklZcU14dXd3OFR4bU9PZ0FqK2l0emRa?=
 =?utf-8?Q?XHn/G2AEw0zQBkHY65++1TqGU6kUs2QdjYkJQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(1800799015)(376005)(7416005)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ym4xTnE5azZOUmYzWFJ2YTBSdXA3L05RMG9UYk1meWltVjc2V05XeUlRYmxF?=
 =?utf-8?B?bllOdFBpcll3Y2o4ZkwxRmNIWm9OZEk4YzduWDlReDUxODFacEVkOHlYL0xw?=
 =?utf-8?B?NGhLMFhkZFkzTklKMEY0TUJKVGxvSDhTSWlaVERhM25GU1Z6NE9FVUg2bFdT?=
 =?utf-8?B?OS9Zc2oxYWw4UnpBT2pHWXp4dUJua0FyOTdDa0NIa3hjajQwRi9Lc1ppUmVs?=
 =?utf-8?B?Y0xXWWZqNE8zQjZOeTFYb1htcmNWODFva3BJT0tJU2dQUE43TmppQWlGaG9R?=
 =?utf-8?B?R3JtaVdROW5XQU50OTRwSHFDd2REWjU4aksvT2R6emhoWXl4L2NsTU5iM3do?=
 =?utf-8?B?ZENtM3lPUUY3UmdjWERKRytwZzRmK3IyTnc0VjZjT0N1R0kvVnpDQmhxZDVO?=
 =?utf-8?B?MHBLclFTdDNxSVBPdWM4K2I0SmtJRWFpSWN5R3QreXNIQzlQMlhiZVdRVmhV?=
 =?utf-8?B?NWM2emlZbUl2T3NBenBJZkhnOUx1a2EzVHNIMHY5UUFnYWhmWkRWSGJGK1Vo?=
 =?utf-8?B?dWFjYlJxemtJVk1DakVDbXJIU3ptM3JZSmFZYkhVV2E2bmRmd3k0OWNSVEda?=
 =?utf-8?B?NHV5Z3gyWEIrbEVjNW1pcVlpWEtMT0VGTCtNbmFYWW9Icm56cnZJV1Z6eWNi?=
 =?utf-8?B?ZitoRG5ac0RiQ2VXSm5oTkVvZnhYM21URFhCclJrak50U2FtdG1iQU1Qckw3?=
 =?utf-8?B?eFBNdnQwNnZOVWdTMHVzV1l3WVlQb2h2d1lGb1VhWUZ2dHFIQzdoVFBHaW9W?=
 =?utf-8?B?UVhhVmV4WjJtYlQ5ZGxoQW9VdnY0eC9XT3JNbkk5YlpNS3dWOE5tcUd5TlBV?=
 =?utf-8?B?Kys2bWplTlBIVzBPZEtCeXNvcE9NTkJpSjVGMlpnTkFRRU1MNVE4WnhyRHF5?=
 =?utf-8?B?dHN1bVkvbVdEaDhmalREa1RSU2lWd1pGUVMwNFBiSkFuUnZyclNFamFVaGow?=
 =?utf-8?B?S2pXcTVIdEN5M0d0REF5OFdzTnVCb2R2VHF1NkNKN29ockMwUkxjTUMxSFpQ?=
 =?utf-8?B?Nlg4cVBCQlpCT3pHK2Y4dXZPQjd3QWhOZ2F0ZkFjVGIzRUJEMWk4cjhaU3Bw?=
 =?utf-8?B?VDhkYmR5YW5tOUFGaHlkdFZYTTM0bEFTZTZqS1h4TjJ4ODgyMUdLRWtBZDdT?=
 =?utf-8?B?NXZQNW9NWEpLYy9zMU10NEM3ZnQrTVR1OGpIUmh4eC9NWWg2ck4xSVhpUkZ2?=
 =?utf-8?B?MzVnd3RSRkkyMGtJUXJMK0lkQk1nRnhjS1U0SVpKRE5qaG8yVkszalVOOUU4?=
 =?utf-8?B?OThsZlFBS0lvQUtqS0FHQkFXQlIzdUF3ZnREdmhrZlFUTGhJVUtNd293T3Y4?=
 =?utf-8?B?SVkwZHAvNFVaY1RVV1RsLysvQ0J4NDVOUm1QWlhSSUJRa3g4OUFuVTBpbXdD?=
 =?utf-8?B?SHRNOTJEbk5Ec0hMbGJ3Wk5Kc3U2bnl2cWg3NGhGMUs4QWVtckFlbmxUaDFM?=
 =?utf-8?B?dEo1Z2dvaHA5cW1nZEpUZWc0Nzd0QTZZeUM4MVJkZS9KZzk3Q210eFo4YXlJ?=
 =?utf-8?B?WTdWVmQvSkJFQUNtYUh1MU9mMlh1UzBzeTZzR05kTytINnJiWDJlUUgrOWxw?=
 =?utf-8?B?SWYweUNDcUM2WG9ZbDllSmRnb2lDNHpLdEtabXNTNHdEWi9oVjF0eENwWHVJ?=
 =?utf-8?B?T3pKU09NdTJZSlJGMFZWUi9ibnExQnFQU0tQbVMvZ2RrdEl5eUhpaU5pM1hZ?=
 =?utf-8?B?eDdoYjR2dmlzSVltanFPS1NFWEtNdEpRZWhaY3M2djU1OXE4c2plMzRyelJN?=
 =?utf-8?B?TXIxM0E4RlU0eHAxY0t6ekVFT3FWY1MxNE00V3A4MStFa1IrME8rQU5lY0tC?=
 =?utf-8?B?b0Vac1VxMTNsYllUL1RTT3RwRFo2bVYzaVRHMFVWUGRaU20ySzQ5Y3VLRUNB?=
 =?utf-8?B?WkZXWjVmRmprMWhpbXdKd2hERzZ2TWdROEhkVEdXNHVDYXd1Rnh0dlVOUWlt?=
 =?utf-8?B?T3RNeVRQTExOaHlQR2xMcEQ0d1QxVFZyQTJYLytwK2lUNlFXQTVhUjFkaENy?=
 =?utf-8?B?cW1BZDBKQkRIN2NXNnQvaDMvTjEvK2I1ZkljUkt6ZG1Zc242Uzdtc2ZpL3Uy?=
 =?utf-8?B?R0RyeUUvakxoczVWY3lVY2w1QmgxNmE1eDV0eTloN2NmbitZTUx5M0x6d0oz?=
 =?utf-8?B?YnFqREVzeXhUaTYxVG43TVhOd3FYS0ZCZy9Tc3d3THhNbS9mbE0rRzBTMjZw?=
 =?utf-8?B?Wnc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0814496d-f05e-4105-39fe-08dc8a0bd91f
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 11:44:27.9652
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y19ThY51X7XaV+vhhBxcIi80JZQ2bMkktYb+xDdIYaksx7+6UqaBQ4BbNycmCFx19OqWgRkd8SB4PFPfh4tgba2DK5sOvsJQO6Zkn/KFPgA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10301
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_044440_907949_D447B832 
X-CRM114-Status: GOOD (  24.71  )
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

Allow the mux (if it's an I2C device) to have the same address as a child
device. This is useful when the mux can only use an I2C address that is
used by a child device because no other addresses are free to use.
eg. the mux can only use address 0x18 which is used by amc6821 connected
to the mux.

Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
---
 drivers/i2c/i2c-core-base.c |  6 +++++-
 drivers/i2c/i2c-mux.c       | 48 ++++++++++++++++++++++++++++++++++++++++++++-
 include/linux/i2c-mux.h     |  1 +
 include/linux/i2c.h         |  7 +++++++
 4 files changed, 60 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
index ff5c486a1dbb..ce2425b0486d 100644
--- a/drivers/i2c/i2c-core-base.c
+++ b/drivers/i2c/i2c-core-base.c
@@ -821,9 +821,13 @@ static int i2c_check_mux_children(struct device *dev, void *addrp)
 static int i2c_check_addr_busy(struct i2c_adapter *adapter, int addr)
 {
 	struct i2c_adapter *parent = i2c_parent_is_i2c_adapter(adapter);
+	bool skip_check = false;
 	int result = 0;
 
-	if (parent)
+	if (adapter->quirks && adapter->quirks->flags & I2C_AQ_SKIP_ADDR_CHECK)
+		skip_check = adapter->quirks->skip_addr_in_parent == addr;
+
+	if (parent && !skip_check)
 		result = i2c_check_mux_parents(parent, addr);
 
 	if (!result)
diff --git a/drivers/i2c/i2c-mux.c b/drivers/i2c/i2c-mux.c
index 57ff09f18c37..644509bc3496 100644
--- a/drivers/i2c/i2c-mux.c
+++ b/drivers/i2c/i2c-mux.c
@@ -334,7 +334,53 @@ int i2c_mux_add_adapter(struct i2c_mux_core *muxc,
 	priv->adap.dev.parent = &parent->dev;
 	priv->adap.retries = parent->retries;
 	priv->adap.timeout = parent->timeout;
-	priv->adap.quirks = parent->quirks;
+
+	struct i2c_adapter_quirks *quirks;
+	/*
+	 * When creating the adapter, the node devices are checked for I2C address
+	 * match with other devices on the parent adapter, among which is the mux itself.
+	 * If a match is found the node device is not probed successfully.
+	 * Allow the mux to have the same address as a child device by skipping this check.
+	 */
+	if (muxc->share_addr_with_children) {
+		struct i2c_client *client = to_i2c_client(muxc->dev);
+
+		if (muxc->dev->type != &i2c_client_type)
+			dev_warn_once(muxc->dev, "Mux is not an I2C device\n");
+
+		quirks = devm_kzalloc(muxc->dev, sizeof(*quirks), GFP_KERNEL);
+		if (!quirks)
+			return -ENOMEM;
+
+		if (parent->quirks)
+			memcpy(quirks, parent->quirks, sizeof(*quirks));
+
+		quirks->flags |= I2C_AQ_SKIP_ADDR_CHECK;
+		quirks->skip_addr_in_parent = client->addr;
+		priv->adap.quirks = quirks;
+
+	} else if (parent->quirks &&
+		   parent->quirks->flags & I2C_AQ_SKIP_ADDR_CHECK) {
+		/*
+		 * Another I2C mux device can be a child of the Mule I2C mux.
+		 * The former could probably not allow address conflict between
+		 * its address and its own children addresses.
+		 *
+		 * For this purpose, do not propagate this flag unless
+		 * share_addr_with_children is set.
+		 */
+		quirks = devm_kzalloc(muxc->dev, sizeof(*quirks), GFP_KERNEL);
+		if (!quirks)
+			return -ENOMEM;
+
+		memcpy(quirks, parent->quirks, sizeof(*quirks));
+		quirks->flags &= ~I2C_AQ_SKIP_ADDR_CHECK;
+		priv->adap.quirks = quirks;
+
+	} else {
+		priv->adap.quirks = parent->quirks;
+	}
+
 	if (muxc->mux_locked)
 		priv->adap.lock_ops = &i2c_mux_lock_ops;
 	else
diff --git a/include/linux/i2c-mux.h b/include/linux/i2c-mux.h
index 98ef73b7c8fd..17ac68bf1703 100644
--- a/include/linux/i2c-mux.h
+++ b/include/linux/i2c-mux.h
@@ -21,6 +21,7 @@ struct i2c_mux_core {
 	unsigned int mux_locked:1;
 	unsigned int arbitrator:1;
 	unsigned int gate:1;
+	unsigned int share_addr_with_children:1;
 
 	void *priv;
 
diff --git a/include/linux/i2c.h b/include/linux/i2c.h
index 5e6cd43a6dbd..c3acbaaadae9 100644
--- a/include/linux/i2c.h
+++ b/include/linux/i2c.h
@@ -670,6 +670,7 @@ int i2c_generic_scl_recovery(struct i2c_adapter *adap);
  * @max_read_len: maximum length of a read message
  * @max_comb_1st_msg_len: maximum length of the first msg in a combined message
  * @max_comb_2nd_msg_len: maximum length of the second msg in a combined message
+ * @skip_addr_in_parent: No conflict check on parent adapter for a given address
  *
  * Note about combined messages: Some I2C controllers can only send one message
  * per transfer, plus something called combined message or write-then-read.
@@ -690,6 +691,7 @@ struct i2c_adapter_quirks {
 	u16 max_read_len;
 	u16 max_comb_1st_msg_len;
 	u16 max_comb_2nd_msg_len;
+	unsigned short skip_addr_in_parent;
 };
 
 /* enforce max_num_msgs = 2 and use max_comb_*_len for length checks */
@@ -711,6 +713,11 @@ struct i2c_adapter_quirks {
 #define I2C_AQ_NO_ZERO_LEN		(I2C_AQ_NO_ZERO_LEN_READ | I2C_AQ_NO_ZERO_LEN_WRITE)
 /* adapter cannot do repeated START */
 #define I2C_AQ_NO_REP_START		BIT(7)
+/**
+ * do not check for conflict on a given address
+ * used accordingly with "struct i2c_adapter_quirks.skip_addr_in_parent"
+ */
+#define I2C_AQ_SKIP_ADDR_CHECK	BIT(8)
 
 /*
  * i2c_adapter is the structure used to identify a physical i2c bus along

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
