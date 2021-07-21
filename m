Return-Path: <SRS0=S5P+=MN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48488C12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jul 2021 12:49:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFB9E6120A
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jul 2021 12:49:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFB9E6120A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=outlook.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0hOrshYvYBpjli7V60kUP2gCbqFoXort7pmrNoTJtHU=; b=nSisgVQ+sGV2HH
	ORicVmLeLq722tAb5p1N75CzMoMiJnj49KaEyqUfXjT8KQfDcuB/ZpjqR3FqoKr1VxhBgFDEQjnn2
	6qokNWoReT5dTugwOR6keg+Z2LF1iIkUTQACrV2Ykwpi6cruQ1SnI0H9jI7HD8JeoZrbmXPmc1YVQ
	RszkobKmUW4r9TW5qh/GSoGFWbjdEjZO7QFnvWNYG5ybseQhhSs4GXrb8qz7Q22dMuDs68G41/COY
	0MMK94mEG+zmgIKeSVS9s9InzI3WRLKl2PGfiaecfAqTYIXVRPjP7raIZnPr6ayScwreKhN6Ph8P8
	rja/Vvf4kHRyszw4Jn8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6Bep-00FfGj-9q; Wed, 21 Jul 2021 12:49:03 +0000
Received: from mail-bn7nam10olkn2066.outbound.protection.outlook.com
 ([40.92.40.66] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6Beb-00FfDp-KP; Wed, 21 Jul 2021 12:48:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dp0SQc3z9+zKsRyOl31xN0t7Xf0Af3XtFoeq9vZs29clDfqAkEvOsPDqG7NWCV/4fN+N16P1AgBez/pjufSYufe0My8oh/FbO4cLPtnz2Ffe8d+xIOtmbJS8BB55WnjRQjDgTThVZpgG8nwf5CIY7v9HxZIc4y9DiygRUph9iOtxRCrn+LHmpv7P7nnY4faaoCGNTxINvsCDLYa2FP+IrtdCKXUE2+Ee0IpxbXhitmi3Bi6l7tC3R2Sk+iifUaigbUBaIigtisM4B51Rx9y02GI/xFODLBGZG744S8ST3fsOZDisaGpyFPcg9go5ek6Y/1NXhwsGAQSq7IkslKgG1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J0iBpgVeCHwWBQMW1/l/NLI00IlCYbt1NszVwMEQ1Gk=;
 b=IOEfFEQ+lJvkFkizecfvrxrelcL+Sj2PuwMDvWiPUVMkSKDTu8tBYJ8D/ynxJs/RLbt5d1+JzdexARwUBvdGs/m8vVhJdZNbHtxsNOmdjUDnu6eH3BzZyExY9WoRydJ9WXanuLbkb9iH6FqdtJ6ZIlwhPyjtGcrYWI3KCNEqXUmXqVzNna9UA2SoxJzprEIwxST3A6eL14I+xtzqMmZznWnJj/voa9uGRYIum4rhN4OG0dDlGoSSmEL4lY7eetGD1kGrcozYdrLFRAPFhmOn95ipiy9Jd5lZcNtVOiphSewTz6DfcCLNRQw876yF9xWCRpta+2/S6MKJSfEEGovuUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J0iBpgVeCHwWBQMW1/l/NLI00IlCYbt1NszVwMEQ1Gk=;
 b=LJmnqZI3ddaj7J92gl3mC7lbbXuZnsj1udfq74tbziaSD8X9i6sa3WWm9wy7awdvBRU6hA59zfh1Kz1auoBef0ZKhc6ca2ZXvgOS7KeTlsJB5CeUs6/WWccdOaiu0IIYvGrxCmDBta6+5gKnqXjOdJRg50zBl6O/beO4sZhme5ZzWllyZi0fwbUAC4qhsHzsFYA2fDMft0hYYVLVjBbiArsJiNqf9/Ylb8hRC0sYq11n8AtCI9IjzPHbdfvN/LZdx4Wh43dPhFeYKpW07+PtpUWkh79jaW58OZtSpiIR8Flod10K+S5CaZuFMwdhsEP9I7zJO5jQpGeQ2bumA1K7nA==
Received: from MW2NAM10FT004.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e87::46) by
 MW2NAM10HT068.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e87::309)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.26; Wed, 21 Jul
 2021 12:48:43 +0000
Received: from BYAPR20MB2488.namprd20.prod.outlook.com
 (2a01:111:e400:7e87::42) by MW2NAM10FT004.mail.protection.outlook.com
 (2a01:111:e400:7e87::428) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.24 via Frontend
 Transport; Wed, 21 Jul 2021 12:48:42 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:259227E441B9D6C30369F51145A2922529F8880E1FF0C663A5276710D9B8D4E6;
 UpperCasedChecksum:76A61A8AAECA890A99C1449ED2DB04FEF2BFF190FB0FDE632C65693A05F975DB;
 SizeAsReceived:7456; Count:45
Received: from BYAPR20MB2488.namprd20.prod.outlook.com
 ([fe80::c560:d46:6441:fd7f]) by BYAPR20MB2488.namprd20.prod.outlook.com
 ([fe80::c560:d46:6441:fd7f%7]) with mapi id 15.20.4331.034; Wed, 21 Jul 2021
 12:48:42 +0000
From: Yunhao Tian <t123yh@outlook.com>
To: heiko@sntech.de
Cc: t123yh.xyz@gmail.com, Yunhao Tian <t123yh@outlook.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] clk: rk3308: make ddrphy4x clock critical
Date: Wed, 21 Jul 2021 20:48:16 +0800
Message-ID: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>
X-Mailer: git-send-email 2.32.0
X-TMN: [GSB7Nbm8HLX6agI/iJgp1021XxTtf6Nm]
X-ClientProxiedBy: HK2PR03CA0056.apcprd03.prod.outlook.com
 (2603:1096:202:17::26) To BYAPR20MB2488.namprd20.prod.outlook.com
 (2603:10b6:a03:14d::20)
X-Microsoft-Original-Message-ID: <20210721124819.1967393-1-t123yh@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from t123yh-XPS15-9570.lan (103.135.100.6) by
 HK2PR03CA0056.apcprd03.prod.outlook.com (2603:1096:202:17::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.11 via Frontend Transport; Wed, 21 Jul 2021 12:48:40 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 45
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: a720cdf8-cbb7-4cd2-b65f-08d94c45ded0
X-MS-Exchange-SLBlob-MailProps: NS9Gj58uCj0Kt1jazn5a3OsHfqFT9QhzajpSrNYm7772iq6UECeGFOLEiDqqZ3l8me9xCoLpAlq2SAwItfSYR7SyJzL0gJAaSheXCMitF5adXxQ8co1+1pp+A9lXGotGfu+Z36wsBSr+y0Z3ZmXYZ6vpAcIkyoaxJAJhxFSrJ5W6pglCYR7neGon4Ts+EIDl4jc0P/TQ5OHVI7YmkIeSk39ccvZEd4vDadu1MlUypswgHZWWsMWMu2lfYIqkDfqmcsuRSt0ShBHhBrzrbXnxq8vwvlsNHZkXttus25TWOUlUmbSJK+az0/31UP9A8h0LF3UCKlwqFq5LdHU41lDHB0WohZR+lXeyEVmdzmDU/emwk/6cqQMvhJZ8ce/Jxflc857yBbiEz2ihLl09NnY6neoPhL2qUpckZwcaPsWH8VA8b5MmZpRCr8JXddakCMdcVSwpLdSKS3ji04Spvhd72vMrWaJcG7oUcjk18ntf+5x3d0PEXjKCfc/oHV1wYBmgLlnf1SfI55+LzYenJLJEQXYnmAp8JNOxKfISmmqF6r3QzzBcvAR5MJt6737ptKFn2M3Yg/A6UEjPGvb6Y1xeZAUhCw3NKvEvjRFT1/A+IGICBkDPN6EFFPgux1MfBbxFogqd04i4bSjELEAHkPFjpi8fQj3wiQ0M5Gai7Ne764+mQap2JrKAKyA157DVTD0jeSpPVSzgQcxkj/RB8WxD7w==
X-MS-TrafficTypeDiagnostic: MW2NAM10HT068:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sOpVESGP7pdQidkNUjKWSPDAUbGP+BqFqGD3ZE1zeSHkVH1lk7Rfldp3vvN62soC3J0wmXhlgo4oZP3YRb5PkzcaO/ASNbDbJDSJMg9ofcl+9etqa7ECA8OoO3TLkCKUUnu8HixLguTATW6mr+mtBL34PLPNgmvVb7Bp3//WTo7zA7euxQisqYo3I0HSgSVILUmlyEGvcTR2NC0W4B8PpEEvZmKbrMUHSA9eHeg83Ffzim0HRiXy6ZU9kVcvHOR+32cIe4mBp509nFPX4WCuOzPrzM87LmsGosAjlPRnqhkAZY2hkUVSNJLwczwrQ6Kh2WadqS7qpl0gt0zo0hWzNvYuKlm/BvXbNPQi+5hX2jIHTM0CeeL3Ie8ukFXAjGHxOlR6EvggkYfD+htteRAwRkf2G9Xb3l0qKavrbevMVXBVxQ6R71Tl+E+wwdTGpM8i
X-MS-Exchange-AntiSpam-MessageData: aetrlBAODYRbYA1CecBtCTirbNGdhY4GPDecyartYQRrB9ddcCToWj7lsHaSoJLdfWrUeSwsbUr/IgvXQb40sAeQcc082EN7x8BAlAOwA4WXyme9JqFcOUd3vt8ZBimEylyozONw8roGh8AuBaifFg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a720cdf8-cbb7-4cd2-b65f-08d94c45ded0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2021 12:48:42.7588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM10FT004.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM10HT068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_054849_855527_31C9C595 
X-CRM114-Status: GOOD (  12.94  )
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

Currently, no driver support for DDR memory controller (DMC) is present,
as a result, no driver is explicitly consuming the ddrphy clock. This means
that VPLL1 (parent of ddr clock) will be shutdown if we enable
and then disable any child clock of VPLL1 (e.g. SCLK_I2S0_8CH_TX).
If VPLL1 is disabled, the whole system will freeze, because the DDR
controller will lose its clock. So, it's necessary to prevent VPLL1 from
shutting down, by marking the ddrphy4x CLK_IS_CRITICAL.

This bug was discovered when I was porting rockchip_i2s_tdm driver to
mainline kernel from Rockchip 4.4 kernel. I guess that other Rockchip
SoCs without DMC driver may need the same patch. If this applies to
other devices, please let us know.

Signed-off-by: Yunhao Tian <t123yh@outlook.com>
---
 drivers/clk/rockchip/clk-rk3308.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3308.c b/drivers/clk/rockchip/clk-rk3308.c
index 2c3bd0c749f2..6be077166330 100644
--- a/drivers/clk/rockchip/clk-rk3308.c
+++ b/drivers/clk/rockchip/clk-rk3308.c
@@ -564,7 +564,7 @@ static struct rockchip_clk_branch rk3308_clk_branches[] __initdata = {
 	COMPOSITE(SCLK_DDRCLK, "clk_ddrphy4x_src", mux_dpll_vpll0_vpll1_p, CLK_IGNORE_UNUSED,
 			RK3308_CLKSEL_CON(1), 6, 2, MFLAGS, 0, 3, DFLAGS,
 			RK3308_CLKGATE_CON(0), 10, GFLAGS),
-	GATE(0, "clk_ddrphy4x", "clk_ddrphy4x_src", CLK_IGNORE_UNUSED,
+	GATE(0, "clk_ddrphy4x", "clk_ddrphy4x_src", CLK_IGNORE_UNUSED | CLK_IS_CRITICAL,
 			RK3308_CLKGATE_CON(0), 11, GFLAGS),
 	FACTOR_GATE(0, "clk_ddr_stdby_div4", "clk_ddrphy4x", CLK_IGNORE_UNUSED, 1, 4,
 			RK3308_CLKGATE_CON(0), 13, GFLAGS),
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
