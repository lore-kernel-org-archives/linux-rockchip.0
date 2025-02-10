Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A5DAC021A1
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 19:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbHUxPQEs102hqhgkOlKczVnOjk1aOnaQsKV54wmPhY=; b=EqgCeGMsJxFKJd
	cuQAn52HJa0gyZ0ey+ZR0ksaPmuKYFNt3AzAgjpT7VeAiz5XGPldCUekr2QaMQDRP+A0iQhFaIw/j
	gcPSwqSUT+WwRWFaeCJpyH8jDIuouOmQfQC/o1GbgN5Xd9tjE5DZfT6KFErhJn/lUzkYT0FalAVXc
	nUD9HYiSoYRYAl34hqT60xhlbV/5Udi15oBfrrx/pck0VIBXsFFasXR6h9Tm0bVMPWExnawuYLyLV
	QZKWRC8iKXbCX/zdZccS0LqYcExc7eZ4KrvX4A7JaecBeQfOGiyqxVKVuyWVOPGiPLP+Q7MHpTgMt
	sc9989m8K2JxHJuy+cKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thZYO-000000016QA-2Ti4;
	Mon, 10 Feb 2025 19:34:48 +0000
Received: from mail-bn8nam12olkn2080f.outbound.protection.outlook.com ([2a01:111:f403:2c18::80f] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thXTy-00000000hgS-1ao9
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Feb 2025 17:22:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JBtagsGHrTYH/waVnO0mnQAW/f6K3/88gRnRE3EHGRz+H4nOAFOdlbT4DnsM/wLZV8h7ZsgnmU1G1od2OPbSugGmRBqmG8oIi2++l8PWiIi1HCZFYl0DLXNO+JkaSYxgdrF5E3XJholxAv1G2NE27Na4usUGobrluLlcVDRzZ2WJa3aP4dHRsD5EwJ4Mf/IQ4OsVmXJOjBezVuPfYbaLfyfHjcE7WZOn9ZDmPVQiuY1PRC2pr600IBo4OK9xhLPRloxkKwxxUpX9+LzBE1ZwNEnuOfRyz/aYrTnSSJRhNClRLdrP1jPrv8+iTgbdXSKXOH74JDaeclEnUlO4DqCoxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=586s+xv8Wfxj1iqFjDLz/5sEGusUMzmeJTuRzOcqGzk=;
 b=K+xcV52wUgsTH/dTIhFMwjCBeDy9caT8pooY8oU2cMQZmOGNVGXo2MAK0+dvALHnmXKFiszAc/vPnHanaGKIIoxrAQMZKKOVNH2+VwCsvDxmzIfcnTS/vQY+sFxSyQjsc/iy/d4kQ3j1k2jf7fd0CDyFacF+fWF1CbwpUx7grc9xj7Fwckv2d/RpQKqzV1mphaofgv0Xz6orNLsF1feCBZ7Qn4N9epXe2QQWsRk9TJ3B9vAhatWCrvN4akper1i0NlLDoBTCl/Jqy8+GrR2OUgnx6Vf4C5Z0KUQ7Y113U2Z7JRxPKZ73NB9aQDihn0pWe3Yar8EeQycpEkdy/cy2/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=586s+xv8Wfxj1iqFjDLz/5sEGusUMzmeJTuRzOcqGzk=;
 b=CS9wqqOUTKN+Wwssjt6BYfmvyRppuxtguLpSWsRRSBhW78qRaCHPR/BLVKBdRPGrpTkkTfifE9VrvcKsPdjxsHDGsN2McDdLlB9LHke3MwTJcVfck+veZzO2Iq5i53DLDMBIobh9mdwucNrBEa2/v0JCb9zsZpr3YxDxFbMrqFcbwwk8QrwhLW1+TQZ8nLH7zqcR2JLggoWnSxLpyGuy1GcsCQ6oIzp1v5r2VobeSBqYx36eoIYk90Vc6EXEzw5dY0LHEXy3xXXGKz6Ou28ME2EOpPKl5lY649CM3OhqxoaTPSmx+G5FOGPZOsDQWz02WrDIhdNKmUpFvWe907RPtQ==
Received: from DM6PR19MB3722.namprd19.prod.outlook.com (2603:10b6:5:205::25)
 by CH2PR19MB3880.namprd19.prod.outlook.com (2603:10b6:610:97::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Mon, 10 Feb
 2025 17:06:58 +0000
Received: from DM6PR19MB3722.namprd19.prod.outlook.com
 ([fe80::bcae:8341:5687:fb8c]) by DM6PR19MB3722.namprd19.prod.outlook.com
 ([fe80::bcae:8341:5687:fb8c%4]) with mapi id 15.20.8422.011; Mon, 10 Feb 2025
 17:06:58 +0000
Date: Mon, 10 Feb 2025 11:06:54 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Quentin Schulz <quentin.schulz@cherry.de>,
	Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
Message-ID: <DM6PR19MB372282D74E6B093C00033BF2A5F22@DM6PR19MB3722.namprd19.prod.outlook.com>
References: <20250130181005.6319-1-macroalpha82@gmail.com>
 <40c37c4e-b98f-47bf-a4ad-b977be5a6d49@cherry.de>
 <MN2PR19MB3728A89B77464B7B10543628A5F42@MN2PR19MB3728.namprd19.prod.outlook.com>
 <2925297.Mh6RI2rZIc@diego>
Content-Disposition: inline
In-Reply-To: <2925297.Mh6RI2rZIc@diego>
X-ClientProxiedBy: SA1PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:806:2d2::11) To DM6PR19MB3722.namprd19.prod.outlook.com
 (2603:10b6:5:205::25)
X-Microsoft-Original-Message-ID: <Z6oyLuk2ddyaIYyw@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR19MB3722:EE_|CH2PR19MB3880:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e133b19-b2f8-449d-561f-08dd49f553a3
X-Microsoft-Antispam: BCL:0;ARA:14566002|461199028|15080799006|7092599003|6090799003|5072599009|19110799003|8060799006|3412199025|440099028|41001999003;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?k9fLpDL1t6uLu3vhHWVuirI95coWHytuhU2GXiqo8E9m/+uS7exsiZAI9G?=
 =?iso-8859-1?Q?QEydEEVL0wEJ11QbHkSsQ57cyxhy+VeWO79Aur1wDsIqt4+Y1ONAG0e7tu?=
 =?iso-8859-1?Q?QwQ3HgO4dsxTAjtdkeX4zT33Bk3F3N7pcGotMu4TxP0sCtd6rNEkRb4A3J?=
 =?iso-8859-1?Q?BS7OQmTm9VFvwdaS/X06+zFqSewIVSg3m2hnMwJLmiCw3dXcPTwbxxAFiw?=
 =?iso-8859-1?Q?LUwOHAOD14D4ekgTSty3HjMi8VigLmdRV/9nr8m4If0UwVR/KtfMz7LLJb?=
 =?iso-8859-1?Q?7wUcz8WHi6nGa8d5Yp9VyshyPXRYhLv2iz9fMyd+w6h2X2dw72yAFfCWq8?=
 =?iso-8859-1?Q?ogJMP4mSECvA7UxyTmXIO7JTVCF6d5TS4Xh3XJmIkL6KukHh28rOmx8BIB?=
 =?iso-8859-1?Q?RSAAJMD8398j8qFImgBOSB32OXzj7KQWoAAZY8AokDiQSJBRVkqzBlrKS9?=
 =?iso-8859-1?Q?jeIizDhAoHLnpgcxZdOu6gtEpPSkF6F0cHmvfq9mreJVMtJfL8oaFAFFUA?=
 =?iso-8859-1?Q?CyBA16nb7hHI3brNaxxFURApPjgWxlt2panUii3JvJ7TISiNmvI41cmdr7?=
 =?iso-8859-1?Q?0SHqc27N4Q0J4amUWDv30pKbQ/ZCsmjk5/RFgmpGzjb9Qds3me1xi0SfKM?=
 =?iso-8859-1?Q?kEZtEKnppHqYNxjgIGvolbrD+S1Rk9ToBu6xSHefzHlQrQTLSxbw2FXYIU?=
 =?iso-8859-1?Q?zMCAsbifde6uYMHzGUe0awXmg4uCgFpDv8dHahrXU/QcYgL/jmn35IGJqT?=
 =?iso-8859-1?Q?gJOD6WL78bBEXgYEfp9jevWxPivPOwZFH8WWaSoKJOLkIOxZS9hoXsNcvO?=
 =?iso-8859-1?Q?1tNYuqtfwmwiDFscsqRI36HYG1UPG9SEho+HaKDXsqi4u0a5HVmTo8ZPBH?=
 =?iso-8859-1?Q?irG1eUSE59lyecccFAS4MIrLzMHqyZ4PY8HSvSoBc+hmRNxS4c9R0bvId4?=
 =?iso-8859-1?Q?rdyJbz4sQj1X7ALtXYtOBFc5Rt9NGLO8bV3N+i0BvvJNoPRGcG4QlXDKV9?=
 =?iso-8859-1?Q?cZ2ppPxMD5+zAybz/Cr8PWaiRdIk92KUKq6hZ+g0/0WknJDx6HHOqfyRSS?=
 =?iso-8859-1?Q?RHZk20lFFilUhXKN2jO1g95iC5twNRn2Uo33fq4XdqcqAyMZKg/NyyXo4p?=
 =?iso-8859-1?Q?nyd8OHcPCM8JTDJgeLwlfdjeqAO2v6rqrSVoGkymHv70riC6Lx9+mbmDLc?=
 =?iso-8859-1?Q?YGF1Q2NV9r8Qow=3D=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?YqrcdepsZczNhexsRr1XOEzmTryomXVotGBFP3h9KxiPmlhLTj2Aava015?=
 =?iso-8859-1?Q?XiD2ilxXXbRw9CaAALUg6WLQZvqs3eikj1fq85lmkp2uTe4Kdk6ueGZtf0?=
 =?iso-8859-1?Q?EAOd8yiM6M9CRo4FISWBDsEd2LVw267RBNRO2PIJ5/t/nHO2E7fm/0XOCv?=
 =?iso-8859-1?Q?SspiiBupU1XyrxehaDTDf8WZyOQtf4ES11tAo/2tFz0NE+55FhcdfSjiM0?=
 =?iso-8859-1?Q?E0dBFzvG8uwlCvlJWHiQVezINGEhOvGqN5jWnBNAebtxSARoiYqTGM6KoP?=
 =?iso-8859-1?Q?75VsLCJ+XCvEwQ1TwKcpQOdj/iqzefdP9xTC1IwRI70Nik7wCiryILSYM7?=
 =?iso-8859-1?Q?UWMvd2DnaYkzHfitotbTHDzNzoef2Sp3CpvkZAmcVRFCXVROteaFPd44Xp?=
 =?iso-8859-1?Q?JFYZX6jMbQsIvDdGTPshxzahsKkRVKfNp3PyBFb8T4BZ5Xs5CzhGKzEX9N?=
 =?iso-8859-1?Q?LZtL1X3+oAsv9nzMF5VY77tn6+tRgCvvLyg5xUuDHE8Faj1EDWth1Ka4Hm?=
 =?iso-8859-1?Q?lGtNNkPqT1E5B/g3+HWjWpDymM83RIly7R3/a8cWIsf60qdwORCaEfxqUN?=
 =?iso-8859-1?Q?i0upsGHHPhD3GNWv93OvUmDGbx+Ok8RpVW5fmuJQVPPDwMpK3/uQXfez5L?=
 =?iso-8859-1?Q?VqU9MPrsiwLWFWcxh9BYS4aST1yuAqCjDBn8JNkuyBQkmhxoIGDslB0Y8j?=
 =?iso-8859-1?Q?tb65bwKTGlsyj7iRbRjoRbUAsnWYv4wISvNXPVufPBIsrvOvOc7RVeSDRa?=
 =?iso-8859-1?Q?9zh9cAWnWlwGdhn7mGxg+c88njFwD475X7KiEy2uithRaUFTG4Zge5ZjSn?=
 =?iso-8859-1?Q?3GCHf0KirX+xohitIHBaKoltxSC6pg63kasyLmgupyD/xBjcRvSdF92iON?=
 =?iso-8859-1?Q?a+X85gA4sBvVnzY7dnPieEbfpvfM8ltlivqcZYOQwnbkFSlwalQLYTgEiA?=
 =?iso-8859-1?Q?6+kS9rbOACKL6HektKB1hNlyZcCqo6oNcH5J3wVbfc4nmUytfk0AligR9L?=
 =?iso-8859-1?Q?rNxRzJEIPgfThg3k5NmPKf/LPIW8qnjjsRxTOV6ZUldA/TrkO6IrWvnz2W?=
 =?iso-8859-1?Q?YpHC2sEdzRgcDV8xGLr5mpmYzpUT31a0U0voMWydf9/D0+1UpGE9j01RJH?=
 =?iso-8859-1?Q?YfOd3tNB0o1ovUjyjKZ2yznghZlYIdd8mK1/d6kHSw902mTiLRgA/YbiVM?=
 =?iso-8859-1?Q?3RJhlwrCAsFUV2WgyVlnkwL7SNlzlw89ElpYcWs912JDGpHfpV3A7EZmrB?=
 =?iso-8859-1?Q?TuwaATKDaHcNx+hHPmfuFVzxdJKQxw6rI6LqAtcthUJyfAxuTHGU/C3puH?=
 =?iso-8859-1?Q?51YqWbmYLPeb5xquhckq/rb0oV5kUWPskTQB6o2+QXMrA3FSY+ZEN0jvIM?=
 =?iso-8859-1?Q?+7i+k432Vn?=
X-OriginatorOrg: sct-15-20-7741-18-msonline-outlook-c907d.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e133b19-b2f8-449d-561f-08dd49f553a3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB3722.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2025 17:06:58.0995
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR19MB3880
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_092206_423017_035AFE38 
X-CRM114-Status: GOOD (  58.93  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Feb 10, 2025 at 11:20:27AM +0100, Heiko St=FCbner wrote:
> Hi,
> =

> Am Dienstag, 4. Februar 2025, 17:16:22 MEZ schrieb Chris Morgan:
> > On Tue, Feb 04, 2025 at 10:12:26AM +0100, Quentin Schulz wrote:
> > > Hi Chris,
> > > =

> > > On 2/3/25 10:27 PM, Chris Morgan wrote:
> > > > On Mon, Feb 03, 2025 at 05:32:53PM +0100, Quentin Schulz wrote:
> > > > > Hi Chris,
> > > > > =

> > > > > On 1/31/25 5:59 PM, Chris Morgan wrote:
> > > > > > On Fri, Jan 31, 2025 at 05:46:20PM +0100, Quentin Schulz wrote:
> > > > > > > Hi Chris,
> > > > > > > =

> > > > > > > On 1/30/25 7:10 PM, Chris Morgan wrote:
> > > > > [...]
> > > > > > > > When Optee is not present or used, the node will trigger a =
probe
> > > > > > > > that generates a (harmless) message on the kernel log.
> > > > > > > > =

> > > > > > > =

> > > > > > > And what if we have OP-TEE without this node present, which w=
ould be
> > > > > > > possible if we have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set in U=
-Boot?
> > > > > > > =

> > > > > > > I guess we could detect from U-Boot if a TEE is loaded as par=
t of u-boot.itb
> > > > > > > and fixup the DTB otherwise to mark this node as status =3D "=
disabled"?
> > > > > > > =

> > > > > > =

> > > > > > Based on my understanding of how each of these projects communi=
cate
> > > > > > with each other, Optee can only work if you either include both=
 the
> > > > > > Optee node in the firmware AND the reserved memory nodes yourse=
lf, or
> > > > > > if you have neither and let U-Boot do it (by including each of =
these
> > > > > > patches as well as setting the CONFIG_SPL_ATF_NO_PLATFORM_PARAM=
). So
> > > > > > basically just this node alone is insufficient for it to work t=
oday.
> > > > > > =

> > > > > =

> > > > > Therefore I think we should either have this node defined + the
> > > > > reserved-memory node (with hardcoded address and size if guarante=
ed to be
> > > > > stable forever) added or nothing.
> > > > > =

> > > > > Can we mark a reserved-memory node as "disabled"? If not, then we=
 should
> > > > > rather have nothing at all I believe.
> > > > =

> > > > I honestly would just rather remove this node. The reason I say tha=
t is
> > > > while we support Optee with the RK3399, RK3228, the PX30, and the
> > > > RK3588; howver only the RK3588 has the node already populated in Li=
nux.
> > > > =

> > > =

> > > And we have a product based on PX30 that has OP-TEE OS running withou=
t a
> > > hardcoded node in the DTS, so that's a valid point of comparison to m=
e. That
> > > seems to justify the deletion to me!
> > > =

> > > > > =

> > > > > > The core issue is that Optee requires you to map the memory as
> > > > > > reserved so that Linux doesn't try to use it. You can either do=
 that
> > > > > > yourself or you can have U-Boot do it automatically. Having the=
 Optee
> > > > > > node in the devicetree makes no sense today unless we also carv=
e out
> > > > > > the memory.
> > > > > > =

> > > > > =

> > > > > We should patch U-boot to add these nodes to the DT if an OP-TEE =
OS is
> > > > > passed and either SPL_ATF_NO_PLATFORM_PARAM=3Dy or we cannot dete=
ct the OP-TEE
> > > > > nodes in the kernel DT. What do you think?
> > > > > =

> > > > =

> > > > We would have to assume some hard coded values in that event as I'm=
 not
> > > > aware of a mechanism to grab them at runtime from Optee except when=
 you
> > > > pass it a device tree. That said I think the concern above where you
> > > =

> > > Yes, but that would be the same as BL31 for example and an expected s=
ide
> > > effect of using CONFIG_SPL_ATF_NO_PLATFORM_PARAM except if there's a =
way to
> > > provide information back from TEE to U-Boot without using the params =
that
> > > would be passed by U-Boot to TF-A had we CONFIG_SPL_ATF_NO_PLATFORM_P=
ARAM
> > > disabled.
> > > =

> > > > mention "guaranteed to be stable forever" is the problem, as even n=
ow
> > > > the current address in the Optee upstream project conflicts with the
> > > > kernel_comp_addr_r in upstream U-Boot, necessesitating one of them =
be
> > > > changed (I'm attempting to change the Optee one, for what it's wort=
h).
> > > > =

> > > =

> > > I think it makes more sense to change the load addresses in U-Boot,
> > > especially since those are just the default values for variables whic=
h are
> > > configurable per board type, per board or even per boot, so it's some=
thing
> > > one would be able to modify without necessarily rebuilding anything.
> > > Essentially, it's easier to move that around than checking which OP-T=
EE OS
> > > version one is booting before providing advice on where to load the i=
mage?
> > > Up to you though, no strong opinion there.
> > =

> > I think I mentioned this but in IRC but the consensus was to change Opt=
ee
> > to match the same addresses as the PX30 and RK3399. No strong opinion f=
rom
> > me either, just trying to get it working without stepping on toes anywh=
ere.
> =

> glancing through the thread, did you come to a conclusion whether to drop
> or keep the optee node?
> =

> I.e. from what I see, having this default optee node _without_ the needed
> memory reservation would mean that _if_ an optee runs, the kernel would
> either possibly write over its memory, or we'd end up in an exception thi=
ng
> because the kernel would write over firewall'd memory.
> =

> So at this point, having the optee node here, makes no real sense to me,
> as firmware that would need to add reserved memory to the dt, could also
> just add the optee node in the same run - as we do on other socs already?
> =

> =

> Heiko
> =

> =


I think if I am hearing correctly we decided to drop this node.
In truth whether or not we have the OP-TEE node if OP-TEE is running
and there is no memory defined we'll get an exception when the kernel
tries to overwrite firewalled memory.

Like you said, what makes the most sense (to me) is to just do what we
do for other SoCs and that is to drop this node and rely on the
bootloader to add both it and the correct memory reservations when
OP-TEE is in use. U-Boot will already do that as long as certain
conditions are met which I'm attempting to get OP-TEE and Arm Trusted
Firmware to do; namely increasing the FDT buffer size and updating the
OP-TEE shared memory locations to match the RK3399 and PX30. I owe
U-Boot some proper documentation on that front...

Thank you,
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
