Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C142EC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 18:34:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CF2464E05
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 18:34:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CF2464E05
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eGftxBwX4DX5sG6icl7Uq8eCkbdBKAs/0Ss+b3Gp9sI=; b=c1+YEyB5ZBlzm+lThl0ojWkN7
	pfPXn+VS5GjGtcoPFWex9K8sK2AH3Dcpc0NQoeIJaqOgsDKBENFAgqGZ16E+WOJhg2Wfl4yd+YoJP
	GE34s4QjTkhP26ERU85yVcojLwWi62usjyUYWK076kxozgWYVv9wRnWgj6Hu6eVhN9s60zbsh3cW4
	0ZNsQMA9Ev0ttXIp/Fe6hquI6C3u7us7GieqlkwTHmj+Hr9CFN+tEIlEIZtJc609xswMRu9JJxMRN
	s2oZi1mTSnRsR3NqSopxcCyLG8cZGcCLPVynWTCRFCRH0XDuKebVX3zHsgxogMy3CWRFq7+2s4hjM
	hu0dq/gDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEcVu-0007fv-EY; Tue, 23 Feb 2021 18:34:26 +0000
Received: from mail-eopbgr60081.outbound.protection.outlook.com ([40.107.6.81]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEcVp-0007dx-R7
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 18:34:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUUMeeW+rUwbsocq4Hj0fy/YamHKh32X2IIP873C480=;
 b=NnAmqPjTBXNMYc16WJYitDtz6gnbnjeTH5dlVmYugRqcQ5fAXMH3KODUFv+Evke3u2Bk/yXnV3RymTO4ueZWGhjZnXpqNn/ytZgQwk0unC+OYGJhzXN1HtUfCQL7asnW8jeb/AJIuQdYC/Eb38GtnwvTu8pdZlKRnfXgI9KQhlA=
Received: from DB6PR0201CA0025.eurprd02.prod.outlook.com (2603:10a6:4:3f::35)
 by AS8PR08MB6694.eurprd08.prod.outlook.com (2603:10a6:20b:39e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Tue, 23 Feb
 2021 18:34:19 +0000
Received: from DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:3f:cafe::4a) by DB6PR0201CA0025.outlook.office365.com
 (2603:10a6:4:3f::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend
 Transport; Tue, 23 Feb 2021 18:34:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=pass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT033.mail.protection.outlook.com (10.152.20.76) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Tue, 23 Feb 2021 18:34:18 +0000
Received: ("Tessian outbound cae1e71cca86:v71");
 Tue, 23 Feb 2021 18:34:18 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 87eb6263d7545b97
X-CR-MTA-TID: 64aa7808
Received: from 15e762f6d429.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 7AABC890-30B9-48D8-B9CD-D625A276E1E1.1; 
 Tue, 23 Feb 2021 18:34:13 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 15e762f6d429.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 23 Feb 2021 18:34:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dUrmBCKftTSpYwKZBwlwrV0kjtgB+m5aULEH4K4/NZSsxfsfdX0FGVTpwRc2jwptgyGWo2fHxKcc9lvxAMbslWd4C7+YS68mKIeZWyA8A+fQyPcGU+75dg6zqrI27lVZl8iSBwxUQ++XO59Tn/OhGf/NX208xL0OfPpmnQWYBfG+qW7FHpAYu03F8HF5TRrAryQUwJLd4cnr5c8Fa93K8EVZz3FiSF8FhAZxodLdH/O6Om60PLGZ7q2gEtA97M7bi5f3nYIv8lfOTBrvNR+D0FO0YrYxV+m0+o5Q/1Y2BptmnUnBVtppfA0fuBQq6AWSzIADCouQCvVDzmiAACNjEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUUMeeW+rUwbsocq4Hj0fy/YamHKh32X2IIP873C480=;
 b=nlN22sB6KjbwFPMCYyE2nh30Uw/8OGv/W59uUBG/b6ekD4HyW97fbz+pz8PXP1ijJZijW+vvoC52wwdCo8oVPRdfgDzD+VmdveaMFYL8cJn8qLfp9dkxMhsn4zIedQ1JvZSEtzNXEi2BoTG2iibekj81J/YJ05x1NMsUgulrGpt+0o33K/GFOI0lELKKa0e7wPZNFWeFYf/0ipwGgaFRnBjI7i74X0Twt6nSXYfWjvgELPYBPIO3Zy7SjZfi+CMRVmz6/E488Z/D83glDr5FZMu+QtUj0INm7WzQvujM7K13prni7vvaAwtA70K/s7Mjm7rIJBvX5uswKoq6ecJytw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUUMeeW+rUwbsocq4Hj0fy/YamHKh32X2IIP873C480=;
 b=NnAmqPjTBXNMYc16WJYitDtz6gnbnjeTH5dlVmYugRqcQ5fAXMH3KODUFv+Evke3u2Bk/yXnV3RymTO4ueZWGhjZnXpqNn/ytZgQwk0unC+OYGJhzXN1HtUfCQL7asnW8jeb/AJIuQdYC/Eb38GtnwvTu8pdZlKRnfXgI9KQhlA=
Authentication-Results-Original: collabora.com; dkim=none (message not signed)
 header.d=none; collabora.com;
 dmarc=none action=none header.from=arm.com; 
Received: from AM8PR08MB6628.eurprd08.prod.outlook.com (2603:10a6:20b:362::8)
 by AM4PR08MB2817.eurprd08.prod.outlook.com (2603:10a6:205:9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.29; Tue, 23 Feb
 2021 18:34:06 +0000
Received: from AM8PR08MB6628.eurprd08.prod.outlook.com
 ([fe80::e582:9391:68bc:37a2]) by AM8PR08MB6628.eurprd08.prod.outlook.com
 ([fe80::e582:9391:68bc:37a2%6]) with mapi id 15.20.3868.033; Tue, 23 Feb 2021
 18:34:06 +0000
Date: Tue, 23 Feb 2021 18:34:04 +0000
From: Brian Starkey <brian.starkey@arm.com>
To: Alyssa Rosenzweig <alyssa@collabora.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
Message-ID: <20210223183404.jmdw5rojy4s64xfd@DESKTOP-E1NTVVP.localdomain>
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
 <20210223145143.7bfayhp32tzdj637@DESKTOP-E1NTVVP.localdomain>
 <CAPj87rMkSdtrHnoLzK6zAVvST2KH8SprNnp5bS92qpr84g=fPg@mail.gmail.com>
 <20210223165348.edghgglgx4g2lvfw@DESKTOP-E1NTVVP.localdomain>
 <YDU2+A0MNJnrWxPs@maud>
Content-Disposition: inline
In-Reply-To: <YDU2+A0MNJnrWxPs@maud>
X-Originating-IP: [82.27.180.53]
X-ClientProxiedBy: LO2P265CA0068.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::32) To AM8PR08MB6628.eurprd08.prod.outlook.com
 (2603:10a6:20b:362::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from DESKTOP-E1NTVVP.localdomain (82.27.180.53) by
 LO2P265CA0068.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:60::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.31 via Frontend Transport; Tue, 23 Feb 2021 18:34:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8d035781-3712-41f4-8718-08d8d829a19e
X-MS-TrafficTypeDiagnostic: AM4PR08MB2817:|AS8PR08MB6694:
X-Microsoft-Antispam-PRVS: <AS8PR08MB6694CC657B25E48BAB154047F0809@AS8PR08MB6694.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: vkIOyFx4fHuDDmgREbTx1VGa523F6O0BYtiW564AvDJ1hu1t3Qk1BwpmDUXo3XwWOTbvgR23J6nin865ab0kyuSDpml/1usK1eh7PlQq7pNk+8lNLLUaeqAsfsZFPowQsA9SNq3KFPYRqIMTdIvz7VIOeP0PAyrQreiaJKuYs6s3rorwpyHiHLBRIV4xl+8CIFL4tQ9niBnWR0kOR8gpqKbeN6LfIJkdgytsUMbUpLgSpko72iTZdMLgqIolpQu4NfjsA/9TIo7RwgdinsP3TwCvfuFvP/gHiF4DHFMP3RVhG1EIFVF/G29VjZDbsX6S4XaaOnhOxdCH/PwuxNCMpR7LC+qLhCrWCisg6kUCwBMOagE7/p7aH9Sh3re0iq+dQcrVnrtHzl2ebHDI7s8Mk7z5aW5um2mrDzWqrN4m72zmOzIELegNZbsUbHMA5sGLfTqMWBVoWokLCbF2p4doNsi4l5s9fgtd2H6DJ5SIW8iafSD5H4ov5br/JpcTXsFFBGl4cbFYxlt2tLBLsnzRpw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM8PR08MB6628.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(396003)(136003)(346002)(376002)(8936002)(4326008)(186003)(86362001)(54906003)(55016002)(16526019)(956004)(44832011)(9686003)(83380400001)(66574015)(6916009)(7696005)(316002)(1076003)(5660300002)(66476007)(52116002)(26005)(66946007)(6506007)(478600001)(66556008)(8676002)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?FgqpBvs0nCvmm3D43HydlIREpQPJLSYbjOT6cGtW1UFjBHVzp+xLeFE+A2rE?=
 =?us-ascii?Q?AqIua9A9jT3U7iYQjx31l9qEg0f0hmtjlFKZmbi4XRSQDdulLzdfTYrFnkBJ?=
 =?us-ascii?Q?CCI3QgOgTstqlXBLUFHSvVYQXwCt2YkztSpBNE4fS7VEq5NJ8gm8T+oJN+kH?=
 =?us-ascii?Q?PI69UyxHIMFUAtuo+YxOvT06O2G0NRD78NDAOgDowSoCb1Q4dCSl65gJixO0?=
 =?us-ascii?Q?pl2o6BMnoM9tdjpDUL1ZcMaHh8xMXJU8Nu19zzAVPM62mBPDjt+d3gyyM1pu?=
 =?us-ascii?Q?xNpNiKh3GHe5Enp+eNNGAeuNb/Tijo5Xvkhou3RfiJV5FfJ6ldRvgdqZrHm/?=
 =?us-ascii?Q?T2ATQbmjq+64G+E9muhgbCuoiRqRCemiHEy0XSt7iEl9Zd9WexhUhBiCZFMt?=
 =?us-ascii?Q?f34Hc4rWQFy43Dzpnwk5I+fPvJqXuNvz7+klLdcAazSgpKz+pbJoUr7nhzTL?=
 =?us-ascii?Q?/ac7GXy9eVlhipe0/VmYSIo/bb1mW+coyHSWGAFxK430RNSSHX0c6cI8mZVb?=
 =?us-ascii?Q?IpunHFclt7WUkcV9fJD/ZJdPb2Q1DhRL9ll6dxP7xW4f/KvMxwHktgm0/FqH?=
 =?us-ascii?Q?uXrCxIX1q5CUNvtFanMM/7dj20rEUnlK13Zmfxrfk/II6ANSfJFKUw7bFcxW?=
 =?us-ascii?Q?SDpQisg17z1MPWQmbpo5auD47KsghXWb+sxm7Mi1Je16KIrEGIaTX0Q64F63?=
 =?us-ascii?Q?Q9Pux9gDf9n9sOHZlcfmFFytBBuDfhVhXjBDK73r1x7LHUzsXxaRkuMtV5DB?=
 =?us-ascii?Q?7nRpo66+Cc6AQWx3PD47frHiTayeNkKSsSDccaGSQY52jZxa/LNmV3s9UosA?=
 =?us-ascii?Q?dixe8OR4nUu5MbXOtI5IJuBPEN/N54AgbENBJYt+7U6UHhTWqdLW9KQiwOdD?=
 =?us-ascii?Q?OTlc6OJbqf/k41TUYz6y0/lhDSUs7WMrm40fQ4EYPJ6BEclyBVLOD8uClh/5?=
 =?us-ascii?Q?0aUG+l0qAc7UVj7wJtMUYG0yDmOgQL0qJuxsj/vAARf3F8oXl8eBvJZWqCXv?=
 =?us-ascii?Q?6TZhykjWMRZ3RDZ1ChK2WoVJLKQtTjD7ePS5h1SMeqsAnqfecIPxoaPcv/2q?=
 =?us-ascii?Q?E3pbVyrUw12+ltpU9JultYuqysJmLHq9yccijNwpyGTATyn3iyPs5hQyn4K1?=
 =?us-ascii?Q?tFtp6y2BAKLkxLZ2VNQljcaue0xlVDdoBeWxhC/9sqpz1wH3+mPHsrZDuXW+?=
 =?us-ascii?Q?hwsYz5MIMvvmKTnZS/NrA83SnGEgi0fTkOd8BuBJpXz0hNqe8Vn1HWsxQqNR?=
 =?us-ascii?Q?Yzg4/MFT3R0pu9HqI6WwbM/2paKll/7le9InxR9YmZn9kGImLGT/W2z2zYeI?=
 =?us-ascii?Q?MzvSqs8JtUQg8HrefwmfuA6P?=
X-MS-Exchange-Transport-Forked: True
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR08MB2817
Original-Authentication-Results: collabora.com; dkim=none (message not signed)
 header.d=none; collabora.com;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: c3edee15-5f1e-4bfe-8c25-08d8d8299a08
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fT1+Fz5uHaHA7WM9hsIwy0+k7ejflzzxI7GKxi/CezyrsYiJiEdIE9DtRX3x86MVwbojM99M7mdwqjPiqOf1NiSmQF/cW80Yv7hYQ4iec4eevSurqD3wossY13dcE9dcIMUzKeXFVmWBed982YT96gMkG4JBXnVmJBMmt93E6bE7xczIexZbUxa5O+4Lyc8my8dG1LtkeO8bCh9Bxsuz+omoSGr5SK/Z1rItPSCMC7+st/t7ILAZVDl3bS4Aq0ayz+NOsWAT2GGQBB3fxsetg3pbmWSJRIrvmoJzQIhSKEbTAwCodEkjzirwZLB/NC6HHEGR0vkGDWNROS11sANZNMU9Dtkvwx6/SOcgJTgMP6EBAhtM2Cepm96odhpaRs/wnZB8hsQ4+ay/tJfxkb+K/VB4lfqRjmIFEcVX1rfMnepdTKKJDCvZgSRZ252aG7mKFYps5ESG54NuDVMhvy9AJPZk7FaO0n/9h3rxs6TUGO3dJNMOuYb3/Q0lR+yyCx5IItlFX0Ux/x/1piI2DGDjs43wUTktp6sP3ooRjvY4tY5yIvE0A+E7qecDkpmIslPEPwWGElmkPhxuOCh3z7jOePXK+nueLd+QdA/DOF7R3qlQEaKidG7kDyS7AH0YYJQFXZYc8GDQJZiDPEVveU1vnUuq+aM58ieqUBz6Am00S9A=
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(396003)(136003)(46966006)(36840700001)(82310400003)(7696005)(26005)(86362001)(2906002)(70206006)(8936002)(6506007)(6862004)(66574015)(70586007)(4326008)(8676002)(186003)(16526019)(336012)(478600001)(83380400001)(54906003)(1076003)(44832011)(956004)(5660300002)(82740400003)(316002)(9686003)(36860700001)(356005)(81166007)(55016002)(47076005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2021 18:34:18.9635 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d035781-3712-41f4-8718-08d8d829a19e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6694
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_133422_100958_E59B5740 
X-CRM114-Status: GOOD (  24.10  )
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
Cc: nd <nd@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Feb 23, 2021 at 05:10:16PM +0000, Alyssa Rosenzweig wrote:
> > If YTR can't be turned off, then according to the AFBC spec - correct.
> 
> There is no public AFBC spec, so I'm not sure how to respond to this.
> 
> > If the hardware allows it to be configured to use YTR with other
> > component orders, I don't know exactly what the impact would be -
> > maybe nothing.
> 
> It's legal to use YTR with a BGR framebuffer regardless of the content
> of the framebuffer, yes? Could I postprocess with the following shader?
> 
> 	void main() {
> 		vec4 colour = ....;
> 		gl_FragColor = colour.bgra;
> 	}
> 
> That's just 3D rendering. But now if I feed that rendered "BGR"
> framebuffer in I get the illusion of RGB out.
> 
> Doing the colourspace conversion in hardware (with the
> GPU's component reordering) is mathematically indistinguishable from
> rendering BGR with that shader.

I agree that *if* all 2^24 possible values of BGR 8:8:8 can be
perfectly and "invert-ably" converted, then it shouldn't matter what
color channel is in which slot, mathematically speaking.

> 
> I sympathize with reducing AFBC's combinatoric explosion, and I realize
> that the Rockchip VOP is probably wrong. I also realize that the
> transform is defined for BGR inputs, not RGB ones, so it might be
> slightly less effective for real content.

Yes, I think the practical impact is likely to be compression
efficiency.

> But it seems to me allowing
> both BGR+YTR and RGB+YTR upstream is the better route than simply
> preventing hardware from using AFBC at all, and there are natural
> encodings for both with fourcc modifiers.
> 

Are those the only options? I see XBGR8888, ABGR8888, BGR888 and
BGR565 are all handled in vop_convert_afbc_format(), which are all
"valid" for use with YTR, and all except XBGR are on the "preferred"
AFBC format list in afbc.rst.

> Maybe there's a deeper reason to require BGR that I'm missing? Please
> let me know if I've misunderstood, I only know AFBC from the GPU side.

If deeper reason means "a reason that the chip will explode if you use
RGB" then I'm not aware of one.

As you've said above, combinatoric explosion is a real issue with
AFBC, so there's a certain subset which Arm has declared "valid", and
an even smaller subset which forms part of conformance testing
(...also not public). The "valid" usage, and a set of preferred
formats are documented in afbc.rst, which is the closest thing I have
to a public spec.

I was _hoping_ we could limit upstream implementations to at least the
subset which Arm declares "valid", with a preference for the subset
which forms part of the conformance set - because those are the ones
likely to be supported across the widest set of hardware. *But*, I'm
also very aware that waving around "invisible" specifications doesn't
carry much weight upstream versus actual code and hardware _doing
stuff_.

So, all I can really do here is say "spec says this isn't allowed",
and make the point that I expect (though I don't 100% know for sure)
all hardware that supports AFBC to also support BGR order AFBC. With
that in mind, if I were trying to implement AFBC in a way that's
likely to work across multiple platforms, I'd go with BGR order.

Thanks,
-Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
