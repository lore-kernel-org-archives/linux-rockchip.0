Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F059C55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 09:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N51ET04EIhtmFbNACJb5JxyCK/NP2AITGROayMBf4EI=; b=z4mV6cn8Z2ypIr
	k0pr7yeEcGnp1N8yglholnjSmU28Hm7HYugz/TaoN7dActq0WOqFgur4hTCDv7Ina/ejbKCYGV83W
	mUrw7OX35GAkn86nB4tNRLik9uGKYG55uE9MiF2FLjIdm8R28m+Q0NHQkC/Nm3Z8N4WvZb6COd7+K
	GO0e3FvuLypV7ycbO5TwQ5KPnR0+DXoRNHGM3N2W4PItKI+ZcXYNA61cHn1M0CXkwzpH+toA+Jr2Y
	zNJD6B+F4rKnYsL1wYp+XQdgC7LrsMi+c0wbfVWgamh4dLx+910fy9bnyLpKX8CUJBR+80PKkCEP/
	tC1Pz6UovQNRvTYSdlbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wruHA-00000005Mfr-3RnY;
	Thu, 06 Aug 2026 09:20:32 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wruH8-00000005Meo-0yyh;
	Thu, 06 Aug 2026 09:20:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1786008030; x=1817544030;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=s88wElIm+oxZwPKdIvksnR8MSz7JTQUv99T9lnN5mWw=;
  b=jnpWhn3vRqAv9wp0psbaBiTX+9/kFeUYjGQKLL+A46JPUMMRO5teYC3h
   +xYoW/NxbNGrkr1Rrma2REM39j4p1PoUDRH1h7yz/IwAN973xWp3oyjDF
   +91aIt/AH65Q2hjrtjlGYFKmEtgjkLkLMeIlDmtdUFcOXFjJqjZwwx95E
   2ZuzXmjGdBGe3DbSTqiMtfzR/7jI8UdX0wpHsrkcraZpop/I/ZF+5Lqc4
   DErwIulOg1GhcE9Y4hGyMZURe3nOI5ZOejzvDhcHp9VcJWdd82DTYVXaq
   l8dMY43vpTFZf0V1dkYBYHHNOinnOjY7E0UmK1emsSq9XB2SnczPciU6t
   w==;
X-CSE-ConnectionGUID: K+T5qpVpTbGfrOubp/2EJQ==
X-CSE-MsgGUID: q3iHck3gRbKSEcN6COAXxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11866"; a="86538146"
X-IronPort-AV: E=Sophos;i="6.25,208,1779174000"; 
   d="scan'208";a="86538146"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2026 02:20:29 -0700
X-CSE-ConnectionGUID: +ut36miPSdua16z8FCBeZw==
X-CSE-MsgGUID: yq7G2rmiQ2Cq7X/YT1gtcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,208,1779174000"; 
   d="scan'208";a="267198563"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2026 02:20:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45; Thu, 6 Aug 2026 02:20:28 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45 via Frontend Transport; Thu, 6 Aug 2026 02:20:28 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45; Thu, 6 Aug 2026 02:20:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V2Rqz/TWJs0BM3HqtPpNBxwqWPZQxicOwOvH2KW9J1wBwD3pBMSdIm/3sSLEvQRsTRsltBeghxGfwJmkJGvQHtZXGV6udlGCjVkzWB6xFl928b3YwLjEg5Uar69a7oxCNsaEz3NXvCMU0B9jUtAHt5lXmnLfrI55r94CXHHQPF1L/HwXX3GhJ3JcRznCGQ36I+EPy6gUtmpYPWsaZnzdYSez4CdkgN3iNivVGgUDKcEYT++F8uAAivUOzyfsJ7Hz9j1oaKskzXJZsD7Bz7AxiKrEvDwxjAIdTwk67pHV+RKG7/D0ftSK3hXClYZkSqnymz2BksSWbL+zEl1tHUMmbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s88wElIm+oxZwPKdIvksnR8MSz7JTQUv99T9lnN5mWw=;
 b=AkUzwcXLxfrhnOJXzAtq4BqJ1KU0a4kP1WuynHdGgjTrJYlJ92riZXOi5TdbGp2nTNJ4P4BIps8CBioH8RSSGr5QNdzIHg1Q+2A1OsSEihPXzL0QItDJpJqegND6Ibz6R9PZhg3LJoQbtVJOGv91orVk1GonWPu23Uopz0r0mv3Yi2VyA2lF/MIUEfGwIP8UM4qVNW3q4Kc7py4v9VhdVrEsBMVG/G2vnW1DB/mx7scRBXtoRVSxSO32Q1SILItyul2o5l4E8orX4gO5xuNo4sjB7GHKH+HBqtwHxpcjIzxpstbsfi28bqsoa6gAXiiQw8OzbeWQzw+oQqXCnXtSqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by IA1PR11MB7810.namprd11.prod.outlook.com (2603:10b6:208:3f3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.292.19; Thu, 6 Aug
 2026 09:20:16 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%4]) with mapi id 15.21.0292.018; Thu, 6 Aug 2026
 09:20:16 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: James Hilliard <james.hilliard1@gmail.com>, Andrew Lunn
	<andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
	<pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones
	<lee@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit
	<hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, Heiko Stuebner
	<heiko@sntech.de>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"mfd@lists.linux.dev" <mfd@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>
Subject: RE: [PATCH net-next v2 6/8] net: phy: add X-Powers AC300 EPHY control
 driver
Thread-Topic: [PATCH net-next v2 6/8] net: phy: add X-Powers AC300 EPHY
 control driver
Thread-Index: AQHdJIMJxu6Cnq2pB0uNBL59NbZ1qraQwG8Q
Date: Thu, 6 Aug 2026 09:20:16 +0000
Message-ID: <PH0PR11MB5902224A6A8C65CC83AD6AE2F0D22@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
 <20260804-submit-acx00-of-dynamic-v1-v2-6-3eef49ff1d8c@gmail.com>
In-Reply-To: <20260804-submit-acx00-of-dynamic-v1-v2-6-3eef49ff1d8c@gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|IA1PR11MB7810:EE_
x-ms-office365-filtering-correlation-id: 5ac5c817-e464-4ce0-91a4-08def39bedcf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|23010399003|366016|1800799024|38070700021|921020|6133799003|10067099003|5023799004|4143699003|11063799006|56012099006|18002099003|22082099003|3023799007;
x-microsoft-antispam-message-info: up+F0oAaqLiSLWR3anU6qLquKoG6mfKL4OHTPv4lT20XetDG95mjpvJuiHP0yLRmges+FGSY5qjmJlLGxp3DZPWK7UihwR2csT9paH6X4Jyx1UVkRuW0i+FMQ0mHwwlwBxaqArXJnmMfS6tQdo5xDoUCAnOT29YNOQGlqtWQtod/pTKT3kr97YIAzyo3Cg0y3wpeYTCxf5NwHGPSY7CO5c2tokNs94QmfWq9Kh5EaNglrWOg+yOBkVJ9XgIjlViDt0aKVCIS69xZv29BHPQhyQ5o/5d703bZ6PRc7eqRmM/4s8zQ4vJQs3wjvjlGBFUgmD1D+aYmn55WWQ31lzxSmLiLIPmqBSOLr9mT8VukBQN9yIYC6UwsQ8Je5JbL/LDSR9cpoRF0+o6ZlveoR8ABpuJPHa+dmw25GF1gZszhRETB+ZV8H15GRNaTeqIig4IuieP7OZbKJ+6XtIOwNFrayHww/oPEHgA5Rb2i4/BDCg0ZMjkoF3KOlpgGY4PlNJeHcQmkCTXGKqJ2mvDZKi+0La+STR/v+Sdvpvd+Kd6ym/eh6PqFIZl1W8oFhEPd2mHcDT+bYPgFXJyz1zmlbihVUk89FFHd/1n1Uo+yp2hIqgTHCiEF3WzF0yVBQP02vmgFkWi49hUAqr/T4SPznM12Ls7MXvBdtCmAx8h/SFGoOQqCFxklzTStJiE6kqXJMAfSTbCfnMArEtWCvmE0AtZVO1ilR5Z9QjJrYkfBukhmVbrPAlxw8yqYiYumPbhIxkIw
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5902.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(23010399003)(366016)(1800799024)(38070700021)(921020)(6133799003)(10067099003)(5023799004)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003)(3023799007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OEtOT3V2SkdZR3I3WTE2NU5JeExUdFcybXo3WG1IUmpJSlB1QTdLV2N5YUV1?=
 =?utf-8?B?ajZvSmx5V3A5UFpLVTNicmxGVytVMlZjcWJGSXdDOGRtanNEaVp0dmFXbVlz?=
 =?utf-8?B?RkZTTnN2Ri9zbStpdFBtU1c0d2FobzhoTDI1MjJKVSs4Mk1EOXAyRnZKTDM2?=
 =?utf-8?B?K0dYV0l5NkVpRW1uamR1WjFicHdpVzN4UWVodmNTSUVOblhIRWF3Yzl3M0Jl?=
 =?utf-8?B?anI5cFNINjdSSm5kM1RqMFRiV1dJdmIydWI2M3pCbHByQjB3Qyt0b1RsYTA4?=
 =?utf-8?B?ZlVOZ2ZqZ1Y5d24vdGpiOEs4SE96OXlUejFkM3Y3NVVGbWM0eHVTcEZYM1FX?=
 =?utf-8?B?SFRXYTJSNzBRejU1SkdKTVFDNTRDNXhkM3dmMm5kd1ViVzNwTFhIRjBHbUM4?=
 =?utf-8?B?VFZEa0ZzY2tDUmhxMVBUM21jSTcvYmM0UlpYaElXN3pHMllpR3lRdk96N0tj?=
 =?utf-8?B?TU4yK1NRd0NQajlrNDJFbmxUNlZaVTJZdzIxYWJEOGR1RFFyQWcrQ3dLOGQ2?=
 =?utf-8?B?U1paUjJzZGZzM2ZPUzlCbDVhRTQzU0xGeUZ4VWlqZzBaMEpKcnVFcllGU0lQ?=
 =?utf-8?B?MXJLOGlWdTJvZXBaN2JXQmR0Z2c2Z1p0OG5HZmZ4Z25oYWk3dDBvUkNLMC9O?=
 =?utf-8?B?Qm1wdGxJQXZQUVFySHhLclNnOGZPYVF6NTdtTTVpRndKbVhIbWhSTUJlVGk0?=
 =?utf-8?B?d3FrREErZGVHR0wzMXZuUS9BTGkzOWcyQkhqRkpRbCtxcnpCSWRjdVVxNHhD?=
 =?utf-8?B?NnBxQXZIeVMrN21xcGRLNjlpdCtPeG9EUGJCR1gvRVRRcnJlMGZVL3d4cFJj?=
 =?utf-8?B?WExOeDdHb2J3eElJY1duc3Z4a3pvTFhCS1R3dEtNZFNtcmtYalgvSmZpS294?=
 =?utf-8?B?LzR4U0hlcXovcDJDd2ZqMWpvSC9zZms3Vjh4QVAxY1YyNDZBWlRHQ3hERXVR?=
 =?utf-8?B?ZDRmNGFNY1UxVEx0SnNvYWdLUTlaczE0WWgrZm5HN29Sdi9OVHZkTEtjalFF?=
 =?utf-8?B?NWNlQjZOcm1DTUZuQUFtVEo2akJwYkxZRUZ6V09LcWNGZ3ZQNzZWV2NKOEMr?=
 =?utf-8?B?ejAxQWtjWTM3SUhmdlVvUkJ5dVFsQ084bWRDN2dxMEJYc3ZISkVVRy9WT20y?=
 =?utf-8?B?QVQyZ2d6RlZWSHRiZnUxcVNnVVdodkMwT0QzN1lFUjg2eG42TU5UVnFzeUNQ?=
 =?utf-8?B?KzV4RWJwZkY4TXl1bXAzMThJUTk1ZURxYmdQdVU1cmJQTXUyVjlXbzhMM0Q5?=
 =?utf-8?B?Wk84a2g1by9nd2dDZUpjYmtUaFRRUVBVZ1BDTUhodnA3MW8wTW4wcDNPRnlx?=
 =?utf-8?B?dS95Q0cvdG1SbDVPUmhMQTFtSUpQdVJIZzVTR0crOENWdmdEWFp5Z2hYS0xR?=
 =?utf-8?B?SGlQL3gxOG96ZGVRdlIvNDA2UjBnL3I5aUxtY21iSnVNNlhnVktNRWNCdm9X?=
 =?utf-8?B?VHR0UlNiWlpvRWIwWjJ0Y0ZUd0NSRUE5dGV6VHBCWUhqbnViY0N2VlZmemox?=
 =?utf-8?B?Qi9VZFVZYWxDREIvVXJSdjJESWhXdkp1UUFFOW42WVliRTFHUUZKb0IxMXNI?=
 =?utf-8?B?TkZJWFIwR3FSdk9QZXhHTnlNUmF6aFY3RFdFaVFMN1p6YlBDUm1mK1ZkcW1Y?=
 =?utf-8?B?WU8vNjdhaEpHeFgzVml6NkxSMlkxWUNScG03NVJkbjVPblhYRVRDSE9ncTRL?=
 =?utf-8?B?RDdrSXNuaUR2SDNxbGtNUWRDRVdqOGJiR1FZMUl0aXZRZjhuZDk2U0JFSlVQ?=
 =?utf-8?B?ZmpCVlZtMG8xam5NR1pibFFoVldUOEVCbFRsV2UwSk9hU1NFM1dHZnd6UXR4?=
 =?utf-8?B?UERSR1NVUHBKMXkzQk5oaXBjWUJQeWRrSUxOcFIxdmRLYzV6V2RxOGlLQU5F?=
 =?utf-8?B?NkV5VjFicE1kWExqN3NPRnlVLyt1b3VUMVhzdnRxMWpOVmw2T2E4bW50RDRV?=
 =?utf-8?B?MmY2QlhuSVNjMWZyRUtYaUtoV0lXT1REMm0wbVovcmtLenk5SzlBdzlWUEZw?=
 =?utf-8?B?Zkd2ZDdlMEZtdjB3UHRKSE9JaUIrZ3hVSVFiV0VtNlpIN2M2NTkzKzExR3lz?=
 =?utf-8?B?SDZoZ01QNWlTaVUraUV2ODJKcXRHdDBhNXhNbnhUWjBaK0ZHNVFyWmwvVFJZ?=
 =?utf-8?B?WlU5ai9IMWxoS0RmQ1pwTjVENHhSOGpmVVc1NjlaaFNLZERtQ1Q3NVJ0T1BK?=
 =?utf-8?B?aG5CUnNVWWJSVFRoMEZiUWpEeVFBZ08zRmx1ZHFGa2NhOWhYanlqTFQ5TUNr?=
 =?utf-8?B?OHVoQ2tyT0VxeUJHRUdIQ2pwaFA1UkRZQnoxV0FEZnEyWHdWVnpVc25RbHJ5?=
 =?utf-8?B?N29VdzI2TXUwNmxUNG9qNHpDcVFkZnRrUnR0TGpneVJPUUVvb1NLZz09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lbZapSDS2g7ctscdpiRyVgMCDc/Hf3WzlNBUhRUNp+GDT+MXS76ddI+YXTUWU5z1g2WfanPEhhDQpGmm9dWSZXOfyTqM/U1rSCxvX9Ss/0zAkI2U7hKx2FXvrS0oiy+3zvvzDgS6r0pZzSr58AwHYo4bOSBpIoCKlC1m45Xq3LYRfVXOnYZfOmugMpsFmMtPnbp86XpkeH3lHARMdMcTLUoG3ZH4l0gXFt3ILb3Yq05cS9PF9r+5m2vA69WepVjGhBPv2/7x8PspOZFThKnSJYWAFS7L+QRqagicWSaeYrcuAs12f/xwz7ACeIvd7UAcijnHkQT3TelXvOYrHifpYg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ac5c817-e464-4ce0-91a4-08def39bedcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2026 09:20:16.7972
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bfa9jQCY1PaRZRtY4ICE1xG1/0+Szl2cQK8tLMF0oFI+ZI4t9WqUi1dIUBnjx3zQ7c/AmYSOxPe1IbhhH2nC4oIiXdClY72mNUc7hCiEowU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7810
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_022030_354199_182E7766 
X-CRM114-Status: GOOD (  13.33  )
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

>The AC300 Fast Ethernet PHY needs a separate non-PHY Clause 22 endpoint
>to complete package setup before the link endpoint becomes usable.
>
>Enable VCC1 and the input clock, select its 24, 25 or 27 MHz rate, apply
>the SoC SID calibration value and vendor offset, configure the documented
>I/O drive strength, and perform the reset-before-clock power-up sequence.
>Validate the control and link address relationship against the package
>straps, clear a latched MDIO error, and configure the internal digital
>LDO only for the package variant which uses it.
>
>Early PHY creation uses reset-default MII. A separate operation later
>applies phydev->interface and, if already powered, changes only RMII_SEL
>before the normal PHY soft reset.
>
>Expose serialized, idempotent power and interface operations to the
>common PHY driver. Enable only the MDIO, MII and input-clock pads in this
>basic driver; dedicated LED outputs remain disabled for a later patch.
>
>Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
>---
> drivers/net/phy/Kconfig             |   9 +
> drivers/net/phy/Makefile            |   1 +
> drivers/net/phy/xpowers-ac300-ctl.c | 423 ++++++++++++++++++++++++++++++++++++
> drivers/net/phy/xpowers-acx00.h     |   2 +
> 4 files changed, 435 insertions(+)
>
>diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
>index 6119f4de880d..7535db7f3471 100644
>--- a/drivers/net/phy/Kconfig
>+++ b/drivers/net/phy/Kconfig
>@@ -484,6 +484,15 @@ config XPOWERS_AC200_PHY_CTL
> 	  address, interface mode, calibration and I/O controls through the
> 	  parent AC200 I2C regmap.
> 
>+config XPOWERS_AC300_PHY_CTL
>+	tristate "X-Powers AC300 Ethernet PHY control"
>+	depends on COMMON_CLK && NVMEM && OF_MDIO
>+	help
>+	  Enable the MDIO control driver for the Fast Ethernet PHY in the
>+	  X-Powers AC300 companion IC. It programs the PHY calibration,
>+	  interface mode, clock and I/O controls through the separate MDIO
>+	  control address.
>+
> config XILINX_GMII2RGMII
> 	tristate "Xilinx GMII2RGMII converter driver"
> 	help
>diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
>index f81854fc9f12..0c4e40c9a28a 100644
>--- a/drivers/net/phy/Makefile
>+++ b/drivers/net/phy/Makefile
>@@ -101,4 +101,5 @@ obj-$(CONFIG_STE10XP)		+= ste10Xp.o
> obj-$(CONFIG_TERANETICS_PHY)	+= teranetics.o
> obj-$(CONFIG_VITESSE_PHY)	+= vitesse.o
> obj-$(CONFIG_XPOWERS_AC200_PHY_CTL) += xpowers-ac200-ctl.o
>+obj-$(CONFIG_XPOWERS_AC300_PHY_CTL) += xpowers-ac300-ctl.o
> obj-$(CONFIG_XILINX_GMII2RGMII) += xilinx_gmii2rgmii.o
>diff --git a/drivers/net/phy/xpowers-ac300-ctl.c b/drivers/net/phy/xpowers-ac300-ctl.c
>new file mode 100644
>index 000000000000..d3ca4df8a9a3
>--- /dev/null
>+++ b/drivers/net/phy/xpowers-ac300-ctl.c
>@@ -0,0 +1,423 @@
>+// SPDX-License-Identifier: GPL-2.0-only
>+/*
>+ * X-Powers AC300 Ethernet PHY control driver
>+ *
>+ * Copyright (C) 2026 James Hilliard <james.hilliard1@gmail.com>
>+ */
>+
>+#include <linux/bitfield.h>
>+#include <linux/clk.h>
>+#include <linux/delay.h>
>+#include <linux/mdio.h>
>+#include <linux/module.h>
>+#include <linux/mutex.h>
>+#include <linux/nvmem-consumer.h>
>+#include <linux/phy.h>
>+#include <linux/property.h>
>+#include <linux/regulator/consumer.h>
>+
>+#include "xpowers-acx00.h"
>+
>+#define AC300_EPHY_BGS_EFFUSE_OFFSET	3
>+#define AC300_SYS_CONTROL_REG			0x00
>+#define AC300_CHIP_VERSION_MASK			GENMASK(15, 12)
>+#define AC300_PACKAGE_STATUS_MASK		GENMASK(11, 8)
>+#define AC300_EPHY_CLK_SEL_MASK			GENMASK(7, 6)
>+#define AC300_EPHY_CLK_SEL_25_MHZ		FIELD_PREP(AC300_EPHY_CLK_SEL_MASK, 0)
>+#define AC300_EPHY_CLK_SEL_27_MHZ		FIELD_PREP(AC300_EPHY_CLK_SEL_MASK, 1)
>+#define AC300_EPHY_CLK_SEL_24_MHZ		FIELD_PREP(AC300_EPHY_CLK_SEL_MASK, 2)
>+#define AC300_EFUSE_CLK_ENABLE			BIT(5)
>+#define AC300_EPHY_REG_CLK_ENABLE		BIT(4)
>+#define AC300_MDIO_ERROR			BIT(3)
>+#define AC300_CLKIN_GATING_ENABLE		BIT(2)
>+#define AC300_EPHY_RESET_DEASSERT		BIT(1)
>+#define AC300_CHIP_RESET_DEASSERT		BIT(0)
>+
>+#define AC300_MASK_VERSION_REG			0x04
>+#define AC300_MASK_VERSION_MASK			GENMASK(2, 0)
>+
>+#define AC300_PACKAGE_POR_INTERNAL_DLDO		BIT(3)
>+#define AC300_PACKAGE_PHY_ADDR_MASK		GENMASK(2, 0)
>+
>+#define AC300_SYS_BIAS1_REG			0x02
>+#define AC300_INTERNAL_DLDO_ENABLE		BIT(15)
>+
>+#define AC300_SYS_IO_REG			0x05
>+#define AC300_MDIO_DRV_MASK			GENMASK(15, 14)
>+#define AC300_MII_DRV_MASK			GENMASK(11, 10)
>+#define AC300_IO_DRV_LEVEL_2			2
>+#define AC300_CLKIN_PAD_ENABLE			BIT(4)
>+#define AC300_EPHY_MII_IO_ENABLE			BIT(0)
>+
>+#define AC300_EPHY_CONFIG_REG			0x06
>+#define AC300_EPHY_BGS_EFFUSE_MASK		GENMASK(15, 12)
>+#define AC300_EPHY_RMII_SEL			BIT(11)
>+#define AC300_EPHY_SHUTDOWN			BIT(0)
>+
>+#define AC300_SYS_CONTROL_ENABLE_BITS \
>+	(AC300_EFUSE_CLK_ENABLE | AC300_EPHY_REG_CLK_ENABLE | \
>+	 AC300_CLKIN_GATING_ENABLE | AC300_EPHY_RESET_DEASSERT | \
>+	 AC300_CHIP_RESET_DEASSERT)
>+
>+#define AC300_SYS_IO_VALUE \
>+	(FIELD_PREP(AC300_MDIO_DRV_MASK, AC300_IO_DRV_LEVEL_2) | \
>+	 FIELD_PREP(AC300_MII_DRV_MASK, AC300_IO_DRV_LEVEL_2) | \
>+	 AC300_CLKIN_PAD_ENABLE | AC300_EPHY_MII_IO_ENABLE)
>+
>+struct ac300_ephy_ctl {
>+	struct acx00_ephy_control control;
>+	struct mdio_device *mdiodev;
>+	struct clk *clk;
>+	struct mutex lock; /* Serializes power sequencing and state. */
>+	u16 sys_control;
>+	u16 ephy_config;
>+	phy_interface_t interface;
>+	bool package_known;
>+	bool internal_dldo;
>+	bool powered;
>+};
>+
>+static unsigned int
>+ac300_ephy_ctl_link_addr(const struct ac300_ephy_ctl *priv)
>+{
>+	return priv->mdiodev->addr - AC300_EPHY_CONTROL_ADDR_OFFSET;
>+}
>+
>+static u16 ac300_ephy_ctl_config(const struct ac300_ephy_ctl *priv)
>+{
>+	return priv->ephy_config |
>+		(priv->interface == PHY_INTERFACE_MODE_RMII ?
>+		 AC300_EPHY_RMII_SEL : 0);
>+}
>+
>+static int ac300_ephy_ctl_power_off_locked(struct ac300_ephy_ctl *priv)
>+{
>+	int err;
>+	int ret;
>+
>+	if (!priv->powered)
>+		return 0;
>+
>+	ret = mdiodev_write(priv->mdiodev, AC300_EPHY_CONFIG_REG,
>+			    ac300_ephy_ctl_config(priv) | AC300_EPHY_SHUTDOWN);
>+	err = mdiodev_write(priv->mdiodev, AC300_SYS_IO_REG, 0);
>+	if (!ret)
>+		ret = err;
>+	err = mdiodev_write(priv->mdiodev, AC300_SYS_CONTROL_REG,
>+			    priv->package_known && !priv->internal_dldo ?
>+			    AC300_CHIP_RESET_DEASSERT : 0);
>+	if (!ret)
>+		ret = err;
>+
>+	clk_disable_unprepare(priv->clk);
>+	priv->powered = false;
>+
>+	return ret;
>+}
>+
>+static int ac300_ephy_ctl_power_off(struct acx00_ephy_control *control)
>+{
>+	struct ac300_ephy_ctl *priv =
>+		container_of(control, struct ac300_ephy_ctl, control);
>+	int ret;
>+
>+	mutex_lock(&priv->lock);
>+	ret = ac300_ephy_ctl_power_off_locked(priv);
>+	mutex_unlock(&priv->lock);
>+
>+	return ret;
>+}
>+
>+static int
>+ac300_ephy_ctl_set_interface(struct acx00_ephy_control *control,
>+			     phy_interface_t interface)
>+{
>+	struct ac300_ephy_ctl *priv =
>+		container_of(control, struct ac300_ephy_ctl, control);
>+	u16 value;
>+	int ret = 0;

RCT

>+
>+	switch (interface) {
>+	case PHY_INTERFACE_MODE_MII:
>+		value = 0;
>+		break;
>+	case PHY_INTERFACE_MODE_RMII:
>+		value = AC300_EPHY_RMII_SEL;
>+		break;
>+	default:
>+		return -EINVAL;
>+	}
>+
>+	mutex_lock(&priv->lock);
>+	if (priv->interface == interface)
>+		goto out_unlock;
>+
>+	if (priv->powered)
>+		ret = mdiodev_modify(priv->mdiodev, AC300_EPHY_CONFIG_REG,
>+				     AC300_EPHY_RMII_SEL, value);

value can be moved, same like for previous patch

>+	if (!ret)
>+		priv->interface = interface;
>+
>+out_unlock:
>+	mutex_unlock(&priv->lock);
>+
>+	return ret;
>+}
>+
>+static int ac300_ephy_ctl_power_on(struct acx00_ephy_control *control,
>+				   unsigned int phy_addr)
>+{
>+	struct ac300_ephy_ctl *priv =
>+		container_of(control, struct ac300_ephy_ctl, control);
>+	u8 package_status;
>+	u16 reset_value;
>+	int sys_control;
>+	int ret;
>+
>+	if (phy_addr != ac300_ephy_ctl_link_addr(priv))
>+		return -EINVAL;
>+
>+	mutex_lock(&priv->lock);
>+	if (priv->powered) {
>+		ret = 0;
>+		goto out_unlock;
>+	}
>+
>+	ret = clk_prepare_enable(priv->clk);
>+	if (ret)
>+		goto out_unlock;
>+	priv->powered = true;
>+
>+	/* Keep the external-supply configuration across subsequent resets. */
>+	reset_value = priv->package_known && !priv->internal_dldo ?
>+		      AC300_CHIP_RESET_DEASSERT : 0;
>+	ret = mdiodev_write(priv->mdiodev, AC300_SYS_CONTROL_REG, reset_value);
>+	if (ret)
>+		goto err_power_off;
>+
>+	/* The manual requires both resets to be released before the clocks. */
>+	ret = mdiodev_write(priv->mdiodev, AC300_SYS_CONTROL_REG,
>+			    AC300_EPHY_RESET_DEASSERT |
>+			    AC300_CHIP_RESET_DEASSERT);
>+	if (ret)
>+		goto err_power_off;
>+
>+	/* Retain the vendor clock-enable defaults, including the eFuse clock. */
>+	ret = mdiodev_write(priv->mdiodev, AC300_SYS_CONTROL_REG,
>+			    priv->sys_control);
>+	if (ret)
>+		goto err_power_off;
>+
>+	sys_control = mdiodev_read(priv->mdiodev, AC300_SYS_CONTROL_REG);
>+	if (sys_control < 0) {
>+		ret = sys_control;
>+		goto err_power_off;
>+	}
>+	if (sys_control & AC300_MDIO_ERROR) {

sys_control is checked for both and both ifs are contradictory
if else?

>+		ret = mdiodev_write(priv->mdiodev, AC300_SYS_CONTROL_REG,
>+				    priv->sys_control | AC300_MDIO_ERROR);
>+		if (ret)
>+			goto err_power_off;
>+
>+		sys_control = mdiodev_read(priv->mdiodev, AC300_SYS_CONTROL_REG);
>+		if (sys_control < 0) {
>+			ret = sys_control;
>+			goto err_power_off;
>+		}
>+		if (sys_control & AC300_MDIO_ERROR) {
>+			ret = -EIO;
>+			goto err_power_off;
>+		}
>+	}

somehow that doubling instructions with only AC300_MDIO_ERROR changed
doesn't appeal to me, could be done with goto saving some lines
purely cosmetic nothing critical

>+
>+	package_status = FIELD_GET(AC300_PACKAGE_STATUS_MASK, sys_control);
>+	if ((~package_status & AC300_PACKAGE_PHY_ADDR_MASK) !=
>+	    ac300_ephy_ctl_link_addr(priv)) {
>+		ret = -EINVAL;
>+		goto err_power_off;
>+	}
>+
>+	priv->internal_dldo = package_status & AC300_PACKAGE_POR_INTERNAL_DLDO;
>+	priv->package_known = true;
>+	ret = mdiodev_modify(priv->mdiodev, AC300_SYS_BIAS1_REG,
>+			     AC300_INTERNAL_DLDO_ENABLE,
>+			     priv->internal_dldo ?
>+			     AC300_INTERNAL_DLDO_ENABLE : 0);
>+	if (ret)
>+		goto err_power_off;
>+
>+	/* Keep the documented default drive level and leave the IRQ disabled. */
>+	ret = mdiodev_write(priv->mdiodev, AC300_SYS_IO_REG,
>+			    AC300_SYS_IO_VALUE);
>+	if (ret)
>+		goto err_power_off;
>+
>+	fsleep(10000);
>+
>+	ret = mdiodev_write(priv->mdiodev, AC300_EPHY_CONFIG_REG,
>+			    ac300_ephy_ctl_config(priv) | AC300_EPHY_SHUTDOWN);
>+	if (ret)
>+		goto err_power_off;
>+
>+	fsleep(10000);
>+
>+	ret = mdiodev_write(priv->mdiodev, AC300_EPHY_CONFIG_REG,
>+			    ac300_ephy_ctl_config(priv));
>+	if (ret)
>+		goto err_power_off;
>+
>+	goto out_unlock;
>+
>+err_power_off:
>+	ac300_ephy_ctl_power_off_locked(priv);
>+out_unlock:
>+	mutex_unlock(&priv->lock);
>+
>+	return ret;
>+}
>+
>+static int ac300_ephy_ctl_probe(struct mdio_device *mdiodev)
>+{
>+	struct device *dev = &mdiodev->dev;
>+	struct ac300_ephy_ctl *priv;
>+	unsigned long clk_rate;
>+	unsigned int phy_addr;
>+	u8 calibration;
>+	u8 bgs_effuse_code;
>+	u8 package_status;
>+	int mask_version;
>+	int sys_control;
>+	int ret;

RCT

>+
>+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>+	if (!priv)
>+		return -ENOMEM;
>+	if (mdiodev->addr < AC300_EPHY_CONTROL_ADDR_OFFSET ||
>+	    mdiodev->addr > AC300_EPHY_CONTROL_ADDR_OFFSET +
>+			    FIELD_MAX(AC300_PACKAGE_PHY_ADDR_MASK))
>+		return dev_err_probe(dev, -EINVAL,
>+				     "control address is outside the package range\n");
>+	priv->mdiodev = mdiodev;
>+	mutex_init(&priv->lock);
>+
>+	ret = devm_regulator_get_enable(dev, "vcc1");
>+	if (ret)
>+		return dev_err_probe(dev, ret,
>+				     "failed to enable VCC1 supply\n");
>+
>+	/* Wait for the power-on reset interval specified by the manual. */
>+	fsleep(10000);
>+
>+	priv->clk = devm_clk_get(dev, NULL);
>+	if (IS_ERR(priv->clk))
>+		return dev_err_probe(dev, PTR_ERR(priv->clk),
>+				     "failed to get input clock\n");
>+
>+	ret = devm_clk_rate_exclusive_get(dev, priv->clk);
>+	if (ret)
>+		return dev_err_probe(dev, ret, "failed to lock clock rate\n");
>+
>+	clk_rate = clk_get_rate(priv->clk);
>+	switch (clk_rate) {
>+	case 24000000:

why do not provide defines also for these?

>+		priv->sys_control = AC300_EPHY_CLK_SEL_24_MHZ;
>+		break;
>+	case 25000000:
>+		priv->sys_control = AC300_EPHY_CLK_SEL_25_MHZ;
>+		break;
>+	case 27000000:
>+		priv->sys_control = AC300_EPHY_CLK_SEL_27_MHZ;
>+		break;
>+	default:
>+		return dev_err_probe(dev, -EINVAL,
>+				     "unsupported input clock rate %lu Hz\n",
>+				     clk_rate);
>+	}
>+	priv->sys_control |= AC300_SYS_CONTROL_ENABLE_BITS;
>+
>+	ret = nvmem_cell_read_u8(dev, "calibration", &calibration);
>+	if (ret)
>+		return dev_err_probe(dev, ret,
>+				     "failed to read calibration data\n");
>+
>+	/* The vendor driver supplies no transfer function beyond this offset. */
>+	bgs_effuse_code = (calibration + AC300_EPHY_BGS_EFFUSE_OFFSET) &
>+			   FIELD_MAX(AC300_EPHY_BGS_EFFUSE_MASK);
>+	priv->ephy_config =
>+		FIELD_PREP(AC300_EPHY_BGS_EFFUSE_MASK, bgs_effuse_code);
>+	/* EPHY_MODE and BIST_CLK_EN stay clear for normal operation. */
>+
>+	priv->control.power_on = ac300_ephy_ctl_power_on;
>+	priv->control.power_off = ac300_ephy_ctl_power_off;
>+	priv->control.set_interface = ac300_ephy_ctl_set_interface;
>+	/* MII is the reset default used until the MAC supplies its interface. */
>+	priv->interface = PHY_INTERFACE_MODE_MII;
>+	mdiodev_set_drvdata(mdiodev, &priv->control);
>+
>+	/* Validate the package while the control endpoint is known to respond. */
>+	phy_addr = ac300_ephy_ctl_link_addr(priv);
>+	ret = ac300_ephy_ctl_power_on(&priv->control, phy_addr);
>+	if (ret)
>+		return ret;
>+
>+	sys_control = mdiodev_read(mdiodev, AC300_SYS_CONTROL_REG);
>+	if (sys_control < 0) {
>+		ret = sys_control;
>+		goto err_disable;
>+	}
>+	package_status = FIELD_GET(AC300_PACKAGE_STATUS_MASK, sys_control);
>+
>+	mask_version = mdiodev_read(mdiodev, AC300_MASK_VERSION_REG);
>+	if (mask_version < 0) {
>+		ret = mask_version;
>+		goto err_disable;
>+	}
>+
>+	dev_info(dev, "chip version %u, mask version %u, package %#x, %s supplies, PHY %u, %lu Hz clock\n",
>+		 (unsigned int)FIELD_GET(AC300_CHIP_VERSION_MASK, sys_control),
>+		 (unsigned int)FIELD_GET(AC300_MASK_VERSION_MASK, mask_version),
>+		 package_status,
>+		 package_status & AC300_PACKAGE_POR_INTERNAL_DLDO ?
>+			"POR/internal DLDO" : "reset pin/external VDD",
>+		 ac300_ephy_ctl_link_addr(priv), clk_rate);
>+
>+	ret = ac300_ephy_ctl_power_off(&priv->control);
>+	if (ret)
>+		return dev_err_probe(dev, ret,
>+				     "failed to quiesce control block\n");
>+
>+	return 0;
>+
>+err_disable:
>+	ac300_ephy_ctl_power_off(&priv->control);
>+	return ret;
>+}
>+
>+static void ac300_ephy_ctl_remove(struct mdio_device *mdiodev)
>+{
>+	struct acx00_ephy_control *control = mdiodev_get_drvdata(mdiodev);
>+
>+	control->power_off(control);
>+}
>+
>+static const struct of_device_id ac300_ephy_ctl_of_match[] = {
>+	{ .compatible = "x-powers,ac300-ephy-ctl" },
>+	{ }
>+};
>+MODULE_DEVICE_TABLE(of, ac300_ephy_ctl_of_match);
>+
>+static struct mdio_driver ac300_ephy_ctl_driver = {
>+	.probe = ac300_ephy_ctl_probe,
>+	.remove = ac300_ephy_ctl_remove,
>+	.shutdown = ac300_ephy_ctl_remove,
>+	.mdiodrv.driver = {
>+		.name = "ac300-ephy-ctl",
>+		.of_match_table = ac300_ephy_ctl_of_match,
>+	},
>+};
>+
>+mdio_module_driver(ac300_ephy_ctl_driver);
>+
>+MODULE_AUTHOR("James Hilliard <james.hilliard1@gmail.com>");
>+MODULE_DESCRIPTION("X-Powers AC300 Ethernet PHY control driver");
>+MODULE_LICENSE("GPL");
>diff --git a/drivers/net/phy/xpowers-acx00.h b/drivers/net/phy/xpowers-acx00.h
>index 482ba6faba6e..0af8895e4cae 100644
>--- a/drivers/net/phy/xpowers-acx00.h
>+++ b/drivers/net/phy/xpowers-acx00.h
>@@ -4,6 +4,8 @@
> 
> #include <linux/phy.h>
> 
>+#define AC300_EPHY_CONTROL_ADDR_OFFSET	16
>+
> struct acx00_ephy_control {
> 	int (*power_on)(struct acx00_ephy_control *control,
> 			unsigned int phy_addr);
>
>-- 
>2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
