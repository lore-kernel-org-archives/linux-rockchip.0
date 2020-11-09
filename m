Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE3FC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 12:39:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C997920659
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 12:39:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MpvghLc0";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=suse.com header.i=@suse.com header.b="Sp0FCcym"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C997920659
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=suse.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=khbeYBe86ty+MG5UzE4ejfqtY70KhlPwePXTx9g1hlY=; b=MpvghLc0TOw2f8xA7E2CVeZjs
	II+D/xBKdf/aUFK8gejNTHAvCqe+s4kLRS5qlR08oumoyQFV9SxkIRjlOzw6YK+Soa8tYxFphp2GD
	hH4/9I3KirRMAHvaM8QbEr7K+FI+90ezCv7kckF2Dy1voaNHhhMIJUer9WH9sZusWhKKgIOpyxvwV
	QNvChechoW9rQoYJ3IrAHCwOIH1bGpPH9oKLZDQroYGQBSEOXiPBYiT4Hp49lzmYvsGh8Cpv/n5L8
	FPsVH7g30KRgdDPPX/AEJyTiD7STFqA0VqaprEpxAtZdY0D1etBXw/fGyqncV41xLWgbD06x1gLi9
	NdvKi7ucw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kc6Rz-0004pR-7F; Mon, 09 Nov 2020 12:39:11 +0000
Received: from de-smtp-delivery-52.mimecast.com ([51.163.158.52])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc6Rv-0004np-LI
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 12:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1604925543;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=FaiMvJHCHm6rmzLKEIItXmgXqQ98HYUDsUCaABJOiCg=;
 b=Sp0FCcym6sOxJmrrNcYe0QeqaiawqxJCz6PqQampbtqF33vZwrxiSWn1uFZ/dl32ziCMwS
 UgYLLAbDExnVpMmaWCYwv8FUPsVkbJKfgGdKMEVBjHTDtUPECLk5wIStJcYEglV/whCmNt
 Oa5swvFLHzlRmt22XkDkOEDClz0VY5k=
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2059.outbound.protection.outlook.com [104.47.13.59]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-23-c6TN2BnPNsiyfzDOgYW2PA-1; Mon, 09 Nov 2020 13:39:01 +0100
X-MC-Unique: c6TN2BnPNsiyfzDOgYW2PA-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TI84PYtwOYvE4Mxyq/lXK2kAipZ9ohe4n/EC7s3ClYRiscsRMjX3BzBzrktt3JaHi0ICwL0dnIZZ5uB9bFsaMjiTATWTJjo06gyA4TszgrGkwONodb1g358on1oLq+H7j72n12hxQD0YpLKuEWrgj0o/Rw9vDVPqXSObg2f98gzc8/Ai9OKvPRvoc9DL5HqnPFj0/scaQxJsFDenXGLyyyUTQYeFlS5FpfWoKA7v4K+00YI/pYE1pfX8q1/qr61xtQKGuGrjdGw7aB0JmvUHDTtcVdlsxLtduWQvIKiJPjLOCvhMlhHKekIE9Zt2/0nvTvLR/9CXvihyZ1W2yjQZXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5FG4KgDZzT1PhUlSpIEocihGwpg3SxvNxERZNAcu1G4=;
 b=msWEnufbJI0nyIeX/HMQiJx4XImygXn5+lD7rhlRR3tZnf1mf3Dva2OheMgOYa9phWijd6U8BFbY0Izy1Wev8cdr4dgHTGDTQBbXOTh98PkTeWpor7qlrQpt5NtdwKeQl9J4WFlpjnOibSuamt/BNiZJxE9vpr8u23i6/jfFE/xNZs5OSJT4gvwiYfzyRjf5qicnsp33g9SkR8NLiVFueG8MZbRsmhPs1qRtx8yTr6d8YQRuKaDMYDES92F/Riy8HjpLDXtqa6AtemOrQZ+pDH9kG+oQ84xddKsIikVKBhTSijmtPDIUVCBjb7UISxNCN2l9zeoHnFjmA0iVdh/S/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=suse.com;
Received: from PA4PR04MB7533.eurprd04.prod.outlook.com (2603:10a6:102:f1::19)
 by PR3PR04MB7306.eurprd04.prod.outlook.com (2603:10a6:102:81::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21; Mon, 9 Nov
 2020 12:39:00 +0000
Received: from PA4PR04MB7533.eurprd04.prod.outlook.com
 ([fe80::545:8a04:2a5c:f4c7]) by PA4PR04MB7533.eurprd04.prod.outlook.com
 ([fe80::545:8a04:2a5c:f4c7%6]) with mapi id 15.20.3541.025; Mon, 9 Nov 2020
 12:39:00 +0000
Subject: Re: [PATCH 1/2] PCI: rockchip: Make some regulators non-optional
To: Robin Murphy <robin.murphy@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <20191120170532.GC3279@e121166-lin.cambridge.arm.com>
 <e8a91353-49ab-7581-f2a8-b8b4729072bf@suse.com>
 <4885f7f6-f71e-7d07-6096-7eb061001815@arm.com>
 <b96b1149-d2fd-c131-c329-3e1c0cf3689d@suse.com>
 <510f7f70-f6cf-0a5f-4aef-500619f237f2@suse.com>
 <74abf5b6-4595-fc72-6029-e4475fef1a1f@arm.com>
From: Qu Wenruo <wqu@suse.com>
Autocrypt: addr=wqu@suse.com; keydata=
 mQENBFnVga8BCACyhFP3ExcTIuB73jDIBA/vSoYcTyysFQzPvez64TUSCv1SgXEByR7fju3o
 8RfaWuHCnkkea5luuTZMqfgTXrun2dqNVYDNOV6RIVrc4YuG20yhC1epnV55fJCThqij0MRL
 1NxPKXIlEdHvN0Kov3CtWA+R1iNN0RCeVun7rmOrrjBK573aWC5sgP7YsBOLK79H3tmUtz6b
 9Imuj0ZyEsa76Xg9PX9Hn2myKj1hfWGS+5og9Va4hrwQC8ipjXik6NKR5GDV+hOZkktU81G5
 gkQtGB9jOAYRs86QG/b7PtIlbd3+pppT0gaS+wvwMs8cuNG+Pu6KO1oC4jgdseFLu7NpABEB
 AAG0GFF1IFdlbnJ1byA8d3F1QHN1c2UuY29tPokBTQQTAQgAOAIbAwULCQgHAgYVCAkKCwIE
 FgIDAQIeAQIXgBYhBC3fcuWlpVuonapC4cI9kfOhJf6oBQJdnDWhAAoJEMI9kfOhJf6oZgoH
 90uqoGyUh5UWtiT9zjUcvlMTCpd/QSgwagDuY+tEdVPaKlcnTNAvZKWSit8VuocjrOFbTLwb
 vZ43n5f/l/1QtwMgQei/RMY2XhW+totimzlHVuxVaIDwkF+zc+pUI6lDPnULZHS3mWhbVr9N
 vZAAYVV7GesyyFpZiNm7GLvLmtEdYbc9OnIAOZb3eKfY3mWEs0eU0MxikcZSOYy3EWY3JES7
 J9pFgBrCn4hF83tPH2sphh1GUFii+AUGBMY/dC6VgMKbCugg+u/dTZEcBXxD17m+UcbucB/k
 F2oxqZBEQrb5SogdIq7Y9dZdlf1m3GRRJTX7eWefZw10HhFhs1mwx7kBDQRZ1YGvAQgAqlPr
 YeBLMv3PAZ75YhQIwH6c4SNcB++hQ9TCT5gIQNw51+SQzkXIGgmzxMIS49cZcE4KXk/kHw5h
 ieQeQZa60BWVRNXwoRI4ib8okgDuMkD5Kz1WEyO149+BZ7HD4/yK0VFJGuvDJR8T7RZwB69u
 VSLjkuNZZmCmDcDzS0c/SJOg5nkxt1iTtgUETb1wNKV6yR9XzRkrEW/qShChyrS9fNN8e9c0
 MQsC4fsyz9Ylx1TOY/IF/c6rqYoEEfwnpdlz0uOM1nA1vK+wdKtXluCa79MdfaeD/dt76Kp/
 o6CAKLLcjU1Iwnkq1HSrYfY3HZWpvV9g84gPwxwxX0uXquHxLwARAQABiQE8BBgBCAAmAhsM
 FiEELd9y5aWlW6idqkLhwj2R86El/qgFAl2cNa4FCQlqTn8ACgkQwj2R86El/qhXBAf/eXLP
 HDNTkHRPxoDnwhscIHJDHlsszke25AFltJQ1adoaYCbsQVv4Mn5rQZ1Gon54IMdxBN3r/B08
 rGVPatIfkycMCShr+rFHPKnExhQ7Wr555fq+sQ1GOwOhr1xLEqAhBMp28u9m8hnkqL36v+AF
 hjTwRtS+tRMZfoG6n72xAj984l56G9NPfs/SOKl6HR0mCDXwJGZAOdtyRmqddi53SXi5N4H1
 jWX1xFshp7nIkRm6hEpISEWr/KKLbAiKKbP0ql5tP5PinJeIBlDv4g/0+aGoGg4dELTnfEVk
 jMC8cJ/LiIaR/OEOF9S2nSeTQoBmusTz+aqkbogvvYGam6uDYw==
Message-ID: <59dcb8d4-59c8-17b9-1891-9b3d1989a204@suse.com>
Date: Mon, 9 Nov 2020 20:38:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <74abf5b6-4595-fc72-6029-e4475fef1a1f@arm.com>
Content-Language: en-US
X-Originating-IP: [149.28.201.231]
X-ClientProxiedBy: SJ0PR13CA0164.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::19) To PA4PR04MB7533.eurprd04.prod.outlook.com
 (2603:10a6:102:f1::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [0.0.0.0] (149.28.201.231) by
 SJ0PR13CA0164.namprd13.prod.outlook.com (2603:10b6:a03:2c7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.10 via Frontend
 Transport; Mon, 9 Nov 2020 12:38:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ee73908-7a62-44ac-5d5f-08d884ac6eb4
X-MS-TrafficTypeDiagnostic: PR3PR04MB7306:
X-Microsoft-Antispam-PRVS: <PR3PR04MB7306ABCA716C4C04012343B5D6EA0@PR3PR04MB7306.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XPftjwGuNHShg4wO2dcb9ggweavx1ljB0QHvNyzid+Gtt6i9fb8uH10fuVmIuy4c5Z5krm6RuSGnhPJhKYL/+uJn5fZW1qura5/rrS9myu6X/HEfiOtJiPX0q8pC7fwSSoSG0U37wEP+jyQ53iL0S9py/F5BXYBTAFHJQq6C1X30zHCrS3W5s8wyC7P2rVplC/lvaUHQw7BqLK4bCXPK6FbNYTg9Tskl4RotOGbUd4xshAfZDdJ7EjpIWOll+4p4gO6rjiS8gztY0KF13qsp7NFqwEdqXqK8cTfSz45MvxkYrlbWzVmW7NV9N6SSD8u304t1MtJ7nHBXdgfaKQwbiye4+0/cUnUo7Y7vDl3FEE1Y6OeT/yaCVw2tUPPex70Wm/CZ53e6TsmhqmXQPWZafw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PA4PR04MB7533.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(346002)(366004)(136003)(396003)(110136005)(2906002)(53546011)(8676002)(8936002)(16576012)(31696002)(86362001)(956004)(66556008)(478600001)(316002)(2616005)(66476007)(6666004)(16526019)(31686004)(66946007)(52116002)(83380400001)(186003)(26005)(5660300002)(7416002)(36756003)(6706004)(4326008)(6486002)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 44JfBPE7iHY5WgkcZUmBOZXhORJxOgC0jsmKW5HzvUg/tvwxJAC13NhCxAc6mr3nyS9AUhxMgTMcrheBy2+GKs9bZh48NOvgOraMUi/5L/UWWa9duOFRXHjBlitviHbd0evNwPyrUTlW9VNmFy1xuTB1s39ELKS2BU4eZ2k8Ffc7AhtXgTsxRxoombQVdohL/Ahp81pvf8CE5j+dO3fWOru4bpyEoI5Oo6j5J+w9456mjYYlEg81g/rRG84kgp4DUd39RFeIdGGqq6S3H1KPnqcuqej93vL/TrmSl0ouWYRVZQ64CXrdjZPvHwp+FHBe/MmNNVcd9lwp4yE3/1xQQu7i8SUALIu5IW8/v75bRARmaTb9NbrrmjuryYLXf3+SIqjk+PAN1zfp99qfgIosh73114pCgsxf5dv1H/Cno7Ov2XvQ/VuDxL4IM6rpcZAna5lacGMA1FVv8/x9//gbnQdhPIwVdrjMtO39Qok6Br0UZS52oTs7pxvA1l6G4hYUu2atzCn00rsvkMzwhsrv8gxA8YsMSv/DvdjPfwcSEL/Oi3q8lhbOFclDSdrXZe37BMha6/6bKqQZIExsaCIi8J0BQ6iqEgMGCeWPkxwgzaSLU/vjgYM+p+hhYCelizo5z7wE/8RLNoIRBPphSxr7cQ==
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ee73908-7a62-44ac-5d5f-08d884ac6eb4
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7533.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2020 12:39:00.2168 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zITup+Z0nYzo8NUavm2mtqce0BF5D0CY9rnDv9hs80LZr70zNgCu3RU7FdLy4QLG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7306
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_073907_910165_5264D619 
X-CRM114-Status: GOOD (  27.67  )
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
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, broonie@kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAyMDIwLzExLzkg5LiL5Y2IODowMCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjAt
MTEtMDcgMTM6MzAsIFF1IFdlbnJ1byB3cm90ZToKPj4KPj4KPj4gT24gMjAyMC8xMS83IOS4i+WN
iDg6NTQsIFF1IFdlbnJ1byB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gMjAyMC8xMS83IOS4i+WNiDg6
NDcsIFJvYmluIE11cnBoeSB3cm90ZToKPj4+PiBPbiAyMDIwLTExLTA3IDExOjM2LCBRdSBXZW5y
dW8gd3JvdGU6Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IE9uIDIwMTkvMTEvMjEg5LiK5Y2IMTowNSwgTG9y
ZW56byBQaWVyYWxpc2kgd3JvdGU6Cj4+Pj4+PiBPbiBTYXQsIE5vdiAxNiwgMjAxOSBhdCAxMjo1
NDoxOVBNICswMDAwLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+Pj4+Pj4gVGhlIDBWOSBhbmQgMVY4
IHN1cHBsaWVzIHBvd2VyIHRoZSBQQ0llIGJsb2NrIGluIHRoZSBTb0MgaXRzZWxmLCBhbmQKPj4+
Pj4+PiBhcmUgdGh1cyBmdW5kYW1lbnRhbCB0byBQQ0llIGJlaW5nIHVzYWJsZSBhdCBhbGwuIEFz
IHN1Y2gsIGl0IG1ha2VzCj4+Pj4+Pj4gc2Vuc2UgdG8gdHJlYXQgdGhlbSBhcyBub24tb3B0aW9u
YWwgYW5kIHJlbHkgb24gZHVtbXkgcmVndWxhdG9ycyBpZgo+Pj4+Pj4+IG5vdCBleHBsaWNpdGx5
IGRlc2NyaWJlZC4KPj4+Pj4+Pgo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFJvYmluIE11cnBoeSA8
cm9iaW4ubXVycGh5QGFybS5jb20+Cj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4gwqDCoCBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIHwgNjkKPj4+Pj4+PiArKysrKysrKy0t
LS0tLS0tLS0tLS0KPj4+Pj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCsp
LCA0NCBkZWxldGlvbnMoLSkKPj4+Pj4+Cj4+Pj4+PiBBcHBsaWVkIHRvIHBjaS9yb2NrY2hpcCwg
dGhhbmtzLgo+Pj4+Pgo+Pj4+PiBTb3JyeSwgdGhpcyBjb21taXQgaXMgY2F1c2UgcmVncmVzc2lv
biBmb3IgUkszMzk5IGJvYXJkcyB1bmFibGUgdG8KPj4+Pj4gZGV0ZWN0IHRoZSBjb250cm9sbGVy
IGFueW1vcmUuCj4+Pj4+Cj4+Pj4+IFRoZSAxdjggKGFuZCAwdjkpIGlzIGNhdXNpbmcgLTUxNyBh
bmQgcmVqZWN0IHRoZSBjb250cm9sbGVyCj4+Pj4+IGluaXRpYWxpemF0aW9uLgo+Pj4+Cj4+Pj4g
VGhhdCdzIC1FUFJPQkVfREVGRVIsIHdoaWNoIG11c3QgbWVhbiB0aGF0IGEgcmVndWxhdG9yICpp
cyogZGVzY3JpYmVkLAo+Pj4+IGJ1dCB5b3UncmUgbWlzc2luZyB0aGUgcmVsZXZhbnQgZHJpdmVy
IC0gdGhhdCdzIGFuIGlzc3VlIHdpdGggeW91cgo+Pj4+IGNvbmZpZy9pbml0cmQuIEJlaW5nIG9w
dGlvbmFsIHNob3VsZCBvbmx5IGNoYW5nZSB0aGUgYmVoYXZpb3VyIGlmIHRoZQo+Pj4+IHN1cHBs
eSBpcyB0b3RhbGx5IGFic2VudCAoaS5lLiB5b3UgZ2V0IC1FTk9ERVYgaW5zdGVhZCBvZiBhIGR1
bW15Cj4+Pj4gcmVndWxhdG9yKSwgc28gSSBkb24ndCBzZWUgdGhhdCBpdCB3b3VsZCBtYWtlIGFu
eSBkaWZmZXJlbmNlIGluIHRoaXMKPj4+PiBzaXR1YXRpb24gYW55d2F5IDovCj4+Pj4KPj4+Pj4g
SSdtIG5vdCBhIFBDSSBndXksIGJ1dCBhIHF1aWNrIGdvb2dsZSBzZWFyY2ggc2hvd3MgdGhlc2Ug
dHdvIHZvbHRhZ2VzCj4+Pj4+IGFyZSBub3QgcmVsYXRlZCB0byBQQ0lFIGNvcmUgZnVuY3Rpb25h
bGl0eSwgZXNwZWNpYWxseSBjb25zaWRlcmluZyB0aGUKPj4+Pj4gY29udHJvbGxlciB1c2VkIGlu
IFJLMzM5OSBhcmUgbW9zdGx5IHRvIHByb3ZpZGUgTlZNRSBzdXBwb3J0Lgo+Pj4+Cj4+Pj4gVW5s
aWtlIHRoZSAxMlYgYW5kIDNWMyBzdXBwbGllcyB0byB0aGUgc2xvdCwgdGhlc2Ugc3VwcGxpZXMg
YXJlIHRvIHRoZQo+Pj4+IFBDSUVfQVZERF8wVjkgYW5kIFBDSUVfQVZERF8xVjggcGlucyBvbiB0
aGUgU29DIGl0c2VsZiwgd2hpY2ggdGhlCj4+Pj4gZGF0YXNoZWV0IGRlc2NyaWJlIGFzICJTdXBw
bHkgdm9sdGFnZSBmb3IgUENJRSIuIEhhdmluZyBwb3dlciBpcwo+Pj4+IGtpbmQgb2YKPj4+PiBp
bXBvcnRhbnQgZm9yIHRoZSBJL08gY2lyY3VpdHMgb24gYWxsIHRoZSBzaWduYWwgcGlucyB0byB3
b3JrLgo+Pj4+Cj4+Pj4gTm93IGl0J3MgYWxtb3N0IGNlcnRhaW5seSB0cnVlIHRoYXQgdGhlc2Ug
c3VwcGxpZXMgdGVjaG5pY2FsbHkKPj4+PiBiZWxvbmcgdG8KPj4+PiB0aGUgcGh5IHJhdGhlciB0
aGFuIHRoZSBjb250cm9sbGVyLCBidXQgaXQncyBhIGJpdCBsYXRlIHRvIGNoYW5nZSB0aGUKPj4+
PiBiaW5kaW5ncyBmb3IgdGhlIHNha2Ugb2Ygc2VtYW50aWNzLgo+Pj4+Cj4+Pj4+IFRoaXMgYnVn
IG1ha2VzIGFsbCBSSzMzOTkgdXNlcnMgd2hvIHB1dCByb290IGZzIGludG8gTlZNRSBkcml2ZXIK
Pj4+Pj4gdW5hYmxlCj4+Pj4+IHRvIGJvb3QgdGhlIGRldmljZS4KPj4+Pj4KPj4+Pj4gSSByZWFs
bHkgaG9wZSBzb21lIG9uZSBjb3VsZCB0ZXN0IHRoZSBwYXRjaCBiZWZvcmUgYWZmZWN0aW5nIHRo
ZSBlbmQKPj4+Pj4gdXNlcnMgb3IgYXQgbGVhc3QgdHJ5IHRvIHVuZGVyc3RhbmQgaG93IG1vc3Qg
dXNlcnMgd291bGQgdXNlIHRoZSBQQ0lFCj4+Pj4+IGludGVyZmFjZSBmb3IuCj4+Pj4KPj4+PiBJ
ICphbSogdGhhdCBlbmQgdXNlciBpbiB0aGlzIGNhc2UgLSBJIHVzZSBhbiBNLjIgTlZNRSBvbiBt
eSBib2FyZCwKPj4+PiB3aGljaAo+Pj4+IHByb21wdGVkIG1lIHRvIHRha2UgYSBsb29rIGF0IHRo
ZSByZWd1bGF0b3IgaGFuZGxpbmcgaGVyZSBpbiB0aGUgZmlyc3QKPj4+PiBwbGFjZSwgdG8gc2Vl
IGlmIGl0IG1pZ2h0IGJlIHBvc3NpYmxlIHRvIHNodXQgdXAgdGhlIGFubm95aW5nIG1lc3NhZ2UK
Pj4+PiBhYm91dCBhIDEyViBzdXBwbHkgdGhhdCBpcyBlbnRpcmVseSBpcnJlbGV2YW50IHRvIGEg
Ym9hcmQgd2l0aG91dCBhCj4+Pj4gZnVsbC1zaXplIFBDSWUgc2xvdC4gSSB1c2UgYSBtYWlubGlu
ZS1iYXNlZCBkaXN0cm8sIHNvIEkndmUgYmVlbgo+Pj4+IHJ1bm5pbmcKPj4+PiB0aGlzIGNoYW5n
ZSBmb3IgbmVhcmx5IGEgeWVhciBzaW5jZSBpdCBsYW5kZWQgaW4gdjUuNSwgYW5kIEknbSBzdXJl
Cj4+Pj4gbWFueQo+Pj4+IG90aGVycyBoYXZlIHRvby4gSSd2ZSBub3QgaGVhcmQgb2YgYW55IG90
aGVyIGNvbXBsYWludHMgaW4gdGhhdCB0aW1lLi4uCj4+Pgo+Pj4gU29ycnkgZm9yIHRoZSB3cm9u
ZyB3b3JkaW5nLCB0aGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uIGZpcnN0Lgo+Pj4KPj4+
IEl0IHJlYWxseSBtYWtlcyBSSzMzOTkgdGhlIHByaW1hcnkgdGVzdGluZyBiZWQgZm9yIDY0SyBw
YWdlIHNpemUsIGFuZAo+Pj4gc2F2ZSBtZSBhIGxvdCBvZiB0aW1lLgo+Pj4KPj4+IEknbSB3b25k
ZXJpbmcgaG93IHRoZSAtRVBST0JFX0RFRkVSIGhhcHBlbnMuCj4+PiBJIGhhdmUgb25seSB0ZXN0
ZWQgdHdvIGtlcm5lbCB2ZXJzaW9ucywgdjUuOS1yYzQgYW5kIHY1LjEwLXJjMi4KPj4+IFRoZSBj
b25maWcgd29ya3MgZm9yIHJjNCwgdW5sZXNzIHNvbWV0aGluZyBiaWcgY2hhbmdlZCBpbiByYzIs
IGl0Cj4+PiBzaG91bGRuJ3QgY2hhbmdlIG11Y2gsIHJpZ2h0Pwo+Pj4KPj4+IFRoZSAxdjggYW5k
IDB2OSBpcyBqdXN0IGFsd2F5c29uIHJlZ3VsYXRvciwgSU1ITyBpdCBkb2Vzbid0IHJlYWxseSBu
ZWVkCj4+PiBzcGVjaWFsIGRyaXZlci4KPj4+IE9yIGRvZXMgaXQ/Cj4+Cj4+IE5vdCBhIHJlZ3Vs
YXRvciBndXlzIGJ5IGFsbCBtZWFucywgYnV0IHRoZSBkdHNpIHNob3dzIHRoZSAxdjggYW5kIDB2
OQo+PiBhcmUgYWxsIHByb3ZpZGVkIGJ5IHJrODA4LCB3aGlsZSB0aGUgZG1lc2cgc2hvd3M6Cj4+
Cj4+IFvCoMKgwqAgMC4xOTU2MDRdIHJlZy1maXhlZC12b2x0YWdlIHZjYzN2My1wY2llLXJlZ3Vs
YXRvcjogTG9va2luZyB1cAo+PiB2aW4tc3VwcGx5IGZyb20gZGV2aWNlIHRyZWUKPj4gW8KgwqDC
oCAwLjE5NjA5Nl0gcmVnLWZpeGVkLXZvbHRhZ2UgdmNjM3YzLXBjaWUtcmVndWxhdG9yOiB2Y2Mz
djNfcGNpZQo+PiBzdXBwbHlpbmcgMzMwMDAwMHVWCj4+IFvCoMKgwqAgMC4xOTc3MjRdIHJlZy1m
aXhlZC12b2x0YWdlIHZjYzV2MC1ob3N0LXJlZ3VsYXRvcjogTG9va2luZyB1cAo+PiB2aW4tc3Vw
cGx5IGZyb20gZGV2aWNlIHRyZWUKPj4gW8KgwqDCoCAwLjE5ODIxMV0gcmVnLWZpeGVkLXZvbHRh
Z2UgdmNjNXYwLWhvc3QtcmVndWxhdG9yOiB2Y2M1djBfaG9zdAo+PiBzdXBwbHlpbmcgMHVWCj4+
IFvCoMKgwqAgMC4xOTg1ODFdIHJlZy1maXhlZC12b2x0YWdlIHZjYzV2MC10eXBlYy1yZWd1bGF0
b3I6IExvb2tpbmcgdXAKPj4gdmluLXN1cHBseSBmcm9tIGRldmljZSB0cmVlCj4+IFvCoMKgwqAg
MC4xOTkwODJdIHJlZy1maXhlZC12b2x0YWdlIHZjYzV2MC10eXBlYy1yZWd1bGF0b3I6IHZjYzV2
MF90eXBlYwo+PiBzdXBwbHlpbmcgMHVWCj4+IFvCoMKgwqAgMC4xOTkzOTVdIHJlZy1maXhlZC12
b2x0YWdlIHZjYzN2My1waHktcmVndWxhdG9yOiB2Y2NfbGFuIHN1cHBseWluZwo+PiAzMzAwMDAw
dVYKPj4gW8KgwqDCoCAxLjA3NDI1M10gcm9ja2NoaXAtcGNpZSBmODAwMDAwMC5wY2llOiBubyB2
cGNpZTEydiByZWd1bGF0b3IgZm91bmQKPj4gW8KgwqDCoCAxLjA4NjQ3MF0gcHdtLXJlZ3VsYXRv
ciB2ZGQtbG9nOiBMb29raW5nIHVwIHB3bS1zdXBwbHkgZnJvbQo+PiBkZXZpY2UgdHJlZQo+PiBb
wqDCoMKgIDEuMDg2NDg0XSBwd20tcmVndWxhdG9yIHZkZC1sb2c6IExvb2tpbmcgdXAgcHdtLXN1
cHBseSBwcm9wZXJ0eSBpbgo+PiBub2RlIC92ZGQtbG9nIGZhaWxlZAo+PiBbwqDCoMKgIDEuMDg2
NTAxXSB2ZGRfbG9nOiBzdXBwbGllZCBieSByZWd1bGF0b3ItZHVtbXkKPj4gW8KgwqDCoCAxLjQw
MjUwMF0gcms4MDgtcmVndWxhdG9yIHJrODA4LXJlZ3VsYXRvcjogdGhlcmUgaXMgbm8gZHZzMCBn
cGlvCj4+IFvCoMKgwqAgMS40MDMxMDRdIHJrODA4LXJlZ3VsYXRvciByazgwOC1yZWd1bGF0b3I6
IHRoZXJlIGlzIG5vIGR2czEgZ3Bpbwo+PiBbwqDCoMKgIDEuNDE5ODU2XSByazgwOCAwLTAwMWI6
IGZhaWxlZCB0byByZWdpc3RlciAxMiByZWd1bGF0b3IKPj4gW8KgwqDCoCAxLjQyMjgwMV0gcms4
MDgtcmVndWxhdG9yOiBwcm9iZSBvZiByazgwOC1yZWd1bGF0b3IgZmFpbGVkIHdpdGgKPj4gZXJy
b3IgLTIyCj4+Cj4+IFNvIHRoaXMgbWVhbnMgc29tZXRoaW5nIHdyb25nIHdpdGggdGhlIHJrODA4
LCByZXN1bHRpbmcgbm8gdm9sdGFnZQo+PiBwcm92aWRlZCBmcm9tIHJrODA4IGFuZCBzY3Jld2lu
ZyB1cCB0aGUgcGNpZSBjb250cm9sbGVyPwo+IAo+IEZyYW5rbHkgUENJZSBpcyB0aGUgbGVhc3Qg
b2YgeW91ciB3b3JyaWVzIHRoZXJlIC0gaWYgdGhlIHN5c3RlbSBQTUlDIGlzCj4gZmFpbGluZyB0
byBwcm9iZSB0aGVuIHByZXR0eSBtdWNoIGV2ZXJ5dGhpbmcgd2lsbCBiZSBkZWdyYWRlZDogY3B1
ZnJlcQo+IHdvbid0IHdvcmssIHNvbWUgU0QgY2FyZCBtb2RlcyB3b24ndCB3b3JrLCBvbiBzb21l
IGJvYXJkcyBlbnRpcmUKPiBwZXJpcGhlcmFscyBsaWtlIGV0aGVybmV0IG1pZ2h0IG5vdCB3b3Jr
IGlmIHRoZXkncmUgd2lyZWQgdXAgdG8gdXNlIHRoZQo+IG9wcG9zaXRlIEkvTyBkb21haW4gdm9s
dGFnZSBzZXR0aW5nIGZyb20gdGhlIFNvQydzIHBvd2VyLW9uIGRlZmF1bHQuCj4gCj4gRm9jdXNp
bmcgb24gUENJZSBnZXR0aW5nIHByb2JlLWRlZmVycmVkIHNlZW1zIGEgYml0IGxpa2UgY29tcGxh
aW5pbmcKPiB0aGF0IHRoZSBjYXJwZXRzIG9uIHRoZSBUaXRhbmljIGFyZSB3ZXQgOykKClRoYXQn
cyB0cnVlLiBUaGFua2Z1bGx5IGJpc2VjdCBsZWFkIHRvIHRoZSBjYXVzZS4gSXQncyBldmVuIGRl
ZXBlciBpbgp0aGUgY29yZSByZWd1bGF0b3IgY29kZS4KCkNvbW1pdCBhZWE2Y2I5OTcwM2UgKCJy
ZWd1bGF0b3I6IHJlc29sdmUgc3VwcGx5IGFmdGVyIGNyZWF0aW5nCnJlZ3VsYXRvciIpIG1ha2Vz
IHRoZSBSSzgwOCB1bmFibGUgdG8gcmVnaXN0ZXIuCgpBbmQgZml4IGZvciB0aGF0IGNvbW1pdCBp
cyBhbHJlYWR5IG1lcmdlZCBpbiB1cHN0cmVhbS4KClNvcnJ5IGZvciB0aGUgZGlzcnVwdGlvbi4K
ClRoYW5rcywKUXUKCj4gCj4gUm9iaW4uCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
