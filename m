Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24783C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 12:39:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA42B6137D
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 12:39:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CA42B6137D
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1JcJCyWnwDpPsCO5nKy9/USAHY0vdVX14QwKiXyU81w=; b=xMaF4xOJ0uzKF0
	f2RzV5Q/rYzY5TofAnGu7leBGtUVYVr+osvF8C87evQTkIQyTK1VLwrhCOqB0Gw2OGec/pcC7WcXW
	V4BIXxkyqUVELBddUoPGlwnjwnD0GrmUgjVV7NnO9vgLIA5NjL88Dd8i7VgC3z19PvH8XK00UeFng
	9ErnQ/Qehx4vCMhdNRbRScTofiZO94KjXN1lWQSfnF1FAAAzkJmIVZk2y7/pQzCcZWoPdM86b507n
	x6RR7jOZRPBkaX4S8Uvd0tXmPECK0MHXGKo/LLLwqNk+IRqUfxXSom769ZZLlckyPTA/bYfFtmRQ0
	/H0mqMIX484LkhoE9Dmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI9Ey-00Go0P-B4; Mon, 23 Aug 2021 12:39:48 +0000
Received: from [40.107.7.72]
 (helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI9Ei-00GnwO-3M; Mon, 23 Aug 2021 12:39:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H88ZUmiD329olGpm4K53lvlLeRyF8lSZikwcm5TnA+wTq6w50vDQW3CrVCtBQpYDOf5ztijlkk+IKohpRM4U+F5wy7joqv472uFZyNMwhiYEh9gNt5IKgHt/Mh1ZUXf9sFO/p7PaiDPX7OdFWVjX/EMLzPIjrwbWkbhJjnFs6RTqFZ1pgLa9C/KchOvqKMZZ3xJTn3WatFaGnfB/ECwMKXXUSBffr/UpEENhG+eQ50Kr8+kE3K59II4u2e0zyavqhdF4niGTv2GW2xcXuSbQLIbsm3coQqMfoRdzk/GSPWuxxNf3Ukqww0d+VxAYLFfL25J4Z8gi5Cjwcd/as1z7Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tmhcYDkeTejcm+fcNbkzYJSAGFxot3s2Bu/OZyCAWPs=;
 b=DT+lzrIDwyIS6FFK3nQxcI/mt+asXQ13xsSNf5R9ycQ5H7PUKBwN7M9AT6fqpiKi1aZ55vQBQCCpbCSoXQ93OXBKVc7iE4oxud2G4d47igipfb4fid0kz1Dv/vhYVkgXrnqxln95j30g7PT9Yva6XpH8eBz9SQxeKAhBRPPORpGN9upDw9B9wlsk7Swuk0fcZi4a5zHiVA4AXu48wsKpACnqcevEcFRdM3EpUbUSAjofbx4aAjE3BTILXIVcEH7CXwjUyhI9hU72EMNbhHlBmRD0HbQf+A/avmEP+09fgZRD9Q53qEJX8we72ARzgWJSAPs0Z6xcYgbkN0y4gZFJzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tmhcYDkeTejcm+fcNbkzYJSAGFxot3s2Bu/OZyCAWPs=;
 b=L+RPYq30Bj2i89RidIggA7SZmfre6pZsipoiWBPVpaddZWggvPxXBIXiEMx7KqilzIo9cBiAiM1qgvq7RqFO8V+pfZ8/1Fvm1oKo7kIkqnJC+5EFTP2ifHquP8gEbMbMAE4i/OJC3fK3IjWRYau0ZHAeacvVTDjJzJnvS99IAfw=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB6PR0802MB2213.eurprd08.prod.outlook.com (2603:10a6:4:84::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 12:39:24 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 12:39:24 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Simon Xue <xxm@rock-chips.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH 0/1] arm64: dts: rockchip: add missing rockchip,
 grf property to rk356x
Date: Mon, 23 Aug 2021 14:39:10 +0200
Message-Id: <20210823123911.12095-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: VI1PR06CA0177.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::34) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR06CA0177.eurprd06.prod.outlook.com (2603:10a6:803:c8::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Mon, 23 Aug 2021 12:39:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 26aa1b7a-67b4-410c-b9d4-08d9663309d0
X-MS-TrafficTypeDiagnostic: DB6PR0802MB2213:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0802MB2213DB86471CBDB8E9EA0C89F2C49@DB6PR0802MB2213.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fl84yByOpKlB3LKTjw6voI5DJOmzIIGX0CmGsOl2qNCk5+9CO3zm1oemvj34LeW9otSDdv6hiK6SV3alibZq/NMCi6Jl3wLip9qQNZ3QjlH62eh98nM698xTZRmkPEx0cSkbC246QE61H7ma9amhzBUkMchH5z83M73ezb/FFo5r6TYL4AsjsIh/gBZtiolbWIOb6SBTOI0uXNo0A1HHdgnOAJmsq3A7agM6qgBvwaIudaBmKoAfjZdlPS243ahOGw7EQ0K+0BRphF0NUymkZUsE1OoTjGrJ1FkSQGhZ/wUfN2NHrm5Lv83rLmzkIdj/G94edvsO7YmWa4yUidv0VfH2VnrmbhFRUeEMA+2tHNEjAU69+4IyJIfqMXvEao8sQEiopF5z27ie54lqoTFKYqlx11fZBIR/3Ibhnn8Wvlopmka33Z8tW8TR/600QH8MoMnYp5pp0bxON0I7kUYRCfkWJ2lSRuuqHrfTriyFaQr8TI6tsr6uUB7jRo2etghiy2CeOIkXhNMUojC2+4T0MfX+/okLKpK2eOuADu4UwFsuoNjhs4HsD6XmUGe6F8fqGhctoCpkuobgDLql2kACLtnaxII4AWddiVmi/ZzsWYIIMBOojtYnz0vbTYNjaxyL6/+MGQ9r0mhCBckLaS6CgGDf3xQtPTnvACAfxfrYtI+iPD5Eglfo0BGTxHpqS1oa6HjO1ZxYdWGBdng2NdmBrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39840400004)(8936002)(38350700002)(956004)(6506007)(83380400001)(2616005)(186003)(38100700002)(26005)(8676002)(5660300002)(6486002)(36756003)(4744005)(86362001)(7416002)(1076003)(107886003)(66556008)(66946007)(316002)(66476007)(4326008)(6666004)(52116002)(6512007)(478600001)(54906003)(44832011)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?L7GURSolHeiGS3EXqeyNYTc4YgBDXY+uO+ZKkvqsA8WI39nfA84eB5rOIGIp?=
 =?us-ascii?Q?TNHGrVJP7gG3eP/vzxVchz36M3N/ZiFpWsM75iOoySIL+W73xhRhqJCEnBE8?=
 =?us-ascii?Q?OkZ1IoCkwyxOAeSFiYF+Fj4ZF2gQP++PFxVb+fPaqprc+eu00Kak162F2Mgx?=
 =?us-ascii?Q?REIK5Bhxa5Wk6xtH/qtX5JKe+Fs3IFFexri8R7RkPoU0Po1YNUgL4X/5KG3r?=
 =?us-ascii?Q?FijKm2ur7wb90CSHdHw2yw49CoPdUEfSQKP9IQrJDlupgQohfSWunkXkOJnI?=
 =?us-ascii?Q?t0Zp09vxylKjVUWQbjxPe7qHVXURPyD+WF9imw2+iqAt6eP/cU1lsevnwTjY?=
 =?us-ascii?Q?nco22bxQcRs7x4dG7NeJMIfovIuHt+7RGJsTf8SZi1ctrhGOLg1qWFKufnSC?=
 =?us-ascii?Q?erFvMSJuOZ4KNe/g3iCe2877HJ09GMYMEVCzhEbhy4zqM+u2JnQPeyFCT6JR?=
 =?us-ascii?Q?IXDiI9GKhP3vq1GTT6tiL3v5/K+B8GP1ceQHDUq72GYwPiEdIC6Sto05cmVx?=
 =?us-ascii?Q?KPVZbMXd+lLY0Ud+AY9VfixHLPqIdywsGY8DaSfL073kCe26Ggrgg/19UiJS?=
 =?us-ascii?Q?fCZ8H3oLw2b5Gdb1H2/gb3HSZXoyItl5l7e0R2yVhCb6uHd0wTpD6GVmneNT?=
 =?us-ascii?Q?Rs5Er/Bd7i6DZpNvv9QeK8kmmEmWGDZQbIvVapGEmtSjTExctmy/k0IYQDtm?=
 =?us-ascii?Q?O8laiv2RPFgQW6RDxINNPm5qluKXeUCgowg5s9OxrZWNLAkgXqUbu1tKBRPP?=
 =?us-ascii?Q?6f3wySiGT6Ff9FHJds9ZvsM/iYk+QaiksQqwoVZGNzJwJXtJkZPU0gPSDLrW?=
 =?us-ascii?Q?TShGV6Xfk4lssja+0Cox/mqVEXAnGlmEa1km/V68Hvd0M11AfMmOJjbz+w0O?=
 =?us-ascii?Q?eGeSi+6Rn04cQLWt9Wozt+AFXpUKFsXoxTsFoDdGjurZJoYoDO5v2UG9K9Om?=
 =?us-ascii?Q?8ZiufAf81hDQ+kpBRMgEjmy/SkToDisO6Tn/89VrTpOnm3DD4/Djj6KQwopH?=
 =?us-ascii?Q?ES8aZ0G/N3vLS84LbqlsaSptNQL7lp9TIlXc5Sw4Cc137TvoATqtJ72M9k/f?=
 =?us-ascii?Q?072dA7a42o/g64epOChMqc/HGxti7juvpqAh353zoTO7ijdeXlmo6vnYst9K?=
 =?us-ascii?Q?1v95U1a0V7dsQpMQduzEmdrelom9qnzeVqWABIZUH4HSSd8i3RDL0DASxKLZ?=
 =?us-ascii?Q?cAJ+vG2InxdcxhgMA5YobNQoKVZtD5dQqBv9HRwgvDvX5BPzmhlryDzQKALr?=
 =?us-ascii?Q?GcQTECEYge3zEoH4uD46L/76NuwVBxotbbruAV9L0LRYwr9j5J0SIPifhQ2u?=
 =?us-ascii?Q?Q0fMb4yZA3owBmq894jZemSk?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 26aa1b7a-67b4-410c-b9d4-08d9663309d0
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 12:39:24.5923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CNoANVecGuu3ptDk58ZATsKYxilGN0sOrMps6PgkFHANK6HgG9uwOgO9jPfyAoTke/onnzWbta/noFK34fIjPkSpKCYoeo8kS4tUdS/pfyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_053932_193548_3C31DC8A 
X-CRM114-Status: UNSURE (   8.37  )
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

The following error messages appear on my RK3568 EVB1 board during boot:

  rockchip_clk_register_muxgrf: regmap not available
  rockchip_clk_register_branches: failed to register clock clk_ddr1x: -524

These can be fixed by providing the missing rockchip,grf property to the
device tree (similar to other Rockchip SoCs, such as the RK3399).

However, the rockchip,rk3568-cru bindings do not specify a property of that
name. Am I missing something or should this property be added to the bindings?

Best regards,
Michael

Michael Riesch (1):
  arm64: dts: rockchip: add missing rockchip,grf property to rk356x

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
 1 file changed, 1 insertion(+)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
