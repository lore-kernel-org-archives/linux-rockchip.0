Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29BB1C43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BlRMeJI1FHQCXStFaqW4siNRilhV2FW1+1I2KR6EQgg=; b=uQoG1wEPOzygNQ
	nIqRkECD31aBRSOftbDoeadESFpN1EEZC1EtnUTMI+8GcpFEwIw4zFOhMSca6JtQ5jID6U/E3libI
	ZYK+71GrduhH5Oip+dQNEZPKsDY89DOpM4EDmGdIw/O6FR3/CY9K7ex9kNjFUxrl21PC6lYP6pGby
	WFBgeqwyhYgFXd31nmAR4Q/NMoPswmnCx0HUX3GX0Be3c6qDbN7BkoYlHdHX1rz4NEhQTjvkVcnvW
	jR1IDxZ7/76Ql3G9dgYPpdLWSmKGV7slofIBrj9wtoBWcAZM1Cr0dvf2jK/54Gowg3Z4S8YLxpCG2
	BAbiC3l51VnemSqxLppA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAI2j-009Xsp-3P; Sat, 09 Jul 2022 21:31:13 +0000
Received: from mail-psaapc01olkn2097.outbound.protection.outlook.com ([40.92.52.97] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAI2W-009XpH-QG; Sat, 09 Jul 2022 21:31:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mrAx2l25kqOYOmsIndxMAOg84jg8kWpwuj1Bl0iYj6vKcU7VyB3CeKYmK1c/a9ka+3osaHwOvReu6qZYjmdkefUFhfI+MUUd962wFSs/GizmFJ8AbVFLPVMKgR1+2Q0iN57YdcwUHsDYs2nuh+gw+R/Za5JORWT2zEt2TdsyVGhYhcEJJ40h6yRrh1RDMAl/706jNQ0OYpfKT9OWeHLhoO6byCsV1LxmpqHdnfv5A+GTOixNkeeIPxdUtohbgS/RDqRmPsV3mKWdKRbd5rHSI+9/0wlITYmJUPL8yLQ1hjOaY74lWaZbbVBKNACGUbDrjZRuBH/SbkR2Vpd5F/ZoQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m5/WmM15FCp9JGIfpraNrImR+e9DJ0GOnbg0ZSr1whU=;
 b=QD+x+BRvSxtzU5ijIHPjJIZujfQxvy4iiA3SnILgjeNKS0RMbIW9j94cfqIfySNL9POlJWCroEXiviIQgYGkBK4Wo5/xZ+t9kNEUVEDlhspCebSKxXCYe2Gmh5ClczghN5u0LffYRiLJdgjR3Fp5MA/UfBiCD+UL28Sc4++J4zVt3SDChNspUaEaN1e1pZpMjQMR+4OtyyF2/Ohl1oBbyeWQGQBsIfcazay9G6FLvRvpsbH36AUhdmfkGqfDnl+B+1U9pM6N+3saPFiKfdZK68eBUTAoPkvBZ4/fg2HAH/zKCby/PP+lMq0UJXhWrp0fkDS7oTuO5brUf0/BT8gMpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5/WmM15FCp9JGIfpraNrImR+e9DJ0GOnbg0ZSr1whU=;
 b=Q0brluos+pa56dZiWjDzc+BZbqXcI2PFrAW4dzpcSRjK2dIf9gpIkxJRu9TVBhhgmMNkG8bkuA3R8F+kD0lnVLDhIievMqM866BUShc+dPoaM6D5fr2UD5nbX+nCtAHKsUDDsj1OQGJ1OwpY46eZAXWs9IHYna8VXPWnEYEnir7bsbbASobbd+suoc7HRQGqU0aJ+qM4YlGELh1JYxllwg2nHmWCy2zFLO5vfJm6YILpjpeQ3eaO0tJke4DVhTH5GjeFgwf0s6gQYMWllCWlKWcXhpJ+36JRkRndBPDGYkRaapWMB+qgQKd8zLqNeq7Ntac+FoOz8N6zwBS+m6VZ9A==
Received: from SG2PR06MB5009.apcprd06.prod.outlook.com (2603:1096:4:1c1::7) by
 PS1PR0601MB3770.apcprd06.prod.outlook.com (2603:1096:300:86::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Sat, 9 Jul
 2022 21:30:51 +0000
Received: from SG2PR06MB5009.apcprd06.prod.outlook.com
 ([fe80::e50b:fd4a:80e1:6605]) by SG2PR06MB5009.apcprd06.prod.outlook.com
 ([fe80::e50b:fd4a:80e1:6605%6]) with mapi id 15.20.5417.023; Sat, 9 Jul 2022
 21:30:51 +0000
From: cheat.sc.linux@outlook.com
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Shohei Maruyama <cheat.sc.linux@outlook.com>
Subject: [PATCH] arm64: dts: rockchip: Enable gpu node on rk3399-firefly
Date: Sun, 10 Jul 2022 06:30:41 +0900
Message-ID:  <SG2PR06MB50091B32C30B35092BD419689B859@SG2PR06MB5009.apcprd06.prod.outlook.com>
X-Mailer: git-send-email 2.37.0
X-TMN: [wYFzCf8qI/O9UVRJF0XmONEgnY2NFJA1]
X-ClientProxiedBy: TYWP286CA0015.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:178::13) To SG2PR06MB5009.apcprd06.prod.outlook.com
 (2603:1096:4:1c1::7)
X-Microsoft-Original-Message-ID:  <20220709213041.417076-1-cheat.sc.linux@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 30b9b069-cbbd-4cbd-a897-08da61f24bd3
X-MS-Exchange-SLBlob-MailProps: 	gjx25WM8ZNVoS+uEfIl8bNOTZysDTecQ0h+kRYKiTZtiIvo6uk2oV93laoR/+HUrVxsx55Vqf4A2dqEmKffdLx4TLzL89juoi46ffC5aUf3BSHRhJZ4WRQW1YhONa3ojgin6RPeF00K/DXGn+owW+eGshKi2t2AstjmSZr/0YOURj1iaaoKbNQawxwIoM2kLCfChv2P5NnaU/r99D98PQF4/qF8BKaPPtXzz9rHIH9iDY5sMbp/hREJKEN+wKqsYTllDls0+423VUnEXw4PVTa8TfFhIIwPck3744k8lGxAUfCKL053bNjC2ccbvV/y72SRNIi2zUkNqcgMXXioakI2dX4O6FO85kTNo7jzic31r6lpSLAr1JsX7U5U0GZ8RUu11jnA2rlCa3XSriVU3wf++5ktCcTSETdExihjEhb3YUrazJgkEeAazPfbgJxP2UPcNb8D1LWkPIOmFI3A3aBizRVtWsYMhH17t8ISSVSVjx0tE8YLfsXLo4oT9XQePn+/jd1dQRF1IIKRN1LwN4cRKjIlWlies3NzBVImD7V2uzVcCLJY4O71YuTiRJYldRnNvp8MH0kqbNw8ioYPLVPSpbiF0PxAoKPI6cwnG+RS0BIgLk2/gOeCHbOlW5Q3njGOOg0MQM7doS3WhcjLMMlcKMq0oO7w3JOfSolFoviwLJdbXLQ0jt2LeDLrCTPNZO8oYxEJGRy9Pa8UYSheV5N0Z3x9TKsq2mGxnoXsQivg=
X-MS-TrafficTypeDiagnostic: PS1PR0601MB3770:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	h1qAW5nKf5sT9bKhi6HlwjGpIfYeP877FvWMMBxSZVPxjXtXBuoVvmO5qnpo0LB7AON/uZj7Wjf+4vvWfKtzvOHkzDoyQtWe7yYQWVuKtbjmp1ScxuQ5efAqZZqOCGmFIvbTK2s7/s8qyKzQ383MVd2r2JIWkf+tqx5ppxm0BCsyP+J0qlq8otvUf3zckpLkPNkLKmZ1CJL34XGeTguqevrIVIEDzCsbD9KXSeIE6iJeBkxX+1mjJ4r1LWDza4KvRs10gzAM2M2Ni490lnEjjUBV32yMRcRz4ZZBSKjhekdICnM9pwmmMB9yJPtu0lKvDgLvyGLAwuNET++hy0YymaR7dqF8PPiH1JGBdE4BP9iVhgp5CryZhQgo2YafD/KljgrjfwnsBw52QcYqweZHfnEwtBA+2YL03p9a+UkBk4cyi955Ptc1dEZyD3Vr+OZvpagz/p3yz+H5HdMoPgDYWvs2IDzqR/tewY0p4dpHkO4TT1QyTBTFEyHeguoLOV1LPaE1ah5tBXNK2pLpQZEJ+h8QuZqEcoM14Pn1QFLXn4EyLEoLqOnBn0ty01uJChrKuUGGb2ZgQRtEQS+AwRMAsX9KyjfxeMtargKGJKavm/pSZcRBRvPPZsmmoMVDpHSIM6Wq6Ee/5qQB1Q6hneiRUZ3eBSp7ZO/sg/ZLjLylkhAirlsh+wvN5TgEFR4Ya8e0S/dunlq7KQFln+KBLzE0Pg==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?FDtj7FSM5qK5x6j43CG1uVhdWIdc8t5oALjoykLwfT4nygphVJzybsCxemVd?=
 =?us-ascii?Q?7sybATFJaaKVRDBCjemZjIYt6Kum/wOvLO8s9kfFryY/NRT4VNlNY7WTxzxq?=
 =?us-ascii?Q?bdH6sPKMHXr4HY1eZg60LmY08drKqijaHAwrSElvau45Fn1ysMEgNY226JaY?=
 =?us-ascii?Q?N9IyfYsAwfSjJRjiAvEqGvA2blFuQq3TuQv5rLAeMLgtjmdf4Kze+sN2qqIs?=
 =?us-ascii?Q?uyV56l97GFUQKbEUg/3M56a9ecfJPlqbnSol8U5APWVxWj+xTfjhNZHCETUX?=
 =?us-ascii?Q?2Mw7Qux47nMzg8gIkhHN88a1LQ9X7UOr2VAx5xzvfo0m3VE402SR7Ct+ggrj?=
 =?us-ascii?Q?sRWgESxXXx4uiPO4P1GskGoNJNywYDekYfsyKaMCfflDkAhJBYcO3jXEuniN?=
 =?us-ascii?Q?iX1azCUSqtDI38x3HSLrjP3JvXleA3b6ikA/KSIWWhVQFXKGaaRJf4ivt7bR?=
 =?us-ascii?Q?mVavrDjMVjbV6cJ1PsSMdAb5LHzXUw4C+mgQNEeEpktemvA1DWzCz+rsdbdB?=
 =?us-ascii?Q?SKX7w6rJb4rmgQbILh/PCfvg4Hiqh5WeAIWr95Jw+3oFLydbl51yUokBwTPP?=
 =?us-ascii?Q?2p6d5qP83asXDdbBleRVYkKfR1T2cK6tEr3oSVox41k6O5YdhMS7fhbGwths?=
 =?us-ascii?Q?krHLAnfde1HuPDBhpMRoKENx9fqeOBSPBurzM1fE5unnmlNt+fmK/8iTSv2f?=
 =?us-ascii?Q?UkcbL+zfOIPwFteGVkXFOyi71Asd1jAkhRlH5yfo8wvbCXEFYkV+r19UqFyZ?=
 =?us-ascii?Q?qfCHHakLOxRdyVimk94MHLy5QW7wRCB7g3HtAsFqG8Vml+K5Xk84rzt2QsIv?=
 =?us-ascii?Q?Z1gLi2lz8Lp+2Oyz4JztjoKbLqey1NlAtiwRvfi/oDEXLTJn8VzFyfm8UJ3B?=
 =?us-ascii?Q?jZUQNSdpQEasajtx0WNJEO7n21JhkhAJdOF5Pr8BPqIPwZ0+r06KkZX3XpO0?=
 =?us-ascii?Q?KrxKOa70d1Ie6dICSuOFIaJn6HR7XT2RknfRtbzkYYNhm8eKxvpdqMuEewc2?=
 =?us-ascii?Q?GWRerRsrGeq4KwUIl8t1czBhtELU3kwThGq6d+R8s4TjXl9oEKXN5ucvYigF?=
 =?us-ascii?Q?BO8JMeY+gNEasUNc8HA5InuLIvELrZn4XxnuRjcDIKLBG5JDQMmgGm/jxFCq?=
 =?us-ascii?Q?LSml4syZ/dl1sJhow73hwzEHw5nuNRFsSjl5OSvMb+ZzwtHht7s5SfbbTkZe?=
 =?us-ascii?Q?5V03zukPWYG3jsFo2VCLlA53l7Ots/B+AprpYhGYdmeZobwfuILK8O70dEYX?=
 =?us-ascii?Q?XQxjLd2hKLUTZKnSOuPcFYgOzS5liUBjrf6aK6a6mK1A5Re/iw0TkpEK7+BN?=
 =?us-ascii?Q?vEs=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b9b069-cbbd-4cbd-a897-08da61f24bd3
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB5009.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2022 21:30:51.1300
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PR0601MB3770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_143100_908034_2B142BB7 
X-CRM114-Status: UNSURE (   8.02  )
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

From: Shohei Maruyama <cheat.sc.linux@outlook.com>

This commit enables gpu node for rk3399-firefly.

Signed-off-by: Shohei Maruyama <cheat.sc.linux@outlook.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index b340c9e246c4..2e091786aac1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -941,3 +941,8 @@ &vopl {
 &vopl_mmu {
 	status = "okay";
 };
+
+&gpu {
+	status = "okay";
+	mali-supply = <&vdd_gpu>;
+};
-- 
2.37.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
