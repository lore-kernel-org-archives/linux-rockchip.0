Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96CD1CD4F3E
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 03:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:Message-ID
	:In-Reply-To:From:Subject:Cc:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWS++ch6owO01Hn4qtUZr45hfE3jkxrudS1X/cimnQ4=; b=lzmCGXv288kdmR
	qUrD9fxwf9WxGH5RM+jMM8q/51XGTdwOw0Llp+FgnzKGumcZLfHv5J4BH9yHKoOhfbllgRKGqvBSh
	7Q3X7aAFNNuTF+ajXlrOKgT5rFHCnTAHa5kF4vvhvNZ6Fvi7Xqk1jM/mFTllBCxRpBn26U6EaXw/2
	mBwK4HBB24Lz9ecHiQEr4VHLPLcVgyIvPHG4VtdJWyeJBM+iWfpp2BIMVawMpxTQNwX10S/Jb4ozQ
	q8XFo8OVJpVlKh3NLvRkAwjEhWwMHA87zsUw9tZg2Xa4Jnym0pVpoHd891HvAEfpreQi3BUBbP6rq
	xNR7KSJ4ZBkQX3UqMcqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLvSr-000000063Vx-2Pl6;
	Thu, 20 Nov 2025 03:36:09 +0000
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLvSj-000000063VM-3bFt
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Nov 2025 03:36:08 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AK1NDe6010786;
	Thu, 20 Nov 2025 03:35:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2025-04-25; bh=Au4q76ogcXU1l4WLF+
	RM7NIJRVp0EZrg4bH8P8c1acY=; b=KhpMwKSDG81kHSZtLmYWECIFUgnAjZYajc
	Q/k9mpWYFb01+O1b3cIqfuOuZ2TPRV69+QDGUFCNQbyfxkdTuoyCXghSfiQu1G37
	zq8ph07SxBRWS+1p6/iXOUY84QFMsSeszZ2GPJ7oQ223xgdQNkHWjfsFUonnFLEj
	Diohhr+CPriDXwIxCa4bd3pTHo7IX1jh4W7Ax7cRURq8y9ZfoY5C8z9UOH7fJIMt
	7bLU9RD66+8zX1dlsJ1Jduvp99Xt733HpindHjJ1aAfQOun9wvspvbAXM/Jteroz
	u6FttypksjDFGPZxFcunv5w6GRBDi70VfL0H0OKKmc1jE/GqS6gw==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4aej908dgg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 20 Nov 2025 03:35:57 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 5AK2Ufeb002488;
	Thu, 20 Nov 2025 03:35:56 GMT
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010069.outbound.protection.outlook.com [52.101.56.69])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 4aefybfxq8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 20 Nov 2025 03:35:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ULrLwKqOQx8te5qcJejST1Wm0yUaxFLna3HwRxxdYKndK++yFm6F5n6dr5S2vtmRXk88o6pP1P7iQVhEAbI3fieau2I2i68cg8LK0NxmtDwmqfKW6IkXrL6wonypAPQAxpOvwlJdA/eLhWyzIbjW9opSNCZIo/qeneuCDC2ejMiB711AjkLMEzdvbXk2gczJnOhjUIkH3OtEZ256gXFcuQQwiMpFX+WwzdsxeKIQyv7f5ffJKRTLeOiZvOpsaE1KjWMQm4UkYj7Jd4o5zD2rdWkQ/xTWNLN3BwLjpO0N2prPTuyqQwdVBFXWfQ52fWJ2LbQQRSoU5SoDxEWcf10Yfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Au4q76ogcXU1l4WLF+RM7NIJRVp0EZrg4bH8P8c1acY=;
 b=DgRseLMUUBtddSRQo8X+6lzVaXIU0s1cn1aywxoqmwIsx/0yz6sBuP8d5FwSOgHOfIwks2eDeVJCMrEUR1vXoKFIjKcruq8YzWOJ/OrPnXRDngChcnyHjR0GXflb2yvLtO1SlvvoguJLpq089frTSYqATyamkwiq6TVeQplhp7SAx9lYSYKKQtDUajm2UojtzObzoAqiBlmH4v2UK4I9/kavGVtNvJuNTJlJeuGxaZbs3/ola2dka3/WZfqBfTmQmmF5hpvyBF3y6OsBvjFYWExz0HaqWHcmmOGFPZoEIefm8LUB77qp/FGrEo+zvbwGNcCaAV1ucpsmvsttXnUUeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Au4q76ogcXU1l4WLF+RM7NIJRVp0EZrg4bH8P8c1acY=;
 b=PpzvbpLdMEZ2LmSx6Hce/uhsFa/SCoyrXnWjHRm9KadPkseRh60QDxP2XdsSy5laDL/whY9LyC/FWJY4TXI0m64V4dA3pprxUCaJAcgqmUTfaVhYdfR8IvYFHKD5jr5bn44llVlYhlicEYf5q7E5zx8gdCwRfDGHwBuf65qhrDs=
Received: from CH0PR10MB5338.namprd10.prod.outlook.com (2603:10b6:610:cb::8)
 by DS7PR10MB7322.namprd10.prod.outlook.com (2603:10b6:8:e5::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 03:35:53 +0000
Received: from CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf]) by CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf%6]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 03:35:53 +0000
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        <linux-scsi@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] scsi: ufs: rockchip: Reset controller on PRE_CHANGE of
 hce enable notify
From: "Martin K. Petersen" <martin.petersen@oracle.com>
In-Reply-To: <1763009575-237552-1-git-send-email-shawn.lin@rock-chips.com>
	(Shawn Lin's message of "Thu, 13 Nov 2025 12:52:55 +0800")
Organization: Oracle Corporation
Message-ID: <yq18qg19y0f.fsf@ca-mkp.ca.oracle.com>
References: <1763009575-237552-1-git-send-email-shawn.lin@rock-chips.com>
Date: Wed, 19 Nov 2025 22:35:51 -0500
X-ClientProxiedBy: YQBPR01CA0071.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:2::43) To CH0PR10MB5338.namprd10.prod.outlook.com
 (2603:10b6:610:cb::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR10MB5338:EE_|DS7PR10MB7322:EE_
X-MS-Office365-Filtering-Correlation-Id: 44cadd46-71ae-42a4-5da0-08de27e5e849
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cL+STuyG7o/SK/cz2JVfiSZzcMEjW6JN9JAsfC59Y6oJbdjXJi/FeRtneQOu?=
 =?us-ascii?Q?S6a6GvVwbpKFx48/WK8uLgVm/Jy2V3R37vKmBTT/8GaDySrEqMy15OcI2ssn?=
 =?us-ascii?Q?qakpsAlsIJ6RhqbfPa+yhkMi7/atOH0H+Hkc4riwyVQvSK8U6W1mqsUUszQV?=
 =?us-ascii?Q?BhFSZFE4uM0u1gXoDZWBQXEtgTtigGV5DTPs2O2wdpP1FV3D7ITHgAtXC9Ru?=
 =?us-ascii?Q?e4glGu2jTUQz23XxW8vEznbNjF7CIodfqZPdaNjJks/aeZnA29l6AobfSr0I?=
 =?us-ascii?Q?ENZi+J0RNMQOYQOyizc+e1tfNyYh3fuRkfu50XTA6cq+o6WrBBy3P5zULd0W?=
 =?us-ascii?Q?nxpVscvjdsYL2YVjZFZ4tBBOwbLVnVtC4mAMLevFOcyl2uG7HhARvdKVm84s?=
 =?us-ascii?Q?FgxbQNZSKKtT9ZbJ717kRb94KPa4ohKdkbOPzGbI7ZM9e+3p/R62XiVbE720?=
 =?us-ascii?Q?Qp/FrIXs0NWa+gktFGrWO9WzJJw7YeJYxr4t1uWwQ7TQcFYUZvBGaCnJ1YLo?=
 =?us-ascii?Q?tWrWq/ofGZ/Oc51RWW3GIcdRL5QhtuVuzC6TMXa5+LtFfm5ypkQ9rSTYI+UZ?=
 =?us-ascii?Q?48ld4qa0h8Cw8U/spviDzt94uWfvLo1czSEqeGs72o08Z7ryCawqQ0a03hBB?=
 =?us-ascii?Q?XOg8qjZS8bjhqgn9JHu6db0jrHXjZy6BN+AmE0eRm1rFhActZHVDnhm7qWpA?=
 =?us-ascii?Q?fojhjCq2oiJiPr+0GwWBrHNC9ixT/QKqr6VvxOr/+ij6o1TXhGfK4fdCu5bg?=
 =?us-ascii?Q?bhI2urVhkaw+KDsNTIMtdv2fCxuTG5rQRunD5QbbkK/xWzJj97vy6BD4Qbgo?=
 =?us-ascii?Q?9zAQt80htJF9h/PZ6Mh4MX46cT8pxl/XB3VizApNst5OZPbyh0vbTivjWyiL?=
 =?us-ascii?Q?oT9wKyWNs4uZ5ynnRZ+skKJcp+r/LCmxn5PmevR2fRpg1Tcgogmpa4iwIYfW?=
 =?us-ascii?Q?k+sOlLGL0DcyYVDerCVihNa+3YlWFfDbzN8PkEBdHFPlinb31mcfcP1luSOS?=
 =?us-ascii?Q?5zDLoG++BP4DcyZ9EbJNjFNdS8ODjdSJnZsN9X0L6TxJIW36ABKcV01vCX0F?=
 =?us-ascii?Q?JJ9BA/Xxko5r7ettbfQSaTbbuYj1NdNVuISgSV4Khyls9erUV0PHZVpx128j?=
 =?us-ascii?Q?sLzEEqscZ6DLgba9RYpZHyEPEITvxMkqr4zMrsrALTx7zKnMpdOXBWgeFIKo?=
 =?us-ascii?Q?5a8S11huOTquGQsseIcWH6NiQTwZVTHrLnZBOQmhGpEM3KQVtQprDf/U+kAd?=
 =?us-ascii?Q?DdPGsgNBO/cS7Rtt/oW4Gginn/JXNPKNRDkdfa2ZdazJ3noO20kYArjaSd0K?=
 =?us-ascii?Q?s182udSCOs1PNEmVexRmBTgBx6wSSKeCo4XaBsOGNSNJRlEZYSSPmBrT9+9Q?=
 =?us-ascii?Q?+UaxGV3+Ozh0hYWPdSpmh6lJeeUVDqi3KzhbKnvxilHvWJ2BZ3f9I/ez1WKW?=
 =?us-ascii?Q?wgxCvKKUB9v1SVZ8qFFU197hy58ePk4Y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5338.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?88jGaA4pKo+bmnaB9O1VlgqeBqS8bxQcsG9gD2Ghvha9eK8ZpZvLPiv4huxj?=
 =?us-ascii?Q?AX5Mf6i9pQMLbcTIgfoYKElmK9LzCkEkJNh+5Yqg29iIJvUj62+eCNO8xsEE?=
 =?us-ascii?Q?UJFJu0BHVfqXsTaB+ZWe3xwntmCAOuQgiX5DO95pf7nqoTl+8ZyDdlv5kFZK?=
 =?us-ascii?Q?El2bXns5S+6zyJMaBFMX5tnWeUTWaJLdyvoZwMEyxm/3Hv8aCIqGOYZ3zLdu?=
 =?us-ascii?Q?G4j0+REqo1RCpNVXe031N/vo9E2zqZKx7GgX8kVvtOs19KrjDGEYy0+m2KTS?=
 =?us-ascii?Q?TyP/zmDayKa53PK9N1nIFphPTIOxxaGYVeaX7zsf7T/n7cPYUMP+UUlcUEJ4?=
 =?us-ascii?Q?ImByHQu1tOhWZPEpohlr2fu4tuGkei+KjljumcwAAeeOnhVJYYRowtYLeA/l?=
 =?us-ascii?Q?VzAjgySFOVKtVpWpIhy+j+NbyO2c8hthK+Oahjf8l4uNbOgSk7qLjc+n/R/a?=
 =?us-ascii?Q?QVtb5kwEc8F4awT8DDSbZaAyywOj3r2Tjm1Ht6B63Ry8pq9D0FhCAeKvSZlV?=
 =?us-ascii?Q?DLwwMX1YH1E0lolUyo5iqunXF9eNbPC22W9F+EoLbT6Qlqls6t/NwzdcWMiF?=
 =?us-ascii?Q?qG9WN/AAZv2MfWUXlab6wZiouB+5zJLp+frnlhmGnX+ISlLA8+aZ96JCpLO1?=
 =?us-ascii?Q?HluOc3yzOOjh+UpXrVdiZStw/rYZvIws/cha2bOj50WlI5O0nK8d6ERo8X9X?=
 =?us-ascii?Q?v3E16l1eDr0mFy/iEzPZsIi15BTjUhwb5FhrH2WtEj0xb0Q1dELFfFuYaTAc?=
 =?us-ascii?Q?HvwYo9pGbBE6a24za8TM8ByDbFQoXn0l8U0+OjehpFok4wdfuJDwzDVyS55R?=
 =?us-ascii?Q?u7IXigOwG6OaKN3gjM9fIfyscyxeBLWGLby9WvsVcLH2800Gpw+AUeQ3DAeF?=
 =?us-ascii?Q?p0gKm2Fye2i1fqj41dA6oLdG1OAHNN28AcZS05BtgI3Cl5qJggtXNBN+SSxt?=
 =?us-ascii?Q?lvbqUlAGh3eyt76TTDmsl4EJ9jp+cCOIuGAgi27y0RMYQRDZRXrW+fArzc8r?=
 =?us-ascii?Q?HCnJhz1bNcoY/fnag622AyYL2URu9gdDa+qiiZvbyJAh7d5jXRLHDhBRv1jr?=
 =?us-ascii?Q?OdR/QT3dnqn89/OeEGSuX6j4ZZOa6VYg4vXHW203MJsMQ80/V0Ufu9qzDIOq?=
 =?us-ascii?Q?fwPQ0N4D1TngpBPIIaDfHtGNTiraVWRMbXYWnzK/2IW2x+LuOgV0AnYR6K0F?=
 =?us-ascii?Q?uGvpBhAttZLgXEcJdz1OvXUrluKit+uceKmbIeQxnAQn0svBmWq+1tl2h7tk?=
 =?us-ascii?Q?cZiqbgmSH8Wd5tH3qPtiBmzxBh1rWxhFqUaRtJBSJFxqrKcvJazFbFEAQ3n1?=
 =?us-ascii?Q?PylT70SF+AcCNi1R2NDvBt4zam3UXS6tHic4RwSRg4Taul9ejWmY3jSGfdhN?=
 =?us-ascii?Q?8h36PNqyCzVHvdAfq+hLZ4FNnmQgfjTJ+OyLBisFjdBHKHcoucB2c+BX2bEg?=
 =?us-ascii?Q?z04X0CYJFCoM2Eh2YUUdY19BupKy258Z5TZo0C9fV/N2qE3Uo7d5NlxyxU+2?=
 =?us-ascii?Q?DZ08lfi4P+MJtiXj2s6Dkq1jSNqJb8DETml3tAGmUSJRp8YBVb7vaTian7ws?=
 =?us-ascii?Q?Xp553frHXCZy3G0lFAGKAHNWRhejcLRIH6iI1xu5wDikDD0upMr/aqjGuzai?=
 =?us-ascii?Q?Yg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: rjUlSD5klmXifqHxMmS8ASf0bS4gjV1JfZHHle3HPbJPqMgXxk+nq/2M+peeEXBKepyIAF4SRfaQWT0sYDHS++6qSS+1r4xmFU3y28fmp2Ga3bbXiF+71xm6L7yHK0NWd8R7pd5YyOE1FRxy60jxMHxe1e901JgwauEbSBgTE4IJ6LM8vK94wCop2/OOLIv0ZQkvkl6EJgtUvCT75SD5A4P2ifFnS3zYE9PSBkm+I0QcDSZf0orkhX/ba2VayYITKsXUZoYcbSagiVQRDmMHPxmEHom8Itr9k/R3WSzpzYlt3K9Y55LdZFUBCQor3R4JfsqLeFAU7Oz1G5Mp6mAR6/JkLbvs2t5cT6gvXW28hJhetzJ+wJQnF/nxv8ehXvXAbDoJZRJRkbqv35TAljB2/Jk20MIhQArgTs9JPCRMAzLcLzq7MCDaMcmMDHRglBT2rRD11Df5QcD38Zx3z3i2xBwqHbrb328lKpbCWFeqGWtjR90MjkCFzz+8PZu7DWpkLrMuHcgcxecGFXgX/OvwRMdieEc2/J3zUa/APrltiCLaQC5Gill/YOaKty6KmR3RSvQsPl6nIqsff4MjWBN9jTOeOxnsmMuv0p6AIInwWQQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44cadd46-71ae-42a4-5da0-08de27e5e849
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5338.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 03:35:53.2361
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: opYj4fKfxGiS/4iAAQP8WmfEom8XeUBypWafa7Vm3mKAtYUJaMitFaBFVmA0Xgqs972/M82p7oiqLGU0HCkAaQHBEgP0KIQgsl7IVBplZB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB7322
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 spamscore=0 mlxlogscore=911
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511200016
X-Authority-Analysis: v=2.4 cv=OMAqHCaB c=1 sm=1 tr=0 ts=691e8c9d b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=ZqE8iiNBColObR7-44oA:9
X-Proofpoint-ORIG-GUID: 2nbCuRFlJ6alY0Ts0yTM6UO8Dh5UwwNO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMSBTYWx0ZWRfX6o3oL0zrnyV1
 PtzGH1KIGUrso3E2r/7LTbIUrifMhDuF3tONHmt7cFodzjAIizeLNUUUITKWh5Fd4Fn6fOjJaUI
 TabilxKqCnPVAdDqwS/j/V5GnI6vXtAjGCrmr57YSQJl0h8hs4uLwSJ8x9vjbdhhU716+efWllT
 Z9WK96tUUiXKSXnpi/Cc3RY6SaUKVp9d7P3giZQqki3qETOF8PANKgA+HIoI1mtPIVpJzx5cDZQ
 7V7YJigcDG89V5x94ZFQqYlIlKGmrBzQjS0y6YRC+4NCHJQPsN64EWHixkiPK/FuI/DT6zLx0Rr
 W3NPeS4oEzy6Yo7Mh9nVDEn+WLCIX3NRoulhIiDQ87ljFBwemEw9r6TBYvAFEd/guRn368EWPZj
 z6YRL5+J66JOY1/CBH6RyvokwVsqVw==
X-Proofpoint-GUID: 2nbCuRFlJ6alY0Ts0yTM6UO8Dh5UwwNO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_193602_320473_78BFFC4D 
X-CRM114-Status: UNSURE (   7.17  )
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


Shawn,

> This fixes the dme-reset failed when doing recoverying, because device
> reset is not enough, we could occasionally see the error below:

Applied to 6.19/scsi-staging, thanks!

-- 
Martin K. Petersen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
