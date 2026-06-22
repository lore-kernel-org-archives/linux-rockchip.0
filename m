Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DAEDCDB471
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jun 2026 07:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUWaL3ZOGZz7r78WLwFNBFFquEbXraoCzIHWEaI9FFo=; b=3tGUV2d+chMixy
	nbOreVTLtBNQKHyPWweVjxbKDhVOPeQuKk1L98wUT+HwRkSy1PZSNt+DtmqzmgxIgmeFimoCiaYaH
	3GQEuwNzEot1oghZ4m0xzfKIE1MpJntoAdaszB+5JXHchugzeL9D5hc4exjaaBsD8GBB9cYF5pkOw
	h2Af0NOh9bMw4ditfpZOt6H1r1SDh1MkrmI/TNoakDWQ2ADO2mL8fpKbe6Ry3IJmXEiHh8YxcQbr4
	m5tEqEde59oZd7h+Qo9TCeRtffTZPg0fNc7LUVwnPiovxZlRW4a30/oTeSDPMlFjG60E0GIs7nehl
	0Qeg7wqTB57lU6CkEGmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbZM7-00000004YZb-07Xu;
	Mon, 22 Jun 2026 07:46:07 +0000
Received: from mail-southcentralusazlp170130001.outbound.protection.outlook.com ([2a01:111:f403:c10c::1] helo=SA9PR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbZM4-00000004YYj-2VG6;
	Mon, 22 Jun 2026 07:46:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AaCUZWb1S/nQZBz3U+jGnYcmooIeVjKuhF8qIUzJ8IPzBtSzN3Kii+aF7GJsYpFmFqKxql2/osf+caqgM0asu9YuCBqFHEqNlJSdsac5eruHVWBAbrR2sGDl3qG+1/xrx5wgX7EGvlYI5pI2v5+8YPacVGLkN/LKUHoVh30/QrEGUvoSQEB71ZXraw8WjObIoIhg+wVEfUWpm2KFGo//bpR13tJjZf/JxoSr5JBv8ajB4yp3l9H7CezQ4fja8+OyA09VgTTlCsR45eUf/pSN1TY5pVtKFggBm/uZ5oN6u/9qD6WXfCV2THNuy3Cyt0aGEO65vsRYmEHsmjwEfJL0Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lZ+lmYvVf0jgQasl1JbFYUiePpIc+dS1sF2VI2OaKfo=;
 b=VEZiS5qvLEAeNBtq/wTquRBmtPfenB9rj40w9Un4HHeC31+lDxG17IR8bVHzED7HrEt9QyadH/QUVKJN4CbPPfhfNWuqYLthpIPb+UfRDdI9IbTcy75oPAjIpj3EOetdLeQyhO4YP6fBwKmvH94z7Y0pOxIsTB8NA1zuBhVzwjyua2+C2M0n8IOd6Zp1Uu1QZulzavmrBGwBehJgvcDL71dlw8kzFYVZ4mY362qaPbfuWfhJpR+8eyvwPJQO576/N3qQEqvytdmKUSFvIXjicR/jUOiAp24aL5zTxKSxtukqyzdGZ6/GVvPUUHJ4IbkZqcCXMiMuPzSq9vSp83ApQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lZ+lmYvVf0jgQasl1JbFYUiePpIc+dS1sF2VI2OaKfo=;
 b=T0Jg8u1B02JKZktDFEhSWqtBxTC3+9H4tM2DE0QDTTAet/3ejjH3a0URFRe3wf5jNLVltidh6G1rqlNkbiTILFifoWnBaU2hDn8mkHFg5D3fz8y2VOVFy2g0YPWYd5KxjtvNPPhcOSXDR3S93SFd1p0/d6hEs9Nw3tjzccy1u/S/s9BpwO5bjVW1lHUD6eTUkMBAgwZGHzkt1W7J+GirSvK+3iamWJZb7RVVT8HCqlVjPJ2c/frN2lIiW9ylo9EFM7ZdoydROYF43tyRgZyPmFcbQeS/nAEqo68WamiCWyyePhE7tt/VAEYefN208JEuNcc1g3dIM+/4FLbwJkzKhQ==
Received: from SJ0PR03MB6964.namprd03.prod.outlook.com (2603:10b6:a03:432::18)
 by CH8PR03MB8201.namprd03.prod.outlook.com (2603:10b6:610:2bc::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Mon, 22 Jun
 2026 07:46:00 +0000
Received: from SJ0PR03MB6964.namprd03.prod.outlook.com
 ([fe80::b965:bfa8:58fb:e775]) by SJ0PR03MB6964.namprd03.prod.outlook.com
 ([fe80::b965:bfa8:58fb:e775%4]) with mapi id 15.21.0139.018; Mon, 22 Jun 2026
 07:46:00 +0000
From: "Nazle Asmade, Muhammad Nazim Amirul"
	<muhammad.nazim.amirul.nazle.asmade@altera.com>
To: Marc Zyngier <maz@kernel.org>
CC: "tglx@kernel.org" <tglx@kernel.org>, "catalin.marinas@arm.com"
	<catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>,
	"heiko@sntech.de" <heiko@sntech.de>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "NG, ADRIAN HO YIN"
	<adrian.ho.yin.ng@altera.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Add Altera Agilex5 DMA workaround
Thread-Topic: [PATCH] irqchip/gic-v3-its: Add Altera Agilex5 DMA workaround
Thread-Index: AQHdAfHJsuN0ZzRfzEmxLZlgAwWn2bZKJ94AgAAKkgA=
Date: Mon, 22 Jun 2026 07:46:00 +0000
Message-ID: <9595ecaf-5cdd-4549-9935-a776553540d0@altera.com>
References: <20260622024945.21354-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
 <861pdzrr1j.wl-maz@kernel.org>
In-Reply-To: <861pdzrr1j.wl-maz@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR03MB6964:EE_|CH8PR03MB8201:EE_
x-ms-office365-filtering-correlation-id: c8236c99-8f4f-4e3f-9456-08ded0324d81
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|23010399003|1800799024|376014|56012099006|55112099003|4133799003|4143699003|11063799006|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: TXg7EJ1qH7nKKCCwJgFneKWPy0n7RQfV6Q5RJbqExsnKaVXnFttTEeh2N+xnSKNDfdxvbOH1PcjPPDTffcOi97fXuSA/kdtxcbadkqviEhIt94OiyCQj3UtJuDqKjf4exheR872hW5+kuq+UrC6099ECcD6CfvMWOM+y3fe9U0ZKrqmdMjXJj43y18TXzOTqe6RUCBBO85uu0HsMkzu5BKkG5Fk4iHZpFif34pGfpxfKZ/tS4cgMtrCFAtuiIKJWGlXLS3enfaiA8DyHopv4Z2zIQcgtFr8uYvpAQ+X+jdaaXYMOWb2hNc/ZBHUZS82MBiM8b8m6r+kE8LJb6XKwcfTaMrDD+jimhYCARlmVUR5m62/aC7y6B7zhHk6HmXGQwHPSm9X13wP/f3ghZRutxXv/0wycEqlczEcd1qVNaNlz+E7+TwRyN1fjy7/iGAz7msuqYsE6VDt5JLD8LTOVFzQ0o7euTEX6sAQLKfuSSa/UkA8cQU64dHhd6eXZzslNQQmcjtagEWZ2dl5XoMSZ8Jvi41VCIsqOrlWHMuy1y4dVoZjcS90Bz148HjqI7mhDRzO0QlRBWtJTK4rZ8EzreMz//3QOsL46a8IMLqIfuXtwRu24yUxnKuVrfWimfR63WB0urt7tdlULq0lbkUu8d6xuhi7U+dVM8LLDnfXZfH6zk/vJJANU/x4Yto0TvUTu9rmdJd4cA0IG0bn7nxIrMJLV9HlTidqxJRIo0A9Lxxk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB6964.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(56012099006)(55112099003)(4133799003)(4143699003)(11063799006)(38070700021)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eDBMWHVGdUJaNzJ5SUJVQkU1RXVGUkk1REJXcDE2Q3FQSGladG1sc3RHVWJz?=
 =?utf-8?B?bmZwTzV0ME5KUEVQMkJsaEZBRjgyMW9IWUxUMGZNcjN2TW8zemRCQ0ZOOVhS?=
 =?utf-8?B?OTRyWE5SVnBPOTF1dnVSYTRxWndIdXdDZlNYdk9YYlU2UWpiaHg3RkFvUldH?=
 =?utf-8?B?OVhGbGVyTkJVV25oUTZyN2dsUE1Hdjhvb3pKU3kyUk5ORDdsTmk2RWpJaXdV?=
 =?utf-8?B?Q1N3WkdtakhRQU5TbyswYnVEa3JqZy9zVHFHb2x4MFlCTTZ3WG84c0VZQ1V4?=
 =?utf-8?B?anlJQW80MHhjRUdudFl4MGxRWHMvcTlONm9HaGd3YU4yZVdQYUdrTlNhbTVT?=
 =?utf-8?B?MWx4NkR4SlQ4bnRHRVZNLzJVazlZNTdGc01URnhUTk5uM2R1NG1JZWo3RERu?=
 =?utf-8?B?OFNCQlhaVzlOcE9HZ3A2TmIxeWY2REdFTjluSzJ2QzhMb1lwN2VpYVFJbThx?=
 =?utf-8?B?Q20yNG8xL2hCRWRmTVFzdEpZMlFiUEpEcU9hUXJQbGN3YjAzeVZISXBSNVJX?=
 =?utf-8?B?enI0cG9SY3FNSXJNakgxQmVSNWY0UnNnZWVkYjJlRkJocDF2UG1VdlkyVExU?=
 =?utf-8?B?SW42TXl4cHFuQVZRWFd0MGduYjk0OHNzU0ViQkZ3bzJRN2ZLSGFMUGJIZ09w?=
 =?utf-8?B?d0hFZ0d6U0dySWJQKy9McjRMZHVaQVJPS2xGZ2tQcHQ5bjFaS3hyYmFab1p4?=
 =?utf-8?B?Vk9SYWNoaDRZM1dJc3drcVFEM2NoejRvUHNZTmJDQ3UweGd6emd4YTR4ZWdH?=
 =?utf-8?B?QS9UT1ZKNFpuS1RWbXF0bU1paERaOGl3V01namdaaXNOa2szM3JnNUVjLzJq?=
 =?utf-8?B?aXVsVC9qK3k2RldzR3AvbXo3OEdMWmdSNlNjNlRuMWVia0FWU0VoVUQwWjdR?=
 =?utf-8?B?RFVpYVV4N1RZYkkrR1ZKalhrQ3JpME1rcnNZRVk1dDg5TEhBelJNQThWVlhJ?=
 =?utf-8?B?eld3QkxLSmJRS0hGem83WE1PQ0t0RmEzMFF2WU9mcG94VjR4eHZFQ29jNC9h?=
 =?utf-8?B?U2Zpb21hdU9RSU9TZFRrYldWNUQ3VGtNMGpWalpOYy9HNHB3TVNkWmJvWU44?=
 =?utf-8?B?MjhsRHhVbXpiaTVBQ1NEY21pN3UzQ3dMUWIxMEg5NUpydnpaeHlESldoemJ1?=
 =?utf-8?B?bkVoOVBuT2xtOStNZHQ2SUFLQXhCNGwrWVhmVHYzYjdFTnozVktXejZpOXJm?=
 =?utf-8?B?c3ZoUUJvNXMyMUpzQzJFWFlDTEg4L0wvZ2hCRDBaMThkemZOeGJTYUo3ZHlL?=
 =?utf-8?B?THhaSEs4TEtNY1RRUzg2blJpcUIyTGNvSGJNdTdvR0J4MWZqRFlWTVBOcFFL?=
 =?utf-8?B?VG5CcGFLd2RoTGNLYVF5L3Z0cUxFQnByekpTQWR4RUFhbUdPTU4zTlBQU2du?=
 =?utf-8?B?MEY2cG1TZkx2SlFtREpEUUVGSFdYNXlPeWtyd3hsMExlZFQ1Y0xOQmYyNnJu?=
 =?utf-8?B?S2hKQTZiU2dkais1dlFmdDA3SEp3cXFVaEQ5dlh2a0srQ3dWcXBQSHRmU3Fu?=
 =?utf-8?B?aEMwZEQ5ZWh2QkNKZWxMakJqZkZEMERraThOUHBzbk1QYXFVanhLMC9UelB4?=
 =?utf-8?B?bDgvajQrMUdaaEgxNjJENHBEUGlGNUdvZ0xBbktjZEFHVjdadmxjTXNPYnQv?=
 =?utf-8?B?eFZtNVArdkVpRlJIM3REcDYwOWkyOVR6Y0VMWHdSMmxZK1lzejhTMFIxNW90?=
 =?utf-8?B?SFBYcnBiTThSQUc5bEpFQTdJUThBV0F3d3JTNkFQZGVsaG52WXlyclF1MThs?=
 =?utf-8?B?V0JNVzVTNEYzVHlUNXZzMDRkVVRKUGxVcHpuTzQxd0xvak9jV3AvZG5MdXU0?=
 =?utf-8?B?RCs4NzRNbDdNRHQvbWh1ZHAzcGZvR3d2bVREN0RScHNFbFYrVTRBTEZiR2JC?=
 =?utf-8?B?Z2s1ZEs0UUhlcnc4QmRTbXQzdm84U3ArQlVyM0xOWC9DQ3hsN2VFc1lORm4y?=
 =?utf-8?B?OEh0TjNoTjNXb1lLa05FMS9OeW5EWWhPazlud0RJeVZjb0RTZklIT1NwcTN4?=
 =?utf-8?B?T1lBeXlnQ1dZd2IxRUp2NE1XU01jUUdDbHpkNklKK3F4VmFjTzBuQVlwZXdr?=
 =?utf-8?B?c0dLb3o2Z2pRMTg1NW12Mjgra24zVXFtUVF3ZzZRV2YvMm9TcjNXREQ5eHg4?=
 =?utf-8?B?RnNDb0pGa3FsQmlObzYycFBwR1FwMHRSdjdONDAxcFNzOElUVWI2OGNnNXNK?=
 =?utf-8?B?VDZBMXhyVGhPcVFWZ0FFVkRFY0JsVFFRbkFoTmJyRWptUXI4SmJyOGxLNzZx?=
 =?utf-8?B?RWR6RHFndFA3M3FYQ2h1TGN1aHNibUFJUUZqblpJL2pWbmRjOE1UU0FsUDI3?=
 =?utf-8?B?ZFphT1lBQWFPSEh1TE5Ya0ZWeWp1M2ZzYVh0cVNRRkFSTjVzejdJWXNrbGlx?=
 =?utf-8?Q?jvTQxSRdwCDnwo0zO3R1IMYIA/yEg8ieKYQcCRCelVRbw?=
x-ms-exchange-antispam-messagedata-1: THBWBT4JElMvhGkM1ezjvYaRZDilmD+RQRs=
Content-ID: <06CFDFF046EBE144976ED839B9FB924B@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB6964.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8236c99-8f4f-4e3f-9456-08ded0324d81
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2026 07:46:00.0390
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AZAHIGK+Z62wsyHlsmmpYbBX4msPD2ysKtn9jsNyzue2VBW+jujdeHPRIrRwUBjT+/9+hxjBVyop2O/+9pSImE4meUGilYZO89Byst/P1wnjcsmGUslbgwNKCT2+4CkeoLVQOvlVD48a0bgpaQ7f6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR03MB8201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_004604_655415_C2B59309 
X-CRM114-Status: GOOD (  14.12  )
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

On 22/6/2026 3:08 pm, Marc Zyngier wrote:
> On Mon, 22 Jun 2026 03:49:45 +0100,
> muhammad.nazim.amirul.nazle.asmade@altera.com wrote:
>>
>> From: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>
>>
>> Altera Agilex5 GIC600 integration has DDR addressing limitation where
>> only the first 40 bits of physical address can be accessible. Extend
>> existing dma32 quirk in driver to support Agilex5.
>>
>> Signed-off-by: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>
>> Signed-off-by: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
>
> I like the fact that you waited another *year*[1] to post a fixed
> version of this change, and couldn't even be bothered to tag this as a
> new version, not to mention the lack of Suggested-by: tag for code
> that was provided for your perusal.
>
> So you're late to the party, and someone else is doing actual work [2].
>
> Please synchronise with them.
>
>       M.
>
> [1] https://lore.kernel.org/linux-arm-kernel/6a44509ca0edaabc17e59d2e27fef1c782183456.1751618484.git.adrianhoyin.ng@altera.com/
> [2] https://lore.kernel.org/r/20260618220427.14325-3-marek.vasut+renesas@mailbox.org
>
Hi All,

Apologies for the not including the Suggested-by: tag as we are not
familiar with the upstream etiquette. Will submit the revised patch
after Mareks patch is applied.

Br,
Nazim
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
