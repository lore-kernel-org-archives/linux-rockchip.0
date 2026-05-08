Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53D4ECD3436
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 May 2026 05:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wp4N+q3YVVSAFxqNNE72D4FoTSRqYnzrMxDd1HFw/Sc=; b=RLyZ0AvOWQi34p
	g7ZIzb1TtcgmAiGJUiChKZnyCLz+9ia2iFEBW5AD3kSrjhnN7Ei2DUFwmw8mJifR0Ldgk0scQSbUM
	nGAU7CwJoTNvfQyN/NtQUSzdBW1k2JtvYidRty9+HcsVDX+DyfFsE+2aQ1PfWXc6JqUthNvf7fM+y
	Q2ca5qx5ASj08eaqaMwB1rPef50Q7bONDFaOhcGhQI4XcLcX6Xe43Ls9ICJBdqivHEKzcScM2tn2j
	fWVhpAxDmq35laVscl1pX0XPc3r3jA3SH9mxCLkNJvP4nckSWAfnas8CF13jboVEkm0M7mh51T2MB
	aGpldTKyzksJAzgZsZ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLEA2-00000005g73-2OgW;
	Fri, 08 May 2026 05:54:06 +0000
Received: from mail-australiaeastazon11020101.outbound.protection.outlook.com ([52.101.150.101] helo=SY8PR01CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLE9z-00000005g5v-14z8
	for linux-rockchip@lists.infradead.org;
	Fri, 08 May 2026 05:54:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bJlqW/sxlLtf/wkxK8x05DaoznDXM0dyDyNM9W3vWD3ynZ5rPgDo6yGEz1Xz9QXsrAadBJVmM+KCN+lSe6BmLIJHOmcRv2qzXJVv/l/0s1P0yTjIWt0S2NIotcoSpIUHSgwAvEvhlZSPVFyLHNUiMbWGBsBHVCRo/7f/Gw9MU29IFd4raQmU8PtaHuNBCOdMvqn2iksjndkWs2MKtSQqdTp4jaMPykRXMugXRUl4jovL4keIYYJViff9mLMphdZmQbvzaJ5K3Ydz28HFhuPwk9EY+wxTGawA/sXpzdt9WhSi+YR54AUnk1PXThpWYV7LSOLu4XBkz5L5Z5pJXezzjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V3TZ6M+NCpcez1sZ9AWTIE5lurmW7w7oBEHar/M8jpY=;
 b=czR9kdsa8ru07QhWDMUic9OtS2p2ybHZwNqsuxemSGwNuPf5tQw+81mURY4qr7at0Nuve0YP0V6As2Fpu8Ndtz2mvQgI3m1EMuQ4BOibdND7Lp3d47FXUZ/sfOn/w7KtJl4YDE0Zw8S99KHbWpC2cindE565mpPR2vhh9SCeup+OxVuWMiJR12rE0l/8pxYKC0Zlxy6NuRWvk1lVkdHtYLXTAIZoSWY7JqB2GrsRVvor5otu1qLHRFlry12rSTk/lPaAWtBrxDWu/xweM1OurbI+SoQuCcg1S2mVffp6CqQX8s2uEA39O4Qt7h+U0kwOF1v8HYA56IvhRA/HEXSKHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=symple.nz; dmarc=pass action=none header.from=symple.nz;
 dkim=pass header.d=symple.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=symple.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V3TZ6M+NCpcez1sZ9AWTIE5lurmW7w7oBEHar/M8jpY=;
 b=XxI/wzmMsWf3hWo390VZ3nMYCDfXXsLRuVPQVNGtB0wydbS1W1AzqdaazC1jIPrtz7Oxz7GVSJqFFMGOWuLrAGwspLeM0bE9hkJNVCPyLEmwgNpGbysGjms6onL4niLk7Z+KckmiYGdGBoKlTo5gP+mmjCID9ORzf6TgX5ctmKVnhCg0uTv+2LEdFvp9iMHnf8eW357NFtAYZF71126XG51bCQOow7dewLwY1pqjfjwmCe6YTDFgLiRQEvyj4aw1Kd+FyrSHH9hX0c31ae4K0pb32BIxhEqH3T32nP6hmyC1TFlBBSRig45SKBBP3vRPrhUAck49jPuXBwpZhy1RfQ==
Received: from ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:b2::11)
 by ME3P282MB0899.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:86::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 05:53:46 +0000
Received: from ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 ([fe80::4619:bdb0:3293:3834]) by ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 ([fe80::4619:bdb0:3293:3834%5]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 05:53:45 +0000
From: Simon Wright <Simon@symple.nz>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"kernel@collabora.com" <kernel@collabora.com>
Subject: Re: drm/bridge: dw-hdmi-qp: seamless handoff sets wrong
 tmds_char_rate, breaking audio on strict HDMI 2.1 sinks
Thread-Topic: drm/bridge: dw-hdmi-qp: seamless handoff sets wrong
 tmds_char_rate, breaking audio on strict HDMI 2.1 sinks
Thread-Index: AQHc3GbSunaFBhX++0C913TIa5mDprX/2wMAgAKGfm6AAH1cAIAAw9Nn
Date: Fri, 8 May 2026 05:53:45 +0000
Message-ID: <ME3P282MB2196331E84F4BB5FC72419A5A83D2@ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM>
References: <ME3P282MB21960D9D68BFF520316BDFCEA83E2@ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM>
 <38b2e226-c8f0-44b4-bf71-66caa0b27d43@collabora.com>
 <ME3P282MB2196C1D097CB4A61D2376FAFA83C2@ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM>
 <61e86f45-cc62-433b-b929-2df66ab0f1ff@collabora.com>
In-Reply-To: <61e86f45-cc62-433b-b929-2df66ab0f1ff@collabora.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=symple.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME3P282MB2196:EE_|ME3P282MB0899:EE_
x-ms-office365-filtering-correlation-id: 9191893f-b0f4-41ea-43b7-08deacc62add
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7055299006|38070700021|3023799003|56012099003|18002099003|18092099006|22082099003;
x-microsoft-antispam-message-info: voWn6EqkKYxjlMgjQ8kowbDaA+IjawSSdyUjsk+kiFFWX2N1gdY4JoBq4Fs1yKF06F9MOO6P1bcBnf/Bw4t9zG8E8Gv42TYys/krmUIFzbiylAU43rrAio4hcgSDC8T1c3fX0NcmNz0vGuIezFbV71UVUSun9jZ8aR1Y84N+Z1zG2ztlmDTZC7E3pLxYY0B5Fbu7tSkGIG+WXY2ZX1aiHXB3q7Rplhm1GC4MAZoiWfQAa6GgwNGrYG4IZu56/un/VRfR0TPPZwD12MlwqHbO5VvPYmWwcalznJ3ZWnfAnZ941BmVgY+w2aFaGpeRPEjO0oRpb9yHGTpa+DHDkEe3EprHSX2BYFG9XqRgs3Jk5a+IM8z0WtyWEofjPPAZMctXkVG4XpuvDkgrIg2K9ChBpDR8CqIkO7hyulgtYKMtCZbXn9/a9J2WD3HlPolV82VVKuHupGLSp8Nkyp0WpI0sfivjgq3IITl1BrE3cTXlLCgNjthQj9zSFwVyzAAhK1EF5wYILtccTD1p4QXHjKAbqwfMFWIXzNY7sWWhYKEdTYQVIXrBesish9GT+4nrQ5b+H3ENNM+MmgLDwOjIltDA6MIm9SG5D9/l6cbzjvw2eaY664Jd1CbJsSjcE06JEj9cZbau34onrWq9TiRurBl9SqCdnDr5Oj8q3Q1yw/6CWw0nML7Wi1T93Muh02otCFduU5fw9mHKSEmgc3Vt4+UfM8O6GWRzMViWt4vIN/opTloI25S+LGlzWuzicWBVUyAPRVYJ1m7IFVGtb3doIidUqpaaqbkZvj2jCsLLiv+43ZE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7055299006)(38070700021)(3023799003)(56012099003)(18002099003)(18092099006)(22082099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?oK0pw0vjFRApWnDa6tCPj9us2WtYqLt2AKrAaKDNYAkdOIaGb2klyQ65nu?=
 =?iso-8859-1?Q?0SQngJu6FhVjmWb6KmeWtH+1n5L/L21F2Uj5sbaaCX2es+5r2kUasrujmz?=
 =?iso-8859-1?Q?Qn5/5PKk4FBVgOFoQsJRCdK3p+dgskkFZAWrgxIiumGaF9phWj35/zpbb/?=
 =?iso-8859-1?Q?O2zLbAwsx4f8WS/6hGr0cIG0s0EyssLpa+/N42S32GitSd/oWhdbjBlMXM?=
 =?iso-8859-1?Q?Jd3YG4f8p/P7Xrtlo6HMIo6ZBdZAlbsYOYUxCeEUTzrAYfUQGC/axmUG0f?=
 =?iso-8859-1?Q?FHX3rZdiTL1Cf1nMLefqtS1lQAoxElAbAZUznjq1utUu4hMdbyF73UJefy?=
 =?iso-8859-1?Q?iTLgI+eMip0mvnaOl7MyN24Ft4HD7eukMu+CXGIoqi80JUGYXwMvc4N/tg?=
 =?iso-8859-1?Q?qUJGTRekp9ELfcJoTaT35P40iHQZoq9cCJhNV2mBVv1Ppzng8cMjs+tPs7?=
 =?iso-8859-1?Q?4GDqNn99wKVaDabLqrmYRd8+DUwrqeCJuGLi5DmW7PeBF6KM0h0dGWkOSR?=
 =?iso-8859-1?Q?z3/1cL9zfBsg+31hQ8vktpc+2j9ER+u+xkXJqE8vj9qiT9loqheOfnVjP9?=
 =?iso-8859-1?Q?RLRsy1mUr6dw6rhrhsCnt+JWcflBrE8SPmLRP0XLH2PHVz8WIkzBUmsQDV?=
 =?iso-8859-1?Q?QRBUdXjW3Olf4cN6y4WmXFSE6cXwwhsLqYuDFykhtErHzL0/cFf07xCZ40?=
 =?iso-8859-1?Q?ZidJ+ypvuosoR69f4i0A0rIfGGac7EX3+EfxX524Pd3XXc3teZbPpboXw0?=
 =?iso-8859-1?Q?LR1JUqhqkTFfxIaFFWvDvEaGlLNfGDCoIqYEWXiogXpsoYAcAjRq1KkRf5?=
 =?iso-8859-1?Q?OGMcSdcitNdooSzq4mbzBR2vzEL/c3DdhOrxYqFgSHuzckQ4Mit6HFCHGv?=
 =?iso-8859-1?Q?XbahLKr6Vu+xKhY59bhZS/z657IsibF/Of3PFiHX0OXdV3H1TZcFVazV1x?=
 =?iso-8859-1?Q?b/Fvv4qgCWux8uflSItsIEvsVkGOG6uUW3DttgvyfudK3TCI9Wcmxkzv+N?=
 =?iso-8859-1?Q?enAsjOJ5cuOEdmA2Q8GHCzlPpfKYwbgvTI/wxYJaDWKYPCehBOB0E2urGv?=
 =?iso-8859-1?Q?SUEhE0nNcVoPaA7npXeRR0mLenIQYU9DWDcCxhyAqHME8TmZVQDwA66HSg?=
 =?iso-8859-1?Q?HQTX2i09cY1mreQGhcK93GcibPytLJ5ovgi9WYVJfnTzM/aGUP35MRdCI2?=
 =?iso-8859-1?Q?NeLf9zs5b0Q0SKRqyWW/1Peg0+GU59rFQNHUvxmusOz3DBjrDy5b2t62Ux?=
 =?iso-8859-1?Q?bj0TjOdjIJphyQMWm8czCEFkli6Q43eV5KunkdPnqFwjq/2qkqfoCqxMdw?=
 =?iso-8859-1?Q?kVqqbewdJlkBLkS7zufz6T9rGtDjATVnylPn/uxrRagc2kavOyzIW6NA0b?=
 =?iso-8859-1?Q?3j7a9h67seFgqJs5CW4xmaZA+K385xFrAw2PMDwgHxovC2aYk1Ko6iPOQE?=
 =?iso-8859-1?Q?I67YWArHFEdpd6kNJCEFcg085Jq281QeWyxfa+fLfRsIJgMTP0Gy5/+3vB?=
 =?iso-8859-1?Q?TtzpJZca8AwVVpVOjAuHyF5hv+gy1PP9FGjN0Cb0dl133Hf9XB9rXLEgbS?=
 =?iso-8859-1?Q?C04n9NX8bpbf6Qej3aKnC08l6xi7lcG3JGyx8xsTjIhrM2dSMYgeOco4rb?=
 =?iso-8859-1?Q?Kk6rBCASepX84Ibajgrg16tleI3Y0gVfRVootKh4yJHgrE6cGnirfFM4VO?=
 =?iso-8859-1?Q?Uxl6rO9svxQoJ/xwo2dAhN6t4ai70WHn4gpRT/B+F5W0Nur+oC9L8TX5ef?=
 =?iso-8859-1?Q?TXPACxBtpkadzZPepueCS3tWbdKkugk1SYmlTJ7gSLZFNM?=
MIME-Version: 1.0
X-OriginatorOrg: symple.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9191893f-b0f4-41ea-43b7-08deacc62add
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 05:53:45.5625
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9531f271-068a-4210-b471-bd8da91491c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QXqtUhRtuN0cJfR2SSPKC3iAtxrcClwNmIIVJk+YyopIt22XEUdoQZPUi1XLjYdP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3P282MB0899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_225403_482370_FC88FCAD 
X-CRM114-Status: GOOD (  21.31  )
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

Hi Cristian,

Thanks for the pointers -- I should have checked rockchip-devel
before the previous reply. Three things to clean up:

* Sige5 in linux-next and Sige7 in rockchip-devel both match what I'd
  derived from the schematics -- dropping the DTS follow-ups I had
  drafted.

* Your FRL work in rockchip-devel supersedes the BSP-derived prototype
  I was going to port. Standing down on that; happy to Tested-by the
  series once it's posted.

* Acknowledged on the HDMI 1.4 vs 2.x framing.

Tested-by: Simon Wright <simon@symple.nz>

Heiko, Vinod -- any chance hdptx-clk-fixes v1 can be applied? It
cleanly addresses the high-bpc rate recalculation and uncommitted PHY
config issues on RK3576 hdptx, and Tested-by results on real hardware
(R76S + LG G3 OLED) match the cover letter.

Reproducer for the audio mute:

  1. mainline 7.0 + hdptx-clk-fixes v1 applied (or rockchip-devel HEAD
     -- same code path).
  2. Sink that doesn't tolerate incorrect ACR CTS values -- LG G3 OLED
     is the canonical case, LG C4 OLED behaves identically. More-
     permissive sinks play audio regardless and won't surface the bug.
  3. Set a mode whose tmds_char_rate is NOT in common_tmds_cts_table[].
     Affected rates we tested: 1920x1080@60 bpc=3D10 (185.625 MHz, the
     original-bug regime -- requires max_bpc=3D10 set on the connector
     property), 3840x2160@30 8-bit (297 MHz), and 3840x2160@60 8-bit
     (594 MHz).
  4. The mode must be held for the duration of the audio test --
     `modetest -s` releases DRM master on exit and fbcon reverts to
     an in-table mode, which would explain audio playing in your
     test path.
  5. speaker-test -D hw:0,0 -c 2 -t sine -f 440 -- mutes without the
     fix, plays with it.

I'll send the CTS-from-N change as a separate patch against
rockchip-devel, and withdraw the rate-block patch
(linux-rockchip 2026-May/070673) once it's accepted in some form.

Regards,
Simon
Symple Solutions, Dunedin, New Zealand

________________________________________
From:=A0Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Sent:=A0Friday, 8 May 2026 6:03 am
To:=A0Simon Wright <Simon@symple.nz>; linux-rockchip@lists.infradead.org <l=
inux-rockchip@lists.infradead.org>
Cc:=A0dri-devel@lists.freedesktop.org <dri-devel@lists.freedesktop.org>; ke=
rnel@collabora.com <kernel@collabora.com>
Subject:=A0Re: drm/bridge: dw-hdmi-qp: seamless handoff sets wrong tmds_cha=
r_rate, breaking audio on strict HDMI 2.1 sinks
=A0
Hi Simon,

On 5/7/26 1:39 PM, Simon Wright wrote:
> Hi Cristian,
>
> Thanks for the pointer. Quick test results before writing back.
>
> Test rig: NanoPi R76S (RK3576) on Armbian-edge mainline 7.0.1, LG G3
> OLED sink (the same strict HDMI 2.1 sink that surfaced the original
> audio bug). Stack: hdptx-clk-fixes v1 + frl-enable-gpios v2 patch 3/13
> + SCDC v5 patch 5 (hand-ported to v7.0; `.detect` kept instead of
> `.detect_ctx` so the OOT module loads against unpatched vmlinux).
>
> Tested-by for hdptx-clk-fixes v1: dmesg shows phy_configure /
> phy_power_on / atomic_enable consistent at rate=3D185625000 bpc=3D10 with
> no recalc drift -- exactly what the cover letter promises. Happy to
> add the trailer to the v1 cover and any individual patch.

Please provide the trailer and maybe also a kind reminder for the maintaine=
rs to
get the series applied.. :-)

>
> That said, audio still mutes at high-bpc / high-TMDS rates on the
> LG G3 even with your series applied:
>
>=A0=A0=A0=A0 1080p60=A0 8-bit (148.5=A0 MHz): audio plays=A0 -- already wo=
rked
>=A0=A0=A0=A0 1080p60 10-bit (185.625 MHz): muted=A0=A0=A0=A0=A0=A0=A0 -- o=
riginal bug regime
>=A0=A0=A0=A0 4K@60=A0=A0 8-bit (594.0=A0 MHz):=A0 muted=A0=A0=A0=A0=A0=A0=
=A0 -- production cast path
>
> The "muted" rates are precisely those not in `common_tmds_cts_table[]`.
> For those, `dw_hdmi_qp_find_cts()` returns 0, the override path is
> skipped, and the QP IP falls back to its auto-CTS measurement -- which
> the LG G3 cross-check rejects. The BSP-derived dw-hdmi-qp.c
> (develop-6.6) carries an in-source comment attributing this to the
> auto-circuit measuring at half the actual TMDS rate; I haven't read
> that register out myself to confirm the specific value, so I can only
> report that empirically the override path with explicit CTS works on
> the LG G3 and the bare auto path doesn't.
>
> The fix is to compute CTS from N when the table misses, and feed it
> through the standard override path. Six lines + comment in
> `dw_hdmi_qp_set_sample_rate()`, between find_cts() and set_cts_n():
>
>=A0=A0=A0=A0 /*
>=A0=A0=A0=A0=A0 * When no CTS table entry exists for the given TMDS rate, =
compute
>=A0=A0=A0=A0=A0 * CTS from N rather than relying on the IP's auto-measure =
path,
>=A0=A0=A0=A0=A0 * which mis-measures on this controller at high TMDS rates=
 and
>=A0=A0=A0=A0=A0 * produces incorrect ACR timing on strict HDMI 2.1 sinks.
>=A0=A0=A0=A0=A0 * Computed CTS =3D (TMDS * N) / (128 * Fs) per HDMI spec.
>=A0=A0=A0=A0=A0 */
>=A0=A0=A0=A0 if (!cts && n) {
>=A0=A0=A0=A0=A0=A0=A0=A0 u64 computed =3D (u64)tmds_char_rate * n;
>=A0=A0=A0=A0=A0=A0=A0=A0 do_div(computed, 128ULL * sample_rate);
>=A0=A0=A0=A0=A0=A0=A0=A0 cts =3D (unsigned int)computed;
>=A0=A0=A0=A0 }
>
> With this on top of your series, all three regimes above play audio
> cleanly -- including the 1080p 10-bit case from my original bug
> report and the 4K@60 path on our production cast rig.
>
> That makes my earlier rate-block patch
> (linux-rockchip 2026-May/070673) redundant -- I'm happy to withdraw
> it on its thread once you've decided where the CTS-from-N fix should
> land.

Nice catch, will try to reproduce this on my end.

Regardless, the fix should be submitted as a separate patch, as it's not
(directly) related to any of the existing serieses posted on ML.
I.e. you mentioned "... mis-measures on this controller at high TMDS rates"=
, but
the 1080p60 10-bit (185.625 MHz) use case falls under HDMI 1.4, hence the
problem doesn't seem to be limited to HDMI 2.x.

>
> Two questions:
>
> 1. Where would you like the CTS-from-N fix? Its own small thread,

Yep, dedicated submission, per the above.

a
>=A0=A0=A0 trailer on hdptx-clk-fixes, or folded into the SCDC series --
>=A0=A0=A0 whichever fits your workflow.
>
> 2. The kernel 7.0 announcement flagged controller-side FRL as "not
>=A0=A0=A0 yet landed". Is that still on Collabora's roadmap

Yes, I'm currently preparing a new revision of the HDMI 2.0 patchset, then I
will focus on the HDMI 2.1 FRL support. The latest version of these patches=
 is
already available in our rockchip-devel branch, which contains all the
necessary dependencies:

=A0https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/c=
ommits/rockchip-devel?ref_type=3Dheads

> , or open for me
>=A0=A0=A0 to send a develop-6.6-derived prototype as RFC once I've ported =
it
>=A0=A0=A0 to mainline? Happy to wait if you have a series in flight.
>
> Reproducer for the audio fix is the stack above plus a small libdrm
> helper to hold the mode against fbcon (modetest releases DRM master
> on exit). I can share the helper if useful.

Yes, please detail the reproducer steps.=A0 So far, I've only tried playing=
 audio
using speaker-test while switching the modes via modetest and it works as
expected.

>
> Sige5/Sige7 DTS follow-ups to your frl-enable-gpios v2 series are in
> draft against the schematics; both boards are on order so I'll
> validate on my own hardware before sending. I'll start a separate
> thread on the v2 series for those rather than burying them here.

That series has been applied and is available in linux-next since next-2026=
0506.
It also handles the rk3576-armsom-sige5 board, do you need anything else for
this particular one?

Regards,
Cristian
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
