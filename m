Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8FF1CA5FA5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 14:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUbCJT9SmZAB5Y/Z1QzKOSuNIxgLe4oB2jxuqOOkoCc=; b=zkhgWNWSAH6VtL
	HWAFisOc1uBdP3HQMnDGOwrecbQn8gnBwR1WSi8QCqa7QNm5aoDvKYouI0nqbPrjgXNjHYz4vpyJ9
	oE8pjFMZOjglNCnDuMBn2MVKqXRDS5N6d5DBaHu2g09/fSqKbrnwjovv2zNw4px8vwbZL2bbXcQMz
	aA1Z6T+QCiF8SH86mGX9EnjYu4NCe0aWjSibva3SLyTv+8Go6ZZtz0+8W0pwy1jKj5uaMyEeEQloi
	+kiFCrLadw9leG/Ct5T5iVvT4cT+N1dJO5yOK7wBGGp/yrAUB4ecxskSZ2cYKPVZwinmPwAcFDxjJ
	ibwbC34S0jCtSMdKyqmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBYvp-00000003nvm-1Mbh;
	Tue, 29 Sep 2026 14:35:45 +0000
Received: from mail-eastusazon11012040.outbound.protection.outlook.com ([52.101.53.40] helo=BL0PR03CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBYvl-00000003nuO-3I7M;
	Tue, 29 Sep 2026 14:35:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dy+ICAngjBRs2dIcl4Qk6fqROZTzux9GxJgspRf/At5AGooszQflklcXG92B0xksXx7+pXNpnKWPv02AqD5fcJaBccPsfc85OdcPngOModkx/p7psed/ugOewQBUN6rfSBI5J1LXLYvzaU+llZSBZDNYAqQlSd3IP3R6EWIhCsEeJHN79jl+gI1cdplcuAB+S8Tj9YtYc4/2hKYSrk6Y5W7um5gmbOAT6StcAOqdao8EDnJOJ/kuU0mFw0SLDlFTzNNoMCtaRpE8asAnhUJxi0RvswuSeVrzMeavNwHZZRsqy7nLDQ8f4cYp+pvntZKjKY68Eyrchl5NoH8oxyXGCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JJ3zBmAAYumqBWtZ5z5TrPexjuJJueU1AW0zWeQGirI=;
 b=sIkgsO1M9JvSxABSUWNVSJakcaFvmdSsI6OuPTFj3+a3mWOxIy1vfKnlKbmxcKnqISctqnRHah6womD2IHVt06t+LSZiHS2IilhX6tElKjM/g9pBxFr/M6kCl/FoxiVma4XyRJeGj1oljTmCC6kn1tApvPNSV6ubmPkFUwd8s0AysFs1tNcOzlFhHOrE05dVcNaq7Z7kZrxzXu+4SMU4m6MQEk++Fq6fdz3+vYJBYmV9a7dX98Xrdef8ADzliuXDA5XqzOUfoDs0qa5NRzKXLQ6uTTJNfyeFOKVU2DevTyVwkFM3owk3otOyr0Ig4Xif5A+kmrUBM3dilurklgFiOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=mailbox.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JJ3zBmAAYumqBWtZ5z5TrPexjuJJueU1AW0zWeQGirI=;
 b=NV/6KskUG0/yuojxcIRr61uTnSbBW1g4W+hIqw3qu6jWSrRibt0MOWO2Fi4x97LmRTlTanYOaYyGc3RzgW8BpAJfUDM6BmhpxcQUhBwJ86S1FDNhuCP58ZebnQr5llXQCb1zZmYVHll09VUrrejwpPCL943JRKbTaHF90g/EJqU=
Received: from BYAPR21CA0004.namprd21.prod.outlook.com (2603:10b6:a03:114::14)
 by BN7PPFEE0F400A9.namprd12.prod.outlook.com (2603:10b6:40f:fc02::6e9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.24; Tue, 29 Sep
 2026 14:35:14 +0000
Received: from SJ1PEPF00002323.namprd03.prod.outlook.com
 (2603:10b6:a03:114:cafe::3) by BYAPR21CA0004.outlook.office365.com
 (2603:10b6:a03:114::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.496.5 via Frontend Transport; Tue, 29
 Sep 2026 14:35:14 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 165.204.84.17) smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 SJ1PEPF00002323.mail.protection.outlook.com (10.167.242.85) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.472.14 via Frontend Transport; Tue, 29 Sep 2026 14:35:12 +0000
Received: from satlexmb08.amd.com (10.181.42.217) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Tue, 29 Sep
 2026 09:35:01 -0500
Received: from [10.254.92.188] (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.49 via Frontend
 Transport; Tue, 29 Sep 2026 09:34:58 -0500
Message-ID: <164d00c2-e4cb-4962-8e4e-389ae77af943@amd.com>
Date: Tue, 29 Sep 2026 10:34:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 13/25] drm: Add VRR target frame rate properties
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>, Nicolas
 Frattaroli <nicolas.frattaroli@collabora.com>, "Borah, Chaitanya Kumar"
	<chaitanya.kumar.borah@intel.com>, Daniel Stone <daniels@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Helge Deller
	<deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
	<neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent Pinchart
	<Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli
	<luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Andy Yan
	<andy.yan@rock-chips.com>, Xaver Hugl <xaver.hugl@gmail.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
	<linux-fbdev@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <kernel@collabora.com>, Derek Foreman
	<derek.foreman@collabora.com>, <wayland-devel@lists.freedesktop.org>
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <20260921-vrr-limiter-uapi-v1-13-2fcd7d011646@collabora.com>
 <0226527e-ee38-40ab-a2a8-1ae62013b950@amd.com>
 <VERVf-aJRRKsBOI_3dpScg@collabora.com>
 <8a3b2902-3255-4dd9-82f0-75a7747b710e@amd.com>
 <3cf7143d-7013-4a3b-a831-96c3f125c2f6@mailbox.org>
Content-Language: en-US
From: Leo Li <sunpeng.li@amd.com>
In-Reply-To: <3cf7143d-7013-4a3b-a831-96c3f125c2f6@mailbox.org>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00002323:EE_|BN7PPFEE0F400A9:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a219bd1-c51e-4d58-85b2-08df1e36df0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|23010399003|36860700016|1800799024|7416014|376014|42112799006|11063799006|10067099003|921020|6133799003|56012099006|18002099003|22082099003|4143699003|13003099007;
X-Microsoft-Antispam-Message-Info: GAVbmH6O41RdShvxcuU7nOi8PlOlaYcuEbMIGfgqibxYalFVe3A2FP+aZqa+TmtOgMPj8JD3RK9ME+9RSSGsHB6ZHfMrD2t+JySBf27oadSQPJSohBWeDP5WCG7sTqihXtyY72nPDj7BLWKFLt4I9ITldIsgHK+vzmHM6QQSc9KXIC0rqLayCbE2+sDyjU7o8SxIIKti0j0b1UA+HcYF+2OvG3bHU+k9EgudG9KEOMla46YVH40IUY/vrPOIAYzoX8kYYAq+rVvNjQOuYRT6JtICp2ZTCcU1cw+mDDl1BP43ncC44Sbmv9LhK6iuMsm1/z01CPjmSdnskg/1mTbKcMIuUjEgiic2oHJl6o9iqD/Tcq046y4Y1/v3NAPM9ZlD2BkWOAig+X9r37FbHM+nUF8chinMG/D7hcZhVcyJyLr73m1o9FLofjX2WIwHoRIDQcI03CFI194XpVZD5FBR7mMPvMuQUqAAqXtVnkHkaQcb+XXVUoq4ZoleLhe1UtmAyLraz3jbKZUHz0IUm3VnnFryXKmEYwAft8XKr33H1XsPfBVVTHXTPMQo6mKC98PW2M10mUCmeHoQrsG2ou8Gnm+am/9LGWzOBPVbRVXbb3QlEc1MMk+Yg/rvBce0R7qVeduH0pwGp2CBYfIedAjoRN6dyGoxra7CSV3IInAIUTAPlQma0GYVGZS84ysEsNn3
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb08.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(23010399003)(36860700016)(1800799024)(7416014)(376014)(42112799006)(11063799006)(10067099003)(921020)(6133799003)(56012099006)(18002099003)(22082099003)(4143699003)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: rh5edO2ljQR3ttOp5ZQ5/OiRc2u5UXvuTM4WHZ8YDIrkmIXWUU5E5BArxxJ4r35Mj/HaK4N3a9pYjaVZKOE1tBdROfJBfJwm0l8J8UN66mtkm9qTrzkhHS8mvu3O0Oa3zGsez3rhX7oizmcfEebSp7xvkoWEt9+7fsRaDyUoSut66jK6GLMVji8NGK+6z9YwLT7iDl61Q8vFjGnXLgFmFlwO5ZOHSrumfGJSsqjD429BizlLr+hFBuHY01rDveGKgAfVKiA17dEZT1VpDZgeaVA8Qx9gd89skOHK1Nrsl/AT8l80Cv5Z8FbCeKLggIZ5qBJSO6mK7hgsMkN5Y8tEZikLc0ESdERl5BIxkhCU14uR+HvxhIn/AFC31r4jmD/58+n4rt0mo37xtnaXNbVXHaR6tqIxit5ZJuWMAvM1W9j1UFpjOxZBQwoKOtCKcQHJ
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2026 14:35:12.8005
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a219bd1-c51e-4d58-85b2-08df1e36df0b
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00002323.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPFEE0F400A9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_073541_876600_E58E10B0 
X-CRM114-Status: GOOD (  19.00  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAyMDI2LTA5LTI4IDA0OjEwLCBNaWNoZWwgRMOkbnplciB3cm90ZToKPj4+IFlvdSBjYW4g
cGljdHVyZSBWUlIgbGltaXRpbmcgYXMgYWx3YXlzIGJlaW5nIGFjdGl2ZSwgYnV0IHdpdGggYSBs
aW1pdCByYXRpb25hbAo+Pj4gb2YgMCBpdCB1c2VzIHRoZSBkaXNwbGF5J3MgbGltaXQgYXMgcGVy
IHRoZSBFRElELCB3aGljaCBpcyB3aGF0IHVubGltaXRlZCBnYW1lCj4+PiBtb2RlIGlzLiBTbyB3
aXRoIGhvdyBpdCdzIGltcGxlbWVudGVkIHJpZ2h0IG5vdyBpbiBoZG1pX3ZhbGlkYXRlX3Zycigp
LCB5b3VyCj4+PiBleGFtcGxlIHdvdWxkIHNldCBhIG1heGltdW0gdGFyZ2V0LCBidXQgbGVhdmUg
dGhlIG1pbmltdW0gYXQgd2hhdGV2ZXIgdGhlCj4+PiBkaXNwbGF5IGRlZmF1bHRzIHRvLgo+Pj4K
Pj4+IE5vdyB0aGF0IEknbSB0aGlua2luZyB0aHJvdWdoIHRoaXMsIGEgcG9zc2libGUgcHJvYmxl
bSBpcyB0aGF0Cj4+PiBkcm1fY3J0Y19oZWxwZXJfdnJyX2lzX2ZpeGVkX3JhdGUoKSBvcGVyYXRl
cyBvbiB0aGUgdXNlciBzdXBwbGllZCBsaW1pdHMsIGJ1dAo+Pj4gaWYgdGhlIGRpc3BsYXkgc3Vw
cGxpZWQgbG93ZXIgbGltaXQgaXMgZXF1YWwgdG8gdGhlIHVzZXIgc3VwcGxpZWQgdXBwZXIgbGlt
aXQsCj4+PiB0aGVuIHdlIGhhdmUgYSBmaXhlZCByYXRlIHNjZW5hcmlvIHdpdGhvdXQgcmVjb2du
aXNpbmcgaXQgYXMgc3VjaC4gSSB0aGluayBJCj4+PiBuZWVkIHRvIGhhdmUgYSBwb25kZXIgb24g
d2hhdCB0aGUgbGVhc3Qgc3VycHJpc2luZyBiZWhhdmlvdXIgZm9yIHVzZXJzcGFjZQo+Pj4gaXMg
aW4gdGhhdCBpbnN0YW5jZS4gVGhlIGRpc3BsYXkgbGltaXQgc3R1ZmYgZ2V0cyBhIGJpdCBjb21w
bGV4IGR1ZSB0bwo+Pj4gQ2luZW1hVlJSIGFuZCBRTVMgVEZSbWluL1RGUm1heC4KPj4+Cj4+PiBJ
J2xsIGltcHJvdmUgdGhlIGRvY3VtZW50YXRpb24gb24gdGhlIG5leHQgcmV2aXNpb24gdG8gbWFr
ZSB0aGUgbWVhbmluZ3MgbW9yZQo+Pj4gZXhwbGljaXQuCj4+IFBlcmhhcHMgYSBzaW1wbGUgd2F5
IGlzIHRvIHJlcXVpcmUgc2ltdWx0YW5lb3VzIHNldHRpbmcgTUlOIGFuZCBNQVggcGFpcnM/Cj4+
IElPVywgcmVxdWlyZSB1c2Vyc3BhY2UgdG8gc2V0IE1JTiBhbmQgTUFYIHNpbXVsdGFuZW91c2x5
IHRvID4wLCBvciA9MC4gRm9yIGV4YW1wbGU6Cj4+Cj4+IGlmICgodnJyX21pbl9uID09IDAgfHwg
dnJyX21pbl9kID09IDAgfHwKPj4gICAgICB2cnJfbWF4X24gPT0gMCB8fCB2cnJfbWF4X2QgPT0g
MCkgJiYKPj4gICAgICh2cnJfbWluX24gPiAwIHx8IHZycl9tYXhfbiA+IDApKQo+PiAJcmV0dXJu
IC1FSU5WQUw7Cj4+IFRoYXQgd2F5LCBpdCdzIG5ldmVyIGFtYmlndW91cyB3aGF0IHVzZXJzcGFj
ZSBoYXMgcmVxdWVzdGVkIGZvciB0aGUgcmFuZ2UuCj4+IFRoZXkgY2FuIGNvcHkgdGhlIEVESUQg
c3VwcG9ydGVkIHJhbmdlIGlmIHRoZXkgZG9uJ3QgY2FyZSBhYm91dCBsaW1pdGluZyBvbmUgc2lk
ZSwgcmF0aGVyIHRoYW4gbGVhdmluZyBpdCBhdCAwLgo+IERldGVybWluaW5nIHRoZSBhY3R1YWwg
bGltaXRzIGNhbiBiZSBub24tdHJpdmlhbCAodGhvdWdoIEkgZ3Vlc3MgdGhhdCBtaWdodCBiZSBm
aW5lIGFzIGxvbmcgYXMgbGliZGlzcGxheS1pbmZvIGNhbiB3b3JrIHRoZW0gb3V0KSwgaWYgdXNl
ciBzcGFjZSBnZXRzIHRoZW0gd3JvbmcsIGl0IG1pZ2h0IGFjY2lkZW50YWxseSBhcHBseSBhIG5h
cnJvd2VyIGxpbWl0IHRoYW4gaW50ZW5kZWQuCj4gCj4gCj4+IEl0J3MgdGhlbiBhbHNvIGNsZWFy
IGlmIHRoZXkgcmVxdWVzdGVkIGEgc3RhdGljIEh6Lgo+IEkgZG8gc2VlIHRoZSBiZW5lZml0IG9m
IHlvdXIgc3VnZ2VzdGlvbiBmb3IgdGhpcyB0aG91Z2guCgpYYXZlciBhbmQgSSB3ZXJlIGNoYXR0
aW5nIGFib3V0IHRoaXMgYXQgWERDLCBhbmQgeWVhaCBpdCdsbCBiZSBkaWZmaWN1bHQgdG8gbWF0
Y2ggS01EJ3MgbW9uaXRvciByYW5nZSwgZXNwZWNpYWxseSBpZiBLTUQgZGVjaWRlcyB0byBwYXRj
aCBpdCB3aXRoIHF1aXJrcyBhbmQgd2hhdG5vdC4KClNpbmNlIHdlIGFyZSBoYW5kaW5nIGNvbXBv
c2l0b3JzIGNvbnRyb2wgb3ZlciB2cnIgcmFuZ2UsIGRvZXMgaXQgc291bmQgc2Vuc2libGUgdG8g
ZXhwb3NlIEtNRCdzIG1vbml0b3IgcmFuZ2UgYXMgYSByZWFkLW9ubHkgcHJvcGVydHkgcGFpciBv
biB0aGUgZHJtIGNvbm5lY3Rvcj8gV2UgcHJvYmFibHkgZG9uJ3QgbmVlZCBhIG51bS9kZW4gcGFp
ciBmb3IgaXQsIGl0J3Mgbm90IGxpa2UgcGFuZWxzIGFkdmVydGlzZSBmcmFjdGlvbmFsIFZSUiBy
YW5nZXMgKHJpZ2h0PykuCgpGdW4gZmFjdDogdnJyX3JhbmdlIGlzIGV4cG9zZWQgdG9kYXkgb3Zl
ciBkZWJ1Z2ZzIGZvciBJR1QgdGVzdGluZwpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51
eC92Ny4zLXJjNS9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL2RybV9kZWJ1Z2ZzLmMjTDU4NgoKVGhh
bmtzLApMZW8KCj4gCj4gCj4gLS0gRWFydGhsaW5nIE1pY2hlbCBEw6RuemVyIFwgR05PTUUgLyBY
d2F5bGFuZCAvIE1lc2EgZGV2ZWxvcGVyIGh0dHBzOi8vcmVkaGF0LmNvbSBcIExpYnJlIHNvZnR3
YXJlIGVudGh1c2lhc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
