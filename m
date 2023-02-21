Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA7B5C636D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Feb 2023 23:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hzPyb5gus3/3/OYm4VC6ygM+Jn++bshFM/UTjLaBpgk=; b=bvExptzkzbEKvBDUU9RIeFhb/S
	JB/heU8myKREsNRfBFBuCHJDJMqJ4P1QSOkz22yYuOEfYhVHIhBs6GznVk5XbVv0gX+lTpXIQelqt
	rYYULVgTAeH5UUgt85IEPaCpPgB033A4mNAKYK3z/v5N/qwHQr58sNPXRtKb0QESj07FAXEBJsdfD
	AZmCShI3gXjvxttn9X3nAEBgH5bq/BdEYhpuiOze2UroGYGXccV97flv7FocwwvGVfG7nWoWh0JUQ
	/culZLIn1HHghFtU78OwjvHUMX6GKfSQyZpuKZmu5YYyeqIzGVtwe/4H+WtU4L+iE0ibiCXQEQ7kc
	VyQfnFGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUcEf-00A8q3-3f; Tue, 21 Feb 2023 23:39:49 +0000
Received: from mail-ve1eur01on0621.outbound.protection.outlook.com ([2a01:111:f400:fe1f::621] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUcEb-00A8os-Bm; Tue, 21 Feb 2023 23:39:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QdB2Mv0t9H0sDBGHwqgRXpQ30sFo4dg4mlCGnB0vR2Jb6Gfhtp48NI6NEar70UDaFsZcc4TADLgjVH7pa36sM19/X1d1dLEcVaSKJhY5RVexdb2rTc0Lw6vbd+yTxBeeeC+X9qS+PHlAxv1Sp4X8Nlu+6OV4jY25jq4rwVVAay5ZM8VXCVBTsY+5xQA11/d5CJFcFIes/g1dZGlFQa79l5TdE81Q4zK0HD3Ju8CTJ1kQEX1L5+xx0dA2sYE9DRWWtIxYRKdxPto3LcbZt/u0jJYSnQtHxwQRcE8LCWZo6EVeNexNf3RQJN8wZChI5ZRgulnLBP53K8IMq8iqlQqqGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2t7xbNj1VdILgxeh+ZXSUeaTAcEhKRQidSUbx/uht/A=;
 b=FaB2V2Hylzp9DaeA4Dbf6Icd61QklT3RPc6N6epOQrIQW64N3n9l3mFA4sWl0zyGf9yL//uzwaEYYMoZMnspkblpv04ZD9ZMb5NTjVq+/sjNcjd1bikZ7K2TdFmPqq9H5MvH28hac3TAMdyQdnq/U9JBl4nB9N8e5Khu4fUfiRsAcC46D8laxYAreKbM0588Ui3DJj3viGwW6Rqp1uj4EqfOZb56GsqF7qcTlQFy5wPoTjOGyWhbsejl9q5m2KMs3UOWNhkFocoVBSNLm5q7zPT95VsW2NgmZMSpPexRl4nsFOf/W9IsGOecmPHrVBq/+vUEfpyETSw6EtJ+AQVmvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2t7xbNj1VdILgxeh+ZXSUeaTAcEhKRQidSUbx/uht/A=;
 b=YQeSIxeSlTYFJ08jurN8NGRr19B5NsCRTy+F6kQI4MzJQGdPwYqU90AiutqhZg/4UwGeSJjnx2R8aV+2m3ZmBuF7SPee5zaWGS6M8imV0gdcokKsC7979eiGwQlZI5+NT+IfEmRY2snO0wP3ySCjjXzKR1EbMeAPcUo+tditpxBuuzUeno7gEkjB8OqbGxyT+ydDJ5YPeR87GwMI+eR6yZ0ibVxAZ7bcLaImoJWuldOM7HIxA6CVn2aKLEyZM6XFhjoZdCibaN5EnWi2bdgZLCxApRaJKWp0O7alO82D1jGq473HE4wZAl6hFKCYmSW20YvxGKqLEbQTAlaVCh++YA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com (2603:10a6:20b:348::19)
 by AM9PR04MB7713.eurprd04.prod.outlook.com (2603:10a6:20b:2d4::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Tue, 21 Feb
 2023 23:39:41 +0000
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::7bca:4b0c:401e:e1bb]) by AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::7bca:4b0c:401e:e1bb%3]) with mapi id 15.20.6111.021; Tue, 21 Feb 2023
 23:39:41 +0000
Message-ID: <b5953c8e-1796-2ce2-9a63-7dc06ec83f3d@suse.com>
Date: Wed, 22 Feb 2023 07:39:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, lucas.tanure@collabora.com
References: <cover.1675498628.git.wqu@suse.com>
 <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
 <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com>
 <7A70CB52-1892-4455-B419-AD00298DE7B5@gmail.com>
 <CAMdYzYovDsiw5zwMvPbLaVcfpryX6K7r2zuVUVkAtYxiwzKGUQ@mail.gmail.com>
 <20230221214517.5rjtwpftcj5dugdl@mercury.elektranox.org>
From: Qu Wenruo <wqu@suse.com>
In-Reply-To: <20230221214517.5rjtwpftcj5dugdl@mercury.elektranox.org>
X-ClientProxiedBy: MN2PR01CA0051.prod.exchangelabs.com (2603:10b6:208:23f::20)
 To AS8PR04MB8465.eurprd04.prod.outlook.com (2603:10a6:20b:348::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8465:EE_|AM9PR04MB7713:EE_
X-MS-Office365-Filtering-Correlation-Id: e0ccdbb1-02fa-4de6-d5ef-08db1464e757
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	+eGkaTsh4zd71Hfn80x0gMWI8v3WnbGlMj5REJFg6cfo/wOR6aeGJM325tdZ5NjogMlhUYI9rlxKN2m1fVLn73Vo3XP/DBn5UidSEWhRBAp/q8gXaIw+OKofb/3yMd9dzMh1ghszSkvYJ5ORstrAIL6tYb4Eri4acFam7a9aBg5nEB/2aWK5Zu04OyYbyBF0ym3+Lfw2/D+h8ppcihk8Q46UrpUS5wenDYFPfnFSFBMkP+ucSOgg9iqqvTAE2DNIFOcCye+ilM47itzJ50DqMP8uUyhUdvhVqxo+GtcKX7yuXUnKSuJvFwoXmDQUmZhHTs/7DRP5xtnzA8dVJDiiR1z1Ac6rus5L5sX9gI5v102a12gwC96eHuDaSqUzicm0+MBGQos0+S4tuoJcqd3HcMulCUjBucuJOWwpBayjzU8ztPk9LwDo0rGVNuddd3T7RTk2ZlRtopaZpXcJrwOGivw+wUSq47gRKK4DJr1mwMlQL1NY4kNOhcIOqW4X1boYvdTdrHIgi4T6mCCT0lDD+x1Htr8opHgRbG6XOuzNRJB0U/jlIKlE3q2CMfPVN4i0n7AQ/Y8UYDyZ8Rxmdg50PfW/deuwKI5zpBRP1MH6sQB5T09ohjVLpzCLOPUx0AFWFJABmSb0kA29iGH8/bkLP+TkaT2rrXEyJM2dokz1KvoBcBbGBVDIA8gOvLbDX7rU9e9n0tEph05dB4CC5/G0eUQO6M73P/fJNOmYQKMwT19Bx0/ZBeilFsOYrwv44Nqp4kKEy+1qfJJJe5V/4DpLexX4uIpRZqQyV2RVQdS+NIU=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8465.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(376002)(366004)(396003)(39860400002)(136003)(451199018)(83380400001)(31686004)(966005)(6486002)(2906002)(2616005)(66899018)(478600001)(38100700002)(5660300002)(110136005)(53546011)(66476007)(186003)(8676002)(8936002)(4326008)(316002)(54906003)(6506007)(6666004)(66946007)(6512007)(31696002)(66556008)(41300700001)(86362001)(36756003)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?dXVncVFzcEFVYWxtSU5MOXF1NCsxZG9XdHdiUDI0Z0V2SzRuOEFNQmgyUUtN?=
 =?utf-8?B?WGxXVjUzMGh4VCtPM2p5M241Vmp2Y2tRUnpyTDV4ZWxFbTVmN3MwOGthMXhn?=
 =?utf-8?B?UVdBR2RyMFRmZFhmaWIrUjJocjkwZitocFc2cXF2VmhjZnFpTEsyQmhmOHJa?=
 =?utf-8?B?ekozR2dCSkxZMWdSMjRNcCthWEpiZkd0WXZYNDNvYzRYUzN0aDFNcjYzWHdp?=
 =?utf-8?B?YklZZVJPb2wyR0VuY1hNQ2tlZExiS05MSU5BRGhFMHBmNmE1QitOM3FtMlFH?=
 =?utf-8?B?WGVZMTNjanFTTzJJOUVpU2dRQkdTQnVnYk0yYlVYS21FRjNGRVF5ZDhnRFZH?=
 =?utf-8?B?UUNYZGdudU84d25hdnVvVC90cmVadXNWTnU4ckM1V0padERtRkRFSWtSTm13?=
 =?utf-8?B?dnF3QVQwT3pmWFVmVDZZeERNSHBNQzc2bm5kYmRQTzY3RjY3V2t0TThobklM?=
 =?utf-8?B?aVRFUmJhb0Z4bGQ5WGFBTE9KMkR4cTZKaTczaEZCSjVuMWJCRzBCcC9QbnRh?=
 =?utf-8?B?Z3g4ZktGYWpOTnVNclRVZ1h1anlDdWhva3ova2g3VzVqVzM4YUU4dGlZUE9l?=
 =?utf-8?B?Rm0zQkM1Z3YyVUdmcVJ6ejl4VzV6ZEtHM29abjVNUkZiTjREUXlVUE5DcVdS?=
 =?utf-8?B?QW8rVWNXWHBxeWRHWWcxUlhRcUxIaWJUcGRvRjVoTmtsbkRocDQ3bGFqT0xo?=
 =?utf-8?B?cjBGQnNMRE1Zell5a0V5SXNscmUwVnlxL3FZSTl6cDlMS3VJTFZhWk9ZS2xl?=
 =?utf-8?B?Z2RUQjB0eFNUY1c0bWJocENEbUJUODFTTkNkNHA2VzBPeUhZWE9TU2NySDRo?=
 =?utf-8?B?Z1BQalMwcXI1eWhxeENrTXFjK3o0NHJXYnVlUzJwNnQ0TTNlMk9YdjRySTFW?=
 =?utf-8?B?eU5Sb3BsVXNwV29ZemwyYlRQVDlGRkYydHl3ZkQrb2JEK0p6NlJmY1B1RDhu?=
 =?utf-8?B?Z3JrV1hRR20yZUZRVzBJc2EvMGIvK3htVEFweGh1akJVSk13UUkvQUYzQnJJ?=
 =?utf-8?B?NnJ2Q1hnWXQ5Uy9wajlGUFFLZTFiOXI2VW9XT1ByalVyTTh6NUQvemdzdTd5?=
 =?utf-8?B?WXhKMS9VV1pUOU03ZlArK2FPQ1ZwQ2FYbElwTGFVU2EwNmU1cEFyWUwyLzBz?=
 =?utf-8?B?WmNCV2lCcldUVXAzOW56c0NmZHNheTJPQ1BBNUl6V3VTcEFmS2xwd08xWFh5?=
 =?utf-8?B?NFdsT1ZHVHFHTDFPQUx3b2M4anFZYUgzNDNQcTlGek1DNFAyNFNPb1kybW1u?=
 =?utf-8?B?TDBCK3N0d2lEekxxc0RwYjZsTmhraWVhVVlwQmNsdFU1UndyOUp1UUJXb0hO?=
 =?utf-8?B?dkg0eS9xOWdEcGhoV09ETXU1cm9hS2JPNFQzcU1TT3F1RVBZdEZsVFZCTDNm?=
 =?utf-8?B?eGJjNTFtRlRvWnVpMFh3em00YzlDM2dkK2RTZTdCSDQ1WWg2UzlZQlBzN1Z4?=
 =?utf-8?B?RGhWMVB4OWN5c1lkemFZUFlBb2Naa1JnMWdCV3J2RlIwVEVVOGxQamdPNnJU?=
 =?utf-8?B?Ylh1bmVFRmJKc3lKTktCanZQNXpmT2hHQkM2YWxhZlRDWTRuOFZ4MCtrdlJ3?=
 =?utf-8?B?MXJ0bE9xK1o5TFhTaG5LUWV4U0M1ZERSa1FveWdjbWNGYWgyb0xyTk9xNENW?=
 =?utf-8?B?N1d1d3JvUDhjZ2MyeTB1emVpeDFSWUFXQUcyL2QxRFczU05qUDZmbEVrd3Ix?=
 =?utf-8?B?aGVHaVMyRGxEbXpVaFJIcTg3d2JvRm9UeHpUQ1hvVkRac3dlTXpTZzhrTnVE?=
 =?utf-8?B?Q2xKTjdqejlmVk9CTFB0VVlQUERyOENCeUdIcmkxdk93OGVqc2tJYVhYU0lN?=
 =?utf-8?B?Qi9XSUZKVU04c3QyYlBGNXNzTXRLK1VPcTk4QjNLMERIZmNqbFc3MDM3NHha?=
 =?utf-8?B?aVJHSXEyVDhNdEVGUVpSMFdPdEI1L0luZE1JL2J6QmhibXJkUWg3MCt6UE1w?=
 =?utf-8?B?aWtldTNyVnBhS2I5YklhMmcrclIyRmZaUU5JVW5zdU5JbTYyWlZsKzRXNzJV?=
 =?utf-8?B?OWNhR1djYWtiUTlQVm5MWTR1eXRad21FK0o1UHBYdUs4MytmODAwUCtDTndi?=
 =?utf-8?B?eHNJYnZSeFB4WFRyenFGL2ZKcDIxMWZiMWc5MkNKYmovQmJETkNBaFRuWDZC?=
 =?utf-8?B?YTNQQjkvdlI5c3pMSStUamxEK09meUJKcjk1M09mbHVjajJ6Y1BnbDgvOTV5?=
 =?utf-8?Q?Yviw5emSJlGdixl44odfiY0=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0ccdbb1-02fa-4de6-d5ef-08db1464e757
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8465.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2023 23:39:41.5197
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dtIZxDIbrxQyIhFJ7P5BHDpCjeZByTeczPMadScSH8gnFi2Gi/kC6iMDGZpCYk/f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7713
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_153945_667759_001ADD1C 
X-CRM114-Status: GOOD (  28.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 2023/2/22 05:45, Sebastian Reichel wrote:
> Hi everyone,
> 
[...]
>>
>> If the phy is misconfigured, not powered, or the clocks aren't going
>> active, you'll hang when the controller tries to touch it. Unless
>> someone has completed the combophy rk3588 bits the driver is not
>> functional yet for rk3588.
>>
>> Looking at the current 6.2 release, I only see the rk3568 compatible,
>> so you'll need to add support for rk3588 before it will work.
>>
>> Very Respectfully,
>> Peter Geis
> 
> Sorry for being late to the game. Life is busy right now :)

Welcome back!

> 
> I haven't looked into PCIe myself so far, but some of my colleagues
> are looking into native network support on Rock 5B (and thus PCIe2
> controller).
> 
> Apart from the obvious (missing rk3588 support in the combophy driver),
> the clocks will need some work. The clock tree implementation I upstreamed
> is different from the downstream implementation. Downstream has some
> clocks that have two parent clocks using a hacked implementation
> that's obviously not upstreamable as is. The upstream implementation
> currently only describes the first parent. More details are in the
> following comment:

Thanks for the details!

No wonder why the combo phy doesn't work.

I tried checking the downstream driver, and can only find trivial 
differences between rk3588 and rk3568 naneng combo drivers.

But didn't notice the clock problems.

BTW, is there any docs on all the registers?
For the combo phy drivers, there are some registers only utilized by 
3588 but not 356x, thus docs on this would be very helpful.

Thanks,
Qu

> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/rockchip/clk-rk3588.c#n16
> 
> Back than I wrote that I do not understand the exact need (the TRM
> does not describe the clock tree unfortuantely), I found this
> explanation:
> 
> https://lore.kernel.org/dri-devel/20220309094139198367142@rock-chips.com/
> 
> To get the advanced blocks properly running upstream this needs a
> solution for this. Note that trying to access registers that are
> not clocked properly will result in a hang (as Peter already wrote).
> 
> Apart from that the power-domain controller might need some of the
> extra bits downstream has.
> 
> Last but not least the GIC controller is handled differently in
> downstream. For that following the workaround that has been used for
> rk356x should also work for rk3588.
> 
> TLDR: This is not trivial. It's really unfortunate, that the board
> is not just using the native ethernet :(
> 
> P.S.: We try to keep a rk3588 / Rock 5 status matrix maintained here:
> 
> https://gitlab.collabora.com/hardware-enablement/rockchip-3588/notes-for-rockchip-3588/-/blob/main/mainline-status.md
> 
> Greetings,
> 
> -- Sebastian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
