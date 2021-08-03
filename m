Return-Path: <SRS0=H/Xe=M2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E0E6C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 02:23:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 09C746052B
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 02:23:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 09C746052B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=outlook.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=glSohvCR4cHw12C/GP7g67hm9xcOx6hqT5jlTNiss60=; b=IUNp7kl/5nqd9n
	qhjvyDlRp4IEF6Uvwp7/xvyvsIyLdQ6s8YfU34Mnx4nbI5jEkGJtDPEdGcFfM/yI9t6kcD/D3LcJO
	h340oJt0VJopUv4+fuclqyq0KRctbeTljv5x8A1uIRLLSUCgWbO51yS9P2WwsVSYo1LKTpxARXtEH
	85YgU2fqv6kcGq+ikF8omZBlL72uh91uRj2RS4S5l8KbmJLnjsUT46t4gsij/F6Hy7KRDMq/LEV0H
	Zwba1VR0g5bil3KQ9ka4OpR7kkNV43YbQp66M9V6FpLtyNaYqXAwJ00mFDlJHN/X6GeH7p7wIoU0M
	M6k3vVyTFauaKoAbAfJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAk5r-000nxI-F9; Tue, 03 Aug 2021 02:23:47 +0000
Received: from mail-dm6nam11olkn2016.outbound.protection.outlook.com
 ([40.92.19.16] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAk5c-000nt9-LP; Tue, 03 Aug 2021 02:23:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dw2jjs5osk+LYDFuPAaNXPqmNtweXg9BVi69GJSVm/H/QTdQnns5BbYgG7x7afYFTiNt9GtgBIqn1barNoIl5CrTqUbali3qDlIGBzKspKevjkxeNCzR3xMUj8UhX83BaJ6JaaC9IusrAOEpuSeqT3xL8qTDNmKoxcJrJXRJ88dp0CTjuLy8ka6BTYtTN4nUSubJ0cXZyCHRxD8rAX0WEJi7rAwpyha6PVB9NJfrXI9Ik3q7nWooi5ybEAZsM6TH+M2bD2BwNOUF30g4wDZUFjGjLeJozzs1AccxsheR+d6J0JQwO1yRtCBDpTd7GHm6kAIdkTMvjpZ7CdS1M0ahxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UpVmbBwjsyo2IJZ0d0TSyaKcqTc5U1t+iPTu0ilQPRc=;
 b=JjUGTL518X9EWOYoVxic2Nm1dLzVnLlP9B6MU5Drd2PBoCS8IIYJHT33PvuBshRIz2iWJk0LFIbP5JUCxRie6dQI1UyHOcUbn7R3+9ia9A1YQQf92Nqm2iOxCWKUDlHHiSrni/yCgBFYK/BOGyrnG6wCp3uXp7ITX4guO69QnqV98St/BueTMHzOXwIJbtcqfvCgEltF+ko1G75osBKJ+I2Qq4KUiS2IhyEpnsu2zzeB1JFIorZQ83ZGApbMp2VOBUAQU7mZyhaD2ZWTbouSDyy58TmKyOQMM+8eyVSw5iuH8oy0fY6jiCGZEVvkGisKs90sS6iKy3wPR48anSjChw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UpVmbBwjsyo2IJZ0d0TSyaKcqTc5U1t+iPTu0ilQPRc=;
 b=lRNcRoMR7yeQ9qYcTlmpFavbCM99iSRCzUTuKAIcZ+r7DWpjKV7pqOi1TSxlil6hKyPLkLUs/fiJT7zl+kLKL1wpodDvQsusoCftEFsrXiara67XdUsZqCu21TdJXznI1ZZ5IiIuHvokZk7dpc2J09cwhkvYo9NexNTRbZMByYgDjk5S5NRv3kYNBgvnKT13Fp2LniCWNLJaEq5GGc/jfTJM+LvYC/6/yU91y3nVuyXkv0mz7Je43y6tZXx7KX2F5yTnp4OzK+If/k5rW6DNZ1PiLWgnNuDRiQTEC+iQMJwciOR104IoHrqyqeMfF9sTG4OLNgUG35uAY+7TzClbQA==
Received: from DM6NAM11FT025.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::4d) by
 DM6NAM11HT072.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::480)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Tue, 3 Aug
 2021 02:23:29 +0000
Received: from BYAPR20MB2488.namprd20.prod.outlook.com
 (2a01:111:e400:fc4d::43) by DM6NAM11FT025.mail.protection.outlook.com
 (2a01:111:e400:fc4d::197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Tue, 3 Aug 2021 02:23:29 +0000
Received: from BYAPR20MB2488.namprd20.prod.outlook.com
 ([fe80::c560:d46:6441:fd7f]) by BYAPR20MB2488.namprd20.prod.outlook.com
 ([fe80::c560:d46:6441:fd7f%7]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 02:23:29 +0000
From: Tian Yunhao <t123yh@outlook.com>
To: Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>
CC: =?gb2312?B?SGVpa28gU3SouWJuZXI=?= <heiko@sntech.de>,
 "t123yh.xyz@gmail.com" <t123yh.xyz@gmail.com>, Michael Turquette
 <mturquette@baylibre.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] clk: rk3308: make ddrphy4x clock critical
Thread-Topic: [PATCH] clk: rk3308: make ddrphy4x clock critical
Thread-Index: AQHXfi68f0VPeurqO02nI5cqXOnZYKtWC10AgAIlOACAAizOgIAGPaIAgACDmhA=
Date: Tue, 3 Aug 2021 02:23:29 +0000
Message-ID: <BYAPR20MB24880A45E81C042CD4061C5C89F09@BYAPR20MB2488.namprd20.prod.outlook.com>
References: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>
 <162734809017.2368309.7901135942001140161@swboyd.mtv.corp.google.com>
 <2634451.ElGaqSPkdT@diego>
 <162758560739.714452.5782743329332725952@swboyd.mtv.corp.google.com>,
 <CAGETcx8YYrkCV0UObtOqHUnS29Q-raC54KUh14wqyBDMJ4e46g@mail.gmail.com>
In-Reply-To: <CAGETcx8YYrkCV0UObtOqHUnS29Q-raC54KUh14wqyBDMJ4e46g@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:EF9C9D3E3C82C1E8A0E1D843CDEBB39A84B9E62BC68DFCD3E43256E5D315CAA9;
 UpperCasedChecksum:288F172A77795D58200C3651DFD03802EFE7E4FC831586A5278BE1B33D03381F;
 SizeAsReceived:7476; Count:44
x-tmn: [1XOpPTgNYyO87v4L/5iQYsfC5Jha268z]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 6358eb15-0bfd-4df6-8d33-08d95625ae85
x-ms-traffictypediagnostic: DM6NAM11HT072:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 48bA1/XOGKdxOVQISn7YdYU3rgmhdhAbOPBC0/X5SX/DsjqEAbyrfl/3+QQL9oE08E/yozDeH9zFyZVDh71X5uXgugkqOAuxC8ieN64HSn8HGsg+q50Jh0h5vZVsbvz1dMlJBJ0CsFa6os4doszUdhUMmmB1JB2oIvdc4IApmCGXsXPu90b74aX729xpF3E0HrbA8ITftNjVVD8gwyJVP482l+YbrOMisjajZepneedrHVgM0qK96w3S2nu6aFgQ5C8GKxMXEI41eM1XEnTMWs1ZXBrN9LblsnimJK0XOdBW7OXiJexun+4pXzpKoE3ukZDVY6EKFyC7NGXiRy4vkJcHxm3569KjE3RUQ3oyY+erN6G4uLtEx/FtuSaD5rpool29kKCgz3V8lmzWhL2SDhFk/Yl0tClSWsV2n8LfwoIN7TYMjZDHKRW4pfCfm/9RDUh1y/B4Rcm6DV+PZjAWlOJNa1y2AHLgwWOHCwNc9TQ=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: Hnet6V4P482MrDUDixjZrFXGubjn4gU8JqSm1wxhwuidASYftppRnSu9Vz7+x+QL26wvxeqWqR/9lGgJG6Wkqbmp3TdiQMEmr9ZZ0pCeEk2JxAKnUbpmGWwFEY0o2X6ukmdDBTpBVnnZT+jGEHjbSg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT025.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6358eb15-0bfd-4df6-8d33-08d95625ae85
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2021 02:23:29.0662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_192332_910691_871AA00C 
X-CRM114-Status: UNSURE (   8.83  )
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

> Yunhao,
> 
> Is there at least some DT device that consumes the DDR phy clock? Can
you point me to the DT for this board (not the SoC) so I can take a
look at it later?

Hi Saravana,

If you don't mind, you can refer to 4.4 kernel modified by Rockchip. 

This is one of a board DTS: [1] (note line 203: &dmc). This is not the board I'm using, but I think specific board is not related to our problem here.

[1]: https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm64/boot/dts/rockchip/rk3308-ai-va-v10.dts
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
