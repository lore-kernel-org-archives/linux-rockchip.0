Return-Path: <SRS0=H/Xe=M2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F01B7C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 18:54:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8CF260725
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 18:54:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B8CF260725
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEf58NNbo2cM9TdJ+/4m0mQwu+/OAKRQtcYGfj/1LCw=; b=AKRQh60Z9crGV6
	tnWXIi65XdijS4vTj2V8IURJ5lRH10mShWQnBf9gRM/T5g/AbicW5H+YlZAm2u7RA4bQtl0cH4KVI
	engD6d/CFSZMt9X+NxY9XXVDqdLTikuxRpunJaD/9WrRfheZBN5XtOMZEohI043B6SDZftnP7w//S
	6/+OFLjuuupK6kVMOwQPefTB/c1UQsUlCXyJTopRwKnGiSG0RBF4nlk5j+3HiKaMhIkUwP4KLmkBK
	MqMmtU/5KnpzRnUA2bWiTy4j0BMjr3AIu8eGtZK5HZ1bRfOQiAfnes0pPoSA8aMmwJDIzT5O/cUqz
	J8gCKtNAEUWAkS8eERMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAzYp-003wWR-Pe; Tue, 03 Aug 2021 18:54:43 +0000
Received: from mail-eopbgr60042.outbound.protection.outlook.com ([40.107.6.42]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAzYE-003wMM-GK; Tue, 03 Aug 2021 18:54:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LeCfCEZRwViz7a2CKbGtKAGWJTH7bn5QgOpKLoU+Yqynfg5Ez+cH8N0IrF0/+2bOr+jHZP9P9R7TkWoI+x6gG8VRUJAoxk8X1kPVN88iKiU2ubtVA9C5ixl1ZS8vLlUS+ItXvO/Cu6oTD8u117ju3YxC6gGakWlRuaFVgz4XRTykn+PbdfKMMtnu8A10y2b/fEWcCFPx9K0nP3/r6d5FnAS0vElBckv0qCjCPq4xNX8hcqE57kujQW0TjZClgQ0TxcuQ5whkwBS9TnefjxuoA7qoLH7xwd9NW/4lIf6I75CbjLIaArnxTVlgyDzr39IXx0dnAgMBAzM5FUhlUcIspQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XSkebd3Xkp5Jl7mrUTv3qSaDylzQ2KWcG4nvmx1SU7c=;
 b=KHgKvzKszYlXoWG10ThE1jDiFaP1wxvYsBXNPPsjwvLbTCZnaGqqwy70ldRk4LRHEdJRyFwkGC0qtja+/FmYeK+1YYKuTz9P1AneuMJCuW26i80A7wGc/DbdZuLz2/HMjVVQF9lCmlOe53WeUrYZzDpH3Ehr/xgcqB7OygXP5y0SCX7PUOshs3P4GWABvr95euaGCZsbPAP1zb0xlmgvR3MR+2sp17Vx4eJ1QII+lE6dIwrw32N/xC8W1KW6dLpJ+3fgYUD5rdoSPzkin1z2rfqRAzvSwmX5vnoFEymrcZF1zY6++vv2wgjHaue+q/LVj/wQeHTA7TWBKfZu7sodgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XSkebd3Xkp5Jl7mrUTv3qSaDylzQ2KWcG4nvmx1SU7c=;
 b=DnE+q7u3iENobBiRUulwB2T9LMFhzKevWcGN31riHWA8uySTJVA8URBATNWfwg8H2/lYKdTaLjrwu2rKIVLreE57t8MCq2mfLv1ty82//elyozNTbo1iCz1j5sfEiKXYm7GQ3Xl3mbzNImtVvxKex144NiNej1ctrcT2Pms2bB0=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6921.eurprd08.prod.outlook.com (2603:10a6:10:2a5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.24; Tue, 3 Aug
 2021 18:54:05 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 18:54:05 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Simon Xue <xxm@rock-chips.com>
Subject: [PATCH 2/5] arm64: dts: rockchip: enable io domains for rk356x
Date: Tue,  3 Aug 2021 20:53:06 +0200
Message-Id: <20210803185309.10013-3-michael.riesch@wolfvision.net>
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
 15.20.4352.29 via Frontend Transport; Tue, 3 Aug 2021 18:54:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fad7eeb4-7bb4-49a4-9aab-08d956b0114d
X-MS-TrafficTypeDiagnostic: DB9PR08MB6921:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB6921DD4834419F8089642233F2F09@DB9PR08MB6921.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lBlsAy4mQUsVlqakL2KLWWPVyH+Lbj9d+ZctXBEHT07mmh/siuJd1anZp7T+cnG51JI5m4Z3ISaCmvse5V1r5sXnaG84m3jkAim/kUrnIV8fuBvj10Iy5CnV9cQTo05UU3Oc9qXpvsmSL6YDDAu/3W3FylHySebyRDxx42BdCVmTkTIbWNrno4ViuZEj1aCHk+61Zc69DU9JI9NRn2R+kN00UtV60usiQ9UrMh1e4tWKDho+xq053zccTICvAm5/bupuy/g3QJQ9o336GgeLwjo5u3ZJJiRGlTHUjvzsGffKWZ6POglZCBmIb7MmkltzS009uikk2/X6AnjYT4OGcym0Bc+1BHjmdkJxa4PeHZrlVhNqKs+2l7DDWqkBp907sZBIjkAOXpNgbsB2ogLVW4uq30JC+Pd189lm/+fkiKQH/OlpAgcpxF/PpF02qU4FjI8a/499Km//qn0t4T68xvXzBnBzNMeqVQx90f5HJVGbzyects7SqP+okupFCv3B86cnu5t6Cew8Sr+nyGtfKHCLjHGwvbtm+vORd7BIANGUOOpXaniasBde0edjUKz15iinUubQLR4hintV2u+LWaCrFbs0nMDCe3bY34JjPRYHto0d9lSpOw2qnYfR0/syrYYwy6qO7y2A+7A9+HVrqklHE7kvbi+ixnlx0Ik2LMXUHBkKbez5mE4TcLqi51X0sBUdVTytRPDcBWM8sBuQdg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39830400003)(346002)(396003)(136003)(376002)(478600001)(52116002)(2616005)(956004)(54906003)(86362001)(66946007)(66556008)(66476007)(316002)(7416002)(2906002)(6512007)(44832011)(6506007)(4744005)(8936002)(186003)(8676002)(36756003)(26005)(4326008)(83380400001)(1076003)(38100700002)(38350700002)(5660300002)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CWoTRPS0qno36xKJ1ylUP1pwqmoY6i0Cazpa75j/M+qBmvvbvMNODad9n6Zz?=
 =?us-ascii?Q?GhWAw1du5umuBx6BGf+ENGlH0m1iLj1HwDForBttgFTKgrkpO9D7lSz+4gdY?=
 =?us-ascii?Q?ttcocprrinfBdsQRgnVGS6J/vUwG1AEhAxg3L0FlAINt0GZeJHEo8hpqtVmF?=
 =?us-ascii?Q?yO+5cb+eccpB86S2WScmr+SXRWX3GyfTR+SR73kbNqry/wJFNuBI1stT9FiX?=
 =?us-ascii?Q?pQdJ+BGDF9u8FmZhl024ikbsGt5LE0kgszIgdst5Ig1nMlUfZ/pw5wEgaZqZ?=
 =?us-ascii?Q?KemPdEdKGIHFGcFiFvYbIqTX7eDgsdlDiNPGuwelU0vSeEUiA3Tb0svU0Ju3?=
 =?us-ascii?Q?j9oapPxh9ccRmjOoqaAzO8E6RBmad+cBuSYQoG1+15knN3UpQLGxUrQuiGHa?=
 =?us-ascii?Q?IqLEga1xDuXboX/+yO9wsLi3udOHt3baWzbUeHjtPU42KEJ0KZXBXClgQXgz?=
 =?us-ascii?Q?C6MBE6aYCYrQpfO8/RsEvqKDeCqCz5S9YfzF3fM3ego+BcHJ3ZAvnscp1kVM?=
 =?us-ascii?Q?V8uQ4/Coj1UCLK+zJYAMr5YFM1AIvXDHyyNo+AKb1LsY8Px2Ih3ZrDk2z/p9?=
 =?us-ascii?Q?KHDGad9b0YSpfOy7Vwc7SMmwN3moMURY4VIaoJQBt5LaKSKHrj3TDi64buI1?=
 =?us-ascii?Q?zXqefdwDZivZAT+UmyHlXwfdtVPZEtwhgsuVp+nc3Y8x+eSpnxddgk3OcPHD?=
 =?us-ascii?Q?ZGGewZ62d0kGTiaLISE/mg5oB2RmDj0oI15Aq4pS56+qdsZIupvvgP9WKMio?=
 =?us-ascii?Q?z5UuOevRFzJEHkwWaG0dLGFx/XS0nGWfwEBpWRNPKIQQT1Hnd/+9t171IxSR?=
 =?us-ascii?Q?I2v0WvSn+XsNYAhAXf3j99dr7r8oauFNkXV1ug6IW98IZzwe8uoeq8qSdZkR?=
 =?us-ascii?Q?UP3TIPI7ualV2/Ti52LX83GkMojY8ZOa4VA5TE/N1nxnIXdaGLIPhmjqI2JE?=
 =?us-ascii?Q?etKuml1bVxRhynj+f7WVSPX+ocsxcYDvoxHWkXbUj66qRID9IMWQ2bSYcROE?=
 =?us-ascii?Q?uf1/hzpGMMoxraha4ggYk67vcoLsa98Uw4S6F/4PumYR7gjY8Vrff/e2xfRg?=
 =?us-ascii?Q?Z85v4Dy1SblM68I147JMroOo6gUK70KBLMAcQzVo1S0gPIXyzHDAhHRCnVk/?=
 =?us-ascii?Q?Ps//kjd+QDz7xPfBi+xjA+eh+B6OGkrDhTlS7RoBO3F/DQ0YyBFaZrVQ83Os?=
 =?us-ascii?Q?qck4W//L/lDXIMXPx8U5u4yNORUry4JvVlgUzULID+nU8W0WbaJALYvovGzY?=
 =?us-ascii?Q?JrkUyY2B8nVqSF0pM79Jqv3nPQUXEUbxOipmoViVjvb8VmAe8TE7Xs/XIo+H?=
 =?us-ascii?Q?aCAcEp/Xsib7sDu3+Mw4cGKC?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: fad7eeb4-7bb4-49a4-9aab-08d956b0114d
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2021 18:54:05.5646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oadb9whJ6c/JNsRnj4jwa4qTtCqBukRFi/u8B9IeR1VGq/zxP5Sg4ZZBUru8Qy5uvxsqdE0eITMpMi8fEI3E4CB0ZSeHQ0mI4JekBmkoE+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_115406_583195_0201F1EE 
X-CRM114-Status: UNSURE (   8.77  )
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
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 3e90a8832bb9..834863940eba 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -203,6 +203,11 @@
 	pmugrf: syscon@fdc20000 {
 		compatible = "rockchip,rk3568-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xfdc20000 0x0 0x10000>;
+
+		pmu_io_domains: io-domains {
+			compatible = "rockchip,rk3568-pmu-io-voltage-domain";
+			status = "disabled";
+		};
 	};
 
 	grf: syscon@fdc60000 {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
