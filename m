Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F297C02193
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Feb 2025 16:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usHqplU54Q+Je88G3IWDumo3rqQHVbhqRl6sn5VSsiY=; b=fueyXQim4uFFjL
	GmUr+XJ9RyHzuHYFSWqugyl+ZB5flmmvI922B6uhGqukTiMgdaXMx6Ehy39L74Vdd3C1kFKTztroW
	g7L4OnBg7FoTrMG6Yk/hYkpy+YTNOtNpZY+5alNZxTn3CeP4Oy9v3kIPh9AbwPa45Cob7PCeh0IiY
	Uc4yP2badLfaLtdibiSs6QjGaTVkkffjKClzamQJU1SLPedqGBDs4eJRhlF2IvW6A6ElmZ6wyMxc7
	Mzujm+wNKxpkQ7Sb6dySQeRrBaHGt/mSZQr+xNM5LoYKptyXtpDiicIjRCnplRlWcC3T+JWwVQPVJ
	5TdAOF8RnpGvhzMcA8Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfLcU-00000000wJB-3U6i;
	Tue, 04 Feb 2025 16:17:50 +0000
Received: from mail-dm6nam12olkn20826.outbound.protection.outlook.com ([2a01:111:f403:2c17::826] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfLbG-00000000wAS-48gY
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Feb 2025 16:16:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZDdd2Dm0CHs2ZvORjTmpSwPkBF69kXARKO0aGDvzZLEQdu0EbrVE9jc8QsgeVLTAy4MQFxvYWmMX7t1IovOmhwlGPiwHvGpAFaUEgKa+2tcQUwLq9OktYftzHoXqvjOYgIvkA9cOC0rVEpyxRdyWalD64yr31H7IC6ZoJTJXnDjIbsyRPzJzG/PXDiPYmxqiFDMXVDydZ5eojvoxerKrkgQsFZjg9bkQf+by/xPXJficrMyRIHdB9CPlxDr/qFpj+dFHFWA1KUg0fpRvAVx9mCJEQmjMKsn+Wvd8qr7JXQ0yCysXBD7t1ZIl98sYej1AuTdpd9JUk9aRF8k2uXncCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hM2bYx+BjAOSekxYaCzGLkhYpzCX4sCk9HxzqwY0cHk=;
 b=G5zzPQaF3d2KxrH+EPheFo19f/0F4g5gkosjcKGUPLgMnSI/HKBR4vJDcELGPSXaarng94j39OrG2cI5vY1x4PSgtB4zuhcjiBTniIYGPQ0UWceOoopEmc3hF+uYRd1rRphSe94/io7vctTBrf5/mVKGw3NA0/iyJG8rkmw12AOlGVHFvK2UEmr/fl4xNsqOT+0JAypplPgGzSuijcDM5R4ftbkY3U8c7Q4fyI+PTdx9nki5EZ7TLiyakEQHLMMCWHHcqcGRNW5mnpJ3e6bKYCUIelnO6OwT8QaxBQbJ9PJ0essUQfuZLSlQKRzof9lNNI/YUVAU7dI/bFwhMQ7WpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hM2bYx+BjAOSekxYaCzGLkhYpzCX4sCk9HxzqwY0cHk=;
 b=b9PColzTFcPKUumVaANGzjDe7J3wwyDneqBgQQikg9rS5QpdSwmis8jYti7yR7IyZ+dFzPugAn+BA2QA6UtrcOteBocLmFbX7uGWrUrkomqFxZoRcOskFsCGirgiRltwIpZMeW46qYpy4O6zzsAVkCnCJmKUJdCp+XTb5FW8F7GtyCoj5inQXiXHcix5EF9tkxAgEuyOpcDqbBqP+Ox3r71LCqsp6F93I0c5sV2H36x740g0kbiDZ7YjtchVSwL2/pmDDzPYx51/Tczn6JuujQZoX1cHolFraGbIiDCC4M5WUbezPVgQ5Jtt2gML0l6ZgdSLi30xMSRays9XKELCig==
Received: from MN2PR19MB3728.namprd19.prod.outlook.com (2603:10b6:208:196::21)
 by SJ0PR19MB4793.namprd19.prod.outlook.com (2603:10b6:a03:2ca::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.10; Tue, 4 Feb
 2025 16:16:29 +0000
Received: from MN2PR19MB3728.namprd19.prod.outlook.com
 ([fe80::35f9:f290:76a1:1c70]) by MN2PR19MB3728.namprd19.prod.outlook.com
 ([fe80::35f9:f290:76a1:1c70%4]) with mapi id 15.20.8398.021; Tue, 4 Feb 2025
 16:16:29 +0000
Date: Tue, 4 Feb 2025 10:16:22 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
Message-ID: <MN2PR19MB3728A89B77464B7B10543628A5F42@MN2PR19MB3728.namprd19.prod.outlook.com>
References: <20250130181005.6319-1-macroalpha82@gmail.com>
 <5d0ae245-1ad3-4e3c-9c68-28babc7290a6@cherry.de>
 <DM6PR19MB3722A5CCBF3FBEAC59189642A5E82@DM6PR19MB3722.namprd19.prod.outlook.com>
 <7266daa9-b031-4c45-8711-c4e6e4be7095@cherry.de>
 <MN2PR19MB3728B870175A9568773D9BD0A5F52@MN2PR19MB3728.namprd19.prod.outlook.com>
 <40c37c4e-b98f-47bf-a4ad-b977be5a6d49@cherry.de>
Content-Disposition: inline
In-Reply-To: <40c37c4e-b98f-47bf-a4ad-b977be5a6d49@cherry.de>
X-ClientProxiedBy: SN7PR04CA0039.namprd04.prod.outlook.com
 (2603:10b6:806:120::14) To MN2PR19MB3728.namprd19.prod.outlook.com
 (2603:10b6:208:196::21)
X-Microsoft-Original-Message-ID: <Z6I9VjxVTSC5RIor@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR19MB3728:EE_|SJ0PR19MB4793:EE_
X-MS-Office365-Filtering-Correlation-Id: bc9239e3-dd93-4378-460b-08dd45374773
X-Microsoft-Antispam: BCL:0;ARA:14566002|5072599009|6090799003|8060799006|19110799003|7092599003|461199028|15080799006|3412199025|440099028|41001999003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PESJhoDEqSZaf6RvGXdU5l2LOVkE9oRpC84HRENDbddL4TyFZicV3yVGV6l1?=
 =?us-ascii?Q?VpcFK1L6apN9AhyJXiNTmPUsrLv06KaITItOMxmeAjKlPEfvbxFcBqaP3u0O?=
 =?us-ascii?Q?rXonv+5cF8dMx+ALUQRp+UGv3LM32ty1QOBlKNDc1ElcAnxXFb87bn4OkXwX?=
 =?us-ascii?Q?wa7/K2QZ4dSp9a95TW6GNQVmX8aUT7MR8HHB/KFCY/ZZTk3pxY/0eXM9yLlS?=
 =?us-ascii?Q?8w+39rg5qtr+5LZ7HQK1HEKl7/FO+2UiFyNrfzHQj2/3m6x4J6FrEukvGclm?=
 =?us-ascii?Q?6R+PLS2k9p1ViaW87RkYc0GuNm4tK12pIluYEGHQlOGTAh3owjeM3PRBNuYl?=
 =?us-ascii?Q?r82IoV3YMtdp5Au75iZ3/iXXsb42/DJU07gZ8iib2xiXHsOlMKxHkp7XRRUg?=
 =?us-ascii?Q?btfPFAb4HGNfVlTe1F+gPoAfh+1QDTGe2vXGrs374zJPHcTs7+9Al5iIrQ5E?=
 =?us-ascii?Q?L2g9dW+N8kfFpInpEmejvt3Z63zAEUYLC7YAKm4ZWwZS8VLQZ+be560HohDS?=
 =?us-ascii?Q?U7wNGkhy2NS9SuOcbqAGm1Z3TGVfr6vO1ZGUQ4PTUxoQYoJMl2+Y+S7YZxqs?=
 =?us-ascii?Q?vhjPUqGu9bXNP4628U/TISTNoRXx3SX6t9wNMr+91Z/bVeccUQeJytYKDS8v?=
 =?us-ascii?Q?k5/t6adnZKVGy6dj4wja+EhlRgNIpUIwPALcZrcIoRWMt5bX2vIyfvzly5rJ?=
 =?us-ascii?Q?gAyVQruGc4hehAhJCDY/PfZDpbSpbSAS9PMJV4HqQDUxSMPAj7VAKyEyAbg4?=
 =?us-ascii?Q?9j7eVGQWAIxad9RYprDAub0H7u2DQAln+ycXz15RMBZZOiAmj4ft+KG9gzOb?=
 =?us-ascii?Q?Gd6a5QVn1hh+X/CBqJZuO8hwTPKEHW39RGJ6IJK/SvmbYiE4Kk4uXlhY+Pb0?=
 =?us-ascii?Q?Oou1Jze0GcqkklEgb+zG+MwxzDnhQPi06WFAbcL/DZBFAI4amEXHVbKiE6rK?=
 =?us-ascii?Q?2+egnrMKV4F7Akf4pM5aku64E9Gw0sFRVgWr/aGmzqZZ3+9s0sCWzslncvRl?=
 =?us-ascii?Q?/7j37zgmRgL4AHPy/Xs2kSStzPopP3b3WvRV6s0rbH0U6ZGQlg4IkhUDJH/e?=
 =?us-ascii?Q?ILbvJxcvCkTs9cltwB+RVsqLC16rN3yHe9Jh6ocLhXvgHj7FjhA5T3jM8gaT?=
 =?us-ascii?Q?+M0Deh6NehiShGutkYJI4DQD4kYAwyFctw=3D=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WYRFi8b9Oxv5GpydI60tBvHa6dTvKNr5TUfeSsRajfDhyP+ex2QU9JVIsyag?=
 =?us-ascii?Q?JNqZNhG14WZxbw3hvAiWHq4+5QF2Qw6VJ7xkeqlqCsBD1GzVWbehXtV1egQk?=
 =?us-ascii?Q?JZNQMpZBSLoniDlO9XFowMYQM3TuEEwFzc5YZEbnvkJULvUL/Og82/ihBGYU?=
 =?us-ascii?Q?JYXYNlQykvqBrF3dMXxL3OuJIiJ70KVdgRk12Zc4V8gBZWVeY8G4qxaI+ODL?=
 =?us-ascii?Q?lCK2OXMcTZS4QtDW5tmRPn7YkNT1Xnhm9Y4IDBjjBaAKw3afg1gDsCliQzE/?=
 =?us-ascii?Q?s3fCPJ7mpoV+WwdlRuHU+BQS4kdbfhcfVNZCkt9p8NIT2NaAiRLP+/Xu7vBs?=
 =?us-ascii?Q?/D93/6njjWxzlYFbY4rYn1M+9XycW21dhqWHveE4EuV4PUdpBbTpOm5XSViT?=
 =?us-ascii?Q?A9oL3Wca4tpd7tTaN1QYw34DvHcnRW99UoMm8KS52jaVzihc4J+I/ksm+nAM?=
 =?us-ascii?Q?tClM577dFRhTcFrF0tfEkCSUEEUSlUq9Uk50b2VUaiQLTl3Z0BMbSEriz3Ft?=
 =?us-ascii?Q?XjPDwi3XvBPVDnjomed164DZw42XbBJEaAWypW8dY2zx7v95id5o4S0vZaH3?=
 =?us-ascii?Q?tbZhRm64aOM+eoXQlYv1uMFpnKZX2gtQfutKb0kp2aEG72StfC/nmOhT4NJn?=
 =?us-ascii?Q?LejkqRlrAQ48uKhDyX8LBq678P75xiNQN5gT7i5XolRLzkGy7qatn3OgiTm5?=
 =?us-ascii?Q?yEBucY7Zy/ucwjLET5nUM2aDPl5FeYnha5Hu/WiYBz2txEsLYmwPMQaCod3x?=
 =?us-ascii?Q?KZ78/CGURNMqjV0/YbUMVFatZRsl7w+5M2JiZYSA5gfzf24uBILBJyvp4Y8x?=
 =?us-ascii?Q?/2/mn1skLj5C7DdzJFP3OvbEY13FaYZO/Uk901p9nBr9oiB6yXLgaqP++Rhr?=
 =?us-ascii?Q?JJAuMLZcU0qEKWwHJssry5fFpv1orT2H0XCEakzS6V+FLsC1nR1Is/TDREUZ?=
 =?us-ascii?Q?d2k6Aj/l2isugl73h78qeNPhsXXisH6zBL//22ilecKCQY4Pfqr6fsQWgB9T?=
 =?us-ascii?Q?ZHnpY3l3+uvEqZBAMjffEfxrsekZwdaxTZbRrL58xm9NEtEborfBZBXunEwF?=
 =?us-ascii?Q?VTeGdXlufSVnkNsIWjjPbbsch0O6HZy/TyKORMJjSlPERxPyo5mAgavizQvW?=
 =?us-ascii?Q?TppjLWP4TKf4/3U0JdMWGMSQZU09Po5ORGb3FI9Xfz7jydhrfzqk+4LT6tIp?=
 =?us-ascii?Q?2J5DX1LFh70aXnvXXLMQcrHB5bblfxf27z3qg5OuvU1tIc3A1D7VWdnD4xZ+?=
 =?us-ascii?Q?l070IkSCcobW7lXwFsbec8dhZvFPx9NIoSEgwWTqL+huUntg5JjbUfvwURjw?=
 =?us-ascii?Q?fTMiDdb1e9+dC8sCiXMLRCXh?=
X-OriginatorOrg: sct-15-20-7741-18-msonline-outlook-c907d.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: bc9239e3-dd93-4378-460b-08dd45374773
X-MS-Exchange-CrossTenant-AuthSource: MN2PR19MB3728.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 16:16:29.3874
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR19MB4793
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_081635_037303_64471385 
X-CRM114-Status: GOOD (  48.18  )
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

On Tue, Feb 04, 2025 at 10:12:26AM +0100, Quentin Schulz wrote:
> Hi Chris,
> 
> On 2/3/25 10:27 PM, Chris Morgan wrote:
> > On Mon, Feb 03, 2025 at 05:32:53PM +0100, Quentin Schulz wrote:
> > > Hi Chris,
> > > 
> > > On 1/31/25 5:59 PM, Chris Morgan wrote:
> > > > On Fri, Jan 31, 2025 at 05:46:20PM +0100, Quentin Schulz wrote:
> > > > > Hi Chris,
> > > > > 
> > > > > On 1/30/25 7:10 PM, Chris Morgan wrote:
> > > [...]
> > > > > > When Optee is not present or used, the node will trigger a probe
> > > > > > that generates a (harmless) message on the kernel log.
> > > > > > 
> > > > > 
> > > > > And what if we have OP-TEE without this node present, which would be
> > > > > possible if we have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set in U-Boot?
> > > > > 
> > > > > I guess we could detect from U-Boot if a TEE is loaded as part of u-boot.itb
> > > > > and fixup the DTB otherwise to mark this node as status = "disabled"?
> > > > > 
> > > > 
> > > > Based on my understanding of how each of these projects communicate
> > > > with each other, Optee can only work if you either include both the
> > > > Optee node in the firmware AND the reserved memory nodes yourself, or
> > > > if you have neither and let U-Boot do it (by including each of these
> > > > patches as well as setting the CONFIG_SPL_ATF_NO_PLATFORM_PARAM). So
> > > > basically just this node alone is insufficient for it to work today.
> > > > 
> > > 
> > > Therefore I think we should either have this node defined + the
> > > reserved-memory node (with hardcoded address and size if guaranteed to be
> > > stable forever) added or nothing.
> > > 
> > > Can we mark a reserved-memory node as "disabled"? If not, then we should
> > > rather have nothing at all I believe.
> > 
> > I honestly would just rather remove this node. The reason I say that is
> > while we support Optee with the RK3399, RK3228, the PX30, and the
> > RK3588; howver only the RK3588 has the node already populated in Linux.
> > 
> 
> And we have a product based on PX30 that has OP-TEE OS running without a
> hardcoded node in the DTS, so that's a valid point of comparison to me. That
> seems to justify the deletion to me!
> 
> > > 
> > > > The core issue is that Optee requires you to map the memory as
> > > > reserved so that Linux doesn't try to use it. You can either do that
> > > > yourself or you can have U-Boot do it automatically. Having the Optee
> > > > node in the devicetree makes no sense today unless we also carve out
> > > > the memory.
> > > > 
> > > 
> > > We should patch U-boot to add these nodes to the DT if an OP-TEE OS is
> > > passed and either SPL_ATF_NO_PLATFORM_PARAM=y or we cannot detect the OP-TEE
> > > nodes in the kernel DT. What do you think?
> > > 
> > 
> > We would have to assume some hard coded values in that event as I'm not
> > aware of a mechanism to grab them at runtime from Optee except when you
> > pass it a device tree. That said I think the concern above where you
> 
> Yes, but that would be the same as BL31 for example and an expected side
> effect of using CONFIG_SPL_ATF_NO_PLATFORM_PARAM except if there's a way to
> provide information back from TEE to U-Boot without using the params that
> would be passed by U-Boot to TF-A had we CONFIG_SPL_ATF_NO_PLATFORM_PARAM
> disabled.
> 
> > mention "guaranteed to be stable forever" is the problem, as even now
> > the current address in the Optee upstream project conflicts with the
> > kernel_comp_addr_r in upstream U-Boot, necessesitating one of them be
> > changed (I'm attempting to change the Optee one, for what it's worth).
> > 
> 
> I think it makes more sense to change the load addresses in U-Boot,
> especially since those are just the default values for variables which are
> configurable per board type, per board or even per boot, so it's something
> one would be able to modify without necessarily rebuilding anything.
> Essentially, it's easier to move that around than checking which OP-TEE OS
> version one is booting before providing advice on where to load the image?
> Up to you though, no strong opinion there.

I think I mentioned this but in IRC but the consensus was to change Optee
to match the same addresses as the PX30 and RK3399. No strong opinion from
me either, just trying to get it working without stepping on toes anywhere.

Thank you,
Chris

> 
> Cheers,
> Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
