Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2E46C54E5D
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Mar 2024 09:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhKLH9ip0SlkWMbeDUAgiWGuwr+BcXqmqn71aqt/5Qs=; b=PvQN9KknQUnlIw
	RCrDbZszCcZfb4kjftLhl6OIr9nUMz6IJqzilSWxUrbizYuv60KFUP7VLBdUpjb1zfzo4Hy87MiH0
	E2A7UwR3ktUJ0P8KhUhndFS140J1EP31+YFp2hqV9WzHAfrBKOE/kbrz5sNDTTC+Q0zEm5hFDJ27v
	EwBxxYVjToX95iUiO5j1we73pdH1ey93N79q0FCMBJc9an30x/OoAjobtcKyYeRFgiPaoz8q89e4Z
	yJkU88/EydFr2d9Vp26RL5Z78NLykfk2WtJiLhmE8xP/OxX616o9cYSrAjrdeBNBKRuUxPfRvrJ9R
	kwPtPCSldK4/xAChgRNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWCz-0000000CCao-1I4k;
	Tue, 19 Mar 2024 09:56:37 +0000
Received: from mail-fr2deu01on20701.outbound.protection.outlook.com ([2a01:111:f403:2623::701] helo=DEU01-FR2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWCt-0000000CCXQ-3rmQ
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Mar 2024 09:56:36 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=l6mgGzOHpZRba5ZG3/Y9MzTSohPsNhahF6dD4RCSazb1z1YA3VKfs5sBLL2jJhppBUKe9casPIo1rB4cOKIyn/3z7XtT7nxWPM9Hj/tMczFkU8pDX9u0mNDdQHS+l6GVd6GdVlKKpqRzKqrYHpK4mAl6wkIoq9ffm0u8QEhVcyF7+zInTU37rR0/WzRK35uKR82T4s1pJ4xwFZE9nJAMdS1CA4XuT9Lh3IXnM0MjIzxRl6xRH/xh9nk+efRZcoBVKH4JTSb2NXn+Zf+EkyRCE5WqlATL9SYAvJKnCXAJBZ1jpumiu7VQ23/rKOs3Ume7cY4WQGvU4J94iUt7KXXQvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qcm2tufEHCswe5/0BhmtkpeKGfTtdqAG/VOY759/Jdc=;
 b=n8Abz5CgyzB7Y7Dc62DmYSQDi9BiAOhMxVlen+tQYlXWIeMRwT0ePIFsmuQwPaQg0cchspDm3dY9VsBHSzT8zETxGMzyRUw22Mq3U4kP2fxB0ShkZ8INhcRHeA00R9BzPz394lGim62ZJMSmeQj7smjuWm4TVX9J1b+6aa13KlA0zXqheUumV62MoN8WTbd15PpeOCDzO/qt8AKPZNGDChb6xVAQvlMD1XvKNJIV5KMRsY9VMobO5wK+I+EVmRUTAkPO617Qc5Uh5SwgC0d4hHz9VUUsrZrCUh8DT59ZpYT6gJCUT/+oJY68zcI3EpOmCkivqGq5xVdTqDybTdNeJQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 20.79.220.33) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=iesy.com;
 dmarc=none action=none header.from=iesy.com; dkim=fail (body hash did not
 verify) header.d=iesy20.onmicrosoft.com; arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qcm2tufEHCswe5/0BhmtkpeKGfTtdqAG/VOY759/Jdc=;
 b=0KpalkfOqvnoufamsUT3+tBFJNBJRn4C+kBaxARfQliHdOujMHXCAeaVBkaUPpBkStEyFvBHBC+Cc4OARliBSmk7ORnEWIXe5paocX+XE1yLP0MU/nrs0NrI7hvLqM4G10wmgxYIgYXqWNU45uCGfnVb+Pv7OemEJUnALcujyCQ=
Received: from FR5P281CA0028.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:f1::10)
 by BEYP281MB4100.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:b3::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.27; Tue, 19 Mar
 2024 09:56:29 +0000
Received: from FR3PEPF00000487.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f1:cafe::c6) by FR5P281CA0028.outlook.office365.com
 (2603:10a6:d10:f1::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.13 via Frontend
 Transport; Tue, 19 Mar 2024 09:56:29 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 20.79.220.33)
 smtp.mailfrom=iesy.com; dkim=fail (body hash did not verify)
 header.d=iesy20.onmicrosoft.com;dmarc=none action=none header.from=iesy.com;
Received-SPF: Fail (protection.outlook.com: domain of iesy.com does not
 designate 20.79.220.33 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.79.220.33; helo=de1-emailsignatures-cloud.codetwo.com;
Received: from de1-emailsignatures-cloud.codetwo.com (20.79.220.33) by
 FR3PEPF00000487.mail.protection.outlook.com (10.167.240.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Tue, 19 Mar 2024 09:56:29 +0000
Received: from DEU01-FR2-obe.outbound.protection.outlook.com (104.47.11.169) by de1-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 19 Mar 2024 09:56:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MubLEAl5lCHI0sYOzGpzs+dobO70px8oB9rSIeozgVs4L1IPPCN2I/uaXTWD9VfLzttoQ/d3I4ZiG99g/LURoWidpUXA+c5MOQSa3xSVMMFMxRIXLyqQAbe1j8oImRvz0MtrHfXCHrg0sswvgaatJGXWjtwt8lHDLCTSbFjuRLLfsI0HPOFznsWGkoRqfQ16AioxkThveX0MaMBypiud63wWkceseLahZVDJl/u4d81T8ad1DDI52uXDu3CGd/6eUKqFaOv5Q2gk26UIS2gI5lroB++ubxuSusrs4Gzr3IRuGa45Le/fjmShmlfHLXnb04pSKdUcKa19GlZTn5Bwgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=81GBsRSGPUJDqOX3Fq1EM8MeHwVfr+Kid8EzQf8Qk0A=;
 b=RZClqOtZGnG2nogLI9hmP0gwJalD0xHe+nObFDa0iBYebS6zvNKg+wB9IJTd3wuHXsDCfopduVEy+RRMCmRp+JPEWThGueAieOY+UhBG0TCmM9K3qR/s6UInTka4b/d007OFUBG37szk4UVhS0nyvG0PmX//5QY6BLfVcxV5OYFRhqsokOCwNGZDArIONYfoa6H6cVYSF2AiY/AFGkV7c4b0BtfXPhtzaiOHUeHoChyhnSWxxT36iyqjtE50U8qd6+H+CHO5zxOcAZzyjYFp3hlSXwPFi/MRWUR69aZl8O15x4heX1p85MX0idOb6yc6JkEMobeaKyA5PkFQrA29Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iesy.com; dmarc=pass action=none header.from=iesy.com;
 dkim=pass header.d=iesy.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=81GBsRSGPUJDqOX3Fq1EM8MeHwVfr+Kid8EzQf8Qk0A=;
 b=r1T9OLvpppXNhkDHp8pSyfiyz0hkJt18r2el5KHWBT15m43/uWvvQwFKFtnr74E646hCqGv1QtOCkWfkDmJSwewd+sGDS8Izwy82xo7FzLNtbMz5O691uc/oe8CaK1hUlV+fB3K7QXj+7e66gqNj6Vvst54n95CgFC/dfGmfVm0=
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:39::12)
 by BEYP281MB3930.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:b4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.29; Tue, 19 Mar
 2024 09:56:27 +0000
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851]) by FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851%3]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 09:56:27 +0000
From: Dominik Poggel <pog@iesy.com>
To: robh+dt@kernel.org
CC: Dominik Poggel <pog@iesy.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: arm: rockchip: add iesy RPX30 evaluation board
Date: Tue, 19 Mar 2024 10:54:02 +0100
Message-ID: <20240319095411.4112296-4-pog@iesy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20240319095411.4112296-1-pog@iesy.com>
References: <20240319095411.4112296-1-pog@iesy.com>
X-ClientProxiedBy: AM0PR10CA0032.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::12) To FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:39::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-TrafficTypeDiagnostic: FR2P281MB2393:EE_|BEYP281MB3930:EE_|FR3PEPF00000487:EE_|BEYP281MB4100:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 7skfo7KEdIIUBEIpHoIvcXOIXhkL7tRn64yGBnhbum8+9myqJbAMt9SgbvVVvyEqhuFWwT+ZAv71MZclB4OFkVKZem0cQCPQy8bTSxP9nrjBuV3HUHAdW2ZT5SBGBJJwQysSc7audgdv5n5efL/HaWYyO209IhtckycEe4n6rkFQ+XCUNdUyu9F4hh1H0cW7d/Qb+fa1stvCRTmxgorLUpgE+0qvIeXYNbY1huEFl0mJtXGyKS9OnLD4kB5rSTBYPEE6tQuJOIT9aYQjE7qzbGLYwRznbLKFGq8Jb/YAnbMgPw1KCSaVbxAUZGDsLBv6+TiPTA/dak5YsT2En+gIyga+GD2XH5r67ZklBy6OzgPQnxLx8GpCSEjiQ/pYdUbWqirjP8cEbGAYQ1C5C+9SXrpnt+UKoKwI2kLBGBczwiZ46vBS//cTj54bd+yBEVYqEj3Q/vhnDWeVCAPPdoXVcjtYWj4GMoD8nPVmNZNnPfOCcaBTDephJD7rl8SjrizygfUsUx9aYPvRefDIuinwEpykVvc0gUISABWyObAIZ+JSzV4rs6N7Wa7K8s6grE7N0FqLwqRnVcvxLzBS921M8BTjMcBp7I8EeCbwKbaRtD+Qads6BDOW6YcKPCAHvL5WCbienLZ8jevf4E/stGe6Fm/zVr0eDhub7PZ8Dwn2Uur3uPiYp+FwQdzbsD8/1t9zcXOFj7kz+DIlA9AZFtMcy8FhdUNFGfWKqkiAokLrwvU=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(52116005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEYP281MB3930
X-CodeTwo-MessageID: b25449b9-bd1a-4925-8369-2bb500406826.20240319095627@de1-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: FR3PEPF00000487.DEUP281.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b8b615fe-01b0-4102-783f-08dc47fad959
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lc91FBFIhWABHW8JEz3T0RIb0CmH7UYzbbA/09dwVM/0NQ2f4tg+8yIrfVU/BpjTseoAq9a1YtCZRq4255lG2Iqh3QAOZyuZnJIkASKZwDJ1NZfXq3tMtKqF3lUrPGFf4MUfvRpnZq6pyor16SJ8gfPNoKhmh3AGiSGpIf6bFzCvTRMjqR/7ZutiURBICUEfkzwiwvoDDDyxYF9DfoW1HMV+BSH7NoX6ZcGfTVOHxegwdVoFa/Dc+wYd6E2yi6mgVNZ960HZBmRjFsOX0eNuzZhUnq96DS7F+z29dN1w8IBqZG/2IGnOBjVpSwiYtC54oaX8mfb6tFjjeThG5rS33nKaM6b6eU5qVfK2yXBHIZMYhVl8IoKJ07mrUA38TYgtx+u4p5CVkkShWoBzwcI4wRZhY0A2tGEhrsd8bQYmlFRnCRo92BhUVG80u9XkPmwiI42N8/Pg7Fcy2qQwzq4MORzr75WtJmM3bIbCd49FE9c+Ag6uIaz4PlKrpNSB05ohhs3ktj38ehpe3W7F5A4z2t/q3VueSSfKkP/3n3h7ik3nLcAiav2Gb5levCqm6Gl4ck9uh7FkdNTA6v90eWTmE40PanzKyZQ4t8u57kzBoAjx1wyFInf60OXqrcteCKxJFCAdrzir8/RiEMD+4aywKpMWeU5PjDAVIsvnKs9ONxQ+b+qJ4MYZAt5CDOnVtfTg7nuZQpBeV7Nv3f4wuy6gDzTigJ3+ZDwm0cpjvf0Nv2gfT29bXsMKRN2QZKT4UMxJ
X-Forefront-Antispam-Report: CIP:20.79.220.33;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:de1-emailsignatures-cloud.codetwo.com;PTR:de1-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230031)(36860700004)(82310400014)(376005)(1800799015);DIR:OUT;SFP:1102;
X-OriginatorOrg: iesy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 09:56:29.3527
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b8b615fe-01b0-4102-783f-08dc47fad959
X-MS-Exchange-CrossTenant-Id: ace663fd-5672-464f-8169-8d373312f6bc
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ace663fd-5672-464f-8169-8d373312f6bc;Ip=[20.79.220.33];Helo=[de1-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: FR3PEPF00000487.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEYP281MB4100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_025632_365870_D3EA0DE7 
X-CRM114-Status: UNSURE (   5.94  )
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

add entry for iesy rpx30 evaluation board with iesy rpx30 OSM SF SoM

Signed-off-by: Dominik Poggel <pog@iesy.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index fcf7316ecd74..601aa1510856 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -565,6 +565,11 @@ properties:
           - const: hugsun,x99
           - const: rockchip,rk3399
 
+      - description: iesy RPX30 Evaluation board with RPX30 OSM SF SoM
+        items:
+          - const: iesy,rpx30-eva-mi-v2
+          - const: rockchip,px30
+
       - description: Indiedroid Nova SBC
         items:
           - const: indiedroid,nova
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
