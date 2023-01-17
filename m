Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4427C6379F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 16:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2KYl+RHqOgFgmRzGVs7V+49+H8muGh8tuLrNtpNTgSs=; b=DDcv+B93AkrnN5ncanVWgEUtrm
	MY/t3b1dZcOk6x48l+fm6s0HVwilxNCWpNXbAk/tx2jfmlZDFPuB52aH/XlhqZWMm64rgvA7CiU4d
	KXolzsVueLKbWg5ZadwYxngTiR6HwJ8go9BFZu87+uH62psXJEW4xGdpd7O9WI1Pcf9P34m5d7sA+
	20Yd8Apj4saVLDlWU/lqNgY6eHyW63S3XIuaQRtoUuP0FAOaVrNNqbgw4AcNa0/gJ7rQUWE+gTLFg
	S1AkPJ85nFRCAas3QSrVMTRexZy2fRuuqi2fWAI8j1V3P87uK+4bjvImr7HrXvwWCM7KVk4urpOL9
	TVtzLmgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHoSx-00F0uc-AK; Tue, 17 Jan 2023 16:05:39 +0000
Received: from mail-vi1eur04on2041.outbound.protection.outlook.com ([40.107.8.41] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHoMd-00Eyt9-Dp
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 15:59:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gPsfeJRkm1N/5xJrp9ZwFKaBtbvUOyop01nZjiMKmQb4AAZMEksj2i3A2P02et8eTJMYidQ3jOxnzDJhZr7z+0RUNkNz3bAy3fFwaVufzGR2s2Vjmet7J2Y90g7BZnvxdorCOCMRWOoOYa4HtXn4QumGiAycSTkDkQKoJ761+LO9+jCWTc1QqC947Xlj7i3GJC4vBqe0MekJIDbpwE81Z032IVEyaCSgZSY6/Ddyzdytc10HJsKF8Xmpn9161asYajqvWPYOJQGBvrOlEhOSH8sJ5nw0YO7zfWPzBZuXZo8LJjgSDDUA9yZjXSNkanzJXKW6g4pPqNhK9OclU57Dyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HKPbvOxT5OdboBBHO9QPmRVPi8vJxm5Dn+Gt7wYWcZ8=;
 b=jRBVFY9I8/rLlgUl43MElJeimrzCSvP1/jBQOWW+Ci6+OPUSpFJpRSr3cIyYeQXrrimWfrpHhlnb0AuWephWeuA04iqHCnJQBz8+m5PB3rymVEx/0cxp8gQVbynhchDxGEjfoQbvm1L0N68Po881e9FHaPyBYV6Tz9iM5Bq4EfdvsRg7yoEIRc4djLCrCt8aw/tKF1t2Jy8f9NwK43Y5kY0JNDAMWCU164wymMHRXBrjhTP/8qhaQ6wq1MQKOm61X93c9YNowWfMKQ+qvW11maxv/n+WdS6iD5E+ANAgLCc6t7BvU10v2gA4G8wma1IojV0W3oN5E5e2QCbt2DL5tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HKPbvOxT5OdboBBHO9QPmRVPi8vJxm5Dn+Gt7wYWcZ8=;
 b=UK3D/lTz+I5Q9tyJW6dFwusYqZTYGos+4sblokdGz8Yu0/rL3VuPewV/3SvMKOLK1qFXDTlSdXaKrks7bkvhoXbhnfxLUfaPZoSXtXRv1TnX1JKVL4c1EsfGV89A3a0vx/EEs/fDTtQwOgJnsWn3DV8tSb2cCgd+CtvwmH2maM9jfp+C/fWVGM6o0jjjtLGfFBjX3LfJCKx2fpOy2iGrs2iBD5/ab6aXqW81xEZC7Dq6cwdpMRdj+Vq76nIoG/oTLNgHM7lsJRuyIXf7fo/QEZxjkjh6JLJEvmkhL/ZFqqRrtMY7zssO16LIn4gItIFjm7FtEt16DQF9HS6DKo7DWg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DU2PR04MB8983.eurprd04.prod.outlook.com (2603:10a6:10:2e2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 15:58:57 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd%4]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 15:58:57 +0000
Message-ID: <eada6801-bb15-0b0b-500a-cae55f0f29e8@theobroma-systems.com>
Date: Tue, 17 Jan 2023 16:58:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v1] arm: dts: rockchip: sync rk3066/rk3188 DT files from
 linux-next v6.2-rc4
To: John Keeping <john@metanate.com>, Johan Jonker <jbx6244@gmail.com>
Cc: kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@vrull.eu,
 u-boot@lists.denx.de, Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>
References: <48680512-0312-6342-ba0a-f2411463099a@gmail.com>
 <31883268-dedf-6e3c-8647-0b7955c1ff16@theobroma-systems.com>
 <a5943bfb-8d7b-6ed4-bbb4-0f018b921564@gmail.com> <Y8a8ywAzHaUQbQca@donbot>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <Y8a8ywAzHaUQbQca@donbot>
X-ClientProxiedBy: FR0P281CA0005.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::10) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DU2PR04MB8983:EE_
X-MS-Office365-Filtering-Correlation-Id: 02388089-913f-4d76-e308-08daf8a3bd66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	BjM3cyPO1Wv3BCZUXplZ41UOZvcS3q77GUDH/48TUVjHA2SxHDVOSD1atTVL82R6g/Kq1yePRQsGxJJVAQUXaw5qBXexEVNnYUMgevGVhchIKXQAfxRhjuxaqC0dRjcQQ4bl7ytNA4iBZNmReRBWjnZ22P9zalT+b42nQVcgbnPo/vkH4MIEDqc++XmxOJ7yBd8S/kqSDSJkScrDfOloco8eDUQGHwBHtJBffJ8aW+VUQja/UeJLA+wDP/o8P5K7Zxg3kpdKhy+JcKX7VlvfYEeghNfnInE3vS7AGMPfxE0yqeWrpnRNhWRuKE5HEo7L40RclkMhAvOgHtPzCfB5eJGxKCP28fIwJyL+gn61gX8hNvfZfVHpX7/LzKsjydrygaD7nISpUgHMjqb1o9gUQospNqi8bq1Nm0cUV60sRddISW8KqW7/yOn7dKQrJEve0qtb2vArv+7cbFfnHIHkqYt10+qRp4K/rPJIWR/dQ08HDHSSLaD4dYJEsc1k/o8FgA/SuncmcFMTJwkBE8+EtdsfHmgO/LwapTng2+wqtiE+idf7G4XUElDX2bGJf99ihDpRI9aSWCWojGVyFx9127YUkk41bKSGRxUGxbCuU1jCd0NiZy3keq1L1tnnNPpVjH/9IRSFAs7Wjsinz/rxg6NzmS2uUVxGeQ2WlcBcbOybqxLg7curS3wWSMbZUFFfB6EaFFajZQFD2PaYqA6jdjrADbtVXtyCmi9Kk7YdRc9WPE5VzFVHYe87E+TAAxFG
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(376002)(396003)(39850400004)(346002)(136003)(451199015)(31686004)(36756003)(38100700002)(86362001)(44832011)(8936002)(66556008)(66476007)(66946007)(31696002)(5660300002)(4326008)(2906002)(7416002)(8676002)(83380400001)(6486002)(966005)(54906003)(316002)(110136005)(6666004)(478600001)(41300700001)(2616005)(53546011)(26005)(6512007)(6506007)(186003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?NEJ6TjBlNUxrMlQ4bCt0YlpNVENvdGZMa0RyMGJHTlUrZGErdFcwS3RwNjNy?=
 =?utf-8?B?aHYyTWdzZWZjeWQ0V1VMUHJ5QUN5ckw4R1MwcGRtbDAvaU9iU2E5NHpyS3gy?=
 =?utf-8?B?ZXZNZlZEUlloeTRETzhpYkV5SlNZREZ4a0YvQmVuOGV1WlNzb2xhUzJZRGEz?=
 =?utf-8?B?aHZrWnhwaEJydmwwTHlmb2ZwbzF2UGNQamNYQXVBVUE1bHFUVTJLeEpWNk5C?=
 =?utf-8?B?NGYwUmpTTHczdWRlMEgyN2xORk44UGxPQ3VWTnBsRVRLT2x5VTN3YVMrVlpV?=
 =?utf-8?B?WkRFaVkzaGdpQzliNXlIbzZRNmkvODZibHhnWnJ0NjJmU2lJZEVDYnpIUUV0?=
 =?utf-8?B?UnYvK1JiVlQzYUg2T0ErcDg2VzEzd3JkNVBsdlQyWTc0QXhrS1owN3BsYVg3?=
 =?utf-8?B?YVZIckxCNUtDNHhQQUFpVnBBcHFpL0Rvc2JUVzRBREFZZEJhdDF4MFVXZFZB?=
 =?utf-8?B?djJvN05yZTBmUXVyRGNqNitGd0tGZEpiaG5WYk5tZ0hCSkhrdG9nRnBMRWU2?=
 =?utf-8?B?SXZhWjkwVjNHSG1zZFFQN3FaVThJOXF5aWlzUXdOOWgvc0d2VFh2M2tGZ01o?=
 =?utf-8?B?U0tiVGZjYjRNR1pMQWJxakhySVFRMGI1VEZ2R3ZROGRmQ1NYQy94ZUI5Qmc2?=
 =?utf-8?B?VERUQnI5WTJlUUIyZ0lPZndkc085UzZTTHZaWGtlUnlSN09ROHVPU0lucUNp?=
 =?utf-8?B?YWFNRW9Bb1BVSTRjY0xZN2k3UlR2SW8rVTl2a0ZjWVh4Y2dvY0VoMjVCM2lL?=
 =?utf-8?B?S0g2cENSUzgvbVl1TWxoR29ieVQwWURxK041REpkbGRlWkYwVWZMY09NcXpj?=
 =?utf-8?B?NFBET1RzcUdEWUJ5Zi9TbTVrOUp0RU5wZTVzL2U0dHhuYzl4VmlNNzhjaG5Y?=
 =?utf-8?B?emhnUnBmbEZNeStJcVdWZU1TZDdoUVNwZXl3QWU0WVM1Tnp1VHBrL0dORzI2?=
 =?utf-8?B?dGl4MHRaZ0RKNjZjM0pVa1g1bG9SMC9NbkFTeE5kVlpTVGxldjZlbSs2eE4z?=
 =?utf-8?B?MXVLLzB6eVFtRVl4RWFFRkMrcEFxU1poakRXL0pOdXp5NGdVaEVSWE93Qm1D?=
 =?utf-8?B?QkF2aitvZFpGUkpxWjJVZHdwd1lZNFljRjA0Y05lMm5MeHhacXViRklNZkJF?=
 =?utf-8?B?WmR2V1NlSnp0V2tsaW5Wc1RFNklWQlc3Y0lNenZhdEdXcmp1UllMRGFJeHVQ?=
 =?utf-8?B?ZGZza0dDUVZxZHAyaUpjN2t6a2trQkFsRnlOeS8rMXI4Kzh3Q0hoOVo1NDlX?=
 =?utf-8?B?S3EvdkJvMUhIVTZkZTR2QWpaOHFTVHMvbEFqY29IQjZiS1VrR1ErYk9CU0lh?=
 =?utf-8?B?OGcvakYzQXRBS0c2c2VyOVRUcVlBeVlMYm5IaElrampQZDZSZEEzcFpYY1dB?=
 =?utf-8?B?SVhvaGY3K3ZUZlVpN0RaKzYwVE96WUdhbVpWK0QzQ05zM3ovRlI0azFvZEJw?=
 =?utf-8?B?REUzVG1tbTZrTk1lUzNnbUoxVWZRQ2pGYmk3KzBvQ1FLN0RvUVJ6OHVtTlpV?=
 =?utf-8?B?bFdXZDNDY0Q0aGxuaURPMmlnaXBISWlqdGwzWjRxNldKNWxqQVhSOGpyYktI?=
 =?utf-8?B?MGhlWUZtOEpVSmhqMXFwbE0xRlZRWDNhbk93bzRta3VyQUNQbXZjWS90Zk8z?=
 =?utf-8?B?TzVHdmtKQnFIekNObkgwRmtQWVV3WVJ2ZWRDZGJ6Vnh0Ulk0Z25mc1FFU0JP?=
 =?utf-8?B?b1lvVTFsWFJLOS82NjZFcjUzakthemlCY3VaTWNSclJHUXBZYURSS21XWDJE?=
 =?utf-8?B?OFZPMDAvVERoQzJGaFNYN1A3K3FLK3ZmNmtKR3QrZ2xBQ2lmbEZYNEdtMklC?=
 =?utf-8?B?L0ZGc2RBdVBSelZHeVlMdkVlRXBKRURQQ2hiZ2hvKzlPcFMrdUtyUkpMeUZB?=
 =?utf-8?B?NjVTazBTN1VxUDRGTEJYR1F1dVFjZUk3R2Z1cWcyZ0pXcmlDQVpBTkFBblpo?=
 =?utf-8?B?cDZRejZGTDhJQlNZYldaT0NNdmlhSUIzVkdJUXhUd1ZkbC96SVBpK2x3cnNO?=
 =?utf-8?B?bUM3YUtOWk1wTU8xVnNXTytlWVoyVEdROWRZUzNSMEpVWGN2WjhXaXhaNUFu?=
 =?utf-8?B?NWUyTE9MVEp0T1lNcUtxSWNIb0FPQ3BJTXoxSVhCQlpiLzB5eEEya2hCODhH?=
 =?utf-8?B?Q3lJZEllWWc0NlUyNThlNVhZeS83cm9ZYS9wL2U1akFqWnRvc09BMWhTdFpk?=
 =?utf-8?Q?G+vo3+JDRaxFFDG41/3vWJU=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02388089-913f-4d76-e308-08daf8a3bd66
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 15:58:57.0131
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +38B7VDbCcmqOhHlZ3/7C0Uj4vt+wm4yVDlUbsQwY2S04E5QwiOoBEh82oqPWFFX5sJEycFY6dGVfOy6x0vwm31Iz1o9ky0iq6EuxmrNEn9istc5+fxR3jrKyMih5F4o
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8983
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_075907_728050_BCFA3237 
X-CRM114-Status: GOOD (  19.38  )
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

SGkgSm9obiwKCk9uIDEvMTcvMjMgMTY6MjAsIEpvaG4gS2VlcGluZyB3cm90ZToKPiBIaSBKb2hh
biwKPiAKPiBPbiBUdWUsIEphbiAxNywgMjAyMyBhdCAwMzo0NDowN1BNICswMTAwLCBKb2hhbiBK
b25rZXIgd3JvdGU6Cj4+IE9uIDEvMTcvMjMgMTA6NDYsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+
Pj4gT24gMS8xNi8yMyAyMDo0NSwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+Pj4+IFN5bmMgcmszMDY2
L3JrMzE4OCBEVCBmaWxlcyBmcm9tIExpbnV4Lgo+Pj4+IFRoaXMgaXMgdGhlIHN0YXRlIGFzIG9m
IGxpbnV4LW5leHQgdjYuMi1yYzQuCj4+Pj4gTmV3IG5mYyBub2RlIGZvciBNSzgwOCByazMwNjZh
Lgo+Pj4+IENSVSBub2RlcyBub3cgaGF2ZSBhIGNsb2NrIHByb3BlcnR5Lgo+Pj4+IFRvIHByZWZl
bmQgZHRvYyBlcnJvcnMgYSBmaXhlZCBjbG9jayBtdXN0IGFsc28gYmUKPj4+PiBpbmNsdWRlZCBm
b3IgdHBsL3NwbCBpbiB0aGUgcmszeHh4LXUtYm9vdC5kdHNpIGZpbGUuCj4+Pj4KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgo+Pj4+IC0tLQo+Pgo+
PiBbLi5dCj4+Cj4+Pj4gQEAgLTIyMyw3ICsyMjQsNyBAQAo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKg
wqAgI3NpemUtY2VsbHMgPSA8MT47Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCByYW5nZXM7Cj4+
Pj4KPj4+PiAtwqDCoMKgwqDCoMKgwqAgZ3BpbzA6IGdwaW8wQDIwMDBhMDAwIHsKPj4+PiArwqDC
oMKgwqDCoMKgwqAgZ3BpbzA6IGdwaW9AMjAwMGEwMDAgewo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzE4OC1ncGlvLWJhbmswIjsKPj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MjAwMGEwMDAgMHgxMDA+Owo+
Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNTQg
SVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+Pj4gQEAgLTIzNiw3ICsyMzcsNyBAQAo+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjaW50ZXJydXB0LWNlbGxzID0gPDI+Owo+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqAgfTsKPj4+Pgo+Pj4+IC3CoMKgwqDCoMKgwqDCoCBncGlvMTogZ3BpbzFA
MjAwM2MwMDAgewo+Pgo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBncGlvMTogZ3Bpb0AyMDAzYzAwMCB7
Cj4+Cj4+IEhpLAo+Pgo+PiBMT0w6IEkgbWFkZSB0aGF0IGJpbmRpbmcgY2hhbmdlIG9uIHJlcXVl
c3QgZnJvbSBMaW51eCBEVCBtYWludGFpbmVycy4KPj4gTm9kZSBuYW1lcyBzaG91bGQgZ2VuZXJp
Yy4KPj4KPj4gPT09Cj4+Cj4+IE15IGZ1bGwgdS1ib290IGlzIGFibGUgdG8gYm9vdCBhIExpbnV4
IGtlcm5lbCBmb3IgcmszMDY2YS4KPj4gT25seSB3aGVuIEkgZ2l2ZSB0aGUgY29tbWFuZCBiZWxv
dyBpdCBjcmFzaGVzOgo+Pgo+PiBncGlvIHN0YXR1cyAtYQo+Pgo+PiBDb3VsZCB5b3UgY29uZmly
bSB3aGF0IG90aGVyIHBhcnRzIGFyZSBlZmZlY3RlZD8KPj4KPj4gSWYgaXQncyBib290cyB0aGVu
IGl0J3MgZ29vZCBlbm91Z2ggZm9yIG1lIGFuZCBtb3ZlIGZvcndhcmQsIHNvIHBsZWFzZSBtZXJn
ZS4oS2V2ZXIpCj4+Cj4+IERyaXZlciBmaXhlcyBmb3IgdS1ib290IGRlcGVuZGluZyBvbiBMaW51
eCBEVCBjaGFuZ2VzIGlzIGFscmVhZHkgdmVyeSB0aW1lIGNvbnN1bWluZyBlbm91Z2ghCj4gCj4g
VGhpcyByZW1pbmRlZCBtZSBvZiBhIHBhdGNoIHRoYXQgSSBuZXZlciBmb2xsb3dlZCB1cCB3aXRo
Ogo+IAo+IAlodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvdS1ib290LzIwMjIwNzI2MTYyNTA5LjEzMDQyMzQtMS1qb2huQG1ldGFuYXRlLmNvbS9fXzsh
IU9PUEpQOTFaWnchbG1xc3N0MVNBem1fTk8tTGZSb291a2VNSk9jNWpQLVRxc21fRGRXbXlqblFj
MlZzUDBENFRXSmFrdzBxaDVLLUVOVGU5NkhDdEdwLU1qS1p0VnJETTRZOFRsZyQKPiAKPiBDYW4g
eW91IHRlc3QgaWYgdGhhdCBmaXhlcyBgZ3BpbyBzdGF0dXMgLWFgIGZvciB5b3U/Cj4gCgpUaGF0
J3Mgbm90IGVub3VnaCBJIGJlbGlldmUuIFlvdSBuZWVkIENPTkZJR19ETV9TRVFfQUxJQVMgZW5h
YmxlZCwgd2hpY2ggCmlzbid0IGEgZ2l2ZW4gYW5kIHdlIHNob3VsZG4ndCByZWx5IG9uIGl0LiBB
bHNvLCB0aGVyZSBhcmUgY3VycmVudGx5IG5vIAphbGlhc2VzIGZvciBncGlvIGNvbnRyb2xsZXJz
LiBBbmQgd2Ugc2hvdWxkbid0IHJlbHkgb24gdS1ib290LmR0c2kgZm9yIAp0aG9zZSwgYmVjYXVz
ZSB1cHN0cmVhbSBtaWdodCBkZWNpZGUgdG8gaGF2ZSBhbiBhbGlhcyBncGlvMiBmb3IgZ3BpbzAg
CmZvciBhIGJvYXJkLgoKQ2hlZXJzLApRdWVudGluCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
