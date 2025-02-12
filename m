Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D412CC02198
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Feb 2025 21:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:Message-ID
	:In-Reply-To:From:Subject:Cc:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lr1vQ4Mz+YwyzNEs1VpbDUFEHzNgNQhRZTpkmTL60uQ=; b=FT+mc+SR3xSS4r
	admz7v2SPLTEtGTu2zLwye6YpXYxWExF7gHSw7VPag0oYTvoMUdN3B2YYYAUIzaHTciu86m8Pab/G
	uSI32z647kzPbKLGi5sOv6YZ7AnEcTRpEk2OvT7WGCRA5cpg9zIt7LwUTXwfDtIcHCkIJ2M+eDED0
	oCbA5Vm3AROm3qy2SQzqchlVfvxCreRq1Y1pe8dX38iTjnEL+Flmv5ElXEYZkF2sKkZA1IVwL4ZSa
	CpN0nWM3ELxQ40xrWO5JDOdLzDWVXxzZFlXC/qdGjV4YaUaz5GckaB1YXKCP9CU1pui/iDqlaulAM
	S9zDeKugs66qFjbK1JGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiKj6-00000008x7i-439N;
	Wed, 12 Feb 2025 21:57:00 +0000
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiKj3-00000008x6t-3a7R
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Feb 2025 21:56:59 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51CLpj2l011035;
	Wed, 12 Feb 2025 21:56:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=5SorpLuUIlTHKbXirA
	cM0iEZHv4gp0KJgnJ+NkXwrOE=; b=gM6ZPI9s4XMcQr//j4TZpdnmmvr2dDNd3R
	UBT+BgDHYZuNqg7/IlyQ3FO2QnxHpodNs6p2bjvBPdmRvQ3JAF8DXxc1Xukz7cKk
	ovznlCZVLOtvq5n7mVSIWuwJQFh5V09zMJEgQ75rzFdTezPUYPFM0JRL2GSy+ic1
	ZkaCxu0juuRZaHGW+ZuhjlM6kflRJfoIc3G0uHHnvtn477HzSxE6fscTZRRgyHce
	rrMlp6D04VBwsNeGlOo7FRD+7kmxePrWJQ16SQKSvTEe/2AgJfNbabXZF9mxSzGm
	yyxcqLwz++Od7mr4z+SmFtjctkVDC7nJCYE0tLZxvzVFYvJp2mHg==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44p0t48cmh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 12 Feb 2025 21:56:44 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 51CLBRRZ002659;
	Wed, 12 Feb 2025 21:56:43 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2177.outbound.protection.outlook.com [104.47.56.177])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 44nwqaxc3n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 12 Feb 2025 21:56:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qEyESu0mK5sL40jB3MZwgJrJpJJOUvsGY/keBj/pNHZjoNtcMay5YQZn9CFtqo/tjD/c1mO3kJskq0bMWjAuohhiMIhHTawQJZQKYtRp5zA/3UHzg/S1lSaJLB52CUX7yD+NlkgrNFPHis1up/dHBK0LbeV0YLfh5TyXVpSv1qn1dC6dUvolKjlHuQbURG76896PXFlKM8FxU7dT7solbWKNkVRGPLYwubJaexIwSH3tEDYm+VmHp3BuD+3cGHR8QjuvUfXXZd/YWj+6n7BZOeBmO+h6C55yu2l++Flx6s64eUa5kgzw8z8Ms/gCBAEyAzhV7k879+5TmEoYCp6FvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5SorpLuUIlTHKbXirAcM0iEZHv4gp0KJgnJ+NkXwrOE=;
 b=x0CRmXH0I6+lgeibD7MVtX+TS0eR89nf9jnXyGs1fqN5+jKeCedCbl18TY3Vv8bvVji88t5P+irbj+y9hPAg3dvMrvOXIdMwKARn4Lx3Okx8+l0o8JR3YBeJu5A1m/LKgKknbiuqkyxzxFa0jeHcS73kxY8gAQnsE6sNPXVzZ1swbm8RS35NMr1ZBnaIfwVHBdjK02gLp+cfvgkbyNjy+zH+maZBGaxiGD7hAlcmEZ5JAi5qAwqWboqZyR8yLBSjv4ubuU32HzVmflJ1ybrveUcZAa6G5DnTgFtTEzgoTKJPgNedD2NuKChuUg241mS1CwhqXDeA5qNVj2aDO2yRmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5SorpLuUIlTHKbXirAcM0iEZHv4gp0KJgnJ+NkXwrOE=;
 b=dApYr8xuoals+d7bZsGm7hz8ZoIt4FGxVoKVb4wXs98IMt0+h7EhT77JOhZTEvp9PdGsOqCOS+CZonja+u1tcon8BTSvWqpNGe+XESbZargsnDaT33JLo+rqmtEUrf3OajejlUGGXhIYGQ3mPYrgRCf3cFF/InPKVOey236jq+c=
Received: from CH0PR10MB5338.namprd10.prod.outlook.com (2603:10b6:610:cb::8)
 by CH2PR10MB4198.namprd10.prod.outlook.com (2603:10b6:610:ab::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Wed, 12 Feb
 2025 21:56:40 +0000
Received: from CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf]) by CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf%4]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 21:56:40 +0000
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: "James E . J . Bottomley" <james.bottomley@hansenpartnership.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        Shawn Lin
 <shawn.lin@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        "Rafael J . Wysocki"
 <rafael@kernel.org>,
        Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar
 <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van
 Assche <bvanassche@acm.org>,
        YiFeng Zhao <zyf@rock-chips.com>, Liang
 Chen <cl@rock-chips.com>,
        linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v7 0/7] Initial support for RK3576 UFS controller
From: "Martin K. Petersen" <martin.petersen@oracle.com>
In-Reply-To: <CAPDyKFq+pWXq75xEtfkeCkmkdZtfp9dAFej4M+6rO6EAUULf=w@mail.gmail.com>
	(Ulf Hansson's message of "Fri, 7 Feb 2025 11:17:46 +0100")
Organization: Oracle Corporation
Message-ID: <yq14j0y25hd.fsf@ca-mkp.ca.oracle.com>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
	<CAPDyKFq+pWXq75xEtfkeCkmkdZtfp9dAFej4M+6rO6EAUULf=w@mail.gmail.com>
Date: Wed, 12 Feb 2025 16:56:39 -0500
X-ClientProxiedBy: MN0PR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:208:52f::14) To CH0PR10MB5338.namprd10.prod.outlook.com
 (2603:10b6:610:cb::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR10MB5338:EE_|CH2PR10MB4198:EE_
X-MS-Office365-Filtering-Correlation-Id: 04a71c8e-8bdf-4d2d-1739-08dd4bb02164
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oMP6dgUkW/Mp6BIIZDkxtXsSBs1J0vy+q/ceqoUMzgvXlIGW2bSQuxu+Ynuq?=
 =?us-ascii?Q?H7soQ8cAwl4uEIkCJ1Tg3FHl05W8nzdeapbMM1Ne+oBpAYpzcDWIktOLPMLN?=
 =?us-ascii?Q?6P2y9J1tYZrk7vlUiXxoLvArrPqq1ME+NFFKfil4Re/BTIRXbEnvVUxfEMXO?=
 =?us-ascii?Q?6irvUas+54p4indPBKtHd8idx9iwy9+Y+wfXRqvBkaWQLUzU3atZhXv4Am08?=
 =?us-ascii?Q?P9ClYuSpa8BxaJSmUF2smzvmCS/80uDZqM9q2hLvTUKQXU2kHUY9w8m8B0+q?=
 =?us-ascii?Q?eI88R4Ck/sZKjqyjs3pjqSzr5rJCEp+NBn+0VSE05RJW1gI4+zf9PQoOCLHY?=
 =?us-ascii?Q?8ln+w8n/9ID0kA89VQsh6tqj75xDude9wIW6nA4v5n++R/19ebkQp4gwUD2i?=
 =?us-ascii?Q?6EQWOgIYOBTwiUkhuNpvyBZeu6nfx5Cfkf9SXeWKAVTmVBoT/JFkwWmnlG7B?=
 =?us-ascii?Q?37V+eBEHCn0Sk6920q3Ys9ncCUMnmCu20T5lHeZuUoNzGLp0tXAW+4pFLXMi?=
 =?us-ascii?Q?1OnuyV+GJIfKBQaEhceliuxuZpm/7tCX8v6GcvJVI4ok8MAfQ8YU4k9x8L9T?=
 =?us-ascii?Q?Ezk6OJ4QMhDQ59FAKFytONLW5Yw2WAtQBNVTMKDVBZUzzhSgmsYf9XiuyFZn?=
 =?us-ascii?Q?jy7elpFdDMTkLMpe42K7EJfkzWAwazayl2KvDAUxyjCvcWwMONoXNUZjHDP9?=
 =?us-ascii?Q?73e5yb1Yeeb74InYV//0b6k6HlFqFzIzeEqg8ZFHOCFr8dYlgpO1yQpeTwO1?=
 =?us-ascii?Q?r7l7RDdH4qNmaGZPV/xORWMcJ8qw/qulMLO5KL/lDzRL20xVZIwE50J2QJWh?=
 =?us-ascii?Q?4zF9BcPpMyVeKT4rD6dGZ/X2OJPGXHzUymmG2LmDHnr3vD9U0wfqSsfbOraZ?=
 =?us-ascii?Q?jXP6sAK1mo+/YdeVebSJC1mmxjfCeMtWm0o5cMQpFQaMphTHgFiJcD116Umy?=
 =?us-ascii?Q?R28skvJTAMH5hfXghTUlBzdZc/iRWQ9eXbQeQoOe3jcLqvfNYeRZMpf7fbmv?=
 =?us-ascii?Q?N/xfMUwVK9jfJ3kPJMGCPuqsKGc1exhwyWoOvHERXVrB8lLYdO7hE3G1gvxX?=
 =?us-ascii?Q?6fs5mPRa3zoUUTZDiDm2Oseq5K1gzNJAvcIMRoeCIqC4BLYj+qbMcpta6UPc?=
 =?us-ascii?Q?AtQS974pfUx49jD1cr6IwL+BIt2HmYiytu5JUtuuIh2C7Gv4N4VyckCBcpSy?=
 =?us-ascii?Q?016uQqMlHzuWIrDOqji63uDgbrtwxdCCA3QwuRWUXdcHhHJBFOz4f0d5DC8J?=
 =?us-ascii?Q?mVhBQUdvi1TVTD/3CUFP6X5VV9stYd3yXVUdtwOVstoLymMfAJIryor58S67?=
 =?us-ascii?Q?EOt2kIkPYlHp38Q372Y9RSyfs4DtjdZmK04nOgqcYEtmXd83kTev0NhY2RnW?=
 =?us-ascii?Q?sPPDBpVDkIffBf7b8q8ucOeNTeaE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5338.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GdEY1Jfa5CFpdXbUPbMwVei6I+jhsF3ylW6f0zsVRAfZm6jWsJSPDXV3hnhS?=
 =?us-ascii?Q?AmJ2sELZqCZIr3yrR4V+2/4l9kXtyKidDwHW/g3YfgNmk/mc7DdkMu4CfnWA?=
 =?us-ascii?Q?VNzJoOd8nxuBxtcvP4lQ6rW4ls7kPQRNFG4BKdASiKYfYiIqwlf/7xSRT1Qs?=
 =?us-ascii?Q?XO1zW/QzP4d9GR89XnsSpB2DPLoVOjPrIEs+3XxAjgDD9F2ZNSNUj9Jh6mU5?=
 =?us-ascii?Q?IrkP20cZGrtkXsNaNjYBfo3AVtkRQFIqp62CYuhG5WUxNdqsbX7yLhTeleg0?=
 =?us-ascii?Q?A0xIRKwMi0LZlcyl341/oVuO3hbvlKuVGzLkMB4NpOeiZ+n/clYQAVbpzBqn?=
 =?us-ascii?Q?jsOH/+2WrIftkVjz9pz1LmFyIOqhsw8KlcAKm9KhDxXD5PBTrnPto5CoTYQn?=
 =?us-ascii?Q?jG+NI4UbVnLSz7wcrn4ANI/4Rfqhkukc7QZCtdsCO9XbpJY35/2tWO4mSHyN?=
 =?us-ascii?Q?E2ImIJSgp/ytmP10TZg5fRm1oeW9Dxrsx4MIzq2hNkoUzRYc3JOWZr3T5wkG?=
 =?us-ascii?Q?JyBarLzYVqMkm/wY/dXBTrkz4IAu6mU62r24irElc8Lny27+lFwpsSaZS6J4?=
 =?us-ascii?Q?GcbSaWy5iIKbAHnTHzuID/i5jWIuhUomO3VMJeukHAJpTsYQNJ7+hv/cGiW9?=
 =?us-ascii?Q?tiyiIHcuJowyutOMzXh68wPeu+q9kl6zOy+FO3l29YLsJS1pwhih9LYngPfp?=
 =?us-ascii?Q?+UpabYNwX9AfRnkuJjtsQwejlIG1nF8zjM7LG1HdsWj3AzpDftFdTHtFMg5m?=
 =?us-ascii?Q?XnxeWcezdjro568cJFWmqafGqWx+CL42vOOliun1WV3eL7hfL5JSS4dNmeUJ?=
 =?us-ascii?Q?foKS17lGcmgBMk3h9OshEw817D/+j5k0BiBHorIvZ+dPfxJZleneyqb2ZcyN?=
 =?us-ascii?Q?0XH+dxDM1aNzSK70rRaFytoismf8tm3DKlBfCytkNkMR00cbJx0IPXWz2Fyy?=
 =?us-ascii?Q?wfKhOY9s+/7stQFdwuxzZRr5dJlVg14RNhHu7Y7PoSHZnXxy/CCZ0ydsrP8F?=
 =?us-ascii?Q?T9IwegAr8+RbKYtJJc480UgVPSL/rFrPNFqnCO7GteRmJUgoyaxPB0DRMGhA?=
 =?us-ascii?Q?KVNScgTBh8AELaRq0taoY15GAMB/uohXFKU+TjBUWnrA3hZ1VOyrEUj/kAxY?=
 =?us-ascii?Q?Pnq4+QMr6pFpmZDTfK7WpuJBvqqfzENl9fCa0Lg1af4AJ4zcGp/C8v3KPPtz?=
 =?us-ascii?Q?MDQ3f/rimjw5lR3QLcrCFxuFrQIINX9Mw17Tztgyc1tGYFVCl47HZCNi2ELB?=
 =?us-ascii?Q?VlDh0rAJhHbsO4Ib8Uy3qoQv18XLPNWlBW0GoB8aW95DW2h6RJY/1UVyGJ1c?=
 =?us-ascii?Q?ZIxybDu47LGN2pH1AIJp8Ql6k/hghf03SV00qy+G0q1yEjqQKEaQ4dat2ASD?=
 =?us-ascii?Q?EZRwF569mt+evqvjEZe4VJmMdrzNjOohMwzevTuv2B7iZ8VXQ8Smvk+u82mB?=
 =?us-ascii?Q?vKmsz5FGRa0BoMtlG0XuyVRSSkjD2FZ/F25nOVSh/ITTYjP+NlnG0LhflFsR?=
 =?us-ascii?Q?qT42cHU6H3dPnHCtAcwrI4cxQnCunYjpdZgyOZF/xdX8RzwVhDwHHA4//vpy?=
 =?us-ascii?Q?ZbOe6t0Njbe6/hRIwkzataKRWrvNZx7zaHQWgOKsUjXFL0ZLU1i+7Xqv+KcC?=
 =?us-ascii?Q?sA=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: e47tNOMieIAMAiiTNyp/AA9pl98lkbPMzqxtwcshsZw52mIx3oFojLfQKS2pgIp02ccF29yffB8BtAloTWhqC5FkjcFXRP0K2UsCzOYHXGHoktl/jBogQscdLhTI0wKP+C/FVaVAMwKZudFRK6ayDdZXDR+Mxj9JnuJFcm+XRH6cca5bDjg1XmDR2f9PcaCseL0rkLJ6tCCXQaFOijc8wJKQ/B7d+tiHOOU/DTR1bQHk3sv7Vt7hQyjO0H5PFu3w8D2tLqUmKGz0TPV6Zff/DgCyKUYEc4rm1bsaAWvyHiGnLz4vlQYQNYPITlseWvg7mLJCG7lfJ2swBOtf5VHqYuEmlxq5kM8CL3ekXv0Zfllg4HqFXi7oAVwKNoN/k16u8BdU9yyOMdTJvPt04RqqpfRlEgcfIEcLFrUTgbv5uz8onsoPLxyB4Cq3AHu11L9M+9VyOUHz1h3dmtKwcRkDsku2lWzSHfD4W9rnXLFfoz/2tpA4qCy//r2wcbF4UJ3npcAfqi7JJaSvmLFWvMrYiKJHXHMAhmToLOyOBJpAAJOf58bRzBUp0DcRRwe3tkW2wsUe6Vgw/QNd+CaLiQcVKVRIBOywCFGkDBoTjr/g0Vg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04a71c8e-8bdf-4d2d-1739-08dd4bb02164
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5338.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 21:56:40.4160
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dq2MeR3Wi+A6DMrgJzP9gQVwfLKgBYAJ8Rrxo+BM5XOCKPNiu0aJhfe32DbOv3exhqHSqNI0VNGslJXma0GrsSu8ajM+zedOfASkwdK2fgw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4198
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_06,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 mlxlogscore=781
 phishscore=0 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2501170000
 definitions=main-2502120155
X-Proofpoint-ORIG-GUID: go7tgR2tXVPBYoix-zipx224mCfrr4kK
X-Proofpoint-GUID: go7tgR2tXVPBYoix-zipx224mCfrr4kK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_135658_310074_B2AE9A98 
X-CRM114-Status: UNSURE (   8.68  )
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


Ulf,

> If so, may I suggest that I pick patch2, patch3 and patch4 via my
> pmdomain tree and share them via an immutable branch, so they can be
> pulled into James/Martin's scsi tree?

Sure, that's fine with me.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
