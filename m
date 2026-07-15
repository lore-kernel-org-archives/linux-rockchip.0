Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAFFAC44508
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 20:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jk//Atu6hku7RAQkrImVhKmxNA+e9jHgqSyzoZxjsXk=; b=0hHbcDg+gW5Y/E
	EdhSpLl0K95msu/LXnZ/Zv+3J0tX0dTvtQCrQp0K5mK3om9IOS8Aa4q83shtbdPSV4O0T+enfxehx
	l/lByD//IIEI0aiKqC5jGR5VU8YW4andT4dJiUsuIGmQnDPGSwX4H0Y+BVkD/PiFviCofhykIKIt7
	OZbHNO2FiJfVefkbvso7hOzo+8mbxoUpCnkWRkPq6IbKySEORFcRnnILQf5qCA+A230WYAIgn/K3o
	xo6nthYBt9oWWVms0zEo8Ux5BAzrV5UdC/azB+qcUKrUY+CAhiu7cyFHeUHtybm20zUufZChjoElC
	DSR9/5uQsVuqT4S6MWrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk6Js-0000000Ft8t-0fkZ;
	Wed, 15 Jul 2026 20:35:04 +0000
Received: from mail-eastus2azolkn190110000.outbound.protection.outlook.com ([2a01:111:f403:d101::] helo=BN8PR05CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk6Jp-0000000Ft88-3I1S
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 20:35:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ernl11R6RhTteHj6ajp/g5lyzIPDzXuUZb+K/fujomhl0CB70AvVPJaQMS+eeZ5H0oBeU9QxJal16pRrotQCnLW8oGM99yL1tnInkwdijH6B2Lk2KRKtkNSKTot2/l/VPQMD5Q5U404i4qN0giVHaktIXFFA3RXMktEZVv/bLaDmmUeQUNgvEMw0SXYr+62NTuZhe70pJUtZRvOdn7nIyMcKN+7DmJf+kVyPCDqfiHCbK0lglG7JqjDkZ9VgFvv7h+hJNuHfnqok87KrpwVo/xyNdstWBMYDNRxzqTC2gW03THAseXEW3RwjU6EvjeSSt6jjN10oh6PL+9w3psK6tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LELGZiffd1bsIkWvKD47DxzWLNGc1h36azUQR2TMhUQ=;
 b=W0/Cp0gV0EIjeF/jf9ieeAJA+ig7ob9JfFgiGlCA2Fg9sUpAzptcMG2+QgKkf9xrz6xcnh0pD6E1ZfIzMqvipN530a6rW01pfeU8bTzj/q/QPfA6hatAd+V4VtYVlFVsPUd6TCJyTmIPwsBImlwf7lBOq7RqNFdjHI1fCRHfOTfVjZgxAe2KPhUIhldPKHP66EXcm8FFOmUROv/xwcWg9+1Vzq4MsJ5YteqXT50UV6VcXNB1ve6o8yHIQKLqw3W59dCgrt+FOBlQcz6ST5XYyU4L31+WpBeqQG30o+FHB+oCyEGsaEJHdjXjgxIRGy/aKw5ptxVMPCG7MzeMBVYpjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LELGZiffd1bsIkWvKD47DxzWLNGc1h36azUQR2TMhUQ=;
 b=SWD/Hgt5Lwfd/ickXUy8A34u7E/yhptvnoHIwrs56n3YhpY94evGePWNt1pZkQcoGWavCjie54nXLkD7gRiA35JrSf53+1ZIChZ+ApNp2kt/kEh59Lpi+O8vAKwEBDb19SrRV+40j0oNixo1HNMj7y/PrkohabALQRA7jHbZUQvCeaMTckidSo+PTY7ToesWYuUuFkB/oDxHwShAeU71o6REZhvfT2/XqdacmJMNlYxzHsXW3+Arv4phO8vKoHHAAJRKk+poR2bzOC8dEROyL+DeMFjE2ZDB6Qte5TMqezRaE5bwskV1MHLOn9zWgBUiszVNXj/T34WPIB2zZbCkoQ==
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18) by LV8PR19MB8250.namprd19.prod.outlook.com
 (2603:10b6:408:186::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Wed, 15 Jul
 2026 20:34:57 +0000
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172]) by PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172%6]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 20:34:57 +0000
Date: Wed, 15 Jul 2026 15:34:53 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jic23@kernel.org, jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH v16 02/10] dt-bindings: iio: imu: icm42600: Remove
 interrupts from required
Message-ID: <PH0PR19MB99733836951FBC9755A5361641A5F82@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-3-macroalpha82@gmail.com>
 <20260715-mottled-uncovered-mastodon-6c08be@quoll>
 <PH0PR19MB997338D80EB8ABB7C623850A23A5F82@PH0PR19MB997338.namprd19.prod.outlook.com>
 <82e3c736-f06f-484a-887c-9e156cb7cb44@kernel.org>
Content-Disposition: inline
In-Reply-To: <82e3c736-f06f-484a-887c-9e156cb7cb44@kernel.org>
X-ClientProxiedBy: SA0PR11CA0202.namprd11.prod.outlook.com
 (2603:10b6:806:1bc::27) To PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18)
X-Microsoft-Original-Message-ID: <alfu7dyBPvQQqO7d@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR19MB997338:EE_|LV8PR19MB8250:EE_
X-MS-Office365-Filtering-Correlation-Id: 88357cf2-b3cf-45bf-dfd0-08dee2b088cf
X-MS-Exchange-SLBlob-MailProps: znQPCv1HvwUXBahuwteIkQeW30lJPuxOS9ufk7I+HQdx+SF8Knn9K6pwTl/LW2uli/NmRhY1g/L0Wp25hmwV+J1JuhH4uklkT7O7p/0DQNKgtjlPqGNEty+ur5BOuaSMVopm+/ayMElDvAvVEgakxcWQ6yTBC3tvLXQrRwKC+dbUNNrvBQXFX0g5lRvCWF4vh9TGEGMBzVByLiqpyW6dqRSF7PK+K8bqTVY6INVfUKrq1NxXGzsVJixQVnXGyNQbMeU7cJeFrEXlE8LXBOqQqKsdZ0gP/FOuB4lh5RBG3/CroQm3dLK38e3C5uj25MUS0YyX7hAUixzvJTEJELS/hgieK/x8IRxpGbEFsPHCgT2/nNPPnRclnLiGyiEgNOp1/B9VqwJKA4b5pE7YZqcz0MQ9y++B1Yd2HTqqmw6SD6O3vcnRgMC6wUKUYqRa5C1uzcFbULq4cqQ+jkjHAkh0wlUpwz2V1PnReaMEBHbdDCgMO2/ouO6G6cw4ueljIEAFXII4cpyQU1Z0svT3ti7gY95HgaUXD5AddCSh9qnKrLYaDuYdZtz9y4G7Al5CKqAVQKqJIYeE4rsWgVWr51KmWduIChQa77yvHekgud8JumO4Y3BN/m7qFp7OkMPA17gi1Ku40Yb34SiiYorBi/rxU+xMiY0AKDdgG+H5BwxK2NH8sP6eYYcp4/wx5dztnI//KpcgZCDV1nr+dEYYUmukA0R8GkERnBBEwZSNO+UoKHnD5h/XQvqZPZKfca/jcwP7lW4Jo9EP6gE=
X-Microsoft-Antispam: BCL:0;ARA:14566002|23021999003|8060799015|19110799012|55001999006|37011999003|6090799003|51005399006|24021099003|15080799012|25031999004|4140399003|25010399006|5072599009|12121999013|40105399003|440099028|3412199025;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XAt4dRJCKnVeFJ+12rN8GNvXojOqRf0AgiCe5UEt/kLFNVm/ApGkIjQyHyAq?=
 =?us-ascii?Q?HGLpd1vWkpjQzOeyLH0wN2zPB8+Hx4aE4sP7vSUFdSL4eSm1OahHfbly29xm?=
 =?us-ascii?Q?obDZ/X6qFy9ST5H0SJB/QNhwzSpA7IJ4P5GqNByepaa6NIm25cH3tWVHALLV?=
 =?us-ascii?Q?gL+UQnNcYbzKACQj8K6AS1QBZNGRF/HJWzfxQq8ulgYSyj8i8yP5gRcspVPk?=
 =?us-ascii?Q?9sNniGUjauwGiIwvA51/qHZS7Ayl3QHYFHqdxplbTKUdcF0tPKq/GADDN5Zs?=
 =?us-ascii?Q?Vl9BNG33tk2I2rK+uMp21XkvnDHefXDkpzB1CM4NPBdCQUWbmXhoFUPGsz4p?=
 =?us-ascii?Q?SmCTw8JPAISbzUIsrKVTTIUfnXaAIkdVBdx/JTrXZoDD4BiSzz+Yz5K7je8Y?=
 =?us-ascii?Q?GAB3oOm99MC+7gPdJSo6c6RRlg/xMc/uGovutdYGkCDDy0uNivUMupplzg0n?=
 =?us-ascii?Q?LGIdD17NzRYZ+zASGb1QDe1U5OwozFOsw2AtouhK24IKle2AB+4wIzVyVD9f?=
 =?us-ascii?Q?+eFkPT1A/LC9Sct5D0g6bTo5HuVAu4KkJGcy8hCR5Hf3kT/U+HeXYNB5Z5hr?=
 =?us-ascii?Q?59iP+3sDMZQFcpMPiUho6BefFY3Yr1otako6+tSwTGtx5raABuWEjxlRjJkY?=
 =?us-ascii?Q?Vx3H17HRkXP7T9zwXiOgZ6IwFQgfqQG9Xo27kCSePhHWJfAP/eHsy5XJvh1f?=
 =?us-ascii?Q?6Rvy6ghtX4yjL6XrwUCXRX888htMjtqpIGZRZuAfmJsc7mHwcs75zfTuMSl7?=
 =?us-ascii?Q?OWk9wI6wrN0ifztKNhkTF43UKiWPjAaC6PwOk7eeLfu6OUASymYJHnrq2asq?=
 =?us-ascii?Q?C4Kgl9asRBhQ7SrdqAffEp2RXmC3H3GhzqB/PyFmnmX0b9AoUo6JmtEQVkTO?=
 =?us-ascii?Q?hg4VZc6ZF9ySv4fnAf9tkpKuG1xNT5xwprfR8cCSETdyy7G3j88Xrktv8SnQ?=
 =?us-ascii?Q?qNRw7d9hKza4K5wDCnam2UXbxtb3i7zO3g9FhhvkqmMiB6rMKaNxjkdqs7sC?=
 =?us-ascii?Q?EwQo8E3SzsmwR/Rd6+cx2uwpalt2f7Ybres4bLzzPTvuB5G6PlRwTGnqBaFC?=
 =?us-ascii?Q?dz9RP9c0kyvtvoYPCDT09GrY4XWgkE+YNlNjyV91a4UqESBCBNs=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K2dMeNZWIdoMRG0XJ9y68gPyPDAnKQCPuhKfvftJ0skX3/T6H8T2I4RSMKAx?=
 =?us-ascii?Q?aNlhkHoYy3Cjv+TnmPDgl4vic1RcXC0i16YhjtHyLSzzWD10h5qp50XprtRc?=
 =?us-ascii?Q?ZlZL3Tl3NJTOhsB/VwD1CVzg448JtEct/DJrLNSbQ4YSIP317f0e9fhcwlhy?=
 =?us-ascii?Q?9crv/i7KPqb4ejq6KaA1Rw5b/i4oJglSJx6ZcG41l71nSvqEC28gJNVPuQFJ?=
 =?us-ascii?Q?N5bv6ltXGwN1QY1UomasLEMOI0nQOcaIOn1e/wA0UiiIBZbNTM4WGu1my3tc?=
 =?us-ascii?Q?5BEXCpIkJnRnowaAjGLTaGn2gOmD8URwKuIeKtsSUrRzPynkwtFONBUIoV1o?=
 =?us-ascii?Q?iZ35do4v7Yxd6tnDcOB5OwJVGPJTayP6CLCuWQlSK2t1q45jQ/LlOWUj9EXq?=
 =?us-ascii?Q?tbc/repMeT4p6QZciTMla/AVSBnjJ9JHtfmm+RowjiibIiGFnG5DoAPWFdJ1?=
 =?us-ascii?Q?snnLRHOZjA4NBb0wZGTk1T7YXmMPmNZ67WcdmB3q5hEVT/0mxVUATtChW9zQ?=
 =?us-ascii?Q?5tl6KTm2B4ahq/aWQ/lhZMWOv1+/1VGwSi4dfCVWbzrd14xnj4AUB+8+uRnA?=
 =?us-ascii?Q?/kLhw2NOywFKF0IuRThwySBVNK4uOlbKzCdjiehJ/m5RDLWwZMhjhTJj1O9s?=
 =?us-ascii?Q?WMqtfgeI1Y6vao0phYi/rLnrccuVFl8ZF694oSkFhwUkp9PheBg7Yd4pJcoX?=
 =?us-ascii?Q?OqrMgl35S30Nq46aKnq5AU+L6LGzbs3HYcRppwJrDgclKOaVgPOQ97xBvUj5?=
 =?us-ascii?Q?NApraPjxARXXpVTn+It7TzPIVCUI8ZalllmIOA1pnImaMou7ugXpRBFJMbax?=
 =?us-ascii?Q?FEiCxwGTUFtuG88x59yKM660wUUF2cKvD9ElemkNZTkqwP+XY/n8bvbES51H?=
 =?us-ascii?Q?ZmVjD7WD0wTHBeAUDWZiGtZ0SqdNoqs0Pp+ahrQ6QGFXLHcwXEp29EFNi+zs?=
 =?us-ascii?Q?fNQgaqgeg3kZ2UaBHoPkIZCskx3ZZC4PtO0o1iFbC7C6SbVGgLQXpRSyTaLA?=
 =?us-ascii?Q?WEVWmYoEudPDQOceR/wOpSurnoIeoIG6ijfYS0l1mjzj4rZpTM40g2L1Mfua?=
 =?us-ascii?Q?3ESZ9ZeeMGiIjpnUl+MZ6SMwX/erWloTBojCwnNVaKO3F4MB7vRfQfXqOUGf?=
 =?us-ascii?Q?T3FKKZSVGBRPmDM8WE6wIYdX3Io6EWUYcQXuSyoPeI+Y5kWSVLoeOedpLHnG?=
 =?us-ascii?Q?bk0q2nWV2MhQmj+CHpUiDb5oBpV0c6tR0p+nmyt8+01YLZK85qgNNYIbJePU?=
 =?us-ascii?Q?3ZIaM0S0v+n0prx9obUW+koDsVMKrdtNIlFgpVGJ9goKMV6IsOQgoHFraHFh?=
 =?us-ascii?Q?E+95ddPix9FWq8W+IZoq2IzXWaof90Dzgfw0vBbBSdAWmBC0dqxOyQPpaTM3?=
 =?us-ascii?Q?2kovogc5hy87IKyAbeuBms7TGiXKUvx5U5J+RZ0OOS7u3ZO8tHa1YHV7KYgP?=
 =?us-ascii?Q?7ZDX2Bt5BUwFvsN86wwocgRwWV0RH3Kd?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 88357cf2-b3cf-45bf-dfd0-08dee2b088cf
X-MS-Exchange-CrossTenant-AuthSource: PH0PR19MB997338.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 20:34:57.5213
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR19MB8250
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_133501_840938_7F3EB555 
X-CRM114-Status: GOOD (  31.29  )
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

On Wed, Jul 15, 2026 at 08:29:44PM +0200, Krzysztof Kozlowski wrote:
> On 15/07/2026 16:52, Chris Morgan wrote:
> > On Wed, Jul 15, 2026 at 07:52:52AM +0200, Krzysztof Kozlowski wrote:
> >> On Mon, Jul 13, 2026 at 04:58:32PM -0500, Chris Morgan wrote:
> >>> From: Chris Morgan <macromorgan@hotmail.com>
> >>>
> >>> Interrupts are almost never required for IIO devices per upstream
> >>> maintainers. Remove interrupt as a required parameter for the
> >>> devicetree binding.
> >>
> >> That's an odd statement. We do require interrupts when the hardware
> >> requires them. We do not require interrupts, not because we have such
> >> policy, but because hardware does not require them.
> >>
> >> Plus, we do require interrupts when software implementing ABI requires
> >> them.
> >>
> >> Above commit msg is simply inaccurate and misleading. Instead, please
> >> use actual hardware arguments or how ABI is actually used. You must not
> >> introduce changes to ABI just "because" while for example making that
> >> ABI conflicting with existing implementation.
> > 
> > I will defer then to Jonathan on the specifics of this, but from what I
> > can tell:
> > 
> > 1) The icm42600 devices don't need an interrupt for operation other
> > than for buffered mode or wake on movement. One-shot should work
> > without it.
> > 
> > 2) The existing icm42600 driver does require an interrupt however, and
> > refuses to bind without it. The driver could in theory be modified to
> > not require an interrupt though and skip using buffered mode and WoM
> > when no interrupt is present; however I don't plan on making these
> > changes at this time.
> > 
> > 3) The new icm42607 driver I'm trying to upstream does not use an
> > interrupt, because on my current test device it's not even wired up.
> > On future devices that I have with this chip I may pursue using an
> > interrupt, but it will never be required.
> > 
> > So should I go back to requiring the interrupt for all devices except
> > for the new driver then?
> 
> You mentioned two drivers, I don't know how does this relate to them. In
> any case your commit msg is inaccurate and not a correct reason to make
> a change.
> 
> Best regards,
> Krzysztof

I'm confused, so again should I just go back to the way things were?

This binding is to describe the hardware for devices using two distinct
drivers, the inv_icm42600 and the new (that I am trying to finish)
inv_icm42607 driver. The hardware requires an interrupt if you want to
use features such as wake-on-motion or hardware buffers. The existing
driver inv_icm42600 always assumes an interrupt is present and thus
fails to probe if one is not (making it a "requirement"). The new
driver I'm writing does not use the interrupt, because I don't have
one.

I'm thinking I'll just go back to the way it was previously, unless
Jonathan disagrees. The interrupt will be listed as required for all
devices using the inv_icm42600 driver, and not required for devices
using the inv_icm42607 driver.

Thank you.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
