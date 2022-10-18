Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D69CC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Oct 2022 15:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:Subject:References:Cc:
	To:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tdqTH194k5+uPfeDm0ua+0dvCdd+i9znpXt2cDj6nV8=; b=aAN/NmiYhA9JQTRZ+k4ya0jpfs
	8labyZbYVJcVRwaznwvUW1wNlcFhyOoiAPrHjDiEWZJf/5OUVC5EezZc5o1RC5sPNWNn3eZTDJwyt
	1BJh9HFswSseFp9Vp++QX0Ak/Q520GzGR8drx8J6qIK5wtSSGSh3lZe9c7Ap+bR1pzIgIBEOZWokP
	ajV1pv1/vvrrU3muDCWtBfp6P/7pGS4/QFkHS7Qq5fiGAT0EjTLDhmxCyFHNkHsPHx8OolgyQYz/b
	D5LFMQb7vlbg2gvTcc+/tKPftptx290ng10rD7kHfIG/FA/P4k28Cdqb+qXmRKUqgEWrhgTn8EPJf
	1tf4/9IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oko7G-007QVB-Nx; Tue, 18 Oct 2022 15:02:50 +0000
Received: from mail-tycjpn01olkn2105.outbound.protection.outlook.com ([40.92.99.105] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oko7E-007QUI-B8
	for linux-rockchip@lists.infradead.org; Tue, 18 Oct 2022 15:02:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X5rPox5ObslRz3nIeW/+fxSv8SX2eigzSdTkaBvnLAV508EJ17C+aji5ymvTZZcvDHqVKXhnNtSUd7vUeggPnJacnPvKoLopSE9OimHEszib3zoq0/NjcRv29WRcX7nJVQHyuKmaQ38zQ7v3/CedM2YAmBpq5KZz4qoRe1PWeSeh4eWYnAlTDexIl6440oh6V3H0R6/QuZoh4HV6+3KQthxVo58uzPZFt8e+ONb17GVVQ9kRuLrm67P4tGrgQ24ycmAGeCvoeN54XTDlSPdaPKcxh96YPfRRx9w3dZ55Oa9vPqwXJSx3FJCdfKB/ZZVzrbOnGhtrfMGlDu/HkrIFZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ar93FjY+ETojBy24VvNsyPEEvh7ftGO73tpl36IO3Ow=;
 b=QZjALVC1qKQA35Mb51XSUIcTIjBFbPeNOosuiNFW096oHj5uvYkb28DskWrBFAauAjF15KKq7x5cXilBJE1DZms6tF8HBThhFrxR2i3Hh6wIEtJn0Bk9yg7fBqLUXA+8d6yxHGba/xe9e5jDAzMI1TJc73geJ4UvFJNu1LQwaad5xqF+df0THTlqC4FMpJV9q6/ouFXuPKOTTLNTPV/kXuNEFYoKg2BYZUc5O+b2R54S3RTU8fMkgN3x7s2M1h3aImEZN2Xx977adIQacd6TUZRyl9bpFTR5IO5ybzDQqVww8UblX3UskrAqNl44mVLzzpvQeVgAr99GRqmf83uzjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ar93FjY+ETojBy24VvNsyPEEvh7ftGO73tpl36IO3Ow=;
 b=MHBjn/RQWhqln2s7V1hnVVxwnBeaSL0iTjs2JIMxT/e/Jhg++MAHIjYOJGbur34JchoDDwux/r4yt7fvXG9Z9vy/wYRaL1n+KRIv1Hii59Lfon5PqBWctUYFcbd87jJ1ayx29HE2aOsLnVNEni57l0lTuwZ0Nm5lgkITXNiTNRrzhtJlJKBmfXSbmCs8h1MpeY1EomTcLoZLEwwvqShC/seRwy027pHUSUQ68gAJsIrf1dzaLVGvLbwvocEQk3XPOR89UMLFLHcQQ/mO4PtOHzhdzH6gOJUMmZmnR+oKJA+msE69llVsnHhXMNWwlFFYdSvf/VVUR7QQDy1Sms6spw==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OS3P286MB2293.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:19d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Tue, 18 Oct
 2022 15:02:42 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f%6]) with mapi id 15.20.5723.034; Tue, 18 Oct 2022
 15:02:42 +0000
Message-ID:  <TY3P286MB261144AE592B59FAE72057A998289@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
Date: Tue, 18 Oct 2022 23:02:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
To: wiagn233@outlook.com
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de
References: <TY3P286MB2611D245D322B1DEB4E09689985C9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
Subject: Re: [PATCH v3] arm64: dts: rockchip: Add support for RADXA SDIO
 Wifi/BT M.2 ekey module for rock 3a
From: Shengyu Qu <wiagn233@outlook.com>
In-Reply-To: <TY3P286MB2611D245D322B1DEB4E09689985C9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-TMN: [6Cg9tvqcOE1/LOaHnq1/OoqxBgF5v7p5]
X-ClientProxiedBy: TYCPR01CA0039.jpnprd01.prod.outlook.com
 (2603:1096:405:1::27) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID:  <81a0f39f-09c6-4412-ff02-a7f1ce7174c7@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OS3P286MB2293:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b6f6b7b-e0e3-47fc-14af-08dab119ce4e
X-MS-Exchange-SLBlob-MailProps: 	QyUpsVPvcqke2eQ1MAzLcmui3YrqEI0ZyCvK/szlFy6QiYDAfEb0iBOM7G46S2UQcMPgk/pJKKfL2j+bqPDhQIGsWdxnKh1tKDlFbE25LSgr7lbJkA12tITakd9bxw2RbyATqeg+NkJGAnvWWOYvExxEBhu7MHXgsRaIN27xLri8cs7DZAQDzUgaFE+Z9mrY/uDpi2HqxsrvXbXR8sjPmdl626MCHWMbV6ePlwGb9RePxsVuTQXgpARYMz25UX9Q7K6elNXgPYHwDopjAohwpJxjAJl5zfBJ/PXjbh25tNXe7lE6TyO+VockTq+iK9BCWZDNaEeea85/rVDlzrYfR0kO8HJXqtaEDYAtLxrX3PzOo5XQ3cu6Ns9PHapsmkc0YZ1i/3IQgmgkhSFwH6fvHOIeuur5DKEjcNTUoPLNJXyg0J8VtKZCKz3iAmcHnrFrQjTz17EQHySDOGYDujZnzeq19MWewQ52xZX09bcvNOgKycfAKyubZmyqpb5BeRvd/hmoh27valo2ZujLa6/ewb5GKx2g3KgkuvHe0uYmwkxJvH1HdjG6+mem0y7w8MnHQsh5UWwGIRGf8W9xbceUVQoE4cU1sJ2OhOFJ5tBB/d1yUvscr588DCp5PjK1IMVNzTOOVrWjREnbsgP80duuAuL8c8Vg3/iX/ne5qX8bAK+C1sdxk2lFkmDLQwCPr1Vt
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	lupoXaJFrep84aAvwsGVCDTqh/X2XsCn5P56wv6qeMTm/ukSemQFRBpmEkJVZ3qmFFhiopZVB++Ir+joUUtacAlMxywRw56Y5P7/iaLywnpOOeTJHhqjj0TSyTzSIoRBgBL7lVSTOUXcFpkX6L2gYw5hSv/MSVwMT5/J8r0xqz5LerSp90MThPXxfP8cX9sOmwKPhuIhOHMGZUtlWw8zBuy8/MuJUP9oXIbTC5tnktqS2pW4LD25dZSTAeEzyWJraiDZKQtFRxxIcJIIFgcNX+4m03cUwb8MepvrKvKJQ2dQAuRIR/j4PkoWevFB287IlFuWsxswQmKMG688eJMlS5HMcESzxEQ22gFF3ih8u5vnbPsq9e57wicQJ1hrgcPEkWzIyUGWnE+Co2XdzVdBgQletRy/1Ud0wN/oCuvD9c1g2i+MynKli1Ewt5SAiXsUl1mXISHoEgkhRmgno4sHw4SB1qpy2FZAWq6fmOOlX4fMNetdLJbLOYNatWpNXVDix4gXa6X+qL1u1OBZTRa96m+HuH8lh6U1kqhWeGUzQ6kCfuKKcLS16bAZXfyaaV68PFV4itC7vRJJ9thxtDsCTlxcd08AenYqQOnIvqQc+IPxH+P3VgKMwszA5vSyvK/nULZl0t0GmZ4z+Ixu3nSOvAHU2LQkA7PmprHySAWwbl41w8e2i1UsnXXvOMj7xL/4vOm7ki5V4JmPGez2FviBjYSZ8UcuCXr4S5wdCUa4zSM=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?UkNybXYzU3VEQmxSdzZteHJtRDc1eW9DMjRNTzdRdEtaZFVnNHBod29jRisv?=
 =?utf-8?B?T2hsOS9SZFBSdDgxaExQcUxGR3ZnK3U2OW80OEJLb3FrNW9QejcwcWJoNWsr?=
 =?utf-8?B?R09xQ2pDS0VZa1cvVVpJYVZ0bUUrZGE0M1MwWVliTHF4QXF3ZjhnQ2xoOWdr?=
 =?utf-8?B?YnR4ZForcE5vVVZHRVZYWGNyTllvNlYxSFVHaGQzdlZOaFNiaWZobmZQaE5h?=
 =?utf-8?B?M2I4Q2hLTGNmZk1SZjNYL0QrdTRvaHQ1b3UwUHRZeW1TajFwTTNzVXFpUGFz?=
 =?utf-8?B?MUlFQ3lpZ2hNN2wvRXdEZjFCK0k1NitHdlIzTEpQNDQyRlk5cmh2dmNLTTh1?=
 =?utf-8?B?L3d5ajJJNGc2TGQ0U3ZkZWJWUXk5NjV0Yms3YVp5UGdPWFBjcit3Tk16a2JD?=
 =?utf-8?B?NHNLNWJmZjJKMnMzY2pORWtjWkhaam5VQTJzR2NkNko3RGJrTWdObTdocG1J?=
 =?utf-8?B?dFdXRXQ2SUdXVkI1aDhDSTdwZ2k1Vm1NVisyNDQrT0ZYSXpFSDNkaUlITTBh?=
 =?utf-8?B?K25TYlJHT01oOTVCUGtSUDV6Vi9uQy9aWUNwRVViMnFhS2FZZXpWUlEvSmJx?=
 =?utf-8?B?L1Z0YUpWRlY5NG83aGdSc2NwL095WFRhQnBIUW9XaEZCM09SWlBlcHFZSnFM?=
 =?utf-8?B?RTY0R1h4SmpCVlF0aWxmOTZPMTg4Qzd2Z25DT3FaQnoxQUxDNkJDSXl1V0lj?=
 =?utf-8?B?WGRaSTJvWXdRUDB0bDhldmtHMHNuTFF5dSsvZU0yL1VsMm53Nk93dVFOZW9Y?=
 =?utf-8?B?UGVlSmdnSEFtS1hER3FSdkd4dFNxR3F2UkVQNnNzcVdPQTFYZ3RHVmY3cTVE?=
 =?utf-8?B?aTAxUGZSYTBaN2dzYWZtbC8wQ3BTVzBWT2QrdDlmclZISWVzbFhFWngvVko1?=
 =?utf-8?B?dGd4MVJuMUNDSDRndkhscXRNRUZDOUJOc3lnTXEwRWRvWTdlbkRnOW04ZnJl?=
 =?utf-8?B?OWxrUERhSysyUzdSaTM2Ry9jN09vTERSS3FYeENJWmRidzBiMkhpblZJWGFK?=
 =?utf-8?B?OFNCN1lVSXBXWit4YTBjdmg4NTVzRnJyVUw2SkhXd0U2MzhNeHZIcDdXL0ds?=
 =?utf-8?B?NW1JZlZLUDNmdUxqR1J1VFErTVBwdnBkTDZSb2hCUVQwZjBpL2N1VXp4U1Jh?=
 =?utf-8?B?S1VzOVpBUzNIaUJKVFFpUi8xdm9JZ2FzMG1oUkNhc29pVWN6SjVLUU12VW9u?=
 =?utf-8?B?MjREMU1FY2FLMERSUmVZcy9DWEo2VnhVeXVQQkJCUjllSEZrZU9iYTFQcTJE?=
 =?utf-8?B?dUwyWVJzalZKdm1JUmVNOWhyZU5KN3VMdC91czFSYWJldCs1M1ZIcVJEMDNo?=
 =?utf-8?B?OWFmNmpBNmltVWFYbWZGa0tCUGhLOGZya3N4bHh1YWMremFNYk81RUtYRnIv?=
 =?utf-8?B?c1ZVbUkvWVZaT0NPbjRSMUNUWkdOQXpyaWVYK08rMkc0OWlwNWNQVHZSRTM0?=
 =?utf-8?B?NlZKbUpidEQzSW1sMHZLQ2hmU0xndk54dEYzUmZpaUEzYWxkc2drd0F4TDNT?=
 =?utf-8?B?Tm92RlY2d2JVM2NKcStvTy96QkVYdFBNK2h5L1BlZlRYcm9DWTNuMzFqQlJD?=
 =?utf-8?B?UzRNNnNSSWMvS0dPcHBPRHZsUnUwK1loaHA5NVNpSDJ2Mm1wSWd4QW1sT0dH?=
 =?utf-8?B?ajIxTXE1QjQvVjNmZk9wZG9lWG1VcGpBbk9Rc012T0RBR1ZjSHlSOXUvdzln?=
 =?utf-8?B?T0JLMUdiL1AvZkVyRnlqcUdKbEVmY3RmdWpxbVk0ZlVWcHZhbXJEQTNBPT0=?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b6f6b7b-e0e3-47fc-14af-08dab119ce4e
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 15:02:42.1743
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3P286MB2293
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_080248_426751_E2B952AD 
X-CRM114-Status: UNSURE (   4.74  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

I thought that this patch was neglected on patchwork list.

So I think it's time to ask someone for review/test.

Shengyu


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
