Return-Path: <SRS0=0lmb=MT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=3.0 tests=BAYES_00,
	CHARSET_FARAWAY_HEADER,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11822C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jul 2021 01:22:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C712260F90
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jul 2021 01:22:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C712260F90
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=outlook.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1ELLW8YlrmXowuzbjaAFk8UwTEN0eddMGPfk/9dhUs=; b=v8UEmAVpASEqH0
	XOo+OymN4O4G5FZQuj3rbdVQGDd0Lt6CQwwmaXvDrUgeR9/gD63nUJ+DJS4SzUqT/vQnz9z1wc62G
	Pk+7aUYMx9UsVS6NYFEFeozUOwbEaJ6SGylbssRG/Ty6JiDya7xd37pVr5z+Stv7JxssQKACG8/z8
	zlGIFjwlBoX7A4VJaMBSRkr0MgfKYXBQ+ZKIcSykxYw4+K24nboIvDKQrsbeHI+bAJsQXsBJrpTdS
	esen9VGMxw8Pr2CRh2aqCRufjLWu8chJde0u+5E312cuExNGaCeWjc4n1mY4MVWll0Q4C1EmexW9b
	BYYmQDv7LVdbwCQZdQuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8Bnj-00CmEz-He; Tue, 27 Jul 2021 01:22:31 +0000
Received: from mail-bn8nam08olkn2049.outbound.protection.outlook.com
 ([40.92.47.49] helo=NAM04-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8BnV-00CmC0-AI; Tue, 27 Jul 2021 01:22:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bTS5bYhpVHcq+TpZ2m21OB+NoygTZLVW0zdauRxbYZ/WvrAEXFPpiSFvJ99vrwNmgNG7Om3fJhYbHq0KWMTNMmMr2a+xwqVpuxifZVm81M7TYBrsYm+sNQKSEqtXFg9EDrRQyo9Ri66Hu818tWVzhTBLvvzeTWJwUYnnJqucT1PDE+alK2YBcPjs7efgDVayPm+lup1xVV/IQwMSQ1flngB2yDb2K3ODLrI8IhIV5qAH8WMbccA3RWghLl3ov7d4+nGxGFPAP6YfCzyocEefrBH4AEXjOo9sNzjGL8B3aCGK2usdZwALVJQdmNXkcTs2f3mVXPOU9ssOmhRsiOEGrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5B1AQpUrAoKKo6347lap4f8S46pLynW2bJmCbyYaRBU=;
 b=Da+/VPudJslbQpLilgLXIIS02Jqqwbg2yJx2KIVcCzVTonKGI/vW2Edides5UAWT3jqjGXuIPHikQfZmivWthdQpOdY3DyE0Vo5JYXw/TyiVADAU5rnuT/89PftWZe4IEiZGAtt5vCd1k5fu27+9T4PwsvsMcOUIr9JGnOccSQdwvXOqpHsBEJROqsJ0y/6hD4Z2/hZrFWm7AIeTJcr8U2AjQyu9AMJKFVinxaZN7uP4uMf1zUrmhBl7nBoc/jDPVqdPn7PgWLQ1ciQpvWOU/gRDh+1QPg+tk4OKjdcJzKmFSnMLJ9uwocsDG6t7bgJ2M3S0DoAAYF9L+B6NeNqgww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5B1AQpUrAoKKo6347lap4f8S46pLynW2bJmCbyYaRBU=;
 b=LBDGuz6jZ/5A2jv7RWf0NvuBzWKckquYlHePASmO7/xxpkY0CT6ceQy8nbrYq+EugzCMa6DJlcz/2xuBeMXqW67M05tI2c30dpShFE0xCh33gUetFlc/+SvZxQNZQ59U4gkQfQBXQ6DbMiUPIFxkwRB5xXNP4xk/tJ5Wi39RPIsB827s+gXnVGJY9SviffVIkpeQ+BUzvN+78hpnKCCinTRpHoRcsiiHHS8uQr+zogzEPkMB4FT1R0lx2/+n1PmaCwI4LnbQG6CmAFH5QfmZXVj3MTWDx5wwUUHP8YxvJ7hQqaJSo8SoOEsd5MBVelhIW/REfWIKQ7jYveM8r4qWwg==
Received: from BN8NAM04FT004.eop-NAM04.prod.protection.outlook.com
 (2a01:111:e400:7e85::4d) by
 BN8NAM04HT169.eop-NAM04.prod.protection.outlook.com (2a01:111:e400:7e85::279)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.24; Tue, 27 Jul
 2021 01:22:14 +0000
Received: from BYAPR20MB2488.namprd20.prod.outlook.com
 (2a01:111:e400:7e85::44) by BN8NAM04FT004.mail.protection.outlook.com
 (2a01:111:e400:7e85::432) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.24 via Frontend
 Transport; Tue, 27 Jul 2021 01:22:14 +0000
Received: from BYAPR20MB2488.namprd20.prod.outlook.com
 ([fe80::c560:d46:6441:fd7f]) by BYAPR20MB2488.namprd20.prod.outlook.com
 ([fe80::c560:d46:6441:fd7f%7]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 01:22:14 +0000
From: Tian Yunhao <t123yh@outlook.com>
To: Stephen Boyd <sboyd@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>
CC: "t123yh.xyz@gmail.com" <t123yh.xyz@gmail.com>, Michael Turquette
 <mturquette@baylibre.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>
Subject: =?gb2312?B?u9i4tDogW1BBVENIXSBjbGs6IHJrMzMwODogbWFrZSBkZHJwaHk0eCBjbG9j?=
 =?gb2312?Q?k_critical?=
Thread-Topic: [PATCH] clk: rk3308: make ddrphy4x clock critical
Thread-Index: AQHXfi68f0VPeurqO02nI5cqXOnZYKtWC10AgAABmxU=
Date: Tue, 27 Jul 2021 01:22:14 +0000
Message-ID: <BYAPR20MB248831FE0EE03DD31FB2C08C89E99@BYAPR20MB2488.namprd20.prod.outlook.com>
References: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>,
 <162734809017.2368309.7901135942001140161@swboyd.mtv.corp.google.com>
In-Reply-To: <162734809017.2368309.7901135942001140161@swboyd.mtv.corp.google.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:DFC97D93DD29155311C598B5787AEEC9A94655ABB8C25C0A4600E9646F099D8E;
 UpperCasedChecksum:BE7B1EA19703EB2C33F8E387555214F7A2C060160CBF4FAD5B85BE22BC2CC4B0;
 SizeAsReceived:7281; Count:44
x-tmn: [hzUSoeEXZPKHysFA5II4dx/EzVxpQLfU]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: f70d8c74-c63b-4515-bbd2-08d9509cf75d
x-ms-traffictypediagnostic: BN8NAM04HT169:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C/RfEkOGTyVH/f8G8XvpYzusiPVnUhw0MDv1pq8pP3VdX+484jLLpUfyF8RtwooJv7UqEI1nR3OrBxBXnSJUqpfeR68Ah4uMFeVLn80RtmXRTbI8cQ2BBr0XSTi4pRWyz5vUtCQBKhnG3yI1w3QJnoYu/RHecB5xikwCqBSABJvRvAm0aCFLhJQALsNKssqT4bDwkvwEpZs/6EcyZPmlNHFMF7QgWLUboBkkWQsqczG8ksGQEZ0W0h6XRJ/D9wE6LsZArskSKftAu//cEqtZlZUNacDCpERV4nElELUxs2Ar5RVaJpbWB3UTHD9BaRTLN/26yz4F7eZAaOX8Hjm9fEVoHuqPoCk1NDkvR4INISmMgTWZSmABNMtVONUPZjwoFp7yY3SFGav3Ft/JeHdVqOheJSpyk2eYD/OprZpqHC41bvOK0Rq7XBaPgrBMqAgP
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: QciXo5rvMHZ8hkgG/BuRKKBpSHuNlel0MCBRI6s9viSJi1dVK1gkF5VWM0E3+OgY86DYdqNha4/Wdyoh0A1gR3i1+LT24P2qlqgEt5x4x4mww6O0bmybYCNWLN+C3+CD3OyMK1vzDQH8spB4F13w5g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM04FT004.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f70d8c74-c63b-4515-bbd2-08d9509cf75d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 01:22:14.4381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM04HT169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_182217_441834_CD8231FE 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Stephen Boyd <sboyd@kernel.org>

> Is it not enabled by default?

Indeed it's enabled by default upon power-up, but it's not
called by any clk_enable (if you look at clk_summary, enable
count is 0). The clk framework thinks that it's an unnecessary
clock, and decides the parent, VPLL1, can be shutdown any time.

If you enable and then disable its siblings (like mclk_i2s0_8ch_in),
 the clk framework will think that VPLL1 is no longer necessary, 
thus shutdown this PLL. This will cause DDR to lose clock.
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
