Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9697DC55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 09:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcw1aUUSwvaDCk/TNQtwFcKlrpcCryp3ec5yG/3pTcU=; b=188hU08gbStjks
	qLQCrMfqDkN4EoIHLfR+Yagddg1gk5A/PClzbdlP4lUGBcnBD3qHJtXbR4GTump/HOcbsBb+kv5zu
	kI1Zp3cWc2uIEFDteWFGvW0QXUAYnBH6bhQvc/IVhGfANlZN2v5bvjY6dgiebg4XnTeMWd3/9nk13
	3GrsoGOsoiGypNAXHZ2kf+QK6hWkacPWmTEpXvK37203BgC/bxcAttxOAc2QFahp87ptlWfxFM+G1
	0mhNwotqo3LNE/lb7T0l6xIUtQUBW97Z8k4zQZM/Ua9b5DvQFMJVbheBlqydy6qMuQmPJjKU6jyQ5
	epsGDNkD2CXWVAIii7/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wruGT-00000005MUt-1APc;
	Thu, 06 Aug 2026 09:19:49 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wruGQ-00000005MTR-3iE5;
	Thu, 06 Aug 2026 09:19:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1786007987; x=1817543987;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=hpx36lKKBNTlUe3bNJ8Eyr++H8vkok4WY7x/5L7umXg=;
  b=lSUH8AJawvAX1Mn0oviqkDjU5g+04gjLeTuc+dkC+J0cmhB5DpgzLCz9
   YFPz2WZwi59v/94Hp93wU8GZ7EYAUnX3EBW/In9+tbtoxndOqfJkyTn5T
   JNoy7bHodkFLVlG0zWjuWYwBNO4ThdRn+Sdd6MBMWUP/emElCsJR/VuG1
   1AXCCU8NADalzJ+KYsp8EYoB9aP9Kob3L/mW+alZyGXNNKiCmxUvZoOkL
   DZi2Li3GLvRUB+hfcqnYE7mHdRh1Ht+9TZp5Rm/F2fbkL2JIReKxEJPCP
   0iLGV+gAv96XoHpAAogOKeeOaVTF5fqlqKm1KyDrbYTR1uSyIx6aClXQJ
   w==;
X-CSE-ConnectionGUID: LSVEiUHIT4iauf1cZLUkPQ==
X-CSE-MsgGUID: ADMpm3FKSQGCErsk7fBvyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11866"; a="109387543"
X-IronPort-AV: E=Sophos;i="6.25,208,1779174000"; 
   d="scan'208";a="109387543"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2026 02:19:44 -0700
X-CSE-ConnectionGUID: 5xdDJh9ZQfaUcL0qC1dCgg==
X-CSE-MsgGUID: lthI2QO1QraTYzbDg1i30A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,208,1779174000"; 
   d="scan'208";a="262669050"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2026 02:19:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45; Thu, 6 Aug 2026 02:19:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45 via Frontend Transport; Thu, 6 Aug 2026 02:19:43 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45; Thu, 6 Aug 2026 02:19:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D0JikXWB1lG2LwnXRc9UQ0uJfNB7E+c9T4uKZXqhJZSqQ+txr8QnOTjtMEsdwl1ZHPppE1BRTtMLFoq2mdCu8EjHcjfbpsmdzMp8bARIUQ7om/IZwkBM9JIKHyinT6851/9OFJ+8etXtHJ6Rnkx5va4ApxqwMZupgG3RLG+cFAreqOeOCp3eMJXoTXuyi5kXGnMDxS+UHuJ7ozQPFAxMkYn1SAgsA6Qe0DZp+bMi/M4JMw37YQ1p2ZAC7SQlCsEWDYmSBmF4qAAFuOvoRuvjy2iJwucoStx4xIvo59/SuzheuaCclYQ5iv1YbtfaDeUqAxrSktyqMmrm7jINsM6itQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hpx36lKKBNTlUe3bNJ8Eyr++H8vkok4WY7x/5L7umXg=;
 b=XQiyq03Do9H4PsUJ5RpNtJWDIbeP78yIEB6H45FDor4GJS50iZGbVprmtH2KpBuwjMXinwWYz6BH86594otFXqacDj+XnxBQbyUi7HRJLW1ZkbmYeoNai9xkQHowEQOr0assJkuehW3q3xJsRU3qprmHnEQj3I1dox8NMwpMjoaA4GVGRw1ToCLyKRkJCDxNvXHygnGVfIlR6P1ZVHevMEerwS0aQxG3px4HUVv8IXg2dVfefFhGlokMIgJHj947C0LF1KeXN0FsXfUbr4f80MLsfCfNo2k6zIARw9L1V+XuCU3VB/18vPlMyDK8na1/wHTcYEaTdqhlgh9z2i3MDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by IA1PR11MB7810.namprd11.prod.outlook.com (2603:10b6:208:3f3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.292.19; Thu, 6 Aug
 2026 09:19:34 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%4]) with mapi id 15.21.0292.018; Thu, 6 Aug 2026
 09:19:34 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: James Hilliard <james.hilliard1@gmail.com>, Andrew Lunn
	<andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
	<pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones
	<lee@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit
	<hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, Heiko Stuebner
	<heiko@sntech.de>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"mfd@lists.linux.dev" <mfd@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>
Subject: RE: [PATCH net-next v2 4/8] net: phy: add X-Powers AC200 EPHY control
 driver
Thread-Topic: [PATCH net-next v2 4/8] net: phy: add X-Powers AC200 EPHY
 control driver
Thread-Index: AQHdJIJyoiwesVlhLkOreO6QlUZUPbaQwEFw
Date: Thu, 6 Aug 2026 09:19:34 +0000
Message-ID: <PH0PR11MB5902DF2CE7FBA22964F76BC5F0D22@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
 <20260804-submit-acx00-of-dynamic-v1-v2-4-3eef49ff1d8c@gmail.com>
In-Reply-To: <20260804-submit-acx00-of-dynamic-v1-v2-4-3eef49ff1d8c@gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|IA1PR11MB7810:EE_
x-ms-office365-filtering-correlation-id: 53bc27a4-742f-47ee-0b79-08def39bd490
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|23010399003|366016|1800799024|38070700021|921020|6133799003|10067099003|5023799004|4143699003|11063799006|56012099006|18002099003|22082099003|3023799007;
x-microsoft-antispam-message-info: EBakJCW3cq/lzF7yPuqySOLC/y880Ohii2BQ/6PxZA67sHzGtUafVkqg2S081e6xePPo4U0bhN5ARORasGMdwGDRUJBIlJlKyGM6bBHFjpQ8H329cJVROWOYUowdlZUEVMAWbc8dagrmCoxwTNpv+6v+1JJKann2EoEwemHCmNjMZPkjujBqrWHP/2VLj4OfZzBdIV/YcgLx9QyN6VExyoUCOtFsH9T3ZAz8bNfEQy2w7I3BxbDiAECSIRTd9YwiOc4fJBPkOG1abiCeV+b9J7/RbtcPGRwymXpoA6c2T2SHBrdYrGP5M1fDlnLTsykuP907AxxQ28fsMG+z4/qriSa88o9PPbcHcpRKDf1HTKjgTMuturaO9yOTbIpCbN7W3+V6PJU0ElGnvFlUGlHoD4Gt5jU6Yn495OGLJbe9Q+XTnpDxaYhxIFy/Ll9C7KEudU+N32H5N9I9UOT+2Q99fDHvhl90I/DZLCSZNhN8QhIYZwxr7ArckYPtcd+bY96L3cP+00EvJYRIJxLKHAaWW+a6VF5IBOUYb+GDfZAhYlwmGF4jgt8fJZzsQ73e0JKFSTD50oeuxAJNMjf7O1C0t/SwWc3oj0nkl9Frk7Qw4TUbL4o5Le4a1Y1N3TZ7TY92Lr27W5S5u4tVEsc8dnmDde8l7oMiT0uRqwKwLcQMWCUMSBDBldfMEFjgeuYeSoaj75QY9gyTK/GROXufNqRCWw25sr0U7+UvlCukDZOxAS8HsoUHR+tjYh1XrIMbU4E2
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5902.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(23010399003)(366016)(1800799024)(38070700021)(921020)(6133799003)(10067099003)(5023799004)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003)(3023799007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WnpwbGtSVGp2eE9Va2JWVXN2VHlmSFl3YjhEb25xNDJpNDR6NUVzOUpqKzQ3?=
 =?utf-8?B?ZCtxVU9EL3VhczhmQ09BY1QweW94bGlNdWVqY0lmYlowSTE1bmpvaGREWmZI?=
 =?utf-8?B?S0ZyUksrWW52ZWpkOFV0aHRTc3MrYmF0bHdpY2FpL1FEZ3RjTnY1OGVCcEM4?=
 =?utf-8?B?emJFTy81cnNadFN4NFAyTWQxdTRoUjVmUHFSczQvQURnN0RweHVHUUxpek9G?=
 =?utf-8?B?eXpYY3Z1ZUtPWS9XOUp4elRONFMzdUNPTnFLL2cyc2RyR2JhSnp3dXd4YlBr?=
 =?utf-8?B?UkpIVURua2RDc2NiejlDQnhQSmJOUFp6VDVPSGIvcS9LOStNWFBQUXZiakdj?=
 =?utf-8?B?NDZEWlhMLzc1QThPa1daWEJudWNmT2dseFByL1FLRXZSNEhKbGpaVWN3clAy?=
 =?utf-8?B?V3Zialc2QThETi85T2VSdEhIOGxEUkZhcEZBK1owUVh0U2hBMmovWWFLeUc1?=
 =?utf-8?B?VVRXdEs2emVSZW5weUdReTQrTXNZODFlT055VDZ3QkNQazlLY0ZTdktpeC9U?=
 =?utf-8?B?eVZnajE3cnhFNVhHYUllQmhJZXpGRHhDWldVaEtRVXp3Qm9tUzhUY3g0ZU4y?=
 =?utf-8?B?Vnp3UlNlbmF6WU1NQmRPZDlLcnFtK01TRVBUd2VWeWFMWGx6Q3hBT0MrWXdZ?=
 =?utf-8?B?VTF4ZWpUVVRMUWdVOEphSmpSbVQ5dnNDQVJFTjlsVWdIRkU5NnE5RjBmYzgw?=
 =?utf-8?B?eTN6NlBtMkRqbUlLcGg4Sm9hOGNZSjFMMm1FOWlWYXN6dktNSTNpNGpaVFJ2?=
 =?utf-8?B?dWUvdUY3ak9TdUtJRlZCdVNJcjEyNUJvZ2I4OWs4NjdQbjdFT3NFQnZrUmUr?=
 =?utf-8?B?RnhqbHBKby91aW5XZVBmQjJaZ2RZMnNrUVhDOWVkTHdoNHRMYzVIMDVaMHB4?=
 =?utf-8?B?cUJpeU9yeDVZdFpwWFo4bnBRM3ozSFlXWFQvVFh1SXNhSGtYdUVEcDZkeFRj?=
 =?utf-8?B?UXJSL283UFJwSDZUclNUOW9JTXE1cUVrTzgzWVBYTFlCNU9Fc0UzdVhObDQr?=
 =?utf-8?B?UDBKSjIzRnVQY3I5bzh0Ty9zY2xGUUpma0Jzbm8vYzB4WEMySDhLcThBcExW?=
 =?utf-8?B?bjY1RVhQRGZiSFNzRXlqbGtZa1JxM0JPNmhNendqcTAxTm4xajhKZ1JESTJE?=
 =?utf-8?B?MGpwbTlvejJVZkwxd1AzK3g2OFBuYW1FNzBpdU5JZGhXUVQyWkhTOUg3WDF3?=
 =?utf-8?B?amJBTndXMXJSUjNscitCTENidkE2NVZycEJRYkRYSHdlbkxtalcxdW1zTGpG?=
 =?utf-8?B?WjV2Q3ArOFIxVmdkWUl6QVg1ajVYdGpwRUtQSWI1UVY0dHFoUTh0aklVc0N4?=
 =?utf-8?B?T2c3cGtvMVh5RXZYcnNNbXZOVWg2Yll2dzFpOFdTY0pCSG1YMURDcjVBWG5O?=
 =?utf-8?B?QnN0S1JucW1UUHl6SzVTcjQ3K1duNlY4TWZFa2FxeTFpclpEcTJwWlo2M1NF?=
 =?utf-8?B?NE5uK3BvNEhIL0hKanNsV241alM1eDdsR2tDUG1DWGFpZ0I1WVlDZmhaUkU4?=
 =?utf-8?B?cmtRZEtRcUJzeVEwTVNCTGNxSHU5M0tjTXNMWkZrZVpzSFpMWkNjQUhpMzZu?=
 =?utf-8?B?ZS9XMHBtN1pRWkROYTVZZUxkWEtGOEJMR2RTVzFobFNIRVpSL2NaRWp4aStu?=
 =?utf-8?B?WkxBSjNxTEowMkZUSVZVVDNNRCtQb3owekduaXFNVytVcjdlRmh5NTRSU1p5?=
 =?utf-8?B?QVBaeVpKUDlKTWc2c2VwNDRRTTNxY0pXNDYrWTZ4aXhyYkx1VWxReXYwY0lY?=
 =?utf-8?B?a0wxa01zaDR5dnY0TFRJbWxlT1RjdXN1SnlTVFFLK0FRK0dtWGJVNjZUbVdI?=
 =?utf-8?B?TDBDZURyMVEyMVJkK0hGeXZaa3VFK2NuRjZMa2Rrdm85MmdENHJ5bEh2S1RF?=
 =?utf-8?B?THVSczNPVlk5OFdURE5tV1FYMGl4YlFOaHYxK0VLdnJtekdaakp6VWpXTEFM?=
 =?utf-8?B?c09jbzRKOUtTMXJxcmp5cFFUUkIySnkwUTZEdDNJVzBKNnk1MFRjY3hCVU52?=
 =?utf-8?B?ZyszckVwbVBkTkFaZGhuMVpPZ3ByWFZudTl5K2FZaXJCZFlVU3M4S2lFa0Vw?=
 =?utf-8?B?NWI2MzJkVjZId1hEanA5WXJDNVhFdE5HZnNrbVExbjB0RW9BSmgwYjdkVk5I?=
 =?utf-8?B?RnVJRzZ2L2RDa3YvdHN6OENDc0RNSEZORUpYQ3FMem0wSFJxVUNGSE12WlVk?=
 =?utf-8?B?QkNPeGNTVkdxSWk0STlnb1lKZGd2WnNVUjBGSW5ZOXhkQjRGWFk1V3VTanpj?=
 =?utf-8?B?K2JBcDRHQ2ROc0crRHJVV0RIR1V4MUE0Qkx2dHVXRTlxYStFSHZCcjI1VnNP?=
 =?utf-8?B?TU1Xd1JiZUhIQVB3dXIvMVBqRFUwUlo4dlFZQUVicDdnRGEyYjlOUT09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CDkiHK1AU4umU7rEn+GzlY/8jroLHCUfDBjxsrSlgYh49lAySSXHQyAAMp7nGdgThbBIBB4w4jrx/9yE98wAimiGUbsgsyVSGj1I3FKp2wCmmJzy7jQ77uRQ0Qx07VdAsWwagZxf1QhT2RyeNnvCh4kueewq1RIy9RTd1aWybFny4q7f+dvbSenRSnqJ9lO8GcV+94A+6lf8nsaArICzNXO3ydVM7GOubjuKl2gmzjrrst8ZrPHbhF7ArfB6iAb5PCGqL2SjvalKlT6BmQTx83mGUR4pyLyxCRA9vYn9SNpIguLZ6JX3/OQPTHQjvODzRIIFj2Bn41fhRiyYheF3QA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53bc27a4-742f-47ee-0b79-08def39bd490
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2026 09:19:34.4374
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AKVgYj95AHFechDTBbelk3ytg9hqrsXwPhYC4A8yrCidHLZdEkCD0BBF79T8reSFveNDlL7bUiMHpJdWyFyRPg5OmxsldzKM1qS+63WMdH0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7810
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_021946_998737_F5ED66FD 
X-CRM114-Status: GOOD (  13.70  )
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

From: James Hilliard <james.hilliard1@gmail.com> 
Sent: Wednesday, August 5, 2026 4:27 AM

>The AC200 Fast Ethernet PHY needs package registers in the parent I2C
>regmap to be configured before its Clause 22 endpoint becomes usable.
>
>Add a control driver which obtains the calibration value, applies the
>vendor offset, selects the documented 24 or 27 MHz input clock, programs
>the link PHY address and performs the required reset, clock and shutdown
>sequence. Use the optional SoC SID cell when supplied and otherwise read
>the AC200's internal calibration eFuse.
>
>Early PHY creation occurs before a MAC has attached, so use reset-default
>MII initially. A separate operation later applies phydev->interface; when
>the block is already powered it changes only RMII_SEL before the normal
>PHY soft reset.
>
>Expose serialized, idempotent power and interface operations to the
>common PHY driver. Enable only the MII I/O pads in this basic driver;
>dedicated LED outputs remain disabled until a later LED patch describes
>and manages them.
>
>Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
>---
> drivers/net/phy/Kconfig             |   9 ++
> drivers/net/phy/Makefile            |   1 +
> drivers/net/phy/xpowers-ac200-ctl.c | 294 ++++++++++++++++++++++++++++++++++++
> drivers/net/phy/xpowers-acx00.h     |  15 ++
> 4 files changed, 319 insertions(+)
>
>diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
>index a29d3fed8a05..6119f4de880d 100644
>--- a/drivers/net/phy/Kconfig
>+++ b/drivers/net/phy/Kconfig
>@@ -475,6 +475,15 @@ config VITESSE_PHY
> 	help
> 	  Currently supports the vsc8244
> 
>+config XPOWERS_AC200_PHY_CTL
>+	tristate "X-Powers AC200 Ethernet PHY control"
>+	depends on MFD_AC200
>+	help
>+	  Enable the control driver for the Fast Ethernet PHY function in
>+	  the X-Powers AC200 mixed-signal companion IC. It programs the PHY
>+	  address, interface mode, calibration and I/O controls through the
>+	  parent AC200 I2C regmap.
>+
> config XILINX_GMII2RGMII
> 	tristate "Xilinx GMII2RGMII converter driver"
> 	help
>diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
>index e23df5e836e9..f81854fc9f12 100644
>--- a/drivers/net/phy/Makefile
>+++ b/drivers/net/phy/Makefile
>@@ -100,4 +100,5 @@ obj-$(CONFIG_SMSC_PHY)		+= smsc.o
> obj-$(CONFIG_STE10XP)		+= ste10Xp.o
> obj-$(CONFIG_TERANETICS_PHY)	+= teranetics.o
> obj-$(CONFIG_VITESSE_PHY)	+= vitesse.o
>+obj-$(CONFIG_XPOWERS_AC200_PHY_CTL) += xpowers-ac200-ctl.o
> obj-$(CONFIG_XILINX_GMII2RGMII) += xilinx_gmii2rgmii.o
>diff --git a/drivers/net/phy/xpowers-ac200-ctl.c b/drivers/net/phy/xpowers-ac200-ctl.c
>new file mode 100644
>index 000000000000..c69e6a8c71a4
>--- /dev/null
>+++ b/drivers/net/phy/xpowers-ac200-ctl.c
>@@ -0,0 +1,294 @@
>+// SPDX-License-Identifier: GPL-2.0-only
>+/*
>+ * X-Powers AC200 Ethernet PHY control driver
>+ *
>+ * Copyright (c) 2022 Arm Ltd. (Andre Przywara <andre.przywara@arm.com>)
>+ * Copyright (C) 2026 James Hilliard <james.hilliard1@gmail.com>

Quite unclear for me what's Andre's role here
if he worked on that shouldn't he be mentioned in the
commit msg anyhow?

>+ */
>+
>+#include <linux/bitfield.h>
>+#include <linux/clk.h>
>+#include <linux/delay.h>
>+#include <linux/module.h>
>+#include <linux/mutex.h>
>+#include <linux/nvmem-consumer.h>
>+#include <linux/phy.h>
>+#include <linux/platform_device.h>
>+#include <linux/property.h>
>+#include <linux/regmap.h>
>+
>+#include "xpowers-acx00.h"
>+
>+#define AC200_EPHY_BPS_EFFUSE_OFFSET	3
>+
>+#define AC200_SYS_EPHY_CTL0_REG			0x0014
>+#define AC200_EPHY_RESET_DEASSERT		BIT(0)
>+#define AC200_EPHY_SYSCLK_ENABLE			BIT(1)
>+
>+#define AC200_SYS_EPHY_CTL1_REG			0x0016
>+#define AC200_EPHY_MII_IO_ENABLE			BIT(0)
>+
>+/* AC200-internal copy of the Ethernet PHY calibration eFuse. */
>+#define AC200_EFUSE_EPHY_REG			0x8004
>+
>+#define AC200_EPHY_CTL_REG			0x6000
>+#define AC200_EPHY_SHUTDOWN			BIT(0)
>+#define AC200_EPHY_CLK_SEL_24_MHZ		BIT(2)
>+#define AC200_EPHY_PHY_ADDR_MASK			GENMASK(8, 4)
>+#define AC200_EPHY_RMII_SEL			BIT(11)
>+#define AC200_EPHY_BPS_EFFUSE_MASK		GENMASK(15, 12)
>+
>+struct ac200_ephy_ctl {
>+	struct acx00_ephy_control control;
>+	struct regmap *regmap;
>+	struct mutex lock; /* Serializes power sequencing and state. */
>+	u16 ephy_ctl;
>+	unsigned int phy_addr;
>+	phy_interface_t interface;
>+	bool powered;
>+};
>+
>+static u16 ac200_ephy_ctl_config(const struct ac200_ephy_ctl *priv)
>+{
>+	return priv->ephy_ctl |
>+		(priv->interface == PHY_INTERFACE_MODE_RMII ?
>+		 AC200_EPHY_RMII_SEL : 0) |
>+		FIELD_PREP(AC200_EPHY_PHY_ADDR_MASK, priv->phy_addr);
>+}
>+
>+static int ac200_ephy_ctl_power_off_locked(struct ac200_ephy_ctl *priv)
>+{
>+	int err;
>+	int ret;
>+
>+	if (!priv->powered)
>+		return 0;
>+
>+	ret = regmap_write(priv->regmap, AC200_EPHY_CTL_REG,
>+			   ac200_ephy_ctl_config(priv) | AC200_EPHY_SHUTDOWN);

how about creating wrapper logging which register write failed?
currently there's no info at the end what's not ideal when debugging
especially as the're called in a sequence

>+	err = regmap_write(priv->regmap, AC200_SYS_EPHY_CTL1_REG, 0);
>+	if (!ret)
>+		ret = err;
>+	err = regmap_write(priv->regmap, AC200_SYS_EPHY_CTL0_REG, 0);
>+	if (!ret)
>+		ret = err;
>+
>+	priv->powered = false;
>+
>+	return ret;
>+}
>+
>+static int ac200_ephy_ctl_power_off(struct acx00_ephy_control *control)
>+{
>+	struct ac200_ephy_ctl *priv =
>+		container_of(control, struct ac200_ephy_ctl, control);
>+	int ret;
>+
>+	mutex_lock(&priv->lock);
>+	ret = ac200_ephy_ctl_power_off_locked(priv);
>+	mutex_unlock(&priv->lock);
>+
>+	return ret;
>+}
>+
>+static int
>+ac200_ephy_ctl_set_interface(struct acx00_ephy_control *control,
>+			     phy_interface_t interface)
>+{
>+	struct ac200_ephy_ctl *priv =
>+		container_of(control, struct ac200_ephy_ctl, control);
>+	u16 value;
>+	int ret = 0;
>+
>+	switch (interface) {
>+	case PHY_INTERFACE_MODE_MII:
>+		value = 0;
>+		break;
>+	case PHY_INTERFACE_MODE_RMII:
>+		value = AC200_EPHY_RMII_SEL;
>+		break;
>+	default:
>+		return -EINVAL;
>+	}

'value' can be moved into priv->powered branch since
it's used only there

>+
>+	mutex_lock(&priv->lock);
>+	if (priv->interface == interface)
>+		goto out_unlock;
>+
>+	if (priv->powered)
>+		ret = regmap_update_bits(priv->regmap, AC200_EPHY_CTL_REG,
>+					 AC200_EPHY_RMII_SEL, value);
>+	if (!ret)
>+		priv->interface = interface;
>+
>+out_unlock:
>+	mutex_unlock(&priv->lock);
>+
>+	return ret;
>+}
>+
>+static int ac200_ephy_ctl_power_on(struct acx00_ephy_control *control,
>+				   unsigned int phy_addr)
>+{
>+	struct ac200_ephy_ctl *priv =
>+		container_of(control, struct ac200_ephy_ctl, control);
>+	u16 ephy_ctl;
>+	int ret;
>+
>+	if (phy_addr > FIELD_MAX(AC200_EPHY_PHY_ADDR_MASK))
>+		return -EINVAL;
>+
>+	mutex_lock(&priv->lock);
>+	if (priv->powered && priv->phy_addr == phy_addr) {
>+		ret = 0;
>+		goto out_unlock;
>+	}
>+	if (priv->powered) {
>+		ret = ac200_ephy_ctl_power_off_locked(priv);
>+		if (ret)
>+			goto out_unlock;
>+	}
>+	priv->phy_addr = phy_addr;
>+
>+	ephy_ctl = ac200_ephy_ctl_config(priv);
>+
>+	/* Start from a disabled state before applying the configuration. */
>+	ret = regmap_write(priv->regmap, AC200_SYS_EPHY_CTL0_REG, 0);
>+	if (ret)
>+		goto err_disable;
>+
>+	ret = regmap_write(priv->regmap, AC200_SYS_EPHY_CTL1_REG,
>+			   AC200_EPHY_MII_IO_ENABLE);
>+	if (ret)
>+		goto err_disable;
>+
>+	ret = regmap_write(priv->regmap, AC200_EPHY_CTL_REG,
>+			   ephy_ctl | AC200_EPHY_SHUTDOWN);
>+	if (ret)
>+		goto err_disable;
>+
>+	ret = regmap_write(priv->regmap, AC200_SYS_EPHY_CTL0_REG,
>+			   AC200_EPHY_RESET_DEASSERT |
>+			   AC200_EPHY_SYSCLK_ENABLE);
>+	if (ret)
>+		goto err_disable;
>+

what does the value comes from?

>+	fsleep(10000);
>+
>+	ret = regmap_write(priv->regmap, AC200_EPHY_CTL_REG, ephy_ctl);
>+	if (ret)
>+		goto err_disable;
>+
>+	priv->powered = true;
>+	goto out_unlock;
>+
>+err_disable:
>+	/* Attempt every step of the shutdown sequence after a partial start. */
>+	priv->powered = true;
>+	ac200_ephy_ctl_power_off_locked(priv);
>+out_unlock:
>+	mutex_unlock(&priv->lock);
>+
>+	return ret;
>+}
>+
>+static int ac200_ephy_ctl_probe(struct platform_device *pdev)
>+{
>+	struct device *dev = &pdev->dev;
>+	struct ac200_ephy_ctl *priv;
>+	unsigned long clk_rate;
>+	unsigned int calibration;
>+	u8 nvmem_calibration;
>+	u8 bps_effuse_code;
>+	struct clk *clk;
>+	int ret;
>+
>+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>+	if (!priv)
>+		return -ENOMEM;
>+	mutex_init(&priv->lock);
>+
>+	priv->regmap = dev_get_regmap(dev->parent, NULL);
>+	if (!priv->regmap)
>+		return dev_err_probe(dev, -EPROBE_DEFER,
>+				     "parent regmap is not ready\n");
>+
>+	if (device_property_present(dev, "nvmem-cells")) {
>+		ret = nvmem_cell_read_u8(dev, "calibration",
>+					 &nvmem_calibration);
>+		if (ret)
>+			return dev_err_probe(dev, ret,
>+					     "failed to read calibration data\n");
>+		calibration = nvmem_calibration;
>+	} else {
>+		ret = regmap_read(priv->regmap, AC200_EFUSE_EPHY_REG,
>+				  &calibration);
>+		if (ret)
>+			return dev_err_probe(dev, ret,
>+					     "failed to read on-chip calibration data\n");
>+	}
>+
>+	/* The vendor driver supplies no transfer function beyond this offset. */
>+	bps_effuse_code = (calibration + AC200_EPHY_BPS_EFFUSE_OFFSET) &
>+			   FIELD_MAX(AC200_EPHY_BPS_EFFUSE_MASK);
>+	priv->ephy_ctl =
>+		FIELD_PREP(AC200_EPHY_BPS_EFFUSE_MASK, bps_effuse_code);
>+	/* EPHY_MODE and BIST_CLK_EN stay clear for normal operation. */
>+
>+	clk = clk_get(dev->parent, NULL);
>+	if (IS_ERR(clk))
>+		return dev_err_probe(dev, PTR_ERR(clk),
>+				     "failed to get input clock\n");
>+
>+	clk_rate = clk_get_rate(clk);
>+	clk_put(clk);
>+
>+	switch (clk_rate) {
>+	case 24000000:
>+		priv->ephy_ctl |= AC200_EPHY_CLK_SEL_24_MHZ;
>+		break;
>+	case 27000000:
>+		break;
>+	default:
>+		return dev_err_probe(dev, -EINVAL,
>+				     "unsupported input clock rate %lu Hz\n",
>+				     clk_rate);
>+	}
>+
>+	priv->control.power_on = ac200_ephy_ctl_power_on;
>+	priv->control.power_off = ac200_ephy_ctl_power_off;
>+	priv->control.set_interface = ac200_ephy_ctl_set_interface;
>+	/* MII is the reset default used until the MAC supplies its interface. */
>+	priv->interface = PHY_INTERFACE_MODE_MII;
>+	platform_set_drvdata(pdev, &priv->control);
>+
>+	return 0;
>+}
>+
>+static void ac200_ephy_ctl_remove(struct platform_device *pdev)
>+{
>+	struct acx00_ephy_control *control = platform_get_drvdata(pdev);
>+
>+	control->power_off(control);
>+}
>+
>+static const struct of_device_id ac200_ephy_ctl_of_match[] = {
>+	{ .compatible = "x-powers,ac200-ephy-ctl" },
>+	{ }
>+};
>+MODULE_DEVICE_TABLE(of, ac200_ephy_ctl_of_match);
>+
>+static struct platform_driver ac200_ephy_ctl_driver = {
>+	.probe = ac200_ephy_ctl_probe,
>+	.remove = ac200_ephy_ctl_remove,
>+	.shutdown = ac200_ephy_ctl_remove,
>+	.driver = {
>+		.name = "ac200-ephy-ctl",
>+		.of_match_table = ac200_ephy_ctl_of_match,
>+	},
>+};
>+module_platform_driver(ac200_ephy_ctl_driver);
>+
>+MODULE_AUTHOR("James Hilliard <james.hilliard1@gmail.com>");
>+MODULE_DESCRIPTION("X-Powers AC200 Ethernet PHY control driver");
>+MODULE_LICENSE("GPL");
>diff --git a/drivers/net/phy/xpowers-acx00.h b/drivers/net/phy/xpowers-acx00.h
>new file mode 100644
>index 000000000000..482ba6faba6e
>--- /dev/null
>+++ b/drivers/net/phy/xpowers-acx00.h
>@@ -0,0 +1,15 @@
>+/* SPDX-License-Identifier: GPL-2.0-only */
>+#ifndef __DRIVERS_NET_PHY_XPOWERS_ACX00_H
>+#define __DRIVERS_NET_PHY_XPOWERS_ACX00_H
>+
>+#include <linux/phy.h>
>+
>+struct acx00_ephy_control {
>+	int (*power_on)(struct acx00_ephy_control *control,
>+			unsigned int phy_addr);
>+	int (*power_off)(struct acx00_ephy_control *control);
>+	int (*set_interface)(struct acx00_ephy_control *control,
>+			     phy_interface_t interface);
>+};
>+
>+#endif
>
>-- 
>2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
