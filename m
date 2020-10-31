Return-Path: <SRS0=kO9o=EG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23654C388F9
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2020 23:04:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84E6B2076D
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2020 23:04:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jNfTjfbk";
	dkim=temperror (0-bit key) header.d=outlook.com header.i=@outlook.com header.b="bslZnpa1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 84E6B2076D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=outlook.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yZn+OoiRXTifYEyiO4Rel7ikQ3eVUyo5UgqmLPs+4BY=; b=jNfTjfbkiC4Vv5UeGjr3BeAvLc
	TUsrLgeSp13uPjEhO8xBBtz+VqQTmq6QfM4YiqXkIJ1FS6DNRjXtx3O6Ctw9Gj1x5mJEpYMvkyDBe
	Kv/CZomLA+nEtUe7lgSjmnMkXmHXBsw1zmO7N2AFKwM+9xL8f+SRxpVOVUCU7kJRGYVU8z1xcW6NC
	OmEzGSBIncmeru5AMUlZHSleREjzaqEVhooqWESRLVozPzeeGITE/CnoNl1D8Ll/KSy3Xk06s+3Px
	eRoIBIDHaWKjB4eCeJqQYQcU7hSANXH+GW5TnyItGocCwQu/Z+TctUgU2N6FyXc5WrObVpOuHD/eY
	p/PYoh9w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYzv2-00028k-EJ; Sat, 31 Oct 2020 23:04:20 +0000
Received: from mail-oln040092254096.outbound.protection.outlook.com
 ([40.92.254.96] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYzuz-00028B-Pr
 for linux-rockchip@lists.infradead.org; Sat, 31 Oct 2020 23:04:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WnNaUtwfDo7gd2dHngO5Df++pzZJanq/TGvNaJij+jzHTOW5mrcXfAfr2rDPorqlKuddFaRRN51r0YnlnFJZsBlQ7+F3u3aUC25LiYsjJZCcbZ1F3HocpC99hyVz9hWHC4VMI+Bb+TXOIy/v2+4+ferDYUjfnSE6YtUshS2wWS3h5VoURVu4mOrPXdNfNbIg6Fg5IUC6PvdkWCc0W8hOKyNiOCZem60r2j+WGSCzAKM8FclXZv4YjlhDUdSfY6PPRfw4l4+aLsCtcZd8QWIGsRaZXd0+A7+WtYGnhRKOsOY8UTVbB+vKiXkLnSjGz1zkcOzmhQNocuoNJwbSIPqhkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XP88d/GLudsHZmJPxIWONq9QAm8k353Z7snLOLtn1tA=;
 b=jQ84eKAot7F/laVzpGW12ejRxLk9ogCChCd2Tjuq5ovUSEMT4Nf7HL9nl44s2GuQ4OuK+nodU2RGXBwfT3EZ4RDroAa4Zkb4iZkldHLIPhpMIWxHtljX7p+tn+yT0rKeBMAOlWUUuGeeg50o+guzq75xWYg3MwoAtO5zuOXbXRdU5/ucwWctUqQ7Gh+Y1RuoUx0z19Yc16NcBjBAFl7LkcklJz4P/UDLLh8y3ovDUP6sSBKT194J9j8jjFMuoAsMl0SEfuzroqzdRThcCEJ/VeHQV63Q/AlGj7YLZOslzpn5+xGCCBGpjKuCI7bQqykyItqYe66FQ5Tax7tM7YYCIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XP88d/GLudsHZmJPxIWONq9QAm8k353Z7snLOLtn1tA=;
 b=bslZnpa1eVztJHVhou7Zu9tG5nL9M05ZhrtEBgPJcR5ELhcrDvqcg30aWR3PJciay4sy+4DHXWSJ7MGQVMCPwQjIpaczsUn4pTuNtKs0Z1CGJihZL/XJfWY5caBOt83j1fw0mA3UNjSZNcL4RUefDzGKEt8Sm6VldLdoEfbRiGiVmsDKw4qG5pn5yOIcf6wA/9iStEIp496fmq3EVK1kuJ71wPSMwXiMaEwDRMQ4UBiRr+vJVQFLTvxmay8ITADWjiHzpZOPcgDqnOqYXHsqNWvwYIfqnECnyGVdUZR8dXdS/jvefXn9canLK96a853RQcgvznbR9OyqIyYnwqU8uA==
Received: from SG2APC01FT063.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::50) by
 SG2APC01HT206.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::413)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3520.15; Sat, 31 Oct
 2020 23:04:08 +0000
Received: from SLXP216MB0191.KORP216.PROD.OUTLOOK.COM (10.152.250.56) by
 SG2APC01FT063.mail.protection.outlook.com (10.152.251.186) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3520.15 via Frontend Transport; Sat, 31 Oct 2020 23:04:08 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:C300BBD03001FFC9EB582BD550D194DB074FC71E52EC547C9911A3C6F304E5E8;
 UpperCasedChecksum:F54123E586FF932164B913ADF74F200CF7EF57FE2379A15743F2D9572F3C492D;
 SizeAsReceived:7317; Count:45
Received: from SLXP216MB0191.KORP216.PROD.OUTLOOK.COM
 ([fe80::6c:ccfc:11a6:257e]) by SLXP216MB0191.KORP216.PROD.OUTLOOK.COM
 ([fe80::6c:ccfc:11a6:257e%8]) with mapi id 15.20.3499.029; Sat, 31 Oct 2020
 23:04:08 +0000
From: cheat.sc.linux@outlook.com
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Fix wrong rk808's VDDIO on
 rk3399-firefly
Date: Sun,  1 Nov 2020 08:03:41 +0900
Message-ID: <SLXP216MB0191533C7D45A2B873226DA09B120@SLXP216MB0191.KORP216.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.29.2
X-TMN: [fDAB28CtNUC3pc6r1hT812Ak1F/qo0Av]
X-ClientProxiedBy: OS0PR01CA0076.jpnprd01.prod.outlook.com
 (2603:1096:604:99::23) To SLXP216MB0191.KORP216.PROD.OUTLOOK.COM
 (2603:1096:100:9::19)
X-Microsoft-Original-Message-ID: <20201031230340.277985-1-cheat.sc.linux@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (114.164.12.202) by
 OS0PR01CA0076.jpnprd01.prod.outlook.com (2603:1096:604:99::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18 via Frontend Transport; Sat, 31 Oct 2020 23:04:07 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 45
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 88761627-0f40-4078-eb0b-08d87df1454a
X-MS-Exchange-SLBlob-MailProps: NS9Gj58uCj37rNM4T32ZSlXCO4gWtorzaLMydmvhvuOaCdxeRra/tc7PNfOtnWW26AMHW6cNL/1HcyA7anzXeMtDwyxNIPvpTytzgyUjsxf/MnkryDykyWftztB+Rbnk5NE88FOao3Yk0klX0lJYJfb/ihsWmcd0g3N2CCX5bgHqG01STavqnAzSsZXuMOa0NXMwclRLFmO11R+FeESpysc9RPaEqAmGtqSC7Amh++FL+6eKWNy4sj9yz+307DI02LKIrj9wGAmTrmQ7fBUJzpCxTKt8XvJVqUX6tQO3ORB+z9EyR6Fxi8ci2+4giDYX2OhFDlcBGg06ITiioYWBr6hXLVnVaOirV3gy2jYV0kmEa1+WlUwr2XJUe8UzouEq98iAt3SKaHAO+jmb2Gp52HSpro+HjA/k3Xeuqxjz/4p7MHyXWFnhRQuJlv5HZS1YRZvdPiE1dCOPt3Oy2kqmUE3LOor9S7BPkwAMb2b++ajbw5yXmAMkSNC8fkQZ8Ou4+k/mYadwk7CV8UsUwCW5+EvrfFexXqokn1Nf+ZM17djqtADfIFV7VatoOGYwLKEnbq/XdGaPjNsqxBWibNv1Vg5W5EecurhD5u+GXKEo8Y+Elc6omdjcOuSxW1egAiNMB0gfgZ8woR1qlrsyCiU+1l0N2CzyJPLrpE61bK9tFg2MfMCu1fc/+QDe5MT5zFp5/dXXaWxwilP0HNP5FvonoA==
X-MS-TrafficTypeDiagnostic: SG2APC01HT206:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jdyeaJD7nvqGHnn6uVQFCWQR9xySQKAeYXYB1lXLEIE2vBvT4llEl9P2bSfRr3rDx3sfnkc9ttiqVZx9sHdji48sSM51JEzWbdD4QMqFwpwXJS08k2iSsq9NxirPLt4Bp+OGI0iIJMeE+lXw5MVBDVpIV6LLn9zwXr4OoiVAip3ufHgEGWlG0ZapKRypP5dcDkYDF5/ruOVmX8iO7dtxkA==
X-MS-Exchange-AntiSpam-MessageData: l2ZJllfDbood/ItVXU8t5LcL+OFwYRWGuLIlIX9hSZNR4fdxrG7zYqpDldA3TsGVuLEKKDCItDIz67cUqY791BpCjufaJIC2Zmmndb+PSs1QLGbIerAYwGha5RmN8Jpargj/rF+WjEfvGIsJO8Re5g==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88761627-0f40-4078-eb0b-08d87df1454a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2020 23:04:08.0001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT063.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT206
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201031_190417_968355_0C8EEDE5 
X-CRM114-Status: GOOD (  12.01  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Shohei Maruyama <cheat.sc.linux@outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Shohei Maruyama <cheat.sc.linux@outlook.com>

According to the schematic, rk808's VDDIO is vcc_3v0, not vcc1v8_pmu. This
commit fix the wrong VDDIO.

Signed-off-by: Shohei Maruyama <cheat.sc.linux@outlook.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 6db18808b9c5..e1f19d40165f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -292,7 +292,7 @@ rk808: pmic@1b {
 		vcc10-supply = <&vcc_sys>;
 		vcc11-supply = <&vcc_sys>;
 		vcc12-supply = <&vcc3v3_sys>;
-		vddio-supply = <&vcc1v8_pmu>;
+		vddio-supply = <&vcc_3v0>;
 
 		regulators {
 			vdd_center: DCDC_REG1 {
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
