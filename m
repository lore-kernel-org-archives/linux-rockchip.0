Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8B61C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Af7DUSOKt8fD4OhE/NasNwJFWEric/3JpsepT8hlS14=; b=sPiU7MOJnxGzey
	EDMCSGXpsQdKcVwDKQldhyPBk7X9cRlaEqIOjRr4xBDhTN+gGxVSnwf8NKfk05VW3DG6ZKV2SuOts
	QmzZGiZEE+9VhhM8NqSGWjJ8BaH9Ou0FD+rnAjtl52CC0cmSFQGEZSGDHNRJny/ccNy8POdME2lcO
	Z63euu0qcPPdnsWjQk+LdRH8Z8NWCuqJkE9v1Tw5SsASd9L1fsoaQ8xPLzSf6UVGqCqQRFSVZ+Qgx
	6ahdAr6XtnrqOFJFKMeVHw34OC7tXns/3tiu8H+JGuskUBddjUO1rH11037EjGwkYXlqGtpQ+ODa4
	1z5BqOOdizM/QEf93byg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qbp-002soc-PU; Thu, 16 Jun 2022 14:36:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaa-002rfE-Ay; Thu, 16 Jun 2022 14:35:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=iTADTC41E6DONZdlcFN/gxhcVbEVFbHK0N8VRx+RW/0=; b=VW3BOZk3falkbOTYlFKc7jm2rg
	rxN+XdX2fMlW9qbfEYS9JkLMzaeMoWYaCCSCWAHuzY2Fvk2BqD2V3pl6RUq1FQ0v9DMrSX3jIHaQc
	eBk1yUfT9g2KfZIzymZHD1SSPVgsNe1x/LDrSX6NsJ3/DZJA8WGTuqVBi0OdhQc9pWUOI09R6ygs3
	FWB1qOwtgw/7H6Lr9IXkaN3pcVgnhTIWmTM118DzEJpUx0C9eq3eEyE1dACpr5wwf7RzMiG0VqaCJ
	2r/E1mtQ3m6NIJmMKE+XBKxrJUri25DkT31U6ENvWS2Hbf4MJxpjQhDgi1VnZXAYc9qEl/u/kEwZh
	nDe3wGxg==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaR-008R3A-KS; Thu, 16 Jun 2022 14:35:12 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC0DJU015765;
	Thu, 16 Jun 2022 09:34:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=iTADTC41E6DONZdlcFN/gxhcVbEVFbHK0N8VRx+RW/0=;
 b=CtEU1trLhTtJHQ8TJeXZ0N5NndFZa3sPzSI36KjKJNfIQjsRVDJufzx/xYkisOJ01YuE
 3BdNzsJlyh7x1q9n7yOppnybpHDFpMpP5uzVOTxKAT/14+aE9yAcdo1nCEjvUtDufCSC
 5FnHM5DVx3HqormEmYNx4n6W9fPpdM5PqUIyFI4e79kGImqlE5PgzvB5exrWWxk1+rAj
 jJtllzg25iBe6E2QeJofe6K11IEVKaCIEMaHCksXTJruRYhqf8iALv7sLx48ByHEXR/m
 NxeZ9vFs7NLdc+FWDoLVDWzNA+XH9rbL/ArNgD1ENcNCbS6BBu5WT8iG1F9ytcsZAG4W nw== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3h-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:32 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:30 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:30 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 121E4468;
	Thu, 16 Jun 2022 14:34:30 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <kuninori.morimoto.gx@renesas.com>,
        <mripard@kernel.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
        <vkoul@kernel.org>, <nicolas.ferre@microchip.com>, <nsaenz@kernel.org>,
        <shawnguo@kernel.org>, <linux-imx@nxp.com>,
        <cezary.rojewski@intel.com>, <pierre-louis.bossart@linux.intel.com>,
        <linux-mips@vger.kernel.org>, <linux-amlogic@lists.infradead.org>,
        <daniel@zonque.org>, <srinivas.kandagatla@linaro.org>,
        <linux-rockchip@lists.infradead.org>, <krzk@kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-sunxi@lists.linux.dev>, <linux-tegra@vger.kernel.org>,
        <linux-omap@vger.kernel.org>, <linux-xtensa@linux-xtensa.org>,
        <peter.ujfalusi@gmail.com>, <jarkko.nikula@bitmer.com>,
        <heiko@sntech.de>, <jbrunet@baylibre.com>, <kernel@pengutronix.de>,
        <alsa-devel@alsa-project.org>, <patches@opensource.cirrus.com>,
        <dri-devel@lists.freedesktop.org>,
        <linux-rpi-kernel@lists.infradead.org>
Subject: [PATCH 02/96] soundwire: intel: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:32:55 +0100
Message-ID: <20220616143429.1324494-3-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: xxJ1aLEDe60DOgwDL7K9-ZJ4hQoG5LP1
X-Proofpoint-GUID: xxJ1aLEDe60DOgwDL7K9-ZJ4hQoG5LP1
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153508_676161_BE5716F0 
X-CRM114-Status: GOOD (  15.22  )
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

Change the legacy DAI naming flag from opting in to the new scheme
(non_legacy_dai_naming), to opting out of it (legacy_dai_naming).
This driver appears to be on the CPU side of the DAI link and
currently uses the legacy naming, so add the new flag.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 drivers/soundwire/intel.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/soundwire/intel.c b/drivers/soundwire/intel.c
index 505c5ef061e3f..0268fa527c0c0 100644
--- a/drivers/soundwire/intel.c
+++ b/drivers/soundwire/intel.c
@@ -1097,8 +1097,9 @@ static const struct snd_soc_dai_ops intel_pcm_dai_ops = {
 };
 
 static const struct snd_soc_component_driver dai_component = {
-	.name           = "soundwire",
-	.suspend	= intel_component_dais_suspend
+	.name			= "soundwire",
+	.suspend		= intel_component_dais_suspend,
+	.legacy_dai_naming	= 1,
 };
 
 static int intel_create_dai(struct sdw_cdns *cdns,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
