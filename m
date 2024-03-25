Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CFC4C54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6d0C3mI2eEwUT0IL13igsvELBvRMNwxc2wxAkkllfqc=; b=4i8BzbPZh4NMownZES5hhBOjBc
	sOYFyMkkRbM4PEVTvBT0JCvcgH9sHAfjUhn/fxq5uOsxbBmY8y9gzXTZQjMTOUwTBfU4NJUYBxuaH
	NhTyMpwfcEwNHaZ+QLSJ2xoGREf+L2fgRpEL0xDR3/qaJhwsk41Uqxe8iR1UPn1JYI9G7vFGgBbbL
	v47f+yZ2qnKalC6QzOFY4+/89QfTqALPimQCsCr7bBSDVMwovskOqjg/pUWmyFRWieZdkqmrWe0wv
	qoLjnGtpCGVA9plzgpxMWho5rcRG2L/lS8D63c4MgmdPIgBbRk1qjU49BCuOvCk1FrTDWILtjG1NY
	QwNdcHdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolEK-00000000Cal-0p5A;
	Mon, 25 Mar 2024 14:23:16 +0000
Received: from mail-am6eur05on20700.outbound.protection.outlook.com ([2a01:111:f403:2612::700] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolE9-00000000CVO-2OYA;
	Mon, 25 Mar 2024 14:23:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AEKE++UU6ywuaEEEiGH8ukQmNXXi6xbIlgVrqHRkNefmqdheB1M94+VwadFlM8kJp9LgcrPn1Xn6o7R2dbZsZsszGr+0imhBMOaCaikkQ+tJAscDSyI9fzFZR8AdKzrN5+1sUK/GK4aUpH4+zBwxcliMdmzRxVq47hV2lM1/TBBPqUZkaPoNEg5LJLcuRVS2gFpZNqBOk9GIBJ+UkHRE4rUwHJ0GBtIMJ5Iew2XS551ZUdW2ljZ/LUq0Mz89c2yfWF53Ip543B2W7Ud8UgUVN+l2YBv8qTF8yj47x5j2f20SzWRnDS/UqJdRz7wrKf9lH90L+5Wz2ANQUuCA1DpvFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sxXt+HPzbHV2Gum5QmHcHXGFnyfpYKgoI9s6j+W18Ss=;
 b=hb5ezJ4vPvG4IvFEc4UZG1OmetdKS6ukFpPXycwovyiPaZMRAMAZ3/daPIjvWRBGj7fthybrBgpMyCPmHeSAUnAykYPKzdac41+LEsQ0ZzfTscOZDPOh+Bq5KHtR85f5Zx8yppfIEn5KZQT0Mj4U5829km1oRhThhymy38zQZH+t+CiGA5uKiNneiuH96HhL9QJpN8p1ebDUZfEBsaSaxLnDl/fNUe6RO9/d8XXyl+fwaRD7tpwUZs78uBQippTSJMDEHjm7+ERuxCA4czgiGKNawEeL43lDuNU5XHHb/5avcnOcqMrbza8K9MvnUXxrcnRGtP4EbTt0PFdOJRdMyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sxXt+HPzbHV2Gum5QmHcHXGFnyfpYKgoI9s6j+W18Ss=;
 b=uGqNVL5uddtHjpRAuX0xmsR5MoUPWUuqgu9bHb/9OXqFkN3b7pbhIYFYKBhn0p+0sWEi6N7CvRikajodB/IPsWBinNbVAxzsH/Ym/tNc3wLsSMLuy7cUGltBtBTkX/CwbYZiheEZ7urxGxYtdKPVggQCntKsrJaOkE/FuuEy3+k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV1PR08MB8258.eurprd08.prod.outlook.com (2603:10a6:150:89::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 25 Mar
 2024 14:22:56 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.026; Mon, 25 Mar 2024
 14:22:56 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 25 Mar 2024 15:22:31 +0100
Subject: [PATCH 1/4] dt-bindings: add wolfvision vendor prefix
Message-Id: <20240325-feature-wolfvision-pf5-v1-1-5725445f792a@wolfvision.net>
References: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
In-Reply-To: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1711376575; l=793;
 i=michael.riesch@wolfvision.net; s=20240305; h=from:subject:message-id;
 bh=SepSy7Blv6ScrGx2QEp/MylYNVmm9pfGzAWhqWUH8XY=;
 b=TeHJrJVbq6aJZi5rmjcJO9bAA7q7L69SDAuiF1o/T9nAZXrq3kpmAQzEdU1maH7nE/YJ24vno
 /N6KvGMu8+JACFSGsS4O16xhY2tqSLmTeEYlvYNfr3A4VbXwcL+MZwx
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=vXktx+l75RJD3KAojVKL7503UCD9nnGRcgujrB9SRp4=
X-ClientProxiedBy: VI1PR06CA0127.eurprd06.prod.outlook.com
 (2603:10a6:803:a0::20) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV1PR08MB8258:EE_
X-MS-Office365-Filtering-Correlation-Id: 7991e7bd-3de2-4e88-5aba-08dc4cd710b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VVcEwlRzLuyDgtFpVMFSMGUspyMjqX05HtsNWVl4a15CL4JHLBIEvZIuDu+I3L1khMsjbdDemyouYiAoA/v+zCBtLHM6ng88d6oeH6XrKIi3dUFKafqhyFfghZSaqQ1t4Ho0DXZR27maJK8r+lSAAmSq+zBUBn0CVyzuNsZ+rJ611TUK+AXSWUHkA/MLj8nAXkwyBX4N0cMDRGfygEvxqmJ62GyLn//dxvG3SJmvDYs4ms+PcY6Ri4DlHBztgk8av/mHVwu7MLKTOj0n1Ooc+7oZl4XHeBwAWY0Smr2cLJ4Lcti70ob+78vuP/PpI2fSrd3VRzjkKqbr6dl2xwU2VchjtHnHn9g0nf0shgAZ7rHMMXpjaREp5ZNAL20KzlC1y6r2Pvn/9EodpY1a4A8LiwK7T8Bj6y5d1DVlkeZuo8IMUUSlhaAaWPTSBUj0RsT7vt4SqHeBHMUcW0capBRDjD/ixemAm6xP8obBp7yoFUhELAky+z3x3bHOwv+w/3Qw6Y0WAMdQF+FNW6uDEAc+Ix9YY57OV2jDKWs3TPtKRZCWjOeyO0Nbfalpmn7ypIzHZQV/bYwbyGncg/IyxHBzJwbzKrHow3lflB/eNqfM3Z6e3H4kzUg+uWQGaS6G6GU3hx7Uv80e4jGiUo9Rj2uIhGa2ybxg0X5HZgfdK+0A7LI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0tLZWNzR2EyelR1L29NaTVsejAxa0c3RGk1STFrVkZWMTYySHFmWHVJTmh0?=
 =?utf-8?B?R0xTdkk3RTl4cUE3RE80VEZLUzlkSXNnd0EvSHdZeEo1RGt5aU1mUzdTNFZG?=
 =?utf-8?B?cm5BVStNU1c5S0EzbXc4MnNyVElQYkUrbjVGMDhuNmc0YmhRVUFaVExNV29l?=
 =?utf-8?B?VnpKSGFVWjFFZkQydVE1M0lwQ2Y5QWwwcXRjSGFXL0RBSzBFeXoyOUR6c1RD?=
 =?utf-8?B?SldOL0VMNWdMZDh0akNNb09tQXB2Vlcza2dPdURidkJ6VFBua09TZUtDem9p?=
 =?utf-8?B?RjlKZE84eW5KUFZmV0ZvYzhlMDVEOS9BWGt6R3Zqci9ZY1YwWCtYSzlkNHRy?=
 =?utf-8?B?K1NIK0pQNEhZNVZEN25uVEtVL1ZwRlVGWmk0cmt1aGxWN3hWTFJLVHl4OVpt?=
 =?utf-8?B?K2RTaVd5TFVwbkJwMWUxVFBnMHVpUTJSTFcveTAydXNSNWtUVllvTVJqTnc0?=
 =?utf-8?B?c0VPcFUyS1NlakxZdnVDV2d6WXNQU3l4ZzU2QnN4YVJSRGRVSVhvYm1KdEc2?=
 =?utf-8?B?TnE2eEplY1J6UXR4eHZIWjBic2dpS3A5OTlVelFpUFIzeTF0QzlJMVNXL3pp?=
 =?utf-8?B?OTI3dTZjQnVKcFdQK1FMblUyaGp3NnVMSUFSdDUwL1NacnpUOVFMc25lUzIy?=
 =?utf-8?B?WkJyT0VIQlU1dnJlY3hJdGZQNHhZMWlzdDRoNXV0TVZiMEhvWHdyblYxQS9J?=
 =?utf-8?B?QmU2VkVvOUdlWUU0VS9ZNmU1WWtWVytrOWpMelFoeGZic2o4MEV4Y2NoOW90?=
 =?utf-8?B?ZkhINTFDMHBVai9aWWpPeXEzWmE1bGxGbTY2Q2RSY3NyOXp5RS81RStONjJy?=
 =?utf-8?B?TG9GL1dmTldaQTlUTkx0em5MbEpybHhLaElRRVhoY1YvVnJUMFFkVDZVRkNx?=
 =?utf-8?B?MEUxZmd5RXFMYVVvMHdSK3BsY3UzZW1LNXlWaEJCd3ZKOUU5TGp4SUtIU3ZS?=
 =?utf-8?B?NlkwVGVrSmdWek1VQ3FiNkt3YTFwMDRoVlJpSDhLZmp4dC8yN1RiQUNzRENz?=
 =?utf-8?B?Qk9ENGt3ZzVNQ1d2WDUyVzJ5WnJnSE1uL2VtWVgrWWNLbXlCbXhaeGtRNmRs?=
 =?utf-8?B?UW1QT0I0TVZiNjZ2a1U1REo2eFZoUE5KRm5VM3VTdzNqang1ZDBnbXFDYWVx?=
 =?utf-8?B?eE5mK0NsSC9nam9DSTc4YmpkdXkwRC9ENWNta1BSWnhEUU5oanFQTEJkUDhH?=
 =?utf-8?B?V3JNcEE4ZGdMbmFYK0VQU3htSVh1VS9ZeEQ0c1BPSjcrL1lQekd3T2Z4Zkhs?=
 =?utf-8?B?YUg5bU16U2FIMitoeHB5YUNFaU5NdDJ2dkV0ckZEYzdFalRwT01kL2NSRXVT?=
 =?utf-8?B?bjY2TDRRTTI3TmE3VWNSRnRxazVRbUliMFVaNEtkZVA1NzB3MUdIeXRlOXhG?=
 =?utf-8?B?UWhSUVM1UjdJVzlBUEM5MmF0Si9EUk4ySjBEYmFQd2xyeisvSkNUYklVVFAy?=
 =?utf-8?B?RVpoYnhieGpPWVdnTXVib3o1OExKMVR6RTRIR3JORm1oUWJ1ZFVpZGRSSmxF?=
 =?utf-8?B?ZThScjNSbVhHandSbGJSN0hvRmVMWFdYSDBEYU1XZjlOdXArTFpYN004VUxI?=
 =?utf-8?B?NTBLMFo0US9ac0ZvUXptRVc2STN4cVZOMTJPVWRDS201am5LV1NLdk1hdUU4?=
 =?utf-8?B?WW9KdHI5Q242WEh4NUYxWmhobGJ2dnB6ZXJiYnF5NVdXK1BhTDVlUnhIVGlT?=
 =?utf-8?B?UUFjVUd1R29UUjNoTzhQOEV6bGhOUEQ1cit2a29lYkxncXhxVDJZeDVrSTJl?=
 =?utf-8?B?WFRKMVZONU9uak15MVBWdHEvRFhIcXdpMFNGM1dWZVdNR2x5YW5KWEcza1E5?=
 =?utf-8?B?YWg3aW1UYUZ6dkZrS2w1L3FscWJqaThTS2NuTjlhbGVmYUpMbG5HL01GL3dF?=
 =?utf-8?B?MHJOSXhVQ2dyQXVEWC9xTWZYZm9iV254ZE8zd05hdlBMUlQ0a0NDQXV2WEMv?=
 =?utf-8?B?RmRkMmpmVzUvb1Btalo1UmF1Q1d5VlFLaUFuVUo5S3c2dDV1aTVGWW5Wby9F?=
 =?utf-8?B?UVdjRTFhSWh5bTFRdE4xWkdHbUMyb243K05iYkRrNjFXbGlDcEUyN1NZUzk4?=
 =?utf-8?B?Rnd3aUdNeGRWUm13akpZQjYvSTRiVWFVZ2wwcW9BRkt4VVBXSmF3TjlYSGJ1?=
 =?utf-8?B?bWZrbHNpVEZSVEpEUEdXYXU1djVvZ2RmTkRycytzVUFUVURpejZ6SWJIZEhm?=
 =?utf-8?B?dnc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 7991e7bd-3de2-4e88-5aba-08dc4cd710b9
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 14:22:56.2586
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lYA1fFbiOGRE6fFiNDnQTExGQSmWfeQL4UKsuDabKiAvrJiElyPi1js55rJ9RskziSxrSOHhQOPRr3bgVx5u0fLRzC6YXj0iVHOC9uH7mrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8258
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_072305_662943_43FF8543 
X-CRM114-Status: UNSURE (   8.29  )
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

Add vendor prefix for WolfVision GmbH (https://wolfvision.com).

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b97d298b3eb6..59c6c6760bc0 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1627,6 +1627,8 @@ patternProperties:
     description: Wondermedia Technologies, Inc.
   "^wobo,.*":
     description: Wobo
+  "^wolfvision,.*":
+    description: WolfVision GmbH
   "^x-powers,.*":
     description: X-Powers
   "^xen,.*":

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
