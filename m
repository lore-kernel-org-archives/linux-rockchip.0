Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FA01C77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Apr 2023 10:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j7dp4jBvXePguiz7sD76DP3YTTcbMJEPbX20DMYQn4g=; b=WL5/ifr5YFG9FdFeufnBy1sgya
	Y1jRvi/qvC2maKsAAOz4SHna3BFU8W6KK7wlie/khW05DwdkKefuZM29aXwHpkFWklohef45jWYPE
	i/fRbPhtw77O6yDDYdCivo5hioqwLqw45fvYq0Y5gBAUmWkt75EUSycz3crYkeDaTEGW+1WDt1tpZ
	LpiomeSbM0xAD4EywTw7L1bHiLmg0cZZM0Ct58UZZ2D59LYwRCW7Mw65Q0egTXRazR6KkSokvitq9
	QXZ3H5dqLcgPW8ceQFvKYBWp1o5ra1ssf+niMztw9v5Xf3ZC+R+g4OQxrVgo6WoSa/0nm37XP8YNE
	coLUiEsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp4tD-004sJz-0g;
	Wed, 19 Apr 2023 10:18:15 +0000
Received: from mail-am6eur05on20611.outbound.protection.outlook.com ([2a01:111:f400:7e1b::611] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp4tB-004sIJ-01
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Apr 2023 10:18:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bx6Y99JryxnXclP0naFJg/RZ748Bd/HowK+jvSEWGBJyFpJW/xV/bp6BzcDV6rF4OzLWgA1X5sNuj/oVBYPJ3SOo4T1rTDZxGUw6Vb/5PRuIb5IVi0SBTeTHdphbHW/FEV+Fso2wJgRFyhEru+XFzWiieO5c358OH63IyjycxMf58//DSqibaPYMsdCaILo81vcv8eK1f1S8iYa6EAG4qUHjmOYY0MYsJmJc99SHCp5syfEaLPQJWWajrDZcgez+/GCBGmoozCt8PQSCUMuEj2nDY4mqdbQoEuXoEPncZYb+i5PwUTOD96/FinzSUTeuQ2lJ++tU7EEQOz8E0mDseg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3I88HTjhB5BbkOkUE1Ghg9wYogjRLLYmFhJZHlv333I=;
 b=WYP/RxMIO1VJUDg9xGaQ99AUIYNsEpqgsAR/d9Rrt6wiQhJY7rwDyGXNonNEYAtVCiat/+ABT0KKg8IhjlmatmVn1rRdUZnipyzj9BvGfkFDQsku9XGRPdeTUywJlWU7RhqG2oOHyBvxKg/bpU4Vgs7LvuuhP2g55HnLN+Ow/ZUebmA0uOVx44JO9Zsar/HiJ0UHgIJwQm1ix5j58a9XccinunN7lQ/qefDORY4UnWIir8P/xW/4qHjcZI/qPDWYPEpb0wxx+lpxVcRPT+FzvcfOuwbinEPmpmI9W5IlEeIlNa3U3TNzMR7VX4xtQQDsAyPYBmQD7wSGbUy7F7RhTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3I88HTjhB5BbkOkUE1Ghg9wYogjRLLYmFhJZHlv333I=;
 b=ajskwrXHKAlGazWXjByqJpgrgQdMByuVDM16qG0AIyB8/0zEnhzFcc5h7izrnUwUB5JQBXlT2CwIiPj/CLrr65i+s9x4ZyRG4tSbauYOzStjdCPkm4oWSGsMr3JQdGlpJX2v29/RVPp+3PpEFbQyawP4q2ZpV1XJJeabH0/HjB0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PAVPR08MB9037.eurprd08.prod.outlook.com (2603:10a6:102:325::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Wed, 19 Apr
 2023 10:18:07 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::77dd:14e4:a772:d85f]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::77dd:14e4:a772:d85f%4]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 10:18:07 +0000
Message-ID: <460114da-d864-0cdb-e482-560f57bf7781@wolfvision.net>
Date: Wed, 19 Apr 2023 12:18:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: Problems about NIC, PCIe and usb on RK3568 EVB
Content-Language: en-US
To: Doug Brewer <brewer.doug@gmail.com>
Cc: linux-rockchip@lists.infradead.org
References: <ZDeZTWWIW2I4H7Sc@www.com>
 <57c88a52-c051-4297-22e0-2188cc65a058@pengutronix.de>
 <trinity-e69c6c48-49c2-4100-a241-af7fc413decb-1681372962162@3c-app-gmx-bs48>
 <CAG0V13QvKMi7Fv=Db9cBA5Woi2N2PyasFtxMMzpg73t92YcAkA@mail.gmail.com>
 <trinity-f37c2db7-07e4-40c1-982c-bdd6cd4c1bd1-1681378639363@3c-app-gmx-bs48>
 <CAG0V13RuZbc6dUHNdUMdc=52cGMJwcsTqjHke8tpTuS9wTyMXg@mail.gmail.com>
 <fdabab73-3b7a-ee33-21b9-6f459c099881@wolfvision.net>
 <CAG0V13S4EdYmx-hkpsq-iexwXMOa6e4qcV5_E7XjwYdFYO+CnA@mail.gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <CAG0V13S4EdYmx-hkpsq-iexwXMOa6e4qcV5_E7XjwYdFYO+CnA@mail.gmail.com>
X-ClientProxiedBy: VI1PR03CA0069.eurprd03.prod.outlook.com
 (2603:10a6:803:50::40) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAVPR08MB9037:EE_
X-MS-Office365-Filtering-Correlation-Id: fd1390e3-27ff-4cb5-231e-08db40bf5e42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	1BmodWkdUtj9MWu47Winmrtn0HAu4Ec2tTrGNYOeI7S+AbglCxOJUrI6LjQrqfhCKZriHtj2MmQCzKLNU+p5eZyi3CpzHi+vNl2LLPZn0jBOWbmqaueshm5/9q7usB+YR2gp/b610gexszg+3LcxyMNLd4iUh4fChxuQQj6s+ah04ttBrfzL5vMWaW/AFiaPYSU8406/ieVM+dm0x7uas7V1NdtgOi1/wOcjO2fsWn+hxg/EmMgpdOTq6R2A4/CCrx1z2KlcYutvPWGXAYRObG/A4A+jIIEhiF2rq+f+GkVHWgD35lHD/1o/DFV8Rz2VTuSJgXM4jo5iOUGHwNLbvYvkx6Px65Al+CF3v8mSEh4K9qkHWuUn7EtQUyXMBjrBYMvQBCORgHIeUsPilOssQil5gHGQv5Cv9RE78QsueLUvOyrhvtV7cW6UShsNiR6yw0sRSCm8QDDdaCDmuMUk7nOiUFRdh/nGaHRneupNsQloun/rlgPVNucCWRZEmtqoFReaPcOT7lV+cSe3kz7/z2V3552IzcKXetukelN9fhPFbalmltABLIm5oiOabzdXZIG+8Iae4+nFJYa0B+OYJ/qaPui6sQuJZNzb2s/sDDq4yAvj9bIdSAJm01BDQghKnc4ZrxSILBFgYL+aMv/ijA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(366004)(396003)(136003)(346002)(39850400004)(451199021)(31686004)(26005)(6506007)(186003)(36916002)(53546011)(6512007)(4744005)(6486002)(86362001)(31696002)(36756003)(4326008)(316002)(5660300002)(41300700001)(8676002)(8936002)(66946007)(6916009)(66476007)(66556008)(2906002)(2616005)(38100700002)(44832011)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?MTZEK1JCVFN6TG03NGJXV1R6WkVkWGVZN1ZFS3EzWWIyQkJGNGI1RkVJMmRh?=
 =?utf-8?B?M3M0UDM4RFdKK0VRS1pTRDg1MFdPRytrRTlPQXk2STN2VTB3aDcyZ29sTHZh?=
 =?utf-8?B?azlEUTR4RnQvdm03U1ZtRy93U1QyQXFmUnRBeHFHR1hRbEFvVnRqdTg0amNM?=
 =?utf-8?B?UFhHVFFvdVQxUVdlckJIQTErNmN3MmJsd281Z2ZPNjhZMEFldGIzcmxXVjBy?=
 =?utf-8?B?czZmNDFGSHFvYzVCWWdoMDlkSTRQZi9id2FRQWtNeS9vY1FhRkE5ZG4zRkZQ?=
 =?utf-8?B?OWtDWU1Wd2I4bmdRczYzSFFqMXpKVkczOE02enNkTW5pazlZWmZDcTNMYlQr?=
 =?utf-8?B?dzVmeVpxbjFhb1BiZTFWQkRxTmlZOENqbVlqN0ZVU1h3ZHB3UTR3QStWMGxl?=
 =?utf-8?B?L1ppUERld2xUUUFtWHhCUUJIT1BaZzlOQitLUVA0aTFTMGNRSzFkZ01ncjFw?=
 =?utf-8?B?UDFRdUw3WGNzWGQ2dUlHalFSSU1JYnJjdGZrUGFNUVR2OHZGRVlsOGU3dFJU?=
 =?utf-8?B?bjFVSERkbU1PMkc4dGVvYkw1SUhYS3pSSlJJMVFvekFvcnlWTXMyc2xzdTVh?=
 =?utf-8?B?bjh3YUcva1BzM0hlM2Jmb3hGM21BNDZLOHNGaUVBOEdCQnQ2OXJlNGZON2c3?=
 =?utf-8?B?L1FHZi9YL0ZyYUw0QWZEWnczWWtOUkU0SUh5UzhBZGZCeUE3SllsN0JNVDRv?=
 =?utf-8?B?L2ZmZnVwZXJQVnYwNHpmUUJiRzNRVE5FVFMrZnRNK1RJQnl1SS9KVHlKY2V4?=
 =?utf-8?B?ZU5CMWlvS2N6b2NKbC9PVFIwNTZYSkZ4WE10L3FGUDNaQmJocS9welk0cURU?=
 =?utf-8?B?QlkreHpmUEVSUnZ1dkRGUG5kNTFzN2FtdGUyakRtc2s3U29XQ25lR2k3UFVJ?=
 =?utf-8?B?MFZjUjhRV0FYak91dzFTeXFmemhhUHV0Wm9vUG1Pcm5OWXVOcGh0WjRYTnZR?=
 =?utf-8?B?c3BBUHNZVzMrL0kvTW5sR2RGN1BSRzVyeTdIanVzNy84NERVNlB4c3I2cDVk?=
 =?utf-8?B?Um41ZjhXdFJxdU95MzUzbER2bUZCUmcwUlNYSHlFV0NOeFlnL2NkcmhJTXlJ?=
 =?utf-8?B?NUdIaDY1U1RQOW1zb3dlcXVvQ0dNOHo5aW5mUFhMeUNPRElVMmkrVzl5LzJQ?=
 =?utf-8?B?bDJ3bkREbEE1U2pGMGtraHY0ZEV3ZkVNbTc1cGxGcnhoSzhSMitLMEx2QnEz?=
 =?utf-8?B?QUdzTnRWM3BBV2pBVEpjbnRLM0RMRTJiaWUrQlJMQXhQeHVYbXdRa0tyUHl1?=
 =?utf-8?B?RG5yMXU4STNjb2w2b01uYU9OK0xwNmlncjFtVjVzdDBFT0FFWVlZL1NYVmxp?=
 =?utf-8?B?Q2g1dk5vQkhEcU42WExXM2dPUS92TzVFZjlaSXNtL1ZyZVNtL0IrN3V1aDZN?=
 =?utf-8?B?WjZGY082RXY5UXNrNFZiTmRma1FVUFlITHRCNEdDa2VFSDYwQzRZbUhoU004?=
 =?utf-8?B?N1ErUkxNaWFVNVNHTTlCQU40L3hKdmpQVUFYaW5GSGhwWit3NDBDNGFkdWtV?=
 =?utf-8?B?TE5xcENVVmZCd2h1WFp5SDlZN0xBNVZDNHc5RUpOaEpFNGZXNStKeDZJV1dt?=
 =?utf-8?B?ZjZBeWlCNG1iT2FDejRmandhMGtEYWhpY3B5U2UvRDFIVHhSZERnOURxWC94?=
 =?utf-8?B?Sk1QZjB4S1o3cFF2OGIraDgxdTNvcGRuVGduclZQdUU5ZWVHUVcrMWtlVFR6?=
 =?utf-8?B?MDRxQStmSzVlaVVnakhXSkJGaEtiSFZGV2hMQzRiUENPY0dUMVlqVGxMRUpH?=
 =?utf-8?B?K29SM29KaVYyanZ3MktnNVdVWHFWcWhLNEZiOWJSSm1NVE5RSXQzMm5LRys2?=
 =?utf-8?B?MktFVWY0V2U1NlFET3M5ckRZRlBJVWVldm5MMnlEYVBoWTFab0VmUnNwL1pY?=
 =?utf-8?B?NWZ2cEQvUG92VjlhL1U0OVBpblpNb2dBZEgvZWN3aXNKelYyb3M1NVhMWFlO?=
 =?utf-8?B?TzRBQmRDYzZEQzgzNjFQZUkyOU5FWENSZzlOMU9uZVhodkNJa1I5eW9wVXdB?=
 =?utf-8?B?ZkNTTnNSVVhvWVhQb2k3RGlSb3RqdE9NWFZIL2pWdXhubGJLWUxiLzhLMllM?=
 =?utf-8?B?QWV2d0tOeFVSQnl6eXVXWkh0MGpDdXk0d1JGKysyOEExb3lWcC9EMXVNNDZo?=
 =?utf-8?B?MjNlaHQ2bjY2T0V3ZDg0OWJjVTlIMlZqUUQvaDgraCtjWisvaU5TalBCVFFk?=
 =?utf-8?B?b1E9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: fd1390e3-27ff-4cb5-231e-08db40bf5e42
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 10:18:06.9157
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gjTmU0H0baaZFp5xCe0Yuv0xPNopLUxTdAGu8BbvLzwBR88AGlkenlPbpzxfae8uXNEMrNFlum0Qh9OK3LLnRfzp7JpHyXeJAx4yPpWo44c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_031813_107431_A6ED5205 
X-CRM114-Status: UNSURE (   8.88  )
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

Hi Doug,

On 4/19/23 07:47, Doug Brewer wrote:
> [...]
>>>>>>> On 4/13/23 07:55, Doug Brewer wrote:
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> I tested Linux kernel 6.3-rc6 on my rk3568 evaluation board, it seems there
>>>>>>>> are problems with Ethernet, PCIe and usb devices.

PCIe is addressed in a separate thread. As to USB, everything in the log
seems to be normal -- at least the root hubs should show up in lsusb.
Please add the output of lsusb for the sake of completeness.
>>>>>>>> First, NICs doesn't work.
> [...]
>>>>>>>> mdio_bus stmmac-1: MDIO device at address 0 is missing.
Can you try setting CONFIG_REALTEK_PHY=m to CONFIG_REALTEK_PHY=y in your
config?

> [...]
Best regards,
Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
