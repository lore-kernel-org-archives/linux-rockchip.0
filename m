Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E746C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 21:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLWE7RBiBJZKLk4cSTz2oET1FH8oSG7HL7zoGxeDnKc=; b=fie4GPZSuj5e8O
	Pr36v+dl8c6xZpyY3jExfIsNxMJpAJBTWNfCkZ3JJCtYXr1jdRb9Syghb11/X1k02MuPzZM9lcLQm
	Z2Zc5wsTpz2tdKNoKYhK7tfWNf7K/3A7eDiyxfEPb3d38JKY+DoYncuHlMWWF2qQTeyhSWZekSiNw
	uja/3QXoBI5C5eFYnnXJivdyYJWSyrHS4mkTEIdVTm2+3Hgo9uDSD1y6fkuD1MJtOEIMx4/dV8fFw
	VyYNnFVIo2ujadYv8LDJnECDBqrxB+Ir6+XBo4cLBdav6xCbG7Af19jU5mtDLx6WuHm5Am7D5c9gj
	NH46NJecGmzkc81vVI1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHuwp-001kV2-3h; Wed, 09 Feb 2022 21:56:23 +0000
Received: from mail-ve1eur02on0600.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::600]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHuwZ-001kMp-Us; Wed, 09 Feb 2022 21:56:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lNkItvvwtei+k30ntSUo3FEZ0d5Qip83ll32gP35DYSD5HbdXnB2ZqHv2q98ix+6p//JwSTQXbv+n2BnoLiLz93TMjgCXXxTJnOlTFQXns3YM2z075txIekqN8iTQASbLUzW3jiY61bMT+WVPzB3ZD5nSPrd6Mf0OLypnefD0yRprQoEiMHqmDq/O9IcxsZLKQHDdBQKnL5YlbNjy7H6JktSRL05wJJX9mUJ9rtG8D/aLi+RBypVUHedudwqeZVX5s4l59vjgsi4ePyXKNMO1ptX3d+helIX4KuWJLfoAGNl7ZsYQufulGoQ7yh0g8vzUUbNogV/XwWBTXRU35185w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yLbgpsASm0DdWNyCqP9doSRhaeJEjX2WjAOp3VoZBmM=;
 b=M/k/yD7DGoFBPTdPFIwuKlyrhrU8b8YvZFRuOwwnJi0Yro0K69Kyh0cyB7/GW5tDxAuGeHCOWOASpOl04H1j9Ec9RExcGzdOQQsTmlZ/AZMYX23WVEOtYFi4YnIx4g1LS7Eo4owlyRaztBUO2d5qsur6zUvPY55HmLJhF5ujYXHl7ILX8+LRGIGN+72H3x3EVgDDp5v2J7vjHWA5aWqL6wrx1T988H/AgpN22BcO6W8nlgMJEe9UJ+hrtH8fo3YVLCFaM1CBVVNLMX/ybNlJQsDtxqNRMS2eXV9wJqKzyYHQ0ux71Awkt7GWJ5pSS383kFapAfabqrbvhvs+6xvJqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yLbgpsASm0DdWNyCqP9doSRhaeJEjX2WjAOp3VoZBmM=;
 b=FoJ/nBgrt+PC+cdpKNLoKz8htuHVKaVEJTM2FJK++NWH7OjoWFgMWsC9lxaaiEFXUoiqRuOWotHM2+yEqAu6C+Dn7wR5fBZc8YVpIUn0Ox82VpoTPQXwIFE4qlhdHifZ+P7U/xxi8QukeY+Zsjqh5JE4hD/XBYtIKqd7j3IP9wQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com (2603:10a6:3:e1::23)
 by VI1PR08MB4575.eurprd08.prod.outlook.com (2603:10a6:803:eb::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17; Wed, 9 Feb
 2022 21:56:04 +0000
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::e14f:197:5001:4c56]) by HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::e14f:197:5001:4c56%3]) with mapi id 15.20.4951.019; Wed, 9 Feb 2022
 21:56:04 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Alex Bee <knaerzche@gmail.com>, Liang Chen <cl@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v6 1/5] dt-bindings: gpu: mali-bifrost: describe clocks for
 the rk356x gpu
Date: Wed,  9 Feb 2022 22:55:45 +0100
Message-Id: <20220209215549.94524-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209215549.94524-1-michael.riesch@wolfvision.net>
References: <20220209215549.94524-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0197.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::8) To HE1PR0802MB2426.eurprd08.prod.outlook.com
 (2603:10a6:3:e1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d407f3a2-f53a-4f44-1eab-08d9ec16f7e8
X-MS-TrafficTypeDiagnostic: VI1PR08MB4575:EE_
X-Microsoft-Antispam-PRVS: <VI1PR08MB4575DC5FE8E33C739B23262EF22E9@VI1PR08MB4575.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5bmUesViaLms2bDWroGduFry/PsD/b9GWJgffCzKfBqVk9rmnJUs6VOtORWR/2uSKdlZZ/cllkobm62Q21HXb28I3mXWhyyFn4DrGN5X3aGHUWzbwVRdEwA/Ghm8UdWwKrsXxZsNxYaRpsHHc0Vnqrjure07UlWWdVcmCJxtlSuskdz7ho8cnTLli+Z26BncUSfma2Cw1jHC/PSYUl6Z8dUksISqvVORAQ9JqXWvc66Z7I5LiMnTXXUZxoreutk5ZDKl4Fa6mwQ+PGg2d5A7dG69xttFSmu0tp6dhgZAkzYqenmQa5tunUHyp8qv+mh4zvSN4XgTWTdwzH/E4LBPJCSiGvyyoMl/a0uHgmiebr6dPAsERTvPRUc/yINciqHWLEdRddi/LKKNUFWLezQcTz3O0/GHelOF4fdbyc4TXIxaShU58huJtaAcVXHDQJsK5/SnZYcdCAu9RUshNdtuIvGJuR6dRJAWHKVmX/2Mm8KWnA/KrPycSMktEND3VnqTb7MJt3qeoUUAUZ+P4+MgzkJU+v8wbq/XXa0vTfH3vZdktbvCHqclR8tbEPmymQaXSFZIWCp1hXUKuSddjuZm5HOCx2ox0VJkGdHGWH+Kj87z9DfyS7wzZVQ5+s0jGic4DPzpoHlBnty4vKMocwPSIQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0802MB2426.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(6512007)(38100700002)(2906002)(4326008)(508600001)(316002)(54906003)(52116002)(36756003)(6666004)(6506007)(6486002)(2616005)(44832011)(1076003)(86362001)(7416002)(66946007)(66556008)(186003)(8676002)(66476007)(8936002)(5660300002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wGg90dOQBK5e7FWrPnNl0ukd+/SBrdomWsYJ+ix3xg6NqYn06r96gpppVbCD?=
 =?us-ascii?Q?dOmFmnIaj+b25IwR1gEz+A+w30iu1O6Mgo8ciwx5RIkulycq57frxAuL9/Yt?=
 =?us-ascii?Q?OJZcgvOzTIBOYjBbZPITMXBpH8+BVDCMYeAwLqsO0sm/9YoGqfO12pUQ0rUP?=
 =?us-ascii?Q?yVTqtBviciooPhQywwCiXsbcx1aaQ4DY5Qv18VK4vsWt4sVu3cr9TDFindRm?=
 =?us-ascii?Q?xsQMv+oAU7f1yPipwVq/0UYvYiLxqZ0clwTb0SXTqRCPwF4jP4qfucgNmO7u?=
 =?us-ascii?Q?jP5dV33P6fRComoy/gr1jTrcf/TkkScvtkXKpLrDYvw4/S//FbxZN+v9J6Ur?=
 =?us-ascii?Q?BO4FeI8yvAex0YyFTaJ/cfP8riOhwnxTjtmFaDzeUcC2z+QQoD+ALYxeEmoq?=
 =?us-ascii?Q?1jJlcYKftwjGBI6j+khdj/YbC99LecFGPKjPzCesjgGZ+yqZ9/cBMlKevMf5?=
 =?us-ascii?Q?koDibOFcM3JqoB8Tj4TT4rLsB4UGCUGJw0dfx/cSIdNoXvXlNEq1d14FPzb3?=
 =?us-ascii?Q?RSBZjQLvCWxv16VxDDLzyg521k9oWFmWnT9Jk5ZGR5xJ4W9qNhI/sNXtgfhX?=
 =?us-ascii?Q?Fr4JiFjZqBheh07Lz1NxqdDkvZ0ZdeaxGIeAfWEQtOCobKvYtSN9njrXsUOf?=
 =?us-ascii?Q?AcJORl7ibxMGxAhwirnTra56pM9la67wmQaBVp8B3I4Vq1UMEHpeDWqCG7Pa?=
 =?us-ascii?Q?oeS3S/V5VziMXIB8MmqyHisvYOYgqQFkYSUT2AZa6IIb6D4ABLrmx1CdrH68?=
 =?us-ascii?Q?dQZ+Gy/WuxKnPrqlgZJKnxmBjdZ5SfOJZJzkQ+c1Ll8VdsOAmRJYWUDtguTu?=
 =?us-ascii?Q?etVCXOJJCfswe8lsKMKfnMvWqTTMGYj1N0PbMRWyCh1FgnLJRTZRhvw5CCd1?=
 =?us-ascii?Q?APp/Bg9OTbYh4dHTsTn7g7sdgYr9+B6BQ4xGfd06raaI3zDS6NeiI9D5i+vI?=
 =?us-ascii?Q?+snFxhNnI51iY2uquDoXj30ZbOdOggIXjtesSzAn4R6ld+LQBh46T6hf1vE9?=
 =?us-ascii?Q?7QZZlWAXYhX5WjfeNu3taDK+SCNd5tG3HWaC/zjz0VZCVwB23KrA4IXMvd0+?=
 =?us-ascii?Q?I0NTTuKwiVax3aNnMVeT76ffxrZU8UAJKwoG7eevPy387dVaIRG6F8HxXE6E?=
 =?us-ascii?Q?wrpR3ugeCUVoA2McsEOk/QC0Ran9oiBfWq9QICOwvjqQMshXcZzIsqcNQ+zd?=
 =?us-ascii?Q?8fvsDEBgDvATuprwtsbiHIJuO8eIKf6P8Rsd9RlRM2FdEV1gIrytUI9l6msH?=
 =?us-ascii?Q?IR4C4gIY08rKclL+QU2z/zRWfv4eZbCH0BRpj7X3UtBuXxpntUhAqGZELw7P?=
 =?us-ascii?Q?/6eba1X11mJ7fgcDfZKYJYk3Lms9H1oTzxU30kO66MbB4xHlgx12ErFLmKOG?=
 =?us-ascii?Q?Qgal/5kXZOAQjWWuP8LWFsexZw/bd5HqKE+AKuxuDdh/++Hzg6RA7VY11j3u?=
 =?us-ascii?Q?cFbkqSEIrQKSJC5DULPTjSk36iHeroOXu4qkg58KhiADOZ5PWbVZwCK7AxH4?=
 =?us-ascii?Q?fBW8oFtwdi4c10RCzyUJJc6X93CTR6EVf05bd1FMxrn2tjptPpeiCmZANNiW?=
 =?us-ascii?Q?onEs30gkn1e9cHZSunv/KsmB5sycrUnmZTWHE8cS65ICFHsAxcbkKqi+LKvi?=
 =?us-ascii?Q?d4vnIf02JEMyJASt7emKy6+iSuwHtF7bsY9eo1p4WNxfswFsyHyoVRFkxLTa?=
 =?us-ascii?Q?ItvdZoPBSGdxT8khlvUY/v+07Bn1jNZCwkYcVCiqHNygh6qTG/uFC6n/aCof?=
 =?us-ascii?Q?c+kJewA23+qKY7HmjfIxF5F+lkXuInc=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d407f3a2-f53a-4f44-1eab-08d9ec16f7e8
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0802MB2426.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2022 21:56:04.4287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: stQ/ariryfiFcXHKPRMprDzk9VAFL6a6cH/YmlKsGRiFaQ+NxvJsNJrBa4cEGh5Bi+lIwMjj9EImOzbUagNp4T5XIqIRFYFG8bO5lG5g390=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4575
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_135608_077044_387FCBEF 
X-CRM114-Status: UNSURE (   9.96  )
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

From: Alex Bee <knaerzche@gmail.com>

The Bifrost GPU in Rockchip RK356x SoCs has a core and a bus clock.
Reflect this in the SoC specific part of the binding.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
[move the changes to the SoC section]
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../devicetree/bindings/gpu/arm,mali-bifrost.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 63a08f3f321d..4d6bfae0653c 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -159,6 +159,21 @@ allOf:
         power-domains:
           maxItems: 1
         sram-supply: false
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-mali
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          items:
+            - const: gpu
+            - const: bus
+      required:
+        - clock-names
 
 examples:
   - |
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
