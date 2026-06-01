Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49A63CD6E56
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 01:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBUDNVClBbYcgFXBQ5/CI5RtH1FHr+zMmjIChQ7lEOs=; b=tXee0oEgdqgwyv
	sFlfIz+DTQ0m8rVm87DuBxqR6jphJLZ8AvaSwQVsWCUr5m4bktVy6MqYk0ThmqPs3xGSR8/J+sjBa
	x7v61Zk3c9uXsSx3Y6b5WdJ3p4pE+jDdOBbmzMqU01HlFIgKR+/6xtm04kjTsihWkIsnAaw3/UdcL
	CUcYM2uYhmP7nUdNrIwZvPuCzkODIkkCrclpLtaK4aC3EVpsuw0P0MXBYdLaW7vindZTOJv8pNPkD
	yzKYIRYnLl5UML4LiFSWwjeF63+VH+DOMtol9dt/T7dIgG0lSEvZqgFqQzri1IKKN2gBCBxPcEm0W
	JqVNIML5HA8I+quRyJXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTrhN-0000000A1un-29Sb;
	Mon, 01 Jun 2026 01:44:13 +0000
Received: from mail-eastusazolkn19011013.outbound.protection.outlook.com ([52.103.1.13] helo=BL2PR02CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTrhK-0000000A1uQ-2PGo
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 01:44:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yaELRxc4T12XmQNy2IdKmlayxyQELp+H1fraXGLsBqS/zUv90eYhJyhSINH3X8nIoRQzU9L0hJMMzVhWgiCLohscOgbo9U/5Qt83/88pxI529xN9MMZZ2qRME2nm/itRF83zJycaqepITkGaF2R/9Sbo0SF7lRTF13peAeooC6NXSjADbN2dcW3I/Clcah2jjHG0jIr6tizZFNB9JqjQZavUYobu1iEILZRireAPmZaldzcF27Bx/oKCMkpWAjkvfpEdPvJ/q20xDpj+38SrviWiyi5jVC7c9oj/zUmKfZm5sXYu6381kSrVvvjVqpNbrcvBlz9PtVQf6kWk8rNlFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lYLq4queA5MFmA2ugNsp9/8cJASKyZ3ZabFaTDA+mdE=;
 b=kldVAkyDVF7HFTuvh3svbVMfmKaslo6TX3eq35cd4E7B9DhTTm7RcoWRwdPUJtftdSPnFS/JEMux5JFldj8CCSNUTRLpJO+YAyeR72kk7jUBzMVtCizblIb9DiE5jugA34TAkNOKLKautj+FNkZ1gGe+h4HlCacgGYRyDtqZdGf3J4Wo2/3JKu9wOmp+UecynBnuyAghYoezytMHOkOw6/F88D7wazgERB/XI/mdOQ/kGYBkLO5Yrbs07cFPqNqxnIppJWBOuHDn81kzUao2WdXMQKVEv0pBZEXfsFSIgxZrty4U9AmscM/w4ZhbC8+X1IXiExJbUKc3X7SNkg13uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lYLq4queA5MFmA2ugNsp9/8cJASKyZ3ZabFaTDA+mdE=;
 b=kBkdhK4DZpVQtc6P++3lh1wvk6Tvxj5cUn37X+omxqt0HskXorwmAr5Zpiiu83ns4TBJDdGDdmAwdJDROHNFnIb0wbMuPdEBCttygOIJFZoNxo/0M8NRpOY1Hclley+1vN0vjBM/s8zxuSW5PN7RRYYubeKzYWRYF67G9iCWc92hgS/kC0Q3mdezFgu+5fPnm6PrhHSuMv8oIBH3Sf5jNDBTemiQwdU5/PB4hyszMPO9VDgrmLQ7f2qelEn07qzGVVcN4sAsft9CZkNgfrttMSUmC0zIssiykW3OnuXIqWDR8lo/ce0Ctjtjp0i2/9ukQFeUDb6pXNz0XYd+6aXyIw==
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18) by CO1PR19MB5189.namprd19.prod.outlook.com
 (2603:10b6:303:f2::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 01:44:04 +0000
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172]) by PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172%6]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 01:44:04 +0000
Date: Sun, 31 May 2026 20:44:03 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jic23@kernel.org, jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V9 02/11] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <PH0PR19MB9973385EBACD2645B8845DE4F2A5152@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
 <20260530031739.109063-3-macroalpha82@gmail.com>
 <20260530-certain-goose-from-neptune-96e8ae@quoll>
Content-Disposition: inline
In-Reply-To: <20260530-certain-goose-from-neptune-96e8ae@quoll>
X-ClientProxiedBy: SA9PR13CA0025.namprd13.prod.outlook.com
 (2603:10b6:806:21::30) To PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18)
X-Microsoft-Original-Message-ID: <ahzj4zLt5P9PnbUQ@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR19MB997338:EE_|CO1PR19MB5189:EE_
X-MS-Office365-Filtering-Correlation-Id: 0953d6ac-7720-49cb-7131-08debf7f42f5
X-Microsoft-Antispam: BCL:0;ARA:14566002|24021099003|6090799003|5072599009|25031999004|51005399006|37011999003|23021999003|19110799012|8060799015|15080799012|40105399003|3412199025|440099028;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ScrzT4p3oB3IIvPwfh1DbqpfknskgAuj1mjjA68GCXXlZy4v1qk5XWGlR4nJ?=
 =?us-ascii?Q?pY1VUJpJAe33Pq3zxneWnRN53R3wq8fLhGGwTNW1I4EoUCzXlPAISBHZYnja?=
 =?us-ascii?Q?06dPaAdFB4zHr05EPb9DLSNrAOoExuFMXjiI6VDZFVaQUHEskMCWPsLLn+Cf?=
 =?us-ascii?Q?4SuY++ikYgcbdx0ndXDp8IvYs+D9Bp8UOQR43oipS2LCB/7AesASle3uo1ks?=
 =?us-ascii?Q?80Nes2ionq3Pnuf1z8cFkq/v2EKJh2SPEFcA6CbbME2Pxtkd+HV67B4Oc69P?=
 =?us-ascii?Q?HOYZxwpWR57olmIdIYdGLU71YdDn8iwkON63L/gtHQrrjtyENnY121NlOQ5/?=
 =?us-ascii?Q?M8h5SLjdl4+BrvWpkFfqpDGZVNL2Iscij5KuD8UuGJv2QfcL9rK3IqJ07qQM?=
 =?us-ascii?Q?dVadvye5LjqM6hih6dyJxD7wIzhLV2IglmMlcyW+S/OKUrF0QD4mDis1BuHz?=
 =?us-ascii?Q?cODETAXE2gw6CK16QxL+BUQeeCmp1OEANni9j9Mbk92Whj7106yxE0mQx1RU?=
 =?us-ascii?Q?r2gtrFLZflvos8OFVz1WZEDGhx/HYPk8iksgiX4a/yJAZkscMsgVn7GxdKrw?=
 =?us-ascii?Q?n05FzoHqxTX7i49gq8LFIo/JWEaXClT5WfePpAAc9nB6ME1/aZzgL2aXurxB?=
 =?us-ascii?Q?eXBC93EhxLcT1Bxu3bpIXF0fW7KcNolguFVztCLJjjQFnUEk4H/Dg93YnnXC?=
 =?us-ascii?Q?X7jQqUsAPvOFG9JYpW1ijxXJ4chlp8cdAUtMy1S15ZtBvhEBVJGEiqC44S1M?=
 =?us-ascii?Q?McO99eDNxKcXjWW5jKw55ye9CcEgoMFAClGuTdD3H603sP8aVi9aK4ZjTSRy?=
 =?us-ascii?Q?hw2jFaikiT3Z06b1aD1iTvFXJ33B6FTbCFtKwiAHdWtljAp/kXaOBvjv3bIw?=
 =?us-ascii?Q?wx6R/3fmAKoRGwDpp2xa7lGzgshd2ZcUHEFMfJAp08BtKHYXmL5ER5iDItYc?=
 =?us-ascii?Q?MCwR48wrNbY8xxjDvbzMp1cd4Dqo4C8znvzIjD77qQBCTp6ywv0tZg6e/eFs?=
 =?us-ascii?Q?DRE+28KWNq46rReM9+hyhMJT/Q=3D=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pt57mRWKXL+V+hOFsimnaSw7495+8TTxRSUSp7H9okf2TscztqnzvFcimw4w?=
 =?us-ascii?Q?R0F+N9O1QBct2A3matSJZB97w0UqL40nR7CV5ft1DimTLqsvhW4FtYJNaDmr?=
 =?us-ascii?Q?x/IO0wweTiCjYy0tqkGkLUYIb5TA7TzEEFnfVzUNTXlAVsNWMKlvmAHBzjSN?=
 =?us-ascii?Q?BxB52om4vzKv9s4UClwljtck62ORxx8hlLFEKjPM6oQcFwF7MQBWv71rmKgY?=
 =?us-ascii?Q?F9pO+nxiuZ3n8D70saGKFXh+ZWoT6vdf/mDalPArmtdD7ImhUFiwGFflBftU?=
 =?us-ascii?Q?ccd+3Q3lYdCFdH55Lq3/DIHm0Qb/9X81nRwBgTSKId6DAZ8iSL4pcP1QCTkl?=
 =?us-ascii?Q?qTiFQDOtfwoWZuHI/mG4lgq8/U5tY2qdIBa9ahDfgE431uffN7ccRTdZH36R?=
 =?us-ascii?Q?qsGo5mNBpo9P+sj3pWMAHRGP2GEH3ksNhPtFkjWdftszVH3Gt52s4haSokp8?=
 =?us-ascii?Q?BAo2xI1ARJjv5CQCo64Y6Qg728E+k2++mSR+UvhmaC8rWObzl89y9XMg90L8?=
 =?us-ascii?Q?ldQTRl0sC9LVbWhC9w9p56S0G7LMWWGGhZS5IVxbv5SWWTHa0QM2BasZpfK0?=
 =?us-ascii?Q?pktW2HaFYA37zd9S8vm1ff6mUP6Rgy8qCmVSkfjCSgLeohr6dkZmBFJQ7pyZ?=
 =?us-ascii?Q?1IXrE3m+nEndfVdfwAF1ZxQhp0jQQ+5m07dsUUOwQB/16AKPhLt+h2kvUVbE?=
 =?us-ascii?Q?qkAOzAiqZ/7Awgj8r9iw4dcGg9IT9CcX5LxOkiPZ6OOvGSLANSo2z8KDyfoJ?=
 =?us-ascii?Q?j2vHVDrYAacQQIHm75SIqk7fuZuGHV5MeXwDFinyFPAP/46DYuFjFsykMSyW?=
 =?us-ascii?Q?cXknTgPbLu89oU7ce+1pBHtV6uAyK7wh27K51OfO+jmopi17DlFLf/H1t62J?=
 =?us-ascii?Q?3g/m5XqkAYTBt3RNSHDTY0EB+XP8rV1m+JPcq9yE1kvbtm6K7NcHFG9lUrP1?=
 =?us-ascii?Q?cTzl8B/DHinFT86yJ+gaaI66LvwFqeBtEyuAU3BPzAv1ayPrpekS+P9NQla4?=
 =?us-ascii?Q?oRZ11CSTaG9yKJyu93/oluiRxUbti3XkAvo5vjtDm1boGNZqQsn5Sr5YvI4n?=
 =?us-ascii?Q?HUoYw1aCoDqllwsiNCCrS/l4/GI0GfwtBcZEGnu4ZGkMtky72hUBK47DmGdW?=
 =?us-ascii?Q?D8zw6QVQ866B51jSNhP8b0WBZhl7Ug14QKghIJldQOiV1IJ+aYCqw8gCMhid?=
 =?us-ascii?Q?lWbDtqFfF9E+FNb2AhPqlYnd8sjB8GHfBsXUEHB+YZcacsWbldMSJwLNuiSO?=
 =?us-ascii?Q?on/7IjQLj2/Cjg4UXqIGuUnRQk/P/dyifEyd8a98MiX5RdFwMqIw+oyu2gw2?=
 =?us-ascii?Q?j5HeNshLrBELBjCZpSXLQX11hfiOzMM3GI2wFoict3HUpZ65xM6eipLscLCV?=
 =?us-ascii?Q?RwXXzHbKTe6aH6Pi9HsJ/mcPiNbkNromp6vy2V7m1U29FDo2Ew=3D=3D?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 0953d6ac-7720-49cb-7131-08debf7f42f5
X-MS-Exchange-CrossTenant-AuthSource: PH0PR19MB997338.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 01:44:04.1043
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR19MB5189
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260531_184410_626617_51F13F10 
X-CRM114-Status: GOOD (  15.45  )
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

On Sat, May 30, 2026 at 09:26:31AM +0200, Krzysztof Kozlowski wrote:
> On Fri, May 29, 2026 at 10:17:29PM -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add devicetree binding for the Invensense ICM42607 and Invensense
> > ICM42607P inertial measurement unit. This unit is a combined
> > accelerometer, gyroscope, and thermometer available via I2C or SPI.
> 
> Implement feedback from v3. Subject is still incorrect.
> 

I'm sorry, that was dropped due to an oversight. I'll correct it.

> > 
> > This device is functionally very similar to the icm42600 series with a
> > very different register layout, however unlike the icm42600 driver we
> > require a interrupt-names property be present.
> 
> Why do we require it? Who needs it?
> 

The driver this was based off of, the icm42600 driver, has a fallback
to select the 1st available interrupt in the event of the named
interrupt not existing. I was told not to do that here so the named
interrupt is a requirement for the icm42607.

> Best regards,
> Krzysztof
> 

Thank you,
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
