Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77DD2C38142
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jan 2023 05:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGvF4LzzF8FUol4YnbEMpsMUX44+Jb+h8rQBadKgcTE=; b=j5Rv71rwgfKj/W
	1mAKrDlBlmfNET+7DAPgit2GXBoKgeIX/sd0+gQ7Dx4HLstHAFci1B2RgrZ+I0Xiv3elNrL2Oz9np
	O86IMHTuTOOAnoyg/zCXcqil59WRtIVgxui0JONzdfcUe2WemQkFatB9iD8Fb/J3yr4hAU+s3Srge
	C5vMkZ/IbgTnsnoO5A+pi8o4JsWJWMDWB7up57G9nEXKkkNRBrW1nlPjRZb3W6FO2iiQjGDnY2eHK
	lXVDlfY+lbhMo04j72AS4lOfPx08gq1u4nXwMNa7TfVPf7ht7bWuv/INiO2EUwIDU/1wXRzjAyYW6
	elxYhcBlsMHLC5e6Lhug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKCDS-002RMB-7M; Tue, 24 Jan 2023 05:51:30 +0000
Received: from mail-vi1eur02on2053.outbound.protection.outlook.com ([40.107.241.53] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKC9a-002PTL-O3; Tue, 24 Jan 2023 05:47:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eeOB6808hX9iVKs1Oo7JTAPGkJnJX16WVorU4zkxsb5+1lgpXWGqt0l4fGQKTVfxiX3BJ6LyAOoML7AZU6lsn76c8TNbvFpTQWGpCVYqxHsmEbIRMcKFXiiwLJEHQmNSi3LyHZ6jztu5gT6ku1KtKDQeEbAdGx1iY0Ssdvo9s3PU4yQTHstizH/sVvKlSs8qWT4jgz/jY9i5ZOcvvYqeFOgXdzlKJlk/sMtT981iJ43604qwKYj5F/e3YrRT+NtcyA77H9wS6b0gqjUyFOjPb7u30P84KyrSkydFAIInAuJu2PpTQLWwK8xQi+fOCB9iu3xtTHDe6xwXwTKN3pNLKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dgr7kEURxIEnma+AY7Da1nbfb3Zw5t63LYtMVyPER6g=;
 b=ZWS1YApEL1sAUCAJoEMuTbaRcDZdHORuq51qlZz6CtIx3fluvDE49W/ki7asOI/aU+xnHjAh/pPg/G+2wGVJXV5ppNgFmgN4v8OM6iNIiJlmpreYvksIsWKUy/UR5jsZUsoCuHAxjTk0UffenuUUw7cgtJ/K+fiah25/i75t0XDj1YbFBCo8iEHt68wMobTcPUg3CZZ/76/QyR0OFuSdfFYMYpJjB6A0QfOOgKhnB89hNbbUGR0Mp15D3QGSWeU+zsrjDfYwK+m41bGy5cAo89iaD4gP9Y8ZwXVqyty4GW1vU+l7UYyGFbbk0BW0RdhQsUPcl4jpJCd0XLvIUB7clA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dgr7kEURxIEnma+AY7Da1nbfb3Zw5t63LYtMVyPER6g=;
 b=iPepEZxFGc213iMwZQil0QqSHj2nag4cJZ3GIh+Hv3SoL/fhwcmRus9Amwbw//kpo6F94yxxKXHSeCcrRW4BKoHhtBLcektxhqTiHCEY+TacM3Wku+L6dyO5JsEPZJrz6iKKDO3iY9s2pfrFTAKkACN5fRM6J9sKtULvG2uUO74=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by VE1PR08MB5678.eurprd08.prod.outlook.com (2603:10a6:800:1a0::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 05:47:21 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219%2]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 05:47:21 +0000
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
Subject: [PATCH v3 3/6] drm/rockchip: rgb: add video_port parameter to init function
Date: Tue, 24 Jan 2023 06:47:03 +0100
Message-Id: <20230124054706.3921383-4-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230124054706.3921383-1-michael.riesch@wolfvision.net>
References: <20230124054706.3921383-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0189.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::6) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|VE1PR08MB5678:EE_
X-MS-Office365-Filtering-Correlation-Id: c11522e3-3241-4b4d-9e73-08dafdce75d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	/pvDcCWeuQnPUwo8rLX9ICKgrFMwZfmrfRThOnfI1uE3HZaEB5OEolsJmXQeZjOYG2Fecil7zq5zOxJ5vj88wsBwHcWzEQjX6oCuAxCe1RoUuHQUv0uICJ0cQhMJyXnwZl54TOfOkZqt46EY84w67Qme73y/55UOgN3z7qJ1MtlBL6T6xq3c85SzjeNA57qmMFx8owTyT4isKyC4Gdpt9C41WWxHQ8UBgegyovkJnOfGSihhj2rJ/JfPHa4CzktpMTr91KkrnzBi6htpcdXfygsUxlmQniPsrYfS9jWE93X3uWdB8tWS/jcjHntFT1SQ9i0woE/Qys/MbScwNR9fDUl52yJphqJnCK1csowPI5s68EMNxg1JwhD4PFvj8Xvvt+holC+zTKygHOIw8+TPTN16HMevlJFMfbvDME96yM8KQdvK2Dlamzl+zTs44Db1dVAifhNEs2nd2SitSpqvGHi3Sew18ayFeYY6vpW6F7KCKoVjoLO0KoKBgWsIK+/lHrvv5wh3gYuXM2UpmsKgw+XnV9YzxyNe+RzuVdfzV6m0rPmJEQrKLiRmptZLv5NI1GtE/+Q/eXKodOTRs7N7VjXeXOQITS5RJOpyPdk4SADG6wP3K1VuUzfvT4DqjdxgBMfTfImNfND6yOUi/n+JLw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(39840400004)(396003)(376002)(136003)(346002)(451199015)(1076003)(66946007)(4326008)(8676002)(66476007)(6486002)(66556008)(52116002)(2616005)(6512007)(107886003)(6666004)(44832011)(186003)(5660300002)(8936002)(7416002)(41300700001)(83380400001)(2906002)(6506007)(38100700002)(54906003)(316002)(86362001)(478600001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?NR1latieBuacntSYM29WwHBGVuxUP/XWbBEKp1sefNcTQKMqV7N7Gx8ooM9V?=
 =?us-ascii?Q?FJ+tNPLz9t+FTdPP2LlJujMO1BMMBXFIQK72Q/VFZTB4GHiCVu0c8uJ/tRjo?=
 =?us-ascii?Q?/uqCsg2qj5LmZuoKmCOHPQqvxFhlJiKcPtUyIBtpi2jb6iHhUmmTIr+PyT0m?=
 =?us-ascii?Q?Q+sj0ZCLJ9L0HTmOm25POKsTWevGkvpy25Vht5ezKB1VO1mFUo6vJ0nMWugt?=
 =?us-ascii?Q?uYu4zyBOZYSPj8Euz31pQBVKWNSlTn+mmuqiCKeElWJiBI/UycQ2b0cmXYjM?=
 =?us-ascii?Q?LRrZh1kkMCHaOzQUdeOxYeJuMM+o44lBSp9QKA9JUsYn1h2Y+I4fy1DfQt8r?=
 =?us-ascii?Q?JfBl9VCRKvhkt1VXocsCrzgr/4VN+CYJl7FLujooQh+gwJ5Tw8r/do3vkkkj?=
 =?us-ascii?Q?r5esPZb7bLYotvuAGCIbNbMHeikJZAiXmLn3n7Uj/lsN0Ys3ddF3O5Du7ob6?=
 =?us-ascii?Q?IyXrZhvS2sK1bKLjSGElhVt1bMwGodF0vGrYcH8QJfRzeAVUVVljYmZ7+cqK?=
 =?us-ascii?Q?u1FnRUc6S7npZxZNIUIkjs5hBFwjytMcBCvq7rUfQXO16X1X3pB8jXRmoZuF?=
 =?us-ascii?Q?nt9nGUxQ5XcjErEsr+qX3cKG8wrL5rFYLQmyij15Bu/n2V59L8HnEN2DqJr4?=
 =?us-ascii?Q?JBjuSYVRfZLaU2t6IGoADjTKn5Nh1Il85pfo4PuPOFn0tt4omHX6zypFAej4?=
 =?us-ascii?Q?Y1qt4mOXBZmju3tUmIFmhvezU+sKrUjh0ywd6Pz0RIEpANri9IV8kzQaKh1X?=
 =?us-ascii?Q?+VcBW+S9gPwlppjFGEuTagbkS9F9lNh37x78G7cSmEUP0IFTJHUyCQ+BiLda?=
 =?us-ascii?Q?vSWpA3C2iy3LtjUcloZXwj35zadZhaCjVXs8WyW/NE/LPV4a5jmbGREs1YeO?=
 =?us-ascii?Q?bw/Sda3MbMzfAX+2h5vTRmc438ovcKnK0wtE6DebTwoJSttRF0KvqeNY7MY9?=
 =?us-ascii?Q?nGRCBEr/+N/Rvztk/dPUi2GXhwxtl070Y0OMfmWAW/XSVH5QM9gkvtNhFwfF?=
 =?us-ascii?Q?Re35eI6CJM3AdE/qxpOZBiyhDRFgnU9mZkucyoTv1GvAfPu7W6zSwT1UNVb8?=
 =?us-ascii?Q?g0V9lNhcZWaHOvbHr3FoOH5lxhAobW5Ldm/ju3cxMzkyXa/pKJLWK5srtbgU?=
 =?us-ascii?Q?0yYcA0yXO4z/51h0wnGWMK0jWEPs8T3mTG+NIw9wwECBCe2Fhr8HdJlr/u6R?=
 =?us-ascii?Q?GuccrEGnEI7iSCuSPcuvgqIQ6gJWjY4wSevRXrY3hRhl2ZTFtb/MCWPMQbjl?=
 =?us-ascii?Q?V37dHXd+eVIZPpOb7trqU1ITAMe6R6shQCwlnXdPm62rnqoUHc+efWk1IRRS?=
 =?us-ascii?Q?zZ3x3cvn+hku+/bTljQgci/+UkYaK2HHSSiLxy8iv5yKzbDae2usvdEG8JO5?=
 =?us-ascii?Q?x+irrbl2Woffoe1g9mk4NXR/V8WBqCGtmaE9SG3a3/KWWDSwYzo3FaZ6otLS?=
 =?us-ascii?Q?eSQbG//PNBR2LJk64LqDelHe3o3DEGs2/6acaZ9BTWECq0MUA20eV6V39NAi?=
 =?us-ascii?Q?1Fb83MsAQc0xaGELKsZ7xeC6/EXv+caMosyQP7+gwswdLytvmyYdpzRO/6gk?=
 =?us-ascii?Q?06bMJdn9sgzUtL72EsdqWCg0pHoPDFjyk5lb+jNzr02xoC22zUG+ITZWKBag?=
 =?us-ascii?Q?QC8VFkGtrIUixZJo+O48FKqpH9j9IQOH+ZOcrZF/Jy6vOqkOf/zmgkHfNpuo?=
 =?us-ascii?Q?thtW0qIbrQA3cGd4XuS9Ev1SSck=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c11522e3-3241-4b4d-9e73-08dafdce75d7
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 05:47:20.9439
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +43JjAKZf4nzlB8/jWhvD0SiNBnEFn22+qHNAP6vGWP/qPzSJwvUr9N3fcgwALPYFDxf/8UTbywjRPZBHahB/Wq2eazxdGHndioTmuNIDDY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_214730_854886_8864D2FF 
X-CRM114-Status: GOOD (  13.13  )
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

The VOP2 driver has more than one video port, hence the hard-coded
port id will not work anymore. Add an extra parameter for the video
port id to the rockchip_rgb_init function.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
v3:
 - no changes
v2:
 - no changes

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
 drivers/gpu/drm/rockchip/rockchip_rgb.c     | 9 +++++----
 drivers/gpu/drm/rockchip/rockchip_rgb.h     | 6 ++++--
 3 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index fa1f4ee6d195..5d18dea5c8d6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -2221,7 +2221,7 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
 		goto err_disable_pm_runtime;
 
 	if (vop->data->feature & VOP_FEATURE_INTERNAL_RGB) {
-		vop->rgb = rockchip_rgb_init(dev, &vop->crtc, vop->drm_dev);
+		vop->rgb = rockchip_rgb_init(dev, &vop->crtc, vop->drm_dev, 0);
 		if (IS_ERR(vop->rgb)) {
 			ret = PTR_ERR(vop->rgb);
 			goto err_disable_pm_runtime;
diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index 5971df4302f2..c677b71ae516 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -72,7 +72,8 @@ struct drm_encoder_helper_funcs rockchip_rgb_encoder_helper_funcs = {
 
 struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 				       struct drm_crtc *crtc,
-				       struct drm_device *drm_dev)
+				       struct drm_device *drm_dev,
+				       int video_port)
 {
 	struct rockchip_rgb *rgb;
 	struct drm_encoder *encoder;
@@ -90,7 +91,7 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 	rgb->dev = dev;
 	rgb->drm_dev = drm_dev;
 
-	port = of_graph_get_port_by_id(dev->of_node, 0);
+	port = of_graph_get_port_by_id(dev->of_node, video_port);
 	if (!port)
 		return ERR_PTR(-EINVAL);
 
@@ -103,8 +104,8 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 			continue;
 
 		child_count++;
-		ret = drm_of_find_panel_or_bridge(dev->of_node, 0, endpoint_id,
-						  &panel, &bridge);
+		ret = drm_of_find_panel_or_bridge(dev->of_node, video_port,
+						  endpoint_id, &panel, &bridge);
 		if (!ret) {
 			of_node_put(endpoint);
 			break;
diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.h b/drivers/gpu/drm/rockchip/rockchip_rgb.h
index 27b9635124bc..1bd4e20e91eb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.h
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.h
@@ -8,12 +8,14 @@
 #ifdef CONFIG_ROCKCHIP_RGB
 struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 				       struct drm_crtc *crtc,
-				       struct drm_device *drm_dev);
+				       struct drm_device *drm_dev,
+				       int video_port);
 void rockchip_rgb_fini(struct rockchip_rgb *rgb);
 #else
 static inline struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 						     struct drm_crtc *crtc,
-						     struct drm_device *drm_dev)
+						     struct drm_device *drm_dev,
+						     int video_port)
 {
 	return NULL;
 }
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
