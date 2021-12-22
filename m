Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4C64C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5h+QGY2oR208Mi5QfaE8w47ZU9q801kSBGQX5tuj8Xw=; b=Q45WZ79jhrJWOqA9T6Co8LKXjw
	LYWFqMtPnf4u/VH0ToGm3YbCcck7SVQtG1nVs3VmDQdc9qU94XhYrE6EPq255k9OqsCbKfEsAgsEr
	7eDNXdVEjfUnt4EP9RILLbqzru7ks1CK9PVxxP1cnVuOfOY/1g5XSo+9Wdk5dGscr388oHqFdoPP+
	NDoEK4a8lKgk9XiTmT6xhK/uzOyA5Prb6hbtbnJToBc0Y2MHwLWw5EM/Jx4PGaVjaFRAxzY6YlVno
	OAvvYg7ET4cuVl9OZvru4zF0WGj750TSRhoqlkSgk4foa5dUF95NHoGyw4CbmQXj5kKj++onl2bhA
	75ida6JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n01hN-00AXlH-7S; Wed, 22 Dec 2021 13:30:29 +0000
Received: from mail-db8eur05on2044.outbound.protection.outlook.com
 ([40.107.20.44] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n01gP-00AXGG-NA; Wed, 22 Dec 2021 13:29:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZP81w2fO8ZfEayqPBThtOjja4Ob103tpWR6rRglMn2Jfl9YI2usn0xaBUV4QzQ1h25kZsyLNmPvRdLqSHkCvMHaZq8iXsdath9ODuoyAEVVmoIOAXj5VXHuoh9T+L3e7IbHvS0ctuiuWMMYCg+eHFyOiotvPLbEdPUZlAEajxHyngUDutJVfL790iw4SiloN3n3M/AwGLTuDchDuHqbOj95lS+Af8kR54RZlhLBuuZTrjoOJ2YA9OyP1jbeSoH3qCXUKLs8PM5qj9Je9PxtT5ml260SUbKA4PvFHZ5YZr8FAa9MpIRasSj5NKTIg9TCzgFi/3JgUM+3YxrV/lxbhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WCpFphec9LBOiqZRjOkPS+LOFoItXe6fmt2TIPClA0c=;
 b=NUhczqXLs82wdAGRCUqYctNMfyBL+qbRg1tjwrmUwYIr/SRXd1/hCAGou0JuU2jo0ExlLf/ipEHM2hfgyabkqpDuAuikrsXYK5l0t523Sbl4/pCMWoGXFCLLT9OvfMbLxA+TErpHDdR+O5nqnCJKwrOXWLUyXyBG6vYZbAtddIw1leZD5aTRHi9+Zffm2+DyL7Ix1YdFLcpanT2PEKLYb3WxZVpyvV33fwXCDB7ryl7drAkgPwEA67VDfube9e7UoBGs9NNjtbS+vDnUygawEEvq6u+TS9gwQX8bu3KOb0VPejUoYLu5RTrltgA+6Rz/jk+F4onaX+RzO1ggYfzSag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WCpFphec9LBOiqZRjOkPS+LOFoItXe6fmt2TIPClA0c=;
 b=KU89Ni44rg3Wpof0pj3BqeGunJNStA34ELO6lHOcoSwlSTVRR2eh4k+6oE7CQ0I2liZz/98A2l0xipHxYHL+v6WjHr0PDnjpWg6XkElNtyd+K8Iwz2Xh/kFqhq1M2NfyPJYgalEhDHcb9HbMgyoixm/BbNrb2YJFRK93yQVPgAE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB7008.eurprd08.prod.outlook.com (2603:10a6:10:2c9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.20; Wed, 22 Dec
 2021 13:29:25 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::81d1:d448:4016:1956]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::81d1:d448:4016:1956%4]) with mapi id 15.20.4801.023; Wed, 22 Dec 2021
 13:29:25 +0000
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
To: Mark Brown <broonie@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, kernel@pengutronix.de
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de> <YcB85mzJHrirUEDA@sirena.org.uk>
 <20211222104036.GY6003@pengutronix.de>
 <baa1603a-a6e2-4a32-a5fb-dc1eff01189c@arm.com>
 <YcMhazsAfU26fCa3@sirena.org.uk>
 <04982df2-29a0-86d5-d4a8-05826916d9a0@arm.com>
 <YcMnNXu9Iun71uCG@sirena.org.uk>
From: Michael Riesch <michael.riesch@wolfvision.net>
Message-ID: <73caef1d-7e55-57f5-5912-b056fff73a06@wolfvision.net>
Date: Wed, 22 Dec 2021 14:29:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <YcMnNXu9Iun71uCG@sirena.org.uk>
Content-Language: en-US
X-ClientProxiedBy: ZR0P278CA0101.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::16) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c734fc1f-0d13-4099-3d6c-08d9c54f121f
X-MS-TrafficTypeDiagnostic: DB9PR08MB7008:EE_
X-Microsoft-Antispam-PRVS: <DB9PR08MB7008A2A62635BEF8C4488AFBF27D9@DB9PR08MB7008.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I/kctFQEN1lTeOuo4kJUGBuh4UfdS2F4US8V3bKY4KJDnMHMenN54hZq3zl3WJAsAw0Mu9aTN1+Iz8q7KzM33KbwvbKr3Lm6ZehWnmNeslEB1NGcCD1+vfQvcihJAPjH0cf8PHY+7yLGdzyryIdkqA77KKVCJ+xDChLEJWyuQnQUh0n06xwH6LOGHFOtLtcctI1QEiYxHBHSh0RTVYsMlkpY4pBc78uXyYdYSrQFi7TlEoWiuS5ObueTV7dAyLHnsLACP3dFeN2rR4xJyF+20fYztifmZouVXrnTyjlfFE8NSU4qiNJuTU0AtR6e+Wms4dKqxFJY6+S1EOJHTXuSsWlns00ep1Pk9lmNoKSf8KXClgKbWolV/+B9r0hpd7wWxSydRLCPoKlmcjhPS81qyjgsOf9Ju93B5AI6SSdruPHnApI2F7TpD8wa2g5UwQ8BpsNB+oGs0V6w91gC2QIgpYM+5XfylbpcoA4pyFXAffSGeZ2bAs+rIjjxvNBVwBngZu9v/p6upBFfsGMrdBS0dGNiEjXU1+8HR9xia8IffkXGWehNimgcoKi4mGEHa+9X6jfIeyb56iZr4A8hbua3ydaubFslnzknpICbmjri387hlBbvV9Eskf5Gwyh0xwaabN/wyLv82PHdfxKj57uulbJRnbNnfGvvTsJIlNp0ZNMoqMXV1/Lroc0qtR4FeUdgRRM+28WOslOJhuH+blTg7/WXkVKBeNggkVUXI8/k7+Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39840400004)(376002)(136003)(366004)(346002)(186003)(36756003)(2616005)(66476007)(66946007)(66556008)(52116002)(8676002)(44832011)(86362001)(6486002)(31686004)(4326008)(54906003)(5660300002)(38100700002)(508600001)(2906002)(53546011)(6506007)(31696002)(316002)(110136005)(8936002)(6512007)(4001150100001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?Windows-1252?Q?hPMGL5KoWiqf0VDmd7Sbiv0SwEIN1NpHCkU7EC8TQ8gAAwJdZ9ESs0It?=
 =?Windows-1252?Q?qeDlQfaJlM6U/+CgxwLGWzM56/0nli6N3RKi1KJXRjh4CkIjgyZiH++M?=
 =?Windows-1252?Q?FA3dmT3cveMiNokFnrC7d9iDM3gbIk9Wtb1kLpbmHLDW+rh12WVccX4l?=
 =?Windows-1252?Q?z0yQb4apVsmwXU5/3WohYN+nK4TQcY+a/B+5WKU0QEQgsSil3338Acbj?=
 =?Windows-1252?Q?+/OFWjQgAr+cK2mkiYUB2Xdbrv52K7Bypkr4CMK/Q+R6yITtZQujczjC?=
 =?Windows-1252?Q?aB55PMBu55eWMMoOxwoTPNfC2SQ8yezNdHewNJKX7yNN6owcgsWJBsr1?=
 =?Windows-1252?Q?lFdtj1jXvlW0jPyawmdLmuTbsGcMwe3iR95xhQRJAz5BS7MEQgfdOPen?=
 =?Windows-1252?Q?SQyoCk6v7unFnDhDy9VrPCdlqyUqhRhtgKiic4yRM7y/ChETXNWjGR6+?=
 =?Windows-1252?Q?FSHVbNkEv291xIXgHbJyAq6LBYdwq/WdUbWnTxMfNDSG/GA0SWkv3Zi0?=
 =?Windows-1252?Q?1xSvTZExR7UoiLHLpkD6wE/SKvhvLrUXLbYEMBOoHn06K6kADexiHk9l?=
 =?Windows-1252?Q?f2q92QYfbAcwjVBoCRXuH+GrH23fccR6EW4BVOJOlydH5XHptd0ndn+B?=
 =?Windows-1252?Q?xyUAK+/I4DnMuSms+QZjnQ/TRqR12wehoFlhS8GfyQK1Vp5WUc0EduHy?=
 =?Windows-1252?Q?9kmNmc9+Ym497BmeFVuVUp0Si81AWcGifbe8MeGnVLEzhAyOVVL8O/Nz?=
 =?Windows-1252?Q?agdW1pcMiHX+7c5aFeEJF7e4go8JBmiC5la8nTu7FNKhQXeUyunUfJ0G?=
 =?Windows-1252?Q?uZqon9HboYCoyV1uiyKEYQrZEd95I9p2WHIDY1Yg7IfaB/PBVgeH5dcq?=
 =?Windows-1252?Q?sSIXJyfkAfizSLAQyI6vIW0/A9xIWlYnGM/eo5Y7Dic7RQMaCNoE/z8Q?=
 =?Windows-1252?Q?ds3IsR1TzzmdY5QO5DsscPjsCoIsViRdsgmLTg0BxW8jWvFK7pTXisJX?=
 =?Windows-1252?Q?SNCN1eW347i0DXa2EVUQJKfAASUAD12wbpNUpk+kZak7ZTgjYQA9fBMo?=
 =?Windows-1252?Q?wqOf2J6zjjjo3ioxYWVQttoCq2gmZAAk66mjEUgHL4xBwjWtfSddF4HT?=
 =?Windows-1252?Q?0rdNNidslhwOIAhSffZ3qzGXMfICv1EgxHwPKOgu7OQBuxWQR9rFqsm3?=
 =?Windows-1252?Q?YkoN5kNzuPw2B2gDbKc1XtafiL+5JRbPtWVKgMXQR1jlh3aSAV0YFDm8?=
 =?Windows-1252?Q?swVMgt/i2Mtr1yB/TZAn9GvitQN6/mRFqFa6YKnKYteF4Ewf2bBKtYSh?=
 =?Windows-1252?Q?72LljlcytcSerAWx8tOl2DoRdeooXcCcuzFDYynKauEgqfRwH26cWcsI?=
 =?Windows-1252?Q?R8VwXhLu6sOQ+pWTu7a4wIMrDpRyYHN1hpaoRJDNmUse6TdfrFmyfv7b?=
 =?Windows-1252?Q?MTrwbzIus9bf/UEiPKXWfvOR2FTHqsn1XIBBWuLEpWrONZR8hYfMgAMJ?=
 =?Windows-1252?Q?fKTZM+lvUg7mkBbXYuwWE+7o72l8dDpCGTCbmr8rIYnLTLkm2dHH4p6m?=
 =?Windows-1252?Q?fGxjqeW2ouXw4Y/vso84kXt5Ia5s22IHxILRcMbPzpF2vyuLZ5BmbFPX?=
 =?Windows-1252?Q?bvANfWGVSOqeFL2+vqAcX6XSywPHOQa1Jtgmjfpxi08zN6iPaUYboryP?=
 =?Windows-1252?Q?5vKaJ/3//dZ2Z7YFP1rOh6Mm8PvovuYmyAv/gQKBNr0DZAEgUwavgxXj?=
 =?Windows-1252?Q?lYb1HZZuK81TnkAYrtNLDRuIdbOkzjf8RGwQCBR92hpZC9pThlZlBLe9?=
 =?Windows-1252?Q?W9rVIxyTeL8uetFaDHBW3D4B+Ec5SsSeSYg/Ld0btxyrfktSfX0g9agV?=
 =?Windows-1252?Q?91uBSkAPwuQhWQ=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c734fc1f-0d13-4099-3d6c-08d9c54f121f
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2021 13:29:24.8140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0uHYQgh8f/RXnaDpnbNWkF14FaMBdaFXrXS8Gu1/RBzjvABMxkhx/1PLapbA3gu80esKx1GO4NYLP5OEUyF0d7sH/iRm4qXPX5GSZTlJ7Jk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_052929_911790_56340F22 
X-CRM114-Status: GOOD (  15.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Robin and Mark,

On 12/22/21 2:25 PM, Mark Brown wrote:
> On Wed, Dec 22, 2021 at 01:19:23PM +0000, Robin Murphy wrote:
>> On 2021-12-22 13:00, Mark Brown wrote:
> 
>>> Does the SoC actually support the supply being completely off in
>>> operation?  A lot of devices want everything powered even if idle during
>>> full operation since keeping voltage differentials smaller makes it a
>>> lot easier to design to avoid leakage current type issues at the points
>>> where the different power domains connect.
> 
>> I don't know TBH - the available documentation doesn't seem to go into quite
>> that much detail.
> 
> In that case I would tend to assume that unless otherwise stated it's
> safer to keep the supply enabled when everything else is enabled.  It's
> the default thing and so is more likely to be what was designed for and
> less likely to result in nasty surprises.

Based on my experience with the RK3568 EVB1 the vdd_gpu supply turns
after startup if it is unused and the SoC works fine. Let's take the
energy efficient route here :-)

Best regards,
Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
