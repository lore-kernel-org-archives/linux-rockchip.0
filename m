Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED07C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 16:54:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 390AE61606
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 16:54:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 390AE61606
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KlRoC8+uZgaBECMS6tgwiuMulGxoHkdyCds2NM8sVnM=; b=Bdx8cWteBhKKOlxM9HGiAnt17
	P6dhk5YyhecNeMexCIXZ9ox+oFuU7CYpaeMpn75Tf+V/8bPBiJabjmgpp095H+MnmVG7rDnPsQ3Sf
	QjCE+g25fWXzFNh5TJAu3PP+E8BIpzNfguopqZf86S38MtHPHHPQbhxXp7DGrpJAhppPdVi05bubr
	m4zCWYsTRq6za6b+ItJy6ZG5S9TDyi69jIqaJLtxD1nhX+EvJt4N5a7w46QBn5FOBbylKS4DOmjBb
	PZE8HP1MU6xzYxjSHo4HeGzOGcTqugm+t/TjlNm/0mXr6QCwRqZaZITD5rMCZ5Vh/JjYvbl6uyZv3
	dSxSdaq0w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEawk-00057l-Co; Tue, 23 Feb 2021 16:54:02 +0000
Received: from mail-eopbgr30045.outbound.protection.outlook.com ([40.107.3.45]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEawh-00057Q-Tt
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 16:54:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+A5cTqnmu7qjGTAU89UIQAfCa4/mqKDCdKSsiVsDv4s=;
 b=Azi+9OVAznuNlUedMd0vNloIGcHaNZNersez5T/vF+GD/PqyKXfDnG1MGdCmDhBSyNl/8optB7h0BNZzZJUvag5Xl30JOxFWHOMvArDgwP55E+BXBPApBsuHYxP/RYGo4gig+99yRa4rSpb3nZLUiSxSSwjgC+hJ41odbpt2P2c=
Received: from DB6PR0301CA0064.eurprd03.prod.outlook.com (2603:10a6:4:54::32)
 by AM0PR08MB3843.eurprd08.prod.outlook.com (2603:10a6:208:fb::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.29; Tue, 23 Feb
 2021 16:53:56 +0000
Received: from DB5EUR03FT038.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:54:cafe::10) by DB6PR0301CA0064.outlook.office365.com
 (2603:10a6:4:54::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend
 Transport; Tue, 23 Feb 2021 16:53:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=pass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT038.mail.protection.outlook.com (10.152.21.84) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Tue, 23 Feb 2021 16:53:56 +0000
Received: ("Tessian outbound c07266d0ef38:v71");
 Tue, 23 Feb 2021 16:53:56 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3b5068ba68e13ad9
X-CR-MTA-TID: 64aa7808
Received: from 353b9a8afb34.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 0A39EECB-7D50-4F35-A01A-08E62AB3D632.1; 
 Tue, 23 Feb 2021 16:53:51 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 353b9a8afb34.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 23 Feb 2021 16:53:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YnYxJwkHm7BFpppPS/tiDK3x6O8gdC5o31mqQRw42T8YI0YmDS8N6mSjsfSXD5HLjgazvNvPlE3ouSq/UvUpNaTjOdpEVWcyOyDJr6TG99vJKXnEsYiTHNEQoWHIobauo5uLjfc32IDA/rWLbpHZtRlu50cpwS2BYA3tPYjCDNfLpuXmVLn1r7Ew2p409QhWfeb9S2TcOOJhD0Bmrv2jVJlhfjl2XeldykVQjEfnDz5OnkI2I6ZoQAv54tH66udH/Y8FZlWjtYrsFFe1ir9IEhGuVpKJoaTmrSf8lJ0UzmCqlE97Dt3QZl1Z0nLz/x1YukR3tZiD/Ov2jOc4UqSiog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+A5cTqnmu7qjGTAU89UIQAfCa4/mqKDCdKSsiVsDv4s=;
 b=fqdwxOkAJo6wKx3SisCmkSRSx5UuIElSaGVDp0RFCG6U+ZhiKEjeBlz7mnksE15agevWrdoWavZiPHZeNZDd+KyoCBXZ0nLVUxH902MaOKln+I0Av5tib2ghnssk+epINeSU+gYDPU19i5b83UolPTnOW35P5OqTVZ5LPLdk4LaXZPjgqorYehLA3TsrQFWHpETmQL77KnZHMPXxmdezhEmsouQXlVil2o6PhWv5vVVtVwiSwn1r9Do8549vIGn2a04bmJli/ACS0a8o5cmq/CpvYPBFw4SivC2vSxCKGj8gxeLgTSF5s0FFkD9NswGbo7rlTVtzkDSTw1YuMou1HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+A5cTqnmu7qjGTAU89UIQAfCa4/mqKDCdKSsiVsDv4s=;
 b=Azi+9OVAznuNlUedMd0vNloIGcHaNZNersez5T/vF+GD/PqyKXfDnG1MGdCmDhBSyNl/8optB7h0BNZzZJUvag5Xl30JOxFWHOMvArDgwP55E+BXBPApBsuHYxP/RYGo4gig+99yRa4rSpb3nZLUiSxSSwjgC+hJ41odbpt2P2c=
Authentication-Results-Original: fooishbar.org; dkim=none (message not signed)
 header.d=none; fooishbar.org;
 dmarc=none action=none header.from=arm.com; 
Received: from AM8PR08MB6628.eurprd08.prod.outlook.com (2603:10a6:20b:362::8)
 by AM9PR08MB6932.eurprd08.prod.outlook.com (2603:10a6:20b:301::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.2; Tue, 23 Feb
 2021 16:53:49 +0000
Received: from AM8PR08MB6628.eurprd08.prod.outlook.com
 ([fe80::e582:9391:68bc:37a2]) by AM8PR08MB6628.eurprd08.prod.outlook.com
 ([fe80::e582:9391:68bc:37a2%6]) with mapi id 15.20.3868.033; Tue, 23 Feb 2021
 16:53:49 +0000
Date: Tue, 23 Feb 2021 16:53:48 +0000
From: Brian Starkey <brian.starkey@arm.com>
To: Daniel Stone <daniel@fooishbar.org>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
Message-ID: <20210223165348.edghgglgx4g2lvfw@DESKTOP-E1NTVVP.localdomain>
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
 <20210223145143.7bfayhp32tzdj637@DESKTOP-E1NTVVP.localdomain>
 <CAPj87rMkSdtrHnoLzK6zAVvST2KH8SprNnp5bS92qpr84g=fPg@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAPj87rMkSdtrHnoLzK6zAVvST2KH8SprNnp5bS92qpr84g=fPg@mail.gmail.com>
X-Originating-IP: [82.27.180.53]
X-ClientProxiedBy: LO4P123CA0225.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a6::14) To AM8PR08MB6628.eurprd08.prod.outlook.com
 (2603:10a6:20b:362::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from DESKTOP-E1NTVVP.localdomain (82.27.180.53) by
 LO4P123CA0225.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:1a6::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.31 via Frontend Transport; Tue, 23 Feb 2021 16:53:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2a1a9c57-ed03-4b29-4fe9-08d8d81b9c16
X-MS-TrafficTypeDiagnostic: AM9PR08MB6932:|AM0PR08MB3843:
X-Microsoft-Antispam-PRVS: <AM0PR08MB384323C58DFCF76DBE62BB50F0809@AM0PR08MB3843.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: h0pvNzhdWWLNuCALIk2Fh8NpdS4/qbNXuL1CMojqFDhxJpJRdxtF9fh0Vw2Hz7EJcPcZjVtIDGb1mMw4+iiTuxC5NalUr1vPg2MUHyLYMytjHh63hWl2BlN9hUtQcGeGoDHBju5J1ebBSpLdpyvtessD8uI5uWd9OfVHm09fUPzVoJojtMaLlFAq+IEFzI5ipS2gB4ZBqDnUTgeiR8iRrz9Trzg42yuEUNGgBuLnkAS0QGUrzNGi3wVFcNs/NIKL/97Y2l+aTmkMduT4JvidX+2l5QKMmFlXGE18HIFFHul/r3hi0mqsDCHO1HKWmSL3Byc1owSM6500UkeWE8ObrH4olF/mNCqGeXw7nT1vrOVcF7Wy2vpY6wzg2aRBqdj4y6XaRTEF3OmpbCQu4qsZ6ZV8yvn8w/pLEU+J7sn/Ldj/WPEJJU8HQQ2bFeyPSoba+vtTJuCfRCke7j/9fD2T7LFUPyYzAlrXflyhP9/SXKUVRMhT0il6lRTdaiV6tKqy0IjvblyMKLCbSdnyetdzoVm1iDslkAWmqhbatbHAgB0yL1/pC+1hZh6PTcpq8UF96sfIu9gfvS6aseLEQXTk+B9LUTM1BmwKn+6ucFSbNls=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM8PR08MB6628.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(396003)(136003)(39850400004)(376002)(478600001)(7696005)(4326008)(52116002)(44832011)(66946007)(6506007)(966005)(5660300002)(6916009)(956004)(9686003)(8676002)(66476007)(2906002)(16526019)(54906003)(8936002)(86362001)(66556008)(83380400001)(316002)(55016002)(186003)(1076003)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?pKWL6YXROcWbgg17nwiiMIRbMPVF9mhc9ZZLrRP9mMvaGUNCl42VgFKHCGWn?=
 =?us-ascii?Q?tHuDCQZ+RDIE8tKUCIOLFdF/5lJHl0awjo6S26+36AgKKqfd9opV7qx3ehz8?=
 =?us-ascii?Q?IqwPDx9zMW/wJRHO2GVkD2atdnIHcnWN3F4Ut4L4m+cM75+lGcDnQHWRT1Le?=
 =?us-ascii?Q?M4h3Q+Njiu3f2uvFR9rtAmbpl5gZmE2kbgLmouggMIAW/bqfVHnWRXyFrZbZ?=
 =?us-ascii?Q?uSSHwvDJPMjnb5jFuFnT2nju8k46dVEqNbauK7MWr+t+PpunITQTRmuEmHz4?=
 =?us-ascii?Q?Dz4yp9lwWy+uWkhZgS22k2FL0Y9oqiO9TGyHInQZ7P6rTKS1KP0iGtpFDACV?=
 =?us-ascii?Q?70qgJ9w6opF59vnnlvYSOQ54NUNq8Zp747gWJHRwLZPCXnrtWAJ5qUx6mR6K?=
 =?us-ascii?Q?GSd1PQD6cxIJMogUDoLW+eDwhKI6IINB3/G+CBtCQilJIyUp5DRalCrUSyYQ?=
 =?us-ascii?Q?csD9jFKzCLSvoHIT4uIm2cTg85eU5pTiuYEKNF186XRurQi4Sr/hKrYYNnrE?=
 =?us-ascii?Q?hwet4dQANEw1VN3U1lWS6Rszfjk6/itEHIDS30rtp0R9Sq1qLYRQzovBbXsO?=
 =?us-ascii?Q?Vqx5Nqzvfn+iGKLy6ot77Pz9W6zDvdINusxoBtaxfpvb3vjnxXIj02o3QJ8D?=
 =?us-ascii?Q?uosSJGiZshjAtt2TM97xZTm7aYfyPjLKLb2kSBgrm+6re7252/wL7E2aq38k?=
 =?us-ascii?Q?7T9BnuJ+RIarvmaTG+G1gu5bGDJ4wAv6f12VcROElbq1MMaBb86ol5JrDh5X?=
 =?us-ascii?Q?1SJRvUf7T3SR1clauib0HSq+Lr7OMayLGH86O89Viwwp8iWpCpG5vRRGo42y?=
 =?us-ascii?Q?Eejkt9vcqHoHeaYdbHitn50wQVvEUwXczXeEPkgujf6iNr2KglNVHatk7oZR?=
 =?us-ascii?Q?z2LV0p7jx2d/kunn/mevCuidV6mWzUdfPfWk5l507y9sdssilXFUhcb5Rbwr?=
 =?us-ascii?Q?AiH1aQCtItEAV85qAkkZdKiBNZ63ZzCHSlUdwVNVwVUmdke0ZkVwqI1GBnYA?=
 =?us-ascii?Q?vXFj554bPuoTcVk1EcVEsQb7P4FVNPjhJYgM2pMu8GZSyXlaud23CRR/74Ks?=
 =?us-ascii?Q?Kp7523KV9SEpZ9qrOms6CKDKmxdpAtY7CaDzXWoyl3FycKqXk+DBL/3vCTKf?=
 =?us-ascii?Q?GYO2n6g+IZSPrQIKItQMvJnoFUMQxoZA3iSwPk+5A4zwR68jkkB12ZqdATxt?=
 =?us-ascii?Q?p7Pg1RgXZ74LXJien0y4L6AyLhpheM/bsKghEM6CRI2pb+dJXvksd1gaFbLG?=
 =?us-ascii?Q?bfbCJMLqwrgMMiWGC+sGJrQ7+3zIbAQ7dSGbN7PIM9XwYXB0lo4q59z3bSGd?=
 =?us-ascii?Q?WxpLe8XTvFjW+W23DQ/xEkDy?=
X-MS-Exchange-Transport-Forked: True
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6932
Original-Authentication-Results: fooishbar.org; dkim=none (message not signed)
 header.d=none; fooishbar.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 044c387e-1c41-4798-1a00-08d8d81b9730
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xL7zgN3d/N1pQx2OkH3IWK+cMlx/Izc7fnUVPyz9DUgxGtsCTTnjnCIdNUhdH2J6tXJllmys3swSOGMkLdOfngLprnU6wC5UzH/wx2RuzRKPCjjDpiAIdP628fonDb0NRUFKNPoYbWxA4nmap+a/BpyW6UQzgnmCvoYVEo17uNe2tIGZKqw/VdXTopvLwmYMm1GbKDeVhKU7EWbSD1Kc3AcM3nq0WamA6aiiwsGuDNw+h/gMBX41uWiq5B+KfyKI0UeQblw+R/ODpbu2qGSppSykGpP/JaFbqJzm0NLVaTD+KVfWGB955EvQpvxDYNZBWW/GMVYHxvgG2AlRtF4I5TfHqSufZT4o6HYeceayD3oUNZVzl7ExknFCnZ0jNYGmPOQJU0o/WKrPusGhTWyYtnRbxJmC2KXWRrQSiZtbOAyZeTqQs2b4muBXuCHBARQHcnM1I8IeClf+DG4pWUVsMzglGEEEzW2dG5EsHZ6eaRIEpTz+5YeA/XA2ExhXcMjShGdaWwHnCjpJgQnv0WIwvyjbxg6Mri0rQRfyDhM/yrQIUgcW4FHLktLJLWvXVWMYyCboSctTsgeba1y0iU4L2RR5mS65sxz7wcZqWQKlqxq16OIh/aWBLIhoSPdZKuJ/SAGuSfH69pPbQGwDa2IBlDnuAjjgf2rfqEfvpvsuHvXkH3jHCZsdiz21+6HLf3yh7HmhYNrmgNv1tTRpsdhcELQLX9zG+QsSlqkS4DB76v8=
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(346002)(396003)(39850400004)(136003)(376002)(46966006)(36840700001)(36860700001)(336012)(2906002)(316002)(356005)(70206006)(82740400003)(26005)(8936002)(82310400003)(6506007)(8676002)(83380400001)(186003)(86362001)(7696005)(16526019)(956004)(478600001)(54906003)(44832011)(55016002)(6862004)(4326008)(966005)(9686003)(1076003)(70586007)(5660300002)(47076005)(81166007);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2021 16:53:56.7279 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a1a9c57-ed03-4b29-4fe9-08d8d81b9c16
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3843
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_115359_996775_FF4E1388 
X-CRM114-Status: GOOD (  22.02  )
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
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, nd <nd@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Feb 23, 2021 at 03:29:13PM +0000, Daniel Stone wrote:
> On Tue, 23 Feb 2021 at 14:58, Brian Starkey <brian.starkey@arm.com> wrote:
> > On Tue, Feb 23, 2021 at 02:27:11PM +0000, Daniel Stone wrote:
> > > Mark, or others from Rockchip, can you please:
> > > - explain if there is a way to enable/disable the YTR transform in the
> > > VOP's AFBC decoder, similar to the split-block control bit?
> > > - ack this patch which correctly declares that the YTR transform is in
> > > use in order to make Panfrost work, so it can be merged through
> > > drm-misc, or provide another solution which fixes this API mistake?
> > > - if VOP does have a hidden YTR-disable bit, add support to disable
> > > YTR so rockchip-drm can continue advertising the non-YTR modifier, and
> > > Cc this patch for backporting to every kernel tree which declares AFBC
> > > modifier support?
> >
> > Drive-by $0.02:
> >
> > As described in https://www.kernel.org/doc/Documentation/gpu/afbc.rst,
> > YTR is only valid for "BGR" component order, so this shouldn't be set
> > or used for "RGB" order (or YUV) formats. For BGR-order formats, it's
> > best to always enable YTR to get the best compression ratio.
> >
> > In an ideal world, there wouldn't be hardware/drivers which
> > support/allow non-standard encodings, but we don't live in that world
> > :-(
> 
> This implies that RGB component ordering cannot be used together with
> AFBC on RK3399, no?

If YTR can't be turned off, then according to the AFBC spec - correct.

If the hardware allows it to be configured to use YTR with other
component orders, I don't know exactly what the impact would be -
maybe nothing.

I raised some of these concerns when the patches were first sent:
https://lore.kernel.org/dri-devel/20190925093913.z4vduybwcokn3awi@DESKTOP-E1NTVVP.localdomain/

We wrote the .rst doc to try and avoid incompatibilities between
different drivers and parts of the stack. BGR is Arm's preferred order
for AFBC. Unfortunately amongst shifting organisations and priorities,
AFBC in upstream hasn't got much attention.

Cheers,
-Brian

> 
> Cheers,
> Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
