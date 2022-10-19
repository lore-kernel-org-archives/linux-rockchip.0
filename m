Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88BC7C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Oct 2022 16:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PC1IQDV7UZJSZJ7knR6oVt8qp7AzfikFXoeCdPcr9aw=; b=JwX0FeSTTKAwFnxRjM5oCe9U6C
	p55uzG/8SxmkPiaDEbzEdN0DoUGHMjrkP+CxtmPpB5m09VAIzbju/J4gq0UkBgrCaLmDypxF9yzHt
	93+vy9wp8BaBGiCuCjrlfoTgbbe63Tbr3yq4BVIacUN2gFSTdUQahCnqKy/0JfBkm2xQgY+D824Y0
	6SiBmh7Yf2wdloezzrA3Wu1Yx+/zZfDjDHfTB00PfDAR49eh6CIgK555vx8907YINkryuAzSDtUHE
	WBLRsUpRXdpnzhbwB1UjIS3VB6o9dXXxtd7XtHIfVf7cuXFon6+N+VPeTRkhb+aciP9cYp37K5Qj4
	9Rs7o9Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olBeE-003lLl-E6; Wed, 19 Oct 2022 16:10:26 +0000
Received: from mail-eopbgr70077.outbound.protection.outlook.com ([40.107.7.77] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olBUD-003cBP-Jg; Wed, 19 Oct 2022 16:00:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S397E/k8qqULoXtRlWCHdBSFZ//JdLOYx3cgJpBQ7xb9gW3ASJz9B1fIrPp1uVfSotLJMGmBYdtkn6I6URiR+Maii/sLBjMWjJvRuqBL92IggYc9G9DyVMzUnorQebR3OM1DrVOs+dyR5AlmWhEYv30uHctY534nvsssruTX1yCnOIkgJ3SFdjjM1v/Agze9HCH/h21nvHSaP2w+30eG1f3dnzetJBnOr/9/JM0S9/JRZ7EGyNyKJyghBxOEdY0KIH2mZIKCkCi3rPgO6V4AEuK9PT7R2Nt+mEA9wySA2szE4XT7q3Omzi8e65vHw2DqNjAXJJ7Xd5ofFKHVQFelwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EXdGnWlg5yN6K0X2iVjMGSgaxcHlqiOz5hDmXVZj/oQ=;
 b=JbGwFKCeSsrVka0IPK4pCXnorpQcR8oHaT1Q3qVNXPg1sNcYsxaA1EV4wUezp0dppVOF+a0xmsFOgIGlsi3q5uxdTVIEmZY7zjREug6CMokKLucKjdXmrjhJuRBfM1iMpx/FUi7fbIGuO5rzsEZfK+JVWjs2okIYX1FudUtzpsqDvc+ohB+rL52D8oTgj7+9iGJCQVvUqpDWstU3Wt43XQF/1mwq4jxoROV/p3ZjYuV+3DMsGZxJzR1odLmyxXzOm3kyASyGoVBHddoAqPi/29Pwj/+wbLGb4J6WrwLvJedsNV8Q4fpYg+GA6adilSezilkbDl+O4PDVNTb42hk4ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EXdGnWlg5yN6K0X2iVjMGSgaxcHlqiOz5hDmXVZj/oQ=;
 b=Y7hNSg3nzuPbvb59tkUduY0yyjhB/+lC5SOqcmdvwm9ZnIRxfNFJF8/lgZE5f3SdL8N3OWuaRqYEoTqkK8pwiZEir0QbqsaY4aYmqQOO7EXyPLsUTQm9P7jDCRGJzFW44S17H77gXiWTk/7H1jvNZiXTSJKSBHxwdH6811H+bkHrkrYvjGmmzAdpjD3TG2IpG0LEonrN/oiJ7PJaPnYjAJYUzKyDB4p4L6xXeG2eQYwCQnJqRGbbkOHNb33h52xru9+zwJ5WdMkUsKqpFMXLuKhJD1WuXOl1wjrHJKUtRV1XKpBaG01mvWqIXnrD286HAg3QPJiJiqROgqI+1nuL/g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB9045.eurprd04.prod.outlook.com (2603:10a6:20b:440::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Wed, 19 Oct
 2022 15:59:56 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5723.034; Wed, 19 Oct 2022
 15:59:56 +0000
Message-ID: <52349f5d-661f-3e38-9745-01a84ddf820f@theobroma-systems.com>
Date: Wed, 19 Oct 2022 17:59:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From: quentin.schulz@theobroma-systems.com
To: Greg KH <gregkh@linuxfoundation.org>,
 Quentin Schulz <foss+kernel@0leil.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: lower rk3399-puma-haikou SD
 controller clock frequency
References: <20221019-upstream-puma-sd-40mhz-v1-0-754a76421518@theobroma-systems.com>
 <Y1AQHqm+cOmrrveJ@kroah.com>
In-Reply-To: <Y1AQHqm+cOmrrveJ@kroah.com>
X-ClientProxiedBy: AS9PR06CA0724.eurprd06.prod.outlook.com
 (2603:10a6:20b:487::12) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB9045:EE_
X-MS-Office365-Filtering-Correlation-Id: 60cfbaa7-3705-4a9b-32d0-08dab1eaf789
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	nCpxX49VX/zPEFU2U+n/Fi92U7VX1fbxhqPCo8AzbO5zBNi2LJnQAKb3t0yPiGcue1DgDM8Wv7nX282o4xFesvlkykk2IgMuPW5ui4J5XbYybWjvvAQOjD0rWFrnaf+dD4bEFWkB7Rv1dQtMpaTppDPKpFdeGi6HYJ2YYj0TFlSLly/6VnYxYBxEA/lJOkBUkvB+AQwBKNatuA+g9ZPsOxbkytcJKsjrxXgH+jPUtDxvVFlXhDVSGB0h0PV+vny0ScCcPva03qe9HEwk67nXGlOaYUkythmqmGWs7+0AZu+ZS61Bmn5Yuhhx7CeEX+H8pdqxbM3ypPTLB9sjSlEteMlrps+30T40f7oT5wp8JonweL79kls/MMf6nV4MwhVMVQ+xPAMp3htUAMhwSVt40bwXqMrd4QmoO7pslWU5fuv61yywb4pXli8VFGlRzJP9VdSY810f0qBq5L/o+q585+gdClOftmzfNFSc6XUf8DfxCMtVETqTC5QRq8oadE5wJwTAdR7TODrQ9Es9hVgjNn1KHOBfCMCuQ5+gXV9lFMXcQkPeSEpu5qPtk35pvg745yCdmirHbbsuwNXl8dJy7BKYDhuY/dkaXy5/C5fjghrzX2fI34yn5XOjj2esxYZ/s010TlVx1Wu2yaZGzPgo4/ikv4VaTmZpT3PW8t24SeiClScRA7pwh+AiXVgv+mzWmeF9esFG4z7XVFbEhhWo8xabR5JZAhdOdthSNYnOFEO7BGYQpyARe1j+As2pizUnR/djW790QzHI+NmCyymhjw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39850400004)(136003)(366004)(376002)(396003)(346002)(451199015)(6486002)(921005)(316002)(478600001)(4744005)(110136005)(31686004)(7416002)(66476007)(8676002)(66556008)(26005)(66946007)(6512007)(5660300002)(36756003)(41300700001)(6506007)(53546011)(9686003)(2906002)(8936002)(86362001)(186003)(2616005)(38100700002)(31696002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?WWtETHJaNFBpa2poOUZyekErdmUyRXROc1NyNHRWNzc3dG9vN2RBRUtqcnhI?=
 =?utf-8?B?UlFFVlp5aHR0eC9DYlQ2VmJTck1ZQjZINGZsUmpOWUVZdDlEL3hSZExqcVJF?=
 =?utf-8?B?eDJkZDNQTThISjVRRWhodStoTTZyR1dOd1Ard0RKRU0xcTlXOTBGK3piME5J?=
 =?utf-8?B?cXFnbGFWelBsd0pzQjhGeFhSUkhSa1NFcDhSYmZTc2Q0VGRJSWhUT21tQkgy?=
 =?utf-8?B?TmxOOUkyT2hMUXUrVUVjWHBpc0dxMSsxQjZLTkhBVkRzNXQ4UmN0ZXo0a2dS?=
 =?utf-8?B?bExQMmZDZ25tYml3UzRud1lpdzBiSUVGWkc0ckRwTWlxSENSL0JnWUhBNjRH?=
 =?utf-8?B?SjRMRkUrVXZsNktkOWpsV0hwdlQxYjBuTHFvZjRMOWh5QUc5MGpCZXZzc25P?=
 =?utf-8?B?V3hjYkN2U1BkUUNxamhoNm1CZ2F6QzdtTTdrVWJCWWtMTzR0MEVLUWR4VkRn?=
 =?utf-8?B?blFibDAxYzVCMThNRjVoMW5zUi9TUE0vb2x3bWVWWEtmNGxmSGhMTzRsbTJ4?=
 =?utf-8?B?N2loRlAvS1lBdnh5b1Q4bkxwY0lGYjdnVWNuMm1OSndqeEdaQ1IwWG9WRENo?=
 =?utf-8?B?cG5HS3UrSkZqMnZTRld3QlVzTTlVVWp5N0hmdUFnYW5iZStJVXBGQ3h4K0Fv?=
 =?utf-8?B?N0tBU2xxRkxzZTVXbzFuN0NzcG1pUHNxL3FEaFVqMHZrRFVTUHVyWGd3RXpm?=
 =?utf-8?B?NjVQQ1VQc1d5ODk1eEozZGdvT1J6MVVUWStXVVdqclZsUUgrOWxuOVFSYWVs?=
 =?utf-8?B?c29LUnlZNHBxNmVaTUQwVEFiQ3k3dHl5Q1huc3JtNFNuVnB2eGx6aENOQStF?=
 =?utf-8?B?UWtIZUllVHJJSkk3czVhSlVITDZsTWhIeGM5YXVHa2VEL3IrUE95bVEvYUF2?=
 =?utf-8?B?SnQwREFyTWVrand1dVp5S0xRRDFPR0x4Q1RlcmlUMHZTUjJGa0MrTy9GVTVZ?=
 =?utf-8?B?SkozVDR0bnIxMS84MGMxcnFCcmh5aVF6L25JamlHaUc4Nk5tN1l4MG1kTWdw?=
 =?utf-8?B?VUNPTHVFc3orak5McUxtNnMyblplOHlkQ3ZCcS9DZW9CMi83bnBsNXhEbkoz?=
 =?utf-8?B?RFJiZEpQQmYzNFVoU1hpd1ZBYmpPU095ZlZjVVFscWJoWUZDWHRJK2dmQ0lD?=
 =?utf-8?B?WHpLQnRXaG1OTWY4OVFFM1lRUnE1Ym11QVhuTktSS3d4Y29MTTl6OUFxSy9P?=
 =?utf-8?B?WlYxampvOE8wR0VEYjlHZnNyb3liRVJjdG5ka2dEa3JyQmFCRFJTbWdjQXYx?=
 =?utf-8?B?UzFwS054RnZIa2xIcGk3dXNVZWRBRDc1OXU5SUxBSmFSY05sUTJFWC9vZjgr?=
 =?utf-8?B?dVAybGxsMVo3MVl4MlA1N2kzRzVSVUc0ejJtM3RrdmM1cU1vdm0veUhGdlJ6?=
 =?utf-8?B?UDJpVExRc0ZOZTV5cjhJT2NOMmNUN1hhYzBPbWdvUTY1bVhnaXdwT2pSWm1u?=
 =?utf-8?B?WkZlV1F3Uzl4RjcrSi9INmlpaE1PMzgvN0h5dTZ1L3V4aldLcUNSN3VTYVRk?=
 =?utf-8?B?bVFJbGdBSnlQU1ZKTXZrbVdMT0VFdG9TaUxidTlVSXJKTEozSktmMFRmS2pY?=
 =?utf-8?B?RmVHNWptL3EvTG1lRVRGOU5PRFdSVGtMLzlGMERLTTYvQkhiWUk3UGM3TGFw?=
 =?utf-8?B?YUdlSnAxTUI5KzlleE1waXN6Ui96eDVLTEt6U1RlRkZoTVpTRmRjVktvR1dn?=
 =?utf-8?B?SnE1TWVjTjF6S1dMbUUrelF4WEhlWWpmWWNNaERhYStzNHhOazdVZ2NRcmVx?=
 =?utf-8?B?a0VEZ1B4b0ZhM0xDTGNmMExsZkJWM1FEN3pabGlFUGNNak1iaXBGcEthN3gx?=
 =?utf-8?B?R0thSnlSZGF2Z2N6TSthVm9EVEZkRHFLbHdQcDNqcFV0MkM4eFBGaE8vL0dl?=
 =?utf-8?B?OHh1UjFYZ1VCTXFPL3VKL3BBWkhRWFp5UjVWR1RxY1UzbWE1YnhKWWU5b04v?=
 =?utf-8?B?MFlITktQZi9vc2hXNFY0L0RNWC9Dc3c3NjEwWVg3aUJmSUkzL04yNW0xNHAz?=
 =?utf-8?B?SThnYlRFZkpHSXUvM3dwMThUNFRSM21hb0xJRjVCZnBaMjhwRjI0QmNsRlJK?=
 =?utf-8?B?TG43UFZHb0VCLzR0TWNUc0M5bUZJY2lGZU1la1pDSWpqWFFlb2RQak1WYlRl?=
 =?utf-8?B?OVZGcWkrQlFjV2dzaEsxVVdwOXIrZHQrdElPK2Vhd245ZXRWWnh0dkdNWXVS?=
 =?utf-8?Q?PsmClaA26tDO12tuBMZjXjM=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60cfbaa7-3705-4a9b-32d0-08dab1eaf789
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2022 15:59:56.0711
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EeRn9kYhSjAZc2SZeo6rR9lG9hqE5QJndGs8obLqxCl7X1V86hAPlAHIZTvxDLaig77cOjhm4iV3LM39EJxPfwOiTClcu9YgIcF/a8krFfkpm6dYoEvUAD/fSsaBSqc9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_090006_054939_67AC9AE2 
X-CRM114-Status: GOOD (  15.00  )
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

Hi Greg,

On 10/19/22 4:56 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Oct 19, 2022 at 04:27:27PM +0200, Quentin Schulz wrote:
> > From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> >
> > From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
> 
> You can not have 2 authors :(
> 

That's a bug in b4 and my patch submission/mail sending workflow, I'll sort something out with the b4 community and send a new version of the patch soon. Thanks for the heads up!

[...]

> It has to be accepted before you are done :)
> 

A "small" detail :)

Cheers,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
