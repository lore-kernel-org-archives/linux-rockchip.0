Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB01AC87FCB
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Aug 2025 00:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIHrC47E9NTC96r3MI/TwIJxcwKElHiMrWj2oJ4/O48=; b=rNid6sEALEl3e6
	JZ38h4whfzkVn+lr48Yj3x85AZiEa6sNCYNPL15p+GeDknhBHMEGWHz6WQ4LTdLvanddruddQQekq
	ZPXXZLCKBgXv44nGg7YgCEsXjJ/RobfsCxSBt3SYDlTQjzFEDX1tp5LSHDDfzdWyI/3m5aXvWCAva
	cs5Rczjm7W6f+EdHHuLllnByQXtFdohMLo98kdo5/PvraWbq3qxi4yTiU7JLVhf0a1iOMsAXn2BFy
	NJ71Z4zi0uFPVo7cNvtYFWSZEt9SvDFfzUsR0NIYnVkx+sLnWmwOGpRk06dhafC7DNiEEm8Agmpoe
	uRHPpYsmAJ/jqRFluGhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujoxu-0000000Gxkk-43AF;
	Thu, 07 Aug 2025 00:58:42 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujoxs-0000000GxkD-2My5;
	Thu, 07 Aug 2025 00:58:42 +0000
Received: from pps.filterd (m0098572.ppops.net [127.0.0.1])
	by mx0b-00230701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 576JVlOH015865;
	Wed, 6 Aug 2025 17:58:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=quiOfXDdXdTf1p7eMQBKOQwL/cqBzXZ1jS8DTyR2nq8=; b=
	jtaude5Kb56/E1PA39TFL6hcYWLthH76D0705Emznzjm6HwEEbkLMsTMw0INef71
	IiUBHQTMk01H0pinWSVd9M2aiTZaBNn4jbP5tcFdu4beT3Dpz5MceRlCg69WIBod
	JhaN31A17JmeZQQZ253bW8Nh58PzTJgT1eBxA4UbY3sq5gELcIcuKHypl2l76BSB
	Uss29NFu6mtvk5raDYkVnWmbMA5PSQFyGXyXVPH3I8EfiBTW7+Lmi6311tvfJpSO
	XRCzCJefxLnC7synPUhgfYM3yPLTagy0ZKeadrFkCclEgjAqnSlOtUNaejoC5119
	ZSKd2BFfrazHmxi4qHENew==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.73.133])
	by mx0b-00230701.pphosted.com (PPS) with ESMTPS id 48bq0wgbyv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Aug 2025 17:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1754528304; bh=quiOfXDdXdTf1p7eMQBKOQwL/cqBzXZ1jS8DTyR2nq8=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=bN7G79qIViKYWW4jCYpA9i10IrZqa7/cfIpgj97sjh/X/bTNsRkuvSTvCKr5yM6g8
	 xrmo0XLaosSWLGC8U/sU/6RLmpfPyQQct2LW7MsMWO8C+6NQSIhfoxZfNHuVfLTaPi
	 BUj09uZowtMGWYb7s08DEDU5RzMpUDM/+7scazKwtoYG2/EhdWYemUI/wK4QZaIRwP
	 HAWtkRfRuLe0ai8SqCHnoXLIl6BqCkScuzZ4ZbJnwlbCDVw7iijks9n7F7JqWqIrYR
	 5vx/N5whfMRyy4j+0LR7uzULzmOlqK1ujCSe5olPpVBxv2IrVsfj+sRrmhD3O5wFa2
	 +3KjNb3tSHY0Q==
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com [10.205.2.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0F00E404CE;
	Thu,  7 Aug 2025 00:58:23 +0000 (UTC)
Received: from o365relay-in.synopsys.com (sv2-o365relay3.synopsys.com [10.202.1.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 40323A0098;
	Thu,  7 Aug 2025 00:58:21 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=cI85E1bJ;
	dkim-atps=neutral
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04lp2173.outbound.protection.outlook.com [104.47.73.173])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 8D2334028D;
	Thu,  7 Aug 2025 00:58:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JdIPPaEHdliOMtdWrJB5ns9r8Lxb3pU7Oo3BDQTglwVUwkIT7DTIPCXZVXy3P6fqBZmuzJDr2A4VdpccSuwNd/FUzUqCCPntco/6FVhuzEJi3xh6XuqLZq7s6gpGN+htwARe56ncgrMU83crnVGVJkrmUG8Q+BjoaC68PMLxq1Q3UTM/G+3n+oIn0+7jxoBnBlnCEcqWcm4wR+uJ/tCwlV8k9IqRxyWouc7PfDoH6S+/+1wo2usz/I5H45xz3r9LSLwqKy/aho9YByVKJGRzzQsCSwsaGxLIL8jaOKzJxRIyBnHEdcn90jkvPoG+WhUUy47dHgWqw4zC41dbKzoQig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=quiOfXDdXdTf1p7eMQBKOQwL/cqBzXZ1jS8DTyR2nq8=;
 b=ZhApCxPwaENLEScDZuGtbbzfVSPE4Hrmx0w1oxodNYE/VXV2Ah8LphR1T7EBvFuUSwHbLMgBomQUFO+eLLo3TJJOFpouS+v5ojM7VMeM1LAlfd7jmA5zLgj2PDZl3V6uFISABX3SKt6z4rCN8PfSX7wY5I9rFs4MN6z16EpjvPcxajMpjaPo6IElUWhKhnSQMVSMnfzwtAAigk8EW1Bse4uQkLBvsJiUUThvzl2F7QmGTC3lvbvnKCBFmYwUYHAq8si7xNvkYWKUKlzYS74GrTUVIkWA0Orfp/zhl5sKWhmrG6JJmHgvqT0Fi2tpTf3xcRmag7fQzwx8NGLWWBuZGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=quiOfXDdXdTf1p7eMQBKOQwL/cqBzXZ1jS8DTyR2nq8=;
 b=cI85E1bJ9MfkYNnRd6TMEOlQwjBlWwft4yBMZW66RtVMFYXUbcfJ0YNqLwk57aewqjTbm2gFpD+WdyEeyjZs97nnbtLT5Lj1g5BP+DeiklIoRIl0ikbF84TjxJE4B8iD7WfVG/nxjyB3TsmXNO/YlBhGTaK6NSfPnrt5dddE2Xc=
Received: from LV2PR12MB5990.namprd12.prod.outlook.com (2603:10b6:408:170::16)
 by SJ0PR12MB7007.namprd12.prod.outlook.com (2603:10b6:a03:486::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Thu, 7 Aug
 2025 00:58:15 +0000
Received: from LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8]) by LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8%3]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 00:58:15 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: John Keeping <jkeeping@inmusicbrands.com>
CC: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
        Vinod Koul <vkoul@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [RFC/PATCH 1/2] usb: dwc3: disable for USB_ROLE_NONE
Thread-Topic: [RFC/PATCH 1/2] usb: dwc3: disable for USB_ROLE_NONE
Thread-Index: AQHb8a6RTP30Xr6qbkW6FXojJLTBNbQtn6yAgAQhPgCAGAbmgIAMPuiAgACCnwA=
Date: Thu, 7 Aug 2025 00:58:15 +0000
Message-ID: <20250807005814.nlf7aotts5o7navl@synopsys.com>
References: <20250710152252.2532020-1-jkeeping@inmusicbrands.com>
 <20250710152252.2532020-2-jkeeping@inmusicbrands.com>
 <20250712001131.ax3rw24h3deekxfv@synopsys.com>
 <aHUfFGnGZP4z7UgK-jkeeping@inmusicbrands.com>
 <20250729221027.jvg3bpqhc3z5j7xn@synopsys.com>
 <aJOMk_PVasn-tvV6-jkeeping@inmusicbrands.com>
In-Reply-To: <aJOMk_PVasn-tvV6-jkeeping@inmusicbrands.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR12MB5990:EE_|SJ0PR12MB7007:EE_
x-ms-office365-filtering-correlation-id: 4208fe28-290e-4ea8-f474-08ddd54d7d9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WGMwUnVmOTF6N1BneksvOEVRNmZxaWNLenFxREgvOWhoWWR1OWowVGJIaDZq?=
 =?utf-8?B?Zk1sR3FPU0lLNlc2OEt0cE5NNXJNVE5vdDAvVWRmS05rNHJCNVpjNm9WcVN5?=
 =?utf-8?B?UU9qbGtLMkpsWDl4Nm1oNXNvSEU3V0ZxcXRIQkMwVUJxM0VpY1U0cUs1Nm5Z?=
 =?utf-8?B?ZkwzWUI5SFA2RVVtU1VhSWVkUmVEMGdFeEpXd1ZaaGllQlJNT29CQ2EvUDJR?=
 =?utf-8?B?V2lNcjlHUlhsemlZOTFxVk5XaHVqSUhOVUNyVWp1YkEyRnJqSFRNZ1Mza0lK?=
 =?utf-8?B?NDd1WHNBV0xZQUY3VHhienlnbGxBbzA3T1pyVmpCd0RpcG5hQlpJZTZ5OHlt?=
 =?utf-8?B?cFpNb1VIU2ZaNU9oMGY4U2h2bUh2U3JiSEVMZ09YbjBNdm1ySTBMOXlBZzZx?=
 =?utf-8?B?YTNqdEhMaFpJd2ppTHpobXo5WEZSc0NvMkZvRERHaUdYMmhaTUxYOXZLWUJR?=
 =?utf-8?B?a1RDeUlIcWszZWc4MWFmcS91ZzNUb2NMKytib3lQNXBFcW5BdnFmV1M3ejlq?=
 =?utf-8?B?aDRFUGhqL0JnOVZYQVBBbnRLVHpHcmRGOC8zQUdtTm9URktqeVZJay9BTGtL?=
 =?utf-8?B?b3ZTUmJDNGFqUTVIWTJ4RFFPb3k2K0wrUWtJdUh5aVRkMGNjcE9DTHBDMURi?=
 =?utf-8?B?WUZ6QkRJQjljKysvNURiUHdpUWg2Z2lxcUg4SUcxRXlURUN2dTZLOWxZVUdI?=
 =?utf-8?B?dituRnlCWlZxempRamxadGZnSVpmd3liUCtWQnp1SkRsVjVSQVQ3NkJiQWZu?=
 =?utf-8?B?TzdmTENVV0cxQ0FZRzMwZTlLWnljcFVMdzRBOVBvMDI2aHVMRUQxaTFXMUlE?=
 =?utf-8?B?RE1LaU1hSkNWdmU1ZUZDMGM1OXlhTlZnb2g5U2t4bGovb1pUUVUvWDJFNEZP?=
 =?utf-8?B?NVgvWXh3L2NOallRRGhGbURydlQwNEVCc0VFby92RWU0b0RkZjV1d3BYYlZL?=
 =?utf-8?B?TCtFd1REenpIbm9oOGZpaUlLNHVFaGNiRGUvaG5wU1RsUzFoNFZzdWxHQXI1?=
 =?utf-8?B?YTdrd1g3L2o5ekVXekhaWjdZQjdudDlYUnEwbnQ0WmR2TnRXUW1OU3pSZjdz?=
 =?utf-8?B?WWN3TERVOFJKWGF3UUs3d3JSMGROcFJNK1pOd2thajVnWEF4REVPR0JRL2tt?=
 =?utf-8?B?T1VPOVA3Ujhxa1BvcnRPd25Gbm00U0JPY052cjdFWjl0YTJFSUllTEh5VW53?=
 =?utf-8?B?b09rZ2U0N2JockxrcUx4MWp1UzdkaTY4UGhVK1lGb3BqdVBJWnVrd1FyYkl2?=
 =?utf-8?B?TUdWVjFIUitpZ3N6aW55eVFObDl4SFY3VGVlZkQvMmxzajdMbGh6N2FYUFQ5?=
 =?utf-8?B?WDk1QlkwUEpWbHJHa1NuQ3BRV3FVY2xEd2FZaVZGSm9xUFp4TkFWR3Vjb1Bu?=
 =?utf-8?B?Ukk2K2lYSE50OTVMWDM1dW1PT1A5WWlvRkxWaTJlYmRUQ2xSdVRIUmorbzFs?=
 =?utf-8?B?NFJOUnp4WEpwMFZKZlhDQ0l3c1BXbzRzb3RQZENYQlFJTncvZ3NqdGRrK2k3?=
 =?utf-8?B?dTFzR3NKaTM3eFptM1FhaFZtajRpbU9zMjE2eVBMYlB5cDhWeHA0ZlRRNmtH?=
 =?utf-8?B?aDdiSVpGWHcvUEhaeFVMNHFiajNKamtoQ05NY2o4RmFqSCs5ZzJGeHo1bm8y?=
 =?utf-8?B?NUFwbFQ4UTFDY0M1NXE3SE1aZGgrK1Nya0NBVTgrckgyL2NuWmhla3FvblA5?=
 =?utf-8?B?TjFYREwzdll1c05aalhBdlArZ3BkdkRUYnV1d1ZsanNlSDhjYU9XYU4xTXJh?=
 =?utf-8?B?Ukt0Z2MxYWRwbkVvMDNadkR0cGRtanhqeS9Gc3F4MkhWa2o4bEUzMGlXekdH?=
 =?utf-8?B?RXNBMkl3VlZGZjc0d0YrK1dOOG5Id2xvQzBvMXdzcWdDQ3ZwV2FDaUJJOTBS?=
 =?utf-8?B?UHF5SXhHYjF0bWNMclRJaFByWXlQTy8wR20yNVk5aEgrczZMYS9Fb1ozMVJ1?=
 =?utf-8?B?TFVEakJlMUdkN0ovdjR4cCtteU1RK29vTFZoTTVBUVNnTm1SbEtVLzZxcVZ3?=
 =?utf-8?Q?/LOedlMV9LNtzfwzuHhePEaqwFvl0E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajYrZnNmZjZWMWhpTnBqbXk4dkZKNnJTRUUzbXp6WFJ6MkRReUdSVk5Sc1gx?=
 =?utf-8?B?QzdMRUtYeEs5aklsUlZRdWNWbFIxWVg5N1J4c0hBRmNKY0wxNW9qVTI4dENz?=
 =?utf-8?B?R20rNVNudUpvNUt4SVAxVDhCbEJhTHV6RnFHU2VWbm1xZ3V1bUdGdTVtUTky?=
 =?utf-8?B?R09jb2tMbFNYU0FYSk5ES1ZwUFdza2p3bFNNYVJPVHpLTHBwWHdkaW5pbTFB?=
 =?utf-8?B?QzVVd004ZFJZVEgvSGt5dnpDSCs3VUd4WnpZWm9xeEtpWjEvamhIa255QzF3?=
 =?utf-8?B?WTkrcUpOZ01hUkIydnRzZVZYeXZ5M3B5aUFUYjI4TS9USW00WlIycHExZjZ3?=
 =?utf-8?B?UktmRmlJbncweGgxbWhkSTNCQXpMM3hlTTdoL2J2ekgrZHIxTFIzcDkwaWxs?=
 =?utf-8?B?Z25iRHQrYUxySG5yOUZHVVZid1VaYVg5S25RY2lWRWs4MFVNWEVWbWFsQndF?=
 =?utf-8?B?c0pHNngyWUhqRHBXZGh1T0svNkpGUGFaanlsaHppM0ppMjM3Zlk4RTFoQnpD?=
 =?utf-8?B?QVpWTXJ4NFZ0N25RalZLdEE5TFdwQVpBenUrNHc2N0RnTEtPQUVSbWlSbG9j?=
 =?utf-8?B?S0g3RVkvcUkwRENnSE5XMjVwY3M3ZHBzb1VFcXlZMnJlNjhBY1JKUlRXVTVl?=
 =?utf-8?B?ZktVeTdJQ0ZjZ2lIalovL0Z4UEpMMWVxNjNwcHY5cEs0NW1sblBjUUlzcjdZ?=
 =?utf-8?B?Lzh4cVJvbUhJeVF1UE1PZUlNbmVHcGRFVFdJT1lINXUwYkZIbElvU3YvRGU5?=
 =?utf-8?B?S3B3S2hLOUtjRnBMNWE0N2k1VE9YNW9OWlpFTVF1YmhsQ1lSby9QQm5LWlg3?=
 =?utf-8?B?RGZnMjdiQ21aK1BLSUMwRENyeHlrbWpMcUpMZDdLaDZOMk9tT0hoV2d4TGlP?=
 =?utf-8?B?aEttSkFPTnR3NzFTenYyampOSWNzMGdVa3AxUGpnbUZaV2pxcGlYd3RKd0Ja?=
 =?utf-8?B?TkdUakdWSlRyeEdzU1FWbFVuMXJveVFaUXVwbmYvTno2MmNMK1h0OFc5bjdB?=
 =?utf-8?B?U0VYdFg5cUl1S2RmVHJicitYUmM4andFRXVPd2UvWTk2ZHMvV2dQZ3JzQm5t?=
 =?utf-8?B?QllkbS8xTlNQbnFhWDdRQ2R2ZitHZjIyOStSMmpxTkJndUgzcWV5d1QxWnN0?=
 =?utf-8?B?WXBsem1obDFYWWd6VXVLQzFYbmhXVElEZjBlU1ZUNnRzME9xejhrZ09GaDZm?=
 =?utf-8?B?WUppNiswRXNKSGovVGIyb2FQaVJITWlqdEVzSzg3NzFZUmFJQW1YU2dLc21R?=
 =?utf-8?B?NjJnWm9oMW5LK2FTU1BGOTVCM1RtcXlaVTRNMXZ0YU14SGsycEpVY1NuRHdZ?=
 =?utf-8?B?dnhLWWp6Nk1UZ084ekVpSHpuanYxTGU1VFdvSGpoSlEwaDVWN3MyT1pmanA0?=
 =?utf-8?B?MER0RWlEajlZWmhJUEZYZVlwbk1JV2xhaml2eXR0ZStSZHRjc3dCVEFpYnlP?=
 =?utf-8?B?MU5UYUsxSG51amNPZEhMV1V0REtFYURWNHlWOEZxYU10NGhHSXBOR05pYXNi?=
 =?utf-8?B?bVNmOGc3LzFpTy9PbTdQVmNXZXBvaitSMWkwVEhWY0kzMWxaY1NoR1EycjNq?=
 =?utf-8?B?bUt5dXY4cXpNMnhuNWdZcnRaRjFOaU8yZG5RWWN2Rk01UDFXQTNRcWlwekdj?=
 =?utf-8?B?TTExZlErUjU4OXlLV01PSVZjNWpwaklEMC9vTjJyaUhsc0JXcnRWa05sZ2E1?=
 =?utf-8?B?dzIxeUlyMWlpemJuazl6b0g2VlpENUJ2dVZ0NVZTMTlJb1NydGs3QlUrd1RP?=
 =?utf-8?B?UFNjSmdNVzA1cHVnaERjeVo1Uk00aXFJT0R4R1dWblhjMmxPTC9vaXRaZEdL?=
 =?utf-8?B?UkFTQ2srQXd5SVhQZmlqcE45WVR2bElvUHNOMFJLdE9PbDI1SkJnZlQrZjJn?=
 =?utf-8?B?SUtqeWxQU01sWjljNTNlQUE3ZDhERFoyMGRSTUxUcVhKVzNDbldPcjJoSm9w?=
 =?utf-8?B?Smc5bEU5RFNlbjVDbmdBSThUUGl6VG9nLzhiRFovL2MrWjNGVnZiYy9OdzAz?=
 =?utf-8?B?cWFOZnczTE53djhwUExHdHZYbWEzWlBPbTVOQ05CYWVqY0xFaEJqelhka05l?=
 =?utf-8?B?U0RJNmpSVjlaLzNvM0RDbmdjRTA0L3Z6b0ZacndKclVYQWtEZjVxS3lubURz?=
 =?utf-8?Q?RSO+ysDoz1EZO3WHSRji9ucxY?=
Content-ID: <241D6087F0BB4E4499D2E3F7C4298AFC@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: ieVPW5oo1nOBJPj/NGsWQ8hTLPZMtjVjPOkTMqg3EEsQzA3otiDY2gNZ5PqYV/pGum47JzxXwZUrS8041pWBpTbzHw0ZrAscuJWaPoDqWbZtwaDPixevDNF2cC0CmQ2SYqKhG8EMqJMkdoHyow24JLMppihlcFg+M7IoY12wnWDm5kWFV6ufNYbVEC5m325/2KLWYq2cb862KOO314LhwRWhaBHN+alA65sZOPkfMZ7+XN0pjvSKKWRFCimhabRJBFYyBdo4DY7otZuzgrHpOT34jYxKPuJpVULq+9dHNtYgicYks/vz5vx/tk3FfSkvx+SaGUgN5+nnKggCIxew0rSNi3EH31s50aObmCTDs5ulkkP8CAh6KRUmb+yQ5tWmYRSrqk67UU52JhKhOKP1gUK/1iBQXaeXRARhoTxLBgmMgiDYe7nwEDIXtsPl3+bXxw0iRYniRmCYh9mNfsO4xDK0KntRi/3PaEdJ8/34Xl5Z5KW5vz45W1JNCL89lo+IMLUsmNpyuOmRSbcoeJlEkEdpkkcNC31P+qT7gm7y/HWaUddzZYvv+ASnYqff3V4oHUyJnClGVxQpIG9TYJp+ScPhvBwwOMRlEaYpIYWemjxAYIlsd1N+ALMsRX5PyRFiHbjGfsP5nQgX2j/LI2V1ig==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4208fe28-290e-4ea8-f474-08ddd54d7d9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 00:58:15.2960
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n+G52ppbAZyA/ALEehLbIrq7eAt1Xqwy5TTBDcc2NAKZpAHWm0Z7CbqwqY76IdKc56bNkw2F07WRpBCsiHoVGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB7007
X-Proofpoint-GUID: YGN5kO_6j7y9IPtLIqKlRP6WvCFU0wiE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDEyOCBTYWx0ZWRfXxDyhn51CTR/h
 E9aFXEI6DTU8SVEVV94C1lzYV3YPHB7eIftMK/QJ1vujqYWk/uFST3mUkJR0ezvLIf20B2tq9I1
 mDg21wo+Idb6fyh6z4KmJk0+jy2HiVCz6mH5N6pfQoGyC03jtsUhVWPMkLLPOeYZFLteSvNN5DP
 NWsZLFcgXm3pF8Lwqh5/BRT+e+uNwSoncW14GHWoNJPnlA65PijS7GsJKbd7k9TvEeIkxX+cttV
 ru6UG1Gma0g9IJWBvM6oWewjc705fFJ1k2LYRVG65urmfVgIKNkzPh370afNl4qF58soHbsfeg7
 z74CWcwfB8yMPos5Baomo0Y4xDt9wodwfrR16m7VtYHnsJfYdFgg6tb5e/mrl+Xs0AjGUREb3O9
 RftSRMaS
X-Proofpoint-ORIG-GUID: YGN5kO_6j7y9IPtLIqKlRP6WvCFU0wiE
X-Authority-Analysis: v=2.4 cv=HYMUTjE8 c=1 sm=1 tr=0 ts=6893fa31 cx=c_pps
 a=8EbXvwLXkpGsT4ql/pYRAw==:117 a=8EbXvwLXkpGsT4ql/pYRAw==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=qPHU084jO2kA:10
 a=pXuMzSUkCGukDOER0psA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_05,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 impostorscore=0 suspectscore=0
 priorityscore=1501 adultscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2507300000
 definitions=main-2508050128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_175840_728264_47D3B984 
X-CRM114-Status: UNSURE (   9.54  )
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

On Wed, Aug 06, 2025, John Keeping wrote:
> On Tue, Jul 29, 2025 at 10:10:35PM +0000, Thinh Nguyen wrote:
> > On Mon, Jul 14, 2025, John Keeping wrote:
> > > On Sat, Jul 12, 2025 at 12:11:38AM +0000, Thinh Nguyen wrote:
> > > > On Thu, Jul 10, 2025, John Keeping wrote:
> > > > > When the phy is acting as a Type C mux, it may need to reset when the
> > > > > cable direction changes.  But this should not happen while DWC3 is
> > > > > trying to use the USB connection.
> > > > > 
> > > > > In this case, there must be a connection manager to notify the phy of
> > > > > the orientation change and tcpm_mux_set() ensures this happens before
> > > > > DWC3's role switch is informed of a change.
> > > > > 
> > > > > It should not be possible to go directly from device->device or
> > > > > host->host with a change in orientation without transitioning through
> > > > > the "none" role as the cable is unplugged.  So ensuring that DWC3 always
> > > > 
> > > > The controller is either host or device mode. It's odd to use "none" to
> > > > indicate connection.
> > > 
> > > There is no connection in this state.  When the type C controller
> > > indicates that the role is "none" then there cannot be a USB connection.
> > > 
> > 
> > It's not about connection. It's about the current mode of the USB
> > controller. The mode of the controller isn't "none" on disconnection
> > even if you try to role-switch to that via the typec switch.
> > 
> > > > > informs the phy of the new mode whenever a plug is detected should be
> > > > > sufficient for the phy to safely reset itself at a time that is safe for
> > > > > DWC3.
> > > > 
> > > > Couldn't the phy do this as it detects connection/disconnection.
> > > 
> > > I don't think the phy can detect a connection.  If it is configured for
> > > the wrong orientation then it will not monitor the correct data lines.
> > > The phy hardware does not signal any interrupts to the CPU for the
> > > driver to react to.
> > 
> > Ok.
> > 
> > > 
> > > > It seems what you need is a full controller initialization upon new
> > > > connection on orientation change, and you're using role_switch selecting
> > > > "none" to do so.
> > > 
> > > I'm not sure whether a complete initialization is necessary, but what I
> > > want to avoid is the phy resetting while the controller is part-way
> > > through device enumeration or setting up a gadget configuration.
> > > 
> > > It may be that simply avoiding resetting the phy if the orientation is
> > > unchanged is enough to avoid some of this problem, but I suspect there
> > > are still problems if the clocks from the phy to the controller are
> > > stopped unexpectedly.  However, I have run some tests of this change and
> > > it looks promising.
> > 
> > That sounds like the the phy reset is done after asserting the vbus
> > valid line indicating connection to the controller. Can this be fixed in
> > the phy or type-c driver?
> 
> I don't think so.  I've tried implementing this in the phy driver and it
> does not work reliably.
> 
> > > > I'm not sure if role-switch has the right interface to do so. Perhaps we
> > > > can introduce one? I don't think we should change the behavior of the
> > > > current flow and apply that to all other platforms.
> > > 
> > > I don't think it's unreasonable for the controller to be idle when there
> > > is an external type C controller notifying the connection state.
> > > 
> > > The hardware setup looks like this, with the Linux type C code notifying
> > > the phy driver of the orientation change and the DWC3 driver of the role
> > > change:
> > > 
> > >                       +------+          
> > >                       | DWC3 |<----+    
> > >                       +--^---+     |    
> > >                          |         |    
> > >                       +--v--+      |    
> > >                 +---->| PHY |      |Role
> > >                 |     +--^--+      |    
> > >     Orientation |        |         |    
> > >                 |   +----v----+    |    
> > >                 +---+ FUSB302 +----+    
> > >                     +---------+
> > > 
> > > The advantage of using the role hook is that we are guaranteed that it
> > > is called after the phy has been notified of the orientation change.
> > > 
> > > Do you have an idea of a new interface?  Or do you think it is safe to
> > > reset the phy underneath the controller when that will halt the clocks
> > > from the phy to the controller for some period of time?
> > 
> > The proper fix should be in the phy where it should only assert vbus
> > valid after processing orientation and phy reset. I'm not familiar on
> > the communication between your PHY and FUSB302. There should be some
> > indication from the phy that it's ready before you can assert vbus-valid
> > (that can be from a callback, a status register etc).
> 
> The FUSB302 is connected to the CPU via I2C, there is no direct
> communication between it and the phy, it all goes via the kernel's tcpm
> subsystem.
> 
> The problem with re-initializing the phy is that this causes dwc3 gadget
> configuration to fail with "failed to enable ep0out", and this happens
> when VBUS valid is de-asserted.  This is 100% reproducible on boot for
> me where the init scripts are setting up a gadget via configfs.
> 
> So it seems the timing of the phy setup needs to coordinate with the
> dwc3 controller.

Ok.

> 
> > What you've done is a teardown and reinit of the driver, triggering a
> > soft-reset. This can re-sync the phy. That probably takes long enough
> > that a phy-reset after orientation change will be completed before the
> > initialization complete.
> > 
> > If there's no way for you to know when the phy complete its reset, we
> > can add a quirk for your platform to always reinit on role-switch call.
> > 
> > Let me know if this is reasonable.
> 
> I'm happy to test patches.
> 

Sure. I'll need to get back on this.

BR,
Thinh
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
