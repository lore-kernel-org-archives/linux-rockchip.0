Return-Path: <SRS0=H/Xe=M2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D58C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 18:54:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5512760EB2
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 18:54:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5512760EB2
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wismU2k/zws8Ir8xy2R1zqrtmceYvZrubPFvLOzlAw8=; b=Of69QjYvXMLgVY
	OIGSY3ZGRxPx1Fub8Rp3wQzAMISC6DEj8x/yX5X0WRCA0I9PzpeFGFAHxaZ0aTMmzE6JYaQC/kKFz
	1CY9Y2iyn5hml9Smtbkr6zBO7DTp0ERTaqZ+k8hkmnUib+0K65elm7BytQc8ZmAhESsAN1HCjTeR/
	b/bxdm7c+tsNdHIbMwv4E6x3nhAoNXZWjnmHcB1SUKWAglFV4HEtBVBpMrjqEg1iai3v9z6WSYAb/
	iwiNDpbExMftfBI6jMHuox57qaUCRTochDO888seAZPTNaLS4X5lWwALMXj1Vq4figtcCPza/CDdX
	/rUP2NBSVeoo4hB9jooQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAzYc-003wSt-TL; Tue, 03 Aug 2021 18:54:30 +0000
Received: from mail-eopbgr60042.outbound.protection.outlook.com ([40.107.6.42]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAzYC-003wMM-LG; Tue, 03 Aug 2021 18:54:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LUznb2GslAHq7YDZ3crJ+470irs5bHMd+sm2InsW6OJRlRNowxYrReYJxSDy3oCpQcAQYK0GPNUo4b0j+aTyyMTgdweuCVIqG8I0zWjJTf77wqZJgbZ2Zqr7SDiMRqlnT66hdWHg5+bUnYIqgV/M3wFvokflrmO+MAXYO7WsIVp4ysSAhamIfe1mAoWF9hZubKuoLfmHzs1vLyfmdYGOcz7X4UsOmkcl7xrDLnG/fM8nfCAnK2TG0YTT7ofHitO5e90ewSM827WN89kCrvAse7YHta7RImUVZp9J52xK6oksNzl9Wj/hyJzFWUF5NshM1+fFv7wX0c7mr2VwU4YruA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hevXCqW40cDN5+aRItBr9nNIlCXtAOr0ePwumOdt6Zs=;
 b=HV/b5he/AWpWJk+UmnnGYPWFDVZnjwvEGOk8r87guyXsFyC53uyP+PAG3Q6SFr4qMxNQe4kpjrYqaQuTlMx89O/rvDVcwgzrUMEIA4Gc9zgweciDUNmzycTKNA0t+h+/4EiPdmIVBvoF7KtON9k1+aE4x4TtVS899e/08hUmJAPo+oxecqKo2k0+W+jE3PVGzPbrRoV6Tin2H9+sNBui65kP07tQhaUCdCYnhJdEN9AOvrwJIq4w4eLXVJ+w5puQxGGtb/pe6OhHao75k3bsRhzK/KnEIbOkylUm+JmY6105D6H/XuHCw0egbPshPNKOH9BgWV++Ktf/HPy4G1LgcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hevXCqW40cDN5+aRItBr9nNIlCXtAOr0ePwumOdt6Zs=;
 b=uuhYjauztEUlYxDJoYB4vHkthuiMvG0nqqPtQoXbKyztbxEmRDHHC0TVnOhEARYTiMIxucn8Zk3ck3kzWAmuNzW0nBRrNm0P/AF8ba3gpPSG7S5DVdDB7G8SwiRXj6pbhS/HSCmA3b8QTE2QiUPqMxv5WeXubeKX6wkl9MeumQA=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6921.eurprd08.prod.outlook.com (2603:10a6:10:2a5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.24; Tue, 3 Aug
 2021 18:54:01 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 18:54:01 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Simon Xue <xxm@rock-chips.com>
Subject: [PATCH 1/5] arm64: dts: rockchip: rk3568-evb1-v10: add regulators of
 rk809 pmic
Date: Tue,  3 Aug 2021 20:53:05 +0200
Message-Id: <20210803185309.10013-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210803185309.10013-1-michael.riesch@wolfvision.net>
References: <20210803185309.10013-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: PR3P192CA0019.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:56::24) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 PR3P192CA0019.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:56::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.29 via Frontend Transport; Tue, 3 Aug 2021 18:54:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e80e7d0c-7163-42ff-3ea5-08d956b00ee8
X-MS-TrafficTypeDiagnostic: DB9PR08MB6921:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB6921907EE8323E7DC8B1DB19F2F09@DB9PR08MB6921.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1169;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nqI8uRhfDnPiiSB2ZgGUHbZ7Eb7MFnY8Dd/2RBfDprhO9EuaRACNw4IoUqqnWD/YXUe2s598nSsrJG5bWTLEUW46nWHVC4zhbCq2D654EidJnY61nE09R/jl11TUq0sitEQEpwFYZmdTiVEVl5VU5AtWKHdPr6XC0kE241oBcCDtRHHJafgrIlKuJFpI/FBNfSeBsoAuIfmEvJrVn8VFwby0HjwCn/69Q0Skw5LhZAEndexGkk2/LDlxVPNTInljKua26qG+n++6sqUwrF08F1BxDStzwRZilJWVxyYG1SVc2o34L629sJKWYAFAy5TnGnYB6fMi0d/xW4Ka7z5G5RDFh3mD04fn2NDT/uXi6XOzdONIFZmRwzQ51iDYOuOsg6r7EfIn8xY4gxZ0mXWoKRzFkwKWZG/U/deCciYamnDl/ZSsLuyFR7HLhkVAcOvg+6ehvDC+FVT1tXsjsBpHAxkG/lYjoX7O861C9zRWAbp/dDTxcGl2iysPAhYKvftx3SV4Or3g8pS8J0NiyTBgqtvBMrE6rXdapZSxDLh9y+GmyGO2cTnEic3hxiYY4OirTY1vctuU/RD28bWYjb+tZo5oRP71YurCwhusbgr7+jjn/+D8dJEU50mv3Izioet/vWQgHFrNbl6IJbqZt/X7y2dBGPYPznWNDjKkfj45x+AJn559T/V+rmS8P6GUPDOmivX82esiMQzDw3IqI3GtvA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39830400003)(346002)(396003)(136003)(376002)(478600001)(52116002)(2616005)(956004)(54906003)(86362001)(66946007)(66556008)(66476007)(316002)(7416002)(2906002)(6512007)(44832011)(6506007)(8936002)(186003)(8676002)(36756003)(26005)(4326008)(83380400001)(1076003)(38100700002)(38350700002)(5660300002)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mYtPx+LUnnxP8vOFrDrIPX23qY3nydIgd+DO376OsRu0UiKHrRb37/tcDD5c?=
 =?us-ascii?Q?OET2W7pFjwwS7J5F1M7euXP5NYTr4szEoQ3/eEFAJbKFH7tdAWXHsUH+uDwS?=
 =?us-ascii?Q?ivsvjWG4tBXrod2QeRgRUKHw2fb05tPGBKkCI02W4Y1w5XyWVNdoA7KMZaXI?=
 =?us-ascii?Q?ul+jbFbVdE9dAyFJgusail42ozOwLSKxOTCPZ8WEi+xwz2cJP03U3Nq80jIx?=
 =?us-ascii?Q?E5ZSFhmIJX4gSuKpXI8bpyQJqBjP4Z4bQHECdrJN0nNOhxW9K+nhdPwW1DO7?=
 =?us-ascii?Q?65t6cSLErp2gVgV6K3Lcqb5HupdmMzgKZAnv9CRHG49mvtEiJ28wcLJMzV98?=
 =?us-ascii?Q?eJCsF0+90XdoiW+yqVNB3bOD+qxI95nr2wzjGuIocEMatXgvH7x0eBD0kXCx?=
 =?us-ascii?Q?dL680wUTVx+9WaxOQFyS6eye4nYeT16RRUC4igbl6EjiREeILbUTCk4wnrxj?=
 =?us-ascii?Q?TJY7RhtxJ7HzregtyoyqZMjnnq320mNUMvxDdIi3Ep9rmlwqe7g6aC+RiEkr?=
 =?us-ascii?Q?rKlLSgWKmWmTnHQRCCYiOqd7y5X3Ioa3lSdgy1c1Wg5/0G4J8pX2FCZRlQHG?=
 =?us-ascii?Q?ZxUhS8DBNhwD+iqZfdD7x7fNXmRC8qmmyjcpqW8W3JoucCRZkVZDjsS6D0Bh?=
 =?us-ascii?Q?Lz1R7JK8CRn9xQXGCVXd+QOFc9NocAYMOecgDjEvdfjJw/tQMOAVmuIM6U8L?=
 =?us-ascii?Q?2zV9fOt+08hn5cdnbGAyVOADzM7MC+nmDqKd4lCmqs+nUCHrRcac+rqCqdL0?=
 =?us-ascii?Q?tsmdM0LwNJNR8j1+upTFeBXeOvDPBmlBoGMjIyVuVkrEKkHx5sZJct5tfYDZ?=
 =?us-ascii?Q?hkqcCxWXmRr3ZNMhU6f+2TDyjJL4Ar92CltdHAjJ3EtfMHpu7rLuD4KPoCwi?=
 =?us-ascii?Q?VcF9Q+YPOwqMPVQW1XGZx6LLED5jhL+v+ew9bBsm6s1+o6DE/O/2P0tmHKIU?=
 =?us-ascii?Q?numaoSC3PGvGTH22bdMlKcvO++nfOTDvp4/U02mck4IXJesOqs+FBZDRT4Hd?=
 =?us-ascii?Q?pHHSW0/OmBSRZYr0MYo2BYb6m8a9FFBwbGDbUvR7aGwGnGftXRGnrcj2Eay9?=
 =?us-ascii?Q?Hgx5fXNPmrx41H6w/9jqWFi7EguM05tlym58wPchMWACPxlSNCxH+AAAXB5C?=
 =?us-ascii?Q?RodzcDHpKz6ca4xHXZk4iu4DJtnaa6s1PYrpKiTJ8BrMUOE0zAClfPCUiIDS?=
 =?us-ascii?Q?JIkufPvBFgudvp0uPZWWGzYGgCGFJ7B8331ZWYsebbFJtAkkW0xxmwxvvFSo?=
 =?us-ascii?Q?6PjuUgrlFU5onw2rNrvcjFXdH2vJXBoBNAE1Ymk1JcbAmA1JkByHefo3r9Wq?=
 =?us-ascii?Q?H+yCEBeH5fHo78cMzMsyOpwH?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e80e7d0c-7163-42ff-3ea5-08d956b00ee8
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2021 18:54:01.5059 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: omSBNr0i8MOrVzM/yUhXkPUmUJ38QhJgdpgqZD/fBLSTL5TxjhTnU1KR+4qyHWPH99OSKJBXCMix59XjzlZbTg8FtzYEJgS3UzDbNiWH+/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_115404_729172_1CBA12BA 
X-CRM114-Status: UNSURE (   9.20  )
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

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 206 ++++++++++++++++++
 1 file changed, 206 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 65e536c78d2e..f682144a1892 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -104,6 +104,203 @@
 	status = "okay";
 };
 
+&i2c0 {
+	status = "okay";
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_logic";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_gpu";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc_ddr";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_npu: DCDC_REG4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_npu";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_image: LDO_REG1 {
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda0v9_image";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda_0v9";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda0v9_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_acodec";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc3v3_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca1v8_image: LDO_REG9 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_image";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3: SWITCH_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_3v3";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: SWITCH_REG2 {
+				regulator-name = "vcc3v3_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
 &mdio0 {
 	rgmii_phy0: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -124,6 +321,15 @@
 	};
 };
 
+&pinctrl {
+	pmic {
+		pmic_int: pmic_int {
+			rockchip,pins =
+				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
