Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C937AC02194
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 02:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Knv/nNp76nZNafE5TfqfcWW61q3j1h/ENT5ygIuYMmE=; b=QyyapWV50cf7uU
	SyFJOm/U/4Owc0E4YT2MaSiN51jZorUFVbaQhuxsFdeNttTdkJQ5INLYoRnbuIG79h6AfK7vhXnZO
	Fe8ZAiKRhjdWAvASUzJVYg+GMtRNJE96WAPftiuVtsNBLUcHC3fexN7na1WRQcqIbV8l1u5TwOCtt
	UmkUQyKlOHRtk8UUg5N+QDLOZZ4Ak6Sved3cKjuAcbCicSkgibiZ4O5PZ1pQie+LMwdlvEded25ht
	4VTfK5uFvcjtws88i4Rfke2dqOeeug3bY4AX8OeF13GdsSe6QhKQqWvL39Zvid2qNvSt6SmewUIHt
	W6cyIksJ1qs7um8nsi/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgDyi-000000083he-23uY;
	Fri, 07 Feb 2025 02:20:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgDtt-000000082qm-1wUJ;
	Fri, 07 Feb 2025 02:15:26 +0000
X-UUID: 5efdf4b6e4f911ef9048ed6ed365623b-20250206
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=vg8WFbyMJiNO5AAeHrQuZxOqAvtJbm1ZvmpUw5hxxEU=;
	b=NjzQ9r5C5KFURb2jOKDfXSbtLDD0rTHV1aGFLQ1KkJVRVcwYTHeT9N5sxrUx6Sra+0VOUkcNddDBIdRUlwfA1Pc8Bd6LbLyhxBGgQIjXdXb3BrJeNhDMIqWqZ4guwk5AkkFPcxkxVab+v/RV8PWByNhrofegq2u99Exuf8eI2rk=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:50921be7-8452-41be-9c22-5ed2f554a4e8,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:6c822b3e-da39-4471-8a46-23da908abe46,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|50,
	EDM:-3,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0
	,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 5efdf4b6e4f911ef9048ed6ed365623b-20250206
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 28725235; Thu, 06 Feb 2025 19:15:16 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Fri, 7 Feb 2025 10:15:12 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Fri, 7 Feb 2025 10:15:12 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ABKJgX1gBS8sEsgWOiziAADdpw1zNZ0JYhx6QiYHBC5pCSip7v0TwGT8RdIuneMYvr2z0XuwSnImyv0XgoGHOq2hrT0mMEZiCKb+3KZBWhUUaKxWWy4pezgFAck5EIruakDa9VzZYZo1UnbQ7+MnmaN3XtZuI9qfFHRaz25Gc/JLZD0F4GEPxv+l76P9NrA+rpAFEzWmA3opJtzwLmtgfRPIJwhbeV5jRQlw/G/p9RRVPusdxk6PSYux7PaK89oWiWek+A10FTk+wGXNxmQwHjavNSq3bfyvWgwqyBei7J4iEhfQJkQsOkh9m4RgVRlwSWxZx+M+xP/jchaw7sBV8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vg8WFbyMJiNO5AAeHrQuZxOqAvtJbm1ZvmpUw5hxxEU=;
 b=IYOum4Up1prAjhR5IScbS3zGKefNDIu/eoOWVyRZvKTMJVlrUM5rglKHoYQjeJX5BgTHleRHMd0MsXLtTtqliJxnZqDFj6Fuxs9xk2oqKzBVNb5NnJeKqjW9NKJGW5vUv0mbnirXfHtbiRPKADfoNoCuY44jVeu0J17rtt33yjOFwVO7Bu4fnwwLMUzifW0IV9lX0yJU3lAFOtjHjWkYfdj3YNNmyEB8kZUXHDY96B0zQKo8CSO1y4ugYavP4Idm63765PAxNUkp4ftyFEzIxXM6UOOEtflYT3tTGW10rpQZzlJlxC/iogMc04AF5uRBGnDktWkQgTOpPOou8X3MTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vg8WFbyMJiNO5AAeHrQuZxOqAvtJbm1ZvmpUw5hxxEU=;
 b=fRoUqnq/tTXyjZQp3ZrHZSdmO+xQCDwrmOZDGp/jFu16/0ZhkvqDn+rZ0EqQ34g1sC1tmnP+XDdMT+nfe2J1czXvprKMXQQk7LRsRMqvaE8/mx3YixgM9zfGskpznpkMnSOC8xa2BgTOOjsI0CTP5mE1TaJDLLKJlPEOJ9o0W0o=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TYZPR03MB8728.apcprd03.prod.outlook.com (2603:1096:405:66::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.11; Fri, 7 Feb
 2025 02:15:10 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%4]) with mapi id 15.20.8398.021; Fri, 7 Feb 2025
 02:15:07 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"raphael.gallais-pou@foss.st.com" <raphael.gallais-pou@foss.st.com>,
	"mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
	"zhang.lyra@gmail.com" <zhang.lyra@gmail.com>, "andy.yan@rock-chips.com"
	<andy.yan@rock-chips.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "kong.kongxinwei@hisilicon.com"
	<kong.kongxinwei@hisilicon.com>, "alexandre.torgue@foss.st.com"
	<alexandre.torgue@foss.st.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, "mripard@kernel.org"
	<mripard@kernel.org>, "andrew@codeconstruct.com.au"
	<andrew@codeconstruct.com.au>, "heiko@sntech.de" <heiko@sntech.de>,
	"jonathanh@nvidia.com" <jonathanh@nvidia.com>, "shawnguo@kernel.org"
	<shawnguo@kernel.org>, "asrivats@redhat.com" <asrivats@redhat.com>,
	"philippe.cornu@foss.st.com" <philippe.cornu@foss.st.com>, "stefan@agner.ch"
	<stefan@agner.ch>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"abrodkin@synopsys.com" <abrodkin@synopsys.com>, "sumit.semwal@linaro.org"
	<sumit.semwal@linaro.org>, "corbet@lwn.net" <corbet@lwn.net>,
	"kernel-list@raspberrypi.com" <kernel-list@raspberrypi.com>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "mcanal@igalia.com"
	<mcanal@igalia.com>, "tiantao6@hisilicon.com" <tiantao6@hisilicon.com>,
	"jstultz@google.com" <jstultz@google.com>, "mperttunen@nvidia.com"
	<mperttunen@nvidia.com>, "thierry.reding@gmail.com"
	<thierry.reding@gmail.com>, "yannick.fertre@foss.st.com"
	<yannick.fertre@foss.st.com>, "baolin.wang@linux.alibaba.com"
	<baolin.wang@linux.alibaba.com>, "simona@ffwll.ch" <simona@ffwll.ch>,
	"airlied@gmail.com" <airlied@gmail.com>, "kernel@pengutronix.de"
	<kernel@pengutronix.de>, "orsonzhai@gmail.com" <orsonzhai@gmail.com>,
	"alison.wang@nxp.com" <alison.wang@nxp.com>, "marex@denx.de" <marex@denx.de>,
	"xinliang.liu@linaro.org" <xinliang.liu@linaro.org>, "joel@jms.id.au"
	<joel@jms.id.au>, "rgallaispou@gmail.com" <rgallaispou@gmail.com>,
	"festevam@gmail.com" <festevam@gmail.com>, "dave.stevenson@raspberrypi.com"
	<dave.stevenson@raspberrypi.com>, "yongqin.liu@linaro.org"
	<yongqin.liu@linaro.org>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "alain.volmat@foss.st.com"
	<alain.volmat@foss.st.com>, "hjc@rock-chips.com" <hjc@rock-chips.com>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>
CC: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
	"linux-stm32@st-md-mailman.stormreply.com"
	<linux-stm32@st-md-mailman.stormreply.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 04/12] drm/mediatek: move to
 devm_platform_ioremap_resource() usage
Thread-Topic: [PATCH 04/12] drm/mediatek: move to
 devm_platform_ioremap_resource() usage
Thread-Index: AQHbeAokuR1OaQhj1kmu6VdGHYolabM7HCAA
Date: Fri, 7 Feb 2025 02:15:07 +0000
Message-ID: <456d92e10e8fd8d58cd524878902790fbc789850.camel@mediatek.com>
References: <20250205-mem-cocci-newapi-v1-0-aebf2b0e2300@redhat.com>
	 <20250205-mem-cocci-newapi-v1-4-aebf2b0e2300@redhat.com>
In-Reply-To: <20250205-mem-cocci-newapi-v1-4-aebf2b0e2300@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TYZPR03MB8728:EE_
x-ms-office365-filtering-correlation-id: c19c93c2-cfd7-42d1-41d0-08dd471d3dd9
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014|38070700018|921020;
x-microsoft-antispam-message-info: =?utf-8?B?L0t4dE02K0RuT0d4dFl3M2NHVWRtZnMvb0JmbzczM2JSOFFXelBJRkNpL2ZG?=
 =?utf-8?B?RFJ1N0IxMmkvR09KUG1UZ2NUTWd2d0Jpai93ZW5oS1ZUN2txT3BoQjkzeUR4?=
 =?utf-8?B?RU1maElLMy84MkxteDRRV3Z3bEN3ZW5HeEk1L3BLR2pRb2lXT1JrZXk2ZElo?=
 =?utf-8?B?NnBocEVpaS9EWEhYV3JFL0kwUVFNL3pNZmdYenFPVyt0Zm0waVdDYzV0WWRZ?=
 =?utf-8?B?akFuYVZwa0M0bFBmek1RbEl1dnBCUlBON2NEODZ2QVQ5NGQvUXdqQlRKOTUw?=
 =?utf-8?B?SXp1MEJ1MGpETm1mMDVFODYxRDJPQ3Z5TmdlRUk4YTJORVdJUytmeWJDbzA5?=
 =?utf-8?B?ekRwZm1DYzVtcjN2V1k5UGlUVSs1VkdaV2hUbURQR0duUU4wMGhaa2gvSC9y?=
 =?utf-8?B?L1Fjbm8xeW5oUE9qbXJtV3VnaU1zVlNtblZWWXVKdjhOeHR0enBEY1crbmJV?=
 =?utf-8?B?VmRFanFHTndld2h2QjdHSWFMZTIvRkU3ekxFMmhOeEZIWWU2amt3a3VHWisv?=
 =?utf-8?B?Nld0YVNhdSs0N3djTWltb2VYWjMyL1ZpdWlxYU93cGFndGZ1L1VRQkFaN0RX?=
 =?utf-8?B?Mm10UmhieGc5dGhNOUNPOGRIVUxpbHFYRXRBbFQ1OEM0Yi9pNDJ4TFY0a3lU?=
 =?utf-8?B?ZEk1ZnFvL3VSdlNlYjZQSnFiOGJjYzB6MGxYU0ZKbk1wdE5OZTZmK2dhbm0v?=
 =?utf-8?B?Z2RjNFZ5SG5YYU9Ib2hnM3lBcmtObUxyVnVrdlJwZ2ptV2FRdnBjN2N6cUFu?=
 =?utf-8?B?bWtaTVBiclp3YStxQ21lY1NQNnFmYWFjcEc0YlVHTzFEUFhuOStGd3ppZ3NE?=
 =?utf-8?B?bmFpc0JQcXNvTkxGUU9sUjFySFNXaGxkd0hvV0dVTitmQkZrNTZ4L21IaDRj?=
 =?utf-8?B?c1daZ3BPTm9lY0NSR25yQVN2dWJ4ams3S2NzUGVQend0Q0V1d0doWktWWWRz?=
 =?utf-8?B?M2ZwTHJ0dTFPS0Y4NFQra1BuVUg5SFpzMVZ0M0VrUG56K1crclVTN1g3YXVZ?=
 =?utf-8?B?VWpNam5kSXd6VFRRaVdmTHdzdXZJUEdXOUh5Y0hPNkdxbGI4WHZ3SndNTWNS?=
 =?utf-8?B?UHZ6NktlNVVOR3MvYVBrcjJ6clVnMFZnY0FHSUNhaTI3YlNVbGdKaTdLcEhR?=
 =?utf-8?B?bWI2WVBmNGx1MCtINCtpeTBBVnJzMm91TkVCQWxxV3VXbDNmenlGWGlWOEJV?=
 =?utf-8?B?SEVmelpQSGVkUnowVC9laDZ4NDNzMU0yWVJVaC84dnRGdytYQmZNSEdMeFhk?=
 =?utf-8?B?QUlKTVNLcVVUSzliVDJpaitDMGhuSWNoRjNSMXVobStOaXQxNWpmaGt1RWx3?=
 =?utf-8?B?T2JVUEkzdy9sQnBFaENXT1FXMi8vekRXVitvYjh3RXhQOWlxTkQvMG9YU2tl?=
 =?utf-8?B?MXQzc3pNY0RsaloxbVg4RExaVlRFL0EwSnlHMExVQUtqRlVuQ3BnbG41em45?=
 =?utf-8?B?eVYrVGtmU090T3ZvSEhZYzNNZzlNbjQ2eU9yR1l3QmRlYkNicW11NWFoemZw?=
 =?utf-8?B?Tk10YTQ5TkU0dTc0Z3o2RHYrUEpxZ1JkcE1rbURRbVo4VTMrUERrUUtwUm9T?=
 =?utf-8?B?OWhHYUFoT002amFkWTVHVHB6Y3dJQms0QksvUGZjUFE3M1pRV0hIaWFCU3g4?=
 =?utf-8?B?T3cxUmZuWUdMM2ZJM2RjMW9uNCsvVkVJWDBDYWF1V0dwTXd3cTFsc3o4RnlF?=
 =?utf-8?B?cWtZczJDOTloZDlHMHdFVXhqajJ0a2hqN0xWa0ZKS05hM3IrdXMrV2Zqd3Zq?=
 =?utf-8?B?NHFwdHJNbHkzWUVLd0xWM3kvd3lIOHJyc2cxL2ozeXV1UmM1dGRualhtU0ln?=
 =?utf-8?B?Y1dGemxabzFtWlYwSHpVSDhwYVRxTmRVM2lBd2lHcys5a0NFOFA3ZjVmTFpU?=
 =?utf-8?B?UUpoWk1yZ0s0TFNmWG5PYjduVGxVZmEvREdwejFtek4wSTNBcVZIbEdjQ3Bl?=
 =?utf-8?B?eVZkK2JkUVcvVHl6bVFtQ0ROV2VuaWIvK05ic2YyVUI0TkUxbW5ocG1oRUp5?=
 =?utf-8?B?VWZVck4xaFhRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlY5VHpXS2UzL2thZ1gvRmc3UGg5Q25CTlFNTkdpWHlVaGZyMHJuVjczSXdt?=
 =?utf-8?B?UTdsZjBaTDN3Y3JIMXMwZjBSbE9pS1FteHkybkplZ1RFM1ZmVUpkR0prNzFx?=
 =?utf-8?B?M1h4U25HUXVBQm1xTFFvTVV4bTQySHg4UWxuaW01WFN2TzJ6RTkycUFoKytk?=
 =?utf-8?B?RGVFT1UyNkNhOXYyY2xDOGpWNGU5Mk93R1pUK3Bha2h2UlJQTGxGM1JUZURN?=
 =?utf-8?B?Y3NuRlk2VHNUdEZvNUdoeUNJVUpLRW9iVTFFNEZzWGZBZHNlak84SGVNak1X?=
 =?utf-8?B?V2NrNUhRdTVnNmVhUWh3ZStta3hqcEgxV1JMck8razlwMjBHQUxSZmkzWE9a?=
 =?utf-8?B?RXVYc3BBZUc2NmI4cVpwNnVOWk1XOFBveTZYK01BRVhrTmlZV2dPVnZHd1NN?=
 =?utf-8?B?SEZGZnJXYU9iR0xqYnk1emNESkJZVldwaHBQbitkdGNLaUJUd3JoZllTR1FB?=
 =?utf-8?B?NVZLa2F2UjZpcW5TMjRUYktGSEhzZFoxODg1UXptRnpCV0VBWUQ0aG0rRjRi?=
 =?utf-8?B?UklQWUpSZElLNGZaL1Y2MjhYc2FMaXhYMklJSVRza2E5eXFVWXloSjZTVTV1?=
 =?utf-8?B?dlhMelhsRmd4VlFtd1NZN01HbW5xMTk3KzZnKzBxNmRXRkZMSCtNUHFUTnNk?=
 =?utf-8?B?N21KU2JtMWZZZDQwVERKOWhYSExCNDlqTGdHRkZjVzZzYVZwdmtobk1ueGIz?=
 =?utf-8?B?Zk1yK3ZHL3BUZUNhRUFxbVZWS1JYY3M5ZlFYMC9zT0toVlhpcWxaeVpLck5M?=
 =?utf-8?B?a1lwTURQZklrV3dEenZEdVVKdWZXclVtZTlGZTdpRUczSGtZUktEcXNQZzlQ?=
 =?utf-8?B?Y2JLL1ZpRHdNRjVRZ254ai8yMmIreFdVWHRkUjBIaHJLR2RqRWIyME84TXpz?=
 =?utf-8?B?SGlJUi9Ra2x5amdsa2ZNdlVSbXhtR0ZOOHFzRGFEdWJmenJrNUdhd0orUTF3?=
 =?utf-8?B?aFFMTEN0YVhVaFNNMUZySCsraGdCMTNRV0h2RHcyUE16cU5iVi9Sa2FhbXRu?=
 =?utf-8?B?NVZOVm95S1FFbHhNY2NiY2xKS0U5NnhuK0lOTTRhZCt5NWgzVm5pZ2lwM0lB?=
 =?utf-8?B?MEdrQjBzWlR3K01MYVRkV1JwSmEwa3F6RjRGd3VSbWttaTdhcjVDaFNYYWZM?=
 =?utf-8?B?UTlEL0ViaE1VWGg1SlVqVVhtazRWb2NRb0tGejlmdWFFVXVtci9jYzlRQ1Z3?=
 =?utf-8?B?anR4MXpJdjBzb2xGd1poSzlXQmJicERRT3lRNnluRHpMRExoRzZ4QmJucW9G?=
 =?utf-8?B?S3U2WFNlYm5yQXBzNXFNNzNyeHlDNEdjUTk1UzdMNC85a1daUFN1dnNQUWF0?=
 =?utf-8?B?ZXJQTUZHQ2JjOTcyMHRIeWVUSWJhNDNZbndLdFlKN1gvYlBKdzNKeW5wTnE5?=
 =?utf-8?B?V3p1eE5xdVB4OUZpU2xPekdJSnZINDNhRG1icElkTVU3Z0RJVjZycTJFVm1k?=
 =?utf-8?B?RXBuTzhHbk9rVGZxRzFhYkF2NzZNOEcwc3NMNkd5YWNLR09GbjRNUFhZM21j?=
 =?utf-8?B?Ykl1S3RkT1d6Sk1HWUdjemdwT2F4V0lISzRyeFNGeENFR3VhbWdKTFQ0K3c4?=
 =?utf-8?B?RVdKTkVwL1gwWUtENklUdjJxNDRYdVRCWEs1ckhGZUNpRHNRSFNlamVEQ0tv?=
 =?utf-8?B?elRpZ0ZIVEh3TFRQNjMxZ1dOOURCeC9CUmJwdnhRSWNpbTNtZDJjK0lRa2ZV?=
 =?utf-8?B?N25QWmk0L1h1c3VzL1Y2U0QvSmRSNCtFb2NnaHhYWll1UkNrYXkxYUVlRTU5?=
 =?utf-8?B?SFVvRHhJZ2YxcEpQeGRaNVBwQXJneTFyS1dBaDJYVzBjWVpFbno5NXN5ZVF2?=
 =?utf-8?B?MnkvbzZxZE1odFF0cmljRUVrNVVaalNwZWZyZ1pESGRDMWp2Y1oyZGhhemxt?=
 =?utf-8?B?WDJ0c3BMWHdySmZoZjFkQytOL3dKNnJSZkRjSVp1dm8rRk9yQ2ZVNmx3L1ll?=
 =?utf-8?B?LzNEc3BIQm9ycFBIdURULzlIUzRsVitQNGpPSnVZdkFmcXVheUhaMmgwaU5H?=
 =?utf-8?B?TENxR3c0MlV6MUpoZWtNYnJIbStXWE1QUStpSXNYMXpNOGhJbWxoaVNDQ0ZS?=
 =?utf-8?B?SEl5TUR1Wlh6TWtoNlZqekpUTFJUSE9JRmhqOXZaY2hmMXBUbkNNMjBHMjRt?=
 =?utf-8?Q?ZksaDtJYTTgLGQRP7nJSdA9Y5?=
Content-ID: <672C8B7BA19CF545B892CCF90EDEF8D3@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c19c93c2-cfd7-42d1-41d0-08dd471d3dd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 02:15:07.3458
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O1xgYn2rvpEtCuy7I1YzeHDRQvTb/KQXzvtI69ZSIuCY1Lht6EQZj37pgdLpxxIPtpNCwEre0J2pyOjN0WKfDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB8728
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_181525_513131_8184C7EE 
X-CRM114-Status: UNSURE (   8.21  )
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

Hi, Anusha:

On Wed, 2025-02-05 at 15:08 -0500, Anusha Srivatsa wrote:
> External email : Please do not click links or open attachments until you have verified the sender or the content.
> 
> 
> Replace platform_get_resource + devm_ioremap_resource
> with just devm_platform_ioremap_resource()
> 
> Used Coccinelle to do this change. SmPl patch:
> @rule_1@
> identifier res;
> expression ioremap_res;
> identifier pdev;
> @@
> -struct resource *res;
> ...
> -res = platform_get_resource(pdev,...);
> -ioremap_res = devm_ioremap_resource(...);
> +ioremap_res = devm_platform_ioremap_resource(pdev,0);

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Anusha Srivatsa <asrivats@redhat.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_color.c | 4 +---
>  drivers/gpu/drm/mediatek/mtk_disp_gamma.c | 4 +---
>  drivers/gpu/drm/mediatek/mtk_disp_merge.c | 4 +---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c   | 4 +---
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c  | 4 +---
>  drivers/gpu/drm/mediatek/mtk_dsi.c        | 4 +---
>  drivers/gpu/drm/mediatek/mtk_hdmi.c       | 4 +---
>  drivers/gpu/drm/mediatek/mtk_mdp_rdma.c   | 4 +---
>  8 files changed, 8 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
> index dd8433a38282a9ba1bcc3a4ddd01dd89738ccb60..39c7de4cdcc16b56a5a1d046aaabaf5580227ed2 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
> @@ -96,7 +96,6 @@ static int mtk_disp_color_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
>         struct mtk_disp_color *priv;
> -       struct resource *res;
>         int ret;
> 
>         priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> @@ -108,8 +107,7 @@ static int mtk_disp_color_probe(struct platform_device *pdev)
>                 return dev_err_probe(dev, PTR_ERR(priv->clk),
>                                      "failed to get color clk\n");
> 
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       priv->regs = devm_ioremap_resource(dev, res);
> +       priv->regs = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(priv->regs))
>                 return dev_err_probe(dev, PTR_ERR(priv->regs),
>                                      "failed to ioremap color\n");
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_gamma.c b/drivers/gpu/drm/mediatek/mtk_disp_gamma.c
> index b17b11d93846f2019d8c4afb294375333e22dc42..8afd15006df2a21f3f52fe00eca3c5501f4fb76a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_gamma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_gamma.c
> @@ -256,7 +256,6 @@ static int mtk_disp_gamma_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
>         struct mtk_disp_gamma *priv;
> -       struct resource *res;
>         int ret;
> 
>         priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> @@ -268,8 +267,7 @@ static int mtk_disp_gamma_probe(struct platform_device *pdev)
>                 return dev_err_probe(dev, PTR_ERR(priv->clk),
>                                      "failed to get gamma clk\n");
> 
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       priv->regs = devm_ioremap_resource(dev, res);
> +       priv->regs = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(priv->regs))
>                 return dev_err_probe(dev, PTR_ERR(priv->regs),
>                                      "failed to ioremap gamma\n");
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_merge.c b/drivers/gpu/drm/mediatek/mtk_disp_merge.c
> index 563b1b248fbbb38ef03bb3e3ceecdd265961df60..b174dda091d3fbd16796e8e128b030fccf5b902c 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_merge.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_merge.c
> @@ -306,7 +306,6 @@ static const struct component_ops mtk_disp_merge_component_ops = {
>  static int mtk_disp_merge_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
> -       struct resource *res;
>         struct mtk_disp_merge *priv;
>         int ret;
> 
> @@ -314,8 +313,7 @@ static int mtk_disp_merge_probe(struct platform_device *pdev)
>         if (!priv)
>                 return -ENOMEM;
> 
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       priv->regs = devm_ioremap_resource(dev, res);
> +       priv->regs = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(priv->regs))
>                 return dev_err_probe(dev, PTR_ERR(priv->regs),
>                                      "failed to ioremap merge\n");
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index df82cea4bb79c472acbb66e0df27fbad3e70bd20..d0581c4e3c999cf865fdd0aaf4c2f38dd404926e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -604,7 +604,6 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
>         struct mtk_disp_ovl *priv;
> -       struct resource *res;
>         int irq;
>         int ret;
> 
> @@ -621,8 +620,7 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
>                 return dev_err_probe(dev, PTR_ERR(priv->clk),
>                                      "failed to get ovl clk\n");
> 
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       priv->regs = devm_ioremap_resource(dev, res);
> +       priv->regs = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(priv->regs))
>                 return dev_err_probe(dev, PTR_ERR(priv->regs),
>                                      "failed to ioremap ovl\n");
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> index bf47790e4d6be5d60070c63c15c75fa201cc4b27..c9d41d75e7f2a3af5820921b7e563da377ce8d0d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> @@ -313,7 +313,6 @@ static int mtk_disp_rdma_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
>         struct mtk_disp_rdma *priv;
> -       struct resource *res;
>         int irq;
>         int ret;
> 
> @@ -330,8 +329,7 @@ static int mtk_disp_rdma_probe(struct platform_device *pdev)
>                 return dev_err_probe(dev, PTR_ERR(priv->clk),
>                                      "failed to get rdma clk\n");
> 
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       priv->regs = devm_ioremap_resource(dev, res);
> +       priv->regs = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(priv->regs))
>                 return dev_err_probe(dev, PTR_ERR(priv->regs),
>                                      "failed to ioremap rdma\n");
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 40752f2320548fbf6c7de96b18e8a636ac9c31be..f298293471de49473dd05973383dc22f7d3b6c23 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -1192,7 +1192,6 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  {
>         struct mtk_dsi *dsi;
>         struct device *dev = &pdev->dev;
> -       struct resource *regs;
>         int irq_num;
>         int ret;
> 
> @@ -1217,8 +1216,7 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>         if (IS_ERR(dsi->hs_clk))
>                 return dev_err_probe(dev, PTR_ERR(dsi->hs_clk), "Failed to get hs clock\n");
> 
> -       regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       dsi->regs = devm_ioremap_resource(dev, regs);
> +       dsi->regs = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(dsi->regs))
>                 return dev_err_probe(dev, PTR_ERR(dsi->regs), "Failed to ioremap memory\n");
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> index ca82bc829cb96446d4d34eeef45848df03bd716b..d729c13590cb5ec176f15b680c262a26b677e6aa 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> @@ -1425,7 +1425,6 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
>         struct device_node *cec_np, *remote, *i2c_np;
>         struct platform_device *cec_pdev;
>         struct regmap *regmap;
> -       struct resource *mem;
>         int ret;
> 
>         ret = mtk_hdmi_get_all_clk(hdmi, np);
> @@ -1471,8 +1470,7 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
>         }
>         hdmi->sys_regmap = regmap;
> 
> -       mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       hdmi->regs = devm_ioremap_resource(dev, mem);
> +       hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(hdmi->regs)) {
>                 ret = PTR_ERR(hdmi->regs);
>                 goto put_device;
> diff --git a/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c b/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c
> index fc69ee38ce7d6a245a7460cfde8de426e83b2e80..7982788ae9df51f1a378d8d538737f38af7299f2 100644
> --- a/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c
> @@ -291,7 +291,6 @@ static const struct component_ops mtk_mdp_rdma_component_ops = {
>  static int mtk_mdp_rdma_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
> -       struct resource *res;
>         struct mtk_mdp_rdma *priv;
>         int ret = 0;
> 
> @@ -299,8 +298,7 @@ static int mtk_mdp_rdma_probe(struct platform_device *pdev)
>         if (!priv)
>                 return -ENOMEM;
> 
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       priv->regs = devm_ioremap_resource(dev, res);
> +       priv->regs = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(priv->regs))
>                 return dev_err_probe(dev, PTR_ERR(priv->regs),
>                                      "failed to ioremap rdma\n");
> 
> --
> 2.47.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
