Return-Path: <SRS0=hTL8=M3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E16C6C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 13:10:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ACD6E6052B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 13:10:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ACD6E6052B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePljIZC2N3ZoAIXqJB7lY8S0kdHt1YFRI4iDIHiQMXs=; b=lkbXR5BO1ZE9w+
	/fZGZN22v6Wp/XnX3Q4ZPRHFrJUVtsbc7eZVkCVJgUYmxPl5GJ/T89FT4KrIJVKUJVuvQ9i1fwLRv
	dbCIzCyMJOcTqUkiUw1HC/slMPuLt5Vmgii4WKZNlIKAcXHvggnV5MppR59pSEZpD3GLkISXdYQ/n
	uGgHRHJOjWtvdvFW5fet27gRZCxKJ+tE+a8qoOBt7Z2nowPh2qBwq2QAHgWF2UiyAQ+pGfvMVzW7q
	YiFqtgADq+wvMx/whv7/UOFMofWbIhDLXjMtKAtpQuYZ+Km9Sy1Aq6ronvUsSNvNdkR4H86kPr82p
	7KAF2OJ0SvlAqUutrkrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBGeq-0066N7-S0; Wed, 04 Aug 2021 13:10:04 +0000
Received: from mail-am6eur05on2083.outbound.protection.outlook.com
 ([40.107.22.83] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBGbo-0064ze-OQ; Wed, 04 Aug 2021 13:06:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BhwDAtLtALiymEAkXqPatSTwoko8vAuaQtJzjrzB0+GZYE5U3cOuaCoPPMVPy+Hq1XVdHus88lLHMv5HrINpk/HEzGgx9xvpuk+2DD41wTYUBoFDmlxOg/+dtl5Sl0NNEEL9Gu4S9NJQWQeVoALD80DjpHyUbDjrHPxtrXCKwrwOtKTHjsLi9rW+zXhHI6kTOU8sUrCIYeH0X7LKG8k6P13IIlJNBmpMvqo+LZDT5j+jtARopYTGuhb8kTvOOLeLjprkcJMsfNWNyMZhI5b5iS1plVfBZJCxMfu6p7tUfqIfK+EJcz7sWNrP7Pc06ZlmxV0ITvwjPZbPexBIHc42jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=znSrPeijcnI5IKh1hIE1EdN/xozHnqzp7roxX8Z/NMc=;
 b=nUdXwifF10khRRWPUSqLoJE1deMhzVCOLJL9fL20wSUcYcuAXm3Tdk23ahrpOT/iWBW4hpZzcPQoa6y4e9EkvW1jIV3Osssni0ovnH/SAa7/NxWMluz1VK2fFOOcF7OpryUa2vBWBq1Zp50556Whv1OAn/y5J6AbIvuwMn1jCXZHTYpmnyBjGhlsyfHXs+7KtUCX7I9ccaV8ibexqAf+sLuqMFhnXqwehLJPATzhRV6bVu0D9pRtc2cto4mqfxeldDFdHueeLR7QsO2fHiqqY29XVOqcv4ulXmVTcOw7DwDkxm6Himay2Vq2sjpJnM3q972J9lES9fT6ZnC/uB65UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=znSrPeijcnI5IKh1hIE1EdN/xozHnqzp7roxX8Z/NMc=;
 b=ril/4fgBuUXhVeJwDLr36uEQcBNDUDuZazQ/IFRzi9LNf7E9vDCaafQuJNjNntAoh9o0icR18qhKDeUVLMWVejRNsyoVdv37BplfLAyjkdJO6F8DzXtnNqj+SfTzRn3Jy4ZJlBJ5/69xIuZuQ4CAkvWfqeSJ90Y9OOdNb3fWZs4=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB5401.eurprd08.prod.outlook.com (2603:10a6:10:f9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Wed, 4 Aug
 2021 13:06:54 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4394.016; Wed, 4 Aug 2021
 13:06:54 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Simon Xue <xxm@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Lee Jones <lee.jones@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Zhang Changzhong <zhangchangzhong@huawei.com>,
 Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 5/7] arm64: dts: rockchip: rk3568-evb1-v10: enable io
 domains
Date: Wed,  4 Aug 2021 15:06:23 +0200
Message-Id: <20210804130625.15449-6-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210804130625.15449-1-michael.riesch@wolfvision.net>
References: <20210804130625.15449-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: AM4PR0202CA0012.eurprd02.prod.outlook.com
 (2603:10a6:200:89::22) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 AM4PR0202CA0012.eurprd02.prod.outlook.com (2603:10a6:200:89::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend
 Transport; Wed, 4 Aug 2021 13:06:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 605e38f8-94a9-4f5a-f4b5-08d95748bb6f
X-MS-TrafficTypeDiagnostic: DB8PR08MB5401:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB54015419138A87C8E309E9F9F2F19@DB8PR08MB5401.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: saP+ceFqB60ju7fdV2grP5H/RUnP5ihh7i/vnNNdHYHTCZb9JSQHYbmODvTv47V3ce90HKZJZhsmuV5dVozgf+jR0mvLWwYIHw7hPuy7SIEL9/tZTh4nHI3FlTEIt9PSJtYUb76UtGDzECnMLD8j5gMB6gkqGtcnDmED1IdODbQe4wZm0vj0F3IEGmcB0Lunl4PkBvRSI/IuBnwx+joY2rSpwIKAARlm7x08HeVIeJ3n+WkkOYuHy9M2YwGA9gzt2FPCxRr8MEZfJu8iTfc8+T+DtLLzXkKNvcZDS39LI0PteAgRcZjHChi8eiarZzUiAsSivU81IUC/Btxf0Gj3OupQh0LCZR+UPtxTS7Zzr87JZeJtvDx9Jgdd2B5nIiy5M3cSsqGEKhKZEUC758TFPurMyvLCZe4iPYMTP4rxjFQgCksHYNgBikKh8eMFEiqeymmw17FzoCetGQuPw6AuDoRUqQzduHgHCbsouwQh1/45F+18y1JgTL2OSUWYLTEZv3nk8NpOQTqMtX6MMuRPu0bcIlL2a033wV6XmFxys9r5e5qB2i003Au4CS/zdj/cQ96bHX0TxgVmTT+PM8Hn6pnpIGIyx6hc9RLpOSYuskv0Xmmzt4549r2LYtotrSp/aUPvjXEcohXaBANjqGKmZiG0VvQc99rfnr9af5qLSAhZlFdcoIVE3ph6TfCiOvZMqhI8Obf/SaUwSPVfy2+mTA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39840400004)(396003)(366004)(346002)(136003)(8676002)(186003)(956004)(1076003)(7416002)(478600001)(2616005)(2906002)(66556008)(8936002)(66476007)(66946007)(52116002)(6666004)(54906003)(36756003)(38350700002)(5660300002)(44832011)(316002)(6512007)(38100700002)(26005)(86362001)(6486002)(4326008)(4744005)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fDQDbEea0+aiBSvvkQxO6IoUWxFtDx7rcqdL3hM8WDQ7nc9pu+ELYYkFxnkj?=
 =?us-ascii?Q?teL334J7QVwHchZaIXeXrEJ43oTwdiIt9kRVRQ+f0EoraVJ56LbVrZG7vq04?=
 =?us-ascii?Q?9dZUYM6PwdX2oKCwOurjF9bia5pGx+tcvC6nArOnw7gUHX6C6V5rR1glMv0e?=
 =?us-ascii?Q?wa84rXagQwqDfG6lU4WYkuvMp1FhM4TBLd0glAqvDLsjsK4HkfpWzw4RBsI8?=
 =?us-ascii?Q?PVK33Fk3/EiTlxc+eLxGcKmW5yD7WWz3bl04wy08JTyWd20lzGpLD1b3K06U?=
 =?us-ascii?Q?lSsYQFF9uaXvg3piH29izioV2ErXTJCiZi7dVjoexVVC/DePia3WND0wGlG0?=
 =?us-ascii?Q?KpCYuYVJ5Xtsa1lJVJa/j5fPfMPeNxOA3sa+vblcFm6612rlThQld72kXRiw?=
 =?us-ascii?Q?4c1ug+NgJWH0sN5LBAq1yNZvw//sZfIgI/vA1ab2peOgUiakDmYGuoRxpPJi?=
 =?us-ascii?Q?p9QbtvlKeI5DskQdHnV0XEzjVAap+E4vFSd60IZG/Sm6YBbU9S8AT34LuAJZ?=
 =?us-ascii?Q?8E3QXN91y5NgWlqbCfZvNUbf4LjDi3dgWsX/VvTvxG62yRpxq44lVIMQ6GZp?=
 =?us-ascii?Q?+l1NK0rfWhHmJAhO7Hyu6PUdWBkAcFgJwetezdelfi1ZTNMkCNqXYJzID/nE?=
 =?us-ascii?Q?oFb+mIOy+gQMVHIMcr9eYMh0MwBj21mmTvYUwCyYSRXyBDXCaELADVGNijl/?=
 =?us-ascii?Q?0kiGfchpS4j+e4w1HPWQ/Uopra2Nf4dY9HDIc7HHWt1dptae+CRz3ydqFLwr?=
 =?us-ascii?Q?siljWguv+fbKiA714URsR/RQhyA0k/EKQ4Lof2LGFJ66ebbPCn8L1i5LCr1w?=
 =?us-ascii?Q?zaeI/aaB1ewA+8XSiOiTM4uz6oz68P6eYLXdHuDiHoo+thkeGnAK6ghyNLRF?=
 =?us-ascii?Q?OX8qDY3O8kYW4FZpFapfxtGeeMU4N6JM7D7Wh7mMHTLvhEqf42WkEyUjK9ei?=
 =?us-ascii?Q?CBb/S585LxEv6A2TDeeP38SqrHkXQU0SowQ4Dwj0zbLxW3GEqU/gK/BoLd/b?=
 =?us-ascii?Q?iszBB739ITPma1ntxte2e9X6FBaO3RCDwEntAYDYlWI5vjroNllSsKpjAUke?=
 =?us-ascii?Q?jYZsOFNR1Wm8HSqp5e1L1pPcd6VSY7pVQ2p4KBZ9YffX6/j11zkbdhiW7mOl?=
 =?us-ascii?Q?DfTB4qsdX5S1KcnW+spOwhtwXGTgRH2eRUgAatmiVlVIVUTW47tatU+rGjZx?=
 =?us-ascii?Q?qe031fLhupExJDVjXfmZTZpPiUQKRAOhF2XMxOeOPiDwwQStL/hYyh/9S4eC?=
 =?us-ascii?Q?A2Rqx8ohvBEsKZV91z0HfW7aM/fzvDfCn/5GG2kyJiqU/FMNSTqXUKdZV9qH?=
 =?us-ascii?Q?ySSoGBlhUXJY2WlTl5X9AEfb?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 605e38f8-94a9-4f5a-f4b5-08d95748bb6f
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2021 13:06:54.5213 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O0nig2DL2iKpJdyOG1VansvDExZujpxt92xw5oLgqhbeDfpY7MOPGfr8n5vw4vLIgaORYwgAWQ/31bwG1sQXHdyerRxbN+v48OvSWdkwCQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_060656_823570_42758288 
X-CRM114-Status: GOOD (  10.30  )
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
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index f682144a1892..f3fd4a6813a2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -330,6 +330,19 @@
 	};
 };
 
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio2-supply = <&vcc_1v8>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
