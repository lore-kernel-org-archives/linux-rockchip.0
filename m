Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D962ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 07:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mMW7g9JpbSzlTQMm0StK6S+9HmjwetUysP0zGlyd82k=; b=y0+gyXaFkY5o69zihPn1M0zwqN
	dcpMyxRD/+/rYWey2jLdm/7zeUI2zehsyQH6nKk+dcqU5Kmz5lPlG9OdJeruS/LbV7OXOxdL8P6EF
	Y5KtWpYFS96nH9ThrjBgob9XXSTuA8XshvgwlfmJAABfb0AJe9lWi5/Do6rJ+4YM6FE4X/alAO4no
	JPHmUikk98BFQRpK9NWNs+wWBxJqNb8xKTFuUNJ1a5NY7O2dDE3NzdQHQdwzauvvPTN973jyt6CvX
	g2vN4/MH8oDtm6LAoS4e+Lfdk+lN34K2XBlH/iEKh+dWhB3816EXoCYyuYKr4OHJXLyjXyYQ0T6X2
	O6TtVa/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYj7L-002arb-Ow; Thu, 15 Sep 2022 07:16:59 +0000
Received: from mail-eopbgr00083.outbound.protection.outlook.com ([40.107.0.83] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYj7J-002aZj-Am; Thu, 15 Sep 2022 07:16:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ci+4hXVnOTLfKgWTOcRLYTMsCqRqgsjqde8GJGYCX3FSqAzzDgcxeAP9pPBq4fuMz56/+pwJ2UM1IfFIooQhnIKwBNL389kFHRSuKj35GMDOs4NNJiS/vxRNT9yuYT7TnnBw0OzJK3fBwEoXGCluY69JR6Gj0G4acnVMAg2/mZkOpxdNhAAfIHSThwEs0vGl6ieaUbuOeDK3rPbGufTvVpwui7lkYNWqIDg60oJa8y3BVVknEkPFbQbuosTmEQYFIUNPpHuU3Uy1hC09u9cJE+idP0nsKGNGm8J2CIdi56mpXOiv1mGWHXCLeahPUYM8Y4TWilvlRnW8BHx/EBrtyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/C1H7CDMqzw9zVnah53aUCs6JEux+zSRCLDRiASajY0=;
 b=I1zO488imXNeaXH82D8ROYtuH+uZJ3U9cBQprJUn1rj+vFlVCZPyWKlVZzR7sFQdEl3wY4Ml/iw3btvKYewi7ydsV39BjiVRz+Bq3U3PT4PWTv+4P7NDH2hiPn2eCG/6Kmh6nUudfjJjFZ3MeeAeptTEC+9HQORI/jSJydBrQQdyZlx3qsTgohi6FqgQ29b3ksHrYn0b2dN4UwOJdjeQlLBR8uoExGb51Ouhf3XdcxeABjrQ3rjwotS3E7cu38FfFZwiKPEYwUYI5dsekQ1G+TIvrJZIPasq8WH45xeY9AwycERwrempIn0seEMoumAQXbABEYl/4U3GrOlcZVQZOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/C1H7CDMqzw9zVnah53aUCs6JEux+zSRCLDRiASajY0=;
 b=Sfgm8dKOlmKuUjCBLi3rCGSdBGq+oAAxhNuSv/wB+FX31U+pRYgkeX8TTrk6a0HrSww0fe2ltkwYWQlLFl+B7T8L8fKKyabDJS/CWTt31Ms0iSQ/4YLn78qK8IRawvUONguSiGPmun+imL0amu9a3NRGsplTmYyEcNkHgwjHAuA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DU0PR08MB7713.eurprd08.prod.outlook.com (2603:10a6:10:3bf::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 15 Sep
 2022 07:16:51 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::d5b:f7f0:4c2:cc95]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::d5b:f7f0:4c2:cc95%4]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 07:16:51 +0000
Message-ID: <a49e5a9b-7b11-934a-8a98-577f2ba1a4b0@wolfvision.net>
Date: Thu, 15 Sep 2022 09:16:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 0/3] rockchip-dsi for rk3568
Content-Language: en-US
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, cl@rock-chips.com, s.hauer@pengutronix.de,
 frattaroli.nicolas@gmail.com, pgwipeout@gmail.com, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, vkoul@kernel.org,
 kishon@ti.com
References: <20220912205607.5969-1-macroalpha82@gmail.com>
 <1d98ce70-81d5-df92-c881-1d9611042401@wolfvision.net>
 <SN6PR06MB5342040C7772D95351DFD22FA5469@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <SN6PR06MB5342040C7772D95351DFD22FA5469@SN6PR06MB5342.namprd06.prod.outlook.com>
X-ClientProxiedBy: ZR0P278CA0163.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::10) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DU0PR08MB7713:EE_
X-MS-Office365-Filtering-Correlation-Id: d4843f24-e8b2-47b5-ba99-08da96ea42a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	vWUFL00GltlmazEP3lDbgzxf2B7F55BCXHyqkL2OFskm8To4HcnhWyWjShD43/jNIJ41fE8HOb/LeT4+QhBgCK9d9wvp83tRANKxgRjVemFAq0gl7GbthBww20N0z5jbTpbcEa5CF0XFIIbBVD4Ntuh1/9RQF/8hzLGTnUdx7Q8iDwC9xB3kzBUiOue1eChlQh/MIlabwY0hTPICCIaY+oqU+dIKht1RacbL/6W7HGoNYe8nAv1gNPsUbz01c4RnybJZ/qLdtF6BUfRj2eyVzSZ22cIngK2O3ftsiHmqXvapZiwhGoVLw/iaq7LW/W+G2/xXKBdgUiyG70d5yv+ELsEzM8ueuvWSMhXVjwDCDtvhUPcNasPNkTP2g7AVxqAsqrPoAjG60AkA7v9uIFXYtb7CUlwva/fIJnz7VcrviYHCE1xJnLQ/igqjb2iecmAZzml3okRAmBgVIp0zLDLJNNrJxOm9gPzXUFm+FfEtDQI745BRIfnolOAp1ZyFzqUeWe9dClzYiDjmvuzkfUFPVvKWl6ywKwHTaYMrUt6pZIeKZSVUGBDrxyGZ6/sr+ugfuLpBcYTrY1kOwOZ514sZcC1XM68PBUSmzRjvwNY2DB4eRrOVtroiYqMB18O/LlCeFkF87Rogm5evqcQsF4fKxjFA0L/HO/0ptspkpQZvuCUaDMalD3sGooGRpQbT3o7FtfqtKI5wCxwHnmDhvAe+XDIYh8Cv9LGNupUyHk7LMCfQmfVthlwsdjTCyKwAz1W7YPd2Dd/Ph+XmLK0yf1WEHZshHm25pgSvlutu/L16D14=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(366004)(39850400004)(396003)(376002)(136003)(451199015)(31686004)(7416002)(83380400001)(316002)(6916009)(66556008)(66476007)(66946007)(6512007)(6666004)(36756003)(6486002)(44832011)(2616005)(6506007)(41300700001)(8936002)(5660300002)(53546011)(31696002)(478600001)(38100700002)(86362001)(4326008)(2906002)(186003)(8676002)(45080400002)(52116002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?V3h2RC9mQVhoMnVrU3dJMlpZV0xqcUcwNkFOMXlMU1IyNkhzd2tLTmNUODNB?=
 =?utf-8?B?RmMwY0hMQWJ2V1ljVEUweks5MzB4aEFIVkdHSk9zZC82SkhhQ3dWTStocEwy?=
 =?utf-8?B?dXd4L0xxT2pydjk0SkRxcVU1T29GN2FwNkl6MUlmTVlSYTE3QXcxdFgyOXNq?=
 =?utf-8?B?WHpIeVo0MVpuc2VQVXdNM2VDYjYvUktHdFVRakpFM2RnNkkvWTNoVC9CMWNF?=
 =?utf-8?B?TG1wMFh1WGpBb2R3ZGMreEZRNVZReUdqam8wYUU4ZUdTZXJqazlZNFIyam9X?=
 =?utf-8?B?L25KWmNPMnlPRW1UbDNIVGIzcFgxMnFnQjcrTmtlMXd1RGpYeTZLSktGTnM2?=
 =?utf-8?B?WUpJcWtwOGJKRitHeFZiQXVCMWNVaVY4eEtVdzlDMVAyRjNoNnNRK2hralBL?=
 =?utf-8?B?a2hDeGZMMVJMRk9KY1BIdkFIMGR4R29ZSlhpclpMc1lNNStNWlkxZlJMcWxy?=
 =?utf-8?B?UGNVZW9tR25WRExQNFpOSkxLeVlKdHcreTdKV1QzQTdOOEpNUFFZTVFKSGhJ?=
 =?utf-8?B?eDFza2JiTUIzZUxuUVRPVTdLanV1MWwwM01xMlB5MXBkR2I4SVdjaFoweFNx?=
 =?utf-8?B?NGxxTjZ4bzNlUmcrcWNHcC9Bc2hud1d2bGJhUVkyKzVWblphWHNITU91VFBp?=
 =?utf-8?B?Zzk3cThTV01NUGYrMm52SndSTml0eS9PU0Yrd2c3MVRpdGlzdkZybTZGQ1Ar?=
 =?utf-8?B?UkxMOWE0ejZBNFM2V05BbmlGRDA4cmZ1UVRidG5vTXZFa0lUdUY1Wlk2bXU1?=
 =?utf-8?B?UU1tdmg2YkNkZUQvbXZEeHB3c2FXTDkxM0xYZllvaFVQWTFiSmZYQWZreHBm?=
 =?utf-8?B?dk02d0NTNFY3UFA1bEFDak9EOEcvZnBvQ3lsL3ppZXNzOENnSW1BLzYzMEpl?=
 =?utf-8?B?cXBKd25DYlV5MGNPMkYrTlUxVE5oZ0xadUswWWZEYVd0K25CN1h6REp4TVRw?=
 =?utf-8?B?cmVKdGF5djg4WDh2djdKNWdqYkVJMEZzR3BGczMyUVIxeVloZ2VpSUJIQVBo?=
 =?utf-8?B?UTZBQkNSTzRPSW5kOEQyVDh3RzU2dTFPRmZZZ25TUmtaMWVybndrNVdSY3pM?=
 =?utf-8?B?S29NUWZnWWl5ekhKbm9hSStBcjhHbVNDVVBCOHVhRDdteldjbzVYbEE3WlRG?=
 =?utf-8?B?c3dJS21icm1UTUxUYXBid2dmRms3VTNCS1Y3REs0K2RrUlRkTEhWU29INFVn?=
 =?utf-8?B?SUxwREVuSjAzNmVmOHVSTFV6QllvSlBSQThIQ2pOZ2pHNFhybmtYMWdmMWlW?=
 =?utf-8?B?M1hxMC9WUUljb2Ridk9JTHJZWHl4dStoZUh2YnNJU2N6S1RKaWFQUURXZS9S?=
 =?utf-8?B?cVYzYTNXRGpIV3prZHB1NFdobWxiVUxlVXE1Q0Y4NzAyZ1NNN1B4aG1tV2Vl?=
 =?utf-8?B?LzZzOWlpQWRwdE8vT2w5Qm5acHhYaVJsbFk4RVFUU3dUaXRtc2NRMDROV3Qr?=
 =?utf-8?B?R1VsZy9uUVlEMkdlSURWMkg2T1g3VUU5MElHcSt6UWNTNkxpODJZWUFKdVAw?=
 =?utf-8?B?bEt6WDBoRHFGOTJzL0NQeE5zR3FlRlR3aUlrWDgyd2lGbmxQMWJNR0E1dElS?=
 =?utf-8?B?TURNbEhxQWhqMjZVSDFBeWJkazFnR01YUGxxRkZ0YlMyc2VueUw0eklPVXMw?=
 =?utf-8?B?TjV3VmMvYVZnWUpxSHovaUUrVHRQVFlmU3VLRnhBUGJQb2gvZ2dkbmdXTER2?=
 =?utf-8?B?ZUJVQ2tUV1BjSm5Hc0JoWlRTdWJyZW1HNjd0bEZzRnJpOXR4SnBKTTVSYTNB?=
 =?utf-8?B?akR3VXFORWpIL29MK3BQc2kya0dCSkNaUmJ4Sk9DckdQdVdJbnlqa0pwVFlF?=
 =?utf-8?B?Z1Q5OGdyMVJkTFFPMlBSK3pmV1dZYStibERNSStWQ3lBVEVjcUcvbWtTYUl0?=
 =?utf-8?B?eWxVTjlRQkZpUFNjTWl4SXF4a016dmFKRERmUXR5Z2svZXhOcTV0VDhhQzVz?=
 =?utf-8?B?bXFKTVU3Y0ZqWEdTVWNOcGVHM1N1QVFMT1hEeTVxN2JIbVpxODFjZXNaWjFz?=
 =?utf-8?B?QktnMlQxVmVROFloc3NQVEx6bmNMbENXU2JydUVGeFBhYzNBSmNWWVVsS3pT?=
 =?utf-8?B?MjBWZVdHNm00ZUthdnU4ZW9PVDBEOEdFRG1nZzVvTlRCODl2TFdycFdUWWpu?=
 =?utf-8?B?S3l6MkhSQmxmOU9iOWNKT0daNWk1Smo4T1A2NExpNVBhcjJiRnhsQ3o0R1Y2?=
 =?utf-8?B?S0o1SHN1R2w2NnNYclVWdE93ZDcwU2p0MnJGTlA0V0VFTVZ4UFQ1Y3ZWdUFK?=
 =?utf-8?B?SmZxWlp3aEZVc05RVTczZDI3OWJnPT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d4843f24-e8b2-47b5-ba99-08da96ea42a1
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 07:16:51.2630
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H/F3OzcLrVEi79PHPxuROULEQWYBuDDvZel3U2wlNeBTi2ABJNuHN8juu/YfsJBkBa7LDI+oNg3RNIYnks7ytuVj560AcqpD7awm+OOBP00=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB7713
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_001657_411302_74119FF1 
X-CRM114-Status: GOOD (  46.21  )
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

Hi Chris,

On 9/14/22 14:50, Chris Morgan wrote:
> On Wed, Sep 14, 2022 at 07:46:41AM +0200, Michael Riesch wrote:
>> Hi Chris,
>>
>> On 9/12/22 22:56, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>
>>> This series adds support for the dsi and dphy controllers on the
>>> Rockchip RK3568.
>>>
>>> Tested on an Anbernic RG503, Anbernic RG353P, and Odroid Go Advance.
>>>
>>> Changes since V2:
>>>  - Removed dsi controller patches, as those have been merged upstream.
>>>  - Removed notes about rolling back clock drivers. If I set the parent
>>>    clock of the VOP port I'm using to VPLL and set the clock rate of
>>>    PLL_VPLL to 500MHz this series works correctly for my panels without
>>>    rolling anything back (per Heiko this is the correct way).
>>
>> I tried this but it didn't help (neither did reverting ff3187eabb5c
>> "clk: rockchip: drop CLK_SET_RATE_PARENT from dclk_vop* on rk3568"). On
>> my display the content is shifted horizontally and the colors are often
>> wrong.
> 
> There's still something wrong with the VOP2 driver, and I'm trying to
> get to the bottom of it. Are you by chance enabling HDMI? Can you check
> the clock for the dclk_vopx (where x is the port) that you are using?
> It should be very close or the same as the pixel clock of your panel.

Yes, HDMI is enabled (on VP0) and works fine. MIPI DSI is enabled on
VP1. The clocks dclk_vopx are:

    pll_hpll                          1        1        0   148500000
       0     0  50000         Y
       hpll                           3        3        0   148500000
       0     0  50000         Y
          dclk_vop2                   1        1        0    37125000
       0     0  50000         Y
          dclk_vop0                   2        2        0   148500000
       0     0  50000         Y
          clk_hdmi_ref                1        1        0   148500000
       0     0  50000         Y
          hpll_ph0                    0        0        0    74250000
       0     0  50000         Y

    pll_vpll                          1        1        0   500000000
       0     0  50000         Y
       vpll                           1        1        0   500000000
       0     0  50000         Y
          dclk_vop1                   2        2        0   125000000
       0     0  50000         Y

The pixel clock of my panel is 132 MHz (1080x1920@60). Could this
discrepancy be the cause?

> I noticed on mine that the HDMI was interfering with it. For now not
> only have I disabled the HDMI but also put it on VP0 while my DSI is
> on VP1 (note that if both are active you'll get a null pointer
> dereference from the vop2 driver which is another thing I'm chasing
> down). I think this is because the hdmi_ref is allowed to set its
> parent clock (which is the PLL_HPLL), so it does to 24000000.
> 
> Basically here's what I've done to overcome the VOP2 issues and get
> DSI working with this patch series.
> 1) Disabled HDMI (with it on VP0).
> 2) Enabled DSI and the DSI-DPHY (with it on VP1).
> 3) Set the parent clock of DCLK_VOP0 to PLL_HPLL.
> 4) Set the parent clock of DCLK_VOP1 to PLL_VPLL.
> 5) Set the clock rate for PLL_VPLL to 500000000.

I tried to reproduce this. When I disabled HDMI I realized that the
regulators that produce the 0v9/1v8 image voltages are not turned on.
They are required for the MIPI DSI TX block, though. Could you take this
requirement into account and model it in the device tree?

After setting the voltages to always-on as a hack the result was pretty
much the same: the clock tree is the same as in the case with HDMI and
also matches your description.

> Doing this allows the DCLK_VOP1 to run at the correct speed for my
> panel instead of 24000000 like it would otherwise. When this occurs
> I get a correct image. If for whatever reason the DCLK_VOPx of the
> port I'm trying to run the panel on is at 24000000 is when I get
> the shifted image.
> 
> The long term fix I'm trying to work on is to figure out how to
> successfully get the VOP2 driver to not crash when VP0 and VP1
> are both used for the RK3566 (note this actually should work for
> you on an RK3568 board though), so that whole bit about disabling
> HDMI might not apply to you if it's enabled.
> 
> In summary, check the DCLK_VOPx where x is the port you are using.
> If it's not at or very close to your pixel clock that's probably
> why your image is shifted, at least it was for me.

OK... I am starting to think that I experience a different bug here.
I'll clean up my patches and will try again.

Thanks and regards,
Michael

> 
> Thank you.
> 
>>
>>>  - Added additional details about refactoring DPHY driver to add
>>>    2.5GHz for rk356x. All other devices still have a max speed of 1GHz.
>>>  - Notified Heiko that the BIT(5) for both PLL_POST_DIV_ENABLE and
>>>    PLL_POST_DIV_ENABLE_MASK is deliberate, because of how the
>>>    phy_update_bits() works.
>>>
>>> Changes since RFCv1:
>>>  - Identified cause of image shift (clock changes).
>>>  - Noted that driver works now.
>>>  - Added devicetree nodes for rk356x.dtsi.
>>>
>>> Chris Morgan (3):
>>>   dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
>>>   phy/rockchip: inno-dsidphy: Add support for rk3568
>>>   arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x
>>
>> I am testing this on a RK3568 EVB1, which has a display mounted on the
>> PCB. I'll submit the patches that add support for this setup soon. For
>> the time being a preliminary
>>
>> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
>>
>> Thanks for your work!
>> Best regards,
>> Michael
>>
>>>
>>>  .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
>>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  72 +++++++
>>>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
>>>  3 files changed, 231 insertions(+), 46 deletions(-)
>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
