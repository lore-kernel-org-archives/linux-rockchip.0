Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 077DBC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 07:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAw0rdCaZiboZUUY6kYSUT8e98+nfWXuch/9yXuRIzk=; b=gt1Igiw8PSoFx6
	SnlJC/OJOr32T8MPwZTyZqxC8aGJD7m58afJmrm3GdsdQHijE1XPCVePnejI2NO+bu0735FgfM4zQ
	fpr6VKZuoHavXjXD+yzyLFTcYL/utoV0p8AIdvZ//sDGmOLmnSz4cE6Vl9Afo8oJQk2uXRm0kzLZw
	tx78upp9JCG0BDvwi6J52ggDO3X6jxWyIRp13g3GQLrOf86c5P439SFTiZRXx7LrO5J0RoNWIROgT
	HGcdzDhYyd+6C4MIAPaksJcm6HhEzts9a/aXL6/QuZXbgcLmwyCJRmcVICNCYDmGkEzipFMK43Psi
	GGmEev8T7IBxu49az1gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKf6-0000000AKHk-3Ynb;
	Mon, 29 Jul 2024 07:19:16 +0000
Received: from mail-psaapc01on2072a.outbound.protection.outlook.com ([2a01:111:f400:feae::72a] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKd8-0000000AJjm-2ZPs;
	Mon, 29 Jul 2024 07:17:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rcbotuBRQdy20NaZLaD1Rz7c+28QxXG2aaKVtGY5GBfBPIam2+akrNrEghMGXlr7/UbU8MjQxyg+x53KKylAMf1Bs7UXPav3hr9cJPdciCI21DOlDRTlaDMdGzbl7vzRYQKYhe7gnj3KO05bPa68EC/VdYsZQgNjWA3zkQV9lIwZ+gqebwGKdXcoJHjdmIkPjMFHyfDcL8WddFco9CWxzeM5d13Yjdudusp+w2vxU9JeGXQxCC6hAJ9I1hrHd5rju3UQs4ESBOKCfb8+xHz26eEn5TMroVujt4B3z8v6EM7Uc3PYyDWND0UMNXsjuBjpLws3gXYd7iCl6k7iJiXt4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lBmHt5skvZHpodnQcMqwvSkYBoai08R4ixdbvZs22KE=;
 b=svuzumCpzRQ7RIurv+8WWAfs4fFbeiuUHeUqW4HntQ4P5+k4EDosc7TvP32kThz+cfk0E84jSxKOc5UAbUeX4Yn3f4NyCAEDsd58EYNcDlN9ETW/HDhHduh27iIFeNlsFdwHemPl4juq4ng3al2M21/27RCgfBYnFAHen/zwpWoludDR3lzBsqVAZcSK+tocPq3NGZQNw7kKrtzkuwIsyCFFYfEOsMcUWyS2EGZ3dd8u/PtVl3SDyRDlpy/cSx/AJh3yBKPPrCFtiphubtP9Mj086K3WXXJmIXn2f9Q0Nuq99V3TmJvDiz7LxQI9LGLqdlHGwEBYHrqbRXZGYsrlFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by TYZPR03MB6622.apcprd03.prod.outlook.com (2603:1096:400:1ff::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.29; Mon, 29 Jul
 2024 07:17:00 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7784.020; Mon, 29 Jul 2024
 07:17:00 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: Dragan Simic <dsimic@manjaro.org>
CC: "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, "kvalo@kernel.org"
	<kvalo@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>,
	"edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
	<kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "arend.vanspriel@broadcom.com"
	<arend.vanspriel@broadcom.com>, "efectn@protonmail.com"
	<efectn@protonmail.com>, "jagan@edgeble.ai" <jagan@edgeble.ai>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "arend@broadcom.com" <arend@broadcom.com>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "megi@xff.cz"
	<megi@xff.cz>, "duoming@zju.edu.cn" <duoming@zju.edu.cn>,
	"bhelgaas@google.com" <bhelgaas@google.com>, "minipli@grsecurity.net"
	<minipli@grsecurity.net>, "brcm80211@lists.linux.dev"
	<brcm80211@lists.linux.dev>, "brcm80211-dev-list.pdl@broadcom.com"
	<brcm80211-dev-list.pdl@broadcom.com>, Nick Xie <nick@khadas.com>
Subject: Re: [PATCH v4 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
Thread-Topic: [PATCH v4 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
Thread-Index: AQHa4YUqSMnOsLLjk0m6DImFZ5mMbbINSkMAgAAAkcg=
Date: Mon, 29 Jul 2024 07:17:00 +0000
Message-ID: <TYZPR03MB70017924E5899C5103180E9880B72@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240729070102.3770318-1-jacobe.zang@wesion.com>
 <20240729070102.3770318-5-jacobe.zang@wesion.com>
 <d7068c96e102eaf6c35a77eb76cd067d@manjaro.org>
In-Reply-To: <d7068c96e102eaf6c35a77eb76cd067d@manjaro.org>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|TYZPR03MB6622:EE_
x-ms-office365-filtering-correlation-id: 855984dd-d826-40fd-9707-08dcaf9e706e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7416014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?cLzm7V3MMlIxPddyMKhXBwizomCVShZZAmrLeQV5fy4GF3grf0oVHPVHaD?=
 =?iso-8859-1?Q?boSkBrxD1H9M80qrahOwCTi4/ZVq9res/0fm9fRI97MK7LTTiqV0DoNKli?=
 =?iso-8859-1?Q?npqDztJJp12lh9WXdltsmu/9z5OskDQFmXEXaEGfzwDzZKjMTI+bPM+v64?=
 =?iso-8859-1?Q?xCDUwSpJDhtZ8ij+EuC1QpePPNmf+MKeMuxiKCr/Icndkt9/Men6Ak5nfH?=
 =?iso-8859-1?Q?vHUbpReeCkzHIplWdNdm7baDRyCKcAT55nqAg1V2jWnXlHrIXhdGrJGPIf?=
 =?iso-8859-1?Q?Zg8IJXl4c9sYRKeW+OyP6Nd8vs47/4tMUizVnmHYDri/t9zdXlSTkzjTXH?=
 =?iso-8859-1?Q?3kvdoL7ZX1MPlIDOlKtmQKX+P4sZYIacANGGT9bNgd3J73FLdR3j3RBQ0i?=
 =?iso-8859-1?Q?kNhomCQaj0hsOvYsMcvxsT2MTGun16PcCQ0BPuXitROXN+rFHMtYQEtUpO?=
 =?iso-8859-1?Q?AIUz4qofkWduR4D1qtGIhbiMhUMWzQpd6eHSVpyv0n378Hmb+Ph1/VoAs7?=
 =?iso-8859-1?Q?Qq0lLAUWLZUp3ygmyFNZT4VvRO24ul5M2ByJ5mEuEBT0tPw9Ev0iAKGrZU?=
 =?iso-8859-1?Q?aSu3H1uWeBd/eXSK+qxkOTLC6F9LcfjmLgjgJS4l14+/FqeKm4L8M9xW/2?=
 =?iso-8859-1?Q?JU3u6bb6Q8kpBftiilzSvVlRTPnwBpGpFrS+iNST1z2LF3I5RLwXLebQ5J?=
 =?iso-8859-1?Q?7+yiOBNmpoT6tPTMc4GAJiJD3fTW2fJ6CnGYhNwVL9NH5YOQhQvBDFUdMl?=
 =?iso-8859-1?Q?djezwASbjTBViEHdNQ7LdJMYQjR/x+Vyyqn/3T4ZPNX1Q52T+NqZ33dQTu?=
 =?iso-8859-1?Q?7QscONr2Ho987pUvJUUwWJtmJYDHb/u9tJ00kFa6uLG/ixeC9T4ZoQcRJi?=
 =?iso-8859-1?Q?ZeTpQoXVbZGrTw1JobyDQQ4kujt5+lf5lqwja6QVMsvNA6TJm64hHxT63y?=
 =?iso-8859-1?Q?Q0IZ1uuywf0FQw0v9Ts+uJRQCU3nqXhsKe5NpwMsMEGV/ZxhpJcETUkdO0?=
 =?iso-8859-1?Q?M6dPjKELqow5iBEFGJMN4zdTYZgW5e2qUnAb+AK2POLqEroFcPj92K8kyi?=
 =?iso-8859-1?Q?HSVkC+Ry2XbTOZI5C9Sw9NIFQh5Kzfvu4Nqata3YqaO/Hf0Zm1euANJf5l?=
 =?iso-8859-1?Q?YkaWmY0+ZwKf88XVcvHmngr4i5udlbNEdBDF7dq1k6CIJSlaXzLcUDZbLb?=
 =?iso-8859-1?Q?lMclm7OnSkdZKmCv1mEPmAK2F4tZQ6mGcUdPBmm8eLkLA12CGI1iglAOh0?=
 =?iso-8859-1?Q?MHH5e0YHU8ODZatpsa7an0pk+iRj1tO4jOVMbuWqkzTnYnw8ZtS8bBoN44?=
 =?iso-8859-1?Q?B9t8TWer9kNOnGf3qO4s3AXY2Y8+2jJ4dl+1zz3tJncQ/99lXxLS89FDO5?=
 =?iso-8859-1?Q?8shu5zK6zW2SFBwhBb+/4rPrzP0j1enZajciHy+mGXd87sgxLGOg/PWAzL?=
 =?iso-8859-1?Q?NCdV0A1dvRR7XXFpYfBulmi3X2DQxPYwv2UKjQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?zZVjkfV6p8N6nKQQ5gQ15usV9yfJ9Xy0yp3sCQa+GGu0qiTRURmRmOGJpq?=
 =?iso-8859-1?Q?L0zUk6TzFGOKQCJcVx6jbTZGpo09tmxO+eJ8Tq4vOvVxvUvMykRGX/IbhO?=
 =?iso-8859-1?Q?4hu2DtSqfXNmZUepSq1wbzHUX4Kf2Evr0YlI+omp3OYjWgweme31HWI47I?=
 =?iso-8859-1?Q?M+vTq46SwD7SyjJ/vTjeudp2UVZirEXYhv9oGJCQOMxeK60rgDCEowKpTo?=
 =?iso-8859-1?Q?GrVX3AnrYdqt7OWFrZ0HQFLBnK5likmU1qscOXtXpQR7zYLq6OFwNAvwOF?=
 =?iso-8859-1?Q?Vkfpo/sitGC/5fv/8JAE9CRKyvOhQONyJ+kSWtQuALx5btZw8izVGvJ3oX?=
 =?iso-8859-1?Q?aElrQLtio+1tlzJGF2hTybVxcKgINaEaNC48V4+Cj2tkCXAozCVKQ3xYOF?=
 =?iso-8859-1?Q?7OSIRrtUWAgQkW5sXPtHtPnvWqzzEF0x1s5odsuJLoe0YmT8r4SI0CrTHo?=
 =?iso-8859-1?Q?WeuLpR7W9VoUrgChBfbhjn8tJAXAXQmFW4WcjtaCyxu0aNgh6dYoZztri5?=
 =?iso-8859-1?Q?TfBM2JleOEpQSx9Fhvh8cSrpbJZ3u/TJjRuGwSMjmnq2S+HJuQSHMUsqKd?=
 =?iso-8859-1?Q?lA006CTqdGHch7ZVO83WFSF1oXGueA8RfFKZXAWntPL+6MTh9LgtTin9af?=
 =?iso-8859-1?Q?Y8IaW1IPRzQ5cnQNUnSGZfqxFTeeWU3n8/hR7WUky3QslySOax9SIWVvux?=
 =?iso-8859-1?Q?8JPF4m9q/OMTIuFtwPTTCSDyH2k01Z1/8DUICRpZtfBt9GdkQIZstp1I3g?=
 =?iso-8859-1?Q?gXEFtMd86jcgE2lL5xtclqviK7ZBOG2mk6LhN0G6YcHtgyj7VbUHQgHtx6?=
 =?iso-8859-1?Q?cdwQfjznsVo0K27pl3FeXLpf+dMHHToyys9DwEzOL5Zui1F0UQdDJo8RGX?=
 =?iso-8859-1?Q?orVmfJrlyDKy3sj0wNE/xV11F6aO2Ro8yNICYo1KIy7kktk7//p53+IgZM?=
 =?iso-8859-1?Q?TMA2dyHAlEbOr5BldWFnf+l5yaUnH+OnnE+m8RmLLqq9EGptjrhnJ8qbMQ?=
 =?iso-8859-1?Q?ye9ibthE/tMwVDWfSf8N09kHfWud4In5NCnudUYR8hvsFaahYd6cf/DVgy?=
 =?iso-8859-1?Q?NGif0fjnz4tz4q6MfTwHOhgdgGGFdbMN7m3BBvH3hybeiYQOxgilbde87d?=
 =?iso-8859-1?Q?sXhJotHx6BgfFbr6hNmiRQO4CnNIOXZfYJEopwqtF+mWqFePV/1vaIbnG2?=
 =?iso-8859-1?Q?PBh2RX5qFnB/E6l/w/EnnmQ1DCK60gQgusCJOu5QVh7BOE+FPOvfm4H/EJ?=
 =?iso-8859-1?Q?GPX0RjjNgB6rZgsefU6B1f+My71v0vJbWdL/ZzdKtRzD8SzCx5XeYb+EkE?=
 =?iso-8859-1?Q?383ZR1YVFJ+jlj9nugcGDTgy8eRLubkkPMlDbL64QHO3VW+GmybKwoZ0jE?=
 =?iso-8859-1?Q?Zkl8ifWdwgRADwPc6Q8e4IIqv8KLoExMbaEbOBse1UGMyD5Wd89d9wrpeC?=
 =?iso-8859-1?Q?HLRQKHcZX5IsnoWyozWCvJnNiN2tczUegdVT9p55V2wtFeyngIHA+EBgC1?=
 =?iso-8859-1?Q?gPEdbPETze9emd2n96s+356spnhfORGiG2//qdRWrTcaUb6rrp8wpc0KQY?=
 =?iso-8859-1?Q?c6/Q10anH1b9jZtEQWQSyebMPFmdD79nZACTvxARKfk3uWbmTe6YN6Yb0p?=
 =?iso-8859-1?Q?4SKNelFbjvdX42vrTQzbC3ALGtv6nSDjlB?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 855984dd-d826-40fd-9707-08dcaf9e706e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2024 07:17:00.5344
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i1oydAIEmpi4MsMAMlT6jorFd277MfCZuSwX5vSfTDb8nfqjDkIa0JI1m5Csf44BSLyJElfghJVXVhF8HbL2oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB6622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_001714_684575_FCA205D2 
X-CRM114-Status: UNSURE (   5.88  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

>> +=A0=A0=A0=A0 clk =3D devm_clk_get_optional_enabled(dev, "lpo");
>> +=A0=A0=A0=A0 if (IS_ERR(clk))
>> +=A0=A0=A0=A0 if (clk) {
>
> These two lines looks really confusing.=A0 Shouldn't it be just a single
> "if (!IS_ERR(clk)) {" line instead?

Thanks for the correction... I forgot to organize this...

---
Best Regards
Jacobe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
