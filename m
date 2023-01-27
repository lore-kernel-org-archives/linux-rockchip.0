Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD719C61D97
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jan 2023 08:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wCpb7uJTrm73zgoVncV6lw32R4deb7PjCKam2lKDyIQ=; b=05WlW1agAQVl4iV/WeHT+vh2Ny
	ZkYgVEdjnb3hUlQXCd91A3jvZCHiNlG9Jfgl476kC6jMYC1qva6r1xFqCbf9cUD72HzC5/JFB7eVU
	bpG/RlIdhI7WfiahVZerfDhkpRbqyHNTX5lVI6TGDUnuehq8ygZvGhSFHiAt3LjvR2FEhmgrjUvD7
	qDAluhRCLv7PvN8sq7x7sN5xx/DMkZDqQnYJI1X2Om5SOPZ4pAnl4pX5Y7OV+RFPpakaOezm2aGqY
	JN72nE/EpZWVRxmgZ5y5xFnTQZHA2VS9Wdcjl2xpvqrkOcpobbRA/Lwofhru/274qNUIVkxoN4VAz
	nS7fgs/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLKKU-00DXF9-7G; Fri, 27 Jan 2023 08:43:26 +0000
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLKKQ-00DXDO-Kt; Fri, 27 Jan 2023 08:43:24 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30R0O5m3011550;
	Fri, 27 Jan 2023 08:43:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=7pTcRQtK7wQfKcWQBjiVU5A2w2OjpKUOpA+2zuAcc/U=;
 b=B564kZv9Neu+cH1XDSiX3AoVoE/j+V3T4/aqibPTKmgD9x+BF/oavlksigr3rLDDXkXY
 FlRwn8BarX4DzjWWBacZYWP5SEGDXBHFmjy9/tIaduaAuq3WeoQEkcF3T9yOc2wI5BLD
 Ckl8G1q2LmT3rwnxX0JSvg7akxq2ByJJFgAZYR98BOfYel95f7AtphOu8pxdOllr6AsM
 YuJevQvwUSF0jqcAWzG1e49UTqEA0rWiQfDJpZoHX15SvBrUF1DpsH6F3CXlj5Kip7hD
 EmxMIq0N0OxYtKb4HL6+U+GSpvkEvi1EV43FWSear+BoAfDvNmuvAAt67cZfm/I81Vg8 0A== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3n87xac783-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 27 Jan 2023 08:43:02 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 30R8P3sV006181;
	Fri, 27 Jan 2023 08:43:01 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3n86gft8qe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 27 Jan 2023 08:43:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ooggko5/JUOyv+PAwR0c5lkFxGKacN7kn3fG3Lfy4d0TEne27fwJSvukzDdcfBnR7HVPHvcD42eqTt/NHmnN65E6S2fAQAVCe4ls9SLghxBiuhWtE/S7NHZl7bbFS0P/DcsnkAlRWr/tcj/XIEA5Z7phhXboebSBZpwx/26wnfEHWpZAZNkaCfFl/PG4z6i7NZLI1E+guFRdES+rCH+x8nRy9cqGxjMWoNR7Aci3Wuywnn+aIqpFwgkC63nS7zQD8QNyE3+eZlChH0oU5dzwcGhUzk5E7BFjt/nrsaNo/8gXYy8YBCuhWy//kzqm73XO3U8rU+Sh9Ud4sedepcfFNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7pTcRQtK7wQfKcWQBjiVU5A2w2OjpKUOpA+2zuAcc/U=;
 b=VoYh7ALTOAURMyx/Qi/W+arKFnKcGfF+ifgSUuKq7jqC4jOaYR2K1bvgMolQ3kroHFLtdjU4yz4zJ/KCGNMN0BOddn8RK815wojTvw9NzMiX9fBx4fIjfJ/aKFnQt5VgeY0G+nJ38lUXbdN9UfRJ80pf4XKMWRCjtGpmk0ac6mtQMiMpO7RqnMmh3NN4y19/dR35ewldEyVKa6M843ttuuy3RCwUadzI/z1O8n5cIUzAc7J9aiolg4npyV8bzM6nxHVDpxmQAP9/r8drhzKXJioX+SqM/qEU9lRrIOmJ6uCVgMLgtCfQeUjJbZ36s45jKmuZUZFvmRDDTzl+u426vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7pTcRQtK7wQfKcWQBjiVU5A2w2OjpKUOpA+2zuAcc/U=;
 b=ZEMqkikOtzwawz4XOqv08855paZWBvskkI8APW6eTQTFJRkNZ8NgZxle3w6D10s0h3/TgvLYbDVh0E6W8aWwO+fxjbrFsEp4X4S4LpAu/nO4QLooGNxFwjNvDqXvufPRnRfNUsoKhqIQJ1Wet2jy296nWYT/D0ha1w6EUsrR9U8=
Received: from PH0PR10MB4581.namprd10.prod.outlook.com (2603:10b6:510:42::16)
 by MW4PR10MB5701.namprd10.prod.outlook.com (2603:10b6:303:18b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.10; Fri, 27 Jan
 2023 08:42:58 +0000
Received: from PH0PR10MB4581.namprd10.prod.outlook.com
 ([fe80::54a1:30f9:c42e:d74f]) by PH0PR10MB4581.namprd10.prod.outlook.com
 ([fe80::54a1:30f9:c42e:d74f%7]) with mapi id 15.20.6064.010; Fri, 27 Jan 2023
 08:42:58 +0000
Message-ID: <871ab2c5-5f11-5ed8-9e2f-500e0cbcdb19@oracle.com>
Date: Fri, 27 Jan 2023 14:12:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 5/8] PCI: rockchip: Added dtsi entry for PCIe endpoint
 controller
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, wenrui.li@rock-chips.com, rick.wertenbroek@heig-vd.ch,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mikko Kovanen <mikko.kovanen@aavamobile.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
 <20230126135049.708524-6-rick.wertenbroek@gmail.com>
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
Organization: Oracle Corporation
In-Reply-To: <20230126135049.708524-6-rick.wertenbroek@gmail.com>
X-ClientProxiedBy: TYXPR01CA0066.jpnprd01.prod.outlook.com
 (2603:1096:403:a::36) To PH0PR10MB4581.namprd10.prod.outlook.com
 (2603:10b6:510:42::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4581:EE_|MW4PR10MB5701:EE_
X-MS-Office365-Filtering-Correlation-Id: 9594593c-2fce-4b33-382d-08db00427d9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	7me4YPbmmw6ooc8wGx9+5acPd4s5Xj6A/qBVSzrsiLYFboZUkwgq0lY+t5ItYB92v3hyKC5f0xrzHGscMXQt34/Ftiuq291qyMOTQX8wJZkCXxO7lXkv1FfgaVpaNTp3f5e4KxeivMYBHeofTfW+4mefjo+9Cp4lxD1V6gRMFRem8dBhkOL3M347fwCS2D3zCL1JMRtVhi4fCKdy74BslItumJtjRZl85nCWVnjZ2/WyzqU39Ne8mIeEusY51/tuCixVYEUc4KOlignM22eI/YvrKh3FI7lTywg/V5fgYEk5cYdQ//2r9OHXYe22UxgNk6fqqmxo8Tns6z/wwyv2RLkGAiUUxqyyP0r24GK1/iNPYXS7srMHe6P7n3nO2KwOQOGhGkyh7jLJNgGgMkmmZD71IBH/xao4JETCVnQR1Q0kSTEk1Se3dkEZ3ekTBvYZDlp/KcF14HfoKcUuQjDDBsiAYwCldU5cs1V1KT9YpQ/l3uH+GzadQc3tnDXEt7nzxHofVVLz7/r1NO7pg3HFtDx4yc5eVRxM1caCESNkqutK68cYUpdhh3Vh6+OcWIi8ibOYT+zOILBtwfJsNb4gkm/N88DN2C39CIspPDz8Wmfowc+MW3Gfy/jPREF83PAecE4QtZON3iptSNAWO2devdvq7868e9YWALjR9/ev9NzGndSc+BOp/zNhAVFpmOsXIwTIb+sgnH5kfVF3Lmeu9khjCLARw0XLp2O7YX7l9jM=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4581.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199018)(83380400001)(4326008)(8676002)(66476007)(66946007)(66556008)(41300700001)(31686004)(86362001)(2906002)(8936002)(2616005)(38100700002)(36916002)(316002)(7416002)(5660300002)(31696002)(478600001)(6486002)(186003)(6666004)(6512007)(54906003)(36756003)(6506007)(53546011)(26005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?MGtJTjZDRWU4ZmkrZXNucHphTHk1Zkx5T0E5ZGdKV1NLVWxqVHViK29lWitm?=
 =?utf-8?B?N2xNVDFYQll2bldicEx3VVRmWWR3ay92MGFwalFVbkN4WGttdnpTdERhWm5N?=
 =?utf-8?B?ZFp3THNWWlpJWUk1aXJEUjdSd3hTc0VKRHNWMGVGaTkwSjU2Tkh0WUNRL1Zt?=
 =?utf-8?B?V2RMNTRIMGNleVh3RXE1emZnZkM3UWtWMnRGTjVoQm9rRkVQN2w5UUJHajdE?=
 =?utf-8?B?cWluYkVJamZWbkdQL2p2dGc5d2pTNHpXK3VjWHVBOFUrS1lVWTltTFVtSnFl?=
 =?utf-8?B?ZklMNHR2UzFNUmxualZHUXBsWXpNK3d1YVczaEpDai9NejE0SGQ1dVFyWEhh?=
 =?utf-8?B?Vk1BSjZERG5raDlOazVSTVpZdXdOQWtyN0dPaVJJUmxqNDdMS3BKUGpiVkZH?=
 =?utf-8?B?bk9wSU4vT2xNTGRnZGQ3N1BSd00xTGptRHRqRDgra2REVVlBMFI2Z0J0bXBP?=
 =?utf-8?B?OHBjNEI0TGw1b2s4bEFQQk0wRzRwa3JrY1hJb2Joc3ZVVTBjQm1xcWU1K0Ri?=
 =?utf-8?B?TnEvS3B5ckNpKytHcU1OVU9mcUJEWFpJWC9hRHVTVmxJTlIxMnFGZXFvYVlJ?=
 =?utf-8?B?aXVPZEV0ZkZJamttQzBlWjhIMmo4anBUU1EzanpaTDk3bDJva2JQOGZ3REIw?=
 =?utf-8?B?N1AxU0pmSEJrekwybm5HN2xQeUROamhtOTVKR2MrSHRRcGZORFhJNXAxK3kx?=
 =?utf-8?B?WUljWUx1RG1lV0Y5VC9pNEExbFY4K1hhUDV5dWs5K3kzVHFVc1UzYzZIS0ZG?=
 =?utf-8?B?cUZPVWpjNWtJS2ROVmhOejNVRzBEeFJmQ0tkQVBpOFh1WWE4NWg0d1Nmd1k2?=
 =?utf-8?B?U1VCRzRkcThweFRzVU9vOTJzN0hZemQ0UWd0OWY4dmR0aVZPaitGWHMyeC9V?=
 =?utf-8?B?SnlrZW0wcVZnSjNVQUsrN1h3TGRLamw5WEFtb0hpYWkxWTFyczdTVm8wcXVx?=
 =?utf-8?B?S1NyL0JLWUxXNnFic1RVVHE3RlQxdGc5QWt5M3Ara0RNMTgrT3kzVlpuU2Q1?=
 =?utf-8?B?aG1XbUlvbXE0MzJsOVZTSkZvMlZvdHpVNHJBbmhVZXgxS29XNVVzbjZVNDRL?=
 =?utf-8?B?czV1YVA1M0l1SEIrS0lRbldjYlhxalFqQiszeUhOOXpkRWh3UTVTL3NLd2g5?=
 =?utf-8?B?UWljUElaa0VCWkxudlBGa2Z1ZWtBNkcvdHhMamZCTE9JSENVYm45cjJaSGFr?=
 =?utf-8?B?c0hza1U4NWZkdWM1eGNUWVhqYVdjeVlCaDl3Q3FxcVZlLytsNkhjdTdGdjJx?=
 =?utf-8?B?ZU85Q0ZSeDdlWUd0cEpRd281anpmdDU5dUdlQzVsYTFSMks4aU5Bdk56NnJt?=
 =?utf-8?B?MS9zcVJvVEVZYWszcjFMVElraFYyK1IxZFFyeFBDWUVYSVNoT2diY3lYbDZQ?=
 =?utf-8?B?bW9aRHZ1ay9TQk9QVVlzalBRSGhvc1k3b1g5L1IrMWFRQWYycHVvRzlvaEtX?=
 =?utf-8?B?Y3h4TmV6TDdBUFVXZm1YeHNreTArelZsa0FSb3pqd2JKSW9tVDFmYzJ0eEdj?=
 =?utf-8?B?OFZ4M3ZnL0FaRFZYWlkzb3FYTnlNTnVwbXhVV1hudXFzWkVJbjZVQW9QKzRa?=
 =?utf-8?B?cTltclZEVUhvWTRFNHZtVFdSaktpaE4yaHBDeE4rTytpYk80N2cyNkptdDNB?=
 =?utf-8?B?ZXZGZVBYQnlRQ1FqcWRzWmd4WFh0RVJURTdaVnNYRG1lak1CVm9pK3ZBNUdQ?=
 =?utf-8?B?ZllqZGZxQmlVcW1Teno5SEg3UjhSeWt4S0N2Q1hRK3lrRlJTZm1xZlU1Smsz?=
 =?utf-8?B?cjhYOFl4VXcyalhWQUlGMWo3dmswTXlpRnl4UHk5azVpUVIrZGtHRkVicVl3?=
 =?utf-8?B?bnJUNXF4RmZaWiswL2lwd0dadUZKVjRmdFkxbUoweng4ZkJBbmt2bWQyd2tH?=
 =?utf-8?B?cnNsZTB0VHN0RjFvUjVQYUhTM3JjK3Y3S3NubnAwTVozMVNWclUrOC9zY0Iy?=
 =?utf-8?B?OFZzRjNUZUp0YVgzTit0UjQ4NGFuTFNqa3JFTjZCb0Y0ODE5TUVta3RpQ1JB?=
 =?utf-8?B?MHZSTkI0Y2ZyZ2hSczFsT20wSW1Yd3hoMlNYeEtrSkdGcGpCc1Zhb1lnMEgv?=
 =?utf-8?B?QkRhZUhCQ3ZYSExwT2Z2bi9PVmhNUDF4L01mVEQ1SDEwSzBQVW9Wa2dMK0s5?=
 =?utf-8?B?S3FoaG81RFlnbFZZa2ZIK3p3WE0reGlzWDVaaVJqYjd3N0F0bUVhdmoyQWlW?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 	=?utf-8?B?elVaV3F4YTJ2R1g5dzk0L2xpV1gxb214TG9OK2NKblpoSHI3SjN4WGJDTC9L?=
 =?utf-8?B?enlMbWdPOU1RRUNxcWsyVk1QVThZanJGZXgzMnMydmZ6aVpzaDBUSlcrUS85?=
 =?utf-8?B?bjBJcis5eXFuWENmVnRBWGhjNVUxM2ZLUnJQMTZQdXJ4RGlzU3BaVlFhOHho?=
 =?utf-8?B?eW9TZmorYmM2VkU5RFU2RHdqdVoxVnFWZm1NL3dJUnp5ZGw2N1RRRnpPVzRo?=
 =?utf-8?B?dDdlMzZ2OExud0V2VHQ0c2JzQnVuUWRaSjYrTmNiVndPa2ZlY2FLZE5aQTNn?=
 =?utf-8?B?RkFJQnBlNzlsTEdJcWlWUU5ZODNVdmN3TnRjb1pVSUI0YThMK0NqN3E0MVJC?=
 =?utf-8?B?ejFab3pHVU1rS1UxcmpSTHJ3bmlKUnppeXlRS1BkVDNUcERTWFF4YmY4aEl1?=
 =?utf-8?B?Zjgra1dyZXczTXh4YmNMbDBldWJhb0ZCbzBuNCsvaUI4NE5ISng2eHVidkZG?=
 =?utf-8?B?SlBWTnRiYXZoZlM1bzNjVXZZcm1FQ1RJQk1weW8wdEZOVlk3MXpPb3JjQnlE?=
 =?utf-8?B?bWdsaVhXNi9PSHcvaXQyOThKUWJQSWZ1SitQM0FwRitCVTl5anpDU3VyNzVV?=
 =?utf-8?B?SVdvTnRlUnMrY2k4L1BIdFpBUlMxejNpV2EyZHB6aW1iU3AwaE9ndktwRWtF?=
 =?utf-8?B?cHZnQTVmcUo1SmY4b1FjSGhpbXpodW5DTHIxaElMTzIwM3JTRU11RXRQS2tw?=
 =?utf-8?B?dWQ1SGFMdzlsVVRVYWVIUVhjd28yZ0gvUXRZd3l3UmJNeXcvMVExNy8yT1hG?=
 =?utf-8?B?TXRJMHhDT0Nnb0lvT0poWnpPN0haR25rVmZoODJpQkJpK0dHa3U0OWtwcFpF?=
 =?utf-8?B?bUwrclVoRmxJdXVaSVdyMGJoR2VEOUJRK3Z2UlYyOEdqd3lveWErYjJXWFFX?=
 =?utf-8?B?RExObUM2U1BqS054QUxXTmRDWlFNaW94V05wWHE5U0FVRDN1MmJkek1kTS9N?=
 =?utf-8?B?S25iU2JuL2xnTWJrcHU3TTBwN29zR0t4UFROWDZ5U3h3TTl0K3M5ZHk3aFRM?=
 =?utf-8?B?dDRvZHJMdy9Hait5ck05Mk5HczlzT05ydUJ5djZHQXB4bUdwL2RRNWljcUNy?=
 =?utf-8?B?c0N5eEpMWHhkMHdDSlNTaVVTMDd4Y242LzQwb3pjOFdyZTNWd25xMk1QNG1k?=
 =?utf-8?B?eDJrN1kzS2lSdEV6eWsvTjFMdEUvSis2a1JlRXErZGFRV3pJdkJsVE1mQzhJ?=
 =?utf-8?B?TVh4NjVXSkhDNjlVUFcyYXFRdEsrNHJVUHZpa2tMaVhWdkx6UjAxbzh0SHVY?=
 =?utf-8?B?TC84NExwd0tSOHB5T3hOa1VxK2xQazlHUUttMGVmc0lyb1dqaGpZZFFhb1gv?=
 =?utf-8?B?WlA5ZFczcFRHcDFWS0ZkdmFkYnA5S3NHMVZnaEV3eUI1SFJKaThvNW95azI4?=
 =?utf-8?B?WXFqYUt5OWszdTYyNUFzSXozTkhNWlZaUE5DRUNkRW5ZRW16dk5DVU1QdjVT?=
 =?utf-8?B?U2NsWTNjU3laVTNtQnFrZ1doSFJ5TlZQRWh3eDlsVlRGajJZVytnc2xDR0Zq?=
 =?utf-8?B?L1U2U3B3eTN5Wm55M2ZTOFJ2Rk11cVFhMzFLclBJUm9VZEJIT3p6ajdubTVL?=
 =?utf-8?Q?nlc1auvT26zfRf6YBZFQvSXIE=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9594593c-2fce-4b33-382d-08db00427d9a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4581.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2023 08:42:58.1125
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KWzOiwHFbwVIZX8ivaU1Uk/w1j760ko0Ls0QVndnjFsGPximkhEWl4+NdjT89IG7M4gi+t+nKkw8N7KAdDheLACV3pA98U0WK96PL0l/TbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB5701
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-27_04,2023-01-27_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 malwarescore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2301270081
X-Proofpoint-GUID: rZrlxRNkDu7oAaFT6eH9hIBVJaQ9xNYy
X-Proofpoint-ORIG-GUID: rZrlxRNkDu7oAaFT6eH9hIBVJaQ9xNYy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_004323_192727_554D90A3 
X-CRM114-Status: GOOD (  18.90  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

IMKgIERUQ8KgwqDCoMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMveGlsaW54L3p5bnFtcC16YzE3NTEt
eG0wMTYtZGMyLmR0YgouLi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUu
ZHRzaTo0NjAuMy01MjogV2FybmluZyAKKHBjaV9kZXZpY2VfcmVnKTogL3BjaWVAZjgwMDAwMDAv
cGNpZUAwLDA6cmVnOiBQQ0kgcmVnIGFkZHJlc3MgaXMgbm90IApjb25maWd1cmF0aW9uIHNwYWNl
CiDCoCBEVEMgYXJjaC9hcm02NC9ib290L2R0cy9hbWxvZ2ljL21lc29uLWd4bS1zOTEyLWxpYnJl
dGVjaC1wYy5kdGIKLi4vYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LmR0
c2k6NDYwLjMtNTI6IFdhcm5pbmcgCihwY2lfZGV2aWNlX3JlZyk6IC9wY2llQGY4MDAwMDAwL3Bj
aWVAMCwwOnJlZzogUENJIHJlZyBhZGRyZXNzIGlzIG5vdCAKY29uZmlndXJhdGlvbiBzcGFjZQog
wqAgSERSSU5TVCB1c3IvaW5jbHVkZS9saW51eC9haW9fYWJpLmgKIMKgIEhEUklOU1QgdXNyL2lu
Y2x1ZGUvbGludXgvYW00Mzd4LXZwZmUuaAouLi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1ncnUuZHRzaTo0NjAuMy01MjogV2FybmluZyAKKHBjaV9kZXZpY2VfcmVnKTogL3Bj
aWVAZjgwMDAwMDAvcGNpZUAwLDA6cmVnOiBQQ0kgcmVnIGFkZHJlc3MgaXMgbm90IApjb25maWd1
cmF0aW9uIHNwYWNlCiDCoCBEVEPCoMKgwqDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3hpbGlueC96
eW5xbXAtemMxNzUxLXhtMDE3LWRjMy5kdGIKCgpUaGFua3MsCgpBbG9rCgpPbiAxLzI2LzIwMjMg
NzoyMCBQTSwgUmljayBXZXJ0ZW5icm9layB3cm90ZToKPiBBZGRlZCBtaXNzaW5nIFBDSWUgZW5k
cG9pbnQgY29udHJvbGxlciBlbnRyeSBpbiB0aGUgZGV2aWNlIHRyZWUuIFRoaXMKPiBlbnRyeSBp
cyBkb2N1bWVudGVkIGluIDoKPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNp
L3JvY2tjaGlwLXBjaWUtZXAudHh0Cj4gVGhlIHN0YXR1cyBpcyBkaXNhYmxlZCBieSBkZWZhdWx0
LCBzbyBpdCB3aWxsIG5vdCBiZSBsb2FkZWQgdW5sZXNzCj4gZXhwbGljaXRseSBjaG9zZW4gdG8u
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBSaWNrIFdlcnRlbmJyb2VrIDxyaWNrLndlcnRlbmJyb2VrQGdt
YWlsLmNvbT4KPiAtLS0KPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0
c2kgfCAyNSArKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNSBp
bnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kK
PiBpbmRleCA5ZDViMGU4YzkuLjVmNzI1MTExOCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTkuZHRzaQo+IEBAIC0yNjUsNiArMjY1LDMxIEBAIHBjaWUwX2ludGM6IGlu
dGVycnVwdC1jb250cm9sbGVyIHsKPiAgIAkJfTsKPiAgIAl9Owo+ICAgCj4gKwlwY2llMF9lcDog
cGNpZS1lcEBmODAwMDAwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktcGNp
ZS1lcCI7Cj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4gKwkJI3NpemUtY2VsbHMgPSA8Mj47
Cj4gKwkJcm9ja2NoaXAsbWF4LW91dGJvdW5kLXJlZ2lvbnMgPSA8MzI+Owo+ICsJCWNsb2NrcyA9
IDwmY3J1IEFDTEtfUENJRT4sIDwmY3J1IEFDTEtfUEVSRl9QQ0lFPiwKPiArCQkJPCZjcnUgUENM
S19QQ0lFPiwgPCZjcnUgU0NMS19QQ0lFX1BNPjsKPiArCQljbG9jay1uYW1lcyA9ICJhY2xrIiwg
ImFjbGstcGVyZiIsCj4gKwkJCQkiaGNsayIsICJwbSI7Cj4gKwkJbWF4LWZ1bmN0aW9ucyA9IC9i
aXRzLyA4IDw4PjsKPiArCQludW0tbGFuZXMgPSA8ND47Cj4gKwkJcmVnID0gPDB4MCAweGZkMDAw
MDAwIDB4MCAweDEwMDAwMDA+LCA8MHgwIDB4ZmEwMDAwMDAgMHgwIDB4MjAwMDAwMD47Cj4gKwkJ
cmVnLW5hbWVzID0gImFwYi1iYXNlIiwgIm1lbS1iYXNlIjsKPiArCQlyZXNldHMgPSA8JmNydSBT
UlNUX1BDSUVfQ09SRT4sIDwmY3J1IFNSU1RfUENJRV9NR01UPiwKPiArCQkJPCZjcnUgU1JTVF9Q
Q0lFX01HTVRfU1RJQ0tZPiwgPCZjcnUgU1JTVF9QQ0lFX1BJUEU+ICwKPiArCQkJPCZjcnUgU1JT
VF9QQ0lFX1BNPiwgPCZjcnUgU1JTVF9QX1BDSUU+LCA8JmNydSBTUlNUX0FfUENJRT47Cj4gKwkJ
cmVzZXQtbmFtZXMgPSAiY29yZSIsICJtZ210IiwgIm1nbXQtc3RpY2t5IiwgInBpcGUiLAo+ICsJ
CQkJInBtIiwgInBjbGsiLCAiYWNsayI7Cj4gKwkJcGh5cyA9IDwmcGNpZV9waHkgMD4sIDwmcGNp
ZV9waHkgMT4sIDwmcGNpZV9waHkgMj4sIDwmcGNpZV9waHkgMz47Cj4gKwkJcGh5LW5hbWVzID0g
InBjaWUtcGh5LTAiLCAicGNpZS1waHktMSIsICJwY2llLXBoeS0yIiwgInBjaWUtcGh5LTMiOwo+
ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGluY3RybC0wID0gPCZwY2llX2Ns
a3JlcW5iX2NwbT47Cj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCX07Cj4gKwo+ICAgCWdt
YWM6IGV0aGVybmV0QGZlMzAwMDAwIHsKPiAgIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMz
OTktZ21hYyI7Cj4gICAJCXJlZyA9IDwweDAgMHhmZTMwMDAwMCAweDAgMHgxMDAwMD47CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
