Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CF8BC54E60
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Mar 2024 09:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z3eWkdzs/UoA1LPtwOCWWGs5Mm+dSZvIl2/KhUvoAh0=; b=Oys6AFp+lGNbBo
	pHZNh74ffx/R0q2PCiGtjcUxubB5qw/wSAR1bRAO68Fli+3Ssa/OPXcn0AW/p53T9l6h85JEN+kzo
	sj1bXEXOX/Z2gnN8xim0OMhv0ZcgfYDrfD2n8tUtY6Zo4Bl9PIgt5Moq3sNvrA8j4VkQTBO4s+ddG
	z2Ul7sx+FdH6IH/sxCGzqm8jPQ1lC8qdC3OzcS26UiwjKFtB12Cqei6x3D+Q6oo+T89oQRHPFwjS5
	PHeEhoYdBpBOleSIMCwxlZs0Zbjnw3irM+V3A1Bsf27mddTIYpl4IUj4LFF6nNPg8Ii4CLImVPKhs
	+Obdurp743k1/ejdjCZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWBv-0000000CC4F-2OFA;
	Tue, 19 Mar 2024 09:55:31 +0000
Received: from mail-be0deu01on20701.outbound.protection.outlook.com ([2a01:111:f403:2622::701] helo=DEU01-BE0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWBr-0000000CC0S-37rr
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Mar 2024 09:55:30 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=O5teNUDXOBiQ4bXF3YmAhVo0fbSWCny/ruqb6bP9Kh0SSr0+bYlh731wQVZ+WvRpzpCY33hC/guZ8IxwMvFT3LATbRhvbj1kay1rATy4U8MsbbrCKUCOBctdyDBPtdIGd4yI0OeJFSEkPHgtwoz7jUj04y2tyw+QEfdNND6mmB/cRxUpYEoC2onCaivGJDAnVyTORsLvTS3Y55YTnJwIB4F25WaGjlkLFnVgv4e5vz3n29tl/QpBT8G1sAYkG+ZwfRjDIHw3m2xh1olgdM/5WxbtaTW69L/uGOirOKQlD0lqp/F2DMJ3LAV92Fnfy87pucAVuNyk+2IpU5FzFtofhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+d5sLvVEdGISAEPHWV+vAAz45eGs9R2X0isKTcifFug=;
 b=gmYvH3s/81rBrLcZFQm0IE8wDkhHl7BSxw6NYC74SZTN7CD9BMNfsLP9bVIaZhWShqoEwUPcXEYZNGXyZ/8qPhF4mKvaZgo7/D2jTvBpvqOC70VGgsj+4uyxhgP4tpGiDVxKIvS2rbpxXI5d7fsHWD3iTQ4FY0Q6R3Ssdhl5YxSdLLqwUQAkZFutuKkY+KkdvFLFVxoOn+TslnGG5bsHlpK5bTe339E5dqRrasrPuAyXMZN5EvEACaFZ8W2ulrTNGbz5hirdNyx1YJ/7J1ZCYU7gcR3byv4JI9RhoRd0LhIDT0FZ5nUBpBNCX51et0EttgF5e/0kbtF304AwNLP1wQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 20.79.220.33) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=iesy.com;
 dmarc=none action=none header.from=iesy.com; dkim=fail (body hash did not
 verify) header.d=iesy20.onmicrosoft.com; arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+d5sLvVEdGISAEPHWV+vAAz45eGs9R2X0isKTcifFug=;
 b=LxfUnZy3na7SlSeNnwV1of/3df1SFSeM/2AB56IiUicX5cccEzQrdqn1Idiz17jwCnq+FGBGOzvMZfuikfoyJc0eBTeX5L+QyASQrP4/oNActoCa4joCfvTn0hr1dm7yt75GeB68ntR2Wx6OjcrK5KKCaZkPhXDAaeCYp9eKwbk=
Received: from FR5P281CA0023.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:f1::15)
 by FR6P281MB3455.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:c5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.29; Tue, 19 Mar
 2024 09:55:19 +0000
Received: from FR3PEPF00000487.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f1:cafe::d3) by FR5P281CA0023.outlook.office365.com
 (2603:10a6:d10:f1::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.12 via Frontend
 Transport; Tue, 19 Mar 2024 09:55:19 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 20.79.220.33)
 smtp.mailfrom=iesy.com; dkim=fail (body hash did not verify)
 header.d=iesy20.onmicrosoft.com;dmarc=none action=none header.from=iesy.com;
Received-SPF: Fail (protection.outlook.com: domain of iesy.com does not
 designate 20.79.220.33 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.79.220.33; helo=de1-emailsignatures-cloud.codetwo.com;
Received: from de1-emailsignatures-cloud.codetwo.com (20.79.220.33) by
 FR3PEPF00000487.mail.protection.outlook.com (10.167.240.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Tue, 19 Mar 2024 09:55:18 +0000
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (104.47.7.168) by de1-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 19 Mar 2024 09:55:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hdIVwHFadio61pO1j4sjZ2kuuuvgzDJRTf4YjoBnN+EprUPezVGeRNX39bU6vkZuNgTOCSLN3K73qif5dKtOKXKienIjqVXDM9VsegtOgfsmpBiOxjGvO/i0SEvQH5UMWOnZVdLFOsfznWsQM+a9wRX+SkPbK1tXzIQSnKrTzRYiuv7TKSUH8uK2idMBwvgH7/ZSRC16IkavEEviZxORHkPywpFKhRmP4L+H56TtRgfhsASxsiJTiWCvo76A75vulqlThQjpVj7MJpK9+MgfbDD6X7DOqWqudZLBi6zGRtOHZ7j5qp21NyKnU81spAFMwvXtEmDmBm//poRDYeYJPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HkHxqr/3Ru2tZlIEAaQM12Yl9f/NwXVwjLXLJ0Ow7TM=;
 b=BQpean2bAm+38eGWwOW3/GMeLa57aq79ePhmi52FpsrV+lxtIYRJuwq/Qt7GCiTzts912HfseeY3aC4iULUS+b2/ThVE1MRNO7knAJFqH/aX0lbz3LJrQTLKoEPq8WE42zB/Dxt33g1kI2FMS3Vm20JPA0WqlMRFBhglyVKB6qv28SG8wucTNONAQ6kCcPCE7oDKRh/2u4TA5r+pZK6W7qbhZI7dASfCYBFxbVECjzZ25yVmuvzPy1sXaMtEpDGmQwoTa8hn9g8vvu6JinB25ixkSvEkWPo7wjsO6TdPsKuWz1S218usnx4Ine1fUs1UhARLGxbla2EICnfJRfzzPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iesy.com; dmarc=pass action=none header.from=iesy.com;
 dkim=pass header.d=iesy.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HkHxqr/3Ru2tZlIEAaQM12Yl9f/NwXVwjLXLJ0Ow7TM=;
 b=goFJTg40pA4v+bkTx2y40K6c65jOy6Lm5X0xI6xOR7mXMDJgYxUqANS1o55Ep8SpbgVeGeESx00EbXAdu/vTUOAC2e2tVO/HcWcqwYMGYMipTi8OVr6Tz7fbUtX36k0kQcuu5w3bJJ3JOW5Emg3I7OKXPd+rrdT8YZt+jVaz3M8=
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:39::12)
 by FRYP281MB2558.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:77::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.28; Tue, 19 Mar
 2024 09:55:13 +0000
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851]) by FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851%3]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 09:55:13 +0000
From: Dominik Poggel <pog@iesy.com>
To: robh+dt@kernel.org
CC: Dominik Poggel <pog@iesy.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Andy Yan <andyshrk@163.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: rockchip: add support for iesy RPX30 SoM OSM-S
Date: Tue, 19 Mar 2024 10:53:59 +0100
Message-ID: <20240319095411.4112296-1-pog@iesy.com>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: FR2P281CA0030.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::17) To FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:39::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-TrafficTypeDiagnostic: FR2P281MB2393:EE_|FRYP281MB2558:EE_|FR3PEPF00000487:EE_|FR6P281MB3455:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: a9+qciFgWftSjQLMv/QH059H7zzgZ2tYYMcojPZ9E/I2P5FMJB6K2bAlPJKarmgy5Qdx1GrEaUDOZIJZXo5YAdjIkAp+zs8UTNuGB2nvvhG+Vmei60AwvMxrLgygJIFlzUnrWD2po9ov4oihrAr5UwvbsoyGv+ZvwxMj/Xup6+hrCTd1mCXRb32DbgK1OHQp9aXEU7KGz5Yqu4x6PoZ6PVUL8PbAZCSuAWAtui1Jxx10xA6xfTtYo8av9jwL7NIsCde/wXPbv3Gk4zvno/JMNjepi+4YnoTyxa4ensPWp/1dPqJ7L1RNWA9Pfyl/Bxx9Bz+eAyqKl6DuggDBogntFjGUNb/rXhRAWUiPRFcV9mRre07WyR6/yoKC2SDhL9mqq1Rmq1mcdtje6Ph9je4z0hP0wFw8waSZYOHg5MJMJ2hdthVe+poO9qS8SdnrsKZwO/10icYIuJM6HAHNRKMd/rTKAoaJ3EPvg0nirW+j4DgayaJfRHifaet3Zm+IDyZYzJN+3Hku3mcwPycaAmTQbqX4tLImedDw5R2nCytHnn+b5nOKsxp2zslKo0OTqgJw6WbslRXhGO7ajTRkJ1yCxllEoBTp55YVray4v/81AmznLFfXKrxDh0NEflHv1zh/v6onHKv1DQu/mV3r8QXWwOLgnSXJFAiANxZA3FeYj8u0CNIb6lRCYT4aGKUZ7zmtaxeec/4CKpOyAvFSNQMDImsC1O4ZoByI8JXtRlnrvks=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(52116005)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRYP281MB2558
X-CodeTwo-MessageID: 98ea5f3b-b7ad-4954-89e0-e33546a6ea5a.20240319095515@de1-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: FR3PEPF00000487.DEUP281.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 590f2f0a-137f-47fb-5ed4-08dc47faaf5d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qwhDYvp05QgeJdtnV+VKy9hYYEbz1PtVvzROiDwv3Aw5OWqOGYa6wU6L9hRHCkNuGU3bnC6WsA4q2QuQgEeWuD9lbunPic6E2zp4/oqhRtxHSPgeT0Y+avQnOlN0gkQbfspYalLx2if7SfuJ9yHn5BuA2wRSEHrzR3xL3sx2FhJNy5om1wJS1Xq0M7UCtoeUrTWY4RHpN4UYaiz5gmszkVGbXW+6BwIOrSyuG2jUpA3U4/bc5szqgSVEmWKbN7gGaI83M2tbomBzPnGCEhZ6KVdZ5KL2SZ4iMT46eoOMRGxgnGTtVlCdp7zpguz9PD8ClbB0fBM8RtFSYSFsb+NJt696DeEmJmxa0hHdeZ8xCFTjT3WLT8kcfqT6jW7D1XDnFKprsd2bxRPDCtl2/xqpZyeUoKXA6+mbvQwv2A1pq9o82D+kuPzpXx2TTsOV2MjUlLLpT7MoJVuAw192xIh43PLwkhZSfLDmm+sTxONn5kOJ2V1mPWXXpm43ScByPDOeGLXywCO6wkU/Xd9I3v8gc9oolQoYqqbIvT/PuWHxyggBgK27neaIdRblbqQ2mJ0o0jiG1ch+mJbG2CqZHN71tA2R0XjnfrKYZMT4kMFueosN6XVYmRbDOhBRYynJw88cf8z5OtTkUiu3ATnM3bcFKo+zXwPciCulY4CSlFTO9YFNERz819ioNxA58m/VI4cZ9Q3GNl9/oJCDXenEi3gyxOsJ0bnotc16FzFYF1DOGGXOJaKX29Gus0vwFWfyC2xw
X-Forefront-Antispam-Report: CIP:20.79.220.33;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:de1-emailsignatures-cloud.codetwo.com;PTR:de1-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230031)(36860700004)(82310400014)(376005)(1800799015);DIR:OUT;SFP:1102;
X-OriginatorOrg: iesy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 09:55:18.7733
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 590f2f0a-137f-47fb-5ed4-08dc47faaf5d
X-MS-Exchange-CrossTenant-Id: ace663fd-5672-464f-8169-8d373312f6bc
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ace663fd-5672-464f-8169-8d373312f6bc;Ip=[20.79.220.33];Helo=[de1-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: FR3PEPF00000487.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR6P281MB3455
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_025527_799555_8F1AB928 
X-CRM114-Status: UNSURE (   6.78  )
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

Add dts files for SoM and baseboard featuring rockchip PX30 SoC

Add iesy GmbH to dt-bindings: vendor-prefixes

Add baseboard to dt-bindings: arm: rockchip

Dominik Poggel (3):
  arm64: dts: iesy: add support for iesy PX30 SoM OSM-S
  dt-bindings: vendor-prefixes: add iesy
  dt-bindings: arm: rockchip: add iesy RPX30 evaluation board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/px30-iesy-eva-mi-v2.dts | 682 ++++++++++++++++++
 .../boot/dts/rockchip/px30-iesy-osm-sf.dtsi   | 362 ++++++++++
 5 files changed, 1052 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-iesy-eva-mi-v2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-iesy-osm-sf.dtsi

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
