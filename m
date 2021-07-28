Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B471EC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 16:18:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FD1A60F0F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 16:18:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7FD1A60F0F
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=89SLrXa2yGA6WeZkWkzewVVaUpNS7pXtCCEgN21qz2I=; b=Qxr8vmbe3tRqMu
	kkPtpxzcqw/r6wTMVv0aKfxLIoTJrpsae9u/8YUaEOGCynUTq3cvhnlE/trqBGQAOE0TBtgS5Dozi
	NWWuCA3+dUOUOST6DIW5kh2yaiikBNl/+bKX1uHSchYA0yz9wvZtfZk/RZN/CcuK6qBl+yd/Tp/+f
	NUh9qChCeRl4hTxymdLCrHSqJvT/ACcfggtfZdx1e50WIBwXMpPYd2Mx5wAREVDiIw6ZTH8By/OH9
	TopojrFEvXHabrPM9jGYRioSWtXLA7q9dGQsEN/hlini+9Wyejg53D2rLMFMdlqh+FemqTDcrvY6/
	6LJy34rYHmmUSzrmQN+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8mGV-001ZMy-BO; Wed, 28 Jul 2021 16:18:39 +0000
Received: from mail-eopbgr40074.outbound.protection.outlook.com ([40.107.4.74]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8m9C-001VsQ-Au; Wed, 28 Jul 2021 16:11:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QCobs78WxTI9lRagfe/95GYp7LtdadkyYWNbV25zvvaBhJE1mzVF8tddqbm917Fy/TNt/nvDZPwSidbQ/ZIxxpW2YMi7F8QFv3ZNvTGRqB4KTxNjExncjwZ49J0t6BmBLTYoCqayBtgHGw2G+ZeFSLHReGlMGM3j5rD8GREHOJXeF4AqJq8k1n2gJQTNwzmhRDC4S37BF1vaJ3PvNMKGiPsQqkieU522hwHKX82BO5dsR1lr3hWS8SufqJex7vlV04fwotXjtCTvYtoGtX2k/a/XKgh3HIyWnGH8C0v0plitS6OmVRkKrDMQ+phX5yzTU1Lf98bKYDTBZ3zxVTNg2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r7vpeveFsvko040aRTqY92mRDEUqHenzQobsA01HLkc=;
 b=Ctswai0KsmlRmaI6Hz/DkF1WU+nKg0pv7zIDzAYbkt2uzFRiezKiBCSdVXqaiw/DhDjQpoQ3+8ptJmBV8hXBSiwqovmzcuD5zCKmqv3A9ROK4BacD6hdv8/tM9VtqI3Ee81/nrvzWi85c1EG1rwYtzqNRsO7DVN2QpP0MTxj+coo6QHR029pqih8XNOPtu83owZLs5PhmrdrIqJS7JIvH75n8v/WC57A+TrsXC3srhhivmc8RFHp8rtaUUFiYQpVtD4iZh3eY1U2fgtpJ6OrYJqf0HXo1gbk/we4wl8pMg1JQF2O7XQY/QzYzL5OEqjvpHTK2MRC8XS9Aq2wxnlWYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r7vpeveFsvko040aRTqY92mRDEUqHenzQobsA01HLkc=;
 b=bdmMTDcbkRIpJTjs+8y1m/oRDDFtwhQDZvd9si7lRcojuoLMrpvLxOm5irglFaqmVqGHTiJang4evf4wvU1WckNZdD4c4AAnpbrfaQsovq3HwH0YUpr8aMpV8BBAxfdyqfceQkBdbEWl4ZTq86btZpkOvzXoUPwkUuU3Be14ANI=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB4268.eurprd08.prod.outlook.com (2603:10a6:10:c3::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Wed, 28 Jul
 2021 16:11:01 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4373.019; Wed, 28 Jul 2021
 16:11:00 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Simon Xue <xxm@rock-chips.com>
Subject: [PATCH 0/2] add ethernet support to rk3568 dts
Date: Wed, 28 Jul 2021 18:10:18 +0200
Message-Id: <20210728161020.3905-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: AM6PR0502CA0068.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::45) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 AM6PR0502CA0068.eurprd05.prod.outlook.com (2603:10a6:20b:56::45) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Wed, 28 Jul 2021 16:11:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f9629992-950f-4841-7347-08d951e24aad
X-MS-TrafficTypeDiagnostic: DBBPR08MB4268:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB42680A04405EF78D86D97B0DF2EA9@DBBPR08MB4268.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uZKMBtFkdVvbjXvkn8mxJF2hHf8j5emEKnvSTEvljHDCqO/lTWKhv6EkwzmlwPcjjqRGzF57pTzZdQ3jtsJPPPRM9MZs+lDnGVRJbK3SIAm5eUoAY2ZDQbyhkhFhi4QaVYYmVxu/7KtSNucsLSZqwQw/8KhuszCa1E6hm1ws1eRwTBhPY6IRQeM7kDxKaeBqW4kUXEdmomXoXwS4+tFTvBtavnRHaeWz7go5CCWi/UzkECpW2uRCQlzampvXYgKYnXinmEwMfAEpNb6+zg7DYhVkeI29yAWln8GVSVRaW21EDLqPfpWE0rcxlFE0vP1XoqTZSLNTBLTfIS0S4nR04eCTFzf+5m9zgDTwtlKXhvrqizqP3Sz5OQZUJULUWB09O9j/0QVh6hyEqiG8f4J0pC8QvPI2nO4rg84SYEXwm0+jBYMU5IGn9W0K4eOWsxfzOQ/304uuuwWuqANRQLmYgf2THlwtPBdYrT7novFcAwcbjpz9CVvvce7iDmtbPuwf4okbctzV8aDPQOl+UIx+LS6fFUmLNG/lEAetyVhQYoxnQc7dMA/CUsbpRNWmVEVZkn+gjzCf3+7i7sdDXSTf8HUbdi6fMFCPEUnFAGchgzQfBaudFZjhjyC/XCqXmLImAv62fCQpJLlU7qMiW4EJEqRmkesMcH2NNOUFgH6CgRXAaFvSqLAd9CcN5TiCSgLZAjSCFQu0Cn6sDfq4AdJBEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39840400004)(366004)(346002)(136003)(396003)(186003)(956004)(316002)(6486002)(4744005)(38100700002)(2616005)(66946007)(66476007)(478600001)(38350700002)(2906002)(52116002)(26005)(6512007)(6666004)(86362001)(5660300002)(54906003)(44832011)(66556008)(6506007)(8676002)(8936002)(1076003)(36756003)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BfBNQ1Ky1gX1PkYXK9nc+dudR/nQa0QBAS+EIQbQjTdHyQXypIru6vxKskEj?=
 =?us-ascii?Q?zCjptxzxdwxVYoQ7vOBogeoCgjU1imP3H5bbIYDx7shHCG8IfPd8GeVeaOI4?=
 =?us-ascii?Q?WGDY9FNRlSwzdpucKPkxtH4eAcrfAdzM1ToJtDtZD1s2TjPCrNJPebg9eoBv?=
 =?us-ascii?Q?raxcvVFiA79RuqHWKV0KCeCXSWEW+BlX9SQW3g97LDPj4k6ogtK2ab6MlcQr?=
 =?us-ascii?Q?ulYQLskzYA6M1KR4A+OqcMlmHbPAPHBjhn2XBn1tUi64j5FXZUYHbQqKxALh?=
 =?us-ascii?Q?eWJrb7j3TivGYc1tmLY64xmmjLhDi78QhZMrefGa7sqHlDFbvfI6UzszmpSI?=
 =?us-ascii?Q?FiRgU0MLhOZduUePiNd6Lx+sANhGiYFvan0KI7G/ZZUCEozzEPvh6CIF9O8d?=
 =?us-ascii?Q?GltGpKa21MwmKPN8+6Vo14yqPLHzbRZWGCNTMdkY+oV03RJf/M8I1kAXJJzp?=
 =?us-ascii?Q?B0G57KGhlf2Ac7N2W8gKwKqiAbZR08WWFIa5fW93+yItIdFSb5m7hQLkceFB?=
 =?us-ascii?Q?/UiaHKdkZfIh6s29crbhXTL+KTcKXgHgt16A/o+Ny2q2hQ3XsRWxAILK05bH?=
 =?us-ascii?Q?xyu42VaDB+yskl9yxfvjoz01eF1wROY4bzCbyqSapADBqf0GD8K96cOEn2xx?=
 =?us-ascii?Q?e11Glrsi3eo+8rVU+3odbDQQzZgwqf/WFLVTjyrEbrYHE7d4iVlNJJUX5QQU?=
 =?us-ascii?Q?+Zq6Rxcl+yurVbmkF44HCi10FH9Su4XXdbiZhO45tcHGcjVaoPkaCDmZ6fgg?=
 =?us-ascii?Q?KiWYXDVjnUAAP7/CJtEf6kdS8znSHRSHGQ3mB0GrKzEr9pVrP1CaaquWc2CH?=
 =?us-ascii?Q?hcCJTMjweLOn4hlejsroBeCOrvgEaY7N0N6ktTMfh3iU8kN4GEIc7j6z+kEJ?=
 =?us-ascii?Q?Ppve4bqqZp7eCGNwReHPcJPT4SY9NLOcO0GTOnwYls4GH58fVfQCnpj4CcOE?=
 =?us-ascii?Q?jW9yM3ZmLLbBIocRJ6PhF3T1Qnnbl9u7Wb8uYY8FwS9f9WSUS1CkVi5Q/S1K?=
 =?us-ascii?Q?19OxcFApbvFG2QvMDR4HLzcpfg7jMe+ESzcfFJDWnlcIdWPJd8aF+6jd/4Ox?=
 =?us-ascii?Q?JumAA4l23uYbyLMQslu70Ol2ptmfOjo+YMx5aQ+jrWt9KnwJcrWuDfEJxdAS?=
 =?us-ascii?Q?SpIigjPpdiR30uibqSzqFsH9GzwP4XTh+AQFdOQiU9kUfToHP5ySdLTfmL1u?=
 =?us-ascii?Q?Gnr0FWdpvM+PM92ujB0/pXtGRBkE8SiXXBp42Vq6/jlNQlLEeFKyL+bbe2po?=
 =?us-ascii?Q?ba1suPs5KWT+GR5FgN7dW+sLtEnNIgDtZtqkyqrdCn5HMKH6itQOx90aiZam?=
 =?us-ascii?Q?Hyf95ADxh5DMXosLdzjB21ZE?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: f9629992-950f-4841-7347-08d951e24aad
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 16:11:00.9174 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZwQL5GXcwzhYFyh2Vl2MBjDYHv0R2u0XDYjaI4b7ldr0bv8ZsiJ8cd10Neq9vMMzaf6FFudPo/LIwvBFjvKI7Hd0gpcV3i2wofXUKfv1byg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4268
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_091106_545532_D1C020C7 
X-CRM114-Status: UNSURE (   8.54  )
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
phy nodes in the RK3568 EVB1 are introduced in this series.
The second patch bases on the dts in barebox by Sascha Hauer.

Best regards,
Michael

Michael Riesch (2):
  arm64: dts: rockchip: add gmac0 node to rk3568
  arm64: dts: rockchip: rk3568-evb1-v10: add ethernet support

 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 69 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 51 ++++++++++++++
 2 files changed, 120 insertions(+)

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
