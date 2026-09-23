Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0E36C98302
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 01:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EhRQ9m63CbGFA49C+RyjKsFFisjpdMBbVXngVBkS5M=; b=Kv1jYzmK8N3/UF
	0IvUmp6YEz+uDUuJV1iniNnTx6oBxZ4EqW13PZcP4P2wL+4gqFMWQiQs54pnpzzQ3CuHVbsmxumVK
	q7T8vKycIg3zUB3JPBvEWdaIVrmqSpuR2jbfPwrRhUbZVkxvhjCmwbX1e2tGozHvJh0K0xU5sH5Qt
	DcdXMw0cACKIOY1Zom/AbPYNIfGcODT3RKHOi3+UKJl7ofHpU3abEUAYJ/GKlyW//F9wtp//FZABc
	Za/NZCKZBLEANaGvSHoGtNTz/KWzlXmoOB9mPn9IbwcWuUAE9E1jX7l7OdgRY2dxd9bOYeSsbISeB
	koZrrtX4NWENSkbgCGsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9BpX-00000006r1H-3whO;
	Wed, 23 Sep 2026 01:31:27 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9BpW-00000006r0I-05tA;
	Wed, 23 Sep 2026 01:31:27 +0000
Received: from pps.filterd (m0098572.ppops.net [127.0.0.1])
	by mx0b-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68MK8sPj2631264;
	Tue, 22 Sep 2026 18:31:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=PeSnQ/XStSMo8muwUvfZhdk9lpGFDj3sQwiMBuuocxg=; b=
	vvCK6WLP+iHkhmDRJg3pMKKpIqlbDoSuQjAefIfyCGWQ3rnBEE+bPqx2Hh12M9Cr
	lSLZXPElE+4i8ZKfc9BvHn6vXf/Nh25ohID02Rky6Ddb7I5NWo+D0EtS63JPOUfb
	Jt3p8jRULPylo6RXBkmiy8hQ/ZXxw2NB3OCe/UIA/zhk0T9LrXqXQCTy3KI218J2
	RP8whfShKyQ2xhK1JS6XxNCl9tQrIccJSceyS9T8Z7AmMMAGnOIs50l8eUNHOvX6
	wclW2kSsm7AYb+lgS6TNRl23lwX1Db58gLCgM5Hk/CeHHJhhl6SYinXGwe+AYtLU
	7CV1x7wtlZH9Qb0/G6ow0g==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0b-00230701.pphosted.com (PPS) with ESMTPS id 4gur5dpkn2-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 22 Sep 2026 18:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1790127074; bh=PeSnQ/XStSMo8muwUvfZhdk9lpGFDj3sQwiMBuuocxg=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=FA6vFwK8+/VXvJl5WM6e4zHBx2j5HzPRtcrygTRCmhOedf/x0xOFSZbwF8GH/RYgq
	 xTCDKOQ3yWefNxWR0wUZGl2uY4GAmjaPY8FzD1WJP1UrJ064Fepy1/Uy+8P8FRWKiL
	 BAi+A8Rj7RpM9O7QuEyHuVZgKtQ+7OHHLswP1wLZaJTO/AONtNhIm8mAwPr5iPnFz9
	 JHGvlYIZ4BCg+VPXsamOfk56yArPoGLdVb+2cCm76yPiaGIjqmegdy7IZUSRcblZLu
	 JHUxxYVMU58tcS6DkflLVbD3GE1Mx9tWr8OgplB5ZNgoDiggF/csosWimVKhaUPROq
	 OnfqHKXaN5Icw==
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com [10.205.2.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 412DB401B7;
	Wed, 23 Sep 2026 01:31:12 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com [10.4.161.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 743F2A0266;
	Wed, 23 Sep 2026 01:31:11 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=pr2vS7N8;
	dkim-atps=neutral
Received: from PH0PR07CU006.outbound.protection.outlook.com (mail-ph0pr07cu00600.outbound.protection.outlook.com [40.93.23.88])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 2C8044021F;
	Wed, 23 Sep 2026 01:31:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g/vpH29BUoV+iLSrmGHYimu/OHaEW8AVrT1Rm3mCMPGQh8tvJqQ48eMhlCT+Ull3o/6GUVctAZDzwKLcY/7RKcZxvEAb6MnMWtUqoTRI/rkZBjDSvI65miwtJfuPtQG64Sll8tRdoTCregMbMtZb4Nbuwiri/wyQWG7rDJe39i7GY6ASP+4dVoYXVwfBMGn7K4wU/+sxD7+EwzAf1Axu98RNSXpVbUw5xoiWuAnYc5PbH8mRigEkAFNfcr5ztJ2pLyzugNiykmpMB86P9RcyLo37bBoOBC8zsIBqns2FM9lbT8hHIFIVgLSTGzDKT+Lch85B7kb573FwGrjSJJFH/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PeSnQ/XStSMo8muwUvfZhdk9lpGFDj3sQwiMBuuocxg=;
 b=XhTOuZgBSotMJ16k8BwvUdh1XzeY1kJ5C1PKc81YMh5nggJWWB3jP529SkSLyj1fG13IZCxMTfO6J11zJ+npjLipA3T7tEywUMwuskkrf7QUgySIxYUZorESN097ypuzYzOW3xFbWGyZ+JjpI8e+4hDCXvaJ47b3977IFEiCsWIgqcwg8Wvt+KjXLW/YgxaGsE2MGe1JsImm0T2s5X2h+z/7PQIP6diSNKX8LQId5greVizyHYSwEHofso303FOJBDBZUO7zAhYhXCSlKaWZca7zBEmgkXkLvkXbj4R1vWwUTvJGWOsYHLG3nrQsunn3VNzZxfK3NW35bw9OMaRKcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PeSnQ/XStSMo8muwUvfZhdk9lpGFDj3sQwiMBuuocxg=;
 b=pr2vS7N8+zkRZ+wxUGE2Ym80vKUUdiZPenRoLUqplcuz5ygz+Akv+ICIVNL5Tdl0brogBaxvT98BCrkeCCmCV0+TMzfyQrFGnZRih+EEpdT0WmogDsIk/11BrDEHoz8Dhfby3ciAqObwDkU2j5GVXEVXyIBlQVHguncUl0EzBX0=
Received: from SJ0PR12MB7473.namprd12.prod.outlook.com (2603:10b6:a03:48d::8)
 by MN2PR12MB4486.namprd12.prod.outlook.com (2603:10b6:208:263::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.14; Wed, 23 Sep
 2026 01:31:04 +0000
Received: from SJ0PR12MB7473.namprd12.prod.outlook.com
 ([fe80::fd38:a665:ba4:95d7]) by SJ0PR12MB7473.namprd12.prod.outlook.com
 ([fe80::fd38:a665:ba4:95d7%6]) with mapi id 15.21.0451.014; Wed, 23 Sep 2026
 01:31:04 +0000
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
Subject: Re: [PATCH 2/5] usb: dwc3: rockchip: introduce glue driver
Thread-Topic: [PATCH 2/5] usb: dwc3: rockchip: introduce glue driver
Thread-Index: AQHdRSWDTpPqNY8pLEunPE8+S+2sgbbbbBmA
Date: Wed, 23 Sep 2026 01:31:03 +0000
Message-ID: <arMkheCePz6PD8NZ@vbox>
References: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-0-763bb546824e@collabora.com>
 <20260915-b4-rockchip-dwc3-rockchip-glue-v1-2-763bb546824e@collabora.com>
In-Reply-To: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-2-763bb546824e@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR12MB7473:EE_|MN2PR12MB4486:EE_
x-ms-office365-filtering-correlation-id: 8a813f1b-23e3-4128-cd8f-08df19125537
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|23010399003|1800799024|376014|7416014|38070700021|10067099003|11063799006|56012099006|4143699003|18002099003|22082099003;
x-microsoft-antispam-message-info: eqK/pC0tYI/WIshYlB1I9m4n7+v/36ZkI/10XNspxV+eKfrQ+sBJsPIQEW7mRXd/NTLDnnaYawtewSnjiFoct6E5huervXrAR5ws4v7IcP8seJMg4ZdHrCcwElXhiQrnycB94XO82gkXR3c0pAxlZodhqcLzyktEWhDB5b96JnA+Dhm7W1BcY0g9SZBxVOGmtmFzbBpGckRv286tk4mtEY8Hu5omjXFAqnqjn0ecJgwdLLkxpEtLBB7KTIHXOxaJ9am2SQrCblUMdi7bXmxrUiFPUGfU6eoVzVYFx0URAjXuyVqvEbv8J4TB3TS7yAGAySmqcQl22tQnkvczl9CRkjO9oWTJN3V1O9aYJ1v/3AAxnykRxmQnmznYrnH8SWK/8Tahqix3ondzphNR+CpeSlLc+PhjW0Cxf1spw+nqLcDOod9127CNN/prL+FUzZyIBjakbvVvDiKtNYpRysDf73fD6X1BwauRhHnHsvSN6KuYoqDU7Zah9Ad4oTSGjli1wVwvgogTmAiGN0Jd3U2Hp+V8Zh8IBzq+bY4Im2Ivxn08kzEn+uIE6aGcfdc63drubH6BHFEjQTJKUZzEKCRg8MwNv/w39x275YEOQNSWZV/YrgcG1dBh5fUMtQleLptd6BjXpdLhpMIpAOjUEepgeIGs9xgJZn3P6CKFdYquKJjqztLT9ihngwnUTztA01jHA34ghwKFV4QQaiuUlFPaM5cwZu7eDbeNxrq1HBZM5SM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB7473.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(7416014)(38070700021)(10067099003)(11063799006)(56012099006)(4143699003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFlDWC9KQ1FKa2tiZ3V0RHV1SjJaRHE5d1BxajQxRkxPQmpXc24vaVFnM2hB?=
 =?utf-8?B?NEIwdWhpSklBZUhsNnEvVUFaZjZhSk5RRi9jMXV6by9xMDV1T0xHUG1jbkpS?=
 =?utf-8?B?MnpQQ2doUXN4SFhRL2VoU2RNZVAydis4Zi96RUhuQTltSm1ZbUNRRXAweEpS?=
 =?utf-8?B?WGFGSmdBMDBtdVczaHhQdmROM2F4Vkx1NFQ3eWtpRDZ1QUcrbGVMck9hY1lx?=
 =?utf-8?B?V1AzNWNCblI4cjZqcHI1RFZKbW04aGc2SENpalJQQ3Z5VFZaOEdYbTA3dFAy?=
 =?utf-8?B?ZEx6OFB3dC8rYVMzYVZ3dTIyMldFam1CTUhGSFdXZ2hVbmQxSXJxNk5QZG1W?=
 =?utf-8?B?ZGxOQzQ4ZE4wWS9sYUJCY1FiTnVPNkxrYWxISjYzaGNFd1FXQnZUWEJVb1gr?=
 =?utf-8?B?ZFpURGlQbm5INVpHZU9TWTlwUDV1SUQ4d2dRRjREdGZkL0xzV2lDVldRZXZ3?=
 =?utf-8?B?bVNnWXVuWFp3UFNSbHlUMlN1OVloaXRHZFVMdFZEV25oV1BFZ0lKekhsYmpt?=
 =?utf-8?B?V1Q2VHRJSHNSMEdmRHJSdVdXMGNCaFo5NjM1NndlbjdrSktPMmxsQ3hPaEFH?=
 =?utf-8?B?SXYyQWJ0RmhKa0poVEIxeklZYXl1OGdqMk1ENHpoRUFvaFVvak5GZnpGMlB3?=
 =?utf-8?B?aXN4K1BSUm5XNmZ2RE1hQzlpUmNRZXBBUU1ZdWluQ29MSnVWVXZ6cGpURGpx?=
 =?utf-8?B?T2xsRGdydG9UcHd6RE9GZXVvZTJNUG5tNEJOQVNnSjZCWC9jRFViS2NUNzhp?=
 =?utf-8?B?YUxKOHA3cHFXOGZCWTJxV3dMMVduUitqdDBDbzQ0NmRsWGQxQ2RuQmRNYXVC?=
 =?utf-8?B?N2NCSG5TUU1ucWg5OFJYdnQ2SlNWUUROMFM0Wm1mSkhRTlFqZnpjTW9nMFJY?=
 =?utf-8?B?cWwrZCsrek5WVlVROVBMdnNrWWpUc2xZd2lJNi9qSDhaT2wwVk5qM1FuQ0Zi?=
 =?utf-8?B?aVV2YlJBQWRJR0JTNGozRm9ndXhZYllxbTIrSUtsZzVySXZ0SDcwa2g4d3BI?=
 =?utf-8?B?T2ZWR0VXTHdXcTNCVDAwK0JCK3E2dHRvNlEwRDZDREJjYlJScWFyMzZSTU00?=
 =?utf-8?B?WUFHemtDSFRuY2ZnS00wUWltSFN4UmNjaWREZVJJY0NtWDF1eGZUMjRzWUVx?=
 =?utf-8?B?RitoUU1ZWGtreUhDK3BSVDJWcVBUeFR2eFE0YkdrNW03NFBLaXkyeHVLSlBZ?=
 =?utf-8?B?V0R3SHExdkxzVGJvNU90enFJVHFjR252ZEpvMWcyLzFNYUlRRVQzc2FPMzNL?=
 =?utf-8?B?ZGRiUXMvdmQyS2ZxYVpDdW11L2s2UFRDMWlnbXhrSjdsQzErWm1HYll4bnJ5?=
 =?utf-8?B?QnFIWG5wejMwYjNrN29ZVFRuT2pjSkN5bnFaK0R3U3RleDA1RWZOS3pRZ3VB?=
 =?utf-8?B?L0JzenVTelg2WVBvRkFRZVFHZDFXZkhsaldhZjBUeUo2ekxISTlNTmZzWWJU?=
 =?utf-8?B?akRMamNXc2p6cEpXTS9SZ2UwNWVOTFFpZzVLVFlYc3lKSVUyZHR1WXo5SnpJ?=
 =?utf-8?B?T2FzNTE4MmRERlY4b0JESVloN1lTRjZYTXM5a0hXRHZmZUVva3FDaDY1dVA4?=
 =?utf-8?B?YStVQ3YxU1Q1R1NlQ3BPcTVDVUZTWUxyR0J4VmdwU2ZLOVVIVFRza1dpbHo0?=
 =?utf-8?B?eDNKdTNrenZaMTJjcTZsamo0Qm91VHZ6YW5mV1k2Y2l6dzNnYWswTDhmR0RU?=
 =?utf-8?B?eUI5U3RjdUdheGMwL2VRMlpoVHNWOEZUZnlGTU0zWXlvYi9YY1lIL0g0SjBX?=
 =?utf-8?B?cGRBcWlOSEVONmpxTXozMjdWSU1idklqeVVOUkNOa0Z2YnJWb1g2KytHSm9M?=
 =?utf-8?B?NlRPU1lEQkVxeERPdjRxWGlUOUFWcjMrdVlFQlh3Y3JuU0R5SUZOT0VoZ21C?=
 =?utf-8?B?Qk1nNi9VR1hOOWR5dmZYUDRINUVIM0VKQ1ZmRnpvWGtULzVtbzFOM2hhdkdS?=
 =?utf-8?B?Y1ZrcmRDdi8rWEt3dVdLdHY1M1JhWFN2anRnNVJqYVA4d3dPVmdQblNDakov?=
 =?utf-8?B?U1hkZkhTOFNqUGovSm96eDZNQXorNlAwekE3djJOUWZWbGk1dUFxODRYN0I0?=
 =?utf-8?B?VzR5Sm1kUFpmdUZrU0dEYWtUamlQWTNHQ3RsYzRTeC9LU2JvZTVnU2ZQckwx?=
 =?utf-8?B?N3IwbDRnbGZWdmVBdlZUZUt5RFl0cG84Ym5LUmFVNGZ1UlhqL2xoNHRTK1Ra?=
 =?utf-8?B?bzFpMDVzdTBTSmlOeTBXSEZ3Mkt0WVJWU2MzcUgzS2JqU2xqWnhBd2pLK3E0?=
 =?utf-8?B?VE43amJQTE9EV1BPWHBZaklaSVR4VnJpUlUwVTBnK2FueTEwWmlPT3FvZSs4?=
 =?utf-8?B?RnFTMkFkWmk4cGNzcnliK3FDcExwcTMvbnpGVHFHdC9xb2dnSG5XZz09?=
Content-ID: <4A58237B6C2D424EB4E8075BF87612C5@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: wM6IPF1Nuy9RiQvr0jV1YL4NZUWId2c8X084tz2SHfJ3EqlwHEef0BhMGMdcWIvyIpFBlaVLtoDTAblOXYMsbioIf17e8fcRz3jDl1xmZV3SXiSoPqa8kdbkvzLaLD1XlkCDkCXmAH1usKrgBdTOeCAh9v0+A4JeEEXTzRqYkx4h7QnHfdf8uirZQZCvBGplOnWJ3RNxcpUouNH8JvNxLH/jecU/42DBMRo14nk8lcF+seHD6YcW3Mfu7hDMNa8yM/F+Oi8GqkrMbBq5vL9fdagS2WTWvYUnZED4r2oi0P+yZ4Q1nIWP2Y0K08LjBmje/VEQxxqyRJttFtESXZ1ivA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: nP4juBSnAZqjgsJbVPjJht4rCG3518YYng1BCnnH1ve6AylOZgvikhWOA38nUIrGNb2WXULrijomeuGK77NrrrFD3GH0IV7IFPx+E4S+JQwy1N32CvlZYCAs/pXiHpEjMMaRJv9OFVvSuPZ0bhQXHZXMaJuVn6QrjcR7psV1AyG6poCE+mSr5o20Une+nTSEQtlGIp9SIb7U9r0/wc1jdh2mgGA585PG30/gMhDy3VLTDkIoeUu7Q4J6IWBsuRv2EAYLm+EV/5WAeRVzMAl/VHrVNDRG0XFp6kj7SNl2fjBKrwqb2AXR3ZqTRWjD2y00KFPMwk+s9vVlnLREi9ZaNeu6Kbfxdbz0vFzZfafdNMQYVRJYqqCuLKY+uTDrD3f0JDc/3eggW2AM/MVgoza765qVO+aBKf7cC9xtqsIk4474I2HlrNJ4Qh035Byf1WZdWbofNoXIeAZr65kJ+JFI9x/DdqXMqbC6bmNulQPAPQKYCta+gm5ygMt8jsPyf1Ay/9Z1sZpaHICHr7zhwsTt33L0GrpXuHS0LpPXPX9uhC28A4WUgntDpWkKVUfTaNKhhaAoOOPudcPgXpiuvflqgEKAzsBbo5+jItRa9A61GlG5egnifGlcwDDmiBeeqQqU753EBtHR2+SUeKSl3K7f6Q==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB7473.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a813f1b-23e3-4128-cd8f-08df19125537
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2026 01:31:03.9115
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QPJpCcyjEudyAzoH2jTXEIJO8ldjrCizpLis7HbJfiQRpc9Fek2BQOBf1yPusYVI6Zh39Tnt1AtHZHJnTsWAWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4486
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDAwNSBTYWx0ZWRfX+p5ht1IBac1d
 HOo1KKa29Go5MOsOs2oIk2fwDxQbVk+6FISEkFmHv2CqJtrSKkHRRU5o9IKEb5S+07ML7yrZXfK
 NNqL9Oz+KVHE0hjuK+HKxPhY7Uk77vMldmF9MFziF967V8aTtp5bcRKfc3NEL8nzH/SMPI8tnGi
 2hOMUOLj9aDkL/dY9iSWsbMTGIFkfISDTOJkfo3LgeUN7yM7+pQOJ7iTYxfuFdA368sCqZ7+VbZ
 gA+b4kMvlX0qPwdTRvGom1EYntdMg/jydbBEYFOQ5egcGVncvNFOGweaRS5sGuFhhMPKvzrse3R
 8sBOyHfoOCs25a4WUVjzAQaB/mNw2lFq1Qrl4frL6nOywjUXDut2xWa1yfAWRFuyqkX86IcPZS0
 tQuPvswQUm6KTZxkF05iZwDBQJcRqWDS7F4feXx871f+tyjMmauA2tN0/lfiNr/Z24Clx7lgWOy
 vPoDZxtG56RMMhLDJyQ==
X-Proofpoint-ORIG-GUID: BzrziqaJcbGp0GlFID7HPD5iOqIl0LHz
X-Authority-Analysis: v=2.4 cv=eN2GH3p1 c=1 sm=1 tr=0 ts=6ab32be3 cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=jSPayVjLy6xbsuKauFBc:22
 a=pGLkceISAAAA:8 a=QX4gbG5DAAAA:8 a=DajJVKH_m_VvB93vrV8A:9 a=QEXdDO2ut3YA:10
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDAwNSBTYWx0ZWRfX5uJzse/dzXsw
 MAhJdQIuNI2jHaHYieVtNXHvlN+CnyZ2jLgHIGTnC8dtuMb3EoUNlXo3mHmhbOjLPSvmjTHj/56
 LQTA+FJob2SwqK5mt/FtbC2IThz+GLM=
X-Proofpoint-GUID: BzrziqaJcbGp0GlFID7HPD5iOqIl0LHz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-22_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 spamscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 impostorscore=0 classifier=typeunknown authscore=0
 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2609040000 definitions=main-2609230005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_183126_210340_A2762DA6 
X-CRM114-Status: UNSURE (   9.48  )
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
> Introduce Rockchip specific glue code for the Synopsys DWC3 USB driver.
> For now this handles things identical to the default glue.
> 
> Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/usb/dwc3/Kconfig         |  11 ++++
>  drivers/usb/dwc3/Makefile        |   1 +
>  drivers/usb/dwc3/core.c          |  15 ++++++
>  drivers/usb/dwc3/dwc3-rockchip.c | 106 +++++++++++++++++++++++++++++++++++++++
>  4 files changed, 133 insertions(+)
> 

<...>

>  
> +/*
> + * List of compatibles, which have "synopsys,dwc3" as a fallback
> + * compatible, but have a vendor specific glue driver that should
> + * be used instead of this one.
> + */

Shouldn't these be guarded by CONFIG_USB_DWC3_ROCKCHIP so that
we can still fall back to the generic DWC3 driver?

> +static const char *const dwc3_compatible_blocklist[] = {

#if IS_ENABLED(CONFIG_USB_DWC3_ROCKCHIP)

> +	"rockchip,rk3588-dwc3",
> +	"rockchip,rk3576-dwc3",

#endif

> +};
> +



>  static int dwc3_probe(struct platform_device *pdev)
>  {
>  	struct dwc3_probe_data probe_data = {};
>  	struct resource *res;
>  	struct dwc3 *dwc;
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(dwc3_compatible_blocklist); i++)
> +		if (device_is_compatible(&pdev->dev, dwc3_compatible_blocklist[i]))
> +			return -ENODEV;
>  
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	if (!res) {



<...>



> diff --git a/drivers/usb/dwc3/dwc3-rockchip.c b/drivers/usb/dwc3/dwc3-rockchip.c
> new file mode 100644
> index 000000000000..62f2a03b08a2
> --- /dev/null
> +++ b/drivers/usb/dwc3/dwc3-rockchip.c
> @@ -0,0 +1,106 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2026, Collabora Ltd. */
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include "glue.h"
> +
> +struct dwc3_rockchip {
> +	struct dwc3		dwc;
> +};
> +
> +static int dwc3_rockchip_probe(struct platform_device *pdev)
> +{
> +	struct dwc3_probe_data probe_data = {};
> +	struct resource *res;
> +	struct dwc3_rockchip *dwc_rk;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res) {
> +		dev_err(&pdev->dev, "missing memory resource\n");
> +		return -ENODEV;
> +	}
> +
> +	dwc_rk = devm_kzalloc(&pdev->dev, sizeof(*dwc_rk), GFP_KERNEL);
> +	if (!dwc_rk)
> +		return -ENOMEM;
> +
> +	dwc_rk->dwc.dev = &pdev->dev;
> +	dwc_rk->dwc.glue_ops = NULL;
> +
> +	probe_data.dwc = &dwc_rk->dwc;
> +	probe_data.res = res;
> +	probe_data.properties = DWC3_DEFAULT_PROPERTIES;
> +
> +	return dwc3_core_probe(&probe_data);
> +}
> +
> +static void dwc3_rockchip_remove(struct platform_device *pdev)
> +{
> +	dwc3_core_remove(platform_get_drvdata(pdev));
> +}
> +
> +static int __maybe_unused dwc3_rockchip_runtime_suspend(struct device *dev)

Please use the same PM callback pattern as dwc3-generic-plat.c. That
should avoid the need for __maybe_unused on each callback.

> +{
> +	return dwc3_runtime_suspend(dev_get_drvdata(dev));
> +}
> +
> +static int __maybe_unused dwc3_rockchip_runtime_resume(struct device *dev)
> +{
> +	return dwc3_runtime_resume(dev_get_drvdata(dev));
> +}
> +
> +static int __maybe_unused dwc3_rockchip_runtime_idle(struct device *dev)
> +{
> +	return dwc3_runtime_idle(dev_get_drvdata(dev));
> +}
> +
> +static int __maybe_unused dwc3_rockchip_suspend(struct device *dev)
> +{
> +	return dwc3_pm_suspend(dev_get_drvdata(dev));
> +}
> +
> +static int __maybe_unused dwc3_rockchip_resume(struct device *dev)
> +{
> +	return dwc3_pm_resume(dev_get_drvdata(dev));
> +}
> +
> +static void __maybe_unused dwc3_rockchip_complete(struct device *dev)
> +{
> +	dwc3_pm_complete(dev_get_drvdata(dev));
> +}
> +
> +static int __maybe_unused dwc3_rockchip_prepare(struct device *dev)
> +{
> +	return dwc3_pm_prepare(dev_get_drvdata(dev));
> +}
> +
> +static const struct dev_pm_ops dwc3_rockchip_dev_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(dwc3_rockchip_suspend, dwc3_rockchip_resume)
> +	SET_RUNTIME_PM_OPS(dwc3_rockchip_runtime_suspend, dwc3_rockchip_runtime_resume,
> +			   dwc3_rockchip_runtime_idle)
> +	.complete = pm_sleep_ptr(dwc3_rockchip_complete),
> +	.prepare = pm_sleep_ptr(dwc3_rockchip_prepare),
> +};
> +
> +static const struct of_device_id dwc3_rockchip_of_match[] = {
> +	{ .compatible = "rockchip,rk3588-dwc3" },
> +	{ .compatible = "rockchip,rk3576-dwc3" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, dwc3_rockchip_of_match);
> +
> +static struct platform_driver dwc3_rockchip_driver = {
> +	.probe		= dwc3_rockchip_probe,
> +	.remove		= dwc3_rockchip_remove,
> +	.driver		= {
> +		.name	= "dwc3-rockchip",
> +		.pm	= pm_ptr(&dwc3_rockchip_dev_pm_ops),
> +		.of_match_table	= dwc3_rockchip_of_match,
> +	},
> +};
> +
> +module_platform_driver(dwc3_rockchip_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("DesignWare DWC3 Rockchip Glue Driver");
> 


Thanks,
Thinh
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
