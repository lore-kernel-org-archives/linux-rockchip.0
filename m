Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEB8CC32771
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 10:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=74GXIRfwMnz/jf7THPyCqF3m/6+tXR8NpKDUM9f9vow=; b=hbRPgCfhsiyMXqcgF643IIhAfv
	HOE6GpbCYV+e5hPULC+5bfaDWZq3vXg6wqpXMDRvCXF7gnRUmLXdEIEgnjP63BnOESlLGX5iOjT2H
	pG6oDZPO51R6HUtuEIZ7inYZFMTNFKzP9NxfIlJQwoJsHP0KmxFssn0UxyqHNm1nhF6cz0S2ESa24
	QiwzKxNgSA5llVTYJeSYaWeQX8/FDI61oiSyi7eD57EB952Ugd27YX0GGvDNrZI0UfITF8IXxaLpY
	2CNInWq4sffPi8WdieMHB705x0TVN7SsM/1wlwhOB0SfJZ0VcQP0TCEPoFLuR5CV4VE3z9d5VJZ55
	97fK1pYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oclON-0048Bu-Co; Mon, 26 Sep 2022 10:31:15 +0000
Received: from mail-am7eur03on2068.outbound.protection.outlook.com ([40.107.105.68] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oclOE-004846-Oi
	for linux-rockchip@lists.infradead.org; Mon, 26 Sep 2022 10:31:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MF/wkcHdTRnDS9agQEo2GBFoNg9NYmz09v5FQQSFc4miaDK51dbNWYBg0JgEtcAj3ut83ACGcRtneFRqdf/e0pLJ2N0ZdF7HhF+7LOucYK6fzI/T9YavV4zvmHcZeBk10mnZn1U4bEkW7JKO1BQpfQNI0xA+1HCYIBG3OJhu5fZMKFkXxj6nut2QKqXUGBseOzGPg5Uy9BawndSjACDFR+7mnM7mjGD8ZKNLS+5iT4LwvCJ/L0pJasqRVUOOpOXmGaSgabvc8XT73i/Rl6MfWet4XdR1MR+2x+aBp/ujVWaNXdMq1pFT9CRJ0C0WerE5sdLdgzg0Q+aWRLFKLND0Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B8wItiifw94W/fObJ9zr/yS41ETV54xmlZ3T6ABU36w=;
 b=cRbNBoMGe/nushnc/hzrubyRXrP422UrEhX3AMCGKb8D/Zgx/5XUbBn28Uo8VxEdi75Aobo4gnBinHCmVMZ4Ahx5Fp9KmzasvSrd2lPBMdbZ+v0vKfXhRkdnzaJhiCAEzYfkdV5lKoHaWO40u+zCsUYCi8zg2e8wxFMx1gA9J/pGUdIKp8Wd1Spz5SuVFHn7K40wCb8rxQEGxIVQFjLeg9bF0s7dsz6NBTD/CD1C2PEievP4vA8i8YO6Q4lmRvmuFBjyAEbYDn7ujIfJME0C6MZCGcF3Fhijbqp2NBh60Ml2H/PbcHY00twoALLLa9h9PtXcKp0Dn5rdEDpQf8xcCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B8wItiifw94W/fObJ9zr/yS41ETV54xmlZ3T6ABU36w=;
 b=OHdmce47YU+6ItnWeWZELKjIK7XuYCXP9WYVwsAQJzPj80f7WdqcBk96r5PnNJ5RK/X2tcJweKIaJK0EWXYu5pixQ/o+Yj5yzK24ZMiaeorini2ZfPMo/DzMAkwKkTwsahL04NxcF/vi+8260+o9zxkmUWTjy2vVelWr/PUDDAE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8121.eurprd08.prod.outlook.com (2603:10a6:150:7d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 10:31:02 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%9]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 10:31:02 +0000
Message-ID: <cf2285dc-d732-0c6d-83bc-022f23f29524@wolfvision.net>
Date: Mon, 26 Sep 2022 12:30:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 0/2] drm/rockchip: dw_hdmi: Add 4k@30 support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, kernel@pengutronix.de,
 Robin Murphy <robin.murphy@arm.com>
References: <20220926080435.259617-1-s.hauer@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20220926080435.259617-1-s.hauer@pengutronix.de>
X-ClientProxiedBy: ZR2P278CA0030.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:46::20) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV2PR08MB8121:EE_
X-MS-Office365-Filtering-Correlation-Id: a8600ca8-a35a-4c26-8272-08da9faa35bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	MrImogeK10Wss2UY4v84p7eGNa36SKVlF+GayScPloHFuvcSKF8lUF0AI7tFUSYH9pd60mzwH/jiPu9I0yGjAxXk56rcAhUCMbChl7LXD1H4aVVIWUdmmVylYudY6Dmoj16Bf+03Pr5QQs2Q2VPSmCSEJJET0XAKqCse8lmVOXkbnRP4+d1r8skspjoFew/+ZWmPeRqJnMqiB8JMQAOsPtSU3tPMC4kxx+5Xj17z9a8AKRUBrfo9OrU6lM4OnmGKM+apRfJFAVcFgwnKFboNSXRbDCYK4JyZInS5jn7Am/dyPuR9qiFCwyJ6vPmI9d3pssCIPtIEt9O0HKDPLQAPbzbi2mIaoCnQoU1em44+yqJ04xN81bTIG5VAxsYWuCgmfMp9LCpevBSkYNPxH5oisKX7jU7ehAoOjH1/Zrc/Ou6SlJN0X/ZQx7bGmGPEALw7p8dgLr0mFXNa5XaEMdTvD6rdq7Uxi6KWW8/on5Jm09ULeiJmmxfSg3IaydPoE2zefUuJSJyRgk5YNJwZn2k1iwLBb5buH+uG5GUzDkEmJBItZR8e01n2DryU1MEtxyELLFxdSlT0mW4p/cENOlgqmQUUHtEC4Q2ocLuohSjm1ve5DAXlxsoaHk4YScDGcewAp0DaWpLYGPYm+tYAUtkv298PYBBGwOc07NLU2oU/m7uouSRTGyh3OXp3dDNWgipcwtueTL76cU7PJKVsYDGtYQn+kuRwR25AwuaoPYgb6UamcdsrLTJHV9akSBKQJAFmv5aoCQhjF9anupD2dO7S/WFP7JORBDfnqoux+M+w7Rg=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(39840400004)(366004)(396003)(376002)(451199015)(54906003)(6486002)(83380400001)(316002)(31686004)(478600001)(66946007)(66556008)(66476007)(8676002)(4326008)(41300700001)(6666004)(6506007)(53546011)(8936002)(5660300002)(52116002)(36756003)(44832011)(4744005)(6512007)(2906002)(2616005)(186003)(38100700002)(86362001)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?WVhPMVAya09vdUtrU0FqSEowQldnM2ZlVmZpeEw4ak9vUzZlbVZXZmR5djdK?=
 =?utf-8?B?WDc3RUlUdytINkxYTG5EOThxVlhGQzQ3L3pNanJXNkZuRTgvb29kRWVoZWRP?=
 =?utf-8?B?M081YzRDcTlIUHlTdGFvTWNEdC9yd2dYTVBwdFBRL2x5QTQyWWlyOXI1Tmdk?=
 =?utf-8?B?SlB2YXRLTW5kYXcxMDQvRmMrRDh6ZVhwS0ljKzNDRTFOWlZpM3c3SG42RjZk?=
 =?utf-8?B?VXB6Q3doNVRNWlZkNEpXU3B1VnBBNmxQcGVjUGRzRlBQNSswM1VDSzM3anJ4?=
 =?utf-8?B?L2tsTVltWjh5YzdnSFFhOHh3N3pEUk9WZkpaOEhkRW5RT2w3djNqVDZ6TDJV?=
 =?utf-8?B?MHM4SjUxTEQ1YTFiRTNYbWVYUmMzTXVyckFQWHBkZzhqR2lnci9jbUprWGVB?=
 =?utf-8?B?ZjN1cGFucUtPMHZMbDNKK3NZMHZERTF6alBwOGVTK1pvMWhlR204QnROOEtJ?=
 =?utf-8?B?MzBqZC9TbEp3dkFaMTROYk5QOHZXV3dWL1NhYncrY25yTXJIR05KSHBkRUVh?=
 =?utf-8?B?czJvV05ieXQzUytDS1FmQkd4RjFSSWJoWlhpZ215VGNhMFdaM2Y0MlRCSjNO?=
 =?utf-8?B?OUQxWkFERTkrTEgzZ0NaUDRBbWtESTBhTXk3ajg4TWpQMThXdjBFRTkyYkp5?=
 =?utf-8?B?aUxRNzZNbitYQ0dWN3VkbkNXY2p3VHVmWUZzUHduRFpPOHBNQWpCb0xkcWlW?=
 =?utf-8?B?VW5GTU95bE9OVGxIZGg2UDlFUk50bUd5cHdIQ1FyeFpndEtRNXdJeEg3V3BI?=
 =?utf-8?B?L21wL1RGMitKMFhxcmNYUytEaWVYQkdaVnVYa3BVS1QrYStsNzg0aThST1Vh?=
 =?utf-8?B?VW0vS3ZTYlFpU0VGeG1zR1V0ZnJ4Tmk1aVdtQ3FBeUxGUC9WSE1NTXpCaklL?=
 =?utf-8?B?NENtcmtZcXd3K3BYeEpLRUNzc1lWMzNOVExGN2g5SGtYNUcwUGF2R2xzeFdR?=
 =?utf-8?B?MGZYUVhYM085M0JSQlorZ2xCdmVwOE9YaGluWGlVaGVrWWN1ZHY3YklwTWFH?=
 =?utf-8?B?Nm94VTl4Q041RjNvQ29zbU8zVnRXMmZOS0Rmamx6bnpuRDJoRTFOanRaWk9s?=
 =?utf-8?B?STlvUjVtcDVpTGo4ZytGejA2K2VnZHRTOUxld3BoRDBqdGxjakxBZHY5YUFa?=
 =?utf-8?B?YzhVT01wUG10Qk1DQ2Q0K2NXVmttMWR3QTF4NFl6SjdGa3o2L0RvKzcxU1FW?=
 =?utf-8?B?d1ByR1ZFN2w5TnJyeXByanp4bHdYTnppQnh2QVZMS2loUWhQZFQxOWVMKzdv?=
 =?utf-8?B?OWdTMVl3dlJ6YnBSTUF0L0IyMzZERHduUUtuNzJxRDJtOFE1N3FQUmFXRmda?=
 =?utf-8?B?TnVqUzVEeVk3a254L3FSN3hBZUtWZ09NdFkrdDZhb3c5Qm1CWlJOU1V0SER0?=
 =?utf-8?B?dVBtUFpVSzNpYW5zQmdIbUwxSDFnNHBVZ0pPZ0NsdjJlQjJhMlMyTHRIVElp?=
 =?utf-8?B?aEsvd2dUL3AxdDA4djM1bEpXK290c2d0ODZqOFlGTWtZc3VobGtPN2xaMUpU?=
 =?utf-8?B?eTJ5c2E1YXUxZ0RqUkVsbXFudlRyNCs4QzU2Q29XbGVjcTVkWm1kVUllSDhI?=
 =?utf-8?B?aVdnbnUvV0FNNnhuemlKN0hwRzNxWnVlZklKa25EV0JXRGdKdURFa0VSNmQ1?=
 =?utf-8?B?Y3pRckVadG5IdndXRTRDcWE2MldMY2lieGo4aVVKN2tDTFdCK1E5WVY3bjAx?=
 =?utf-8?B?NkJmSTk2SmdzdE1BamdidGd0UGZUdXlhTWlMWXkvUFMyWmExRm94a2IwM282?=
 =?utf-8?B?NTNjUFFVZ2tNTXB3NEVBRFRONmNnUzkrS05ESFpSM1dQcVhLclJmRXl3czNY?=
 =?utf-8?B?Z1Y1L3FTcE1uSlVDZS9PUno5UlQ3eG9qZW5uK0d5Sm9CMmtLR3luV01EL25P?=
 =?utf-8?B?ck9ZNkJhN29iTG81aUZWQnl6Ym4vNWRDN0tSaWZrZnlwN3ZBNUR5cW5nTXFW?=
 =?utf-8?B?cXFzU0VFUGlUU0pLQ1M5c29iclpzTWtSOW04aWhYUlI4SVdHUkMwZWJIdzlr?=
 =?utf-8?B?UWw5MURwc21GWGdSSFk3ZDFyZGw3RGMyUXgralBDWXlJRVJkbnJPRUxWVHlR?=
 =?utf-8?B?ako4ZWxKWkdVUytoNFFsVXlTc0NGL1ovTkJXYnpPLzhVSjVXN1Ava01mWWlr?=
 =?utf-8?B?aVJMZDI5aDlXY013UjBBRnB5L0hibWlqSTI3Z3U3TFRpaWtwd1paTHV3eWNy?=
 =?utf-8?B?cyt4TVZFYmxaalZ3UTVUTytOQk1GQzNHSTVLMXdYb0FpUmd2Wlh5YW5wWHNl?=
 =?utf-8?Q?wBbRLJ0SstnA9KdjASXnyVuYwudeboyQie9I9vo9+A=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: a8600ca8-a35a-4c26-8272-08da9faa35bf
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 10:31:02.2439
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cgd+N7pyH+QhPJPiJzVGFNz6uVG7rhRsUGVZdHsd9N9aWw+r51SvkQt6WnUQp5pviMaqhX2NjdzbVY/P7oVBKIWq/Rq1vexESvTpd4vERtw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_033106_895504_5EF5B994 
X-CRM114-Status: GOOD (  13.00  )
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

Hi Sascha,

On 9/26/22 10:04, Sascha Hauer wrote:
> This series adds support for 4k@30 to the rockchip HDMI controller. This
> has been tested on a rk3568 rock3a board. It should be possible to add
> 4k@60 support the same way, but it doesn't work for me, so let's add
> 4k@30 as a first step.
> 														     Sascha
> 
> Changes since v1:
> - Allow non standard clock rates only on Synopsys phy as suggested by
>   Robin Murphy
> 
> Sascha Hauer (2):
>   drm/rockchip: dw_hdmi: relax mode_valid hook
>   drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 34 ++++++++++++++++-----
>  1 file changed, 27 insertions(+), 7 deletions(-)
Thanks for the v2! On a RK3568 EVB1 with a HP 27f 4k monitor

Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

Best regards,
Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
