Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A158C38142
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jan 2023 05:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gs0CZCy5Cv3MWcb2vosMb4Q8ozNCBHTlgWZBV4/l4rQ=; b=ejXMHo+sBMlMSF
	l51iEvlCtpB9xQdahRf3A2usMKPiWK0m/jrm0aK6iGzf7E9LRve5201VAJkC3AL3YhaCZbsc6qw7h
	R26/tsZvltse2j/Z+qpgKZdMJD7tIT8aeOejF01L9dhuIS3ScSrJCKstA0oebryDaQKyk48Lk0j5O
	yHnF6PDgqsmC+SquG0NvPG7I8BpvTSdqvzRFpcVi5M7O+S7Qk/ieRz+88090PQpXy5hNwLEfHrhb7
	x7g7pBJ9qhMslc1+g6SM9ZZTqbRPKotaoXzd9MVSJsTRFyPYLFWui/asrC1Wf9km6BDfVy3odUc6C
	u/tYQ/uVZESbxU8JQ9eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKCAb-002Q1O-N6; Tue, 24 Jan 2023 05:48:33 +0000
Received: from mail-vi1eur02on2053.outbound.protection.outlook.com ([40.107.241.53] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKC9W-002PTL-Or; Tue, 24 Jan 2023 05:47:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jD0duKXVvlKdNalTR+AAgBnEPz5p8qZvR8nNvWlw5T6fb0rzg3yCMqHT3jGSQTbNzRy/Ba6jFfP7r44a5cBVfLlMyHVf7Y6dJiUxKOsgIJc8zb4jb3FAWnd/uHSsRAnZUubJ0yfMAgoNdfkJUDOYLeL5pw+IhJF5i7pjQrzdhtfs6B2D9ldV6FkCSov3pDoXm49vj12i9yOuQpApvr0vPjA9lDJvbnFE8wygllNj8SvEd1T3AgmuU9uLgGA9sdPO4IjJnKaeojuKtOcJ+lveoyHTT0emsC9sPie/HNm1VZfmdTq9unzgyM2rPbBBddn3kme6r/v2MmteAioaD7k1Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cmx2SXClmCRp0caF9AQpqf5t5IZc3u2Y1kOHUBxCHhY=;
 b=L80ZpPSdIlwuSZ2I2FRe6PzX4xS5g7xBpjV36jjgd1TS5z3L15uuz+/WK079PwcT1Et5lD/5FkJSqgqe/Gi9eTP1i0q5iLc1PD8mQBux3v6Omaem/AnPIHzgMzmNxKGg8EE5g5GSJi1cpFjQw4gLoBa0fCfY4i3YOOMoO5p0HPDOqr8JpMtjkCpNz6/DTdHW9XOAhPgKkZv5g7R1HHskVLpzx+C0FV8bfU6Id+YVTV1m8IOO/93BU+c0FtFArXLHvJx7crZ5VKSPdvZOpqeuNqdtvlhOhVJO6QXdpMEiAdhLZW8OMa+c1Aa+J7YM0ITJ6G30s8FZ5SavZgdvx58gzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cmx2SXClmCRp0caF9AQpqf5t5IZc3u2Y1kOHUBxCHhY=;
 b=Y1axOUC1alITmgd0ipawXCrc5rgqpwGjjrDDbNiUrWtxoxJC/0PXyDh26nVqidYHzqlvBf6tJJxSVLWyV/rfQ3PbnSbWAjunqmZKv+TF8oX6iRZ4v69j7bV9VEq3jbYPLTOHZxYwVRyDdplWn7+UiZt1h9LfTat+ieNqsPkQfnc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by VE1PR08MB5678.eurprd08.prod.outlook.com (2603:10a6:800:1a0::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 05:47:16 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219%2]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 05:47:16 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sascha Hauer <sha@pengutronix.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH v3 0/6] drm/rockchip: vop2: add support for the rgb output block
Date: Tue, 24 Jan 2023 06:47:00 +0100
Message-Id: <20230124054706.3921383-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: ZR0P278CA0189.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::6) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|VE1PR08MB5678:EE_
X-MS-Office365-Filtering-Correlation-Id: a7347ce1-4cf3-4a03-23c0-08dafdce7338
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	5WYTkh/rA614ox9vs3KOwqWsY8ubNL8ji7gNR7EmbSZdvUG3DiJxSZMV1YuJmCZhv4L+xQmret+JrY8L2i1dvdHMRfwQsB6xQS5E+JTxW2MlpHVsFIiGqnrGEaCOv+5w0u21y3pLIuIkalpwsaoluMczhHjfSQvbOG4dR3JBfOUs9XyhAhbzTf86BdIi39NrPNFX7QKe1buPewKmaW4HDIh2ebcs9V/O6lbnAoRIgB8zcOAXBDoMmHAjXRrpp3XeqI83yE/UNL4iBZ9wz11nnUQpZfIYmEq/ZkZ56GxTIoBh4BB/odWvJxxjSqaBbtYQOieqwgX9P8nQDY7waDVgzDoIdehseqUSe0Pz6gQui7uD/iG+fbBkbR5gbHarNTTTOaU1l/lJQfwaiXFzs+XRArQmo/Q5PYiM+QbkBV6yB8WaZy48DSJogol4Q8jDlvfvG+PpOU/Yu0lFAjTpJ3eWdwSBvG3ppuXEnQP27amfvnLzMn0p9XKa/jpvwQ+u93N/QtwpEDHr2iR8tUCuBpBGmjhTRt5NzEndcPjFlFnD0g8emtEiwpnvwujNfwtKKx94qp+xHx6au+gc5v0/AU5mfM+awyCZ3ubQEmGN2ANW9spMS8+g6s3v07gRfLzKAhuGz0cZKtMWFqSvR6XyrdJMCg==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(39840400004)(396003)(376002)(136003)(346002)(451199015)(1076003)(66946007)(4326008)(8676002)(66476007)(6486002)(66556008)(52116002)(2616005)(6512007)(107886003)(6666004)(44832011)(186003)(5660300002)(8936002)(7416002)(41300700001)(83380400001)(2906002)(6506007)(38100700002)(54906003)(316002)(86362001)(478600001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?KkeQMVwWloUMtoh10gsO/exIAuzjQ42KmgKmrmvsQQAZc7BOYqSmXYEY0fIF?=
 =?us-ascii?Q?UnD9bf9DWaaAPd+Jr74QI2Sk3ZuY7Lj5Kwhxdq+4CWaF9Kbt6CiGZ6pdkCNA?=
 =?us-ascii?Q?n94kIlu95ptc8Fu5Igp8GsTksu7iNAXN0dZbZmra35u36B0Hb0zlnT9u/rae?=
 =?us-ascii?Q?6pEBZy7E1D8H19w/9Pj+b6u7sRVfBLhS/N5iuh+ipQHIWyj3vI7PBl0hKPo2?=
 =?us-ascii?Q?HU77SXtyUxoJjfRnCwp7MLCGhboUsQFBdwLugnPmf8bbjfPUyLhB5H7imaV5?=
 =?us-ascii?Q?6ki9hRt5H79W5OhN9b5wxV3b7VGFNGW1PfF4cz+2Qf9Yn3MSnt0OeU15HtUD?=
 =?us-ascii?Q?ukIXmJAOEXO10aVt3DHQjRqqZ5fLHaaWp8hS+GMMalIN8m9PkrK8NoyROcEE?=
 =?us-ascii?Q?vYOjFqFEb01lDlTnUJa5nuF+s2iGOumRhtOsP2NdQAstZiDOmUKeuvbqqa7X?=
 =?us-ascii?Q?nOl05iVB/QmHqVHnH5xwfgrdA+lEfdB457duj+yZbjc5Iq3sdq05UsnIiILi?=
 =?us-ascii?Q?ntrR7gxP16SkQsaswVUma5ZQHJfAQasaoCt3UvA3j1pBKiMSoEqoEn9A+H/p?=
 =?us-ascii?Q?AIBCPjXAxnoJ3K65iKcwGTud1cWtW9dO/hIUgGJXZpK221ciS+48FJK2KHnc?=
 =?us-ascii?Q?N3+KEI3WS8hCKOp0bQxuFQGiZab8TdVB0SglxAVRNSEd0XQj+qCnlr3BbhUi?=
 =?us-ascii?Q?rE1MxsnKrSPvJcR77qYTzFofY5713miUOEG4euA0OL84cl5HprMOcJEsRCyx?=
 =?us-ascii?Q?SO3tEu9m4+W4mXzZivk+5GxJfbLzbJ22xdxyDIv+/CZL3yy0Xz3j5RU3Uu7q?=
 =?us-ascii?Q?+MxkiDEDjgiLQLuICafTDFme3GnFSdbx70PDTdmsxIMwNnQ1336LPDMQtkmF?=
 =?us-ascii?Q?6gg1q6bb6kjAbhIeMZUsxoIYGrxuRgLhnDngaRXpcIuwJ/AjguEfPvnDrNza?=
 =?us-ascii?Q?sMdlVK2tFZq8aRpXJvAUCPFCP6/sgbiLYJln1UIRLrHyK0yv+P3HC8smQ4RZ?=
 =?us-ascii?Q?e2HJS/PgvYkGhFQ8PmWsoKm21DgbAWALcZ5Yn3OebWXbJClLr2uu7uz0UrgO?=
 =?us-ascii?Q?2me8UoYjhwByxhvDR27+PGJ8nOpu+q4mzAQtTwfcFaqq5hFnV5cLoffJC34A?=
 =?us-ascii?Q?S1K79NKfJ1Zf3n7/Gfv5PFeDWMgygCYwPmNznGKgGhR7XPvIpb7v9K0nn03Z?=
 =?us-ascii?Q?6GxCCZ+eV141b/m37ppD2NLHMXnln9ueLLSQ9hXcOS1VOrFDXIgpfZE3B1m2?=
 =?us-ascii?Q?PO/yXwM1+q2oUcpYWuo1b97hnlDmDU80Pc++f5Y5CpCO3vdHVT43FnFWKKqW?=
 =?us-ascii?Q?cyiA2N6t/GhSyjNIVn7fVaFhm+xuTGH7p9RLcxsZxvFEw1dUV7APSpNYRs5I?=
 =?us-ascii?Q?e/F9O53kCsLNPvfDkbTHEZ0zqWzcGpsmYh6WcBj7OeQaM7mnAL39xGK1A+8M?=
 =?us-ascii?Q?+A0Is6TGMFOohZ/YNg3zScIL7ziGM2YqOor5YmdGap37mBfNi1oPnpV5zc3r?=
 =?us-ascii?Q?V/RDQTIYtFzz7qVAIIAJg83E2vSsrMfl27UvAONruyC+Mp1q/M4h0vGYSlPR?=
 =?us-ascii?Q?KYkwsnnHqde4lMfK+rmnggt1WXw2NtxtYFFPnF8pf2TCo5Uc9gXsDwHCQUGE?=
 =?us-ascii?Q?abW9WwjpGmYCcSibKi92bVVU8QNWg6U4IRNo7aosCSLR0zfyI9B02Hh7mBYa?=
 =?us-ascii?Q?ZZ7Ej77fOwqQhWKZOt0ZtIiVKO0=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: a7347ce1-4cf3-4a03-23c0-08dafdce7338
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 05:47:16.5589
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NzN36ShaRQ5CxrBpKje0/gqNdR3RJ+FkCcu9F7Z+7xdwNhUrerq7lvcjmpMD1KuFyQ2rlr9h3Qb1IhmAj1qH2aIT+VslKRMmTQdZfNcd6E0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_214726_849474_83E99FFF 
X-CRM114-Status: GOOD (  11.10  )
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

Hi all,

This series adds support for the RGB output block that can be found in the
Rockchip Video Output Processor (VOP) 2. Version 2 of this series
incorporates the feedback by Dan Carpenter and Sascha Hauer. Version 3
fixes a dumb mistake pointed out by Sascha :-) Thanks for your comments!

Patches 1-4 clean up the code and make it more general.

Patch 5 activates the support for the RGB output block in the VOP2 driver.

Patch 6 adds pinctrls for the 16-bit and 18-bit RGB data lines.

Tested on a custom board featuring the RK3568 SoC with a 18-bit RGB
display.

Looking forward to your comments!

Best regards,
Michael

Michael Riesch (6):
  drm/rockchip: vop2: initialize possible_crtcs properly
  drm/rockchip: rgb: embed drm_encoder into rockchip_encoder
  drm/rockchip: rgb: add video_port parameter to init function
  drm/rockchip: vop2: use symmetric function pair
    vop2_{create,destroy}_crtcs
  drm/rockchip: vop2: add support for the rgb output block
  arm64: dts: rockchip: add pinctrls for 16-bit/18-bit rgb interface to
    rk356x

 .../boot/dts/rockchip/rk3568-pinctrl.dtsi     | 94 +++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c   |  2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 80 ++++++++++++----
 drivers/gpu/drm/rockchip/rockchip_rgb.c       | 19 ++--
 drivers/gpu/drm/rockchip/rockchip_rgb.h       |  6 +-
 5 files changed, 172 insertions(+), 29 deletions(-)


base-commit: 1b929c02afd37871d5afb9d498426f83432e71c2
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
