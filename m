Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1551DC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 15:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3XpQlk9oziCHJftotDgFjzqZV6Q6t7lPLimICtB68ck=; b=agKdE0UhzvRBmvVvvJXc6vFwwE
	EvWLCn+T2N1b9LfgXaOKW1CUtyp5ocQBWWQvYUooARlK2ANdLGEJafHfuxItYPfMUpNUWUfGGI4m4
	PXuBqGp0qKAginCzlRS52xatKE/ivavcb7yWxLD+swNi0DSHxSpOK8Gjn2hwc6l6bAfpJgDNNco6n
	XXB0mN7rA27n+ZDrWhjVDScHy7PADKRB1Gr9tIBvCcqRG7JsDqKFCz19oLr1rA1jUSOOMiNRe4jol
	qa+4BAKtJyPdMjt3o8dY127pmqqXURcH+dOEzFqouZFbiFUhZDTCb1McyDNSzU0V61hSj91vzRwX9
	skNsPf9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHRLC-00B5h4-M8; Mon, 16 Jan 2023 15:24:06 +0000
Received: from mail-am6eur05on2058.outbound.protection.outlook.com ([40.107.22.58] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHRL5-00B5e3-G2; Mon, 16 Jan 2023 15:24:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SMHo4xxZWJKBWK0iQRjPSAUh2HW9p1MKXdqHHE2wro48asheLkiGj9gOgh9VhlPLx3HL0Ldz78YIQjTAAF7GThu1uSg1djVVuY+X9HdaSHafQr3/r0vjGjRnLBGRDSsbS5WfBCw7imLepQC2gd4iOuQmAlmI360abWto1S0ogkdUEHnhQrAKRYN4FPYaE40veUIZNYt4FS51HGaFN0qnEQ5WR6nOm+qrYfjXK/fLZwKnkFT4wGZT9m+yDqJO7lUWlZU9SSPBA+e0jHuhEHAw27h8bNzflSX/ENsCe1Ks/NB3HTC8pRAuCRhJH0okcq9MZN1v9bdnCmlUFtTN232ejw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zJQi3U9+AK3IrpzevlE/QsEkkYWxjNSkWOHbQGvGPoU=;
 b=gewnJm8n74iLoH+P2eAoxskyGWcG8Mw+PzTeRymZOy0YLALbYE33lUUyYO7ShbtiQlqAaBoevXg8G6JrVIdwZOuLQPYZn9LSrEGOIdPQZfGQeQcOM41L3bhOpEsq5DjkGa0fd5NEKSHfuj0THIE8NjA/47kiILG9l1oEslW000NfZkEz3whQ0LeS8EDae3ewLJB20eT+9ONpIX+rOPmv2PMPppfELNdETwyPqeMEjtrUVrcjhwrv7anY94jSk/0JNsg5514/Hlxft9SJQ5IuOWbWy4UmH2saL8fFFFZlOH8omWPIzEukmc39krDMlxbra6OX+KvNpX3aO90GAzPg3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJQi3U9+AK3IrpzevlE/QsEkkYWxjNSkWOHbQGvGPoU=;
 b=BqjYyc/BpAQSIj8vl35AXzuuLz6GCg/q/6iHwUDD633Y14QjCtFQIXZ2VhjemHV449eW3pYvl3d1rhmHlsGS6xG5NFdtQ+vnm7yIt1cP45xaGise61GPX9h+wc+2nP5NeXAgH2WomyPO78l2Sc7SGiKE6rRKACuHTPg77lADlJg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV1PR08MB8500.eurprd08.prod.outlook.com (2603:10a6:150:84::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.19; Mon, 16 Jan
 2023 15:23:52 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219%2]) with mapi id 15.20.5986.022; Mon, 16 Jan 2023
 15:23:52 +0000
Message-ID: <f180eb32-7dfa-b98c-62e3-50f4e8a65733@wolfvision.net>
Date: Mon, 16 Jan 2023 16:23:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arm64: dts: rockchip: fix probe of analog sound card on
 rock-3a
Content-Language: en-US
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 frattaroli.nicolas@gmail.com
References: <20230115211553.445007-1-jonas@kwiboo.se>
 <7caeb07b-8465-6bdd-d90d-06a905b56f37@wolfvision.net>
 <DB9P190MB1594D084408339B34C69B060ACC19@DB9P190MB1594.EURP190.PROD.OUTLOOK.COM>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <DB9P190MB1594D084408339B34C69B060ACC19@DB9P190MB1594.EURP190.PROD.OUTLOOK.COM>
X-ClientProxiedBy: VI1PR06CA0164.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::21) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV1PR08MB8500:EE_
X-MS-Office365-Filtering-Correlation-Id: 66f98e33-ae01-4a4d-062f-08daf7d5ac69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	hEX/F5zyIP5V5y7X7IhsRX2+GzB9q3NtVgAV/hcu8RMdQftwMatwu6KGGdsKDzr79hLZGe89a1jRi95Xsm1AR37fjGVsgBUSx4jxw5jIn8ZgnEYLanaYqtdYnEyHGxB6mM8QyTI+FOALCgQp5dq6hgyXYehMb6n8/a4RPNx1tLVIkD0j8Fr6hWnyhcKK78xV5/z5RJDgaY1jOLtSYHAnydvbAd6UV5QjMlvxXI1vc4YeAaELjmWDkruS+LmvBCpiUzRb8jV3+2S7f2RSkXkc1juan4/r8+mZF9Tc2UsCh0aEkgPOKa3Bli8QPpzgvnVzIZtYrz1D1vIz0NZJtctPmevIGitZVijrQQbWE8Xp0f2yQX5VvBlBHvGQx7H4UBAVhSPOZw55xlv1nK962YAr5Iu3OnwHm42m0v+WIZjUbvbBaG+7pge1wVrqtpnQttysKh1IxNEhWuNQZjmtugKSWMi8y1rZNm2SQ6rMDOs/i6FgIedTI1dXsoGHEw7i/OaG2OVElXL2LcDXRwgj77qHAfcAtpuxrWmp4eVqOUKmsAfbWvKnqOlUVgFdiVIaj2j8tL13iQ9EV8BFETzgBn+tU3Kc4B4oeLg0xHB5NmXuxIEIWDa/JfIZ1sks3ruNSTEr5Qdl26Hk9c002a4UXDrGVuxGRtiC4U2iw1vaoq/CNu3KIHj0WaDtKs42Qyt1vhczX21R4uz/gLLC9DCWLjHQ+ceVE+iWOCwGvNNbLgYiyyTpLVtEgmnewRMnUSH9P0Xe0zH8HhWzPqF2IxEvBmgyLJnQ6JJKuRKF1jqvHS98CHQ=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(136003)(376002)(366004)(396003)(346002)(451199015)(2906002)(44832011)(41300700001)(5660300002)(31686004)(66946007)(4326008)(66556008)(66476007)(8676002)(26005)(316002)(83380400001)(36916002)(38100700002)(45080400002)(52116002)(31696002)(36756003)(38350700002)(53546011)(966005)(86362001)(6486002)(186003)(478600001)(8936002)(6512007)(6506007)(110136005)(54906003)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?MERkcjdRTlZKYW93QzFzNkt4L2VhZTBuOFpGWkpSWGMvemdiNXNBMEt5Q1ds?=
 =?utf-8?B?U3NPcGpvRUF3ZDFnVTA0c3ErenZnVFI0ZjF6Q0Zzc0lpNUxIY2drZGliL0xG?=
 =?utf-8?B?STNvNmYwY0Z4VmdtYWZPVC9FWFBMRS90aDd0YTVtSmMxNUpUVktYMmQ1WUxl?=
 =?utf-8?B?TlhzMDNyNHNyb1k1aFRjb052M3RtcjBEZWtQVzl1bXBneFlmSEJId0RCWVky?=
 =?utf-8?B?YitMSlptNENkQ3hRVFQ1anltOGovVzJLQjU1QVV0U3UyVTBIK1pGd2c3MDMv?=
 =?utf-8?B?cG9TRTQ0ZnlDWlNnZjFlejhOYXRDZm9McjY5TVU3MVRyTS9iZWNOdzEwd0dG?=
 =?utf-8?B?NXNrTFpTbWxtRm8zV3JwWWxJa2dlVVMyUTdlNzVRdzVOKzFnamZmUFdEcUFE?=
 =?utf-8?B?L3MxeHBQN2w3SjRuYXVjdDZmWDFXMDB0bFJOc0w5bXY0dFhxUFY3bFVaQWw5?=
 =?utf-8?B?VGtRem1MZDJZR0xpOXhWQ0ErSTd1ZUV6MlRQKzVuVnppRWpncUg3L1diZVhD?=
 =?utf-8?B?N0VmRmdsZjg5c3hSeWQwNnlvc3h5MHY2dEp3THplYjRRNmpzSlVCVHQxbU1s?=
 =?utf-8?B?R3N4M1AzdjdFUHRrZk5PTXZ5U2NuREp5UU5teTV6WldNMXMyUmt4ZFBDT3Z6?=
 =?utf-8?B?NG8vZlJ4QXBIUjhkVzlCMWhQOHlYanJzaWs3NzQ2cWNkb1p3U3hHWVR0RWZ4?=
 =?utf-8?B?R3dWbGxMSlFFZjdoSDNhdFl1Z1ljUThldExVUFZYZUpsYlZqNjd6K1ZQczkz?=
 =?utf-8?B?SmdMUmNNSU1EaCtZTjUwUlc3Z2ZLVG1TZkJxRGVaaTVwOHNGbmFheklodUds?=
 =?utf-8?B?N2lIVDFSUUs5emdtamYzK3J4dlVNaTFiZmdxYkVzWndZT2RwSFZ4OFlnUS9R?=
 =?utf-8?B?ZmF4UDFkWDlFck5sRXdOdktFOUtWM3ZleXhQelg1SVY2NkFqb2ptYVJpQk9a?=
 =?utf-8?B?R2RxcHVCV0RhcmYzV3Y5aDFPL1FhclJpdGpaa2V6ZFg0d0djVjgzT255QVhL?=
 =?utf-8?B?SW1rN2p4bXBycDdSVVBaYVFsWXhQTkgwTlUwKzM1cWFENW9ONlYrUTU2T0oy?=
 =?utf-8?B?MHNtOG9aaTg1aGkzQVJyVHIyOUlOMHRISU84Mm93dWhRU2xOcXN1QlFCQ2lJ?=
 =?utf-8?B?S2Z6M2k4WWZGd1R0eDRJQ2d2V25yVE9zZ0JLWFRwTEM3NzZDVGQrelh6aWhF?=
 =?utf-8?B?ZFlxM0dPWHZZS1dIR3RIY0ZSMzdiYmRSTnVHcEU1bzVCcFVtdEUwZjl0cDdm?=
 =?utf-8?B?ZEFsQnZYMHdMUnlEdWhHdnZZN3FTY2tabWhZbnlONUF6VmRBTE0zd2pjNnZH?=
 =?utf-8?B?Z3BidEdDamRodXZOdDNNMkM5MmZSd0FvOGVOaGlCOURGaHNneHpxRFJnYnhz?=
 =?utf-8?B?NXRPRFpFTTVuKzJsTmJjQWNMMUsrRlp1V2tuL0lsMEpTTEJ4RGZuc1BaZVVS?=
 =?utf-8?B?RUhCeFdVY1lkRDNIMWVjbmlYMVVZTmU0YjMyYlh0UElucUlJZnFYVVRkaGxW?=
 =?utf-8?B?RE1NM0R1SU5zNloyV2hKNS9TSVp3dXplVnRZMU9kQ2hZNFBwNm5YckVhaGVD?=
 =?utf-8?B?Ri9qbUh0R3pXY1FZVkswQWZpRWJmT1l0bnZISWpkQ0lmZWNKVlVYa2NwVjNt?=
 =?utf-8?B?Z05zb0VPOU8yK0lsQU5aUU52M3hoMFZoTFlQQ20vQkY0MmNISjBDVmVCa1dV?=
 =?utf-8?B?dElJY0MvNHpHQmhhSlJUWFhTb3ROTWhvb0VmMXo4QkxGSmhFL0Q2SkhmTzZF?=
 =?utf-8?B?bmV2SXE0V3BHZWowSTg5WGJsMlNreXErQXc0MFFWc2ZpMzF3cXRtYUs0eWdy?=
 =?utf-8?B?WkhqMkhiUm5Ud01EZzFzZVlDcEU0WU5vWkIvdHBYUkt3azNpeVF6R0ZsT0ZV?=
 =?utf-8?B?V09GZHcvTVUvSHhFZ2p4emY3SVV0YWxPOVJqNlNoUXZhelNUWWJoN3dXcWZY?=
 =?utf-8?B?KzY0TXgvRDdBRDBJdzNmRkxDTngrZGxJODZkTmhLNExrdk41bGJsVjRpR09m?=
 =?utf-8?B?TjFRNVpDUjdyZE43MDc4WXV0aUxPUmthakdmTU1aL05neHlKa0VPWkp0UGNm?=
 =?utf-8?B?emVGV3NuUHJISVRRNDVSK3p0dExhKzJ4OEdEd2FnSzJTVGZDYVRwTFFZejVK?=
 =?utf-8?B?S3JONkRpUDFZb3Z5MlpsL3Fqci95TXlaa3NNZmZlTlFjelJDc3pZbXNEOWg4?=
 =?utf-8?B?cHc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 66f98e33-ae01-4a4d-062f-08daf7d5ac69
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 15:23:52.0254
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: trgr1N9SyNwVuriSoUZXxwTJQwQAqpZ/rmKMC0Hzqzw/gJfOcnHCuxGbZ7Pmzv58ujqNh4VeTu6PkJ63gRaIVYm/DsUpF6p/0E/iNawkJH4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_072359_597054_382450AB 
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

SGkgSm9uYXMsCgpPbiAxLzE2LzIzIDEwOjI5LCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+IEhpIE1p
Y2hhZWwsCj4gCj4gT24gMjAyMy0wMS0xNiAwOTo0MSwgTWljaGFlbCBSaWVzY2ggd3JvdGU6Cj4+
IEhpIEpvbmFzLAo+Pgo+PiBPbiAxLzE1LzIzIDIyOjE1LCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+
Pj4gVGhlIGZvbGxvd2luZyB3YXMgb2JzZXJ2ZWQgb24gbXkgUmFkeGEgUk9DSyAzIE1vZGVsIEEg
Ym9hcmQ6Cj4+Pgo+Pj4gwqDCoCByb2NrY2hpcC1waW5jdHJsIHBpbmN0cmw6IHBpbiBncGlvMS05
IGFscmVhZHkgcmVxdWVzdGVkIGJ5Cj4+PiB2Y2MtY2FtLXJlZ3VsYXRvcjsgY2Fubm90IGNsYWlt
IGZvciBmZTQxMDAwMC5pMnMKPj4+IMKgwqAgLi4uCj4+PiDCoMKgIHBsYXRmb3JtIHJrODA5LXNv
dW5kOiBkZWZlcnJlZCBwcm9iZSBwZW5kaW5nCj4+Pgo+Pj4gRml4IHRoaXMgYnkgc3VwcGx5aW5n
IGEgYm9hcmQgc3BlY2lmaWMgcGluY3RybCB3aXRoIHRoZSBpMnMxIHBpbnMgdXNlZAo+Pj4gYnkg
cG1pYyBjb2RlYyBhY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpYyBbMV0uCj4+Pgo+Pj4gWzFdCj4+
PiBodHRwczovL2VtZWEwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0
dHBzJTNBJTJGJTJGZGwucmFkeGEuY29tJTJGcm9jazMlMkZkb2NzJTJGaHclMkYzYSUyRlJPQ0st
M0EtVjEuMy1TQ0gucGRmJmRhdGE9MDUlN0MwMSU3QyU3Q2IwOWE4MDk2ZDQxNzQwOWNhMGMxMDhk
YWY3OWQ4NWYyJTdDODRkZjllN2ZlOWY2NDBhZmI0MzVhYWFhYWFhYWFhYWElN0MxJTdDMCU3QzYz
ODA5NDU1MzE3MDk0MTg4NSU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3
TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAw
JTdDJTdDJTdDJnNkYXRhPXVwaXgxTHFjdTF5NXZZa1B0Y0I1QW81VEEwNGJyQmNlY0NTMExYMmlw
ZTQlM0QmcmVzZXJ2ZWQ9MAo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxtYW4gPGpv
bmFzQGt3aWJvby5zZT4KPj4KPj4gTWFrZXMgc2Vuc2UgdG8gbWUsIGJ1dC4uLgo+Pgo+Pj4gLS0t
Cj4+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNhLmR0cyB8
IDIgKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYS5kdHMK
Pj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYS5kdHMKPj4+
IGluZGV4IDAwZDg3M2EwM2NmZS4uYTE0OWM4YjgzZjk0IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYS5kdHMKPj4+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2EuZHRzCj4+PiBAQCAtNTczLDYg
KzU3Myw4IEBAICZpMnMwXzhjaCB7Cj4+PiDCoCB9Owo+Pj4gwqAgwqAgJmkyczFfOGNoIHsKPj4+
ICvCoMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+ICvCoMKgwqAgcGluY3RybC0w
ID0gPCZpMnMxbTBfc2Nsa3R4ICZpMnMxbTBfbHJja3R4ICZpMnMxbTBfc2RpMAo+Pj4gJmkyczFt
MF9zZG8wPjsKPj4KPj4gLi4uIHNob3VsZG4ndCB0aGlzIGluY2x1ZGUgaTJzMW0wX21jbGsgYXMg
d2VsbD8KPiAKPiBpMnMxbTBfbWNsayBpcyBhbHJlYWR5IGluY2x1ZGVkIGluIHRoZSBwbWljL3Jr
ODA5IHBpbmN0cmwsIHNvIGl0IHdhcwo+IG9taXR0ZWQgZnJvbSB0aGUgaTJzMV84Y2ggcGluY3Ry
bC4KCmFoIG9rISBJbiB0aGlzIGNhc2U6CgpBY2tlZC1ieTogTWljaGFlbCBSaWVzY2ggPG1pY2hh
ZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0PgoKQmVzdCByZWdhcmRzLApNaWNoYWVsCgo+IAo+IEJl
c3QgcmVnYXJkcywKPiBKb25hcwo+IAo+Pgo+PiBGb3Igc29tZSByZWFzb24gdGhpcyBoYXMgYmVl
biBvbWl0dGVkIGluIHRoZSBwaW5jdHJsIGRlZmluZWQgaW4KPj4gcmszNTZ4LmR0c2kuIEJ1dCB0
aGVuIHJrMzU2eC5kdHNpIGFsc28gY2xhaW1zCj4+IMKgIC0gYm90aCBpMnMxbTBfc2RvMSBhbmQg
aTJzMW0wX3NkaTMKPj4gwqAgLSBib3RoIGkyczFtMF9zZG8yIGFuZCBpMnMxbTBfc2RpMgo+PiDC
oCAtIGJvdGggaTJzMW0wX3NkbzMgYW5kIGkyczFtMF9zZGkxCj4+IHdoaWNoIGFyZSBtYXBwZWQg
dG8gdGhlIHNhbWUgcmVzcGVjdGl2ZSBwaW5zLiBUaGVyZWZvcmUgaXQgc2VlbXMgdGhhdAo+PiB0
aGVyZSBtaWdodCBiZSBzb21ldGhpbmcgd3Jvbmcgd2l0aCB0aGlzIHBpbmN0cmwgYWx0b2dldGhl
ci4KPj4KPj4gQ2M6IE5pY29sYXMgRnJhdHRhcm9saSwgbWF5YmUgaGUgY2FuIHByb3ZpZGUgc29t
ZSBjbGFyaWZpY2F0aW9uLgo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IE1pY2hhZWwKPj4KPj4+IMKg
wqDCoMKgwqAgcm9ja2NoaXAsdHJjbS1zeW5jLXR4LW9ubHk7Cj4+PiDCoMKgwqDCoMKgIHN0YXR1
cyA9ICJva2F5IjsKPj4+IMKgIH07Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
