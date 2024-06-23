Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCCA1C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 10:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8Kzzs/QTV80bu8RRGF4e2p25rlXUpRZAFPvqrLbHzg=; b=bvhPZRMttgTx03
	rjFGTjFQQw0Mkbth/z+4OBBgS0lF06QJ5TcfMOjQOc2YW7RxbzXAjkX2j684Kxfzn+zDAjTsWbQPZ
	NdvtfWo05eDgvgKcBbCtpsfHp21S5/vdZyvhK9FgJSSkca35LlivjlecH57K5AIVXOc+1Y5RUsQ2h
	6+AEQe9+YUfV1ME1k7VM10UrDJb4T0ViR4VlGwGuqOh6Jp74jLqf5wHDwiV34ZjWRMPczP6obnaMw
	If0D+wS2XWg1keXxUxkncIgtIQPJv1DU6f7TXDRFsZ0p+hxWgSeBGYUkCI0J2XwzHCREay9MlOy3V
	6jm9UTKf09zEAhgKOdKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLKCB-0000000DkpE-2C3N;
	Sun, 23 Jun 2024 10:11:39 +0000
Received: from mail-sgaapc01on20722.outbound.protection.outlook.com ([2a01:111:f400:feab::722] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLKC5-0000000DknP-1DLP;
	Sun, 23 Jun 2024 10:11:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQPjKm75Gs/zXIFLpCQF7MN55xKc9hCoxOTYNzx7ylDYamps6lWIy5/BFDTa1WevDfc6I62FxaQQXMv8zTClICH8sG1kZqgpzedEPzVJKud3S70o3hp3HQuqyUo8BfoXsOH+klNPcXsq/RH+QVMs3cPkpTLodJQXZoSGBfnkqAnzN+gd5MpM+bcu6mV6ABI4zJ7iMXzIQn+aeDqflTz47c5jLfWobg/Ar7WdTb1Qw3hdWNPnx6/C23/gBij/VwLtY5Ga5Fgr/NVTeVt4w84UG0lazb5kqKc6cibMvojlHAJImBixb1Kl0cOeyNnpV14hmfeNKlPKsK8pvWv8N150eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GoeVfBt25BUOh2gIIeEXFQlVnY5We0YVZpSEtKrys0k=;
 b=fjRxE/z586GUMuOLwriGr/7Zsc7g5b9+zxkduM7UFaEmvNexOH2eM8WacjiiTRDpqA4c0umLv7c1usy9JlGxGXJsv2t6nRUduJmUdP73aFihu7PEO076x1fEyCUpyJOT/718v7AfeK5PorY94yIeRLdAsCMQrlcec7+NBre1yb3u0NwSNoPbJE4rnDExGu1CLL5lH65KYQ0ymjMoGqm+yicefYKgsQg7x2s1ps3zfYytjSPkj3zAd/k34MLpTw3WPY5PyS0g61T9BE6hpgnt8DEarasX2yC8ZdZg7vpyw8AXyuBDlBYKy9b3Z+js4tH4GXgSuT3To5wLC0rfQTduLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by KL1PR03MB8070.apcprd03.prod.outlook.com (2603:1096:820:fd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.25; Sun, 23 Jun
 2024 10:11:13 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7698.024; Sun, 23 Jun 2024
 10:11:11 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: =?iso-8859-2?Q?Ond=F8ej_Jirman?= <megi@xff.cz>
CC: "arend.vanspriel@broadcom.com" <arend.vanspriel@broadcom.com>,
	"kvalo@kernel.org" <kvalo@kernel.org>, "duoming@zju.edu.cn"
	<duoming@zju.edu.cn>, "bhelgaas@google.com" <bhelgaas@google.com>,
	"minipli@grsecurity.net" <minipli@grsecurity.net>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>,
	"brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"heiko@sntech.de" <heiko@sntech.de>, Nick Xie <nick@khadas.com>,
	"efectn@protonmail.com" <efectn@protonmail.com>, "jagan@edgeble.ai"
	<jagan@edgeble.ai>, "dsimic@manjaro.org" <dsimic@manjaro.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 3/3] net: wireless: brcmfmac: Add support for AP6275P
Thread-Topic: [PATCH v1 3/3] net: wireless: brcmfmac: Add support for AP6275P
Thread-Index: AQHawrWkSZjILdfElUC6XOD5DUOw1rHS7xyAgAGnXp+AAGtTAIAAIqhE
Date: Sun, 23 Jun 2024 10:11:11 +0000
Message-ID: <TYZPR03MB70018091A7AAD316CAAEDC2A80CB2@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240620020015.4021696-1-jacobe.zang@wesion.com>
 <20240620020015.4021696-4-jacobe.zang@wesion.com>
 <fro2xcwsnvbxmpszny6g2p36z4zwoq4kegmpvww4twxir5piez@a3c2nbwitmab>
 <TYZPR03MB700154AE39D44B8D166344BF80CB2@TYZPR03MB7001.apcprd03.prod.outlook.com>
 <ksxio3vzlz4rqcwvmtthskv6lqt33ejzjes557rwnkzex2oihk@52ueay5cwuub>
In-Reply-To: <ksxio3vzlz4rqcwvmtthskv6lqt33ejzjes557rwnkzex2oihk@52ueay5cwuub>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|KL1PR03MB8070:EE_
x-ms-office365-filtering-correlation-id: 35d1d64c-d955-463c-d839-08dc936cceb1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230037|7416011|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?iso-8859-2?Q?8cMxeiCeeaQdRKV5pxU/LNubz6h/463obExZxdXfkqnyaTohJmwJiJ9J1B?=
 =?iso-8859-2?Q?LP+0Feu1w4gLWJo+EtymU1NNs9TuAtYpQWU3AHZU+z/hrwTNmyVzxZZo9G?=
 =?iso-8859-2?Q?wmhhng5F+9ey7J/P3np0UaPo9p8t+eT2nGItkQ09t8Qp7jERT97s3r5cqA?=
 =?iso-8859-2?Q?67Xo0D0ByEPBLMmEykOvKwI/pTjMYLfP/IhlX64MlW3Hc0rM6DgAv9x3F2?=
 =?iso-8859-2?Q?XDj45+zL8OZoYmVakMXhK9CO3h8lOTXT0RAjh+IIRER2zo4cT30+5ueUCs?=
 =?iso-8859-2?Q?sxE7hvWwAMXyGf3sfIu2Io5yzC0lFc0pvXFNWjwGC31tWAErgOx6S51AAp?=
 =?iso-8859-2?Q?eVkSvjfsvQd0xDORQbJR74o+tY10JzEkV5fz/6kkp4us3a3/eR84IoLSaz?=
 =?iso-8859-2?Q?g7vso5b/iJ18XW6OX3IiYJd15bZ6b3nAS9j5QW9jyjTlZR3leqI/++Picy?=
 =?iso-8859-2?Q?Avwo1ni0Tvbo9F3fG6TAQF6uSAeOvp9ayEwn/TomY0+awUr8Nfk7jclnEa?=
 =?iso-8859-2?Q?jtUDOjrLh481rZ7G8h8qj9PlOY0gT16uFC5hc2NYGs+maxVz4NIwTYCHqk?=
 =?iso-8859-2?Q?yRLDPio01MbQgXjL3K+6vl1/tcvQb/9wU2/PwfsDKb4SNvFC4zi/27/DfR?=
 =?iso-8859-2?Q?YgqwMsasehxIEif7bxA4AhZn0lphf6O/EGjCNrVjNq4l/JLUYlGZ6LBHqG?=
 =?iso-8859-2?Q?g3Y5iae0jNTgatgE/YonFbUL+oqVb6x1iR4ifXLzmdozfZQ97AB8ohI919?=
 =?iso-8859-2?Q?h9Jsn2ZAkRklYlYfECVXeTMvr2O7ROpjbxsAcT7ImGzHEvUkMVEUoRz+9J?=
 =?iso-8859-2?Q?6DHZMcj5VQnnbeCQkOpdGhDy0nAZ5kYsJj15AZVtFLZ6FGULlIs9R+oDVt?=
 =?iso-8859-2?Q?Rw+ubvr7jqVQzBy3TaApBoaU5sMMWevz2A80DB2sU23VCjHFqlMJhWWVtt?=
 =?iso-8859-2?Q?Hhf3P9Qg00N4ol2fG0xwvL2DCdXwrHkp4V2onWYDaTmpDzUz7kk4DKK9rf?=
 =?iso-8859-2?Q?FfGqH1ksraEan46i04GKPh9wBId8hoj/s9HTdc7NJuJxDGY+Jv8RI+2dQh?=
 =?iso-8859-2?Q?4EXW2MDcPky2WkXtzeROh2gHDqRGz3lZfGv9v+L1bo6/svbKl9TGJCDN3t?=
 =?iso-8859-2?Q?YU9Wzcn41+Pdv9xuTdrrtZwwJxkq/Mgk5Z5a9ILV0qxxknrxZNFUtJvDOc?=
 =?iso-8859-2?Q?q/wm9zMWDg3u/IRJsdvUruWiJ5lJRXDz+EnYCB+XsLk3cZ0HttW3WAmCRc?=
 =?iso-8859-2?Q?imPUY0EWR9XbiBG3YhnBbTCvDhaqY9OpG15tHcvjYoDKGHIkmUWivU/Ljl?=
 =?iso-8859-2?Q?ohTyY6zRb5ZOIEiEncQ0I9W5ETFJFDM/necON+kj98PASDTaJB9nUkIj0B?=
 =?iso-8859-2?Q?Afaw161uN+s07WEVG2nfl+rgoIEE7qDfxxH2uHb7yWqHCiQrrTyoBsJLNt?=
 =?iso-8859-2?Q?CrNJfP8sR4x2zqJeDonuoZAmEZrCWte/laj7gw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(7416011)(376011)(1800799021)(366013)(38070700015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?dS8cNQpQPRaT7t9Olo0qr5SbDQa1j9apiRWBCfoWY8H8pAtuD9ghyNDx8P?=
 =?iso-8859-2?Q?LE+qcGFtS97FJQbi8Fqd/HvmS0E2ujbZ5RdtjtD/dWXZfc2fPZsZrZ0lIJ?=
 =?iso-8859-2?Q?iTVXD6u9aV9gkrfXjwlOIZ47V/5ResFlHLfIyBWZ3UWs1/pbitZiKynvFC?=
 =?iso-8859-2?Q?ZhIztIr7jY9KVKEihUbOiJ/X9lgLrGpt1nE3zFAAO5XgPf4vi1Zbmdx0ec?=
 =?iso-8859-2?Q?EW4gGpfqlum8HaoYRzm8FGiaocBoPr5X6EjeCPtwmu6K1GMPdvL9G1u4Ix?=
 =?iso-8859-2?Q?+IfuGsnDV7E3wKUPQkHr/uhV0KLaQxzsKqfIJ5IGXl1k7GhFUsn6tdpANe?=
 =?iso-8859-2?Q?MIzprBT4PvR4gcgTSv7rfaY2o9jXk6vSi96xwA/rK/hMzkLZyg6N8VYnD5?=
 =?iso-8859-2?Q?KKD4+Yb0qakMLmW7BB8RvPMbwQdaB9AJQYdKh5NFj0nvEKwICPBeGdCrHw?=
 =?iso-8859-2?Q?re6UK9xm306BPL2RMpcILF/LdQGi/vxhU9HO+ClvyRfyV7x7hADq6+AZqM?=
 =?iso-8859-2?Q?Kxy2cqhRL6vNzMqPMxs83Eu1Nv2gQSkn3j/y9zS5GzwHNPob3/K/mQftXk?=
 =?iso-8859-2?Q?ghGYhzS0yAo67QX0IdBomLHdEwwZSi73rI5ZvonhhsZZYvgkLsYEAb8FZb?=
 =?iso-8859-2?Q?GiZ8XeVH8Z0vkXkf2MDmM2VcBlDH9/4qU/0V73AqA1rDNIqC+pQCvd6jWJ?=
 =?iso-8859-2?Q?aW1u/C8FWjPRxoNhNQ4Jezqni4pG/bHTqmlnB2177tSQL2Dc8n0merlGEk?=
 =?iso-8859-2?Q?hFd6i5wUcO6PDtQ+jUFDdwypLgRW7qz0ql5XaByYDZarvgcZRTuI6c8I7K?=
 =?iso-8859-2?Q?lsiPLjki3+73vm32mHoZPdBz7O5ZM4fH73onwfsL8ygTReNKAufQyOOmXz?=
 =?iso-8859-2?Q?AAyCJxqj41YLf0luIfghw6AzWZnbAIuTtIhVU8D60WsmzRN75oSkiZIzmQ?=
 =?iso-8859-2?Q?/xq4WR+KR3rm/5JY0nsX/DvdcndX0m3mJsCbX0GG9/aU21vfKtYgssV0GL?=
 =?iso-8859-2?Q?OZwEKmBOwieclB6rqL2ub9PfOZXQjSLZF2UYBtZmWKxUD3jbjhkMmli2J1?=
 =?iso-8859-2?Q?zq5qMOUPP2cBxY9T4rqOQgo45qGfxLyuDxyVQLXYI6nSsCeD1wvgtjygVs?=
 =?iso-8859-2?Q?vpyFmtjr1YtUY8V63NOzToPcLRQBsK7mypjbHuCC/3B+XuMS9HYNqqT5xm?=
 =?iso-8859-2?Q?R0/UPwqtrDPU7w6guaViyKdk3/tTKC6zfYE8bB3ajkvDnlKNfAlryjZmHB?=
 =?iso-8859-2?Q?8MKiriCXtPjEedkbHTnnjWBBGMjTmGCKXTzVkTNlOPKwm3lWNOQ91iWXZA?=
 =?iso-8859-2?Q?qRTdDsfgaXC5d3oBS0oYNzFWsfI50DBiEGKS/1RFo/jEoNPD9Hty3lLjcG?=
 =?iso-8859-2?Q?o7BBSxjI69G888LYdyLjCStiEIH4DLq1WFbrVgjtrN3TnghV60yUj8V3h8?=
 =?iso-8859-2?Q?YxLlPkwViEIl+tyaTyHi+eqLRMLvtCRxj9d9hpvvcmy6ELqOaPjRzaGED6?=
 =?iso-8859-2?Q?KjczzUz3wiyblrwwVXpWuUcai8NCdcoZp7r7HtVcQ4j5Y0j7e7tuhLsWAu?=
 =?iso-8859-2?Q?e3tnvo7rIt1hAN3BNulrMrbHUf3ZgsbSAXRBewQ7hD5H1guDsx53RdJGGL?=
 =?iso-8859-2?Q?zUMahZxweAn0ZTCOegreXFXC8wFuVuJ7kt?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35d1d64c-d955-463c-d839-08dc936cceb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2024 10:11:11.3147
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n6EKEICMo8RHcE2l3sXTw5WkW2aWbArscCQo/ubA++4euhjNufWOa77kyA56etQAboQ/2zibtRt57JQL6OGwig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB8070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_031133_349634_6D23B2A7 
X-CRM114-Status: UNSURE (   6.72  )
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

> Although it would be nice to have the firmware available in linux-firmware.

I think this is a better idea. If we get details from what linux-firmware installed we can found that it has already include the brcm firmware. Only different models from AP6275P. 


---
Best Regards
Jacobe
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
