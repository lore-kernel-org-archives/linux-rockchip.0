Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C7D1C48BC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 09:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0j2ef2vkjOfpDrAckWpAeQ7DJyuj9pvh/GIVDjxavYA=; b=jbOJmrA0DS+GSJ5s/tkC3DDQN+
	w2AIFwQB3s1K+mF+3ZMGHw+aW+PQzQ8lFVv68BGIYuRZwnLjB6wQNeYbLppEf+zLn3VHWjZS/GwMg
	HmL3LMCpp/DRRywx+fyVYape+spQjINAY9ogZd3aV9CVdErIioDm9cxyUwP2NEKyRCNPNAq+lVnR1
	S7o4k1F+qqRBHCQXvd3TJuYbvxgEp5c0CYVBVoS9f9BRm0Y7Y8rxWSejvbPuj30IU7yS2s9wyvGBN
	bWKX4rLlgUvE0Qycg9EksVrIKHdwtK5YruDCJ3hRzgInR76S4Ss+OjuVUgizoRevYZYNegrOnbSyT
	aES6MlZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMc2-0000000E2PH-3E79;
	Tue, 20 Feb 2024 09:40:30 +0000
Received: from mail-he1eur04on20700.outbound.protection.outlook.com ([2a01:111:f403:260f::700] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMbj-0000000E230-452h;
	Tue, 20 Feb 2024 09:40:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iA2sJtgfQI8aDB2GuP0zXn+/PRCUYWws5mDWImRrH1pvczRE2nxQkWVBI/AqAf7YgtmPLIDb35v1fBJokIW7OhKBNlldDK/kuVkEQI9rAXo8kXf2y//dLh9ghBIYlEngASiwPzcDGOJW1Iz18UruSpMGnvoR/BNsDqI6GbBbjNFbfISEz4K40I5VhAudqCd1KBGrrvOhZ783aJYBuwsI55IK8ZsjYFnc9G4Ok9YbjiWfPEif2+8M8dB6yhw0kPkygmfSu0cixSEVYWaH9TRousbIVuvy1ZL4vMRPO0ihONGDZeMg++olkkDzw9PexcXqGowVSe6GivaJ8CYmXWsrJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F696bODurRIsEO6Q36YUfWm9oNEtoOkg4rcuinT2Fz8=;
 b=Bp1HFslE1fs7iLntaLXryIQNGc2FFHeSTNhQk+pTFbvCr5Z6W+bbS9ZjIxd8YFo42ycJztp0k1zeRypHhZceab16QBdXUGQ6WIP4lZof8M78eoXl98/GVbDsiuGWBJQDDj72nfs0Wg2gKlqD4mzmAN5UDti4jeRwuI0Esr8RnZYdbJav88Rls2uJh4RUR/Mtnhss494v5yh8p4CTk/phVsFIwbBQGfW5X+GN8lWqrVlAsM85MV3fHr1ztoU0FqWDcF9/UhuH4bZxPLoHQYHOSe9sqbrh8lUQaPBvoRfgG18PkUe5hXoyRa6AmOpvYGd/y3XTzMy7NSBxuKeAP94gzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F696bODurRIsEO6Q36YUfWm9oNEtoOkg4rcuinT2Fz8=;
 b=Kdm6PZhc0zpSJPhkodLeTNxBByHOEjJKza/GqZqKcnx5YbscZZ0E9LOiIOV+e3TlDAU7fU6UOkrj3canXyPBaoPgVhh4zJnH1bczor6JKGJ92dZcNqJnErpuSwb74xx37BXQNl4th3x3/SqkmkoJeTxdyhmKcOyqgAW3MR14/ys=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB9PR08MB6763.eurprd08.prod.outlook.com (2603:10a6:10:2af::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 09:40:04 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4%6]) with mapi id 15.20.7270.043; Tue, 20 Feb 2024
 09:40:04 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 20 Feb 2024 10:39:14 +0100
Subject: [PATCH 04/14] media: dt-bindings: media: rockchip,px30-vip: allow
 for different variants
Message-Id: <20240220-v6-8-topic-rk3568-vicap-v1-4-2680a1fa640b@wolfvision.net>
References: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
In-Reply-To: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
To: Mehdi Djait <mehdi.djait.k@gmail.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708421995; l=2113;
 i=michael.riesch@wolfvision.net; s=20230803; h=from:subject:message-id;
 bh=jWA7+1kclrLwuXbXKGFkLLKFi93J2hK6Hr0O4t3lISw=;
 b=setF7uIuzfkyWPxSgTb17x1Ut1ppOeeQRvYd/dEzfgjiUVbWx7Ig2bJ7qkpw9rX7BTRzACZvY
 iag8MLtvClqCn8ezWW03BgUhErjT2l4srYICmbMUvvfqor7p9eaioYf
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=9ral3sulLe95bLcbaiNXTgUTRiBayRBEFZ5OVIEHp+0=
X-ClientProxiedBy: VI1PR04CA0128.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::26) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB9PR08MB6763:EE_
X-MS-Office365-Filtering-Correlation-Id: 567bdf4d-b39b-455f-eb06-08dc31f7ea78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IEXsw5tLrOCdShCRKN0OC9hNG9LxlRbVaNO8tbnU9pFFKNoUkgES4cL3OQAo8y1/t/HrmhSQ71WG1m+p8UGxZnXaazoCDbsfkfGt2T8X9J7izd4C0BwpG51/z8eesgHQpYmWD+byqTbs8C+HZT6cb03rTLv7lrfU5AqU3HZUslYQgzoPg0jdkbQiER9WZNKzH2WXdgwccSma+r6GpUwVdN+urb8gez3120khxk/K5Wfu7ibOrI2Ewq3sv+/r2LbosTjiKBLveUrA3ZisaXCq120t38qliXWydzNdgxYI3noBQk9pGD1sWHLv1IB6KEmFt4q9Gofr84jyqvYRPezAp6KnXvU5kA/viAYoQLS6sTtoVFtbuSywsRXg9WpY6D7AHRrIPpYmL998LJvvi6PJrgJv4FBFvdaoCheFa4MTglZXc2lYnTotvkJmI2AOf/cxOQlJ3knnqMr3IcB5cJjKS8oBmEQB+tuLQzgmpoLzQ97Xd8lhRapALSBuedmx1pTbf8ZSTFqlN3ZaQaXxOmVGNpWuozQy2jt2C8kNraOVVd8r3GegFa1fXx5c6ANdX8/EXUIziBRNq06iECfj8goBGLRyqJaqphz01nZ3+G2KFEl+O3XQReR3t4Wggu3lxuAIhotlCPDqygjsuPixk2BRKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(921011)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUkyZVNsM29JbmFFckdsT0tZWGc0OG5EZUNiWmhqd0ROcE42VkV0dlpvMmtF?=
 =?utf-8?B?WCthQWtvNzFEeVR4NENiMHRtOTZaSFRVSWZkd0U5MFRFNHFlQTVmSFR2U2hX?=
 =?utf-8?B?UkNIRHhBcnVFUW9scDhMeklmWk5FZExHN0lsbFYvbTc0Uno2dWNUdlFuTGh4?=
 =?utf-8?B?LzVtTzducC9jWHBYRm80NDR3dGxVT3dKTUxGZEFoSUZxSm1KNXc3b01vM204?=
 =?utf-8?B?V0o2SWI2TXdLMGZrb3dueE9WRkVlSTVhaHVVY1RjanFDVURUVThFMlZyRENE?=
 =?utf-8?B?WnM3U1FiWlg4cVdvbXNLZjBQWjlMelZuZkRCN3l0Y0FmNndiNGpNRlpzRS9J?=
 =?utf-8?B?NHRjZG5WSWc1K2pkb0xoblJmd3NwRlJROXAzeDQzUTlWbEpkVjBhTnRjRTRS?=
 =?utf-8?B?NDZ1MjQraExGV0VHWm04dldlSVdsYVZYc2tveEVqbU5WeDFuWStLWU5JZC9U?=
 =?utf-8?B?OVEyNzZDMkplV21GTXEzNndnZC9ORklKc1pSbllSZ2ZFcjdFTmYrZEJyZWNJ?=
 =?utf-8?B?ZnpSRmZxRVRvbGlEUW1oUjhTaWE3a2ZZaW1BeUVGZmJwaktIaVI4QllNVDVa?=
 =?utf-8?B?bVdCaTFzSjlqLzA3QUlLZFZOajNXYkgxemdPZG84Vk5Hb1NwN2VvSFIxV0FK?=
 =?utf-8?B?RHV4Q1BqelBpWW5XaG5rTC94Mnc5Mk9XUWc3c0hETVVJWlRyQ2NOMmlaMEpt?=
 =?utf-8?B?b3B4OU84T2pnWmVTUkprdXhHZVF3QXk2OVFvQWVEUnRyZ3hqOEpENjZTb3k4?=
 =?utf-8?B?dVdnWFduTDNkeHJ6dmxGZWt4Mk1mMWV1MSt2QVhmbEgrZ0dSQ2M5cW1kZ0hV?=
 =?utf-8?B?MnVPdGRIZ3VqaXgwZVh0Y3J5Z3dJMXAyK1JHN2QvWGFaSkNVd3ozSWtBOGZQ?=
 =?utf-8?B?bUFDdnZpZVAyaEU1VUI1YkVvcHRXQVVhejdzTVd6dUs0TVRqcHlaeDFhM294?=
 =?utf-8?B?azZRd3N0NW9QZi82NHhMejlxWE9qQkFPN3JjREFaZUc1TC92NFNJYVE5cENh?=
 =?utf-8?B?Znk1djVwNkVNWXFCQWRra21wdWZIUTcxSjYrWkRaSnQxNVBtTE51dUNwTkZ6?=
 =?utf-8?B?aGtRV3YxdFN3VzdnYmtpSUh6b1RnSjc1UUIvZ3FlSjB1WHZwUEIxOFBHcTBH?=
 =?utf-8?B?VnVObEVVdFdaYmtudEREWkhsTGNjSjg1QmVwbExYQnFBd1E4Qi9KclJXbGpq?=
 =?utf-8?B?cHpYQ0xPVVZ2MGp0bFZGV1ZjYldwRFR5Wm1mZmdjcUh3R2N0NDc1dm1vc2JO?=
 =?utf-8?B?aG9aZzd3SG5oa1M4REtaODVIUWgxT2pEWVpZQUxmQ1B0RE5SNm9oTWFsNEtT?=
 =?utf-8?B?dkNVd2dPbWQ1b1UwRi9FT1lZWUZJVXBYVzg1ZGY0RnZtZzJhdDZWKzh3ZmF6?=
 =?utf-8?B?S2MycVRTL1l2TXBzVzhBbzlWUTRIamNqcnhQTXZWYjMzTDVYejVpUEIrRW9u?=
 =?utf-8?B?VXQ3UHUrNUZUd2hsOXU1Qmg4Ylh6aGNYa0Rrdmp2K2o4TzRkU1VrRnJlNVZo?=
 =?utf-8?B?b0RiKzZ3TEtlV1ZGZkh0NGtYemQ4UG8rUk9HYnJTRGpPN05Ib3c3U1JNK1di?=
 =?utf-8?B?WVBiOFdFcVlaSGdBY3k2V3hCOVdPTkplcWt3akV4amZhUUFINitMUDBZeUov?=
 =?utf-8?B?YUduNmwwQmN5cnlYQUxaR1dyUkNNUVhjbW9wV0VXZHJKTmJ6WUZNQ1M5aTl1?=
 =?utf-8?B?dzVKWFVkWnF6V2ZSM1hySWQ2dVVDei9MM3liVEtBTnE1dzhoa0k2bEkvYkZ5?=
 =?utf-8?B?Ym9kbzAwSnE3R1ZsWkNDSURLc0wwaWJZWUNQMEdmOEtpWkNoSy9ZalphT0Na?=
 =?utf-8?B?YXo4OUR4VkR1SkJjOTgxRkN6d0RNL2JMSHFZQjZOZjhwWjBzMitpd1ZqckxN?=
 =?utf-8?B?QmRoQmthcStwUktTUXlMVk1aL21mZWFaUlN6MXZTTWNEVjMxbmhOTmNUQzhU?=
 =?utf-8?B?UjNSUUpiZlhhNFRPSHc2Y1BzV1VRcXg0bGtzMjI2SENxUUdxOVVYYm5Wdm81?=
 =?utf-8?B?THNRVjEyMEdHelArSUZTOWxHTUlrS3B2cytkaXFCL2RzOGRsQmM4ZjRWdjMx?=
 =?utf-8?B?UlRHTFJNYm9oRFl3QXNJZEV5ZzgxTjYyVndzWlI5WlB3RGJzTGJVMHFzRTRV?=
 =?utf-8?B?bnpsUFR3ckluS29vWVZ6aWdUZHdjWHAreHBvT0lyNVVSWksrRWJ2RVJaSU43?=
 =?utf-8?B?TUE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 567bdf4d-b39b-455f-eb06-08dc31f7ea78
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 09:40:04.1094
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vu5ZFPPsNjbahvXDAx943VHUxAe/by6S56F1nvdjV4ZRPy53M8ZPt7mfxMVvIE4H9qXut8OPIHnuRnN56J2CFrc+6ackZFliRIuKYYUVyGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6763
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_014012_110257_4A2C4661 
X-CRM114-Status: UNSURE (   8.46  )
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

Move the documentation of clocks and resets to a allOf: structure in order
to allow for different variants of the IP block.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../bindings/media/rockchip,px30-vip.yaml          | 58 ++++++++++++++--------
 1 file changed, 37 insertions(+), 21 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
index 675a1ea47210..7168f166798c 100644
--- a/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
@@ -24,32 +24,16 @@ properties:
   interrupts:
     maxItems: 1
 
-  clocks:
-    items:
-      - description: ACLK
-      - description: HCLK
-      - description: PCLK
-
-  clock-names:
-    items:
-      - const: aclk
-      - const: hclk
-      - const: pclk
+  clocks: true
+
+  clock-names: true
 
   iommus:
     maxItems: 1
 
-  resets:
-    items:
-      - description: AXI
-      - description: AHB
-      - description: PCLK IN
+  resets: true
 
-  reset-names:
-    items:
-      - const: axi
-      - const: ahb
-      - const: pclkin
+  reset-names: true
 
   power-domains:
     maxItems: 1
@@ -85,6 +69,38 @@ required:
   - clocks
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,px30-vip
+    then:
+      properties:
+        clocks:
+          items:
+            - description: ACLK
+            - description: HCLK
+            - description: PCLK
+
+        clock-names:
+          items:
+            - const: aclk
+            - const: hclk
+            - const: pclk
+
+        resets:
+          items:
+            - description: AXI
+            - description: AHB
+            - description: PCLK IN
+
+        reset-names:
+          items:
+            - const: axi
+            - const: ahb
+            - const: pclkin
+
 additionalProperties: false
 
 examples:

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
