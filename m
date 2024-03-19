Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CE5FC54E5D
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Mar 2024 09:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIxwwdfQG+zh8yibO4XS8/dcxN218OjWvdZiZVorvL4=; b=iecf9L+6IeONbu
	aj42suEQPECqU/3PUdXdmb+a0EGS9dEq87PywgHnpgxLxVxflNcB5ySsqdSYmpec9ZlZqFyVx9I6U
	FeSG2CY68Dltru2eLd3COEsARDjLMHpFr5FXNtpsxQDZmBVDm0/zwx9nbDaR/SLvhRMreuhtmN/8t
	0jh6G3Adu7FRyTNzERLPQkuZcY8XKnYCVK3dGtFk4+kJ/N0HyutfkWjhBAvKhejk66Ulun3Z0vNpx
	kB/X7SwQoTsPbWlBCgMwhd79xocGWJMd8c8cotqHCel3hGFb7CYrqLmiQyvaY/7YF4LVGe5a/6+LW
	HIWy3OdKFFyaXAyJfuAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWCQ-0000000CCJZ-40ek;
	Tue, 19 Mar 2024 09:56:02 +0000
Received: from mail-be0deu01on20700.outbound.protection.outlook.com ([2a01:111:f403:2622::700] helo=DEU01-BE0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWCM-0000000CCGh-1SLC
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Mar 2024 09:56:01 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=jIMy+6s9jmIdB8DCcyzlVPDpcL3eC4GhwbktzznSrMF8ZAYb1mZNk6wgAVmwZJTcywu5X66H2is4KUibl26CrYNRXD7gBmM4MrBn643ivGxe0nHjqpOlRdnEzsdjEirvYd30xwsej8o+zk5Jbk9vo87wokPq+LGih69theoQox6ZSLRct+ylftIEH+Tq2U5npjiSz8KqOVSKGnOqznRlouZaGEirK5jcnX5LdRxoibv/YWuuCDdC8fpOlLo7gKtXSUrJ3SDsSeal/lKWTN1QyRNX+FSqPeE26ByoGfvQmlfDwqt04w6m56uoZMF/Cz940+ffsZhHYxNyjHySNKKCIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CfqgEgehjhAgi2aZAR1Ft3o57dbv5YtT3UR0ZPpnWVI=;
 b=KSLNQqsWLgTwa0i3cj/IyawrvktltECiZw/vBqbnyDAh9mWQQ7n7Lbl2Me1qI4hclEpN1L0Or2PfNlC5/GK4Jq1dMy4jdkkOk0WryOcPC2D/XyEjHyzZdD1hWYcFPHkZRnXWYkYOucpQ4qU8h8kR3NnRn2/E2wtjcypO96COIovbiUHfEO4/dXYyT2EcOiGitYUj9MabloABTiDWpr6dWuV/9/4oWZene21LkcXmhnt2UYPzY2hNo1VnpRXLzPzKTfB/PFj3hmQhKcunkjdoS6+D9HeMNsKwbxA2qYcCqwJzAdutJ0nqyM8sHqNza+cL28B1n6gBT/1avJJiR5E+Nw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 20.79.220.33) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=iesy.com;
 dmarc=none action=none header.from=iesy.com; dkim=fail (body hash did not
 verify) header.d=iesy20.onmicrosoft.com; arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CfqgEgehjhAgi2aZAR1Ft3o57dbv5YtT3UR0ZPpnWVI=;
 b=JnTWffE/1avKVn8WVjtW7Yy9JuCnKFIye/ne25KLWQ/XluuQbKenI3ij/dfx677jXkAh5X1dUgbm20Bub7rFLHr+5u9r6s5fgblbyZ6PI3yrhITjMQMJP2AGpGkhsQ0gRPuFKpcRewdkzROHkuzLBbQYXcPpA8Qi0r7ojK/fdug=
Received: from FR5P281CA0030.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:f1::6) by
 BEZP281MB3122.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:75::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.30; Tue, 19 Mar 2024 09:55:54 +0000
Received: from FR3PEPF00000485.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f1:cafe::3f) by FR5P281CA0030.outlook.office365.com
 (2603:10a6:d10:f1::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11 via Frontend
 Transport; Tue, 19 Mar 2024 09:55:52 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 20.79.220.33)
 smtp.mailfrom=iesy.com; dkim=fail (body hash did not verify)
 header.d=iesy20.onmicrosoft.com;dmarc=none action=none header.from=iesy.com;
Received-SPF: Fail (protection.outlook.com: domain of iesy.com does not
 designate 20.79.220.33 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.79.220.33; helo=de1-emailsignatures-cloud.codetwo.com;
Received: from de1-emailsignatures-cloud.codetwo.com (20.79.220.33) by
 FR3PEPF00000485.mail.protection.outlook.com (10.167.240.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Tue, 19 Mar 2024 09:55:51 +0000
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (104.47.7.168) by de1-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 19 Mar 2024 09:55:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKWgQIqSXziA/bD9tgFTPt77KIyLfLS9YYnCPjq8YQAF0SblDrI3cfzhQSW4McNV/Sgm4lJwrNRVS5O60KavmySSWccaLGOqxUaU6n42RpsK5ZQ7qOM2GYDEmZOmFRwcTrGG7Zv+VeCpjfZ4b727Cfjub6Bwu5NomSR6I+K55INUA0oK9yl0m65+6OTeGa+G1W2NTdm+fl2SRtjKFXplLO3++YoIS4eVx038blYHUOKn/9oRqcRYJ0nI8pVNYH3CnSPbbQ/wF1C2+bG1BsnxPTi1xs7KgspUPX6HHuLmyOy1YjYrpWCNvIA6/FT3+NVI4mh1dlQDT7RfFulBYDlAog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k9Q7flSpE0KZCAn04UCUZRESTfWID1OR/7DzyuaLbiE=;
 b=TD28vVTBXph7tgCxSiSntv7o8F9xLtK9zyRw5P//8Ub5K6robmDSCFW3rAgClOi6hZ1y4L+aVXVZ5rq+EFbZ2XCoj/ImTFjYwQWc525kWu6idPXBso2Pfprq5Wlcq6x/EuGQF3H4x3cEXTHZ7tg8jmWSJBxC723+1GAKs3oTXQoqoxzCIdvG19ZSBQOi9GAc+cYj+WQBkzUSkorbpsIIFS7eNtpo1w9qAX/Qgq+vS6eMH7sugqc7mchfot2A1B8Xcec0FDSHgDbaWWGHSrYVj8shntEWw+mGE+KUW7mrO+qHYWjKOZocZOKgjwzdvoJX8DONtf18HBReX3cQD2JNog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iesy.com; dmarc=pass action=none header.from=iesy.com;
 dkim=pass header.d=iesy.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k9Q7flSpE0KZCAn04UCUZRESTfWID1OR/7DzyuaLbiE=;
 b=MsYHnZHTpR4xAF+qz2z4gHDjNATRZ3Q0wxX2Gows9kEXCrFvqrvEaMZu9DAqmxyHq+nr09/dya45PWUiUX4AzCL61mr9PcTaFLQGtAIgHNRAbZPtvLZZia6Rquv3TptIRWkFwn4mwRb6fJmFi+5REBJMHK0b/Hq0ny6GCR5Lt8k=
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:39::12)
 by FR6P281MB3734.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:bc::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.27; Tue, 19 Mar
 2024 09:55:45 +0000
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851]) by FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851%3]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 09:55:44 +0000
From: Dominik Poggel <pog@iesy.com>
To: robh+dt@kernel.org
CC: Dominik Poggel <pog@iesy.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sre@kernel.org>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Tianling Shen <cnsztl@gmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Andy Yan <andyshrk@163.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: vendor-prefixes: add iesy
Date: Tue, 19 Mar 2024 10:54:01 +0100
Message-ID: <20240319095411.4112296-3-pog@iesy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20240319095411.4112296-1-pog@iesy.com>
References: <20240319095411.4112296-1-pog@iesy.com>
X-ClientProxiedBy: AM0PR04CA0078.eurprd04.prod.outlook.com
 (2603:10a6:208:be::19) To FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:39::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-TrafficTypeDiagnostic: FR2P281MB2393:EE_|FR6P281MB3734:EE_|FR3PEPF00000485:EE_|BEZP281MB3122:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 7pncgGuGjhnHK7zz7QTlnLyAdh/5MZQydmCPcrZlbV+OTJQ02w9VeA9zFpNajEIzIeZFeBBRtw0vYXI6nnn/ho8ieWVF1e3hXBt63eAOrrPT4NdDDISGNq4eKupebE3asS9JMNG4zq1QegMOSL/WWEzLryS2SjZ+iXn0ZFfblF+E1ocOUTLiquN18x1vjaAxJFWwg18siqDh0ScriFV8JzV0Bqb55QVd4sT6eyLInFXhS4QVzUeGZdVKqvMClbbGT5AkAX//WeSLkO3NvXSyF21TYOeGK3qTdsk2XMaxaopx41mi5bZMxUZurlH/rgPo0VuOIRR9hfIvm7KWCKfUjrxFUbaTTYH1av0xDV3ztGmATpIhpLK+H8Kew3jd9zXty7CX6bOfyanzDUa536/FfhCO5014w5SwbTHwgpR8ILeA7qwaQ4iWTlkvQSW/ZgR1vPdlood8db6CTbiFnQzGh/zg9/V1BkJy3Mjes7bWP/NHWLrPz76QYd+VESRbKLifHK1IHzB2krt3PK9wKur+ThnpMCKsHD2hJ4vh00iD8e24MBd48SY/t0AYNZ/xt8K8vxdRzAF+VOSTiiPgjyI+uKc91IvbQxEPVH4UatfkKQ8oun5o/27LUUsLz+vdbkNOePtvaL5DhleiicYPAjVxLqWjrPtV9vRW3wqqVVVNTCQufBD2+mVo5gprs4vTV7xni3I2R5ef92xdSq23cY+ssUQnk5SOwpuHU1K310Tj0GM=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(52116005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR6P281MB3734
X-CodeTwo-MessageID: 7dc634b2-957a-4ff5-9997-f764da4e56fe.20240319095545@de1-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: FR3PEPF00000485.DEUP281.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 60d16c27-6957-4736-81d0-08dc47fac331
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z8y0N4DtRp8OYmjFWRpCR4SL1fnmts2a994jV07UaRVcf+cPsfCv2QF1GCigkxLZyAJQ80rdC7lAkE6XabRQ4+s1o3FojusiQgtvKrUlW9Veggr8ZHHvkBIyQoeuDpZM97ZPhx6bfrE9cdpw6f6EoC7dNJO/s8cNc80fhn9a8dpNOP55iKW/NDPKvoNIRd8VBdEDU3y5tVZbXJSJlbxt/4B0sx2yz83ZTWviKTSNEOL/DTNlVJXJJIuR6+vMJxn41varycLqnA3jybFQksECfg+dqIw59c5tWkvNTcLR/+A2BHbH0ja4l4B/Elbyl99WmPxv1Ll2cfePn2X0kDBWwMBQrmSMGl0fZZlbkXAjMsbLtrs8SR1T5aDmwTPJAh0ijdTqw3kOI5QUJxmZuWSiEAlu70ZZcrohR9DVYMevY+LsC+kBYGsLhCokXorSZWJAmHVljMCQE7uLNkeSsAUgW2DDCa8RKTPFn5KWUFU+8PUkZQXL9I3/WyZ+TMuuc343HKu18nkrbSXD/cDbRVvvF3dqM2Yrg8c+yO6Ugo1GQkkZK5ZIx01uaViRT3i1oZOC7wpHRP1F02osb2nRwZOl0GrYPeBa5oj9yq6xh/7hZYvO/zC9mAOM+H6vVA6xVMnzWkg6E+uLJrDa8989AJijyBNuQh3PFdCJzqV7Kjm+P5sQ/I2bmMQEtxPz6KG6NAGEyqLu7Uqz9YsRNw/Q/Ajp2nvOyuGueiqI3jLC/B82H9UUbXx/sNJy7a9XOlrxkXNB
X-Forefront-Antispam-Report: CIP:20.79.220.33;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:de1-emailsignatures-cloud.codetwo.com;PTR:de1-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230031)(376005)(1800799015)(82310400014)(36860700004);DIR:OUT;SFP:1102;
X-OriginatorOrg: iesy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 09:55:51.9778
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 60d16c27-6957-4736-81d0-08dc47fac331
X-MS-Exchange-CrossTenant-Id: ace663fd-5672-464f-8169-8d373312f6bc
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ace663fd-5672-464f-8169-8d373312f6bc;Ip=[20.79.220.33];Helo=[de1-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: FR3PEPF00000485.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEZP281MB3122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_025558_519931_721CC46C 
X-CRM114-Status: UNSURE (   6.46  )
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

Add iesy GmbH

Signed-off-by: Dominik Poggel <pog@iesy.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 04505cb0b640..ffb2abb5edc2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -656,6 +656,8 @@ patternProperties:
     description: International Business Machines (IBM)
   "^icplus,.*":
     description: IC Plus Corp.
+  "^iesy,.*":
+    description: iesy GmbH
   "^idt,.*":
     description: Integrated Device Technologies, Inc.
   "^iei,.*":
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
