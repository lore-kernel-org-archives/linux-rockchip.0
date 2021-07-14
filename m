Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D27C2C07E9A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 09:19:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9B8A36128B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 09:19:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9B8A36128B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J7mYKMs4EC6MTSljGyc9y/C0T0Dq9DmI3tbybTDbWeA=; b=N2yHnZ11nz6m66ygVuwlLDTV9S
	itxLCtD0egRR31RqHYceYAKkNIYiUNOQZteoFxB4S9CSpPPRwx9wlJnpTZarRToQUL6k6sRu+YT9K
	YqqUXjY6yc5mkltT6pqDvZedMVQ/qBz0HYB498DWr7AvbvhyBkMIqn5Pl12cj+QjuqFGaaNIyzS4c
	vpSGNNWCqLh/QdhRFK2Q7Pbir/BQrh3nVtYafXcWXQNdUXMFwVa3Mu9W4Y2CYb0EAqK9SvrA78cZu
	R1rsFOcVD4AXJZKD+FUIJxa7z5W82G3I15xS3ebVimHAX+Z9k3Bj9zRGEfkUTcv0jltnt7IczmpMN
	kgOVEO0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3b3S-00Cs5D-4q; Wed, 14 Jul 2021 09:19:46 +0000
Received: from mail-eopbgr00064.outbound.protection.outlook.com ([40.107.0.64]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3b3P-00Cs1G-7E; Wed, 14 Jul 2021 09:19:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bKxBdUVvRQrgem8ymWoGr3giEkZ8RqfJ7S55jN/gsVfZgIto5vcKAa6rGuBHmNyKhu5VN13kX71eMHZlU1Uyp+rqTrA3eYmatHg2CbODLIyEjEeXZcl02de5AvCLIAwxcKGdOYCXnc/uxSOtcbvhh2sdBVffnRLPHYPT+UVbDI+ztsoNZpF3SXye+EXRvQdtwzlB1m/UxBwww2HP8HvqJMm3s6NzSp8VWw4kS6p8WAplHP+n3jdRfHWzEQENDry4zELUFRbCN5suEggDvBKFqJ0F/HG/2Z7g/HLP+WtPVcNRa0Ae+aX0yA6MuZQz1KP9ChZzJ++R8kLhvwmYlmmRQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yQsy4ZKJ0Ez5bIpR/+Ah/ZKiUK/KrzAL8RpnJr+GIfg=;
 b=l7s8BINtXQ27hhF4zNFwaB/LcZJ9oDcccT0j945JnTYSjKjuFs6Jkf/x79s8c6EvTuODfGDi3r7xC4bUS5jjpk0uYEI2Tmc/9CK/xugPB4ZLAuTtaniKDOE6rJQxDNksYZ6itlumBkmpsWPrSkAU88OoOifYoP4baPabVjO0H8SH7aiqB0bJ7lVGUT1we9qtJoudarYDfChAidWHhNWZMraI/6sKle18vOQ9rVPVskQKV/6U8N7tDe3coVZTRC3awQyQ9hX/1VlYTRCoCrtKYUXRnf6wVjUtdyuDjxOGzb7/RU8LxfJ4UHz3vl8RcQRYaHl7dThEDZA4npgh8qodkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yQsy4ZKJ0Ez5bIpR/+Ah/ZKiUK/KrzAL8RpnJr+GIfg=;
 b=SKCeNWo8FEi8s6A6kyhZ6qVil6CikffYp42pB6gjLUqVsdPBQMUZ8mtKvembhpCe+TxDzV1TAun5t/8e2T2zZIfyXvH+w7A0rXuorClaKaA3NVK45W9Oi8RXzBDUkWS/zu/UVMCBv9evbn0BhgGwziwcWW1UyBMWynsd26B04CM=
Authentication-Results: collabora.com; dkim=none (message not signed)
 header.d=none;collabora.com; dmarc=none action=none
 header.from=wolfvision.net;
Received: from AM0PR08MB4516.eurprd08.prod.outlook.com (2603:10a6:208:13b::14)
 by AM9PR08MB6803.eurprd08.prod.outlook.com (2603:10a6:20b:301::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Wed, 14 Jul
 2021 09:19:37 +0000
Received: from AM0PR08MB4516.eurprd08.prod.outlook.com
 ([fe80::490d:17f7:8463:c167]) by AM0PR08MB4516.eurprd08.prod.outlook.com
 ([fe80::490d:17f7:8463:c167%7]) with mapi id 15.20.4308.027; Wed, 14 Jul 2021
 09:19:37 +0000
Subject: Re: [PATCH v2 1/2] dt-bindings: display: rockchip: Add compatible for
 rk3568 HDMI
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, hjc@rock-chips.com,
 airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
 algea.cao@rock-chips.com, andy.yan@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20210707120323.401785-1-benjamin.gaignard@collabora.com>
 <20210707120323.401785-2-benjamin.gaignard@collabora.com>
 <1bd64284-0a20-12e3-e2e7-19cdfdbf1a25@wolfvision.net>
 <3865833.Ac65pObt5d@diego>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <33532a38-52e6-179a-9ed9-76bbb9618168@wolfvision.net>
Date: Wed, 14 Jul 2021 11:19:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <3865833.Ac65pObt5d@diego>
Content-Language: en-US
X-ClientProxiedBy: AS8PR04CA0040.eurprd04.prod.outlook.com
 (2603:10a6:20b:312::15) To AM0PR08MB4516.eurprd08.prod.outlook.com
 (2603:10a6:208:13b::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 AS8PR04CA0040.eurprd04.prod.outlook.com (2603:10a6:20b:312::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend
 Transport; Wed, 14 Jul 2021 09:19:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c961f310-a969-4dce-b761-08d946a88088
X-MS-TrafficTypeDiagnostic: AM9PR08MB6803:
X-Microsoft-Antispam-PRVS: <AM9PR08MB6803A0EE62EDF6FE30FF62BBF2139@AM9PR08MB6803.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WBxII1fER60rQ28MmPd0Sv9qWEA8VU6IR09oz2/6W+qjBYMmPLZoTK05eg5rAyHdpPlOK2KIcTOvbWE7H3MhejilWeod0N77bKEzdSEVn9V787cIFTJOzfFSs+IYeE6OGryUlmwxcaGnmNCAbZ2upFGB9XttFfAR+YyxqH0Zg9aE4oiYdkbrQcgPjncb4ofTUewGwtnllD4eIsznW1iuMWR1hOgoRljrWOfbVmD3xjRckL0BZ63MsANHMrtAOi18ogKJBvPq1pDvLAgt+d8KUOC02lpBLRmx6vQSR8w9UOaQ7x+WFXzwHUx5nm4jEEAgS45e6SQw4q0mPwActjfvxwtYHkF2vW9I1GwSInuBz2Ysvg6tvmAt5xExDRI8m5t2c67Yu3oAS3BhfUALnToJowq9Vbs83Q+hZ+GJ7Ovz3QG2pbasfzKTDiovlwaVkHQY21wdmjf3DbjG3rjQoyuvGmXBf8L5nbcVPZzCuB3yBi7XURaW3CD8WsN7h//Dx/ePbusbar72SgZ6NBS8h6osG6DPkKiQ+TpJKoJXHPuilL0snfnhS9JBCRUJtfYwpkP99/UMpzJUucK7gslKGWM1AV/xk1H/xL1mGz8HYZDVvTEvtsO4qDNf1gVoK4nnUVyoFvSH0tR4jy8e/KKBnKANa5nYBUkDdz7r9eVkYe7HyDwJs90sjI6ppqndSTTKJHBwm808MoOZhmk5St1uIajbi7iG5kKMj06e2LpkrQh70YnvfEIrrGzDsfZ49bpNOsKBvwzhbs9Ku4VAiNyXOe/ZNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR08MB4516.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(366004)(39840400004)(376002)(396003)(66946007)(66476007)(66556008)(8676002)(2616005)(7416002)(186003)(83380400001)(8936002)(316002)(53546011)(38350700002)(52116002)(38100700002)(36916002)(66574015)(5660300002)(110136005)(44832011)(2906002)(16576012)(478600001)(36756003)(31686004)(4326008)(6486002)(86362001)(956004)(31696002)(966005)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXEwSW1TNGhUTVFYSklqcTg4bmlPYldkaGpHeUdKbTU0UzM5NEI5aGNoMFla?=
 =?utf-8?B?U2lXRDNCbXUzOXpwNVBBVmhWeTdocHFxaldNNmorKzh2Q2k2T1JVSE5kbGEw?=
 =?utf-8?B?MVIyY2lZZDJGY09kNitieVNSMndnTmtCcTdFT0JqUWs1OXRIazlPdVZxKzE2?=
 =?utf-8?B?azFsSUQ2SWNaK2JNWG1SeTRiQ2E4eUZlZjZjN0RtY0d1OVJoTVdvSGZVQ01H?=
 =?utf-8?B?MVFTY1VwWkZmb2lHSjlzKy9qc2t3K09ITWs3VVp5NURLL05nQjB5TjdJME5N?=
 =?utf-8?B?YmtFOUpqaTdXNzdZejQzU0x3dm43eDFjYXRXMmpBSkNaalBCMUJQamJFZnly?=
 =?utf-8?B?Mmp1eWhPRytQRG9CODV6UGpUTFp0eG83eFBBNU5FQ1JuUGJJaEk3RW9LcVBp?=
 =?utf-8?B?RkRhYmpxd3NUd0xIMEdkSFN6cDY5M3cvbTArSjEzajFuclkxL3oxa3l3dzBB?=
 =?utf-8?B?YzhQQzNjdEdxYUd2ZjFPU0s2VFgxM2hMbWxGbVdxdmVGYnVkVE80ZjRORlFz?=
 =?utf-8?B?SXFiZXhkWWRlMHFLMjR1bUVseDRuNXZobGdoU05GZDZBbEwyRTZXNE9ZNW1s?=
 =?utf-8?B?clplbGdiZVVWeXRIeFMwUnR5cGtBUVhsbzNPbVBSbWVIUHRMaG1xTDNRcGxn?=
 =?utf-8?B?YWRBSGpCTDkxRVIvS3NSNWk5elVhallKTFdrek1pWEs3NklyY0l5dDZpZjNX?=
 =?utf-8?B?QWVQUnYzckFiNHFReDhIYkVVa24zdTRtMENlSlZwNmdsS0NKdE13RG9LdElS?=
 =?utf-8?B?aGgzN2hKQnpKWFdNNmpNdGJHUFlpR04rVndZM0x5ZmJCVGFJajdFK2wvVE10?=
 =?utf-8?B?K2p0aUNrOTZiY0Iyanh0dkV2UE9hbitoTFloWnY5RGZCTnZhLzF5SHZEUi9M?=
 =?utf-8?B?VnlUZXBwdmIxWHFVWUp3RUFjUWFlTS9iUEI1K3BNZ0ZsbC8wOHJkK09sMjQy?=
 =?utf-8?B?YVBXMnNZVjFLbHRteUoyYzUydEZncStKUEluMDcyckV2Wnl6WFBORVdGTHBj?=
 =?utf-8?B?dFVsbVFXOGJnK2g5a0tLYXJobzRkZVJCbytHU1RqOU1BbGlST3F6UHRORDly?=
 =?utf-8?B?WDR2NkJCR0l3OGRTRWVXRFd3cUNLWCtvS0dhR3Q0Vm5wYm9FMFlUeThxa0JF?=
 =?utf-8?B?bjc0dXRqRU51ZXgxRTVicVdoZU85Vlk4WU5zdjdvOFZTMnBqWlI2VjZMdjNL?=
 =?utf-8?B?czdyejZYSVRsSVZBOXV2S2lwTjJFajVTekdtVkxOd3lMNHdpd29VTVc2QUhq?=
 =?utf-8?B?ZVhxMXJubFZERnd6dHJJaUgxK3RjL2VleFR3YlZpajhYU0hmL0hyUGYzNHl1?=
 =?utf-8?B?U0tGUi9oRGxrUHdwcmR6WXVoeGV2MjdqN2xuM0dya3dLUmxuL0pGVEUxbndO?=
 =?utf-8?B?M0FYdHp5aFVpK1UyRWNxR0I5SzJFU0VBZjNQY3pHUXlpRjYwMlI4SjE5d3VY?=
 =?utf-8?B?Z0hCSk9ieUdUR2xnak1rUEdOTlBmK2R4MElxTkxQbXkwOVloeGl5SHhsRURY?=
 =?utf-8?B?eUdZTUVaeUtpbUticjNrRzZGOFlWZEgxSTNQdFIvejhidCthd041aVZ5cEVL?=
 =?utf-8?B?bU8zblRLa2xxZ0ZEYnB5cFRWTWhsdCtaRGVzTmFRTWxnYWpuT003YlVsSjRG?=
 =?utf-8?B?ZHhKWmJRWllXc051dDE2OWtRajZOcjVTYkZHc1o1VG44RFp4RTlCUHBaZlBR?=
 =?utf-8?B?a3lRbjZuQUhGSXJCbTZ1SHBpODIyaG5Ta25Mc1VmT2VMdHQ1OWpFWDlBam5u?=
 =?utf-8?Q?FafsklQSJKoLVGlK5cYKrVxcfkVPP5fpl/324WZ?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c961f310-a969-4dce-b761-08d946a88088
X-MS-Exchange-CrossTenant-AuthSource: AM0PR08MB4516.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2021 09:19:37.5588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6jf55n0gRjyk0PTCuKIqAPmhdF0aTFfwaINjDoQSCKN+cUw1AsctfOjxCwLVpQ4x+3P/hXjMvxRQsrBq3c1aFWf6/lRBhjYC3DguyRMtBlM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6803
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_021943_298838_D3BA1F7A 
X-CRM114-Status: GOOD (  32.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGVsbG8gSGVpa28sCgpPbiA3LzEzLzIxIDEwOjQ5IEFNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBIaSBNaWNoYWVsLAo+IAo+IEFtIERpZW5zdGFnLCAxMy4gSnVsaSAyMDIxLCAxMDo0NDowMCBD
RVNUIHNjaHJpZWIgTWljaGFlbCBSaWVzY2g6Cj4+IFRoZSBIRE1JIFRYIGJsb2NrIGluIHRoZSBS
SzM1NjggcmVxdWlyZXMgdHdvIHBvd2VyIHN1cHBsaWVzLCB3aGljaCBoYXZlCj4+IHRvIGJlIGVu
YWJsZWQgaW4gc29tZSBjYXNlcyAoYXQgbGVhc3Qgb24gdGhlIFJLMzU2OCBFVkIxIHRoZSB2b2x0
YWdlcwo+PiBWRERBMFY5X0lNQUdFIGFuZCBWQ0NBMVY4X0lNQUdFIGFyZSBkaXNhYmxlZCBieSBk
ZWZhdWx0KS4gSXQgd291bGQgYmUKPj4gZ3JlYXQgaWYgdGhpcyB3YXMgY29uc2lkZXJlZCBieSB0
aGUgZHJpdmVyIGFuZCB0aGUgZGV2aWNlIHRyZWUgYmluZGluZy4KPj4gSSBhbSBub3Qgc3VyZSwg
dGhvdWdoLCB3aGV0aGVyIHRoaXMgaXMgYSBSSzM1Njggc3BlY2lmaWMgb3IKPj4gcm9ja2NoaXBf
ZHdfaGRtaSBzcGVjaWZpYyB0aGluZy4gTWF5YmUgaXQgY2FuIGV2ZW4gZW50ZXIgdGhlIFN5bm9w
c2lzIERXCj4+IEhETUkgZHJpdmVyLgo+IAo+IEkgZG8gcmVtZW1iZXIgdGhhdCB0aGlzIGRpc2N1
c3Npb24gaGFwcGVuZWQgbWFueSB5ZWFycyBiYWNrIGFscmVhZHkuCj4gQW5kIHllcyB0aGUgc3Vw
cGxpZXMgYXJlIG5lZWRlZCBmb3IgYWxsIGJ1dCBiYWNrIHRoZW4gdGhlcmUgd2FzIG9wcG9zaXRp
b24KPiBhcyB0aGVzZSBhcmUgc3VwcG9zZWRseSBwaHktcmVsYXRlZCBzdXBwbGllcywgbm90IGZv
ciB0aGUgZHctaGRtaSBpdHNlbGYuCj4gW1RoZXJlIGFyZSB2YXJpYW50cyB3aXRoIGFuIGV4dGVy
bmFsIHBoeSwgbGlrZSBvbiB0aGUgcmszMzI4XQo+IAo+IFNlZSBkaXNjdXNzaW9uIG9uIFswXQo+
IAo+IFswXSBodHRwczovL2RyaS1kZXZlbC5mcmVlZGVza3RvcC5uYXJraXZlLmNvbS9wZW4yeldv
MS9wYXRjaC12My0xLTItZHJtLWJyaWRnZS1kdy1oZG1pLXN1cHBvcnQtb3B0aW9uYWwtc3VwcGx5
LXJlZ3VsYXRvcnMKClRoYW5rcyBmb3IgdGhlIHBvaW50ZXIuIE15IHN1bW1hcnkgb2YgdGhpcyBk
aXNjdXNzaW9uIHdvdWxkIGJlIHRoZQpmb2xsb3dpbmc6CgogLSBUaGVyZSB3YXMgbm8gY29uc2Vu
c3VzIG9uIGhvdyB0byBoYW5kbGUgdGhlIGlzc3VlLiBUaGUgdm9sdGFnZXMgc3RpbGwKaGF2ZSB0
byBiZSBlbmFibGVkIGZyb20gdGhlIG91dHNpZGUgb2YgdGhlIGRyaXZlci4KIC0gT3BlbiBxdWVz
dGlvbjogcm9ja2NoaXAtc3BlY2lmaWMgb3IgZ2VuZXJhbCBzb2x1dGlvbj8gKG9uZSBtYXkgZGV0
ZWN0CmEgdGVuZGVuY3kgdG93YXJkcyBhIHJvY2tjaGlwLXNwZWNpZmljIHNvbHV0aW9uKQogLSBP
cGVuIHF1ZXN0aW9uOiBzZXBhcmF0aW9uIG9mIHRoZSBwaHkgZnJvbSB0aGUgZHdfaGRtaSBJUCBj
b3JlPwoKRmlyc3Qgb2YgYWxsLCBJTUhPIHRoZSBkcml2ZXIgc2hvdWxkIGVuYWJsZSB0aG9zZSB2
b2x0YWdlcywgb3RoZXJ3aXNlIHdlCndpbGwgaGF2ZSB0aGUgc2FtZSBkaXNjdXNzaW9uIGFnYWlu
IGluIDUtNiB5ZWFycyA6LSkKClRoZW4sIHRoZSByb2NrY2hpcCxkdy1oZG1pIGJpbmRpbmcgZmVh
dHVyZXMgYSBwcm9wZXJ0eSAicGh5cyIsCnByZXN1bWFibHkgdG8gaGFuZGxlIGV4dGVybmFsIHBo
eXMgKGUuZy4sIGZvciB0aGUgUkszMzI4KS4gVGhpcyBmYWN0IGFuZAp0aGUgcmVmZXJlbmNlZCBk
aXNjdXNzaW9uIHN1Z2dlc3QgYSByb2NrY2hpcC1zcGVjaWZpYyBzb2x1dGlvbi4KCkluIHRoZSBS
b2NrY2hpcCBkb2N1bWVudGF0aW9uIChhdCBsZWFzdCBmb3IgUkszMzI4LCBSSzMzOTkgYW5kIFJL
MzU2OCksCnRoZXJlIGFyZSB0d28gZXh0cmEgdm9sdGFnZXMgZGVub3RlZCBhcyAiSERNSSBQSFkg
YW5hbG9nIHBvd2VyIi4gSXQKd291bGQgYmUgdGVtcHRpbmcgdG8gYWRkIHRoZSBpbnRlcm5hbCBw
aHkgdG8gdGhlIGRldmljZSB0cmVlIGFuZCBnbHVlIGl0CnRvIHRoZSBkdy1oZG1pIHVzaW5nIHRo
ZSAicGh5cyIgcHJvcGVydHkuIEhvd2V2ZXIsIGFzIHBvaW50ZWQgb3V0IGluIHRoZQpyZWZlcmVu
Y2VkIGRpc2N1c3Npb24sIHRoZSBjb25maWd1cmF0aW9uIHJlZ2lzdGVycyBvZiB0aGUgcGh5IGFy
ZQpzb21ld2hhdCBpbnRlcmxlYXZlZCB3aXRoIHRoZSBkdy1oZG1pIHJlZ2lzdGVycyBhbmQgYSBj
bGVhciBzZXBhcmF0aW9uCm1heSBiZSB0cmlja3kuCgpBcyBhIG1vcmUgcHJhZ21hdGljIGFsdGVy
bmF0aXZlLCB3ZSBjb3VsZCBhZGQgb3B0aW9uYWwgc3VwcGxpZXMgdG8gdGhlCnJvY2tjaGlwLGR3
LWhkbWkgYmluZGluZyBhbmQgZXZhbHVhdGUgdGhlICJwaHlzIiBwcm9wZXJ0eS4gSWYgdGhlIGxh
dHRlcgppcyBub3Qgc3BlY2lmaWVkLCB0aGUgaW50ZXJuYWwgcGh5IGlzIHVzZWQgYW5kIHRoZSBz
dXBwbGllcyBtdXN0IGJlCmVuYWJsZWQuIFdvdWxkIHN1Y2ggYW4gYXBwcm9hY2ggYmUgYWNjZXB0
YWJsZT8KCkJlc3QgcmVnYXJkcywKTWljaGFlbAoKPj4gT24gNy83LzIxIDI6MDMgUE0sIEJlbmph
bWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gRGVmaW5lIGEgbmV3IGNvbXBhdGlibGUgZm9yIHJrMzU2
OCBIRE1JLgo+Pj4gVGhpcyB2ZXJzaW9uIG9mIEhETUkgaGFyZHdhcmUgYmxvY2sgbmVlZHMgdHdv
IG5ldyBjbG9ja3MgaGNsa192aW8gYW5kIGhjbGsKPj4+IHRvIHByb3ZpZGUgcGh5IHJlZmVyZW5j
ZSBjbG9ja3MuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+IHZlcnNpb24gMjoKPj4+IC0g
QWRkIHRoZSBjbG9ja3MgbmVlZGVkIGZvciB0aGUgcGh5Lgo+Pj4KPj4+ICAuLi4vYmluZGluZ3Mv
ZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1oZG1pLnlhbWwgICAgICAgICB8IDYgKysrKyst
Cj4+PiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4K
Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1oZG1pLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1oZG1pLnlhbWwKPj4+IGlu
ZGV4IDc1Y2Q5YzY4NmU5ODUuLmNiODY0M2IzYThiODQgMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1o
ZG1pLnlhbWwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNw
bGF5L3JvY2tjaGlwL3JvY2tjaGlwLGR3LWhkbWkueWFtbAo+Pj4gQEAgLTIzLDYgKzIzLDcgQEAg
cHJvcGVydGllczoKPj4+ICAgICAgICAtIHJvY2tjaGlwLHJrMzI4OC1kdy1oZG1pCj4+PiAgICAg
ICAgLSByb2NrY2hpcCxyazMzMjgtZHctaGRtaQo+Pj4gICAgICAgIC0gcm9ja2NoaXAscmszMzk5
LWR3LWhkbWkKPj4+ICsgICAgICAtIHJvY2tjaGlwLHJrMzU2OC1kdy1oZG1pCj4+PiAgCj4+PiAg
ICByZWctaW8td2lkdGg6Cj4+PiAgICAgIGNvbnN0OiA0Cj4+PiBAQCAtNTEsOCArNTIsMTEgQEAg
cHJvcGVydGllczoKPj4+ICAgICAgICAgICAgLSB2cGxsCj4+PiAgICAgICAgLSBlbnVtOgo+Pj4g
ICAgICAgICAgICAtIGdyZgo+Pj4gKyAgICAgICAgICAtIGhjbGtfdmlvCj4+PiArICAgICAgICAg
IC0gdnBsbAo+Pj4gKyAgICAgIC0gZW51bToKPj4+ICsgICAgICAgICAgLSBoY2xrCj4+PiAgICAg
ICAgICAgIC0gdnBsbAo+Pj4gLSAgICAgIC0gY29uc3Q6IHZwbGwKPj4KPj4gVGhlIGRlc2NyaXB0
aW9uIGFuZCBkb2N1bWVudGF0aW9uIG9mIHRoZSBjbG9ja3MgYXJlIHNvbWV3aGF0IG1pc2xlYWRp
bmcKPj4gSU1ITy4gVGhpcyBpcyBub3QgY2F1c2VkIGJ5IHlvdXIgcGF0Y2hlcywgb2YgY291cnNl
LiBCdXQgbWF5YmUgdGhpcyBpcyBhCj4+IGNoYW5jZSB0byBjbGVhbiB0aGVtIHVwIGEgYml0Lgo+
Pgo+PiBJdCBzZWVtcyB0aGF0IHRoZSBDRUMgY2xvY2sgaXMgYW4gb3B0aW9uYWwgY2xvY2sgb2Yg
dGhlIGR3LWhkbWkgZHJpdmVyLgo+PiBTaG91bGRuJ3QgaXQgYmUgZG9jdW1lbnRlZCBpbiB0aGUg
c3lub3BzeXMsZHctaGRtaS55YW1sPwo+Pgo+PiBBbHNvLCBpdCB3b3VsZCBiZSBuaWNlIGlmIHRo
ZSBjbG9ja3MgaGNsa192aW8gYW5kIGhjbGsgZmVhdHVyZWQgYQo+PiBkZXNjcmlwdGlvbiBpbiB0
aGUgYmluZGluZy4KPj4KPj4gQlRXLCBJIGFtIG5vdCB0b28gZmFtaWxpYXIgd2l0aCB0aGUgc3lu
dGF4IGhlcmUsIGJ1dCBzaG91bGRuJ3QgaXRlbXMgaW4KPj4gY2xvY2tzIGFuZCBpdGVtcyBpbiBj
bG9jay1uYW1lcyBiZSBhbGlnbmVkIChjdXJyZW50bHksIHRoZXJlIGlzIGEgcGxhaW4KPj4gbGlz
dCB2cy4gYW4gZW51bSBzdHJ1Y3R1cmUpPwo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IE1pY2hhZWwK
Pj4KPj4+ICAKPj4+ICAgIGRkYy1pMmMtYnVzOgo+Pj4gICAgICAkcmVmOiAvc2NoZW1hcy90eXBl
cy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4+Pgo+Pgo+IAo+IAo+IAo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
