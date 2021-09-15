Return-Path: <SRS0=WjyS=OF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46C47C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 17:03:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB8996121F
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 17:03:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DB8996121F
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0e3RPvb6j1dpKpd2SUGq7Zh527ymleJ9g+lxFPjmYYM=; b=y9zceEKf+gnZHa
	3f88TH6jgjjC1H3ryKZakkDq5S8ehW9jJw7eimpWvPoO0d7K991+PRsk3UeF2kt7nsyyyBhR6fS0s
	5ZaQrYt4QNB+wXyLsVG8KeRzGa6e9Xu8FtgHvBxE4O67M38bLO53WYI8O/i42gc5g/3WMi5HK07qU
	j61EkuFv3B66O5cOUVPSYPkznVQp2XkoP4z95Se3zhiTMNtuBWhVPneO1L/3h/SHOBjDr8m/Yykpz
	7ZM1w+1EMpwNaDOiQyX+oOUtibVUS690/TgoIgmc92b6kJiEx//GhTSQ2+zybVMusbFTXD8Vo7JbT
	AgKKYI6ivsPljFvzdhyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQYJa-009bnm-0d; Wed, 15 Sep 2021 17:03:18 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQYJX-009bm4-Cl
 for linux-rockchip@lists.infradead.org; Wed, 15 Sep 2021 17:03:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fep4Tjb0tovY5MukqWLdyJHNfBkHRzD1/x6Sx6kEKwvCVBb5yJL9iGpHIkF3sPaKzsTFv5NNizhMgG5uEFBDlCrZ5V7f1gcr0dPFdwkAX6sE5RuYuNr3GTibDMzJ5mF5C5LtHHd8pfu8bCWyg9jZVswOcG9hjH6gnloA853DvGZmy4gdVxzZrFBzCU5AoalrbZADb/fecRNVvITORue2b1voyNvYlAGdgd7Fw/MuwQTj2R6nvfzY3M6TVEvw+iOjqehRpd6w+HCrgBqWRHZOqCKOxPTo49o6uUvexgsK6U+0NxreCETmFKExTtIO6DNIRXOndhoLZfucFLsPp382rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=wgY48GBZiigU3UP6XSE4D6S8gWoiY1jv40PXJhglliQ=;
 b=LQUI/kO7tAUrqnIriIHuGSaSMbwOY275fQku+N9XMJ5tIUuIGyrzbovdkySYcWISc0pQZApFzchNh1lCysJvMdk6TlWvjdV6wAFc3Bs5IJNbyPweGOWPX6cD2QVSS9ueLqE3hCk9+rXAafpZLOJ3kGu9GqPNljAxtxkquYdKZFWq08G8hXMOp1pmFS/01xSXrnzvX0Pp6BytOXNb+ltSqW7o6jn45lhAedCL0WRlKgTDA/MEKy3AGjYIMjytdf/r1N8MV7KlyqOEXvTPItQR6YL9o1NA9XfPE9NtWTQCrNbP1Y9/F1IHLngcSuJGcXxD3qk2gc6mv3sUVf9ljhhV7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wgY48GBZiigU3UP6XSE4D6S8gWoiY1jv40PXJhglliQ=;
 b=G4zCxax5PSDBARVRsSMmNRVyOnKQq005Ym2xMkT/1/fiBjFjxNbRvzfOrXBE3KF8L6vtFnIdNG++D2KKnMe4IxpMLllOhbonPHQHe8hwYLR0UqnfwVA8nRyfGU+wZYn/MFPsmQanv5oIRf+9SLTQBhdEPG4WNvYHw9jfyH4vxAI=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB7005.eurprd08.prod.outlook.com (2603:10a6:10:2c5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Wed, 15 Sep
 2021 17:03:07 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4523.014; Wed, 15 Sep 2021
 17:03:07 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, ivan@ivan.computer,
 punitagrawal@gmail.com, Michael Riesch <michael.riesch@wolfvision.net>
Subject: [RFC PATCH 0/3] net: stmmac: dwmac-rk: use stmmac helper functions
 and clean up
Date: Wed, 15 Sep 2021 19:02:52 +0200
Message-Id: <20210915170255.30561-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: VI1PR0102CA0008.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::21) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0102CA0008.eurprd01.prod.exchangelabs.com (2603:10a6:802::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend
 Transport; Wed, 15 Sep 2021 17:03:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6da75e72-3457-401c-ebdb-08d9786ab051
X-MS-TrafficTypeDiagnostic: DB9PR08MB7005:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB700515EFECBB33605D847BCDF2DB9@DB9PR08MB7005.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 53LOhQZxXi2l1JFnurCw3CySKKzk0bt+6vz4E3J03Bfp3TFF4jtQTz5u2zO9dWBJGE/VRbQb7LPcHMiDTupmDSTxOhazNm5fmyUgl68+MiohOFmWIwlcRGuKcLcswG7GfbzUM55LDbMw8rUwSP5NugHyPylch5ZAJDiYOdV4LADzN94I6zzR9jIyCjCMkguUqvU3/pxVgyx8HmAOHdEzYymRFvmXyRD7j6IK2nJ753egkiCPwk1kkOIUX8LJ+4caxP2LDDQEAMBT463Io21VegxYdz6V98t4tdRPXNuumwZAsumaWqmiHD8uMP5XiXvVhygRgCe14R58XCNchoC8AkswfvksVTbc+DoPPGEdOdwN3OdPRtVlL7GCLDaaR/WBBv48azPYA8jRSOpi3zyJ613Wyq4UzcCEXaxdKee74dNZzLGir/LZUvK16GTN3Iic+Xe9pXPOQ2/Rd+UWWNRi4ZgGSSinSc2oy7OirdEhOhjVMdKSAOLNBWlNBUMYwdwtX/oxxNn4nhgq9nzk6aLPv8ThlQjJpTEofJjTHN0vYwncuPNxHTu6vx85GdTGO2mM+KyliC4yeudhOsmc81FWfwrFXggffvamiq/xZ0AV/P2RGvyByFbSBxzMHxyswuenCgyTh0p7itU6C7AMYpKnKqk7ASWszr2Ns0N2JxR006cKVW51dv6r+8KgGJeaeDQf+F6kzvKOJ7PoH8Sq0ar1dg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(39840400004)(376002)(136003)(396003)(36756003)(956004)(66476007)(66556008)(66946007)(6666004)(4326008)(8936002)(8676002)(316002)(38350700002)(38100700002)(5660300002)(2906002)(6512007)(186003)(52116002)(86362001)(6506007)(6916009)(44832011)(1076003)(54906003)(107886003)(83380400001)(2616005)(478600001)(26005)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?o5/0yZAVnDucCi71WXfcrVREUPZdRTKYZMe1v0KrH14s8+/XNW9P8zsRMX9m?=
 =?us-ascii?Q?apzAS+Eoz9UncL+qyVaKTJwowVgaPSjc5lAe31gvaCh73OKlsltwEPdC5n2a?=
 =?us-ascii?Q?PIe6kyjj3qSuSIPFDNJC4W0/JkM8a8HAUEjtKUK0AIm0u0siYrFLJRten2OL?=
 =?us-ascii?Q?wPQq3p7GBTRS695M3G4J4AvaRA2LQz/PxyUWQKIP7c0oWn/Q7KLR1RDhpBa5?=
 =?us-ascii?Q?kOQ+gyHhzJU0oDRm1DZo+ohw4PxF0vLhyl4QwK7gqPJHlZnrIggtsOP3B5pl?=
 =?us-ascii?Q?Z4NnKqzgRO69EnfBfnfpJyZLGMYqgzilj61JK8VPhBPLzgL6DEMwDc1YqWMU?=
 =?us-ascii?Q?Wy9x2llLUrJaonYXDQeCLAhPJZFI2J8q0stXt7cTWsuLnz/JVGb2Nik7IYU7?=
 =?us-ascii?Q?BYGmIaAli9bexjQv7jyYIsVA0Ceor8DvoVbaOIZHozseYb3CqfFEBmIxchm7?=
 =?us-ascii?Q?dEua6KTPyHz26R+euCimerltHgjRiLrxDbUNQdeVMFkgifTbzm71+7k2Yhia?=
 =?us-ascii?Q?2XvQVWlPlSvqi1mlRtSq/ptkoJFmWm52PKLlTd9RhT2hPAlsTTl5w2xHom6l?=
 =?us-ascii?Q?3cv/n/QKSkRgCxtlXisbQ6CERUWav28D5CHjBzUk7LX9W1SDB9aZ6aNxWu/t?=
 =?us-ascii?Q?pnprM851YpAuPHSiXgft2oIgNrQOc2H54YPe6LQBKvNP9GlpcB6BIxOuFRpF?=
 =?us-ascii?Q?sj2CVh29mJuUCBGS2pL78K9S0cSwO7tXeIWmoLgiQVyuQbUiGEw2LqI19oA4?=
 =?us-ascii?Q?B2z6RqzFNj6yPjrHlm6cd6hsT3qr7Ww2tdgRFsW18HTHNIDXgHH2Xyc8hath?=
 =?us-ascii?Q?uxs3TOp5zOo64Hnq2UL12qs/P5WE0Lfo488GsxCgs6GiUb2Uo7U3gFzZ9UtW?=
 =?us-ascii?Q?mAAAHPcjMlRYVLEIWjVh/rBaRRsvdY5jiDblxKS/GtUv2DjR2kYw9NZE7dQd?=
 =?us-ascii?Q?JwZ9I6XisSxDUMcNbojX54JC9dJHi2bHcQ3n+ZmbJr6Ua2oaR1wl3qAIuNH/?=
 =?us-ascii?Q?PcJ6IKomjFdw4RbGnttjqCwaUy8VUX33BOLT5GDOW/dME6lTR2y7Bs0Vz1/m?=
 =?us-ascii?Q?f3cpn+HPKmUEZknOMwQuHNJ5lpYiVt4LiyNRAkLsfbqRjkzfxdd3a3QYwLpf?=
 =?us-ascii?Q?KWbwP3tLZUdq/iLTotDMS1j8daq4qc5c76LNwwiHdIwszFCvGwswwYfxyjxN?=
 =?us-ascii?Q?DOkUnTUDp3SoVE22uQRtW8o5aue9cHwlqDuKVJ3NpHZewPTWGShdEISL13xV?=
 =?us-ascii?Q?7CdAoVCzGgps9dCo+VAxEREzCPE6svkw3182OVEkoXmTMcK/36g0A27Sg819?=
 =?us-ascii?Q?n19eN9hDVrsTCUcuW2gk0eUP?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6da75e72-3457-401c-ebdb-08d9786ab051
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2021 17:03:07.1560 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ObEg39cMOhnO1Wug9oIaB+Eyq4Hwo9xHPVIRYxIxbwic+JZYSWlEWCQ9oNAwL4hKLfKtr05UJo6/7E+QUqNJOwD9RQoPhA+1JDCCcFXNPy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_100315_550889_12A70595 
X-CRM114-Status: GOOD (  12.03  )
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

This series aims to clean up the dwmac-rk glue driver by
making the stmmac core responsible for clock and power management.
The dwmac-rk specific code is passed to the core via callbacks.
The patches have been tested successfully on a RK3568 EVB1.

With any luck, the patches fix the Ethernet regression on different
RK3399 boards, which has been introduced recently in v5.14 -- but
don't be disappointed if that is not the case :-)

The series is marked as RFC since the handling of the (internal) phy
is not quite clear yet. Should rk_gmac_{init,exit} still consider
device_may_wakeup at some point? Should the glue driver power on/off
the external phy in the first place? Or will the stmmac core take
care of it?

Also, I am sending this RFC to linux-rockchip exclusively on purpose
as I would like to see some test results on other boards before
proceeding.

As an addition, the usage of clk_bulk_* functions is envisaged but
not yet implemented due to time constraints.

Looking forward to your comments!

Best regards,
Michael

Michael Riesch (3):
  net: stmmac: dwmac-rk: use stmmac helper functions for pm ops and
    remove
  net: stmmac: dwmac-rk: clean up includes
  net: stmmac: dwmac-rk: use stmmac helper functions for clock
    management

 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 117 +++++-------------
 1 file changed, 32 insertions(+), 85 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
