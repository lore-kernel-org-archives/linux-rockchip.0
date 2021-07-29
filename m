Return-Path: <SRS0=cphG=MV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F233EC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 09:40:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8AF561058
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 09:40:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B8AF561058
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=srja84m7KurRkaAN6OzCC5a7YbSX3iw+Pgk1ySOwGNU=; b=gWlBkcRGP1At+O
	DhTxoXVHIOUaPM/UkrREHu5LtaKlK9059M/ruO0SuKxPbzMsRu92rGFYLZ/FEnNYfvzXqNAASn4dU
	DttbFX+EvNKEvR4m38tb6ac2dmIs2jAERm0A84w8Y9nCrN6us9anenAW51YLoxA3WcUjSeRg29BhA
	f9eaTlLJdrM54dekf+5vMIN/VJ7ikye6kJ+yRyva0o5Ej9QWil3X6zEpQes5PSrn1wyq9a1tmRe9z
	kn/T/6qRwN+93uTK26olgcug8b0a6zdiLR553GTjMj+Fzicff/+JNIwaVtpRxbwMEMN0IeK/CV0Gn
	k57m4h4xIM8R5PE16LRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m92WJ-003fve-CW; Thu, 29 Jul 2021 09:40:03 +0000
Received: from mail-db8eur05on2078.outbound.protection.outlook.com
 ([40.107.20.78] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m92W4-003fqz-9D; Thu, 29 Jul 2021 09:39:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LidB71/8RIDBQ9JBdbXJFm/pggjUMKCyiNMyahMqShBOdDxBIx01cP9Bj5Tlk0L4t1N0Vq1syBJXC40EicMDynLLQ4FtfkJA71DAusKD8pztbmAucCIS1ldEH0/Ob9i5Lgxxj/ZL/FwrBN++hLLvquj5Vgazb46LgPEAo+aVcPYEbjTPS1/EJzU9sxM3jOvx4ue/uyF1TFkPAryZRCOuPmX7Bd6u8yTlRZV4eQsesveITHCcuS15cFk7coXdm/VBx5AIawDmnUM4z4f7OcT1/n8ZSV5usYmB+S2z+3G2P3jrBXJ5X6ZjnW/74Gd4T2p6cCRhhtCnOOenb0Oxpbhmbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h8v556kpoNYRc+U2FD63vQ8tSjGm+MvN3JlqAMYhQGI=;
 b=KD14XbVCm+lHnL8/qgvA+TJ603uPmhna0SE2ac0tsMlKdIaDxJOCOMXkmIujL3dT4GlAtkhTXC7SGVeBA9HoQVoHBWSw6aQffxAx8+QRH9OMG8x5K5xHZgDlZH/5cZ3i8KZAyiq67R0iup/V/Vm56rp3w9AE5yXTw3moLtptDLOKLRJrbB6iWwJtfgF04wedpv80I6JD+7VvJPApUsfRHUAehLe6eNmSHqJnkd3PE81DAqi40BCXPTT6tLIqNfej0+dfjyQnJebSdu8Fnnt7sXiMnhYKETMk+ydda26A2gpIECH73VBOsJIgvWYBMdeevx7fYw9NeYbF8hgZ6Q7SqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h8v556kpoNYRc+U2FD63vQ8tSjGm+MvN3JlqAMYhQGI=;
 b=Y3Ul7lRIkdIhR0MF1hIlluaESmztxpBD3bt1hTVXds0GS66kFTH0CBxc9MEM+k3EkoXXtYXQcgArebSP5/bqVWHaYYwwkPMQfhI88KwzGOrbUiloBg9/Bf4r4H9+tg7gFbJNbkhwplYBIZPBH8/dSWe9cUXZFb1aWqgqGsPWIKY=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3548.eurprd08.prod.outlook.com (2603:10a6:10:4d::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.31; Thu, 29 Jul
 2021 09:39:44 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4373.019; Thu, 29 Jul 2021
 09:39:43 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Simon Xue <xxm@rock-chips.com>
Subject: [PATCH v2 0/2] add ethernet support to rk3568 dts
Date: Thu, 29 Jul 2021 11:39:11 +0200
Message-Id: <20210729093913.8917-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: AM5PR0701CA0018.eurprd07.prod.outlook.com
 (2603:10a6:203:51::28) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 AM5PR0701CA0018.eurprd07.prod.outlook.com (2603:10a6:203:51::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.6 via Frontend
 Transport; Thu, 29 Jul 2021 09:39:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c37444ff-4b34-468b-e302-08d95274cb80
X-MS-TrafficTypeDiagnostic: DB7PR08MB3548:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB3548557D753922C060663FF9F2EB9@DB7PR08MB3548.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4u0++9H7EWpObaL2wEMdqMpFSwvFgawy0XTNNdmFRBiXRAeEh5sssFDyORObXReXduPaKbSnyHe5s5qd5NZuaM6WAxdEN904xOJ60kC/3AIUkW7jRdERIzhnK3f33bcyh0QVi4PtZLXc8AnxRZf4QhBxj12V4AqyDUOq6gdOiO8YrN2CXOiehrWaLZnXcQX7uQYvPhYzir14ArzaBmmMIRai6TMu7XT9EdZElcFkclNXfWVMPq6m9C4cHzvY8FgFyhgO2R5na0Qp8zEyUTZkIkBWyI+nB3zNmk8N6loP+Z3jFzlNGOMCM5AcrYjw/e14xGc3Ml2RNXPk2Py9NrK8sYE46mfbuq75EugR3XVdIjqSG6quQxgnE86DVtdvkqbli2dHH2smjz/+NnGJdwKEziFa4rzwWS/gAjg7hx/ANDbOWM8Y5PguLwYCdaxBsFcfgbk+UxZGarDAKjiVLJm9pqcqAWIJJxVwelbn8gTzFIxm7qORoT/QMJXeWbRhwaAnzFLby6PscL4w3mi0imC8qXQuvfX2bK1m/JhZefkvKxiPG3ZPHFl4Nx+6COLp9KcqwVJNHIdSVZyLC92yvIJNcoKmrxFskHgBgdxL4eBgGpdg+QJSFdkSYMbcmm6SjYTMOYJ+2Ts9t8bnBc9bP0TTdpSjH+VWcYZkK8rR8dQq23o8iKmy0VlskSvaa19/S/rqJ9NX3DC4Bn90qp+Avu0GtA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39840400004)(366004)(346002)(136003)(376002)(8676002)(52116002)(5660300002)(26005)(2616005)(44832011)(316002)(6506007)(54906003)(4744005)(66946007)(6666004)(66476007)(2906002)(186003)(478600001)(36756003)(6486002)(38350700002)(1076003)(38100700002)(8936002)(956004)(86362001)(66556008)(6512007)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U8lajPBUjrC5s+2zXeno1YNVvbj2ni18XKowGFzG1dS8BExXvM87BTzWBgFz?=
 =?us-ascii?Q?nIJ/pMayJSrgHrwK87nyGMNdXxmTXehnU6kxq7r9/qnpzsl6Uk1h3YqJhkx/?=
 =?us-ascii?Q?y9dsgZndvavFy6numZev8sOMfGZnO1CUWn8QLSiTRsZ//W2QUe9I1jMyrM6P?=
 =?us-ascii?Q?aTSlsnssjRqITGGycE+u9dPsPE34bZkTbwnx1e/ZJyY4MpUSzUiB9PO9g5aL?=
 =?us-ascii?Q?almXSKXg6gX6mCm4D9vbJ6sFmgNPNjpOXna88LsXhAbibDwPMw9BgEj1mBgp?=
 =?us-ascii?Q?IsENgw8gN/1oWCaOQgnBC8FrZeYv1TsFmxZEKjWZKwwoj++dNLMKSKz2SGXF?=
 =?us-ascii?Q?GIxcl52+iVFRXuPywago3ofCIflCupKx+ymGgvmF/143ChifO6FGxRypUG+m?=
 =?us-ascii?Q?JjaQuTWeLpSO7IZCpMuhw3tILSZtbzHbGS/kD8ndulXqvg0q+pXy7xo1Bq+y?=
 =?us-ascii?Q?s7hWxoHgTiFrjpRVkdZUk3RIUbEBQKTmXbATydYJORDQEaiq9Lo7Ugk0DNu4?=
 =?us-ascii?Q?DVjEH+D9Y9si7N1ZJP/0SGSyxlG+aqFvOxiHlvZjQjhjDOZ//zqRFFnxV8nJ?=
 =?us-ascii?Q?qShy1iM5ylcA5PJsJ9ATiKgTf1nrcR23EgA+xnqsuQyJwkyqF2npwt1n6/Di?=
 =?us-ascii?Q?w+X6EPIlZsWtgra7Gm3pjG5kFEzFywLOYEqMAcfPXEMjQUYOIUsbnBwME4TH?=
 =?us-ascii?Q?bO12teFu4j/h4MezvLxYebmfquKpIS/ZEyZeStx2W5RIA5BC+9h9TIgmMEgP?=
 =?us-ascii?Q?wr+B9yxKP+mWfsHkomypEGJ5QiGTt5akuQ4y4dXbP3iBlyQFTj7a1VuemoRv?=
 =?us-ascii?Q?u1y79P1adBScgh/ZwhsFp573BtvKqp2fyAinrfSEeOx2Q+ynrTdtiRLiYOIi?=
 =?us-ascii?Q?5eqZfh861iGN4qt/AIaHJIkXDVQPey6VzbcoMdN/0VL9h1mC+ij4w5EjBLZg?=
 =?us-ascii?Q?31ssB24VV8Lik36viasW6bRgZQpouzbDYq62jpw0PvYoieUDgb8ZYb/IzEPc?=
 =?us-ascii?Q?UCwYVaQC/FtjDKTDzBXuf6ticXN3IonJy1mFRG07GYi9uhSXXsKyWXgqt3x+?=
 =?us-ascii?Q?SgLAy1dfOaez0mPPUD1ulPNFvJ0sKr7C6RCOMI7L7km3dmnS325aqOfLFKCg?=
 =?us-ascii?Q?CgUIgmCP8/1K+XpKC4j7z9pMEQk6NuZXAiN1XVNm+2pivHazb1lZr3vSABiW?=
 =?us-ascii?Q?uQeiZo32naaEXw+hnaqKj207NpmN1sm8nR9GEM2zFtgzIwGf2AczNxNpOSBP?=
 =?us-ascii?Q?F9gI1I82jwHaTuUHJT/bBHsOUdXjSdExcnDdHhDajoZbt1yuoO5MTcvK2xcX?=
 =?us-ascii?Q?rx1U9xP2D2irr7357SU124FK?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c37444ff-4b34-468b-e302-08d95274cb80
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 09:39:43.5370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ei6mhiSH+7ZzSI7s0RzlItuspEtuMC2RfM78fhod5dqB6KA33/qUSH8MADmoLNvInQRFP/6nnnc0mfbiZ3mCDGTsgFzdsPuvjHGcMf76bOE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3548
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_023948_374838_1E99A568 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
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

Hi all,

these patches should be orthogonal to the ongoing work of Peter Geis
that aims to introduce the GMAC1 node to the common RK356x dts.
The GMAC0 node, which is exclusive to the RK3568, and the Ethernet
phy nodes in the RK3568 EVB1 are introduced by this series.

v2:
- sort properties alphabetically
- use phy-mode "rgmii-id" without delay properties
- rename phy nodes to "ethernet-phy"

Best regards,
Michael

Michael Riesch (2):
  arm64: dts: rockchip: add gmac0 node to rk3568
  arm64: dts: rockchip: rk3568-evb1-v10: add ethernet support

 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 57 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 49 ++++++++++++++++
 2 files changed, 106 insertions(+)

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
