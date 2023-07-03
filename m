Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09998EB64DD
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 11:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nuo+ck5sgf2oq8ZmP4jehWzJZnvicGV+rMfTD65GZZ4=; b=ljp6VvvIQvo5PVqA0bVdj3H7H7
	7jRHRJ6pLrOp4G47Vk+FiCHZpm8VGtVJGtkg/0xYYESCD7g2ruDh3MWlyOY8u/qaQKCm4RMa6FPWY
	dLMOR75miw5HkFEtB94r3CwrglaZUD+PYrkda3nRyY14ui7njBRPe+BN+TXPlGaW3ZEZ8NLEqFRaq
	61tnpc413GtJsnqUjr+mgfXPfGHN7mtob7Q+6x/KcH3OzrG/Yv8Td/z1IHxXImVc6CtIoGlhpbxrh
	nAqjY5ZrvfgYyTFmJJx2xLmWX4wb5Pv18DdgkwUyZlNRDRqUtGF2SvV7OffLfW1OPIgepIvDIa5+u
	1klcM4dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGHNO-00AKIm-0B;
	Mon, 03 Jul 2023 11:05:50 +0000
Received: from mail-dm6nam10on20610.outbound.protection.outlook.com ([2a01:111:f400:7e88::610] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGHNL-00AKIA-1U;
	Mon, 03 Jul 2023 11:05:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LVk2AqW4Ok10zrDt5hSQcGQJoswKchICOHivEr7aEOOyth2xUg5K74dcXri/7+883V51KRVQ3fo1bYwZ0kyCnbZQYH3/5d61+KBWNGHv3P8yg6xxOS8xoDO1U7vclYzTo6JdCnpZnsicMW0sNcRqpl/lTh/Ew2UCk+aEkitrimUZm86qH2fKRa3Ih+i6epD1SB5bkZfvQrf3onsLsVuPNZA1HrkyLXm1LVrOXUuMgR11WlKG1V6b/xSuTt05yy+WUiFSHvD1qlZoDMENfzCUH2yhuQxy9U6Tgv0UtawDlfD2awt8K3zZKQLRr5rF0vWBukzbKE7q0bZzurFJnJT3FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/AJhDvEBJ1xcKzReoW9zWDCqOXCn+B9vIk0pqejzD7A=;
 b=V5mf3FVydHdM/BV/8+sVFrThMzGakmbK9DKpyfvJ60PYi2beOHe4rDnRMy2sE8BVwY5oP7ghnS+UdBS4Jg6emfLt0cXHb/g3cYGsSAZUBVBfm2Y2J3IJ8wfLdNuxDgUbwmWnkCQq9jN811mzxAPnNk01JM2eb1eyz70l97XcMh2tUDlyqMfkeFeIQX2Bqu/SndAZC18TSoKmCIh+OBz19RvvJ0Z7aDVypKPtKETlzWFLcrwq9ZqCLZ2y0hTXkXL6J5eD9I5vtFTwJzB5GRVYTgjC+0sxiNk5h9dz5/RcfBziGyYWEKh42/zxHYNCHQTet5CVxhF6PnmMs4kQr6MIbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/AJhDvEBJ1xcKzReoW9zWDCqOXCn+B9vIk0pqejzD7A=;
 b=etaDjQDJA3zQjd5fO4lQAYtnhjQ5+eZn5XDx2JFd2kT5YbOKVnoY6cwkk4Ua7t1i5xK8JuOf7dWqdcCwNlgt1aPFvM9erlZZeS7baf4mr98CoRgCFZVppbgbJFBVgDvmUsQh19fU0Expbqmrg/AFEsNGH9c9xglSOD7a1laawDY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=synaptics.com;
Received: from DM6PR03MB5196.namprd03.prod.outlook.com (2603:10b6:5:24a::19)
 by DS0PR03MB7277.namprd03.prod.outlook.com (2603:10b6:8:12d::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.47; Mon, 3 Jul
 2023 11:05:37 +0000
Received: from DM6PR03MB5196.namprd03.prod.outlook.com
 ([fe80::6882:b9c1:2b2d:998d]) by DM6PR03MB5196.namprd03.prod.outlook.com
 ([fe80::6882:b9c1:2b2d:998d%5]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 11:05:37 +0000
Message-ID: <afbcf2d7-e6eb-5b45-fdc6-39e1944e7d3b@synaptics.com>
Date: Mon, 3 Jul 2023 19:05:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 04/11] media: videobuf2: Stop define VB2_MAX_FRAME as
 global
Content-Language: en-GB
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 hverkuil-cisco@xs4all.nl, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, linux-rockchip@lists.infradead.org,
 mchehab@kernel.org, linux-staging@lists.linux.dev, ming.qian@nxp.com,
 kernel@collabora.com, gregkh@linuxfoundation.org, tfiga@chromium.org,
 nicolas.dufresne@collabora.com
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
 <20230622131349.144160-5-benjamin.gaignard@collabora.com>
 <e7444263-0ce5-1575-8cca-1e51b1cfbe9a@synaptics.com>
 <5cb3f216-5041-a155-5d2c-059dc1f15024@collabora.com>
 <25b21252-0d3a-3e50-0012-57055f386fee@synaptics.com>
 <a0d987e0-fcad-be76-a40d-2b5d43bd63b9@collabora.com>
From: Hsia-Jun Li <Randy.Li@synaptics.com>
In-Reply-To: <a0d987e0-fcad-be76-a40d-2b5d43bd63b9@collabora.com>
X-ClientProxiedBy: BYAPR02CA0059.namprd02.prod.outlook.com
 (2603:10b6:a03:54::36) To DM6PR03MB5196.namprd03.prod.outlook.com
 (2603:10b6:5:24a::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR03MB5196:EE_|DS0PR03MB7277:EE_
X-MS-Office365-Filtering-Correlation-Id: 737e99c1-2615-45bb-0dbb-08db7bb56e5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q/3Rjae+C56AGe+UBM8EHoa7qmHrA6ackHcXQP9Ysh5NvskDnj4LLQIhqMlKzyfZnKrfoGXdnLjMnMQb7cBuEcqotJjjBWUOjetgnB3xKd4WHuQhC1+x+6GyzNTVbDp0mCZ05hMLNoLcnmBPNdUOM2D/6Oem9fVDgJzi28jWxEk3KuV5oCmWCEAhq1j+F1CbmTHUKmxPlc6Lt4y7G5UQcvDyEOuGn197x5VMsE8GuF7N0bwPVpfhvDzea1xRi116bJuvD8vMz/YjPRcKwVp2qfLlM5KgQhxeSQsVCannwpkQCxz3QPkSnjnEB0GlWmQyHipmID/iRnZmjNuoANkl7y+ks2kRW91/juNGiF7m3gP2gluFlGP9SFRhkrOAjpsAJuFXpvkg5ZouMLQ75NJZNK5RXSd8EuUGjx41ZKWlCkcTLL1Q4ar23rBc7W2dRsaT5AvOW90/i3NHSCfba6D0QZFJRScc9AMiVJhH1U0PW3n1/GL6rfA4t/41xmrRfVbIEP5eFDvwtvI6bFTT/96UjmU9Jzg54mCLNgT5wuOoIatBLf2zysMndlffKfjgvOg3ByZWve3E3cVwDTcBAIexjkxoaZTOe4rxl4WDEMnpCH2Y+YTV1LKHUM4av5xzdZbCv13vExkaNTUVPTVnuLl/W4lRSKCscUE/NLaq1TbsQJ0bE4KRmtNCMawnMRHZ56q4FM/iozlEgSAuu2ksUx53pKNtCt3Q0eTHSSDhEvJKVpk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR03MB5196.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(376002)(396003)(346002)(366004)(39860400002)(136003)(451199021)(36756003)(66476007)(316002)(66946007)(4326008)(38350700002)(8936002)(8676002)(38100700002)(186003)(41300700001)(6512007)(6506007)(26005)(53546011)(6486002)(6666004)(52116002)(478600001)(6916009)(86362001)(31696002)(66556008)(31686004)(5660300002)(2616005)(66574015)(83380400001)(2906002)(7416002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?all1YkVXTGJpdzVRQTNUNm1QQkFoVEt4N0dJbkpSbmFNOHFBRjVOTW81bmdI?=
 =?utf-8?B?WFpobURZRm5mQTVLcW44NjN3TGJvVzAwT0F0TUVEOVJ2UWlaT3RMS1owYkdY?=
 =?utf-8?B?ZEJhcUxXUjBPdmxaV3NyYjVqSFVhY0krNDlQYldPdDZOSEppVlJUZUVxcERS?=
 =?utf-8?B?UlZtelRkVXNEb1RXU3lwRS9GdkEyNElHTzVRU2hpVzIrd2tpbDRrQ3JOdmo0?=
 =?utf-8?B?OHF2UTB2Z3VUR2E1djdzOUROaDJsdVM0Vndtd0FZUFVSY0Zjb1hYN0h4MC9w?=
 =?utf-8?B?aGpqYXUvMmlyWVk0bG9WQWZiUyt2RjVhZ0dIRGd1bGZJakJBN0g1dWZpQzB6?=
 =?utf-8?B?eDEraWhTWEJjb1BsS1A0UldsZExvVm5nQkl5TU9tZzVyZ0hKbzAzZ0lmTVp2?=
 =?utf-8?B?bHdWMFB1Nk5NWUx3amtNVVdKUnlMek9WZU5KckxTZXpWUlgveStnWHBBakdm?=
 =?utf-8?B?MXJRRldkQjFUN05lWmVBZ0ppQis5THJvMll5ZUNZRVF0TitNdXFFZVZTRXRK?=
 =?utf-8?B?TzdkQWNDQkVJU0pqeWJOclIyYnM1V3R1bm8zSGJUZWNXaWprWFlYdU1mRCsx?=
 =?utf-8?B?SmhlbXRwMnkwRG55Y0I5QzNwME14UW1POHVRam9rbWN2c0drdWZXMW9GVmtp?=
 =?utf-8?B?VzRCS2NGcUZibXhyUjJ0R3YxVHh0QXZUbCtqcTNDbWtVWHVCenNZWDh2dTRj?=
 =?utf-8?B?OEV3TVhPbVN4U0RHa0l5czZqeVpyc25DaUQ4aHN0cUtNeXM2RmplKzZSakxk?=
 =?utf-8?B?MnhOdVBubE02SFR3WVB3V2R2cCtEOERzTy9lRTF2UEZ1SDZoWTNnMHhZS1Zr?=
 =?utf-8?B?UHdSb2xnR2xyWlNCZFJkQUoxelVCd1dOZDUvRDVNOVMvNnFsNFRVdlRMcDZ4?=
 =?utf-8?B?ZXpmRHdKMHVIZkVkRm0xakNYNjVuTzNKQUVVZjg3SjM2eFREMERCZHJUemph?=
 =?utf-8?B?dThoeFRTZnFkWVFoQlQ0bjFxNmNZTG9EWVF3dXRpbG9lL0tFWCs0OE1ENjBy?=
 =?utf-8?B?SUZiaW1UZUtzOG81MjVzR2JzRHVSK3MvTTJ3dFp3RDdtS3hnOFRUK1ZqYWNt?=
 =?utf-8?B?dmVLQjJOdlRER3dNTy9YUWQweWtidVp6cmNDb09qOVQ4QUNWdWF4UFhTWTBF?=
 =?utf-8?B?RnFsaEdBTGNVSWJ0dGE4a0xJdnZiSHV2bjhBVkZ2dWxKdkUwbC9NWGxNa1l4?=
 =?utf-8?B?enh5b21Za1JQRitYcWpvbVF3NmlXNkZrajFYTEFkclpjdzZXSWhaNXdsMlJy?=
 =?utf-8?B?UVRyQVJTallaaWZ0MFc5RXAyRnR6SjlyWTBIY3RNTXRaN09hb01ET2VDY0ZE?=
 =?utf-8?B?d1p6Y2IwOExkRko2UjEvenZMcXRWS2lTVjZiMWRrbEFQU043M1FLZ2RId1pw?=
 =?utf-8?B?NFVjK29GNklDRVFrRnIxR0kxcWFodjcyUTZsVTJsNEh6N0t1ZW96RjFSaHlN?=
 =?utf-8?B?VnROdHlkdnNiVHlHeisvV2RMYzRWWVE2ZmVHeElNUVVaZ2N2NWNsb1puc2hW?=
 =?utf-8?B?bGV3MEtmV1NLYWM0cFhhT3RmemtMS1ZqM3U2cGpjczFNam9tTndOYnA1Mk5w?=
 =?utf-8?B?US9tN0dHbm9wdWdldXJJSDZrQlNZMDhsSFl4YndYQTQxMmNXeHJTOENRTnVq?=
 =?utf-8?B?WW14QTlXS0xaWlhFREIvZ040M0RTeU9tbEFZMytCRnljaXhHU3lLdGJzVlZm?=
 =?utf-8?B?MDFXenlMKytqTWw5bnZTZ2dlOFI0SUhPaUZpc05LVG92VFdCM01OUFk0Vnlx?=
 =?utf-8?B?RE82S29hWThyUmZNK3BVNGNQdFNmNDBsSzNPcjVUbVEzaEYvWTJnbDVSTXFI?=
 =?utf-8?B?NlNpU1BoNG8wV1B5dno2bDZ4dHJncWx2Ny9LZ0IzL1VwTmRsUFJpMzRhU244?=
 =?utf-8?B?YTNudzJablVMNDM2Z3RHVE9mYkFFRytkQzVMcnRXNTVrc01LeDlsSXFjWDA4?=
 =?utf-8?B?emtlN3pxT0hCT1YvZHhXV3BsdWpzY0hRdWc5NXNBcG9Nb0lTc1AzU1ZIb3lE?=
 =?utf-8?B?bTFiK25DZEdUbDZwdnhyYW1MUlM0eGpBOTg5T3pYbnpqc0syNDVpcURPRUNG?=
 =?utf-8?B?ZTdSN3BpLzlYaXc0U2pIaDIvSWMxNGVpOXFnSFFzRXFTOVVFd2t5bjIzalJw?=
 =?utf-8?Q?n/ALccstSmcIWwWDYGZ2Y7WXk?=
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 737e99c1-2615-45bb-0dbb-08db7bb56e5a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR03MB5196.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2023 11:05:37.4734
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hvQdy/1wXUz0t6pA+4d6j5du57dfJtJq0qV9jH5jb7sQT0lnNenXQr0hQBrdx1/zY8pkJrq9eewRxaKX/5NU7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR03MB7277
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_040547_549255_5ABC5E87 
X-CRM114-Status: GOOD (  25.28  )
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

Ck9uIDcvMy8yMyAxODo1MywgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gQ0FVVElPTjogRW1h
aWwgb3JpZ2luYXRlZCBleHRlcm5hbGx5LCBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiAKPiBh
dHRhY2htZW50cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyIGFuZCBrbm93IHRoZSBj
b250ZW50IGlzIHNhZmUuCj4KPgo+IExlIDAzLzA3LzIwMjMgw6AgMTA6MzUsIEhzaWEtSnVuIExp
IGEgw6ljcml0IDoKPj4KPj4gT24gNy8zLzIzIDE2OjA5LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPj4+IENBVVRJT046IEVtYWlsIG9yaWdpbmF0ZWQgZXh0ZXJuYWxseSwgZG8gbm90IGNsaWNr
IGxpbmtzIG9yIG9wZW4KPj4+IGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVjb2duaXplIHRoZSBz
ZW5kZXIgYW5kIGtub3cgdGhlIGNvbnRlbnQgaXMKPj4+IHNhZmUuCj4+Pgo+Pj4KPj4+IExlIDMw
LzA2LzIwMjMgw6AgMTE6NTEsIEhzaWEtSnVuIExpIGEgw6ljcml0IDoKPj4+Pgo+Pj4+IE9uIDYv
MjIvMjMgMjE6MTMsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4+PiBDQVVUSU9OOiBFbWFp
bCBvcmlnaW5hdGVkIGV4dGVybmFsbHksIGRvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuCj4+Pj4+
IGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVjb2duaXplIHRoZSBzZW5kZXIgYW5kIGtub3cgdGhl
IGNvbnRlbnQgaXMKPj4+Pj4gc2FmZS4KPj4+Pj4KPj4+Pj4KPj4+Pj4gQWZ0ZXIgY2hhbmdpbmcg
YnVmcyBhcnJheXMgdG8gYSBkeW5hbWljIGFsbG9jYXRlZCBhcnJheQo+Pj4+PiBWQjJfTUFYX0ZS
QU1FIGRvZXNuJ3QgbWVhbiBhbnl0aGluZyBmb3IgdmlkZW9idWYyIGNvcmUuCj4+Pj4KPj4+PiBJ
IHRoaW5rIG1ha2UgaXQgNjQgd2hpY2ggaXMgdGhlIFZCMl9NQVhfRlJBTUUgaW4gQW5kcm9pZCBH
S0kga2VybmVsIGlzCj4+Pj4gbW9yZSByZWFzb25hYmxlLgo+Pj4+Cj4+Pj4gSXQgd291bGQgYmUg
aGFyZCB0byBpdGVyYXRlIHRoZSB3aG9sZSBhcnJheSwgaXQgd291bGQgZ28gd29yc2Ugd2l0aCBh
Cj4+Pj4gZmlsdGVyLiBTdWNoIGl0ZXJhdGUgbWF5IG5lZWQgdG8gZ28gdHdpY2UgYmVjYXVzZSB5
b3UgbWl4Cj4+Pj4gcG9zdC1wcm9jZXNzaW5nIGJ1ZmZlciBhbmQgZGVjb2RpbmcgYnVmZmVyKHdp
dGggTVYpIGluIHRoZSBzYW1lIGFycmF5Lgo+Pj4KPj4+IEhlcmUgSSBkb24ndCB3YW50IHRvIGNo
YW5nZSBkcml2ZXJzIGJlaGF2aW9yIHNvIEkga2VlcCB0aGUgc2FtZSB2YWx1ZS4KPj4+IElmIGl0
IGhhcHBlbnMgdGhhdCB0aGV5IG5lZWQgbW9yZSBidWZmZXJzLCBsaWtlIGZvciBkeW5hbWljCj4+
PiByZXNvbHV0aW9uIGNoYW5nZQo+Pj4gZmVhdHVyZSBmb3IgVmVyaXNpbGljb24gVlA5IGRlY29k
ZXIsIGNhc2UgYnkgY2FzZSBwYXRjaGVzIHdpbGwgYmUKPj4+IG5lZWRlZC4KPj4+Cj4+IEkganVz
dCBkb24ndCBsaWtlIHRoZSBpZGVhIHRoYXQgdXNpbmcgYSB2YXJpYW50IGxlbmd0aCBhcnJheSBo
ZXJlLgo+Cj4gQXMgZmFyIEkgaGF2ZSB1bmRlcnN0YW5kIEhhbnMgYW5kL29yIExhdXJlbnQgd2Vy
ZSBoYXBweSB0byB1c2UgdGhhdCAKPiBidXQgSSBtYXkgaGF2ZSBtaXN1bmRlcnN0b29kIHRoZW0u
Cj4KPj4KPj4gQW5kIEkgY291bGQgZXhwbGFpbiB3aHkgeW91IHdvbid0IG5lZWQgc28gbWFueSBi
dWZmZXJzIGZvciB0aGUKPj4gcGVyZm9ybWFuY2Ugb2YgZGVjb2RpbmcuCj4+Cj4+IFZQOSBjb3Vs
ZCBzdXBwb3J0IDEwIHJlZmVyZW5jZSBmcmFtZXMgaW4gZHBiLgo+Pgo+PiBFdmVuIGZvciB0aG9z
ZSBmcmVxdWVudCByZXNvbHV0aW9uIGNoYW5naW5nIHRlc3Qgc2V0LCBpdCB3b3VsZCBvbmx5Cj4+
IGhhcHBlbiB0byB0d28gcmVzb2x1dGlvbnMsCj4+Cj4+IDMyIHdvdWxkIGJlIGVub3VnaCBmb3Ig
MjAgYnVmZmVycyBvZiB0d28gcmVzb2x1dGlvbiBwbHVzIGdvbGRlbgo+PiBmcmFtZXMuIEl0IGFs
c28gbGVhdmVzIGVub3VnaCBzbG90cyBmb3IgcmUtb3JkZXIgbGF0ZW5jeS4KPj4KPj4gSWYgeW91
ciBjYXNlIGhhZCBtb3JlIHR3byByZXNvbHV0aW9ucywgbGlrZXMgbG93LT5tZWRpdW0tPmhpZ2gu
Cj4KPiBWUDkgaGVhZGVyIGRvZXNuJ3QgdGVsbCB5b3UgdGhhdCB2aWRlbyByZXNvbHV0aW9uIHdp
bGwgY2hhbmdlIGFuZCBpbiAKPiB3aGljaCB3YXkuCj4gSXQgY2xvdWQgYmUgZnJvbSBmYWN0b3Ig
eDEvMiB0byB4MTYgYW5kIG11bHRpcGxlIHRpbWUgc28geW91IGNhbiB1c2UgCj4gbG90IG9mICh0
b28gbXVjaCkgYnVmZmVycy4KCkkga25vdyBWUDkgZG9lc24ndCBoYXZlIHNlcXVlbmNlIGhlYWRl
ci4gSSB0aGluayB5b3UgYXJlIHRhbGtpbmcgYWJvdXQgCnNjYWxpbmcgZnJhbWUsIHdoaWNoIHNo
b3VsZCBiZSBhbGxvY2F0ZWQgd2hlbiBpdCBpcyByZXF1ZXN0ZWQuCgpBbmQgdGhpcyBjYW4ndCBi
cmVhayB0aGUgbWF4IHJlZmVyZW5jZSBjYXBhYmlsaXR5IHJlcXVpcmVtZW50IG9mIFZQOS4KCj4K
Pj4KPj4gSSB3b3VsZCBzdWdnZXN0IGp1c3Qgc2tpcCB0aGUgbWVkaXVtIHJlc29sdXRpb25zLCBq
dXN0IGFsbG9jYXRlIHRoZQo+PiBsb3dlciBvbmUgZmlyc3QgZm9yIGZhc3QgcGxheWJhY2sgdGhl
biB0aGUgaGlnaGVzdCBmb3IgYWxsIHRoZSBwb3NzaWJsZQo+Pgo+PiBtZWRpdW0gY2FzZXMuIFJl
YWxsb2NhdGlvbiBoYXBwZW5zIGZyZXF1ZW50bHkgd291bGQgb25seSBjYXVzZSBtZW1vcnkKPj4g
ZnJhZ21lbnQsIG5vdGhpbmcgYmVuZWZpdHMgeW91ciBwZXJmb3JtYW5jZS4KPj4KPj4+Cj4+Pj4K
Pj4+Pj4gUmVtb3ZlIGl0IGZyb20gdGhlIGNvcmUgZGVmaW5pdGlvbnMgYnV0IGtlZXAgaXQgZm9y
IGRyaXZlcnMgaW50ZXJuYWwKPj4+Pj4gbmVlZHMuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+Pj4+
PiAtLS0KPj4+Pj4gwqAgZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1j
b3JlLmMgfCAyICsrCj4+Pj4+IMKgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYW1waGlvbi92ZGVj
LmMgfCAxICsKPj4+Pj4gLi4uL21lZGlhL3BsYXRmb3JtL21lZGlhdGVrL3Zjb2RlYy92ZGVjL3Zk
ZWNfdnA5X3JlcV9sYXRfaWYuYyB8IDIgKysKPj4+Pj4gwqAgZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9xY29tL3ZlbnVzL2hmaS5oIHwgMiArKwo+Pj4+PiDCoCBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19ody5oIHwgMiArKwo+Pj4+PiDCoCBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaXB1My9pcHUzLXY0bDIuYyB8IDIgKysKPj4+Pj4gwqAgaW5jbHVkZS9tZWRpYS92aWRl
b2J1ZjItY29yZS5oIHwgMSAtCj4+Pj4+IMKgIGluY2x1ZGUvbWVkaWEvdmlkZW9idWYyLXY0bDIu
aCB8IDQgLS0tLQo+Pj4+PiDCoCA4IGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2NvbW1v
bi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYwo+Pj4+PiBiL2RyaXZlcnMvbWVkaWEvY29tbW9u
L3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4+Pj4+IGluZGV4IDg2ZTFlOTI2ZmE0NS4uODk5
NzgzZjY3NTgwIDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLWNvcmUuYwo+Pj4+PiArKysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRl
b2J1ZjIvdmlkZW9idWYyLWNvcmUuYwo+Pj4+PiBAQCAtMzEsNiArMzEsOCBAQAo+Pj4+Pgo+Pj4+
PiDCoCAjaW5jbHVkZSA8dHJhY2UvZXZlbnRzL3ZiMi5oPgo+Pj4+Pgo+Pj4+PiArI2RlZmluZSBW
QjJfTUFYX0ZSQU1FwqAgMzIKPj4+Pj4gKwo+Pj4+PiDCoCBzdGF0aWMgaW50IGRlYnVnOwo+Pj4+
PiDCoCBtb2R1bGVfcGFyYW0oZGVidWcsIGludCwgMDY0NCk7Cj4+Pj4+Cj4+Pj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL2FtcGhpb24vdmRlYy5jCj4+Pj4+IGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9hbXBoaW9uL3ZkZWMuYwo+Pj4+PiBpbmRleCAzZmExYTc0YTJlMjAu
LmIzMjE5ZjZkMTdmYSAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9h
bXBoaW9uL3ZkZWMuYwo+Pj4+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL2FtcGhpb24v
dmRlYy5jCj4+Pj4+IEBAIC0yOCw2ICsyOCw3IEBACj4+Pj4+Cj4+Pj4+IMKgICNkZWZpbmUgVkRF
Q19NSU5fQlVGRkVSX0NBUMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgOAo+Pj4+PiDCoCAjZGVmaW5l
IFZERUNfTUlOX0JVRkZFUl9PVVTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDgKPj4+Pj4gKyNkZWZp
bmUgVkIyX01BWF9GUkFNRcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMzIKPj4+
Pj4KPj4+Pj4gwqAgc3RydWN0IHZkZWNfZnNfaW5mbyB7Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAg
Y2hhciBuYW1lWzhdOwo+Pj4+PiBkaWZmIC0tZ2l0Cj4+Pj4+IGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9tZWRpYXRlay92Y29kZWMvdmRlYy92ZGVjX3ZwOV9yZXFfbGF0X2lmLmMKPj4+Pj4gYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlhdGVrL3Zjb2RlYy92ZGVjL3ZkZWNfdnA5X3JlcV9s
YXRfaWYuYwo+Pj4+PiBpbmRleCA2NTMyYTY5ZjFmYTguLmExZTBmMjRiYjkxYyAxMDA2NDQKPj4+
Pj4gLS0tCj4+Pj4+IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZWRpYXRlay92Y29kZWMvdmRl
Yy92ZGVjX3ZwOV9yZXFfbGF0X2lmLmMKPj4+Pj4gKysrCj4+Pj4+IGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9tZWRpYXRlay92Y29kZWMvdmRlYy92ZGVjX3ZwOV9yZXFfbGF0X2lmLmMKPj4+Pj4g
QEAgLTE2LDYgKzE2LDggQEAKPj4+Pj4gwqAgI2luY2x1ZGUgIi4uL3ZkZWNfZHJ2X2lmLmgiCj4+
Pj4+IMKgICNpbmNsdWRlICIuLi92ZGVjX3ZwdV9pZi5oIgo+Pj4+Pgo+Pj4+PiArI2RlZmluZSBW
QjJfTUFYX0ZSQU1FwqAgMzIKPj4+Pj4gKwo+Pj4+PiDCoCAvKiByZXNldF9mcmFtZV9jb250ZXh0
IGRlZmluZWQgaW4gVlA5IHNwZWMgKi8KPj4+Pj4gwqAgI2RlZmluZSBWUDlfUkVTRVRfRlJBTUVf
Q09OVEVYVF9OT05FMCAwCj4+Pj4+IMKgICNkZWZpbmUgVlA5X1JFU0VUX0ZSQU1FX0NPTlRFWFRf
Tk9ORTEgMQo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL3Zl
bnVzL2hmaS5oCj4+Pj4+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL3ZlbnVzL2hmaS5o
Cj4+Pj4+IGluZGV4IGYyNWQ0MTJkNjU1My4uYmQ1Y2E1YThiOTQ1IDEwMDY0NAo+Pj4+PiAtLS0g
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vdmVudXMvaGZpLmgKPj4+Pj4gKysrIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL3ZlbnVzL2hmaS5oCj4+Pj4+IEBAIC0xMCw2ICsxMCw4
IEBACj4+Pj4+Cj4+Pj4+IMKgICNpbmNsdWRlICJoZmlfaGVscGVyLmgiCj4+Pj4+Cj4+Pj4+ICsj
ZGVmaW5lIFZCMl9NQVhfRlJBTUXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAzMgo+Pj4+PiArCj4+Pj4+IMKgICNkZWZpbmUgVklEQ19TRVNTSU9OX1RZ
UEVfVlBFwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwCj4+Pj4+IMKgICNkZWZp
bmUgVklEQ19TRVNTSU9OX1RZUEVfRU5DwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAxCj4+Pj4+IMKgICNkZWZpbmUgVklEQ19TRVNTSU9OX1RZUEVfREVDwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAyCj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19ody5oCj4+Pj4+IGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaAo+Pj4+PiBpbmRleCBlODNmMGM1MjNhMzAuLjll
OGZhZjdiYTZmYiAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9faHcuaAo+Pj4+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyb19ody5oCj4+Pj4+IEBAIC0xNSw2ICsxNSw4IEBACj4+Pj4+IMKgICNp
bmNsdWRlIDxtZWRpYS92NGwyLXZwOS5oPgo+Pj4+PiDCoCAjaW5jbHVkZSA8bWVkaWEvdmlkZW9i
dWYyLWNvcmUuaD4KPj4+Pj4KPj4+Pj4gKyNkZWZpbmUgVkIyX01BWF9GUkFNRcKgIDMyCj4+Pj4+
ICsKPj4+Pj4gwqAgI2RlZmluZSBERUNfODE5MF9BTElHTl9NQVNLwqDCoMKgIDB4MDdVCj4+Pj4+
Cj4+Pj4+IMKgICNkZWZpbmUgTUJfRElNwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
MTYKPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pcHUzL2lwdTMtdjRs
Mi5jCj4+Pj4+IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lwdTMvaXB1My12NGwyLmMKPj4+Pj4g
aW5kZXggZTUzMDc2N2U4MGE1Li42NjI3YjVjMmQ0ZDYgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9pcHUzL2lwdTMtdjRsMi5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9pcHUzL2lwdTMtdjRsMi5jCj4+Pj4+IEBAIC0xMCw2ICsxMCw4IEBACj4+Pj4+
IMKgICNpbmNsdWRlICJpcHUzLmgiCj4+Pj4+IMKgICNpbmNsdWRlICJpcHUzLWRtYW1hcC5oIgo+
Pj4+Pgo+Pj4+PiArI2RlZmluZSBWQjJfTUFYX0ZSQU1FwqAgMzIKPj4+Pj4gKwo+Pj4+PiDCoCAv
KioqKioqKioqKioqKioqKioqKiogdjRsMl9zdWJkZXZfb3BzICoqKioqKioqKioqKioqKioqKioq
Lwo+Pj4+Pgo+Pj4+PiDCoCAjZGVmaW5lIElQVTNfUlVOTklOR19NT0RFX1ZJREVPwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDAKPj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEv
dmlkZW9idWYyLWNvcmUuaAo+Pj4+PiBiL2luY2x1ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaAo+
Pj4+PiBpbmRleCA3NzkyMWNmODk0ZWYuLjA4MGI3ODNkNjA4ZCAxMDA2NDQKPj4+Pj4gLS0tIGEv
aW5jbHVkZS9tZWRpYS92aWRlb2J1ZjItY29yZS5oCj4+Pj4+ICsrKyBiL2luY2x1ZGUvbWVkaWEv
dmlkZW9idWYyLWNvcmUuaAo+Pj4+PiBAQCAtMjAsNyArMjAsNiBAQAo+Pj4+PiDCoCAjaW5jbHVk
ZSA8bWVkaWEvbWVkaWEtcmVxdWVzdC5oPgo+Pj4+PiDCoCAjaW5jbHVkZSA8bWVkaWEvZnJhbWVf
dmVjdG9yLmg+Cj4+Pj4+Cj4+Pj4+IC0jZGVmaW5lIFZCMl9NQVhfRlJBTUXCoCAoMzIpCj4+Pj4+
IMKgICNkZWZpbmUgVkIyX01BWF9QTEFORVMgKDgpCj4+Pj4+Cj4+Pj4+IMKgIC8qKgo+Pj4+PiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9tZWRpYS92aWRlb2J1ZjItdjRsMi5oCj4+Pj4+IGIvaW5jbHVk
ZS9tZWRpYS92aWRlb2J1ZjItdjRsMi5oCj4+Pj4+IGluZGV4IDVhODQ1ODg3ODUwYi4uODhhN2E1
NjUxNzBlIDEwMDY0NAo+Pj4+PiAtLS0gYS9pbmNsdWRlL21lZGlhL3ZpZGVvYnVmMi12NGwyLmgK
Pj4+Pj4gKysrIGIvaW5jbHVkZS9tZWRpYS92aWRlb2J1ZjItdjRsMi5oCj4+Pj4+IEBAIC0xNSwx
MCArMTUsNiBAQAo+Pj4+PiDCoCAjaW5jbHVkZSA8bGludXgvdmlkZW9kZXYyLmg+Cj4+Pj4+IMKg
ICNpbmNsdWRlIDxtZWRpYS92aWRlb2J1ZjItY29yZS5oPgo+Pj4+Pgo+Pj4+PiAtI2lmIFZCMl9N
QVhfRlJBTUUgIT0gVklERU9fTUFYX0ZSQU1FCj4+Pj4+IC0jZXJyb3IgVkIyX01BWF9GUkFNRSAh
PSBWSURFT19NQVhfRlJBTUUKPj4+Pj4gLSNlbmRpZgo+Pj4+PiAtCj4+Pj4+IMKgICNpZiBWQjJf
TUFYX1BMQU5FUyAhPSBWSURFT19NQVhfUExBTkVTCj4+Pj4+IMKgICNlcnJvciBWQjJfTUFYX1BM
QU5FUyAhPSBWSURFT19NQVhfUExBTkVTCj4+Pj4+IMKgICNlbmRpZgo+Pj4+PiAtLSAKPj4+Pj4g
Mi4zOS4yCj4+Pj4+Ci0tIApIc2lhLUp1bihSYW5keSkgTGkKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
