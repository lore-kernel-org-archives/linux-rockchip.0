Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C29FC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 14:58:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E72FE64E20
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 14:58:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E72FE64E20
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lAFjC8DDSDGPJW7to1QsNKdwz9AoxjilTJcR/nEYGzE=; b=AF0WYfKFnFahREF6I/U81uD4M
	QwMUIN/klKjYHbBng7aTQ9dngI1M13hw96fqfCUPKOn7s3mhWw9SH5F0+GpfNESp1JV4lMg7NFRh/
	m8FREnxx7khfL5q1Olj5UJg6gYeobVRJMTibFE0aZg4ZleKnhu5a1zwVh4ZCcbuOKRbdJYvxBYlu/
	UsJxa6Owg9TcyrKhDLQCDYO9oPtRfs5rvhFY2Gk90psa5gekkMnKdRqwpa81Eq+2PoFlfG2ePASMk
	Gu0RAD/jzcIIrZs1QQM4MPGTckBmGsUIOK9XiNcQ+z+RCg7d2LJDdUI0OtdlnDtLTQPMwopxyfXsz
	yIvrx/xxQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEZ8i-0006wP-Ds; Tue, 23 Feb 2021 14:58:16 +0000
Received: from mail-eopbgr40064.outbound.protection.outlook.com ([40.107.4.64]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEZ8f-0006vy-T5
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 14:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jlfxMAbLkmBLWo/yInVgmOnngHNWPgTy9ItQ285qy4s=;
 b=cprkoiTvf+aMFgLh0xdxY4KhAW83+htxn2UfbZbMFsRwNVhIfVe/OfcLklPiQythMMe9c9c6mYMzMnAM/wDvYP4cCF6qarv21smz2OQE2cOJlW8MN5ukguaAUPz7ws6CsItwNUEPdbIRUXe8pzCY6MxSRCs74cWIHmJZR81ASio=
Received: from DB6PR0802CA0031.eurprd08.prod.outlook.com (2603:10a6:4:a3::17)
 by HE1PR0801MB2092.eurprd08.prod.outlook.com (2603:10a6:3:4e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Tue, 23 Feb
 2021 14:58:08 +0000
Received: from DB5EUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:a3:cafe::87) by DB6PR0802CA0031.outlook.office365.com
 (2603:10a6:4:a3::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend
 Transport; Tue, 23 Feb 2021 14:58:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=pass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT062.mail.protection.outlook.com (10.152.20.197) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Tue, 23 Feb 2021 14:58:08 +0000
Received: ("Tessian outbound f8d85101260a:v71");
 Tue, 23 Feb 2021 14:58:08 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e995d39fbabd843c
X-CR-MTA-TID: 64aa7808
Received: from 7fee38decd0d.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 3EAE74B8-3B9B-4097-B60E-E36CD9C3F657.1; 
 Tue, 23 Feb 2021 14:58:02 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7fee38decd0d.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 23 Feb 2021 14:58:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i4c3NBWFPeSZCLuk2AVFyLHySULHybKDQyiPNw1VbcyI2dnhcN1NFB1ui7+oO0FXacYb8lQ90/zht5lXk3sit80S0mJMHopqOvjVI8bXyfL4R/G5fV0AwN45p/PFs7VsgpncRZazGWcoJ4UhYozP8xXRsvQpXTQZiC4l6r1bxlf502gjxkSVf6gtjJZDvSKtPDR9CrwwOClEFswwsRQK9Jn3ypguxQ7bs+5h2nggl7/Dq/fy0r2Q53zdcsnhsKyDijmNjZRRJV8wQYJDIXbqVP2T1/Yi1j2DCAqnaqoj+n9gFkCerojK2AdLkv+zuClQ5MLsVsDmiIG/e7XcSUMU9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jlfxMAbLkmBLWo/yInVgmOnngHNWPgTy9ItQ285qy4s=;
 b=nKcvpavqc8rvES/VnMnkuFe6vCprGHOLfMCgnecXtcjcZqal8ui3LHLEJGOEIvczBhqTllQ2i8WB1c+66eCdwp9ApLVkehPkTjZt1FjyumdUeWp8ud9Bp5t6k08mq0+EC/3hITdUGtUk0tIwN/O6Ok9gAg5ci1/kfzZEk42VujARCOO8wqPk6l9G7ndB/ECCouOHVl9JefXjVVGq6mMGvcGm4Ar3kxx9+ORR/WCkigcxw2JQrgf2sMbpgWByX6Qea+pVDJNR5YpQQNMk9exvZ5GlLy9WUfg0WyIOOufw50dezTSONPNMVIypC32hBkVOt8DqOIF4ed5q5A7FUzzolg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jlfxMAbLkmBLWo/yInVgmOnngHNWPgTy9ItQ285qy4s=;
 b=cprkoiTvf+aMFgLh0xdxY4KhAW83+htxn2UfbZbMFsRwNVhIfVe/OfcLklPiQythMMe9c9c6mYMzMnAM/wDvYP4cCF6qarv21smz2OQE2cOJlW8MN5ukguaAUPz7ws6CsItwNUEPdbIRUXe8pzCY6MxSRCs74cWIHmJZR81ASio=
Authentication-Results-Original: fooishbar.org; dkim=none (message not signed)
 header.d=none; fooishbar.org;
 dmarc=none action=none header.from=arm.com; 
Received: from AM8PR08MB6628.eurprd08.prod.outlook.com (2603:10a6:20b:362::8)
 by AM0PR08MB3220.eurprd08.prod.outlook.com (2603:10a6:208:57::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.29; Tue, 23 Feb
 2021 14:58:00 +0000
Received: from AM8PR08MB6628.eurprd08.prod.outlook.com
 ([fe80::e582:9391:68bc:37a2]) by AM8PR08MB6628.eurprd08.prod.outlook.com
 ([fe80::e582:9391:68bc:37a2%6]) with mapi id 15.20.3868.033; Tue, 23 Feb 2021
 14:58:00 +0000
Date: Tue, 23 Feb 2021 14:57:52 +0000
From: Brian Starkey <brian.starkey@arm.com>
To: Daniel Stone <daniel@fooishbar.org>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
Message-ID: <20210223145143.7bfayhp32tzdj637@DESKTOP-E1NTVVP.localdomain>
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
X-Originating-IP: [82.27.180.53]
X-ClientProxiedBy: SN6PR01CA0035.prod.exchangelabs.com (2603:10b6:805:b6::48)
 To AM8PR08MB6628.eurprd08.prod.outlook.com
 (2603:10a6:20b:362::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from DESKTOP-E1NTVVP.localdomain (82.27.180.53) by
 SN6PR01CA0035.prod.exchangelabs.com (2603:10b6:805:b6::48) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.28 via Frontend Transport; Tue, 23 Feb 2021 14:57:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 926e326f-de1d-4ed1-06a9-08d8d80b6e75
X-MS-TrafficTypeDiagnostic: AM0PR08MB3220:|HE1PR0801MB2092:
X-Microsoft-Antispam-PRVS: <HE1PR0801MB2092317682E996F4955BCDF7F0809@HE1PR0801MB2092.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: t9JSortnfKWpVQF6rmF4DgoCQYqdhY664cXg5w+8U/Es8mymCwjkL2yLKLPwkypeM+DFd/r4Nw4mOU56GE/6YCI13AxASGBE/U+sG/l7z6m0TeyUe2qyFYULq8DtHXZrsvtFCPEGFNQ6Jn3YPQDfFtz/+3DNzCiwmDKN1jKRcRNBy7q/93XA4SP8ube7GWeBFsRnmX02U+21dcB9wc86hMsLuutnths/au8JKPL2HOY/5LlEx157tx2ryfEhjXcS9HCpHn6dr6KFIOSkdTtkbHs9eN5SKUCpOHAgQ4MEVEWjF31Mz7Or1IbxHNGPZHDmaBl7S+oawBW+8F27IhFlMpWhiEqeVA97Tw49ocR61BU1GGQzcDnHoDmwULfhz1C2G7QXtjQ7sTaPwFR2M51Gzz7tFI0aiqj2xVcvahyhnFIew9RkE/t0LZveitQ5XEHrnPgS/Lo5TOWGlsxftQQPMag6lHqdsSVQ9PeMG07930H2txXKXxTBGg9CUDLkkwG+/gdeatf/j2VDTBtt/pXwUNlxyZM8GTGEOgD8cthHUSzMg4e3JgZbcH4uj28ejVBQxdk060NgPOqmBFqZeEIObN23h/47Y8WQw/R1rQ66QFw=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM8PR08MB6628.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(366004)(346002)(376002)(396003)(54906003)(26005)(4326008)(186003)(1076003)(966005)(83380400001)(52116002)(316002)(8676002)(16526019)(5660300002)(6916009)(44832011)(6506007)(6666004)(2906002)(8936002)(86362001)(956004)(66946007)(66476007)(478600001)(66556008)(7696005)(55016002)(9686003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?gAlVQGJyipKCfzSwd2P0UCgI3toJk/Kt1msXssE7fPWDZdHgKWPcjoo/XJT0?=
 =?us-ascii?Q?DswyS56ChfT3XeTWhUiZmd9CKnfdaI4ArRk8mNg7sglz7ahKbQi8ZMkjvTAC?=
 =?us-ascii?Q?N3jUTpxRBJzk8cyJ9hONPbdKtONfXS3OGbnzf30jjwh7EPcMjQ1nxkz9Brrm?=
 =?us-ascii?Q?/mpUzOHzRhzCz/63K+8/yB57qeWhvgESsanoQKilZ6WQ0FsuT2CxqPC06LAU?=
 =?us-ascii?Q?2lWkW2VBxSGYTfKfLcGMj0KvYuT8qHRG8VjgW15sHDRZMjosJS3KpTRkzu7/?=
 =?us-ascii?Q?sVfLleJuX7HRG06BiBIaDq10ggrsGTELNUfXpENENZSIj4Agt63yiZUQQEJS?=
 =?us-ascii?Q?I+lfFLo4r05aas0324bOHRSsQwqNL0fludKlhrf9lfCUXxI8m9JbWFXRTzhR?=
 =?us-ascii?Q?RP3H7yNQj3YhJnkq1ZxawFWQe3k0PgVQ1qNGXc3HqakIXLXgJX5ylk8nColC?=
 =?us-ascii?Q?/e1H8xbY/hm5Vo+dhA5XbssR2iyeYNGBjA33O1QqkvFiTeugIj12pA7mh8VS?=
 =?us-ascii?Q?hUloluwht2dDfDELylx0zwBeEfTk8wS6wwoKvN6Tms0f4RW2f8KRl1vP5eDd?=
 =?us-ascii?Q?dRwWGqx+0K8a0B8/KhapQ36cKmYd7EzuJ8hI0py/DBPwrxm6Jg+ki6YJpR8w?=
 =?us-ascii?Q?xTSFHfTkK44xj002nZQ39kaDETlYIleGGGKLn4DktyxznulDmsiIn8uZvMdm?=
 =?us-ascii?Q?oTrmAMaLoKNGFNbVbE0xiQjST9CKLde0MHfdjawxd8t2Ajw+HpEE0/37nDHJ?=
 =?us-ascii?Q?asU9iw6ie4DXa9D9BUVgMpCmSAZR5BZxYxWDdUTZ9dqy37vGBcKjs0L0ZZL1?=
 =?us-ascii?Q?w+S7ZLhtwbKzPYyJrF+hyG7qdxDIAsW5oZWVF45Vt+YD7vX4wNYh3YvV8nLJ?=
 =?us-ascii?Q?B9G4kxcJijqtbo4WqJZVQuFKCFf2Q+1bL12unAaN7rYoW6BNj1RGzdVnRYg+?=
 =?us-ascii?Q?STiRAJs9HOl5Ki+PA8CvrUNEvIxO9FozoMrJ5v6yLPXBrFf/RYKjq5OiiX8g?=
 =?us-ascii?Q?mdatGaMv2Y72cS6wZF7nzum65bWcl+XmuWA1wAE33q9i7pw/fX48HgLCoKsJ?=
 =?us-ascii?Q?esHnEQZ6Ln5m7vwbiOaZBsCwV0IlDBwLN+S0jq1r9GalfV+mP3YXUD2450XA?=
 =?us-ascii?Q?2Lrm9pk5YSnBloq6/T201rEW00LJw5fEycXIFARBKqSQhJVmcZ2z5MMEEpf2?=
 =?us-ascii?Q?v0zzTQ+mly8HM1750EWZ951ZkBb2n7XnnwJjHS2H0onvJt7l1n4kJo5WKYBM?=
 =?us-ascii?Q?LJlnMyG4aJAgJgCKN8Tuqo2k1gSmeSXcNOsoIwbgp0F+jLKQn/sidcoKv3mC?=
 =?us-ascii?Q?NvqZEJ0ChSLQT+Q5ZuMVYb3J?=
X-MS-Exchange-Transport-Forked: True
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3220
Original-Authentication-Results: fooishbar.org; dkim=none (message not signed)
 header.d=none; fooishbar.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT062.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: cc57e85b-f595-4d91-2bdd-08d8d80b6951
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FZiJzPtcYuBKU+baBz7Z34hJdrGH2S1m727w5U/85YcXBBOU6YZV2bl72ZgYtufjJIJVzIQzuhbAripHGVV11nHzEg2Ee5tNOwD5wri7XmWeVxHUO8Pc8NrgJSZMkUQoTucFdHr3AVf7h2qGX3fwFOqEtBrM+F6gEmIyHEu70S73IrcSVgG99hlubzBV8WUwGsdVQMqu0SJvWHQoQdFLzb85NQu4i2UzFlSDzAd2xOsdzZhudHalpSIGYoEHEi12UFcFrPI9i1BHzR1kOwJw4/UDkX+izrlBsId54sR74XdP9Gvlq9G+I1371mwaqyfzMcSRROarcUm9Z89YYj05bj/8eYEJERJlyAXxwHncRALu/mhjIJEsWD1B+WLD64sm/MPsBlAAfiZv3dXjtDf9yQE+H7wGOC8aV+m7O3CKzK0CSomSst9G6RG7aPNKtW6mNXEjfeYbrUmv/VM+snrIwYyKi1RxnzYTmSw7xCELFeyR8kpREymjzNsInk79DowmCO+FXomMMq3dkJpJANc8t5hrdmqMShwsBgdt2bfgaJhh0PacWLzqmlkYVCWuL5U1O1djpmYbbLTNZzZBetuXC/qEiXHC5EvxgehNy3H4y8zBOFvRXMP122QMEPQ9/uD8bMzDREhEU5E1elA8y0cqAyfQA78UOq5YHBfHQ4qpqwW6zi7bmlIecVNSLaQerIKd4GkiqB2NolFNKsRmJUHGhrYznwzuUlwlbOtZobv1Xjs=
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(376002)(396003)(136003)(46966006)(36840700001)(966005)(6666004)(26005)(186003)(6506007)(44832011)(82740400003)(55016002)(82310400003)(316002)(8936002)(83380400001)(356005)(70206006)(54906003)(36860700001)(9686003)(956004)(336012)(81166007)(478600001)(4326008)(86362001)(70586007)(1076003)(8676002)(47076005)(7696005)(16526019)(5660300002)(2906002)(6862004);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2021 14:58:08.2263 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 926e326f-de1d-4ed1-06a9-08d8d80b6e75
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR03FT062.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_095814_066732_9CDFBBDC 
X-CRM114-Status: GOOD (  14.56  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, nd@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Tue, Feb 23, 2021 at 02:27:11PM +0000, Daniel Stone wrote:
> Mark, or others from Rockchip, can you please:
> - explain if there is a way to enable/disable the YTR transform in the
> VOP's AFBC decoder, similar to the split-block control bit?
> - ack this patch which correctly declares that the YTR transform is in
> use in order to make Panfrost work, so it can be merged through
> drm-misc, or provide another solution which fixes this API mistake?
> - if VOP does have a hidden YTR-disable bit, add support to disable
> YTR so rockchip-drm can continue advertising the non-YTR modifier, and
> Cc this patch for backporting to every kernel tree which declares AFBC
> modifier support?
> 

Drive-by $0.02:

As described in https://www.kernel.org/doc/Documentation/gpu/afbc.rst,
YTR is only valid for "BGR" component order, so this shouldn't be set
or used for "RGB" order (or YUV) formats. For BGR-order formats, it's
best to always enable YTR to get the best compression ratio.

In an ideal world, there wouldn't be hardware/drivers which
support/allow non-standard encodings, but we don't live in that world
:-(

-Brian

> Thanks in advance.
> 
> Cheers,
> Daniel
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
