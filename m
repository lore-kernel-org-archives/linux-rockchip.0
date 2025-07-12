Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92B0BC83F1A
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Jul 2025 01:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFTSVaoYuxcxEk4G0Ark7SvFMURS+1ittMm3dbWIYcM=; b=uWhoZJqDpAac9W
	pr3k1X1AmDaPKR3qhvNyAjbPCFhOIITaASw0z3DhzvbXFW4frh7/x4Qcy6OPlQ/TcsQJWE4ZdC5wR
	tSgiFQwYQZO5xf9KOHcFmVW/Lw0e7SgL1bs9kebMsIbbcIARsm1pwaRUO0D4BP7ZF1T8PoM+RkIiu
	gMIc5Jxl+94XLpN3MoVd+3vUduesQITvsoY8ZOG5iurfH6g+cZQlo9TQUEFS1lIV4hrWfDhsOiLDu
	viTaQzuSODnbD2PAR7N2SEqrK9kbmZme218nr2xxoIOmGvTqGPz5Io2RbyqXvbVSPJT3qVVnVXUOp
	Jrgg4GGWFqo+QUNb4vIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaOom-0000000G8xZ-1dye;
	Sat, 12 Jul 2025 01:14:20 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaNqQ-0000000G5iB-3oBe;
	Sat, 12 Jul 2025 00:12:00 +0000
Received: from pps.filterd (m0098572.ppops.net [127.0.0.1])
	by mx0b-00230701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BKimQc032529;
	Fri, 11 Jul 2025 17:11:50 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=SSDETOb22c4JddLyZAfpaZZ9yi+MydU/31UvPKB/2CA=; b=
	sOG/JaiqIzaOJGw6XoWRx74SOgwZkhrPd6JCGBZfFvHzshNcq57/jU1eOlb5M97e
	4mlvxW7QBVBzdH6jkwAM69X4GsLVhaWPkMUtdoPjQDPl51Pu04EAen8pWrlvDoLa
	8bb7nanPlEKuyVNM6gZRU0JXDqphey/cXhlmGdqIZSsxYwDfAlpYUgLTRnmGxf/8
	fELu+sAhJ/AATyE8ZEkiqtbgekdCd4uN3AY86inwATMq2M2fEl9eViqMVNU2I+9u
	AalG1ctysrDU6aeObB5hllvJJUaAE8oELRPgrKBj+FlLaCA31aARfisY7yeV/xv8
	jdLOMw+w6dTHa+gGnnmqBg==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0b-00230701.pphosted.com (PPS) with ESMTPS id 47t6m6stxn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Jul 2025 17:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1752279108; bh=SSDETOb22c4JddLyZAfpaZZ9yi+MydU/31UvPKB/2CA=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=V+jMuToaeML09SMwkG+cRhKGIDtcUp6nrg5ZPVJmZuaryrZ9aGnHgxz46dm7CtVnW
	 d7//QBKTH6ln3rxr60fCKmLkQUFYrf9212tYDYfecWDPi9W95vzvIgmze7mhs+V8eE
	 4dZpLw/24cbziZlsjaRQE02ItFXxhrXG1ajdm20v+2vyywH1bvzaUFZ01gmSR3tZcu
	 Z2oQj3mEaXM46IOdi1CvFIcXXU8K53aOzn7iDn+mkHg3SE6dXqeS8n81ohMsJMqSGA
	 krxgAU7kTcHRTApItJD6VWoK7/8ePAn98ixZdZZi/JZS4MpUccOhtfu3OiDp3A2vf3
	 CK4vX4htvzjaQ==
Received: from mailhost.synopsys.com (badc-mailhost4.synopsys.com [10.192.0.82])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D70EB40825;
	Sat, 12 Jul 2025 00:11:47 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com [10.4.161.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 15018A006D;
	Sat, 12 Jul 2025 00:11:47 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=BgQenGMN;
	dkim-atps=neutral
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2041.outbound.protection.outlook.com [104.47.70.41])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id B342D404AF;
	Sat, 12 Jul 2025 00:11:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FWqmmpT7n4sOXgnBv8AH8Wr4qcfPC2JLgvAvr/aoyh7JZDVrL6QyfrKsiTCATlPP4ydbykVGgo0+bZ87WKQ95MgmWBD6VDi6LUK0J00Ls+8a0R5bTTIDOvMUnrL7N0wCpshbjgqiI5ecI69WR5/oltwM0f+isrkUmlx0pi8zSVtox1iSJczGU/6tom44FC0qW6wbsSGFKsNDNkJABmCpchKAD3ueM25szVDmgdnmzWZP65z4jzJU1iOrnPozBhlKozulhdZwnJ7ESknLRmjnPGfAOoVP37gw3bNbKiMlR6uDU/Mb3M/518F5ahb8TcZRm3rFM0cCgHKfK58eJgS5/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SSDETOb22c4JddLyZAfpaZZ9yi+MydU/31UvPKB/2CA=;
 b=G6h0lksDV+fBcuHkbVYjwp83RWl3eDVUsAaHTrhmoykRIlgJxw8Qybm05xfYIALkLBwNhW2YlL17a2LLYnb5zSi0fCXIPcWPPTr/tO6HPERTm7XqIy8RNHfMfu7TDGe+ORnLrI7m5+7+Ypjlm/s+YImheHFaY6ahWZ4qrr2D2jdCg6kSa2QpVsPvUqM4oIxjlE4560muANzkeBljePK5ppWS1QmykiReC6+hRHG8n1HCkze1PDbGKzxhlLCeKZuX4S6knLVbSiF11d1Y6Mjz8KcVS6MJdc8F8MqaB9DMB+AIaokB0IM23ZpQwHO3AthQjyueF3IcXdmHGjRwt/KeZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSDETOb22c4JddLyZAfpaZZ9yi+MydU/31UvPKB/2CA=;
 b=BgQenGMNOaORkjPHQ1O3f7j5gargZtr8XDe/hP0AxrZJfs23jNSP2lra4I7Gv9NlN4NbqzBynkZyIcfTz5mS9OsWN2B4CNZ3rmeQDiWuD7q4Q3UkeWP+RKTvIzUlFZZKPJjcT2bEGu32g8VrM/Tn/aQu5OWTXU7xyjPR5FVHTS0=
Received: from LV2PR12MB5990.namprd12.prod.outlook.com (2603:10b6:408:170::16)
 by PH7PR12MB7793.namprd12.prod.outlook.com (2603:10b6:510:270::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.25; Sat, 12 Jul
 2025 00:11:39 +0000
Received: from LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8]) by LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8%6]) with mapi id 15.20.8901.028; Sat, 12 Jul 2025
 00:11:38 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: John Keeping <jkeeping@inmusicbrands.com>
Subject: Re: [RFC/PATCH 1/2] usb: dwc3: disable for USB_ROLE_NONE
Thread-Topic: [RFC/PATCH 1/2] usb: dwc3: disable for USB_ROLE_NONE
Thread-Index: AQHb8a6RTP30Xr6qbkW6FXojJLTBNbQtn6yA
Date: Sat, 12 Jul 2025 00:11:38 +0000
Message-ID: <20250712001131.ax3rw24h3deekxfv@synopsys.com>
References: <20250710152252.2532020-1-jkeeping@inmusicbrands.com>
 <20250710152252.2532020-2-jkeeping@inmusicbrands.com>
In-Reply-To: <20250710152252.2532020-2-jkeeping@inmusicbrands.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR12MB5990:EE_|PH7PR12MB7793:EE_
x-ms-office365-filtering-correlation-id: 352c231a-55ad-45b3-4d56-08ddc0d8ac16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OWpkZi9Jd2NrKzdpWWdBTWZ3RVlDSHkzVzcvYmIvSVZLYkY5ZVV2WitGeUd5?=
 =?utf-8?B?U2FlYStQcjdibHFaWjZrOGVMVWQvZWZ5NlYrMGwxZVR6ZmlOc1hUbEI0QUl4?=
 =?utf-8?B?UWM4VWRmUldScUhBbUtYUjFwRDFkZzhzeitsSVQzeUJZYms0WnNuNjBKMHps?=
 =?utf-8?B?WjRBS29USVhLTE55bmFFYTNvMW13bHZxMWFjZzNudnQrZ0xEMlE0aTZOanNJ?=
 =?utf-8?B?MkRoOGtVMnZCOUFFZUdWYzRqQVBOS1haaW5QekJLbm40TjExc1RobDZucjVZ?=
 =?utf-8?B?MWFSTmFNQlB2Nno1cENDVHFTOE8rMHdLaXJ3WTBsd1FSMVNpK1dJL2liL3Yx?=
 =?utf-8?B?blpLRGRxWkp6amJhaE9jbWhkak5RVWc1eEhibW9hNkZ5TUNyWTFBNGQ2QldK?=
 =?utf-8?B?RDc4YW5NQk5xZGczS3RyeEkrYWY1dlJvblZMMjg1TDlBSTlmOWFVTjQ3WjRz?=
 =?utf-8?B?WDZKamJodkl2NXpkNzRzOGNGazZRTzNveDBtb211V01pZEdIOEpyUm9lN1VJ?=
 =?utf-8?B?bERMTUE0U1Nxa2xkMFcyZzk3dFlHRnNSZnNBYnVzaFNZSkFPNVdLZWYybVNG?=
 =?utf-8?B?RnY0cXNZczJsZFNKL0pNZ3VLTG9NdWVNVkVobVhEVk5BMDMxRU56MlJGKzhT?=
 =?utf-8?B?UUxhQjJ6aCtkdVZiNldwVGxnNFowR1Mya1lLN2Nxa1crQ2NTYnN3VUZsc2Yr?=
 =?utf-8?B?WE5obk5qWklGNEdVYndWTkpNQVNJUUJNcFRIbmg3NzJqam5XcDFQSHp4dzVJ?=
 =?utf-8?B?RnpZUWd5QVQxNlY1d09oZm1BN0RGU1crenhTdURvSDFxVzI0Z21IVCtYTTNI?=
 =?utf-8?B?WmVWZVJ6VnhsOTdOYXZ0ZDRZa2xKS0lIbng2cjFncTEzOUZnaWNFSXJ2TWk1?=
 =?utf-8?B?U3NYNzNDbGRTY0hRMVk1VDVXUmZSVTZVSGhGWG5YcVpqNEZxcHpMWlpGSStY?=
 =?utf-8?B?WG43TThkM1d3UGRvelBoNjNzMTJ3cWkwU0ZjcDIxdnZTd3ZTNDVEQ3g2aEhS?=
 =?utf-8?B?TXUzNTJuNWd6ZXhSYkdDbXF0emVMYlducHFrUFFOVEhTU0pVMGh1OGl5K0pR?=
 =?utf-8?B?RzQ4UURkeHJVY0EwTTdrZmxYaWo0UzQvWEJOT080ZDdoYlc1ZnNJbjduS0dG?=
 =?utf-8?B?cmJxdjFKRzQwMW5yZ2RtZEtEMUQ3WTBSREl0RHJaNW5pd0U2YTYvbFhwb0dP?=
 =?utf-8?B?c1J6dHlSQ1EvRVFIQ1U1S2w1U2kxWVdOMmlGU1ZDZGR1aER6ZlZZMFFwSUJp?=
 =?utf-8?B?eGVveXlHWEx2dHp6NHpXYTVEWXJnaytVRkhFUUEvQ2dKNXhReVV2OTRnVmhZ?=
 =?utf-8?B?L3ZpRE9hREZRUFE1YnFKWTIzS0VDZ3Eva21PTVQyOWY1THZtZ3JkQjdvTkxQ?=
 =?utf-8?B?eWZxdHJiQWJiWVFCa0RwLzBEZUpuWGtxbUZMR2VDRW1LOG1tY1BmTmZiUkJx?=
 =?utf-8?B?V1RPc09sdUVCaWM3ZnU4cURDL3lBemN4VXdSUDZXc3REMzFvcFAwVnU1eG1B?=
 =?utf-8?B?QnJKQ2RGN09UK2cwNXROQVlRZmJGMXJGVjJhblF0dEpqUlMvU1MzSzQ1QW5E?=
 =?utf-8?B?YmV2bnZ4QjZlcS96Nm5lWmdNOUdVaHJ2UXF0MzhBVW5sekxpSy81RGRFTGVL?=
 =?utf-8?B?cFFrZThXSUV0aFRJSkFKaGFvUENpRG5ZbnpaQ09DZEZ4eXF3SjNFOVllNVZ5?=
 =?utf-8?B?ZGtKWFIrY1R0MnJyY3VjcDRyUm1SWXYrTmhUR01HU0RhSkhza1h6N3dWK0VG?=
 =?utf-8?B?WjBZcWZYZVNXWjliMGRnVW0xdVgva29UQ2FMOERaTlhyZzFYT3BmMFplaXlP?=
 =?utf-8?B?TGtRYWNxelc5YjMvTVpjM2hNSjBWWWpvK2l4cjBoWFNBZFdwL3Jma1N5NTg1?=
 =?utf-8?B?WHZNL3NQZzBJcUdSOFdtUjUrcllJcUJQMGtVdHNLb05ndmt6OGhPWjkybVE4?=
 =?utf-8?B?bDZVU3FDZVB5TGNhYUI1WkVBeUZIMitmbjF1L0IvRW1KNzZvT0k5VlpTclc0?=
 =?utf-8?B?NHJOeGFiajlnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czdOZXZ5c2dXMS9TSXBhMnk2R1NNYmRXWEpzT1NoaFErVDdUVzNaMThhdDkv?=
 =?utf-8?B?RXVLUkQ1aEIyYWtJc2dGRzVLb0JUcVBMU3hKL0d6cjgvdU40cGpkN1p1U0hL?=
 =?utf-8?B?cXBsZ0phM3pDWmNjT2lRdWdSNzlzUzVCbVQycHkybVBOcmhNMDJ1Z1lHbmxJ?=
 =?utf-8?B?WFd4Uk9pV1EvS3E2cytxTjdVaXdFa2ZRTHlQTVNOTi9BcENiOUhCMllnNVVL?=
 =?utf-8?B?RnRoWFJ5Nkx5RHh0SHZYdUF6QjlkRTlFQTVZaldNRUNGam5QT0FhUlV5U2lw?=
 =?utf-8?B?UU5ZU2pncVB2RGY3czVVU04xenBQYzRUeEZuNHZWMEM2aFQ1N3ZlTDdTTzhQ?=
 =?utf-8?B?dkg5MnQyQW1LR0NvQzdheEkrMFoydGhJQWpiNnRMRWhEQ3ZwVUF6dlMzZkxo?=
 =?utf-8?B?ZnEzUU5ETkNjNGUweEl5UWVTRkE3WnZwMitwWWNNUDd2M1JIRlBGN0NXNnVq?=
 =?utf-8?B?VFRIQjYzZ001NlMramVrNUZ6b0M5enNOM0xGRHMreWxVdmlVdUZ2dmU5SEtQ?=
 =?utf-8?B?ZHpUZlVNVWNaU1lQK2xaTUhWbDBia2hsS3ZhV0ZNUUhUOWtWcTBRMUZKT2RO?=
 =?utf-8?B?WnJmdzNmVDdTVkhSeVNoVHNCTHZmVHJUYUdDKzIwVXdERlR5WGd3cXVqOEpG?=
 =?utf-8?B?QlExZmZva0xXSnZxZ3V2TUM2N1FKZ0dJSUlLZUFuNllNY282dTZ0NTdlWFpQ?=
 =?utf-8?B?K2VlckI3R1dmem5RbGlqZGdxR1lpN0pOVmtheUVMRG9qYnJLamZzSmtRd1kw?=
 =?utf-8?B?T0FXZmVMbUp3eWs5VHVyRU9Ic1BQY0t4VEZyeUlBM3oveFp4NHVNaWJYcDZP?=
 =?utf-8?B?eDBYSkplaWdGT3B1MWV0eTBtQWRlVDJXVldVd0sycDlZOXNWSmUwR2FUcEJx?=
 =?utf-8?B?UkFrM2VubVg5UkNhNmV1QUllUjg0Nk0vMm5sVHJ2MWdhTUNYeHVxSnJlQmQy?=
 =?utf-8?B?YndKZXNpTlZSbFhyQUlrSTJjaW1qcGhFS21ZSmw3T1p3YkxKMnZmcERPVWpP?=
 =?utf-8?B?RzIyYXhiK3ovOHVtWmhvbmNDL1YxWkVLWTZZRE43TEdGRW5rS0E4RWZKMS9L?=
 =?utf-8?B?M1hibCs3UnJmMnpmUjBsUEZLMU1aU3hrWjZ2a2ZMdWVSSFJBMEd6blpRdk5U?=
 =?utf-8?B?eG5JdHFpWWFPdm1HTldkZHFhNDFnR0V4VG4zRnltanE5c3hDcXc5bm80SWZm?=
 =?utf-8?B?UXEybndQRmFKSThQcDNNUjRjbDV0dFc4SC9YbEt0eVJOUnBRWFltTldGOWs0?=
 =?utf-8?B?bldEYm9nUlkvK21xckdSSXAzTmpmZTNkeE9CamtzWFdOcGFSbStQYjY2aEdU?=
 =?utf-8?B?M0xVTG9KVWFJZGRnS0pCcm1XRW1abWVNenZibngzYUNvV0JCeFFIUUhCZ1F0?=
 =?utf-8?B?cDBtRDN3VkhjeGxkSEJDaWJlSjFIcW16R1dvMlUxZHhmdnJzQndacjNTbWZJ?=
 =?utf-8?B?dTNFalNGSHRjWk5rUThUeVVONHo2VTI0OWhyWnp3K3I3MTdSbk50SXpTWFRN?=
 =?utf-8?B?Mzl0ODNRU25sRGtCODEwRGRjMHpjVVpJdHhXZDVmMmdvRnpEU0pyZm56RFhp?=
 =?utf-8?B?a3Fra0gvN0tJS0RDejZmanRxV2U3Tk8xYlpSNHdWRnVyK1E3T2kvaWlOejJk?=
 =?utf-8?B?dDhjQkYvcHV5S2NSQlBtTU91MlpVcGg5NnJTWG9CNFpoSmJwNmdubVBnS2Jx?=
 =?utf-8?B?Unkrd2RkU3JxbklwSDdCc0lPTUF2SEZKcnNOdTdxQ3dabkZIUnNvRDNiaFA3?=
 =?utf-8?B?TjdyekNibEtvbFJ5dWppMHpkcFpyMlo3TStSQ3A1OGxzMVVtN2NUV0xTSTJF?=
 =?utf-8?B?c1RSWGtFRTNtWE1BdXA2ZlF2SFVheEcyTDkrczkrS0V1YmQvQXlhMjBCUDlq?=
 =?utf-8?B?Vk9sOW1FeXdlS0I0VWVuRFdMb1FDNU54blpPRlFzOVZFUDNyOVlYc0MvcWRj?=
 =?utf-8?B?Z3lONDYwdzJseStDYWFremlLZW9OeVdKRzVBWVZoRlVvSkh0KzVpaEE2dVdj?=
 =?utf-8?B?Z0NWajNCbXhzd1kvUHZnTUoyUHRhUFBqUFR4Q2pCdmQzMktzWDRQNTZiTU9U?=
 =?utf-8?B?bytQSDdBMU1YMUlKZHFaM2ZQTjFWeWpINDJTeDBrcys4V01pOGI5TFIvdDNW?=
 =?utf-8?B?N2daMGY4MUNtNnIvK1BYOU14bGNvUDR2WXpQWTZocC9KbnRVWjJjcVZJSCsz?=
 =?utf-8?B?WlE9PQ==?=
Content-ID: <50CA1361AF6D144488919041C50F26FE@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: q+nXHCPMNlIMkXFjJY+58Atkktxsvt0aA4go8VSjKXieaAEo5AFA/l/P5OgazQljCNRTA7UmRBhCmhyLzCTsi834wyaLFleGb2B1RWW3I1Cf8ZfltU0q86HyzAwtNezyeA0MpMx9tVau2f5BdYcMHhqTUgcz+HdOC6xUWXjo40IqOV3ObJDHFS0yT4Ee6QPzxgiEL5ffw5PQxT7XFHX+vnmerji4pHivZKhS2rPO5nOh1Ah3gjay6HBBWxKxYPE0bldJ/XZrT+HcMBh5T7jvLf4ca4WpIHVHq7YWNZr8PUaOdXp5cm+Rj/tDxr4+aj68rij1g5WG6yWiqej46xOuy/TLuRbjG3UUOEcO5g+duOut+N6e351ckDSqXsSS/msYPpbiPo09Z9CxOgF5b9qM6FfsHe9NU9kuKW07rGS8xvl9JHnnv08sHx987pxNSqagkOZQPx9G3iQU2qPQoN9qUg42VcpCB2jwhAlmNlI9HvXZ1TmcZiN5WwTrXWHOOSw77ckU8s9iBWSCgWttghwDq88xNIDa9wjp32UM3AF2EPEznvONq9u3hyaKKm7Zjv8vZQS5AMFyF/+/eCQtijPt58HIgMV/LQpkYQ0MSbs4Vq7fKazIs8wREe5XjPckclqX4TmTVXIqlaAW9oTBx9MT5A==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 352c231a-55ad-45b3-4d56-08ddc0d8ac16
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2025 00:11:38.9060
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DNF8k9j/QS3RS7yBCRf/4iIy8NbF0yu8E77Uasi4O/jvhjB3CUjxWTN2QKvo7bzEsYh8PIqUtuBckZJoMeigkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7793
X-Proofpoint-GUID: g0y8XRoNqM8DuZeHEpi_HELdot1_Tf3d
X-Proofpoint-ORIG-GUID: g0y8XRoNqM8DuZeHEpi_HELdot1_Tf3d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE4NCBTYWx0ZWRfX7Ne0tozBMRwu
 UXsuYx1Ps2DL5bOJAK741HAZzom5c9jk3ahEvgSlX4ttf/NfX5tKuB/ibsibbY9oPAnhVFluRw5
 3rJH6Lef/L3CFvRGL9Qr2sW0YbeyqiDoc3/oeQd4k2kEK5CG7p6xweXcMYbDnDmluRGLb2H4wNu
 PC+xg7dCqGhJoG7uMzsSFRrl2J2Nd5aezw4NQoXJJxKe76PkaX1hj48Qyu4rRrh7yk81x4gGfdG
 mT/wwn7OQOyF5EElQ1fEf8RcgE+osyPDvIj+RfNougfVJ2FZMfHydCN2dfsDsQK5azDC9565+Om
 PZWvqnd3F2+PZS40NWC5yLPac7Oj1QQpHDJaYiEB1lPP255MgybO2/q+RkIMM/Z9noN/LZ/v5mi
 fjBi+VjnutQybNaHUXQeyvwUU5uhURzVIlWWIVJIqvLtvkzpYEajb+YtmesIRlmzCzdULV3H
X-Authority-Analysis: v=2.4 cv=LNpmQIW9 c=1 sm=1 tr=0 ts=6871a845 cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=qPHU084jO2kA:10 a=2xWeXl8dnucLxNU7y-wA:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_07,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 suspectscore=0 adultscore=0
 clxscore=1011 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 mlxlogscore=999 phishscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2505280000 definitions=main-2507110184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_171159_082506_5B41470B 
X-CRM114-Status: UNSURE (   9.34  )
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
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Vinod Koul <vkoul@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jul 10, 2025, John Keeping wrote:
> When the phy is acting as a Type C mux, it may need to reset when the
> cable direction changes.  But this should not happen while DWC3 is
> trying to use the USB connection.
> 
> In this case, there must be a connection manager to notify the phy of
> the orientation change and tcpm_mux_set() ensures this happens before
> DWC3's role switch is informed of a change.
> 
> It should not be possible to go directly from device->device or
> host->host with a change in orientation without transitioning through
> the "none" role as the cable is unplugged.  So ensuring that DWC3 always

The controller is either host or device mode. It's odd to use "none" to
indicate connection.

> informs the phy of the new mode whenever a plug is detected should be
> sufficient for the phy to safely reset itself at a time that is safe for
> DWC3.

Couldn't the phy do this as it detects connection/disconnection.

It seems what you need is a full controller initialization upon new
connection on orientation change, and you're using role_switch selecting
"none" to do so.

I'm not sure if role-switch has the right interface to do so. Perhaps we
can introduce one? I don't think we should change the behavior of the
current flow and apply that to all other platforms.

Thanks,
Thinh

> 
> Lifting the special-case for desired_dr_mode==0 in __dwc3_set_mode() is
> sufficient to allow using the unset mode for USB_ROLE_NONE.  The
> handling already disables the old mode and then simply does not enable a
> new one.
> 
> If an external device is notifying USB role switches, then it is not
> necessary to set the default role when USB_ROLE_NONE is passed.
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
