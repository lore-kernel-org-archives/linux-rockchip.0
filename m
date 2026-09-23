Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8476DC98307
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 01:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A12TNrke40JEVRt1rNnWqH8W0Odr5qeiCkZg/IIXSmw=; b=D03Km4DWOJmThQ
	yyIV7AkD6yFa6Al4bt6Td0ZyMpkg7sIIew8Z/aqTpVQ6KpmTuPdYevFsyYSi+FOCzaZkIQ9ONasrL
	B36P2aldNW2NM578DW8PXzdD2vUAoJcxPpEOzqAXA0UjFKvOYs7eeUfE6ncJ/x41zAufHadzFGUDE
	10StxZ1cxzFTL2MY9ZlD9nvCkILUx1dgi1uCxay1AFpkqvNgOaz2wSfg999jkSowFxz4zdHGZ77AQ
	e3FMwAFqIwnK5g5hs4t9wmdYheD51VcLIjkJcZ1sDmojXfi7Ru1peQfC9IO/7eo+lKvh6IYGaGRb1
	D7D2LuM+eWtQrMRScgig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9CDz-00000006tjk-2tE6;
	Wed, 23 Sep 2026 01:56:43 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9CDx-00000006tjI-1d9L;
	Wed, 23 Sep 2026 01:56:42 +0000
Received: from pps.filterd (m0297265.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68MK8nhx404927;
	Tue, 22 Sep 2026 18:56:33 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=m0vqqZfJxqaQUARmHf1eyGfrbu8/M+t/y9P1ac3ks6M=; b=
	USfGHAO+t/vfZFXJ69f7OiLkyip7zm4IwNlxZF5zJBS2b8By8Y4krbl7aufyRsTc
	i0lnHo25lQb0SFzDADZhkWno0m1/hhWR6wUbqcvvFVgMlmHAJcqusg447m1Y7pLR
	IIjwjVLLvBhtPz1ke576YU0xcLZgasAlrUZp97pG3sI10uwlRu5Q9Bv5967maQ5y
	cSnu1Jz8HTV0Oh1BCLY7mNseqTHbAoWS0iHyhJx0QXWSvz9eLAdox2fBRFwSZc29
	TzFI8yUxVHV2sKNJOaTHWM/VnixRtI2A2ypGuWGryhS+8/opXHJ/1KUVVSye9fZ5
	FCwps73krQtYpLCJcF6Xzw==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 4guw564028-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 22 Sep 2026 18:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1790128592; bh=m0vqqZfJxqaQUARmHf1eyGfrbu8/M+t/y9P1ac3ks6M=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=SWW8LI379NXMBYyYwAo4XXZH7RkYRVbEQVd/YLJ4c4ENqxtnBKtiITVun9o85UZ+O
	 44BolcyKWmqUrtqmri1O+na1Gews+vdBnpmB80/qUq3siiZLdC9MGQnvED/w/z8xlR
	 Zdyfl8xNUJi6P2h4W5sHZYQ5kYO0EuleAe0lmy83Q+X/v5vv+1q9wUzghnoEg6l6og
	 rjhEpsHHsrulzyXeHVEJc8lbgvbE4quVwOmApebExNYc533z0aPya5AuIgVf1A3DmF
	 XVk9ucsGRBI51kLoFBbWmlqpSpRL1KV6//V0sWOWRM6sTYO6C7qDI0ARs9Pyexq1Sr
	 TIdpWjHiUq9mQ==
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com [10.205.2.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4E5E8401B7;
	Wed, 23 Sep 2026 01:56:32 +0000 (UTC)
Received: from o365relay-in.synopsys.com (sv2-o365relay7.synopsys.com [10.202.1.143])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id D6C1CA0267;
	Wed, 23 Sep 2026 01:56:31 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=D16/YwAe;
	dkim-atps=neutral
Received: from DS2PR08CU001.outbound.protection.outlook.com (mail-ds2pr08cu00101.outbound.protection.outlook.com [40.93.13.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 9E5A9220138;
	Wed, 23 Sep 2026 01:56:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qjokqHxEKMUl4aK/WkWycfWiDLc9tX6YDFKfgkydL5KjYUh43waltYMhWJSAZ8zIG5gu/AEu3OQD3MP24U8duayXcXttqkBQ973h5oy0dYRnDe04K+XAxarBvhUVuLRMSQI3XaOBIyBp8yZWeSUs1Wz8c9VYeAxaAY/YkkZlpgIsdWY0TyxjV1ipo0OjAWmdFzGuNYGCtbvF3JeZ2Jq/YtJqtmwS9Bv1wGqNM0ASOiUr0ppvTfP0Snr+d/dQ/tzoXEj5n9mjcBwUyVqF+zwPW0oKNeQ+c8baqpwqGXd3NZwe3l9cbJuRWe0JkH8P8Dl3+Vl1g9vxBlcaYXoboekr+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m0vqqZfJxqaQUARmHf1eyGfrbu8/M+t/y9P1ac3ks6M=;
 b=QfVtmj2wfnDunXveUur7iwRRZak5CoM/MRj1u0wQm7oldhRAE0Hs4QfUORFR9Hv3j4ROv8nxXjasQnIe0fewolHCz00Ryz4yGGC9YNx4wpSIfklrgpeah+lD/DjPIedFc3p0pIKS74LSf6QPq2/S4TJehcqUPALd4NLgEcJUCO9dpUZud15aDhPfutLCLsOyQzQNyIh+Lh/e1P2aqvoQ9OvyN309v/AnbicK3df0DXKaj/hxXubcRVHjQs3RDupYbckXef/rNVOp7ejBZW4IUjWXHp9KcCuNS7afcZk4dFdH3J2dm76eG7InWb9Gy5LMVvXDGLCsu03iAAssjVYVsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m0vqqZfJxqaQUARmHf1eyGfrbu8/M+t/y9P1ac3ks6M=;
 b=D16/YwAeCKrNjNwpYzCsgLeQYp4wTnH0urVj7IioAPjm3s4YJL4l4vcvUof2SoUlkba45rCsXuk25kWmod4sEAFNBrDAHLevPyD4KQ5uVqnvof4+3GaK4G5bJH3sjXC0tkSphm3t/utxqn6RbBFMmRHkann2iXoFEAAUHAp85AY=
Received: from PH0PR12MB7486.namprd12.prod.outlook.com (2603:10b6:510:1e9::6)
 by CY5PR12MB6405.namprd12.prod.outlook.com (2603:10b6:930:3e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.14; Wed, 23 Sep
 2026 01:56:21 +0000
Received: from PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109]) by PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109%6]) with mapi id 15.21.0451.014; Wed, 23 Sep 2026
 01:56:21 +0000
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
        "kernel@collabora.com" <kernel@collabora.com>,
        Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH 4/5] usb: dwc3: rockchip: support PHY reset notifications
Thread-Topic: [PATCH 4/5] usb: dwc3: rockchip: support PHY reset notifications
Thread-Index: AQHdRSVxWsV0viMGSES0d4yDSehnObbbcyaA
Date: Wed, 23 Sep 2026 01:56:20 +0000
Message-ID: <arMxuCdD2oiTFoS1@vbox>
References: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-0-763bb546824e@collabora.com>
 <20260915-b4-rockchip-dwc3-rockchip-glue-v1-4-763bb546824e@collabora.com>
In-Reply-To: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-4-763bb546824e@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB7486:EE_|CY5PR12MB6405:EE_
x-ms-office365-filtering-correlation-id: d2b16fbd-e291-49c6-ae12-08df1915dd46
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|23010399003|38070700021|6133799003|10067099003|11063799006|4143699003|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info: cAcsI+F5zfMPc1mBHREUYVqMSpokawJ6Z8KKFpy0D9ySC1r3CnNQXkPbvE9LcsxkPZUS99KoxBkFMcL3K3EkqBEJAe2/veOnUfqzheFSQMIBA9CfgDSGo1vHqNS4MdhWJF8g7cojBavgIvHH7lWsW5OhQSf2f2zcNPi+mHOjQzcQlkyhMx5S4MDxKd76qMaiWvaQK6kO0SSo1bZpvYKjtq0NGNyNDYwTRHkLiRcUkPqc/ZI1VuuATlO0c2+/4UOodnymkurDFGRrX9vyMptDM7nAj03Ju4lcoyHaBdQ2kCiriwLtMCFlKVZcW/qg3dteIrKuwABaxYCIjYtGld2gRelLul/Rf+FyUNuEsJtH48Xz3u8XAps85b/T3rGP+haVgsE39jzXfI9G6OJUKiLm9A87kcSxOunB0bzZfgsO9/UvPiW1nlWblr7+eBgCy80S8pbTCcDdrwpoiCtaFs5X60jBK2JoN7CGVkRuDxH2CoQ+Pjk1+VzPM9uZ024/r5dzcPlfxRhXoqfOB1Gvq5gAkvuArbe5pe8ByTd5JHv49JTtbQPopzF6vIr7ve9O6BQb+CrZssjjjUZ2+f88kcaQ87Qpn5usx++kCfs7gfc0MQJSMSIZmc6UZu8mNbhzdIq2j8E5wS186bHs+PqU51vKeRcQfll66O7kp3p0Q/wNp40ZgmoQlYecuIXYmIj6tYsuAC61Dglv6GNaLYVb/oUTNAcf+kyc/THtPE+Epqoyuh8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB7486.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(23010399003)(38070700021)(6133799003)(10067099003)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWJBSG9JdDhoUzFWK3JvanNHN05zMFl5UFEzS0Mvb3J2d3ZmbUpiVzJ3d3hH?=
 =?utf-8?B?azlEM05WeGZTTCtUMEFkaC9vcDgrQWd2aEpSL1FhL3B5YkZKdUlrWE0yOCt5?=
 =?utf-8?B?cWRhMlZJaUdiWENqOENaZUREalpIclVxellvOU16eXBHNUluVC9oMGRIcCtl?=
 =?utf-8?B?QXMvUE10Wkh5WjRNa0ZRWXQrNVJlYmJGWVJVT2RCQWh0ZXdRNlF2WEtWbHFo?=
 =?utf-8?B?clNpZXdqSnJMRTk3aFcyc1RkNGZSUlMwdWduam9HZGtaZGNoanlNd09OWnhl?=
 =?utf-8?B?VjZYQWc0Q25pZk1yVTNoa3M0NjdrVVVkZDl3bXlEYmMyUGYzWGgvWjFpampk?=
 =?utf-8?B?ZE5xcWNIbUtBYjVwOEFQVnQvTVdJU3dtOHllZmxaVUUvQmpGVktzbGVraWEw?=
 =?utf-8?B?VnBBZGttOVVNUm5COE5EQ29Kc3hmdkE0b1ZQTmtEUjM5TzIxbnBCRDZYbjVt?=
 =?utf-8?B?d3M4cWxRRHF1SXVwUXJmVmlrYjdqNHhwYTFzYWdWNUZUYXNMMGhnSTFuVWJP?=
 =?utf-8?B?b0RMNUFlNUNIUDVydjdpeHV6TWhDdHZ3V0MyeHQwVDJhLytLTUhGK0ZRRmp5?=
 =?utf-8?B?RVBlcFJvUnlEWjZxa3hWY3VVc0l2aDYzdHA2bUJRME81NUhhUGxEV2hOdVlp?=
 =?utf-8?B?Y05ZK3ZrUXF2VXpTMExJQmVKYWU0SkYzS3FnSUJtZjlCb3NHSVlxYVFLcEgv?=
 =?utf-8?B?ZFBGTjBaOXBSL2NMZ3NFaWVVaFgzOEZjVTAvdVVoWk5jR0drb0VDdFBySVYy?=
 =?utf-8?B?aVpIeTkwNVZsODlEUzJBKzVOaHNSMFdjOTJtZ0xJeW5Ed0VpS1Q5bFU0bzZl?=
 =?utf-8?B?VTRmbEorcWRQd0NUeG56R3A5d0NKdytRa0hUQk5ocVZ0YTFqT2QvRkZlT3o2?=
 =?utf-8?B?eFBKSWtQcnBKWVhxdGNUTDJoN0RZT0cxakFjTXpVS0EwOVB2NGlVcWdSVjI2?=
 =?utf-8?B?L2VHNUQxc3MraERLTFZVMXZQeTFRMW9QbHplK3pDSDRHeEdKTFIyZm91OGxI?=
 =?utf-8?B?SjlUZ0Rjdm12ZWxoSHY0WldMcTdyVzlIRnAxMnhtcXd1K08rWDZ3Zll6WlV1?=
 =?utf-8?B?ZjgyMGRVR0pXeVJtTUJsczhxb2RBSHFDb1AxVTV3ZUozSGNhd0JOZTZpVEZo?=
 =?utf-8?B?amZremcxbUZ3RGV4dHlBLzJTMmt6OEFZVVc3VTdHTzZYWG52ZEh6T1J4N0JZ?=
 =?utf-8?B?eFlPVE9jeFRmcFZHWE5BeW5xTjNaT3g2WkZiTTRNcUhXeDQzSGZnZjE5OWQ0?=
 =?utf-8?B?L3BERFhDQkpFc3J3bDZ5QXRVajFXQmwxZkVyeVUzSHBIVWlHTm9acDFTd2V4?=
 =?utf-8?B?RmhDbXZPOEtxVUZkU0ZKK1RRSGNjRGRYR1RwbGhsN01kWUh1WmlTR3BLRHY3?=
 =?utf-8?B?ZzZXWjRyMjY1cExrNGtua1FDd3hadmJuTFpCdVFBWjNwQzlMeFBYV3NXWjFY?=
 =?utf-8?B?SmZlVktKVDF5N1YwRG05U3YvTXhURGFDdFRlaExuUEhmV1kydHBWRS9ncW9T?=
 =?utf-8?B?TjRCUldncCtJSHAzRFVvREpMMW1OOFlLcVlVVElhbllwTkpUTGNYbElUWTJa?=
 =?utf-8?B?ZmVQbTlVSEVYQmZOeCtIYm1NSU5VQVk5dkwvVVZpcE9TMUZIZjlJMllaMGhQ?=
 =?utf-8?B?YTdzc1lQV290UnVzYkwrUFZRQlE3SFlMN3d6TDBtd24wWHU1azQzM3NERDdZ?=
 =?utf-8?B?V3ppaGhSK1pSUmprNzZLYWNWT1NUK0w4aTBVTnFEcFB1M2pFZXJSVm9RNkhz?=
 =?utf-8?B?YUJjT2dIWUlnSXRnTy9EbjVreVhORHFpeDlYVXBhekFHOXBpcmJ4R251VVZx?=
 =?utf-8?B?czVHdHhCNnVSOWlteTlWQ2VPaXZ1amV3VUloRzRhYmFMTzVhUC9za280MTkv?=
 =?utf-8?B?YUlnTFl0ZldrMjZybnpCdUM4V3gzUEFOVkNER1pJUmpsUU9OK0FwN1V3aDJ2?=
 =?utf-8?B?OUQ4TXYvSGliZTNRbTFMOXhqR1d2dnhvTzcvQVNyQkUyZDRzaFBuMVNnUHdk?=
 =?utf-8?B?eU43Tk45T3NjdkhtSFZ0VHNUU2ZyMmpEMkYxT2R4ajVzWVNEY2pDTzNFMVB2?=
 =?utf-8?B?QUphMXNtYkdMcHJXM2hvTk9DK0Qxdm12WE9hU0NsS0dhV3YwbnQzcldpS3d0?=
 =?utf-8?B?VnVSaTBUTHd0MWRGSHo3RTRmZk1vaGpFazRmLzFlUnU3cjhldTk2VmFVNGtK?=
 =?utf-8?B?eFUybEs0ZTA2dEticWVOK2VoWWZLOTZHOTFqUjJBMVczVGlDOXVHMUtldkhK?=
 =?utf-8?B?dUMxbHNLN3lacUFSc0tmNDVFZC84QlhOdzh1L2d4d2ltWFphNFRhSmlNNlZp?=
 =?utf-8?B?RTQwR0QvZVcwSWlKQkhzRkZIdDNSYW83NThUbzdQejZHRHl5TzJRUT09?=
Content-ID: <D37E4B4E5CB76847915B1C88718CFA77@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 1K6PB4BonT5uOx7Z7EFk8ubIEVbKqgsOSKoDL3Iwz+HC1f2453IsdeaF3yxjBXAH+YOIRhU/4xWDuchycTkFUvhpPbLVhhO79eG1YjDaU1Ebf30LaII4pQbusThXClZzP2VmtT4ha3G3Q755OMAzVwA2sF6wY7YsN71CM5OU4AQqf6c3gZbYUceVXv+GZkchfPrXLxwBGRAjb0C9LGbNVIpL1zt1f0n2rUOMtlUKSFmuLz2CiH1iTfH3msXfLj2wi0oAboicm5ZFTh0bBO8eQDTmO7T4vOrx4aSOTc5wXP0MinKtOuko1W8iAnUanaqjZC5HI3LGwtnGSVInJI7n5A==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Osa8EsVuOLhrVGUIN8NDl8G4wlbEfKAbfIfh0kx9kPiDcLkHwLMtLiNqnJdycplYoQeZECzzTN1vjt5pNlkqeuUXGOfev40MlEgm/LU8zG4Z8pXz5Y38wXJtlIwtwiTM+s4ek7N+oHISGt96wdeG9R4nmIVRJEzUbWx6eZUWMYZMCs6n/pWzoO71eXvAm6zqJtzcsIJ8vgZTmzFkT7CDzSqvicmzWqVsJrsrLxn0Snfy/QiyHLsvZ7xxX1E8Vd761eOgOCLUDK6saMCHi1QmdjeXZ6QNZiPBeu2fqGU2PXw3I21Cr9YQfgv2hMrWxrL7Vs4fCZLKSc68t4zIYqkJ9nJo0L37UwnFUh6Dtw9fsvyhySJXbq2FzM+6iWG2qtuH4sS7QQI+93KfOkLXTxszykNYkWR9rJdZCKO96xrjLnup6/OBn00cLtMPbznXNdmzZQ26GYsGyz14iaxkeN+ljLhD2QFaokGwHLCLKTrUIcKunNscLpZx7ew/AwyeQzrP92+B7jSOIpoqJ48G/RE9jFmdCgHqf/ycNsvv93UOoK5v0IchpAa4LFcLj4O/GGr9pmowjV8WhbzXpc5pZ9uwsocLUSAq46AstwtVgjBlwzft6rX8DbO55iAFxFPRyJvum+fr+5B3pqydDovF+OyEew==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2b16fbd-e291-49c6-ae12-08df1915dd46
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2026 01:56:20.6863
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fd1Nb1KNRZWgpkyp9Luf7pvRXCNynLpivT7nrlosQ3T5qwau1VOxR4kyNWF5mNBReZcDAl0wM65bFV5LJWJ8NQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6405
X-Proofpoint-ORIG-GUID: KU6R-QFz4yj8PAiG5Eve-0Pn_xwyQ_ph
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDAwNyBTYWx0ZWRfX/u8WULk6vwIY
 JAOV+D5jICFK6rqmosej27fe8kcHAcTzuPa8YuAtXA2+f2OeD06b9tmpKl/KoXaadFSz9J7RJEm
 U5c8ZRj9VSe/0olN6t5PDyvbWKkv7cSB/N3K7TyQVdYf1gjznlFOQTIKNVl4RkQgPuBu7znwQ1K
 xcZsQHgiiRJoBq84d6Vozc+DieBCHJNbQUpPnZUG5ou8o/N9N5QustbjlJOeUGOlUhicViVz20c
 syPhK0uSaUKJnoD5weixiqqMnVMbRgjzJASrv9bm+/hXjMc854W225qiZ1hzpyIfQ9SN8tGsPNN
 gyngrl56936Qi52qrOMXdQUwYo/uKLGlZL1rGgaQVhr4CfCsi5yXvGd1QLNulLZwPKEeDVL5BgC
 ZkbSPb1ghGlHson9yF/5Z7S64MwTIGzoKgz8K8Ph+U/+99s580hpXel8mEP1TPqxIU8SgPs8xyJ
 +sOCAyFmoYzzP0WKv1g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDAwNyBTYWx0ZWRfXyW8c8I3E2R44
 pzqRGEtkekAjkv5mGW/kALwE8mButduXlcXM9zKEAacIIeDn18yYC7j2sSI4jPk8bnw0FqZ9t+Q
 pgLdRuhhZv1JoFWyIXx5nZ6t0fTn9l0=
X-Proofpoint-GUID: KU6R-QFz4yj8PAiG5Eve-0Pn_xwyQ_ph
X-Authority-Analysis: v=2.4 cv=Mb/5KJ/f c=1 sm=1 tr=0 ts=6ab331d1 cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=-4-sGo8i1FcW4KD7_GeR:22
 a=pGLkceISAAAA:8 a=QX4gbG5DAAAA:8 a=jIQo8A4GAAAA:8 a=W2M8NIFbcosXO9OoIpIA:9
 a=QEXdDO2ut3YA:10 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-22_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 adultscore=0 malwarescore=0 suspectscore=0 classifier=typeunknown authscore=0
 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2609040000 definitions=main-2609230007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_185641_568066_7B7A3EA9 
X-CRM114-Status: UNSURE (   9.24  )
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
> On recent Rockchip platforms (at least RK3588 & RK3576), DWC3 IP is used
> with a USBDP PHY providing USB3 and DP. This PHY needs to be reset when
> the mode changes, which may happen when plugging in different USB-C
> devices.
> 
> If the USBDP PHY resets with the DWC3 IP running, its internal state
> corrupts resulting in the USBDP PHY not being able to lock some PLL
> clocks, which effectively renders USB3 unusable.
> 
> To fix the issue this adds handling for the new PHY framework reset
> notifications, which will assert PHYSOFTRST before the actual PHY
> is disabled and will deassert it once the PHY returns.
> 
> Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/usb/dwc3/dwc3-rockchip.c | 127 ++++++++++++++++++++++++++++++++++++++-
>  drivers/usb/dwc3/trace.c         |   3 +
>  2 files changed, 129 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc3/dwc3-rockchip.c b/drivers/usb/dwc3/dwc3-rockchip.c
> index 62f2a03b08a2..7bdd6e2eb22d 100644
> --- a/drivers/usb/dwc3/dwc3-rockchip.c
> +++ b/drivers/usb/dwc3/dwc3-rockchip.c
> @@ -2,11 +2,136 @@
>  /* Copyright (c) 2026, Collabora Ltd. */
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
> +#include <linux/phy/phy.h>
>  #include <linux/pm_runtime.h>
>  #include "glue.h"
> +#include "io.h"
> +
> +struct dwc3_rockchip;
> +
> +/**
> + * struct dwc3_rk_phy_nb - wrapper for PHY notifier block
> + * @nb: notifier block
> + * @dwc: back-pointer to the DWC3 controller
> + * @port_index: USB3 port index this notifier is registered for
> + */
> +struct dwc3_rk_phy_nb {
> +	struct notifier_block	nb;
> +	struct dwc3_rockchip	*dwc_rk;
> +	u8			port_index;
> +};
>  
>  struct dwc3_rockchip {
>  	struct dwc3		dwc;
> +	struct dwc3_rk_phy_nb	usb3_phy_nb[DWC3_USB3_MAX_PORTS];
> +	u8			phy_reset_active;
> +};
> +
> +static int dwc3_usb3_phy_notify(struct notifier_block *nb,
> +				unsigned long action, void *data)
> +{
> +	struct dwc3_rk_phy_nb *pnb = container_of(nb, struct dwc3_rk_phy_nb, nb);
> +	struct dwc3_rockchip *dwc_rk = pnb->dwc_rk;
> +	struct dwc3 *dwc = &dwc_rk->dwc;
> +	int port = pnb->port_index;
> +	unsigned long flags;
> +	u32 reg;
> +	int ret;
> +
> +	switch (action) {
> +	case PHY_NOTIFY_PRE_RESET:
> +		/*
> +		 * If already suspended, the resume path will reinit GUSB3PIPECTL
> +		 * via dwc3_core_init(). A forced resume is not possible as that
> +		 * would call phy_init() resulting in a deadlock. Due to the
> +		 * phy_init() in the resume path there is also no need to block
> +		 * async RPM resume on our side, since the PHY synchronizes it
> +		 * for us.
> +		 *
> +		 * pm_runtime_get_if_active() returns 0 when suspended (skip),
> +		 * 1 when active (ref held), or -EINVAL when PM is disabled
> +		 * (device always active). In the -EINVAL case PM ref counting
> +		 * is a no-op, so the unconditional put in POST_RESET is safe.
> +		 */
> +		ret = pm_runtime_get_if_active(dwc->dev);
> +		if (!ret)
> +			return NOTIFY_OK;
> +
> +		/*
> +		 * Assert USB3 PHY soft reset within DWC3 before the external
> +		 * PHY resets. This disconnects the PIPE interface, preventing
> +		 * the DWC3 from interfering with PHY reinitialization and
> +		 * avoiding LCPLL lock failures.
> +		 */
> +		spin_lock_irqsave(&dwc->lock, flags);
> +		dwc_rk->phy_reset_active |= BIT(port);
> +		reg = dwc3_readl(dwc, DWC3_GUSB3PIPECTL(port));
> +		reg |= DWC3_GUSB3PIPECTL_PHYSOFTRST;
> +		dwc3_writel(dwc, DWC3_GUSB3PIPECTL(port), reg);
> +		spin_unlock_irqrestore(&dwc->lock, flags);
> +		break;
> +
> +	case PHY_NOTIFY_POST_RESET:
> +		spin_lock_irqsave(&dwc->lock, flags);
> +		if (!(dwc_rk->phy_reset_active & BIT(port))) {
> +			spin_unlock_irqrestore(&dwc->lock, flags);
> +			return NOTIFY_OK;
> +		}
> +
> +		dwc_rk->phy_reset_active &= ~BIT(port);
> +
> +		/*
> +		 * Deassert PHY soft reset to reconnect the PIPE interface
> +		 * after PHY reinitialization.
> +		 */
> +		reg = dwc3_readl(dwc, DWC3_GUSB3PIPECTL(port));
> +		reg &= ~DWC3_GUSB3PIPECTL_PHYSOFTRST;
> +		dwc3_writel(dwc, DWC3_GUSB3PIPECTL(port), reg);
> +		spin_unlock_irqrestore(&dwc->lock, flags);
> +
> +		pm_runtime_put_autosuspend(dwc->dev);
> +		break;
> +	}
> +
> +	return NOTIFY_OK;
> +}
> +
> +static void dwc3_rk_phy_unregister_notifiers(void *data)
> +{
> +	struct dwc3_rockchip *dwc_rk = data;
> +	struct dwc3 *dwc = &dwc_rk->dwc;
> +	int i;
> +
> +	for (i = 0; i < dwc->num_usb3_ports; i++)
> +		phy_unregister_notifier(dwc->usb3_generic_phy[i],
> +					&dwc_rk->usb3_phy_nb[i].nb);
> +
> +	/* Release any PM references from in-flight resets */
> +	for (i = 0; i < dwc->num_usb3_ports; i++) {
> +		if (dwc_rk->phy_reset_active & BIT(i))
> +			pm_runtime_put_autosuspend(dwc->dev);
> +	}
> +	dwc_rk->phy_reset_active = 0;
> +}
> +
> +static int dwc3_rk_phy_register_notifiers(struct dwc3 *dwc)
> +{
> +	struct dwc3_rockchip *dwc_rk = container_of(dwc, struct dwc3_rockchip, dwc);
> +	int i;
> +
> +	for (i = 0; i < dwc->num_usb3_ports; i++) {
> +		dwc_rk->usb3_phy_nb[i].nb.notifier_call = dwc3_usb3_phy_notify;
> +		dwc_rk->usb3_phy_nb[i].dwc_rk = dwc_rk;
> +		dwc_rk->usb3_phy_nb[i].port_index = i;
> +		phy_register_notifier(dwc->usb3_generic_phy[i],
> +				      &dwc_rk->usb3_phy_nb[i].nb);
> +	}
> +
> +	return devm_add_action_or_reset(dwc->dev, dwc3_rk_phy_unregister_notifiers, dwc_rk);
> +}
> +
> +static struct dwc3_glue_ops dwc3_rockchip_glue_ops = {
> +	.post_phy_registration = dwc3_rk_phy_register_notifiers,
>  };
>  
>  static int dwc3_rockchip_probe(struct platform_device *pdev)
> @@ -26,7 +151,7 @@ static int dwc3_rockchip_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	dwc_rk->dwc.dev = &pdev->dev;
> -	dwc_rk->dwc.glue_ops = NULL;
> +	dwc_rk->dwc.glue_ops = &dwc3_rockchip_glue_ops;
>  
>  	probe_data.dwc = &dwc_rk->dwc;
>  	probe_data.res = res;
> diff --git a/drivers/usb/dwc3/trace.c b/drivers/usb/dwc3/trace.c
> index 088995885678..8c4e2a7b142e 100644
> --- a/drivers/usb/dwc3/trace.c
> +++ b/drivers/usb/dwc3/trace.c
> @@ -9,3 +9,6 @@
>  
>  #define CREATE_TRACE_POINTS
>  #include "trace.h"
> +
> +EXPORT_TRACEPOINT_SYMBOL_GPL(dwc3_readl);
> +EXPORT_TRACEPOINT_SYMBOL_GPL(dwc3_writel);
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
