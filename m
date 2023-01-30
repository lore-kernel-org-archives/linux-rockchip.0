Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2E9CC636CB
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 06:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mpwE3nFMPaJg/TM5Dh8qaxZhIffZc1QTaabW6M6Pcc8=; b=15IKAoLfiebeT8Qo0pvJO7Yi05
	9WxpBliIttKiIzYApaTDvqfbYXRXf5xK3mW4yCUwFaDvT+j096KwdGwn5FJBWxxBayngYAZB1uL2R
	r2qZK3h4ek9Y22X9vhT6axbAWA+MfbOiZIp/5r01uHuxlyP4omVTSyG53fY0ffO98Clxwng7lJVv/
	hMol7cm3YsG4b7Xqd0UwKXh5z8VAeVLtQUbNVbFqryDGAGoRdQfRTSv7J1GFri0stmh5brVq3MSKT
	2g6GHbc85SXnU/Sw0ZgclBJAyJBBKSdqK4M6SOdbAfIky5OAJkk1/TmrUJCyFpurtuDdZRSmJrS/B
	aNI/56bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMNHh-002S83-IE; Mon, 30 Jan 2023 06:04:53 +0000
Received: from mail-vi1eur05on2048.outbound.protection.outlook.com ([40.107.21.48] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMNHf-002S5a-0h
	for linux-rockchip@lists.infradead.org; Mon, 30 Jan 2023 06:04:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ur7sPiY3/18d9SRnfIcvhlBMFixsnDefWLu1KKxlxO/fQyJ1kbZWXVGymjhZOAt9nEcxYyDj9h4IIU5JHda0v9vaEUMNlwlcFa+s4wsIzEUR/I6VDsJrI8LwRBRUn8WfCSXRU9Ited1yqBUCQ//HITo3FDLujsqNOD2SvAYz+LfR+69JA1/iDK1ipCmFGKX7FX3z3Vzk4vcjpykN+yHP/vW+JitcwC2R2x6tTUxS3c0A+Dt03i1zSBBPU6PhgV9AHZNZOGH4tPjimI5Ld7DJ/PZWdQoa6tuHHHXc1i+EPYxBNtv9Vr7aa2R6WaWJYKf5BtMd8jr2PnXycwhBmLUFFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Eac8NbQBww/KY1e95DxGkiYDIdnfrXqouWbT6MSLYnw=;
 b=f1ynK1DEMG4CpF0dBWY503yS9LDcZrh77pbs+d3+o1ABjHa5C9ZaoHwto4gK7VNwy91F6YRh9RJaFJmJsZb5tXwgqVLtzX8Yif3ht5pjt+JEMRexLg1hMlIpO0XyTZaAKMmm4s2Wmv2UjrJ3UpnpramVeN0eQURx93C6SCvUFRy8iEojp+MQzFsAX77tRXoJvfPd+23f0UCH+NdULEELzEk3Y9INTXcVYPpq4CmGUOve0Ua95FdrsAaPQ9y5cikG7tirg7Y4KvjwtUUHroC+D1Qmp0Eszo6fX5EYIwuqdcxYX/a09WfZyeLAOcb3Zd6yAXAWwakqa5ZbyL6YbesmFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eac8NbQBww/KY1e95DxGkiYDIdnfrXqouWbT6MSLYnw=;
 b=u2s5jEferU9xJI5gDo5edj98hLTQ9VIeujI/VcmM5tNRuvvHrH4LZoYadCIcDoRZXs2AosHo+4ulQD8WVZVvMiijNQk/rNYwt5b72Ph/B5GQCO0b4rG6ypPxJ2//MsbIAWfWGF7jVGh4rfsMP6IhDJhkzvXSN1SkH1BPgRCT8rU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS8PR08MB6117.eurprd08.prod.outlook.com (2603:10a6:20b:292::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 06:04:38 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219%2]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 06:04:37 +0000
Message-ID: <828e7a2f-5b02-e808-daeb-1cd69e76cd44@wolfvision.net>
Date: Mon, 30 Jan 2023 07:04:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: rockchip_drm_vop2 suspend resume issue
Content-Language: en-US
To: =?UTF-8?Q?K=c3=b6ry_Maincent?= <kory.maincent@bootlin.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Marton Borzak <marton@unfoldedcircle.com>,
 Markus Zehnder <markus@unfoldedcircle.com>, Sascha Hauer <sha@pengutronix.de>
References: <20230127162909.19e799b5@kmaincent-XPS-13-7390>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20230127162909.19e799b5@kmaincent-XPS-13-7390>
X-ClientProxiedBy: ZR2P278CA0020.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:46::6) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS8PR08MB6117:EE_
X-MS-Office365-Filtering-Correlation-Id: d82ecf6d-5608-4664-ff92-08db0287de06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	5+fZeC2P/6GZZBiAG/eNp5I1aGkZ1lIRyNeM8y0vWIhQX3Ewy70+QXA7JusqwDHZWRYFbt53+AmqS6nrVGJNJNAGNeKeVSva7gqo64d5ynJfvGQGY4P8iNRxo3CQyiqe4uX2TBAluUm87u2SCirFhFQJnJs0B1+pKCJvtAG7mIRMgvTrj5lnP276X/49kv8VQGTrP2uQKjMNzG3lGv0OWLBgaEvgUWF+iH+YHioCPxRj9f3nh2G7Ht9odtg02k11Q8sMbE/1mmlUSh3tFNrQblENhOTZugUrw9xGeOuwVy0pdl8BWSlyF6BuuGWEoxuSu1CwqXGHj9WR5Ugn20QpWHDkKBGfHeVb/O/E2DOYc9zF8rgr0xh3ywNe5bMvhLxT18CopADYM9y/M7VJpjTU4bv7hqCl5fC5SFWutgyJ4FdckjhqKvqOJ7M3snhN+VzSh72kVM6uFaBY0UWBQB7oGaB0nahRDN5uyCL4ucHcDNLQERlIFuYe3J0MNR3DRFuF7x/KxaNpm2eGOtsYTwWtN1PzqJzPfBc6SCPOp4RG2LGcGM5yMp4EI1Oo4RWgBSPN3ePpCkOZak17Jb7WrmEbN8K8DSnzFLdbwgyYUsFoZjY5sHfWl0Jhs/zflk6IQ7PRW+HjG8AE5e6w6Hp/hMOKzeyUdgadrgJbjk2rzUo4Y77c8bwOxLtLUhciTQDh2a9HLjVyA4/i2pM09wSOtNaysLcB7oitZ96Beq/niadGiuM=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(136003)(39840400004)(366004)(396003)(376002)(451199018)(31686004)(15650500001)(44832011)(5660300002)(8936002)(2906002)(86362001)(83380400001)(41300700001)(6506007)(66556008)(53546011)(6666004)(8676002)(110136005)(54906003)(36756003)(66946007)(4326008)(478600001)(66476007)(6512007)(45080400002)(6486002)(52116002)(186003)(66574015)(38100700002)(2616005)(31696002)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?RU1oanhQN3ZKTndkL2hmTTRRV0dVcU9iTXhaVVVDUGIxaVNtNnZvdVBDSk9i?=
 =?utf-8?B?TElSZ0tzU0VjdDd6OTRVVnhhTzFnaUtiUksvbzVaZjlnOHFYUExZQUp0ekg5?=
 =?utf-8?B?WWxnblBUa05HeE8xU0RHRTA2TWRCMjdmZEZzV0krU3BSRTFocGphRmEzT1kx?=
 =?utf-8?B?RjdWL090QmVHME5yaXpTYklYbC82UGppYms5bmNkV0txcmRMTXZDekJIUjRs?=
 =?utf-8?B?UDVxUjBzZXNJVjhEd0JaVml6ejJpRzRsRHpMRVdjc3plSjlxWUxTUTgwb1Vn?=
 =?utf-8?B?RzlhTnZZTnlzdTc5SFRiSnpiZytxMWN2T1lxcnlvY3ZGT2F6aUNoY2dQQnF5?=
 =?utf-8?B?OG0xSDRyZ0U4Y0JCZWxHeFpveXI1ZkVRM09hay9JeEIyVDF4QVY5NWhlVU9Q?=
 =?utf-8?B?MXpHd0N3VDZxOW8zTzdWTHJQVlRyemd0cHlacm9IZmtjcTRoM0hpeUhLQ2g2?=
 =?utf-8?B?cFpUL3Mzek1KVkpibSt3OGlUQXI0S2tUZnhLeUd0ZWNCNXZMSjRmUGE4Nk9r?=
 =?utf-8?B?VWk1dUZrclJnZ09mcUpnTVhuS0l2YVhLUEhqdTZ6QmVYTUhIaTBLcWoyaGRy?=
 =?utf-8?B?NGhxUElOM0xNcnJnVkNJSG1HNnVJUXp1K1NkV0QzZ0NKdTNqY2p1RlBZanlk?=
 =?utf-8?B?SUVWV2gvRkVaSWZLcjJ0M0hodGQ3KzFYbGhzUG5wVWVQOGIzZDhxeTc4QTR6?=
 =?utf-8?B?RklwVXJxWUwrdks2ZXMyYnpRa3Y4b0hxNkd4Z1dlM3lsbktiK3REaVNxQzlQ?=
 =?utf-8?B?Nk41eUs0blE2T1hHbEVEcEt2ckQ0NS83UzY0ai83Rm5qWmJGOW5IU0M1Vm1l?=
 =?utf-8?B?RWVZUVJEVVBYQlI2WEZMeVQzcHhHemcrTGF6WE5GUXFxQytiUG5mQU80dmI5?=
 =?utf-8?B?VjQ3RkdJQkdjMUI2Nmd1STRNSXFYNWpGcFpxZ0l3WWhQVVNTMzVDbFhybmtP?=
 =?utf-8?B?K21oSFdGaDRZcTc2MUFoQXIwUmdnOXNZNVFNQUV2b0dyb2c3M0ZWcXhTczZ3?=
 =?utf-8?B?b3FXd0NtU2JGa3VqVTdTa3lodlBqWkZmMnVadG5BL09IaGlyRmVvNHJ4Y25y?=
 =?utf-8?B?eW1seVU2bmo3UDRJUUkwMlRhakdJSTVFQ1BNbGR0UTVkZVgrN3RPUUkrSXRK?=
 =?utf-8?B?Wi90dFEyb1E4ZTJFUmNBN0J3VzIya1BlUEg5UE5OcDZaRWM4MzVKdVppY0Ex?=
 =?utf-8?B?Z3hwdGZMaXVEc0hhWHQwNnpLd2pFd2VNSHJPLzBUUkkzMUhtS2Z0L0NyM3Y5?=
 =?utf-8?B?L3k3N0RocTI3eUNLckdtSlFURVJMRGlyWnRuNnNMOExmWlZKOWFXNWNiU1dI?=
 =?utf-8?B?K1BjRXBrR0YxQkFMQjhiSTNPOVVXckJvSW9mYnFIeTNBUVlrc3U2NlIwanFl?=
 =?utf-8?B?Qm5ONkx0RXd4Q1NkOUc2MFFVazNCb0xDTVNiQlVDM0t3U3BUcGtKanJ0Vkpa?=
 =?utf-8?B?WUNvTW42cDZQdGFmOVpBK3NSZENFM2pScmw3NXJpVGhBWWd1T25SbHVGWjFR?=
 =?utf-8?B?VmdERDBRTUdvQjFITnBUa25pakZXemxlZnBpYnJpVVB6RHVySWlvdnIxNjhM?=
 =?utf-8?B?MVA3UDV3YnBaRklaTVYyN1BFc2tQRE9qQmIwTkEzMVNFTFFBUFdZVlM4anBr?=
 =?utf-8?B?WHBVZXFCSDgxSmJFNjE0Qm9HdkJQdUtsRm1aTkRIN09pek56a2R4RTBpYW9l?=
 =?utf-8?B?WFlOWlNKTEcxMUpqc1dyZ1I3ZnZocmcxRGFncFE2bTdaZ3ZMOEJmT1g0cGtJ?=
 =?utf-8?B?WlFpZWR3NXNGQkN1bTBwVnJnbkFPY3hBby96aUtoL2RWaWZMK0tpa1NqZXh2?=
 =?utf-8?B?Zjd2T2tuUGhQT0tjeGdMTmh3QkxFdFhJRzBucGlxaGROQ3JobDlKbmpCMlUz?=
 =?utf-8?B?VXYyNko0MWN5YWd5TUxIbE5LSjExNE8wbDhkTlUwbU5aNnVKTDJSZ093OEl1?=
 =?utf-8?B?RjV5WVdrY0Q5RWJNT0JRUjUzdVhUY0N4bkNadGg2Vmo4YTduRmZPaDdjYnVQ?=
 =?utf-8?B?NW9PVm03R1BON0NjR0RSQ2hiRWlZaElrek9rUEdQNk0yUHNVU0xtYVcrdmEx?=
 =?utf-8?B?b284Sm1ZdzJrSVJHMENDdkdkT2xpbXNZNm52UlNyb3NhR0g4dWIwRVVCNkpB?=
 =?utf-8?B?T0JOaGtGdC9rcGwxNXJFOExWNTI3NitrSDlLeFM0WGM5dk9Fa3ppcVpYcG9j?=
 =?utf-8?B?eUl5K1RybTJ5RVdpVjA3TFBkZmxveXFXek1xaCs2UkNaTEVlM1VOVEdNTjdP?=
 =?utf-8?Q?HkJ3/z0H3KhqVRv8KWwjHH0sc+Jc4cu0+80vHEyIng=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d82ecf6d-5608-4664-ff92-08db0287de06
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 06:04:37.3148
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XFTKr6BfSReaD9VZNtxvOL1XhPSGQ6Ctpn9YWC5kfMlTICNp4pnlcaJwbT3zgFpME+HhG5XJZPW0SvogbFokelUkYZj/rY7nvJfemQuNkMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_220451_328907_E0102C61 
X-CRM114-Status: GOOD (  18.58  )
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

SGksCgpPbiAxLzI3LzIzIDE2OjI5LCBLw7ZyeSBNYWluY2VudCB3cm90ZToKPiBIZWxsbywKPiAK
PiBJIGdvdCBhbiBpc3N1ZSB3aXRoIHRoZSByb2NrY2hpcF9kcm1fdm9wMiBkcml2ZXIuIEl0IGlz
IG5vdCB3b3JraW5nIHdlbGwgYWZ0ZXIKPiBhIHN1c3BlbmQgdG8gcmFtL3Jlc3VtZSBwcm9jZXNz
LiBUaGUgcGxhbmUgYW5kIGNydGMgc2VlbXMgb2ssIG1vZGV0ZXN0IHF1ZXJ5Cj4gZG9lcyBub3Qg
c2hvdyBhbnkgZGlmZmVyZW5jZXMsIGJ1dCB0aGVuIEkgc2VuZCB0aGUgdGVzdCBpbWFnZSB3aXRo
IG1vZGV0ZXN0Cj4gYWZ0ZXIgdGhlIHdha2V1cCBpdCBkb2VzIG5vdCB3b3JrLiBUaGUgRFNJIGNs
b2NrIGlzIHRvZ2dsaW5nIHRoZXJlZm9yZSBpdCBzZWVtcwo+IHRoYXQgbm8gb3Igd3JvbmcgZGF0
YSBpcyBzZW50LiBUaGUgdmJsYW5rIGludGVycnVwdCBhbHNvIHNlZW1zIHRvIGJlIGdlbmVyYXRl
ZC4gCj4gSWYgSSB1bmxvYWQgYW4gbG9hZCBhZ2FpbiB0aGUgcGFuZWwgbW9kdWxlIGl0IHdvcmtl
ZCBhZ2Fpbi4KPiBJIGFtIGNvbnRpbnVpbmcgdGhlIGludmVzdGlnYXRpb24uIERvIHlvdSBoYXZl
IGFuIGlkZWEgb2Ygd2hlcmUgdGhlIGlzc3VlIGNvdWxkCj4gY29tZSBmcm9tPwoKQ2M6IFNhc2No
YSAtPiBoYXZlIHlvdSBleHBlcmllbmNlZCBzb21ldGhpbmcgbGlrZSB0aGlzPwoKQmVzdCByZWdh
cmRzLApNaWNoYWVsCgo+IAo+IEFsc28gSSBmaWd1cmVkIG91dCBJIGdvdCBhIE5VTEwgcG9pbnRl
ciBkZXJlZmVyZW5jZSB3aGVuIHVubG9hZGluZyBpdCBhcyBhCj4gbW9kdWxlLiBJIGRvbid0IHRo
aW5rIGl0IGlzIHJlbGF0ZWQgYnV0IEkganVzdCB3YW50ZWQgdG8gcmVwb3J0IGl0Lgo+IAo+ICMg
cm1tb2Qgcm9ja2NoaXBkcm0ua28gCj4gWyAgIDc2LjAxNDc5Nl0gVW5hYmxlIHRvIGhhbmRsZSBr
ZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGF0IHZpcnR1YWwKPiBhZGRyZXNzIDAwMDAw
MDAwMDAwMDAwMDggWyAgIDc2LjAxNTYxNF0gTWVtIGFib3J0IGluZm86Cj4gWyAgIDc2LjAxNTg4
M10gICBFU1IgPSAweDAwMDAwMDAwOTYwMDAwMDUKPiBbICAgNzYuMDE2MjI1XSAgIEVDID0gMHgy
NTogREFCVCAoY3VycmVudCBFTCksIElMID0gMzIgYml0cwo+IFsgICA3Ni4wMTY3MzVdICAgU0VU
ID0gMCwgRm5WID0gMAo+IFsgICA3Ni4wMTcwMzJdICAgRUEgPSAwLCBTMVBUVyA9IDAKPiBbICAg
NzYuMDE3MzIxXSAgIEZTQyA9IDB4MDU6IGxldmVsIDEgdHJhbnNsYXRpb24gZmF1bHQKPiBbICAg
NzYuMDE3NzkxXSBEYXRhIGFib3J0IGluZm86Cj4gWyAgIDc2LjAxODA3MF0gICBJU1YgPSAwLCBJ
U1MgPSAweDAwMDAwMDA1Cj4gWyAgIDc2LjAxODQyMV0gICBDTSA9IDAsIFduUiA9IDAKPiBbICAg
NzYuMDE4NzE0XSB1c2VyIHBndGFibGU6IDRrIHBhZ2VzLCAzOS1iaXQgVkFzLCBwZ2RwPTAwMDAw
MDAwMDZiYjUwMDAKPiBbICAgNzYuMDE5MzA0XSBbMDAwMDAwMDAwMDAwMDAwOF0gcGdkPTAwMDAw
MDAwMDAwMDAwMDAsIHA0ZD0wMDAwMDAwMDAwMDAwMDAwLAo+IHB1ZD0wMDAwMDAwMDAwMDAwMDAw
IFsgICA3Ni4wMjAxNTFdIEludGVybmFsIGVycm9yOiBPb3BzOiAwMDAwMDAwMDk2MDAwMDA1IFsj
MV0KPiBTTVAgWyAgIDc2LjAyMDY4MF0gTW9kdWxlcyBsaW5rZWQgaW46IHJvY2tjaGlwZHJtKC0p
IGR3X21pcGlfZHNpCj4gWyAgIDc2LjAyMTE5NV0gQ1BVOiAxIFBJRDogMzY1IENvbW06IHJtbW9k
IE5vdCB0YWludGVkIDYuMS44KyAjMTEKPiBbICAgNzYuMDIxNzI3XSBIYXJkd2FyZSBuYW1lOiBV
bmZvbGRlZCBDaXJjbGUgUmVtb3RlIFR3byByZXYxIChEVCkKPiBbICAgNzYuMDIyMjU5XSBwc3Rh
dGU6IDYwNDAwMDA5IChuWkN2IGRhaWYgK1BBTiAtVUFPIC1UQ08gLURJVCAtU1NCUyBCVFlQRT0t
LSkKPiBbICAgNzYuMDIyODgxXSBwYyA6IG1pcGlfZHNpX2RldGFjaCsweDEwLzB4NDQKPiBbICAg
NzYuMDIzMjYxXSBsciA6IG1pcGlfZHNpX3JlbW92ZV9kZXZpY2VfZm4rMHgyNC8weDQwCj4gWyAg
IDc2LjAyMzcwOV0gc3AgOiBmZmZmZmZjMDBhN2IzYjIwCj4gWyAgIDc2LjAyNDAwNV0geDI5OiBm
ZmZmZmZjMDBhN2IzYjIwIHgyODogZmZmZmZmODAwNTcxNmFjMCB4Mjc6IDAwMDAwMDAwMDAwMDAw
MDAKPiBbICAgNzYuMDI0NjQ0XSB4MjY6IDAwMDAwMDAwMDAwMDAwMDAgeDI1OiAwMDAwMDAwMDAw
MDAwMDAwIHgyNDogMDAwMDAwMDAwMDAwMDAwMAo+IFsgICA3Ni4wMjUyODJdIHgyMzogMDAwMDAw
MDAwMDAwMDAwMCB4MjI6IGZmZmZmZmMwMDBiOTQ0MjAgeDIxOiBmZmZmZmZjMDA4NjYxYmQwCj4g
WyAgIDc2LjAyNTkyNF0geDIwOiAwMDAwMDAwMDAwMDAwMDAwIHgxOTogZmZmZmZmODAwNTZkNTAw
MCB4MTg6IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAgNzYuMDI2NTYxXSB4MTc6IDAwMDAwMDAwMDAw
MDAwMDAgeDE2OiAwMDAwMDAwMDAwMDAwMDAwIHgxNTogMDAwMDAwMDAwMDAwMDAwMAo+IFsgICA3
Ni4wMjcxOTldIHgxNDogMDAwMDAwMDAwMDAwMDAwMCB4MTM6IDM2MzQzNTIwNjk2ZTY5NjYgeDEy
OiA1ZjZkNzI2NDVmNzA2OTY4Cj4gWyAgIDc2LjAyNzgzNl0geDExOiAwMDAwMDAwMDAwMDAwMDAw
IHgxMDogMDAwMDAwMDAwMDAwMDAwMCB4OSA6IGZmZmZmZmMwMDg2NjFiZjQKPiBbICAgNzYuMDI4
NDcyXSB4OCA6IDAxMDEwMTAxMDEwMTAxMDEgeDcgOiA3ZjdmN2Y3ZjdmN2Y3ZjdmIHg2IDogNzM2
ZDQ3ZmY2MzY0NjI2ZAo+IFsgICA3Ni4wMjkxMTBdIHg1IDogMDAwMDAwODAwMDAwMDAwMCB4NCA6
IDAwMDAwMDAwMDAwMDAwMDAgeDMgOiBmZmZmZmY4MDAyZDIwZjAwCj4gWyAgIDc2LjAyOTc0N10g
eDIgOiAwMDAwMDAwMDAwMDAwMDAxIHgxIDogZmZmZmZmODAwNTZkNGZmOCB4MCA6IDAwMDAwMDAw
MDAwMDAwMDAKPiBbICAgNzYuMDMwMzg4XSBDYWxsIHRyYWNlOgo+IFsgICA3Ni4wMzA2MTVdICBt
aXBpX2RzaV9kZXRhY2grMHgxMC8weDQ0Cj4gWyAgIDc2LjAzMDk2MV0gIGRldmljZV9mb3JfZWFj
aF9jaGlsZCsweDY4LzB4YjgKPiBbICAgNzYuMDMxMzUxXSAgbWlwaV9kc2lfaG9zdF91bnJlZ2lz
dGVyKzB4NDAvMHg3OAo+IFsgICA3Ni4wMzE3NjBdICBkd19taXBpX2RzaV9yZW1vdmUrMHgyNC8w
eDUwIFtkd19taXBpX2RzaV0KPiBbICAgNzYuMDMyMjQzXSAgZHdfbWlwaV9kc2lfcm9ja2NoaXBf
cmVtb3ZlKzB4MjAvMHgzMCBbcm9ja2NoaXBkcm1dCj4gWyAgIDc2LjAzMjgwNF0gIHBsYXRmb3Jt
X3JlbW92ZSsweDMwLzB4NjAKPiBbICAgNzYuMDMzMTQ2XSAgZGV2aWNlX3JlbW92ZSsweDU0LzB4
N2MKPiBbICAgNzYuMDMzNDcyXSAgZGV2aWNlX3JlbGVhc2VfZHJpdmVyX2ludGVybmFsKzB4OTQv
MHgxNTAKPiBbICAgNzYuMDMzOTMzXSAgZHJpdmVyX2RldGFjaCsweGY4LzB4MTA0Cj4gWyAgIDc2
LjAzNDI2NV0gIGJ1c19yZW1vdmVfZHJpdmVyKzB4YmMvMHhlOAo+IFsgICA3Ni4wMzQ2MjBdICBk
cml2ZXJfdW5yZWdpc3RlcisweDU4LzB4NWMKPiBbICAgNzYuMDM0OTc1XSAgcGxhdGZvcm1fdW5y
ZWdpc3Rlcl9kcml2ZXJzKzB4ODQvMHg4OAo+IFsgICA3Ni4wMzU0MDZdICByb2NrY2hpcF9kcm1f
ZmluaSsweDYwLzB4MTBmOCBbcm9ja2NoaXBkcm1dCj4gWyAgIDc2LjAzNTg5OV0gIF9fYXJtNjRf
c3lzX2RlbGV0ZV9tb2R1bGUrMHgyMTQvMHgyNTAKPiBbICAgNzYuMDM2MzM0XSAgaW52b2tlX3N5
c2NhbGwrMHg4NC8weDExYwo+IFsgICA3Ni4wMzY2NzddICBlbDBfc3ZjX2NvbW1vbi5jb25zdHBy
b3AuMCsweGMwLzB4ZWMKPiBbICAgNzYuMDM3MDk5XSAgZG9fZWwwX3N2YysweDljLzB4YzQKPiBb
ICAgNzYuMDM3NDAxXSAgZWwwX3N2YysweDJjLzB4NTQKPiBbICAgNzYuMDM3Njg0XSAgZWwwdF82
NF9zeW5jX2hhbmRsZXIrMHg5NC8weDEwMAo+IFsgICA3Ni4wMzgwNzRdICBlbDB0XzY0X3N5bmMr
MHgxOTAvMHgxOTQKPiBbICAgNzYuMDM4NDE1XSBDb2RlOiBhYTFlMDNlOSBkNTAzMjAxZiBhYTAw
MDNlMSBmOTQwMDAwMCAoZjk0MDA0MDIpIAo+IFsgICA3Ni4wMzg5NjFdIC0tLVsgZW5kIHRyYWNl
IDAwMDAwMDAwMDAwMDAwMDAgXS0tLQo+IFNlZ21lbnRhdGlvbiBmYXVsdAo+IAo+IFJlZ2FyZHMs
Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
