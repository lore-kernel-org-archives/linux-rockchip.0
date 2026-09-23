Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C8B4C982FA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 01:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2c9JDgtM/A+LNDVQAeh7j8/nddGu5UmCdcdOfW+kW5Q=; b=VRR9c0hVs/yoBo
	eq/eRufYcIgtGrGQB++bxyhIumsAr+XOwNn12WmWpJ+Yht04zzrde4zw7m7w0atACcldL9a83ETWc
	QMcYN2Rd0uArtWYlnPf4ExRk0wcgqP/QK676P8nqOgWLper1GL0p75df4HuHzVG38VhxIhLMwfL1g
	wftVLJTLex2JwS2RDJQn612nYNi/zLZZTaKPVkJ+Jlz2KqP6b8N7bKWgpZXOlTSwfsSc9a1q+Eqni
	wK4elgPeQhv3ce3EHpeJ+icK+9cKhUOIdA4Qf58dQeVZVscM/sqZdXy5lXgBEp6JU8mpyhewXOTrN
	jcEToVRNqMV00kdConUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9CG0-00000006ttj-0vAm;
	Wed, 23 Sep 2026 01:58:48 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9CFx-00000006ttJ-0QPL;
	Wed, 23 Sep 2026 01:58:46 +0000
Received: from pps.filterd (m0098572.ppops.net [127.0.0.1])
	by mx0b-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68MK8sTK2631264;
	Tue, 22 Sep 2026 18:58:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=GEPgvprZyVC0jhSleiuRPvLKRmXbJkZIMXsXLsmCwM8=; b=
	LRCDQ5/bs2ILqWaQXBTkM5yRxJdzoGZ83xcbQvEO22UjgF4szGVLoF5im03+a9/F
	fnLSKcnNJ3oaaRLcLgGF/5gGaKrL50+RaaMvnF37TvkI50OOOl0Q4PGfjKgz9Cj4
	9yCLeNprGsLygtTcpnQTORHldcgddatT2Ynbg81iDLK9xpIROxGpB9nkNE/cm7MD
	VXWeVfCU8TEXWjqLmtuGhgf0iU9UPmliagpflCL+27R8gTkHd/rfcvlLlAMOW5u7
	66KSPrU09b2kT748g9ayhtAejceh8rnKs4bGQkNpfhsNRbTkDP1tTVMJjNDVDccn
	VR4+1n1k7r/pedP0y16FPQ==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0b-00230701.pphosted.com (PPS) with ESMTPS id 4gur5dpr6s-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 22 Sep 2026 18:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1790128717; bh=GEPgvprZyVC0jhSleiuRPvLKRmXbJkZIMXsXLsmCwM8=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=i36iD2okU8RKixuUjaHXu8fdpzwDfb8T2eYHJWUvrzfw8Iko5mOW7cSnBX9ttxK9a
	 Si2bmoF2NYIOhalmhk0lXINeTaWgRLR8zdpjhPjRzxuv5FWsXwcH/Y/ysmdS7Ig0dp
	 Zlu/emHWVDNyzkzDtYQnVIMSVPU01EBu/Cm14e5W5lz/lC7kmdSirWzRa8HDHL25Z6
	 emLWMmy85NjSOWVBMvmRu82KZsWVK0i3NJNDdh+1jpb7pLGJzNF4TWvyRzKKLxUImZ
	 BARVy55dlqx+wKovUvnGh4nP6XvXcUQZfXlt+LbGGe4dp0vsT/JDxLMUCvLBKCJNrU
	 BOMSqX/oPHOgg==
Received: from mailhost.synopsys.com (sv2-mailhost2.synopsys.com [10.205.2.134])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4C12B401B7;
	Wed, 23 Sep 2026 01:58:37 +0000 (UTC)
Received: from o365relay-in.synopsys.com (sv2-o365relay7.synopsys.com [10.202.1.143])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id E3810A0B11;
	Wed, 23 Sep 2026 01:58:36 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=Cm2C/0JG;
	dkim-atps=neutral
Received: from DM2PR0701CU001.outbound.protection.outlook.com (mail-dm2pr0701cu00100.outbound.protection.outlook.com [40.93.13.64])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id A9494220138;
	Wed, 23 Sep 2026 01:58:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QBbeBi1wfrsauA6TBOQ63OTz0M1mdryRkJVbe5DRQu7/K9rGazKnvdlWHxZeT0ZwpWFc2nxx4nSuKlBuiIaB7lvg9bSbdlZDUfb7/zKS04xfKZXohHAjaNI34l7SWz38fURADq5hgbRgh4WjeVHTD0uz4nNdL09AVE6sGmNVRqfUhfms4Ova/DptrykSLupqpw2eEIgmcrgSW933tVxb1NGI9CV6X9349jR7kB20SevjIeycCKBfeHKXllUJ5T1LdZlhqoo7/O8f1C8TBPD6/YdPFaoD+53JC+NO7IBXKMBqNJw8U+agFgV4+vkNzcLode7Ui4K2kuTajriIQ8Hoqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GEPgvprZyVC0jhSleiuRPvLKRmXbJkZIMXsXLsmCwM8=;
 b=MJc2cFrUTMBlkEqSqJnmTE6tVPbQJWRcKYjwcysHoS1yQn6IitinW11sw73zSAlkW/t9bHHRk0AMyKbWxwKwI7GgFDitS+lSWggRi2X1+asBdXfoZpKwklNE8vCuwTGzyeMKX71cEuRmvr/44wBPZf8yoHGL2T/mGKmdbdGxIkbiy3EFZIJnDyB6eAzLdZmb9YI2CQan40ibNYDxwIIlWi0c1HStKZNnxbZ0jO/XEtTQRx8ndgZiich5Jc/lBCAfhRafeGa/XfMXvv5d1ZYNBuagoUEtk6dcf/+4o8l/q059oTJcIzZQ8gOMG/QkFrq8w1kvNb5MBjW/GPBchOAa1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEPgvprZyVC0jhSleiuRPvLKRmXbJkZIMXsXLsmCwM8=;
 b=Cm2C/0JGUoxY8YewcsXLJjxCwEbNGnzOrTYFHesilnW0NFwrfUUYbD5EsOiEHQGnQTR/ErL2D1ln7HHVnRg25Onl5EznPqu8x/73xmGHpUYyYdZ9jZYntsDqQMquaMbMvnzdNYjESWD9+VMOoFomeWzLeMKtjwZzHE1PqBkK08I=
Received: from PH0PR12MB7486.namprd12.prod.outlook.com (2603:10b6:510:1e9::6)
 by CY5PR12MB6405.namprd12.prod.outlook.com (2603:10b6:930:3e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.14; Wed, 23 Sep
 2026 01:58:20 +0000
Received: from PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109]) by PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109%6]) with mapi id 15.21.0451.014; Wed, 23 Sep 2026
 01:58:20 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
CC: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
        "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "kernel@collabora.com" <kernel@collabora.com>
Subject: Re: [PATCH 5/5] usb: dwc3: rockchip: fix USB-C reconnect in gadget
 mode
Thread-Topic: [PATCH 5/5] usb: dwc3: rockchip: fix USB-C reconnect in gadget
 mode
Thread-Index: AQHdRSWFm3+6LaDRSECPc57ZPufd6bbbc7eA
Date: Wed, 23 Sep 2026 01:58:19 +0000
Message-ID: <arMyLlcFKgtlwW_T@vbox>
References: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-0-763bb546824e@collabora.com>
 <20260915-b4-rockchip-dwc3-rockchip-glue-v1-5-763bb546824e@collabora.com>
In-Reply-To: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-5-763bb546824e@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB7486:EE_|CY5PR12MB6405:EE_
x-ms-office365-filtering-correlation-id: 0cd96a10-8317-40ac-6196-08df19162455
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|23010399003|38070700021|6133799003|10067099003|11063799006|4143699003|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info: TXcGKgTRi+NzcBso+YEHlD1ZEw+zRUmPyjNBNVL6TY3/t/Cj1hc0QNZaZxoohY+I5tGFEx9qaSgPjra6oGOh09Zu3YQIjWDjXEABWp3FV3iTVw+WND6IV4Wq/P8nakM3WUeKekfsZwHy5S0M71FthHiR4ql2Iad9V5MbRJRC2ZNQHcokXHfJjyO6++7hSPUwN2JgYvl+4694jScUrbeHZUg9g4ECW5h5Sf6vm3sDlISFnZxgJybGojRyZ+hpY2GsEch/bF3sF6wWqxpfpB2Y7VTRsqCYJi4D/SfoaHc0cPAh4F/w8TNliRRoOHuhNHK1OrWPZBpHDCS6cfyLRcWoo1tbGCU5I1mo3bE2xNOaaXj9BeRifmfaWTYXqR7XCTBO49VL6Z7yg9LubAgeJ0E4FyP9UHCvftTowuGHMjAip7ojzOrXRZERc8R05c8UlBNbYybCoEWnBayQyjxIE2fYXMWiR71PZwTg48E7ZERjjslGJdCoVd0eeq6X4ni+Ambzp2I3MiJFzyCeWlbWa+/LHOup65TPOzSBwNlEo7z1aHs0P5oWRJcGeWMPw52ZkZD6+XRDLiYr2opApDbobsdvzgYxNWSwIVTZoAhphIDXvHDr2liIXvNn3vBbDLHGORd3UVmq1rI0Z5dRtdUoQFexoE4A5L20PXOuHxGKMvqaplW2JbbnYy1jJD6c/6QmsVeqUzYoio0HAOLArEPQH5DGzfNkq7bsgn9Ejo1JNrjmtuY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB7486.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(23010399003)(38070700021)(6133799003)(10067099003)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cElvWEw1TW1kMlhtNEVJcUc1S3B5U0l1OFJjUTAyQzl6WTR6TDVDaFU0ZmtB?=
 =?utf-8?B?NnJDQXpuNmZFaTMyYTdkVGs2TGdQK3hpL0ZRdkhiNmx5MjUrYlU2M3ZzSU1F?=
 =?utf-8?B?eGgzeElvZG1KYW1kY1l0d3RUZmtuUmdRendNOUt3YStGTWYxSk93YmdNTS9a?=
 =?utf-8?B?Slp2NlhVb2MwU1Y2WkZaM25qTUpXTkN6NnJBYlhZYWZ2eEFJNUhOTG9UR0ls?=
 =?utf-8?B?LzNhRm1idG5UWXBLWE1uVDNYZWZ2ajhNR3k3TzFOQ24vRy9VMDQrNVNmTDNs?=
 =?utf-8?B?SFI2ckxKVWdHcVhpZGF1akFQZ3FQelJKbzN5NGRkenI2SStPTEVXanpMOXVp?=
 =?utf-8?B?YW4wais4N3k2UzRrRTMvSzczMXRReVFRaGNDd2libDhHemxsRGEwbjZ6YTNT?=
 =?utf-8?B?aHFUV2FpV0xhbEdvMGg2ZlNrY0gxRXJaNVB6SHlPRExnQkNCeCtXQnNJK2NW?=
 =?utf-8?B?QUtXeUpOZlpQUnZ6cEJtWGR2MHNPVTJ3WTZTcjh5dk13R0tRaDBSTUdmd2dD?=
 =?utf-8?B?MG9MMjRjUXkxajBSMk9BRUNmTXVaVEVMNm05bm5zcTBDaHlpUXFrTmkrR0ZH?=
 =?utf-8?B?NVdTSEJ3RklaN1Vpd2pYNkhQdys5NnVYaXEzcC9oVkpkbUxrRmkrVS83Ujgx?=
 =?utf-8?B?Q29IdWhjcVNJa1p3RkVGcnRLQWJreENSYkdmYlh6bkRhcWlNR1o2Sklyci9u?=
 =?utf-8?B?aHVUc09rRU9nS1RPZ3l4U1Nqb25hREhrVXpYMUdUR2FaZFo3Y3dvczh4ZElV?=
 =?utf-8?B?aUZZaWNBUmpXdm8xeUNvc1pjQkJ3eUc2RHJkZXlWNDI2M0xlZWNkSm9xa3Rk?=
 =?utf-8?B?T0R4SlE0MS9iUDdySzdud2cwbU1TMU1CdGc4UmNXOHZhMTZIeXRXd1B1UkZn?=
 =?utf-8?B?ek8yL0dQeW1adGhqZDdNamN1TDRvUjgwYXBaeXBSWGxINWNJM2swUGh3a3Jr?=
 =?utf-8?B?d2Z3c0FXaGtmTnc4ZzUvc0FqaFY1ZnpFRGRCd2gvOEpteFZMYjFWSlZGR2E4?=
 =?utf-8?B?L3NrbG1pT0k1ekdIUmlvNmhzVjFwRlZDM2dRSWJhVGIxeFhmams4UmdoeVdD?=
 =?utf-8?B?Q1V1WS9Mc1ljTGdXM3dPazYzZHMwNkszN09XanNMUmlCaFBPd0Z2NllGZVl2?=
 =?utf-8?B?TzhTV2NxOWZ3eE1BbWRNLzdZNEhkWmpvNUZJM0x4SGVXdDFiRlBOZmU3VEtE?=
 =?utf-8?B?U2lrV3pzR1YzNnFlYXZwaTlTVUpvUmw5d0ZPUnZSTi9wS1EwRStEUWs0NHRr?=
 =?utf-8?B?dEJwc2NOQWpGUENxTEE0a2hiVzdsRTVCSkthektyTE5lWkM0N0RxTCtQQUJ6?=
 =?utf-8?B?YlRSczhZa2o5VGN6dUpaMHU2QmtTRjRxajBXcERYUGVJcUJOVUd2TUwya1I0?=
 =?utf-8?B?VDBQZGl4cU11OWk1eGZWOEtHVFcvWnB0RjdKMEMrMTdzM1NJdGJqM3RNSTdI?=
 =?utf-8?B?MWRkVnEwQ3ZvOU1KUU1JSStSN1dXLzZBUXF5VjBPczhjUUxUSnhqTFRWQ0NV?=
 =?utf-8?B?SjlQT2pDMklCeHZTUnluUjZRN0cySmNmZ1dkZ3VZSG9Tam84V3F5MUtXNEpH?=
 =?utf-8?B?ZWdoalNGMHdJeGx2V3BzQXh4YUU3Ulp3SE1FcVNweXpCNUdsVjV3ZjltRkE2?=
 =?utf-8?B?SUdheVVKRDdsZGZqb2dXK3pQWGUyWFYyS2x3ODgwNk5jWmhRVHE3dklvUERo?=
 =?utf-8?B?bVV1NGIxdXora0QxUkJ6WHJyU0pIK2tMTGUxWHpBbVIrOTNSQzBEa0YrNENs?=
 =?utf-8?B?Ym5aTHd1V0hpOGswbmdnTW5ydVQ4Zy9HRkZyd1BUcjRVZ1RsYzh6ZVNoUlNh?=
 =?utf-8?B?diszdUM0amd1TC9ZRGxhdlR3d2NOTWRndUpkZVlTeC9oc0pWVEI0STBablkr?=
 =?utf-8?B?aHFGWnJ4R3d3b0N4N2VMMU5iTWZCdjN4U3JWUTdKSFZOVm5sYlRqSWFCTGox?=
 =?utf-8?B?UTQxRHdLRkwzQ1pEUHN1TCtLdndsbFFtbjRsN3hwNzgyUmp1enhsNURKUU5r?=
 =?utf-8?B?SjZzUFlXRFVSWEprcWhlQ3g4WTdaZG5QN2xtNWt4V0hqd0lqazJvOGtuamRO?=
 =?utf-8?B?RUpqSExBcjQ2b1hXS2RCcWVZRlQ1NUhvR2Zxa1pkc0RTNy9sMzJFdU5PU1ky?=
 =?utf-8?B?UFBpWGhmNGk4dzgzRGdyVGRDZGhVQ3l0ekFkV2NKQ29RNjBKNDdDaEw0Y3VQ?=
 =?utf-8?B?YWVLMk56MVJaQ0tGaElQVXk3aHVTbEgrRkllU1FJaGo4d2N3Y0xzTnY2Zjh5?=
 =?utf-8?B?RU04M3lmeU1PU2h3a1hveExra3Q4VUZaNzhTMDR1L0poRzJYS3poc1crYWk2?=
 =?utf-8?B?TDVuaVNhbzFUUVdsdmFOSGRJS2RDUllOazg1WVBmK3h5OWFIYlBNdz09?=
Content-ID: <F9EE2A551F422C4A9343D37CD1E66AF6@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: o8u0DCTR1QnAZZ5VD0q/lVj0vov0R7vkfvXfeIahS5rQfsxG3H4cpP+yNGdkPqPYE7Y6HMo50tpmqgmzUl4I25d5syC1eH1B26aqpOZ8OuL5lXMIcNHP0/te+N9zxPhLwLlyMQiIrr1qok4kWXiwvqYZe+P6iLwQFxTSEsjo9PZkUwDXT6VGw4J056fK+Ivc7SCYfWESmlI0X1EPZDZNVctKQxLB7VdNFQTDQnb1iRa3xUB+bjxfQONd7kpimUydQUUHcxNwODr7RFWQ06VRwqbEHGGrZ8S3H0xHGNmJCrt/F/JizL+KbUjPIJ+GewGO8iwcjiW200PIug3VZePnpw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: mSaMr+eFTfdwEOagqQeq0frt9iSGzA5wheAFULJk+A2otPJqwQi8WQ/UnjOHlm+raOMB/au9cScs4ws0qSO0oTqWeJNh/s96e6lv0KYjWsJ/oj0+rKQydWogEfcu64OpLRtP5PPnTgh2xCwua3pue9aeeIxFo06cO7Lg9BSKtBmkMamHUS7z/c8vXZXhu5Jcfy+GP7UK14VGZ5GltOdp/ng9q23iSQDI5N8687zrtqkp+qQgMVuwC1dku4QmgvIpQS54CDq3tK6l3ge+H8X3abnHA5ybNaVNVzZ5vGClKQnCraLUCpQ94K2c9JjxV+gEjf5Tj8g7mtINe5Knx93KazZVKFMt/ROb/MO14gk0T5YvqQLyPkNdZG5K3mJCjvR8mQclL+wNzBHHWCuWwFEfBwyOBsbzxWEJ++PioiU2m55bphj51lTQDU82umdLSEpuGn9jxF/rZ0R25C8+pT2qtu2Sb9pTvLLNo3cm7YeDo4U4Y1GrXMqwqxqINkM7ay6Opnip1bWYy9ng5K9VedRau4rSDzUPOvcujvXAvieFDh5VQV9dTZrnu0PbjHWsW9ju/3vYT/BMTo5aj3Ljk6B0qpOTOF6SjeB9yFR1I+4KdJxKvh+3PnuvldY1hRRpXQylJqxkbrv36Cyzlm4d5Xgd9A==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cd96a10-8317-40ac-6196-08df19162455
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2026 01:58:19.8988
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CtogsC7KcdjPMLMMaxcUd2/5zuWYnia1Dvj6dTDDI35f/Ah2MKN12zklkZr1KajBfGuYcP4ET4mQePeLDpmKVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6405
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDAwNyBTYWx0ZWRfX5eXS77ZpvE1j
 L3F0j35K3KutMZMp7W3Es33I2dvBTQY+QiiqWwP82RsdMi2TwzRgNkVnXqgYbMYHwYoFzjnlCVF
 xxi4MwhKr5cy7fcKRYcf6AYmGeVsuXC8KGk8S7dLW8g69p0KSC1Qz7IZoExkTNsSFnkUEjHLEjC
 8XBQDD2pBtncM6xn7K/gwJyKzLob7WIen/GV5gnE/qXqpdLx244448RoV9KwpE3lb1RTkO/Firk
 BFOM+p031/V3ixQQzjHgs2T0hi7K2nFkGk6dbhfF/txC2DU0Eoai37o4M5r5ipfeCrljYsWwgYC
 Co8Awabpegk4H1lSnxmxWdR/6ksBTHh26uD5bdwyyoyFE7zyd0nR6C2/wfPymgQ7dgVrH0iKQH8
 dTeUcGPhH8HPWWTSMwNht0BZXv+XnuWTYn8xa++NqOYMS8JL3dLha7QqlqEudUWbElq2p4mPtv0
 Mm9pzYIO2ODubsm506Q==
X-Proofpoint-ORIG-GUID: edotknWHtM7HH-eN7Ni0cmCoH__DzgB8
X-Authority-Analysis: v=2.4 cv=eN2GH3p1 c=1 sm=1 tr=0 ts=6ab3324e cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=jSPayVjLy6xbsuKauFBc:22
 a=QX4gbG5DAAAA:8 a=jIQo8A4GAAAA:8 a=W2xxWhSknC0YJZdjg9gA:9 a=QEXdDO2ut3YA:10
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDAwNyBTYWx0ZWRfX4KfM3gq532b/
 D6mLmhrdyLi2FU4KU7PyWuq4txPqNxv3BbJczzczbonA39NK1C+ejy4RBDADYu52WX5VhmneORS
 Q2MK3JH1too5h78jRGIriLdHHtPeHQY=
X-Proofpoint-GUID: edotknWHtM7HH-eN7Ni0cmCoH__DzgB8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-22_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 spamscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 impostorscore=0 classifier=typeunknown authscore=0
 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2609040000 definitions=main-2609230007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_185845_263311_8F911C77 
X-CRM114-Status: UNSURE (   9.38  )
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

On Tue, Sep 15, 2026, Sebastian Reichel wrote:
> When USB-C is configured in gadget mode and the cable is unplugged
> the USB controller is suspended. After plugging in the cable again,
> the USB controller stays suspended and thus the port status remains
> not-attached.
> 
> Fix this by triggering a runtime PM resume when the role is changed.
> The Runtime PM reference counter is immediately decreased again - the
> auto-suspend time is big enough to detect the connection status, which
> will then keep its own reference.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/usb/dwc3/dwc3-rockchip.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-rockchip.c b/drivers/usb/dwc3/dwc3-rockchip.c
> index 7bdd6e2eb22d..bedec3295bb1 100644
> --- a/drivers/usb/dwc3/dwc3-rockchip.c
> +++ b/drivers/usb/dwc3/dwc3-rockchip.c
> @@ -25,8 +25,17 @@ struct dwc3_rockchip {
>  	struct dwc3		dwc;
>  	struct dwc3_rk_phy_nb	usb3_phy_nb[DWC3_USB3_MAX_PORTS];
>  	u8			phy_reset_active;
> +	enum usb_role		role;
>  };
>  
> +static void dwc3_rockchip_vbus_handler(struct dwc3 *dwc, bool present)
> +{
> +	if (!dwc->gadget || !dwc->gadget_driver)
> +		return;
> +
> +	usb_udc_vbus_handler(dwc->gadget, present);
> +}
> +
>  static int dwc3_usb3_phy_notify(struct notifier_block *nb,
>  				unsigned long action, void *data)
>  {
> @@ -57,6 +66,8 @@ static int dwc3_usb3_phy_notify(struct notifier_block *nb,
>  		if (!ret)
>  			return NOTIFY_OK;
>  
> +		dwc3_rockchip_vbus_handler(dwc, false);
> +
>  		/*
>  		 * Assert USB3 PHY soft reset within DWC3 before the external
>  		 * PHY resets. This disconnects the PIPE interface, preventing
> @@ -69,6 +80,7 @@ static int dwc3_usb3_phy_notify(struct notifier_block *nb,
>  		reg |= DWC3_GUSB3PIPECTL_PHYSOFTRST;
>  		dwc3_writel(dwc, DWC3_GUSB3PIPECTL(port), reg);
>  		spin_unlock_irqrestore(&dwc->lock, flags);
> +
>  		break;
>  
>  	case PHY_NOTIFY_POST_RESET:
> @@ -89,6 +101,8 @@ static int dwc3_usb3_phy_notify(struct notifier_block *nb,
>  		dwc3_writel(dwc, DWC3_GUSB3PIPECTL(port), reg);
>  		spin_unlock_irqrestore(&dwc->lock, flags);
>  
> +		dwc3_rockchip_vbus_handler(dwc, dwc_rk->role == USB_ROLE_DEVICE);
> +
>  		pm_runtime_put_autosuspend(dwc->dev);
>  		break;
>  	}
> @@ -130,7 +144,16 @@ static int dwc3_rk_phy_register_notifiers(struct dwc3 *dwc)
>  	return devm_add_action_or_reset(dwc->dev, dwc3_rk_phy_unregister_notifiers, dwc_rk);
>  }
>  
> +static void dwc3_rockchip_set_role(struct dwc3 *dwc, enum usb_role role)
> +{
> +	struct dwc3_rockchip *dwc_rk = container_of(dwc, struct dwc3_rockchip, dwc);
> +
> +	dwc_rk->role = role;
> +	dwc3_rockchip_vbus_handler(dwc, role == USB_ROLE_DEVICE);
> +}
> +
>  static struct dwc3_glue_ops dwc3_rockchip_glue_ops = {
> +	.pre_set_role = dwc3_rockchip_set_role,
>  	.post_phy_registration = dwc3_rk_phy_register_notifiers,
>  };
>  
> 
> -- 
> 2.53.0
> 

Acked-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>

Thanks,
Thinh
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
