Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06781EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 08:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UKFLvUc2Lwyx6f5dgmeRAzkA+9h4dK8xaeJ6pXAFDBw=; b=vAeU97zX9TdiPOteRH0z1oy9Bv
	A6eA7wAYQIgykbbrD8w+pWrDKyMhYVKDmzMjIkCAGV01eyKTVW80hQLc8QzC9EyGabZCEPh66X6IQ
	qmUtQJzEo4X2MBMgNJBEXwrd/j168eG9C5fKfID6ESRwEOadjZZara0Ob68dciSp2Wv+qbboD6ZzQ
	2F3WWUpaRKRoHGddkp//0yv39ZJGHeqfDbSFSJu2bCcSJblA97PFWNG/q1XvCC/KaVH64uxpfdEx9
	Nf51l51rIBjw2OPHxRS+sabPxgD0bZYNuUSwdpnIRsttnM8EbCUs2XGuzh4BBM8/Lc7NqSxnElLHq
	hV5NUOtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGF2K-009m2q-1C;
	Mon, 03 Jul 2023 08:35:56 +0000
Received: from mail-dm6nam10on2062b.outbound.protection.outlook.com ([2a01:111:f400:7e88::62b] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGF2E-009m0n-2w;
	Mon, 03 Jul 2023 08:35:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AvTMYrJzm+Ng+2FOJUcWNUT20fv8gwOMdGq4tdC4OkylhksyAoH3K3/ihcqFJGx6nnRPDCabxZwoGoJd0ASqglv4L3QDJuYRyiT9WU+McyxlFmsGr2wtVdbYCHwtF57/Ktz4/n5FTI/ZNHIksIjcIvqYLtYeQo2yXDLyquKqZqHsKpNbiFCvxcL05/O/Fed/gy7BLxdvOqCKRXyjCKnHB9whSyWmizz3GPa22mwiG+ujltSK3knfRgfCGsmjYx+A2fTstzY/XIugLA8N5cmUzMx8DOAuTLG49G1dE5WIfkxkKA0Ts+RCD3QBnIAbcsUdMm1TlkdHqL53eCaPxAh6ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YxXYZmpJUpbSYTXnd2F4QLWkGX/o4clLvmyUwZJ1biY=;
 b=DLcZYQp3gsrHfjBDEq8Gl7VkGgjWv7O/8Zu/cK4tYr8Y7I1M2dcA9PMv2FVpIE5a72eNHDbS/i5eVOZHKapIqTYsoiruWV8YePtR07XVW0RCcBSPN0RfGGEEGh3oK4B8Q9lm4UC/9Mg5Yt7gsdK1pr2P1CHoL5c2LBctaN11g3Qq06ovMW2fmpeku9DrAeOuR84SxniMKWfqWH07nKsz1NlTTl10qtU5U/M725H9Oczmq4lRzvq4uO+hAFsVPcKAALIUhe81y9w5z7wYxqJLg4Es9SwgVWaxRyRFmtoyZfoSE/ctcGc2gSIxjIEoKHHboFYJXcGtQKKcQ59TSLNm+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YxXYZmpJUpbSYTXnd2F4QLWkGX/o4clLvmyUwZJ1biY=;
 b=mKpOUFcOWVrJzIbansEH3DSjUEQeFmQtZ7iUJJZeOHpZuglQGPjN3tkOT7dcYTZfQM5zC4sLu7zBRCBpvqbSrIFAnHFdqXBdV0nkGLQkWsvzkzpwbqRtW5bOMA2XXKMbB8vChJ748+FdvkT7f7usDrsE9r8pXcdNuUIllvRxvGs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=synaptics.com;
Received: from DM6PR03MB5196.namprd03.prod.outlook.com (2603:10b6:5:24a::19)
 by BN9PR03MB6058.namprd03.prod.outlook.com (2603:10b6:408:137::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 08:35:39 +0000
Received: from DM6PR03MB5196.namprd03.prod.outlook.com
 ([fe80::6882:b9c1:2b2d:998d]) by DM6PR03MB5196.namprd03.prod.outlook.com
 ([fe80::6882:b9c1:2b2d:998d%5]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 08:35:38 +0000
Message-ID: <25b21252-0d3a-3e50-0012-57055f386fee@synaptics.com>
Date: Mon, 3 Jul 2023 16:35:30 +0800
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
From: Hsia-Jun Li <Randy.Li@synaptics.com>
In-Reply-To: <5cb3f216-5041-a155-5d2c-059dc1f15024@collabora.com>
X-ClientProxiedBy: BY3PR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::33) To DM6PR03MB5196.namprd03.prod.outlook.com
 (2603:10b6:5:24a::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR03MB5196:EE_|BN9PR03MB6058:EE_
X-MS-Office365-Filtering-Correlation-Id: 25d1422f-48e6-4956-650e-08db7ba07a7f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PqAGwFESGZ3Xm6T0p87nvXx2CxRoxX/qhMtvqOpWgaX0a6Ma+QPfqFFLAKMCQtArQY/SUdbwbYLgz4+C2BSP7wQXt57qW1PEV6Ip00ZNfP5FvyhRmj4OkQWa1rfPdMelXyvVyPRSKatWBsch1LLWV1bAcys2r74gbe0P4l0oRqq7FAMHwIZtYNdbgugIryAL1V24mcHo7dTHlzBWIdGZ+16mUO47B+hP7l7q2bTEntWpIg2BJsnG+iLozbs91/n8DiEzodfgNX0M/kPDfq6gzjxnpJPnBhwZDCxbsKrilQHvNEGojsB+3AhXRVynWOQPo/6qkFFTxyCeV48LeVrhsK6SzPb6iFwujxV2LRvNbPqysdyci/lz7/YS+64uXCupeNYmPTM7JshK/FOJf13pI0PzoUllxhiXNkli2ky2ZQjpdSn/N9ZuzAOkQK41BbC8lWEaOJ8EvK1NW4jRUTy5zvxsYzj1AoCMdUfgpJwE0+CH4pfXHWo57CdFscrEgFen1k8FgKcyh9FAd0w88kIrueUYKgJLYshqVb2diQsWhEiKHBVE3bsgj167krNB8jTgW4ErJt6R8KhJ6Wa5pSbFJbQwXqzUXeguib3jW4TVBZK7X4bttrC4qDKr74mOGE5E9yqH272FSmqKqbiHcZyip++toy2YrYV+309kuRdf5ctES5mRG6k5ab9QaJrdfUVH
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR03MB5196.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199021)(26005)(31686004)(478600001)(6666004)(6512007)(6506007)(31696002)(86362001)(2616005)(186003)(38350700002)(38100700002)(6916009)(66556008)(66946007)(4326008)(66476007)(83380400001)(66574015)(52116002)(6486002)(53546011)(316002)(5660300002)(8676002)(8936002)(7416002)(41300700001)(2906002)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1BwUS9Gc1RraFhWWXluazNva3g0bUIxNVVtekluMjArZDRBNGxXb1d1N0li?=
 =?utf-8?B?V01IQXJmdTM3am1UYTFCdjhRTENMUFNOeVpoUEpMbGlUNkVnU0NYMFBiSG81?=
 =?utf-8?B?NUx1Q0d1TENPY1NTVS85Z2szWi9sVC82UGhWS2M1ZXZQS3dvVmdyRG9wek9h?=
 =?utf-8?B?ZmN4US9wcTU4Ykw5V2krVEtIZ2d6bTYwRFFGUmdPNTBUMTlzWGdqbzhjRFNk?=
 =?utf-8?B?Ujh1S00wQUtwUEt4L2lyWkl4R1l2OXNQaWpIaFM1QVYrUzV2ZHFCMFpqckt2?=
 =?utf-8?B?Zy9VVDhzOXNKenJVRWFJL0VwcDk4RXRYT0hCcUxZTkRrWHkyYXlSYUs3aVlx?=
 =?utf-8?B?WHd1em1kVy8rMnQ3dHZQbExMejdyWFBrR3BPRnJ0Y0Q4cllXbGFSSysveVhx?=
 =?utf-8?B?Y2ZURmRBcytaTDlkTXVEMkJVSTE5TnN5c2NiaHZUaUVWeHA0VHZBK2lHcGhn?=
 =?utf-8?B?U3pieXVCUjRKUHNYWkRlQ3d4ZVg4R0E3ZDZtU3Vmb29NSlgxVytYZGlUb2Rv?=
 =?utf-8?B?UWRZbUxYUmJaYWNacVFUNStVb0dMQmVkTmJ3UVp0VG9LdVRLQ09peUtaVUxO?=
 =?utf-8?B?dUtFSElxSlhiS2JybG95eXkrdDFHY05NUHBrV2wrcVRVK21MQUVWa0d2eElW?=
 =?utf-8?B?ajJKLzNCZjFrTFB0THJmYXNOYjRLM1pwamJFNUtyRE5lTFpFQXliVVlvcE9U?=
 =?utf-8?B?YkZJSElpdFRlOUFIeEpaUDhtYTd3YWZrekdWSjNvSWQwdENSM3BOMXo4bEdK?=
 =?utf-8?B?TkpUbWtoYmtvNTIwRW40d2pHVDJubndkVFBVRUtZbmcwMEFjY3REcW54NWEv?=
 =?utf-8?B?V1Eya1c2UnNSeDN6QlhUV2VJU1NYeTRGQUk0TzBQZnlSTXdzTFpXTHZLdFFY?=
 =?utf-8?B?Q3ljdkxSTnYrYzdmMjdUc2dpWUhWVXk2V1MwTDE3UW5lOFU5cGxCMStSZFIw?=
 =?utf-8?B?cGVoVWsrSnI5RUEzS0ZWa3IvRXVkMzBMM3pkVkUyWDBDcXZKNng4OTR5bFJK?=
 =?utf-8?B?aVVCUHJUK1k4bnE3OHErQjNSUXlVWjRFTE56VVRGeDMvVE1STXFOYW9GS3dq?=
 =?utf-8?B?bTZ2RkQ3a3RYTEtKVEg0cnp3NHRuOEFiSUFhZmVWVzE3NTZnRHZBRlNlMmJD?=
 =?utf-8?B?ZlE5Ukx3alo0SExaVmFGL25uZ3VoRG5SRmtOckZjOVNIRzNSbFFkQmxGaWxp?=
 =?utf-8?B?SE9EUm5Md0tpQkVTb0tWcU92UjZrNVBHU2Y0QkNTY0VWN3gweGdtY0doQjlh?=
 =?utf-8?B?b3piT045MHZEQmZjV29jTnVVZ2dyQjZ3YWxEUVJ2SmdIdXlqUGprVXZ0ZVMw?=
 =?utf-8?B?QzZpMWFkYVlCTVFuYUxIb3RPUnRFbjZBeU9jMVgyRnZ3bXc0eG93TW9UK3Z1?=
 =?utf-8?B?V1pocTRPcVJOVFVNUHcvRXVXN3lRT1dOaWc0VDBzdTMwQkdRRnN0ZXluMWxG?=
 =?utf-8?B?UGI4SnJOSWxTS3EvOGs4NzZrK0gzM3VnMVhwUFBJUm9DdGZjdFhoektqTk1R?=
 =?utf-8?B?SWNySXAxeHBmZHlOdlJUUmdTd2k2amZxekRGSDRNOEwrbnp0bjVXcjJoTGRZ?=
 =?utf-8?B?b01BTFphZXkvMU9KRUNCb3VlZ2p4aXF2THVjcjhLWHdRdERQTTVKbVdCam9T?=
 =?utf-8?B?Tjd4OElWcXNudVJTelB1eFp1OVZkczZCck1LK1hxdzRnSERLbHdkZnUwQkx1?=
 =?utf-8?B?Tll6bzdlVkdVU2VzbXpUcmFpM0NUWWJQcmFFWDdRTGNwZFFkSzJpSGZhWVlF?=
 =?utf-8?B?K3ZBUXRNSmNPVUI2NHNHektnWlU2TDJxd2h5N2FtdnlCQUI5UmNscE9rb1kr?=
 =?utf-8?B?aFU2WldxYTM0Q3ZwM1dLR3c3TzNMdnlMdE8vcWNvREJvSlNyOEMyQnZwbTVM?=
 =?utf-8?B?UDhQK29JNGZlYkRmMlQrNkUwdFM0SmM1c0NkcFhIQ0J5MUw5UDdRQnZDbFJz?=
 =?utf-8?B?L2IxQktoV0IzZXkrdlVDSGk2VkRlTWV2Qk1PTDdRRzJlUTZ1MlYycE9YK0NR?=
 =?utf-8?B?K0REeXIwVUtlbTA0YnNBdjFWcnQ2Um5WcWliV0xISkxjVUxGZFhXRnZnN29s?=
 =?utf-8?B?QnRCWjhuZWwza1FjQlR3akJoTmY3YlV0bWZPeGduSzlhbVdpL0E1UlJZQlAw?=
 =?utf-8?Q?oO1GVOzDZGRQzudi3GKReBEjj?=
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25d1422f-48e6-4956-650e-08db7ba07a7f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR03MB5196.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2023 08:35:38.4169
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kyozrvIdu+LDsyKNsp1k7ugEG8veho+CT3ALItpQksLwEKf1OWHHkHFkFJhAUGkahRYN+tmKByQoa6PvJwwtCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR03MB6058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_013551_008502_B1000996 
X-CRM114-Status: GOOD (  21.49  )
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

Ck9uIDcvMy8yMyAxNjowOSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gQ0FVVElPTjogRW1h
aWwgb3JpZ2luYXRlZCBleHRlcm5hbGx5LCBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiAKPiBh
dHRhY2htZW50cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyIGFuZCBrbm93IHRoZSBj
b250ZW50IGlzIHNhZmUuCj4KPgo+IExlIDMwLzA2LzIwMjMgw6AgMTE6NTEsIEhzaWEtSnVuIExp
IGEgw6ljcml0IDoKPj4KPj4gT24gNi8yMi8yMyAyMToxMywgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+PiBDQVVUSU9OOiBFbWFpbCBvcmlnaW5hdGVkIGV4dGVybmFsbHksIGRvIG5vdCBjbGlj
ayBsaW5rcyBvciBvcGVuCj4+PiBhdHRhY2htZW50cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUg
c2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzCj4+PiBzYWZlLgo+Pj4KPj4+Cj4+PiBBZnRl
ciBjaGFuZ2luZyBidWZzIGFycmF5cyB0byBhIGR5bmFtaWMgYWxsb2NhdGVkIGFycmF5Cj4+PiBW
QjJfTUFYX0ZSQU1FIGRvZXNuJ3QgbWVhbiBhbnl0aGluZyBmb3IgdmlkZW9idWYyIGNvcmUuCj4+
Cj4+IEkgdGhpbmsgbWFrZSBpdCA2NCB3aGljaCBpcyB0aGUgVkIyX01BWF9GUkFNRSBpbiBBbmRy
b2lkIEdLSSBrZXJuZWwgaXMKPj4gbW9yZSByZWFzb25hYmxlLgo+Pgo+PiBJdCB3b3VsZCBiZSBo
YXJkIHRvIGl0ZXJhdGUgdGhlIHdob2xlIGFycmF5LCBpdCB3b3VsZCBnbyB3b3JzZSB3aXRoIGEK
Pj4gZmlsdGVyLiBTdWNoIGl0ZXJhdGUgbWF5IG5lZWQgdG8gZ28gdHdpY2UgYmVjYXVzZSB5b3Ug
bWl4Cj4+IHBvc3QtcHJvY2Vzc2luZyBidWZmZXIgYW5kIGRlY29kaW5nIGJ1ZmZlcih3aXRoIE1W
KSBpbiB0aGUgc2FtZSBhcnJheS4KPgo+IEhlcmUgSSBkb24ndCB3YW50IHRvIGNoYW5nZSBkcml2
ZXJzIGJlaGF2aW9yIHNvIEkga2VlcCB0aGUgc2FtZSB2YWx1ZS4KPiBJZiBpdCBoYXBwZW5zIHRo
YXQgdGhleSBuZWVkIG1vcmUgYnVmZmVycywgbGlrZSBmb3IgZHluYW1pYyByZXNvbHV0aW9uIAo+
IGNoYW5nZQo+IGZlYXR1cmUgZm9yIFZlcmlzaWxpY29uIFZQOSBkZWNvZGVyLCBjYXNlIGJ5IGNh
c2UgcGF0Y2hlcyB3aWxsIGJlIG5lZWRlZC4KPgpJIGp1c3QgZG9uJ3QgbGlrZSB0aGUgaWRlYSB0
aGF0IHVzaW5nIGEgdmFyaWFudCBsZW5ndGggYXJyYXkgaGVyZS4KCkFuZCBJIGNvdWxkIGV4cGxh
aW4gd2h5IHlvdSB3b24ndCBuZWVkIHNvIG1hbnkgYnVmZmVycyBmb3IgdGhlIApwZXJmb3JtYW5j
ZSBvZiBkZWNvZGluZy4KClZQOSBjb3VsZCBzdXBwb3J0IDEwIHJlZmVyZW5jZSBmcmFtZXMgaW4g
ZHBiLgoKRXZlbiBmb3IgdGhvc2UgZnJlcXVlbnQgcmVzb2x1dGlvbiBjaGFuZ2luZyB0ZXN0IHNl
dCwgaXQgd291bGQgb25seSAKaGFwcGVuIHRvIHR3byByZXNvbHV0aW9ucywKCjMyIHdvdWxkIGJl
IGVub3VnaCBmb3IgMjAgYnVmZmVycyBvZiB0d28gcmVzb2x1dGlvbiBwbHVzIGdvbGRlbiBmcmFt
ZXMuIApJdCBhbHNvIGxlYXZlcyBlbm91Z2ggc2xvdHMgZm9yIHJlLW9yZGVyIGxhdGVuY3kuCgpJ
ZiB5b3VyIGNhc2UgaGFkIG1vcmUgdHdvIHJlc29sdXRpb25zLCBsaWtlcyBsb3ctPm1lZGl1bS0+
aGlnaC4KCkkgd291bGQgc3VnZ2VzdCBqdXN0IHNraXAgdGhlIG1lZGl1bSByZXNvbHV0aW9ucywg
anVzdCBhbGxvY2F0ZSB0aGUgCmxvd2VyIG9uZSBmaXJzdCBmb3IgZmFzdCBwbGF5YmFjayB0aGVu
IHRoZSBoaWdoZXN0IGZvciBhbGwgdGhlIHBvc3NpYmxlCgptZWRpdW0gY2FzZXMuIFJlYWxsb2Nh
dGlvbiBoYXBwZW5zIGZyZXF1ZW50bHkgd291bGQgb25seSBjYXVzZSBtZW1vcnkgCmZyYWdtZW50
LCBub3RoaW5nIGJlbmVmaXRzIHlvdXIgcGVyZm9ybWFuY2UuCgo+Cj4+Cj4+PiBSZW1vdmUgaXQg
ZnJvbSB0aGUgY29yZSBkZWZpbml0aW9ucyBidXQga2VlcCBpdCBmb3IgZHJpdmVycyBpbnRlcm5h
bAo+Pj4gbmVlZHMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvbWVk
aWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jIHwgMiArKwo+Pj4gwqAgZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9hbXBoaW9uL3ZkZWMuYyB8IDEgKwo+Pj4gLi4uL21lZGlhL3BsYXRm
b3JtL21lZGlhdGVrL3Zjb2RlYy92ZGVjL3ZkZWNfdnA5X3JlcV9sYXRfaWYuYyB8IDIgKysKPj4+
IMKgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS92ZW51cy9oZmkuaCB8IDIgKysKPj4+IMKg
IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2h3LmggfCAyICsrCj4+
PiDCoCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9pcHUzLXY0bDIuYyB8IDIgKysKPj4+IMKg
IGluY2x1ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaCB8IDEgLQo+Pj4gwqAgaW5jbHVkZS9tZWRp
YS92aWRlb2J1ZjItdjRsMi5oIHwgNCAtLS0tCj4+PiDCoCA4IGZpbGVzIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4+PiBiL2RyaXZlcnMvbWVk
aWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4+PiBpbmRleCA4NmUxZTkyNmZh
NDUuLjg5OTc4M2Y2NzU4MCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3Zp
ZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4+PiArKysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92
aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYwo+Pj4gQEAgLTMxLDYgKzMxLDggQEAKPj4+Cj4+PiDC
oCAjaW5jbHVkZSA8dHJhY2UvZXZlbnRzL3ZiMi5oPgo+Pj4KPj4+ICsjZGVmaW5lIFZCMl9NQVhf
RlJBTUXCoCAzMgo+Pj4gKwo+Pj4gwqAgc3RhdGljIGludCBkZWJ1ZzsKPj4+IMKgIG1vZHVsZV9w
YXJhbShkZWJ1ZywgaW50LCAwNjQ0KTsKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9hbXBoaW9uL3ZkZWMuYwo+Pj4gYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL2Ft
cGhpb24vdmRlYy5jCj4+PiBpbmRleCAzZmExYTc0YTJlMjAuLmIzMjE5ZjZkMTdmYSAxMDA2NDQK
Pj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYW1waGlvbi92ZGVjLmMKPj4+ICsrKyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYW1waGlvbi92ZGVjLmMKPj4+IEBAIC0yOCw2ICsyOCw3
IEBACj4+Pgo+Pj4gwqAgI2RlZmluZSBWREVDX01JTl9CVUZGRVJfQ0FQwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA4Cj4+PiDCoCAjZGVmaW5lIFZERUNfTUlOX0JVRkZFUl9PVVTCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDgKPj4+ICsjZGVmaW5lIFZCMl9NQVhfRlJBTUXCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDMyCj4+Pgo+Pj4gwqAgc3RydWN0IHZkZWNfZnNfaW5mbyB7Cj4+PiDC
oMKgwqDCoMKgwqDCoMKgIGNoYXIgbmFtZVs4XTsKPj4+IGRpZmYgLS1naXQKPj4+IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9tZWRpYXRlay92Y29kZWMvdmRlYy92ZGVjX3ZwOV9yZXFfbGF0X2lm
LmMKPj4+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZWRpYXRlay92Y29kZWMvdmRlYy92ZGVj
X3ZwOV9yZXFfbGF0X2lmLmMKPj4+IGluZGV4IDY1MzJhNjlmMWZhOC4uYTFlMGYyNGJiOTFjIDEw
MDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZWRpYXRlay92Y29kZWMvdmRl
Yy92ZGVjX3ZwOV9yZXFfbGF0X2lmLmMKPj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
bWVkaWF0ZWsvdmNvZGVjL3ZkZWMvdmRlY192cDlfcmVxX2xhdF9pZi5jCj4+PiBAQCAtMTYsNiAr
MTYsOCBAQAo+Pj4gwqAgI2luY2x1ZGUgIi4uL3ZkZWNfZHJ2X2lmLmgiCj4+PiDCoCAjaW5jbHVk
ZSAiLi4vdmRlY192cHVfaWYuaCIKPj4+Cj4+PiArI2RlZmluZSBWQjJfTUFYX0ZSQU1FwqAgMzIK
Pj4+ICsKPj4+IMKgIC8qIHJlc2V0X2ZyYW1lX2NvbnRleHQgZGVmaW5lZCBpbiBWUDkgc3BlYyAq
Lwo+Pj4gwqAgI2RlZmluZSBWUDlfUkVTRVRfRlJBTUVfQ09OVEVYVF9OT05FMCAwCj4+PiDCoCAj
ZGVmaW5lIFZQOV9SRVNFVF9GUkFNRV9DT05URVhUX05PTkUxIDEKPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vdmVudXMvaGZpLmgKPj4+IGIvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9xY29tL3ZlbnVzL2hmaS5oCj4+PiBpbmRleCBmMjVkNDEyZDY1NTMuLmJkNWNh
NWE4Yjk0NSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS92ZW51
cy9oZmkuaAo+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL3ZlbnVzL2hmaS5o
Cj4+PiBAQCAtMTAsNiArMTAsOCBAQAo+Pj4KPj4+IMKgICNpbmNsdWRlICJoZmlfaGVscGVyLmgi
Cj4+Pgo+Pj4gKyNkZWZpbmUgVkIyX01BWF9GUkFNRcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDMyCj4+PiArCj4+PiDCoCAjZGVmaW5lIFZJRENfU0VT
U0lPTl9UWVBFX1ZQRcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMAo+Pj4gwqAg
I2RlZmluZSBWSURDX1NFU1NJT05fVFlQRV9FTkPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDEKPj4+IMKgICNkZWZpbmUgVklEQ19TRVNTSU9OX1RZUEVfREVDwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaAo+Pj4gYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19ody5oCj4+PiBpbmRleCBlODNmMGM1MjNhMzAuLjllOGZh
ZjdiYTZmYiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vaGFudHJvX2h3LmgKPj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vaGFudHJvX2h3LmgKPj4+IEBAIC0xNSw2ICsxNSw4IEBACj4+PiDCoCAjaW5jbHVkZSA8bWVk
aWEvdjRsMi12cDkuaD4KPj4+IMKgICNpbmNsdWRlIDxtZWRpYS92aWRlb2J1ZjItY29yZS5oPgo+
Pj4KPj4+ICsjZGVmaW5lIFZCMl9NQVhfRlJBTUXCoCAzMgo+Pj4gKwo+Pj4gwqAgI2RlZmluZSBE
RUNfODE5MF9BTElHTl9NQVNLwqDCoMKgIDB4MDdVCj4+Pgo+Pj4gwqAgI2RlZmluZSBNQl9ESU3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxNgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9pcHUzL2lwdTMtdjRsMi5jCj4+PiBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9pcHUzL2lwdTMtdjRsMi5jCj4+PiBpbmRleCBlNTMwNzY3ZTgwYTUuLjY2MjdiNWMyZDRk
NiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pcHUzL2lwdTMtdjRsMi5j
Cj4+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9pcHUzLXY0bDIuYwo+Pj4gQEAg
LTEwLDYgKzEwLDggQEAKPj4+IMKgICNpbmNsdWRlICJpcHUzLmgiCj4+PiDCoCAjaW5jbHVkZSAi
aXB1My1kbWFtYXAuaCIKPj4+Cj4+PiArI2RlZmluZSBWQjJfTUFYX0ZSQU1FwqAgMzIKPj4+ICsK
Pj4+IMKgIC8qKioqKioqKioqKioqKioqKioqKiB2NGwyX3N1YmRldl9vcHMgKioqKioqKioqKioq
KioqKioqKiovCj4+Pgo+Pj4gwqAgI2RlZmluZSBJUFUzX1JVTk5JTkdfTU9ERV9WSURFT8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwCj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9tZWRp
YS92aWRlb2J1ZjItY29yZS5oCj4+PiBiL2luY2x1ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaAo+
Pj4gaW5kZXggNzc5MjFjZjg5NGVmLi4wODBiNzgzZDYwOGQgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNs
dWRlL21lZGlhL3ZpZGVvYnVmMi1jb3JlLmgKPj4+ICsrKyBiL2luY2x1ZGUvbWVkaWEvdmlkZW9i
dWYyLWNvcmUuaAo+Pj4gQEAgLTIwLDcgKzIwLDYgQEAKPj4+IMKgICNpbmNsdWRlIDxtZWRpYS9t
ZWRpYS1yZXF1ZXN0Lmg+Cj4+PiDCoCAjaW5jbHVkZSA8bWVkaWEvZnJhbWVfdmVjdG9yLmg+Cj4+
Pgo+Pj4gLSNkZWZpbmUgVkIyX01BWF9GUkFNRcKgICgzMikKPj4+IMKgICNkZWZpbmUgVkIyX01B
WF9QTEFORVMgKDgpCj4+Pgo+Pj4gwqAgLyoqCj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9tZWRp
YS92aWRlb2J1ZjItdjRsMi5oCj4+PiBiL2luY2x1ZGUvbWVkaWEvdmlkZW9idWYyLXY0bDIuaAo+
Pj4gaW5kZXggNWE4NDU4ODc4NTBiLi44OGE3YTU2NTE3MGUgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNs
dWRlL21lZGlhL3ZpZGVvYnVmMi12NGwyLmgKPj4+ICsrKyBiL2luY2x1ZGUvbWVkaWEvdmlkZW9i
dWYyLXY0bDIuaAo+Pj4gQEAgLTE1LDEwICsxNSw2IEBACj4+PiDCoCAjaW5jbHVkZSA8bGludXgv
dmlkZW9kZXYyLmg+Cj4+PiDCoCAjaW5jbHVkZSA8bWVkaWEvdmlkZW9idWYyLWNvcmUuaD4KPj4+
Cj4+PiAtI2lmIFZCMl9NQVhfRlJBTUUgIT0gVklERU9fTUFYX0ZSQU1FCj4+PiAtI2Vycm9yIFZC
Ml9NQVhfRlJBTUUgIT0gVklERU9fTUFYX0ZSQU1FCj4+PiAtI2VuZGlmCj4+PiAtCj4+PiDCoCAj
aWYgVkIyX01BWF9QTEFORVMgIT0gVklERU9fTUFYX1BMQU5FUwo+Pj4gwqAgI2Vycm9yIFZCMl9N
QVhfUExBTkVTICE9IFZJREVPX01BWF9QTEFORVMKPj4+IMKgICNlbmRpZgo+Pj4gLS0gCj4+PiAy
LjM5LjIKPj4+Ci0tIApIc2lhLUp1bihSYW5keSkgTGkKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
