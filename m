Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED3BEB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 07:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WOMvkc31Gpj6B3QAVFfTU1IN2NtnCdWej71k7uHCnOM=; b=DLN8oNmRS1Nm1AhWWPSZOAYVsG
	CaIAOO+R8/iYVN8vw8rjCLLAcMKG4dAvIs8XuEC9RnCfZvse8Q/TgiR/DSbroY9dLI5n5gfwd7k/O
	iZYC8f6+1NNhCE5grPa5FWc+mnN43gKh6KQKgAb2MddUrFJW4HJCm4ZXHylkCdWzO77sSU0DIZ9rK
	EfFt4eAtJ/jfW3ebW8EnJP15usVIt6J3Z85lws2hk6Q4OQ+0EfbaIlGi4EHZUNrOPx+1YuYzfisJj
	7IqZtJ+eGAUwrIir1KJngEzW9LQT3u8nKfAP90s62oc3t6z0GlgXsaJR3BsC9K7jfWFbvkkzaKCBm
	S0fueL9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE3Ju-00COwI-2l;
	Tue, 27 Jun 2023 07:41:02 +0000
Received: from mail-dm6nam11on2062b.outbound.protection.outlook.com ([2a01:111:f400:7eaa::62b] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE3Jr-00COug-2N;
	Tue, 27 Jun 2023 07:41:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f9o+/E681tVc4Ms5LnVVt/8NuMcgGspQL36EddSwNsU9LB9bkC3MvAhVcap6uxQczmgSqoj8SBXS0HwrwpSbrR5cIE3SkNjk+FzKBj2wkCjfgBu9kGjMoDTeNk+7TR0gDdi+maTAQCeyGZ2jmwrcE5OnKJAchqihzrfZNivyJ9inRrGohK1kH/ibmR06DHYs/Vb2M5o+e6FkJD8rmTNWgjiGj84iznTErRvhe8ehalkoOGl3NxgmXyDngrwqGE7Yx/1dqltskeNS9drxtF+DaIkE1xOuURpZxfI5v8HeeBI5ojODLjIEMJjIxoBPPcZJB7tgNjWdi5/M9daGle882w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W5zGuCbBmeWK5HA2ezFr92PFo9Tfh9AxK38Nq+RZ9do=;
 b=NCpRfZG7+kq89nkcsF/hl3PdM+tHMK7hE1/Ln5LWUGO8+0GVxkpOJMduOcK2OY3Ri6YwC/v7iUCRZkdMzBNxULASrhOUIXUREYzfwU2Jw7X0a5xCWKWlidtJ8qiEvznPwjASyrkDAnnf1XAaN24pOhzp8EVr6jdT50VEtH2iy2U3kFyw4pU2ckMr4RbM3lrDJR5Kp0HJLBA3qJP7aTzAjoRMOZSeUjV47OWc1aqH2SMbTY2JBI7Sgokxf+8zij3SIPyPHGRCWRIraThknhi6IHGaCOmnQbcxpuKJ4La3JPvklMTvc5Mzy0FWOdijOBR4H7xQbHMfh7vWFRNuklgnNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W5zGuCbBmeWK5HA2ezFr92PFo9Tfh9AxK38Nq+RZ9do=;
 b=WJSWJMD+lGMQMo8ywqgyfkrDE6ox3ckJK1Cr42CZgIDHvunuXEiZIO4cz8pLbMWoJFGU1TmZfHYnBR+yXk7Mjz42d0jHXV7y4My2kbE6G/VfG2mWEfSo35hw3ZLqCdJFrYAl8AZBmRBiX9sIME8ePPkVIwJNX31xVmkiB/K/A5g=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=synaptics.com;
Received: from DM6PR03MB5196.namprd03.prod.outlook.com (2603:10b6:5:24a::19)
 by PH7PR03MB7048.namprd03.prod.outlook.com (2603:10b6:510:2b2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Tue, 27 Jun
 2023 07:40:45 +0000
Received: from DM6PR03MB5196.namprd03.prod.outlook.com
 ([fe80::6882:b9c1:2b2d:998d]) by DM6PR03MB5196.namprd03.prod.outlook.com
 ([fe80::6882:b9c1:2b2d:998d%5]) with mapi id 15.20.6521.023; Tue, 27 Jun 2023
 07:40:45 +0000
Message-ID: <3bc80514-49cf-b36c-42f7-7d2a29c93331@synaptics.com>
Date: Tue, 27 Jun 2023 15:40:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 00/11] Add DELETE_BUF ioctl
Content-Language: en-GB
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 ming.qian@nxp.com, mchehab@kernel.org, linux-staging@lists.linux.dev,
 kernel@collabora.com, p.zabel@pengutronix.de, ezequiel@vanguardiasur.com.ar,
 m.szyprowski@samsung.com, gregkh@linuxfoundation.org, tfiga@chromium.org,
 nicolas.dufresne@collabora.com, hverkuil-cisco@xs4all.nl
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
From: Hsia-Jun Li <Randy.Li@synaptics.com>
In-Reply-To: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
X-ClientProxiedBy: PH0PR07CA0065.namprd07.prod.outlook.com
 (2603:10b6:510:f::10) To DM6PR03MB5196.namprd03.prod.outlook.com
 (2603:10b6:5:24a::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR03MB5196:EE_|PH7PR03MB7048:EE_
X-MS-Office365-Filtering-Correlation-Id: 07c3bd90-e495-48ca-c9ac-08db76e1d0f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cOasIt6az10kC9G18EjVu/1B3K/4KCAP0zB4ZHrymXFzOZ1p6Y1zifgMdqEsxgAIWyqz982e7kmTCrsjxFO1TezueG4AogG20v1Aiw/1UzbBees++b5EgYiAc3FkhvSMMjk1TvVroQ2jMU+TNbssJfvx0M5ifweGGAP2E7OfSwehKvPUm2WwJ6LSACqVyazJruTtGZXJti5/+veQUjjZbRL2uxScQ6oaIYW3/gY4mgcB3BAlTWa4/OZwo19rJ41HqwwKf+zUUq1nzcQMoosp5VlIBUq3XH4Mpe5VoPYGACqJz8kNIzhCbh+lc1lvpyf+WAROa7EIJ12gMFFdKCLFmcVT0uKMsHETkV8K252iymC0Vmht/XjxVvoZHnlPGJU2JfyyQ/MCPpntPVo9oBGxRWkwNIBgy4BKiQ2zSS5qFCcrnpI5Z11kD4qsBNdyNMxZEt2Toou+2INjdHZKHO73YayGHDRf0TKUhEtWU0FXjGbVnJcLZNnNljhocpo92WSerqaOKb3mUs7abBmwVnfOOINwpaj2ClnWmr8hT3mGS1QjP6/QGq9rRBgJBzog1zpHo8Ov8FzozhEzP4/FZdgVL18t06HER90ssaEP74sQITyk4zJhFzGIFxlqkYG4f66CLlQH2mUMXjyynGp7dibArvZFgw6EtgOVrkILdb9fWBw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR03MB5196.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(136003)(376002)(396003)(39860400002)(346002)(451199021)(8936002)(41300700001)(8676002)(966005)(66476007)(52116002)(6666004)(316002)(4326008)(66946007)(6916009)(66556008)(83380400001)(31696002)(86362001)(478600001)(6486002)(6506007)(53546011)(26005)(6512007)(31686004)(2616005)(186003)(36756003)(5660300002)(7416002)(2906002)(38100700002)(38350700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THZzdXdyTWM3MEpxUzFqQlRlYmZrelAxSWpwdytsQWZoNDEzNlB2N21ISldU?=
 =?utf-8?B?Um16T1JLZ0wxYURGb2VsQld4TVVMTHRIZkRHYmdwRXp3ajFIbUVMMkQ3RXha?=
 =?utf-8?B?QW0zZFcwbkpzTGZ5dWRrM2g3RUU5bEVkR2o5V21uSjN0UmhPa2JRSC9Uc0Mw?=
 =?utf-8?B?ZC9BSm1QaVBOeTVjQXFtTzVIZSt6bFJ4ZmxFR1lldlloa0RUTzJNdnlRWDZH?=
 =?utf-8?B?RlZWV1g0Zk9WdXA4S1o3RTJYU1Z3amV6VkhxdUtEQ3dTbE5yS1NrSmZ4eE9n?=
 =?utf-8?B?dGRGaVVuc0RwdW51Tmx5TWJhL3ZKU3YwSElYQTZQckM4bDRsZHdaNlBMQVBD?=
 =?utf-8?B?WGg0MDZHaWViVHMwNytTVXVBRktpTjdJcGlISk9mYnE5Rm12Vm4veCtzc1R2?=
 =?utf-8?B?T0lMQ3k0dTcva2t3T05kSnhNSjJmbDFjeHcrUFFwdGhLVUxyVWszTExFOVVj?=
 =?utf-8?B?cmdZdzFlbVBHL0tyc2NQYmZPeWZOUzA5K00xZFNUQUFpc2V3VlNZT3dIMFMy?=
 =?utf-8?B?MjVPVHlXZ09aazFHZDFHU1ZHMVpoZno1Ty9ER3BsMnd6RGVqNW9ta3N2OHdP?=
 =?utf-8?B?Z2ZzZEhoejNjbCsxbDE4amxSN3hRWHBkTUU0WGJ5QjJxS0kraEZIWHA2aUVI?=
 =?utf-8?B?d0lyU0lSY2Z6WldYYkpKcmVOWkxqZUk4bEdKVThGVm8rMlFhTjIrUGtHNHQ0?=
 =?utf-8?B?VE9EeExoMGFpWHEvc2dqVVFIWWJnN0tDbXJXalBMVE1FbFBWWStlalQySFQ1?=
 =?utf-8?B?MEZIVG0vVEQzUmJJYjNES3pOVENmdkpLNlpNTWhvUk9QTXp1dWFXNmhsZzNx?=
 =?utf-8?B?ViswK0x6MUxJVUtMekJGcVd4ZXVsZEpXbmsyWkxtSEM2TG1xREpBc1Aydyt1?=
 =?utf-8?B?U1VhV0lKWElqaEMwSU9DWkNwZTFOYm9ZbnRFVmZtSGdCc1YxS1lkZHBmNmRR?=
 =?utf-8?B?R3phbE9ZdlRncVVEdVkyNE1vc1l5anZDV0JRa3pLSjhRc0Y3ZTQvclExWHph?=
 =?utf-8?B?cjdIUFVveEdlMWJ4RWZRK1BqQUdneEl0Nk1VV2RpelM4dkpKQndYWEs0bjJY?=
 =?utf-8?B?WUNia1ZyVWNKV2dXRXhlRm9SZ0RyRVF0bkwzS2RWR1pkbnpYUzNhVEtLajBH?=
 =?utf-8?B?OXQ2MkxjT2NadUVpK0E3OVFOL3JHNHpNL3E0OTdIekNaNTFBU3p4Sm80UlMv?=
 =?utf-8?B?bXk5QmQzaUZJenM3VFdMeHhhMHMvdloyQzlXeU1VeE11NmhwN0JJcHlSS0ZN?=
 =?utf-8?B?RDRNbW9EamRQYjBKb1A2NXRqSnF0SThWL3hWdVBvME1OUmJMcldDWXh4QXRm?=
 =?utf-8?B?RFMwaytlaEhiMkluVk0vaFRxOXBYUDl2cERxY3FGajlDL2dqdVpUZitqUHlO?=
 =?utf-8?B?MSttUDRCS0doS3hRQTdmc3JibTZJaGF2UXZNZmx5aEIyVVloMEtDK1NZUFBr?=
 =?utf-8?B?UFFnbnlFaDcxWGI0bGhCaEk4REZUSVVTVVNJYW1pQ3lSRWx6L3lFWU1pblE0?=
 =?utf-8?B?Y0ZpdUgzbXMxd0NFMGVHUlVJdERucjdCR2pXSkg5SlQ4UXRGV3FSa1JyRXRz?=
 =?utf-8?B?WmZ5ZVY5SDhUdEpLS2IzcDhPaGhndnAvNGRmVmhGazZ3ZUFrS2JOQ2M1VFFP?=
 =?utf-8?B?ZnRYOTJlNlNjU1R6ZTNDMDMwcE4wa3NseVJsRDNXMDltdXNJMXJFc216TjhR?=
 =?utf-8?B?U0xLMmIvclRMbDBlL1lCUVNNR1JiZXAyazBtRXJEWEo0d3U2bE5RYXFSRWo5?=
 =?utf-8?B?amFQSnJYVlRiTkNVWk1oNHRhQ09vTGVOL1N3V0hXa1JrdVhaYlFPNGVYNzVU?=
 =?utf-8?B?YmJDNGdzSmNJTnBaNFhhSmVVS2JXOEVZb3liMFlESHp2WTd6Z1NLa2hPa1c4?=
 =?utf-8?B?OE00cDBOcDhpbTZpcmk3M2xlVURkRFI0bnFqanFIdnFkcEw2Yi84NHNQeWhL?=
 =?utf-8?B?TUtnQTJRS0RVTTBzOXZkSGpOWmhUSE1WdVFaT05HY0tXMGpKY0xzTzB4bmhy?=
 =?utf-8?B?NnVaaHo5NXNCa3QxQjZFUDRWNjdxZHo3ZDk3ZGQ3RUFhYXdET1U5bVVtYjBX?=
 =?utf-8?B?V0dUNDhjMXlOaGd2RjFRR3RrNHptOUJ1RDBCR3VtL1k4MmsvNUtSUE40YVRO?=
 =?utf-8?Q?lc2vAdIr9RKA4Kszbgcm+GUkb?=
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07c3bd90-e495-48ca-c9ac-08db76e1d0f7
X-MS-Exchange-CrossTenant-AuthSource: DM6PR03MB5196.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 07:40:45.0536
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9EP+dgtNn3zH4IyMja06oWkOXjlNjA4PnN2reDwE3lp1XiJxKWeSrfH0MaLIamGptygczw8YGAPUczV3lUawKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR03MB7048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_004059_780837_3FA5342A 
X-CRM114-Status: GOOD (  27.21  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On 6/22/23 21:13, Benjamin Gaignard wrote:
> CAUTION: Email originated externally, do not click links or open attachments unless you recognize the sender and know the content is safe.
>
>
> Unlike when resolution change on keyframes, dynamic resolution change
> on inter frames doesn't allow to do a stream off/on sequence because
> it is need to keep all previous references alive to decode inter frames.
> This constraint have two main problems:
> - more memory consumption.
> - more buffers in use.
> To solve these issue this series introduce DELETE_BUF ioctl and remove
> the 32 buffers limit per queue.

I know the VIDIOC_CREATE_BUFS allows creating a buffer with a different 
size than the driver suggests in G_FMT.

But the vb2_ops->queue_setup() could check whether the sizeimages meet 
its minimal requirement with the current format.

This enables a problem that the driver need to check the buffer size 
before they make a hardware use a buffer from the rdy_queue.


Thinking of such case, we know a AV1 sequence(VP9 or VP8 didn't have a 
sequence header) would need a much large buffer for the alternative 
reference frame.

Then create one special buffer for the altref, the driver need a 
hardware to pick it from the rdy_queue first or it would be a waste to 
use it as a regular frame buffer.

Also missing such step would not solve the memory allocation problem.

>
> VP9 conformance tests using fluster give a score of 210/305.
> The 25 resize inter tests (vp90-2-21-resize_inter_* files) are ok
> but require to use postprocessor.
>
> Kernel branch is available here:
> https://urldefense.proofpoint.com/v2/url?u=https-3A__gitlab.collabora.com_benjamin.gaignard_for-2Dupstream_-2D_commits_remove-5Fvb2-5Fqueue-5Flimit-5Fv3&d=DwIDAg&c=7dfBJ8cXbWjhc0BhImu8wVIoUFmBzj1s88r8EGyM0UY&r=P4xb2_7biqBxD4LGGPrSV6j-jf3C3xlR7PXU-mLTeZE&m=DCpeuc2fAyJ_XUCYsydYOB5ynn0uW4JsFKVbEiXj-6AhZ5d2vm3GkOClPl8cfN9U&s=8whob9PKPu98WlyK6J9DcmFFiDPbwI3ws-nLfWR0oTE&e=
>
> GStreamer branch to use DELETE_BUF ioctl and testing dynamic resolution
> change is here:
> https://urldefense.proofpoint.com/v2/url?u=https-3A__gitlab.freedesktop.org_benjamin.gaignard1_gstreamer_-2D_commits_VP9-5Fdrc&d=DwIDAg&c=7dfBJ8cXbWjhc0BhImu8wVIoUFmBzj1s88r8EGyM0UY&r=P4xb2_7biqBxD4LGGPrSV6j-jf3C3xlR7PXU-mLTeZE&m=DCpeuc2fAyJ_XUCYsydYOB5ynn0uW4JsFKVbEiXj-6AhZ5d2vm3GkOClPl8cfN9U&s=SEexoIeuXbraR1zvtSkz0MQFGyZSeKQ7Pt6mJoNrS0A&e=
>
> changes in version 3:
> - Use Xarray API to store allocated video buffers.
> - No module parameter to limit the number of buffer per queue.
> - Use Xarray inside Verisilicon driver to store postprocessor buffers
>    and remove VB2_MAX_FRAME limit.
> - Allow Versilicon driver to change of resolution while streaming
> - Various fixes the Verisilicon VP9 code to improve fluster score.
>
> changes in version 2:
> - Use a dynamic array and not a list to keep trace of allocated buffers.
>    Not use IDR interface because it is marked as deprecated in kernel
>    documentation.
> - Add a module parameter to limit the number of buffer per queue.
> - Add DELETE_BUF ioctl and m2m helpers.
>
> Benjamin Gaignard (11):
>    media: videobuf2: Access vb2_queue bufs array through helper functions
>    media: videobuf2: Use Xarray instead of static buffers array
>    media: videobuf2: Remove VB2_MAX_FRAME limit on buffer storage
>    media: videobuf2: Stop define VB2_MAX_FRAME as global
>    media: verisilicon: Refactor postprocessor to store more buffers
>    media: verisilicon: Store chroma and motion vectors offset
>    media: verisilicon: vp9: Use destination buffer height to compute
>      chroma offset
>    media: verisilicon: postproc: Fix down scale test
>    media: verisilicon: vp9: Allow to change resolution while streaming
>    media: v4l2: Add DELETE_BUF ioctl
>    media: v4l2: Add mem2mem helpers for DELETE_BUF ioctl
>
>   .../userspace-api/media/v4l/user-func.rst     |   1 +
>   .../media/v4l/vidioc-delete-buf.rst           |  51 ++++
>   .../media/common/videobuf2/videobuf2-core.c   | 275 ++++++++++++++----
>   .../media/common/videobuf2/videobuf2-v4l2.c   |  34 ++-
>   drivers/media/platform/amphion/vdec.c         |   1 +
>   drivers/media/platform/amphion/vpu_dbg.c      |  22 +-
>   .../platform/mediatek/jpeg/mtk_jpeg_core.c    |   6 +-
>   .../vcodec/vdec/vdec_vp9_req_lat_if.c         |   4 +-
>   drivers/media/platform/qcom/venus/hfi.h       |   2 +
>   drivers/media/platform/st/sti/hva/hva-v4l2.c  |   4 +
>   drivers/media/platform/verisilicon/hantro.h   |   8 +-
>   .../platform/verisilicon/hantro_g2_vp9_dec.c  |  10 +-
>   .../media/platform/verisilicon/hantro_hw.h    |   4 +-
>   .../platform/verisilicon/hantro_postproc.c    | 114 +++++---
>   .../media/platform/verisilicon/hantro_v4l2.c  |  37 +--
>   drivers/media/test-drivers/vim2m.c            |   1 +
>   drivers/media/test-drivers/visl/visl-dec.c    |  28 +-
>   drivers/media/v4l2-core/v4l2-dev.c            |   1 +
>   drivers/media/v4l2-core/v4l2-ioctl.c          |  10 +
>   drivers/media/v4l2-core/v4l2-mem2mem.c        |  20 ++
>   .../staging/media/atomisp/pci/atomisp_ioctl.c |   2 +-
>   drivers/staging/media/ipu3/ipu3-v4l2.c        |   2 +
>   include/media/v4l2-ioctl.h                    |   4 +
>   include/media/v4l2-mem2mem.h                  |  12 +
>   include/media/videobuf2-core.h                |  16 +-
>   include/media/videobuf2-v4l2.h                |  15 +-
>   include/uapi/linux/videodev2.h                |   2 +
>   27 files changed, 523 insertions(+), 163 deletions(-)
>   create mode 100644 Documentation/userspace-api/media/v4l/vidioc-delete-buf.rst
>
> --
> 2.39.2
>
-- 
Hsia-Jun(Randy) Li


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
