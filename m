Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A939C561E6
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 09:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3hjtqf8sYrSvbADHvEVWB1lZsKBBZirzevM8/ykeZ4=; b=D/8E/dixH1P7C+
	KloqflWp46cLMZqmAHtZpxp7N2uKfXuNNcfNwpUTA75VCvl7ZXgEBZI6WXrbnhzzXXDkjkYL77x+6
	Zr5BDu35LHYiZ/iBi1PbF1xF1RnuVBlT1gCGRzZs3OyHp+LytIoURO6BSwOkT1o9l9WMuKQqE+3f6
	CthLu5VTxhIEnyorgnL09wscxMg5CcJdiGcwtIpWBQoyz2OPL0tawSbH3QN+uPhPKbO5OVTU/Y4CW
	EIZR7ABg40yFJanzvhU38vCcaghGVCSnvvZj+fNbVK/9ESn0fDMumqkNCeJTlEgHa4pYXGxcoA77I
	qIaar8BUzYgi8UILgphg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wruIH-00000005Mxg-3NCo;
	Thu, 06 Aug 2026 09:21:41 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wruIB-00000005MwO-3Q0T;
	Thu, 06 Aug 2026 09:21:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1786008096; x=1817544096;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=y9JarZc3keDSowPrWhVDsLubxMrMwCEw2h40Gj+z+gU=;
  b=HLoLx2LpX8wQZx0dozMNZ9G4w4U3pdMqY+Hcj9yVU2x/44awew1Gu23/
   NrUl/ywXst7eKE/7lq5rC9fPZmV2XmdaKGjjkzMJcX4oUvhNibmgYVDvb
   XFk5Rwir7DIJAYFAvvjK0fY/XPVIZbBnYr1L9+uUG/O3rZHrZbMxZRqTd
   1lpgXQ+1EZCDSbYSxQtn4OomEi1wJx4Dulp3MUKd29RSi4hUtr7ipkqCM
   gRGGs+zD4qnCTqvoIUitdYi4/lR17nuLCxxFUF4Ug1K3YVrGvV/MYG+VS
   e5ZJYtxhgxWDS7GrUTxox8jnff0Dor5j4j5rDQVjjBE9OUvpR2JVX7AuO
   g==;
X-CSE-ConnectionGUID: oEm5Z/YuTee1PlBamcV1GQ==
X-CSE-MsgGUID: TdJqz+ehQN2DzWYeyPvjZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11866"; a="86538252"
X-IronPort-AV: E=Sophos;i="6.25,208,1779174000"; 
   d="scan'208";a="86538252"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2026 02:21:35 -0700
X-CSE-ConnectionGUID: RNiuI47WS5OeBg6Pmq1tcQ==
X-CSE-MsgGUID: RBeNPuglQpmBcBM9hJoagA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,208,1779174000"; 
   d="scan'208";a="267198862"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2026 02:21:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45; Thu, 6 Aug 2026 02:21:34 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45 via Frontend Transport; Thu, 6 Aug 2026 02:21:34 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.43) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45; Thu, 6 Aug 2026 02:21:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KLw2bplqC+ducT4li/LuZ62t4i7/NaV9Fc/0vx50sHZ+DgBgwagRbs30d4bQd/LTRTYHkvcklRDynYPyv3uFKLUHD9Hw5KMXgrhJpXheOdbqAes4YeF0WjMshByWlCK+ncuS1fMe19I7pzCHUVIogJJfNbZ5YBNJEnvPMaBVxg6mR3KVZsQ0XkJahDARW1mrtN1NHZoFUhg33hbpuZL6zK68jJNG9SeFcT9T14CuPEBxN3MNxwgACve62ssNHV1xVcmT66pwKFS901ZAjaycHsuk2z9EVz9J1CpLz/Kfmt0C4t0zKEAqHd0QDEwElv6A2dWnFCJ8ouAIaug/hvlSvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y9JarZc3keDSowPrWhVDsLubxMrMwCEw2h40Gj+z+gU=;
 b=JlB2t9hU9bDx2yNFhfYOTxgOlwH5UVz33YLePVg8PQodiX9HMh/DLCJ2ApbBb5S6GMkt1OyzrJqvbFl9jOrjWZtZAx0OXcze0BAREGaGQsCidylpfOct16PDNfRMzmLcaVPhTh7Fj33XZ7Flq9BL8Oqg0/V0b3gb/IZpGbZosh4XZdzwR6+HWTV9pS1w0HZjPROKTV6NI6WKRvSR2lZ5uGo6Y9KkwPmNrAPuImZ3Y9ajkZg8Iaoejtwy3+4d8Bde+pCmVstFO4O29IeNukZBFnxwZvo4bsxEfWThzQwFi+8d079zWnpONsziU5/NYL57fN9A7Q/o9d9UcbGyXd5AVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by IA1PR11MB7810.namprd11.prod.outlook.com (2603:10b6:208:3f3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.292.19; Thu, 6 Aug
 2026 09:21:26 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%4]) with mapi id 15.21.0292.018; Thu, 6 Aug 2026
 09:21:26 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: James Hilliard <james.hilliard1@gmail.com>, Andrew Lunn <andrew@lunn.ch>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
	<davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
	<kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Heiner Kallweit
	<hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, Heiko Stuebner
	<heiko@sntech.de>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"mfd@lists.linux.dev" <mfd@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>
Subject: RE: [PATCH net-next v2 8/8] net: phy: add X-Powers AC200/AC300 EPHY
 driver
Thread-Topic: [PATCH net-next v2 8/8] net: phy: add X-Powers AC200/AC300 EPHY
 driver
Thread-Index: AQHdJIKJe1bkzfqw7EWZs7Wz2GNhjLaPZXmAgADXRICAAIPskA==
Date: Thu, 6 Aug 2026 09:21:26 +0000
Message-ID: <PH0PR11MB5902F56C72ED0C31020B277CF0D22@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
 <20260804-submit-acx00-of-dynamic-v1-v2-8-3eef49ff1d8c@gmail.com>
 <30bab755-3356-4d4a-a939-8488aa487874@lunn.ch>
 <CADvTj4r5y7ME1jb1OxnvjXoQRhpnQq1L=QgdUE7ESNgS2jzTBA@mail.gmail.com>
In-Reply-To: <CADvTj4r5y7ME1jb1OxnvjXoQRhpnQq1L=QgdUE7ESNgS2jzTBA@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|IA1PR11MB7810:EE_
x-ms-office365-filtering-correlation-id: ab470641-8dda-4489-a391-08def39c1747
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|23010399003|366016|1800799024|38070700021|6133799003|10067099003|4143699003|11063799006|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info: oy5U14sC40Bn3MDIkiaLyNt338Iqqo/DH+qD5zj+7b0/eal2nLFhsq1+jK+0/D7RKv/yJriV1udsH4b7+BBWLURaZob0/KWHRUAxUtin3RuxJqPIKao9mNS2M27FGCFXnkl3eX83um3qMllLZ/5XA32Bvj6aVeYeimfIFK314PeopnCnSnRyQPmQ4SzL40FefzYR5OBDXMYLrms+gc5BwbmWOJV6b9kXgreHfSlqtBkRkKrqsqMJhxYvz5fXSiCCr2LCxmt+IFX0YUm1nsQIFFNO6Vfd+9cWzTrmC0XIb/JC7IZTRxnmcDmv1uDlvVA7Ae2d2pbOjhc4iHrKkOF1L+X69cYnPOk+Fv5RAY4PmKqrhn8zM7rmMExZx82UhGROnv2HAay3nceMVeiMcI2v0jVlQAeRx2GDCD09ChRlxoOfE9vLOLJb1O9i1HFATFqqe1c3eijjAhh/25X486CO/qqalNOwcRtCCq1veXbKKRF5FTPy8zXaUPsyhdqy+N5YSSA81SZykjPjomBaDZw8j8MqH0OT84yk+PEsrXPX39Dcv+npzu0el6LFv07NJf+UwS7Wxz5N0ksUPICGxS6xAwA7pxQB2aTOIjbUViHWHPKeGIQciJsH7egdIPih8PuSeNACclBlH4GjKCxJ3+kRoraudIxJ6jJIDY51AbDO9p+NYouzRTYoO0mnYizz5gDe50A4+tFMqimuOXq66SpUbYMP4mr4tPSQO2tzPr7yMXk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5902.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(23010399003)(366016)(1800799024)(38070700021)(6133799003)(10067099003)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0lXZk5KakdjNFV1VS9JbEhsZkZSRTlpZEMraXE4eTNpYjRoaTZhY3I0Zkh6?=
 =?utf-8?B?ay93cDNUZjd5YzhsRnkyWU92bG1WWHRZK3FnRGwxQzRHa2I3N05zMGJVR1l2?=
 =?utf-8?B?SEVFTVA5ODRJeGYzUTRoUE4ya1VCVEF5UHp5cFBoMUZjc3NTMmFMRmtaWDhH?=
 =?utf-8?B?L20zYXRTVFhVOVNHMlhzL3IwY1QyWmM1RnMycVM0dlNaVzJaWTY0Y0FUOThs?=
 =?utf-8?B?WE81Tk5XYjk3alFGOXF4bGxZOG12bHpQa096MHRaUlgvNzZUdDhPY1pUVmVE?=
 =?utf-8?B?NzZTcU1ZelFTVGNBdEtrZmtZbStaMm5tUGwwU3lzemQwTS95NTZOVnlYMTZK?=
 =?utf-8?B?UXdGM1F0c3I3WUFsMldiTDZGSlREREdPM1BTN2F3OE53RTlJNk5SQlQ4aVZY?=
 =?utf-8?B?TVluZWsxSUJmRElnZVhFUWFsTjhYcWdIV1RTTEw5WUxxRDZuQ1RtcnVnMUNE?=
 =?utf-8?B?emlnMkphaXFTQ0ptdTRDUklHSEx2V20zRTRPUVJSWW1mNGdockRtUENwWjgr?=
 =?utf-8?B?Zk9rUDdidG1Uam10cWc3Wjk1SWJnLzhzTlJvOTNwcXQ2OHRmTHdzUm8zTTdV?=
 =?utf-8?B?M3RTT3pxenY3UzhveGhUcTBDL3o1SStsOUJuWmhYbXJUVHJWcDZNQ1VXM2Zq?=
 =?utf-8?B?MTdXMHFyY3gyTW1XRms2RHN0NkFDMzF2cVprYVhlL3VieGd6OG4xa0tVdXpM?=
 =?utf-8?B?RXBTVDVOWnFFRFJZVHM0bU1kOFAxV2RKVjhFRzhzS0lHSU1mWWF0VGdtL2p5?=
 =?utf-8?B?eTN4NGdNN2ZEdEdHdEE2cGZNZXFKdy9mUlhRNC93aU53aHQ2Zm4xV1VmL2hH?=
 =?utf-8?B?YmFpVUV4UW9OS2lyOVFtTWdCRS9TYXgzcUgxbUV4dTFobVdxZTZ4b0JrZjhL?=
 =?utf-8?B?am9xT0k1TEZKVmd2V29VNWIyVHB3dmk0WWsvZmVWR0VpUlpsTTRPVHZUN2Zx?=
 =?utf-8?B?WUJJcTBaL2lWeDBGb3JpZWtkaHVBSm9lR3FXWGpucVVneEkvZ2ZVOFl2Tk5h?=
 =?utf-8?B?c09vRHJocnlwY3lFYm9wRnB3N0MzbVlsYVcwT3NMZ0tZUE5RNGtWVS9GYVZH?=
 =?utf-8?B?Z1lGQ0ZJVHdTWW9PSXJXNjRsamlyU1lHZmVEa0prczZNZlg5YTVpUzJUb2Zp?=
 =?utf-8?B?S2VnVHpYcW81N1hTeEY1eklDdGV5NmVKeVNTRzAzcEFBa3ZxM0NqZnYzcStv?=
 =?utf-8?B?QVg1TDdXRkM5KzJLam5JRkJiWm4rTFJTS3BuUmNUcktVUkZqT2g1TTZ1UVFx?=
 =?utf-8?B?bVNRNjZ0d25hT2xLdnh0eUFCb0IvUWJaVlMzODVoeWNOMGkrRUtPSFBEdkxG?=
 =?utf-8?B?V21tNTdjK2JLQjZUaGxGWkFncWtBNnNraVZ5NGZQYng2RTVuNFJhVEFEZmd0?=
 =?utf-8?B?T3JTTjNyMU5EbEdzV1F4emQzT216eXZMMVJ6emd2aUdJNFpRUEt0cG5zQ29a?=
 =?utf-8?B?SVQ2MDRoN2J0U0JhY1ZlVzYyT3d3OTFvREpqM0lwdWpJK3VZSXliQjVDTWdW?=
 =?utf-8?B?SW5Xb2FPVTBIYVV3L1N2NjRURGlTb1FqLzZSdDhnSjZaelNsQjVBOE5ZWmV3?=
 =?utf-8?B?Y3FYNVIvMTVORWxSSVdaS2U4M1NqenVUSG1ucU13YnNoQUF3Q2dYMHFLR1dN?=
 =?utf-8?B?Y3ZPSGNZRXU0MlRpOXBkb0M2T2VGTTFEQnZLMldpc3BsNHc4V1JDNExmZVZn?=
 =?utf-8?B?VGVxdFZwNXZETHl0WW9aWmlxdnVTcnB3aUI2b2NxdXRjNWczUzFpekRDb0Ri?=
 =?utf-8?B?OFVVbkFpeDI5dWgvRDlOMHExMzFaWTM2MDlueVEwTEpxZTF6RlpYVzVub1N6?=
 =?utf-8?B?ZzVhS0Q0L0NhK05FcU9FV0lZYU4wT3l5Zzhua0V5b1ZUY0hLQXhHTUREdmww?=
 =?utf-8?B?TE1mNnlYR2RicDIzSEkvQnV6YlNwbm91bXR3MUMxbHE3TitrQ2Nib3FkT1N4?=
 =?utf-8?B?RnpNYnNOeVpzTWNJTlRTY0NuTEd0LzYwTkRlVk0wSUNLcFhaMHdNZ1AzYWFG?=
 =?utf-8?B?d3YxbUk1WlhvdVZvZlNKUEo3NmF6bVQ0VFQ2bklBNk1mbFNrV3AwaHdIUVcz?=
 =?utf-8?B?REEvT01Fd2FSbHRtL0lMV2lYRDRyUjhYeWtPV2JWaEh4K1A0SFppTUhsdUdX?=
 =?utf-8?B?ZEVZRHFZZ2NLOUVTRFBjbDFjcmgzWG9LVCszNE04ZEhBNThsWDRRai9RRUFF?=
 =?utf-8?B?NUJzNXZlbk1pTWtUM29oU0ZoWkp3NElLUyswQVpkQlR6K0JFYnc0bldwN2hK?=
 =?utf-8?B?T2l6bFgwa29OTDl4dG1FL3ZZbnovL3d1bmNIV21mb2JaUTZsY1F4NFJtYmpn?=
 =?utf-8?B?OGpyV0Z5RzRDT1dJaWQ1SUtnSXhLNDNNUDJ5c3lqcFZ3L0pxcHFsQT09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: aJ04zTZkfJgijLq8OBZxKiM2a62pysgIriqZk9ZVkufMFXZlCoVDmD/IvtfPjBrtuWZ49/QWJk+biCN2L+4GF1K9xeRbCuHqtjolzElv9AlZO6NQQ4CcyAV6ppU9hzWYQUs3rKFi9RhTmB5BCwlk7Skg9W7dadqzcO/sxE7JsWiMCaBpxkIMOe+GtBvstg6uf+Gp9Lv4dD7R/QoIG1L5KEtJX+2fCEUS8U7XnHUvHSE3nPB0MKcsQm/Sh4yTditExKOqqbvgg0ExzqKY6bylWtKRxFkrE6HRENBTakHbhfI9+8SK5pHyFrLSjzQrU+vi59PM+qTta98fGqFeu9PlAQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab470641-8dda-4489-a391-08def39c1747
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2026 09:21:26.3991
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VJLRy9a4ydmBWvpUw8zgyk1sIAF0Pg4qVsy6gCRHbPMGO3vhkgFuotfXug/P+8riRXeTOE9QUlrHSAvsVW4nk3DO3/C2mHne2fssQeGbyXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7810
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_022135_913194_1B492BF9 
X-CRM114-Status: GOOD (  14.96  )
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

From: James Hilliard <james.hilliard1@gmail.com> 
Sent: Wednesday, August 5, 2026 4:27 AM

>The AC200 and AC300 MDIO link endpoints report the same Clause 22
>identifier and use a compatible link-side paged register layout. Their
>identification registers are inaccessible until a package-specific
>control path powers and configures the block.
>
>Add a common PHY driver which matches the firmware-provided identifier
>only when the node also references one X-Powers control device. Validate
>that reference and the AC300 address relationship, defer until the
>provider is bound, and create a managed device link to protect its
>lifetime and order teardown and power management.
>
>When the optional two-bit SID configuration field is present, verify that
>its package-selector bit agrees with the fixed control reference. Use its
>second bit to select the AC300 low-calibration tuning sequence. Omitting
>the field skips package validation and selects the normal sequence.
>
>Power the control block in reset-default MII mode during PHY probe. Once
>the MAC supplies phydev->interface, pass MII or RMII to the provider
>before the normal PHY soft reset. Program the AC200 link address through
>its provider and let the AC300 provider validate its strapped address.
>
>Apply the common vendor analog initialization, with the package-specific
>normal value and the optional AC300 low-calibration sequence. Support the
>board-selected xMII receive-clock inversion and leave MDI/MDI-X in its
>vendor automatic mode. Disable standard and Intelligent EEE initially,
>then restore phylib's standard EEE policy after later resets.
>
>Power the package control block down with the PHY and restore the vendor
>configuration on resume. If power-off fails, attempt to restore the PHY
>before returning the original suspend error.
>
>Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
>---
> drivers/net/phy/Kconfig         |   9 +
> drivers/net/phy/Makefile        |   1 +
> drivers/net/phy/xpowers-acx00.c | 544 ++++++++++++++++++++++++++++++++++++++++
> 3 files changed, 554 insertions(+)
>

...

>+static struct device *
>+acx00_ephy_find_supplier(struct device_node *control, bool is_ac300)
>+{
>+	struct platform_device *pdev;
>+	struct mdio_device *mdiodev;
>+
>+	if (is_ac300) {

two approaches are mixed now - specific callbacks and ac200/300 checks,
why not to fully stick to callbacks


>+		mdiodev = of_mdio_find_device(control);
>+		return mdiodev ? &mdiodev->dev : NULL;
>+	}
>+
>+	pdev = of_find_device_by_node(control);
>+	return pdev ? &pdev->dev : NULL;
>+}
>+
>+static int acx00_ephy_get_control(struct phy_device *phydev,
>+				  struct acx00_ephy_priv *priv)
>+{
>+	struct device *dev = &phydev->mdio.dev;
>+	struct acx00_ephy_control *control;
>+	struct device_node *control_node;
>+	struct device *supplier;
>+	struct device_link *link;
>+	const char *compatible;
>+	const char *property;
>+	bool has_ac200;
>+	bool has_ac300;
>+	u32 control_addr;
>+	u32 configuration = 0;
>+	int ret;
>+
>+	has_ac200 = of_property_present(dev->of_node,
>+					"x-powers,ac200-control");
>+	has_ac300 = of_property_present(dev->of_node,
>+					"x-powers,ac300-control");
>+	if (has_ac200 == has_ac300)
>+		return dev_err_probe(dev, -EINVAL,
>+				     "exactly one ACx00 control is required\n");
>+
>+	priv->is_ac300 = has_ac300;

wouldn't enum be a better choice here? easier extending for future
possible ac400,500 etc 
dunno whether planned just thinking

>+	property = has_ac300 ? "x-powers,ac300-control" :
>+			       "x-powers,ac200-control";
>+	compatible = has_ac300 ? "x-powers,ac300-ephy-ctl" :
>+				 "x-powers,ac200-ephy-ctl";
>+	control_node = of_parse_phandle(dev->of_node, property, 0);
>+	if (!control_node)
>+		return dev_err_probe(dev, -EINVAL, "missing %s\n", property);
>+	if (!of_device_is_compatible(control_node, compatible)) {
>+		ret = dev_err_probe(dev, -EINVAL,
>+				    "%s does not reference a %s device\n",
>+				    property, compatible);
>+		goto out_put_node;
>+	}
>+	if (!of_device_is_available(control_node)) {
>+		ret = dev_err_probe(dev, -EINVAL,
>+				    "%s references a disabled device\n",
>+				    property);
>+		goto out_put_node;
>+	}
>+
>+	if (has_ac300) {
>+		ret = of_property_read_u32(control_node, "reg", &control_addr);
>+		if (ret || control_addr != phydev->mdio.addr +
>+					       AC300_EPHY_CONTROL_ADDR_OFFSET) {
>+			ret = dev_err_probe(dev, -EINVAL,
>+					    "AC300 control address does not match reg\n");
>+			goto out_put_node;
>+		}
>+	}


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
