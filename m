Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DE59CE7D07
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 10:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=93dTMH+SdDk0qaiyajcBYZcTahXdTK8XR/VKq2Pz5ck=; b=qXPNNMj7rSsXtuRYPZ3pbKt8J+
	K7t+mPSiYrjjiQhX+jLMx5t3uPzL9JSSPZCvjwpzy7TcgmJkjJ7/1MhFXDvVeaI9+43zOex+GReZP
	ow8HopKZ9MLj8wOjXjIj9MQAWpTyIKLsdp2vmjhDQakVnkKeenLIVCWxyHwLktPum8dPiqiNk7n2x
	/yHgnHpCt+EQeRGIRlCaixt1ZGbaZXEJeM2o1NqT6aRg3UeJxG2RcPCz+E9JrU3R8DHZT/Cusa6Mw
	YHw2b9nSptFKnC5+qYqKjkHuo837jNjOztcd1w55C2PI7VaT6QVHSYGE9agpuFzRpjqljCvJggS9D
	w4sutlrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svZjk-00000002ISQ-2VDk;
	Tue, 01 Oct 2024 10:04:08 +0000
Received: from mail-vi1eur05on20612.outbound.protection.outlook.com ([2a01:111:f403:2613::612] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svZji-00000002IS2-1YGl;
	Tue, 01 Oct 2024 10:04:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NjlJXvwkK2PMmY+dpZnBkVtYFTf7dhP5FDgdTJoZccOVlAfz7ecMMwtAL/WKjCca4xIkZoOwQIZwlx1KYfRo0mIu5UPc6aA7KGwZIMS9tXORl2nyXeNt1CINZt3/2l28jjEsSukmAYOTxs3ZYn+1xfm8+PE7bkSMVg5W/GMHDTTKg1L5taJ5zDsmb8EWZRlKb8E7dLFTQDzPBH15QVfZlg/FIdVIyLjogS+yYxXG4cBS3I7Jvgpd52Iw6WXyeKx5TdlLWF3HiGx9DENMVdSUYL/Wa7cHwTImIr6BwZHpBDoPbCJxfXk981zj7YzMVBniLS94BbA1/U+FjRdyJFbX+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Duv9fKheDWgh4It4WSrqMtbrBDD6Y94lf/ltknDZ35U=;
 b=xkjjoovRSRe9U8BYJfBuL9fjSekgM63c2UxMyv3CshjiVBl5wVveLLSMSpEdfnfKyP+CP9t4OlOohbHi43ZHm2m/kFcY1lOJqAooFXgDxgH6sS9Bktt5ype93HANenZyrV7eERip0nJNyjn3YW5SeoEkIQZHv3nvmockeK5FjHUgPR018y4H4KDM/YyUy4CxgsqSK/3B1Q0UexXkDbLcCrQ/+eJjW/+HCmWzQLnKK8fnrAnCK2GtnAE+ZIanhoZ3gEpPklznFcIYHuKj93dTPXicvHuO9cB5Kz8Z0X7D2BIqHFOTF7P6ZG/Pk8P3GVKbOhoF+ewHAcF9Gtk+VCoZnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Duv9fKheDWgh4It4WSrqMtbrBDD6Y94lf/ltknDZ35U=;
 b=eDyJlRKRcMEYHcYZD8+hLPEK8UPHhTpSnYU07oeZzkDeWSud5KJ/3yNWsDhJchRFtsF9/46J4Bu0lxqbSZ7fM2l3n8SifJ/ckpNQcLIy/yCpjC6jpHPuJKWe8tRzcimVSFyWqckKnN9cuizwsnKrKAGlYF8WzRp6UzB8k22NuYc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by DUZPR04MB9782.eurprd04.prod.outlook.com (2603:10a6:10:4b1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Tue, 1 Oct
 2024 10:04:01 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%2]) with mapi id 15.20.7918.024; Tue, 1 Oct 2024
 10:04:01 +0000
Message-ID: <79b0bf90-556b-4076-bdf3-8b3d8aec80f0@cherry.de>
Date: Tue, 1 Oct 2024 12:04:00 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] arm64: dts: rockchip: Remove undocumented emmc
 property from PX30-Ringneck
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-8-heiko@sntech.de>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20240930210112.1993625-8-heiko@sntech.de>
X-ClientProxiedBy: FR4P281CA0233.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e9::15) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|DUZPR04MB9782:EE_
X-MS-Office365-Filtering-Correlation-Id: 3496cbb7-566c-4ae3-b351-08dce2005fb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WE9FZlVHcjd6d0F5ckxMMmhWODdEYjkrQ1FaMWNpWEM0ZDg5S0dUTlFMRVdS?=
 =?utf-8?B?SHcxSUloUTBZWjc5NitLWDh1emdzTjNncU41N3AyNE9yZEh4ZzF1Z3JxZ1B0?=
 =?utf-8?B?MlpMTm5kcUthaUc5bTgxamlrazFtM3EvSXRGMzc2UzRwUVBqbDdmcUlKUlJ5?=
 =?utf-8?B?MDd3ZEcyUllvSVpiU0RvS0RlYll3bXYyVGUxb1MxSHo0dm5RU3RMNE1uT2o4?=
 =?utf-8?B?K0lLQVptVDl0SzVXTnNBcWZrTmgvOU4vcmduK3hpOEloL29EMUFGTmo3OVhW?=
 =?utf-8?B?cnhLRjZRVDhqK0MwSUdYb1dzZGNBaUVGN2lvTmhBbk1EQUJDR0h3dG9iLzlJ?=
 =?utf-8?B?eS85Y0Nabk04K0I4VFdLdVVSbW5YK0FyLzZRVHR6Wi8zR1BFcWpYWUhQU3BY?=
 =?utf-8?B?QlVMU1RpSXorYWtxSEd3WjRxd2xldmZndUVjQW5hSzlJYnc2bTVQeVNNb3F1?=
 =?utf-8?B?eExEQXBLZ2RlSHdnMUpKb3lJamVGZGNDdTFiK0hSVWtzT1k4WmR6emZLd0d6?=
 =?utf-8?B?YjNDZGd4bnZ6dlpRV3dDUS85ckkvc0QvV0VON1Z3ZE5QSFJ3anFHOENFVThx?=
 =?utf-8?B?NDUxdEgxQ1NKcE5UeG9yS3YxU2wxMHR6YTVVNmNGRSt5dDY5Nm5NdU45d1JG?=
 =?utf-8?B?eStrSk9JNHdJRjVlMmxEM3EyMXJTb3o5YS9HR2dLRlYwZUNpMXhRU0ozYzIr?=
 =?utf-8?B?SlcyQzZjQ3g4TTVqQjREVDN6NDlPVytBaHkrOVFHcmhUNVZZazl2dnlhNGtn?=
 =?utf-8?B?WXpZUDJ1REc5Vndvb0l3ZG5BMGNiQUY2TFhoSTNITmd3cVQrN2E4eDBIdDkx?=
 =?utf-8?B?VkY3RHBrdXRsVnJ0eUo1T21BOFVBcnRkNHJoY0diZDJhaGdMeHNMTGVvZnkw?=
 =?utf-8?B?Tm1wLzBuWHNFemZzLzlFUlp3c051YmZIY0ZBWG8xRytybWhlQzJ6SmZ3bFpy?=
 =?utf-8?B?UmhPYllkWnJlT3RNQVlnbm1wOE5mQUhzMGhZakpnWnhaSHJRUVNZUi90RkN5?=
 =?utf-8?B?UFIwQWIzd3drTGEvRUI3U0FnbnNhelhEdUpmMnRNLzVRNVp0NmNHYXBSRGpT?=
 =?utf-8?B?WldnK0l4Yy9FZTA1aDY1RG8zaEdlU05EN0kyTmRaN3lZSUQ1OFFnYUM0TlU1?=
 =?utf-8?B?TkdTNDFSZFpScnRTWnMwdUhlRXVuRnF4ZFR5ZGxnTFVuVCtKZk9ZaUM4U0Fa?=
 =?utf-8?B?ZGMzcEpHME5GdmJPbitYOTcxcDJnRWcxbWxlQmZVaXo2ekpBeU1STmNhUTUw?=
 =?utf-8?B?WDJQaTNoWFVFNmN2WnJxdldnbHhtSXhpWkx5Qm0ramd6UlZoLzJwN0FrZzlP?=
 =?utf-8?B?bEtWU3ljZERmUHZhMjQ5eUlUS0RFSWxXMUF5Z1ZYWEFuRTZIbGc4dUFVSXZB?=
 =?utf-8?B?V01GN1Y2d3JDVnlFYUxJbWtacHpqYUp2RXZoQnVwUW1aZTJiODczWFJvUGlF?=
 =?utf-8?B?Z3M2cFFvZEdrNXRueHpmOTRFV0VZWE10aENWUHlXRWc1VkR5OFkwVmVvaHZ4?=
 =?utf-8?B?aG1xL2k5UEJkWDlDTlR6bk8rVXdCbXpESGc2MnFuWEtjMzdadUJSSExiUEYx?=
 =?utf-8?B?MUFObmY1RnF5alJxSkg4MyswZm5tbitvNm5NV1JCdDRIZmhWNjE3Z0R3QnFs?=
 =?utf-8?B?RVh3V0VtVWRQSzRkYzZkdUIxeWV5U284TXhLbVFxS3RGdEwwSFB3Smd3MDUv?=
 =?utf-8?B?U3ZUejJPMDU4SlBOb0d4ZkxzV3JMa3RqdGUyU3lkNHpzTXgxOU5DNlhBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEtBcGdDUnJNNWNGQmRhSGdCaU51RnJacjRxcEhhS2tyRmQydGF1SmhyUnF5?=
 =?utf-8?B?UCs1RGt0cE9RUmtLM1dLYXVGcytidTY4Z1dTd2REVlVQSVl3RzhTNGVCMVZH?=
 =?utf-8?B?djdKMTg0MFZ3c3FvVTM2cnZmT2t3VzJ4dS9xdnlOTStSVCtWTGNML0dIakpD?=
 =?utf-8?B?bWhSNUh3MkZRSmJiVXJNbVY4WWVoeWx2L3p2N054UFdDcjlQTXJzMDUxTG5L?=
 =?utf-8?B?OXU1MkZhR2R6cWVDNzlLOStRVTZORE1SSHFLcXJnU1ZraEwyVU5HMkpHKzhz?=
 =?utf-8?B?VUhveUZqVzQrZk9HNURmYXVwaFhMNnVld1FTMXpEb0tPYnpvMXByVUV0SEsx?=
 =?utf-8?B?anNsd20yTTZkWTg0L3NwZ3QrNE9Qa0pOaXdrY1FvTFR3RlRYSDZzSnY3Mkph?=
 =?utf-8?B?OWlrMjZ4NkhyWHNET09DVkNnQk1WMFdUSGtDelVGTDFkaFVUUU5GNTI2bkVa?=
 =?utf-8?B?amR5R05SSDArYmFPeEM1bnpNOU1ac3p3L3BNWVZaTEdQL2I2N3crWlpiTTRj?=
 =?utf-8?B?ck14SjJkaTlSL2tzMGdRWE1XSTViZWI3aVRKendqR3FKZFpFNVBUTjZVNlQ4?=
 =?utf-8?B?a3FKUlYrMGtsTGJwOEpiOFRwVHpKSHk0QkI3OUl6RFduTWhqY1JlZWxObjFU?=
 =?utf-8?B?MWs5bE9zUVh4NXVIUmM1TTNSZmVmc1ZYZ0gvOXNEODhPcE00Y2NJOXdQbUVw?=
 =?utf-8?B?eVJiWXJHc2V3S1RxYXdSdmhVbWtZaG5wOGIvenRicyt5Q2haenBiVFYzU2d6?=
 =?utf-8?B?dkhsNTJ2UjVCTHZDQTdjQXBRNzBkUUJIdytpZ2YxQXdMTWtlcENJdnovaDll?=
 =?utf-8?B?TW4zVEJlZU1yV0puZUh6OFYvUjMrOGxoRVhrZEUyeE1tVjB6K2ZWZXhBR1hH?=
 =?utf-8?B?M21iQWVCMG8xd051NkNHRThVcEYyM1ZSWUxkZ201cEpBbTkxeFdVVC95VThN?=
 =?utf-8?B?NUJqVTQzR3oyb0VSNjlHR2dxclVESmFiVzc3Tm1tdHR4WU5kZGxjVU1EeFAv?=
 =?utf-8?B?VzFqSVYxODBHK2laQldjZE5ELzRiVWlVZWd0a01Lc3RzdVNmdEZwa3ozVEZD?=
 =?utf-8?B?dVhISVB1eGlYRXdYdFE0eERCZVp1aGJ4S1Y0ZXFjZ0ErV2RleU1oQkhxWnRW?=
 =?utf-8?B?eEZTVThZSW1VSzFqemJpZU5NL2d4eSsrbmd4WjZ4elJVNnc4SW51SktUSzUr?=
 =?utf-8?B?KzJKRVgrWW1KeXNUNUJSQ2RjSlJrclZQRWMyME9HLytmbjdjZVlZVUFqVWRB?=
 =?utf-8?B?ekdxdVZTY0dZUFk5ZzVvOUxoSVp4QWUzVENKYkZqbFE5TnMrRzc2YW1Jdzcr?=
 =?utf-8?B?bzVLNXNTQmM3T2tIK05DbkxvZTltVGlUekNWc0lacFg2alVKcUtNeG5hc3l4?=
 =?utf-8?B?dkZMcElIRXIySDFXS1RhNjVRbmtEMWFpVWcrMllrQkswQi9ST0lJZkp2ZlhZ?=
 =?utf-8?B?eEZNV3RCcm02YVNiVlVsbzJWck5paFBIRElnN0lGR3dxd0FRRWtpNHhDWXRs?=
 =?utf-8?B?K01hYjk5N013VzhrK0o3TWYyT0hyay9zZllIK29TRUp6STQ3Uy9VcVZyQVJR?=
 =?utf-8?B?U0xPT2hEeDRHbDRvQXFtK2RweGNJaGo2Y2kyVy9UNko0Z2JwdHNNRHA2RnFm?=
 =?utf-8?B?NGp2a1lVcE95VzV2dG1BelBkUjY3YzF6NnpLN3JMU0JQUFRUK1ZEZ2RrQXdl?=
 =?utf-8?B?ajc0dzZrWVlDYXJ4QkRLd3E2L1JHVnhSaldGRlFsQkdSYnp6U2RRN09pZldm?=
 =?utf-8?B?OTBQZFRZU2l3TE5icU5nRm05blNkQlUvNHFGTDVNdmVqRVRIQmExck1Va0dS?=
 =?utf-8?B?d2RITzltcXh6akd1enpSUUlDZkQ2ZzRDNDU1QUptRjlibFpRRThvTmQ5YTBP?=
 =?utf-8?B?V3BUeFd3eExlY2xKbW43aEVPSVNzSlNCM1MxOUg3cTkxUnJ6TitLaTUxazZw?=
 =?utf-8?B?dk9UZUUwbGlseDJSSkNyWDZzUXp4R0ZaUGNFcWVQL05UNDl1Uzk3RDJodTJH?=
 =?utf-8?B?YnVBU1NJcjJ2dkpWRE5VbDU4REd3NG4zaVlrYVlEcVdRWVFyUEU0Uzd4RFdw?=
 =?utf-8?B?ak1pdUNOdFFVbUZoSnlYekpOd3ovSHBhTkJZY0VNUVFVUTA3a2w4bkNNT1Bt?=
 =?utf-8?B?MWppblVDTmNMeHBnRHJCL1d0Q3RJMXJkNnZKbDJQY3RjMmNCdzBCTnFJVVFv?=
 =?utf-8?B?aUE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 3496cbb7-566c-4ae3-b351-08dce2005fb0
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2024 10:04:01.4138
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RdPd1orXdYfsBiK9hGafBLZa2edua6KhlJ9IehWpsiFbXqGHBdMG7HxbHf6HzMJdxrvt3uKQtAyjb8q4dwCb80WbQoJlbEhs4DqbwfVg8ug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR04MB9782
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_030406_432701_B287908F 
X-CRM114-Status: UNSURE (   7.99  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiA5LzMwLzI0IDExOjAxIFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBz
dXBwb3J0cy1lbW1jIGlzIGFuIHVuZG9jdW1lbnRlZCBwcm9wZXJ0eSB0aGF0IHNsaXBwZWQgaW50
byB0aGUgbWFpbmxpbmUKPiBrZXJuZWwgZGV2aWNldHJlZSBmb3IgdGhlIGJvYXJkLiBEcm9wIGl0
Lgo+IAo+IEZpeGVzOiBjNDg0Y2Y5M2Y2MWIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIFBY
MzAtwrVRNyAoUmluZ25lY2spIFNvTSB3aXRoIEhhaWtvdSBiYXNlYm9hcmQiKQo+IENjOiBRdWVu
dGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpSZXZpZXdlZC1ieTog
UXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KCkZZSToKCiQgZ2l0IGdy
ZXAgc3VwcG9ydHMtZW1tYyBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwCmFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpOiAgICAgICAgc3VwcG9ydHMtZW1t
YzsKYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtbmFub3BpLXIycy1wbHVzLmR0
czogCnN1cHBvcnRzLWVtbWM7CmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LWx1
YmFuY2F0LTEuZHRzOiAgICAgICAgc3VwcG9ydHMtZW1tYzsKYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtbHViYW5jYXQtMi5kdHM6ICAgICAgICBzdXBwb3J0cy1lbW1jOwoKU28g
dGhlcmUncyBhIGZldyBtb3JlIHRvIHJlbW92ZSBpdCBzZWVtcyA6KQoKVGhhbmtzIQpRdWVudGlu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
