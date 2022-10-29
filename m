Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D358C38A02
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Oct 2022 17:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fw7lQxiF5UoqV7LAyDEl7jm45EIN3pz/zanOQ5bwneA=; b=jXDy22v1XBlg17
	7V+F3EIMsCADnSka2/Nq1zv7QqBDKcXl9zgqU48kpvCSuFQIaPf9e33i5xT26oEz4E0VwMe9oxaPS
	tJBPBtbxLx2m8eU6spQYjDEnRRsghya1EpxDGCI+sYfv3eZEaM1uVM2wm6igPTzS5RdsxG51fpQxs
	J69ctfuXBjtSyUqHgVHZTofwX2d8N8OQQQPtsm9HbDjG0ZhXZMAHkB9gQA6qdzUmi0RCBJNqyoW0O
	BsdmCNSBRttJ+4RLX/fd8rR34CIIfBQvmQOjyLzCawE6TDDGrXDt+DA5NhovmlY3x7yDr+CHwpVMo
	MQTWAfI4LE1jgtf2JV1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oopLo-007VQv-RO; Sat, 29 Oct 2022 17:10:28 +0000
Received: from mail-tycjpn01olkn2096.outbound.protection.outlook.com ([40.92.99.96] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oopLd-007VO1-Oa; Sat, 29 Oct 2022 17:10:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lc7xJ3tnbSAFziai3G86v18HSEDIKMHkU04UK3wcq1wRRhKYl93DToBeDugjTq4pu0F24XYWWk6EaL4gBaDdFBqhQGOXpGyuHtPrdq9fq5tDSS2PoKlVtKJIsyDZ3WbgJRkw0nOKPvsqFJ9CEazQuVQIM1oZIFGdJ0K5aEabjK9EnJcrtQWYnAzv8TBqlVCRpAEh1bQ0jbJgzL5Yl3aEUA2O4cstBHqiJHkzbjmrgy4aVglXpafns/DK7hSJpirB0ndmoM+ypu+UlXmAXQUpr40QxE3G5Uuolq9dpK+UF0Ysl2MPWbbONP3b5dFb1kW9G8Mn5pgP/ArJjjOSnqL7Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+B2h6KrqFxICVheFEPGNABrJxhUzLtiV+316ZppzM4=;
 b=Ll50E2+03yRDy6qm98PzFDMmjhkkIYEmDgxpPWRVsK4avtY3eldBm8bTFrO2W0r4q4x9Y12X6DhJKe1Ywq5LqRsWG3Nka/hL+AWQZQSafo7HWInWbtMRxLgK3VJDhZRsKx/BkKMY4bhxCmsQRmrTSTKg8G559B6E+ruPYNbAsf6/iqRBi96XBFPDWIKE+MkhwDf7rPBR+/Vp4vkEvq5M3IIhixOqCtS1372k6mjdS5n1f8hp9fxmAJuwANfAghRZV5tQ45iu2FVXDIjTTEMDRgB5FBq+ioYKnUCRG7EMuJELIc5UOMaFopwHEOrP7PtRLCVXFBOfR8LWfgAMiBQ8Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p+B2h6KrqFxICVheFEPGNABrJxhUzLtiV+316ZppzM4=;
 b=blxUhMQmoqTW+XSxJRAlAhQoepq7rXUfaWpck2MKFN3NDmuTNxnAB2VC/BFaw60wM2VsLwq94SnI3xvbF01BQyiYZp6IevibxuijG4gfq8Lr5H39T6uh6F5IU6pyrcEkyYrA1XS4rFfsHPdMS/Vnx4jR+XkhCqcceCqQdcFsaNw3FI+IUny1z0wmn2svhjXRlq4WSNnhuS+VmCVgDwonI8ib2cZe7IZ2sR8J2Cq1wFQS49OT8wJsQ0HDkg7s8tKqa2llhbYQ4Vh8CDWZiLkkaUoUCiRjNV3oU4k2+ljhR774SRFpOzQFixsJmYjCSzW8rly78c2FDB/Ue4GX8Q2Yzg==
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
 by OSZP286MB2094.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:16f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Sat, 29 Oct
 2022 17:10:06 +0000
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c85:eeae:9c31:93fd]) by OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c85:eeae:9c31:93fd%7]) with mapi id 15.20.5769.016; Sat, 29 Oct 2022
 17:10:06 +0000
From: Shengyu Qu <wiagn233@outlook.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	michael.riesch@wolfvision.net,
	s.hauer@pengutronix.de,
	pgwipeout@gmail.com,
	frattaroli.nicolas@gmail.com,
	frank-w@public-files.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH RESEND 0/3] arm64: dts: rockchip: Add support for Radxa Wi-Fi/Bluetooth combo module for Rock 3A
Date: Sun, 30 Oct 2022 01:09:01 +0800
Message-ID:  <OS3P286MB2597FFC604F3163D769839A198359@OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
X-TMN: [HP9kX4PoTOv1yVcPAikAM0KYNa7i1Uu3]
X-ClientProxiedBy: TY1PR01CA0184.jpnprd01.prod.outlook.com (2603:1096:403::14)
 To OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
X-Microsoft-Original-Message-ID: <20221029170903.78-1-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3P286MB2597:EE_|OSZP286MB2094:EE_
X-MS-Office365-Filtering-Correlation-Id: d1d6ff7a-9615-475b-f03a-08dab9d06c89
X-MS-Exchange-SLBlob-MailProps: 	+bEufbke4JeMXSBvw/BrjT7XaCzxJv7XC618g9pEoba1gvCUiQWAQr95Jp5AlU8pPL+2kEbv8op7ZdZROMH2if3V0xyOk8GJ1J6ERYw1w1rRqehhBuV0McAI6Ex7ppjNEFsVkCAQleESS92hpnnxz8w4Ut7lYhWJddCULsSxeVs0LAYu4vPvSZd2zzM9bs5ZqXI0i42yRfAGio8W8HdCrYUmFpFtx3lVpeyEqQYHsKUQRevfIwYzKB28ABjrxvdzRzxMk/AONqnmoTcmo4eQwOaqlcAHjxgg0EZcFBHqhYq4xXgB2H6BCH8oMZCUsdeZYv1MZIrer0/i832aE4fIRxGyWsXLtpn5ki7qz/Iw/61ngU2A706yIAPyaVROWuEvKCpkUnZqzPq6A7VR8czfVlZp3a6hE+4m+J/dCkSs5Tr7CGlSizkfgp97UiblKxk4ivkeejkmMkawmNrJa/VYMo8gn0KBC10c8oQxMnbQ/C7GW7wD17cQJsUu/1sI5GqIfngTD77mWUAMno4TIsJS7d2HkntUnck7Ta1KWvnQSqs+Z9MJ7D0UuOXGK7OKlOctgyISZKYCVQFOcGiuO3wb+ARI01mZS5QyFFp4UXjq5Tnd6Q4GYiUHJk0u5kTe9ElnkG6W40XgKc4/r8zgIaq7ms9FDKkhafV71omijtdk9jGO6uxbnfmIdE79/eFOClzO98xnjreTx/TtBky4p7JyVal3KXUstKO/2C+KqE6jagx8cW2NMTr8unbERQNSB5qKlR11RaITYk3ppXM/nPiecg==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	YyvaNQpuLOwkb8LCAo2DpdHGyCzb75E5gzfo1jIwGRv8dys5ZfeZvGzWMifC3mEpG0ipcS/Uptrer4MSLrpf7zjOqYFoylS8UnSPKWMz9QbrNZWLyEQELsQE0z07FZEvwuccAz/XWxSLfjzXFRi108ENEwOsRi2AveTwFZPKLkIP7z5GD1lM/dyysj2cLxrIAnu4sGYSp0ajOYHplaz/U1rZTf2IpfTPEGwALMQYBHzD1Xae/oh/CJDbcuWNKZE1yg9q07Fe9kpfWV23H2SFtxiZyvHkivkqF/Bx8S7bzZhIeCpRe6gS7NF5D7009ceBqIiDd2pU+aKyIanejUKFnzrZBto8laVaU7z0VTKDZJrbTzT/BW5bSIJaOO2FHZju7LACjFHAKiTQ2SVIzS7pHg83rhuT/70zMNseNk/O+v7qlb81q+wFxYpWS70Y8VISKHhsrWTWXKMeJupNRC++QhLb8hMiPEWKXYcTAGDJ9UZmF5Ad/AeoHC4/mNY2289MR2zqLYXaHDK6PDi9HycJlWj4pB9L2saDtkl34XHkHLnCl/+pJvsdxsuBkkaBw4/YTkkpxQdz/AaUBFDY5MHbd8hmGzF9v1EORXyfOSSv3clHdsZhOmJrP048WzCF9NogmAogWyXGNrphZrJbTimK8tX7USmOGiDWGnY+61SGb5ODGQ/0bIkZweJ1b6vtKcJY
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?TERTKjn84eFYgM7ByVtmVced3ngRgiHgepSFiB3YemxBKGJOy3GT+F1AMmiU?=
 =?us-ascii?Q?379hvFzRFGlq4Xo9aoguIvjHcQPZBjCrVCmYqVaIjXWojBy8KTa6BjngZ7pg?=
 =?us-ascii?Q?Tow6lvTtCHZapB1M08b4GWjadrJ/Asi/FYswObYkMt/Omj7wcyZC9U6s7CrV?=
 =?us-ascii?Q?HOUsHReZW2kh03xSbdnmwBWceTVKLCurhMDBIVMpWsHAMzjcOYMk5tNw95pL?=
 =?us-ascii?Q?Fs9S0f1JCaGRcrRBHV6DFYmtdhzE4xd+3hceUkTGUrJP92Kqh8CGbg6Eg4oe?=
 =?us-ascii?Q?jnrvY+PGQH7SiiLQQ7d2SzE5UOrzA8lWpbzxyPH4MJj3ceiufYXnecC9pOa8?=
 =?us-ascii?Q?wHFI/nfAKI0aFQkyCIn/WrhgFy4NLFE0m6u3wjYSXTxaTwo0cM/m9RzGQtIs?=
 =?us-ascii?Q?HGi3b28vbgtRBD+lV5blcFarVJVxrDfqx1EmAowmmaikT5F/aXV7q4bQ62Zm?=
 =?us-ascii?Q?U6SD54ngfnsZxoIApWO0wkZIx5prOit3fNtjqgFe53dyfnCtSSJoV81tUps2?=
 =?us-ascii?Q?WrXXjEJZiLBu98DJhNK9VztyEea5ReI298vVXJfKd6XgOIHzWD/OE5ydhMpq?=
 =?us-ascii?Q?isNgiukuQi3Uy31sQWGZecw2cPlICWSvwGQj8kwXsRkJLF+xOsi5wYKirR2e?=
 =?us-ascii?Q?GkaMSAnTR0gAPmaX+aMPjoTV0HlMsMQ+IO6ta6lEoxoSiiuoR9UXgDsBWvIN?=
 =?us-ascii?Q?4N2lhgtApZJEolhtV9Umc+6ts8P5rlZmDkSp88vVvOLrkVFuAjWGtmOYjqhx?=
 =?us-ascii?Q?ZTb7UC9ji9qvOvMdKjLq8L/scWbfBgvmfcut5xdJdyzjTf7ahfHJKJ6vVmuC?=
 =?us-ascii?Q?50HfjPLunywU+nfgPoGJmFAP75ttbrS3JJFJKlednAqVZcJRSUQT/pIRCRg6?=
 =?us-ascii?Q?xzoGHRkgf2e+jWuuH8py4/2V6mGToMz4KXJVM4GA8RTCfV8saj+xwTiM91v6?=
 =?us-ascii?Q?5bytt9YIzWEwyEnAGhn8zWhslDQRR4+BC0+JET/rxFWFAdckXRB4ol1pSeMB?=
 =?us-ascii?Q?vmRWqDiJ1ZNK6wWgzuM8LKNwQESaKczpwlQUkC2GSJ6o1lrheiTa1WzKGF1E?=
 =?us-ascii?Q?g7gKUVTUBNV8AdK7ovOOzYtJXHuBdLO0MlfFC9dFOJ6jaoarIVpCHtBZgvVk?=
 =?us-ascii?Q?6gP+aLjQdYuJQTr894PNhnNy0R2HGc+WfBGBIyzHrXeWYx5J4C18wXs/KNGF?=
 =?us-ascii?Q?oRoEO99zcYPiWy7fF5EXT6l5H/Je579zh/OJrA2fS4flXiQgpWnSS+biwYbj?=
 =?us-ascii?Q?W4dSpya1o8uwJfcii0xXCMbbeZal9bsjG2NHnzGizA=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1d6ff7a-9615-475b-f03a-08dab9d06c89
X-MS-Exchange-CrossTenant-AuthSource: OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2022 17:10:06.2935
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZP286MB2094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_101017_842387_BC1D2085 
X-CRM114-Status: UNSURE (   6.00  )
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

This series of patches adds related nodes that enable Radxa's M.2
E key Wi-Fi/BT combo module. I2S2 is enabled but not used in current
series, waiting for future patches to enable Bluetooth HFP over PCM.

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>

Shengyu Qu (3):
  arm64: dts: rockchip: RK356x: Add I2S2 device node
  arm64: dts: rockchip: Add I2S2 node for RADXA Rock 3A
  arm64: dts: rockchip: Add nodes for SDIO/UART Wi-Fi/Bluetooth modules
    to Radxa Rock 3A

 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 74 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 22 ++++++
 2 files changed, 96 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
