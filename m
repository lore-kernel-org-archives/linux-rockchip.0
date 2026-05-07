Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61560CD3442
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 May 2026 10:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SmL0prO1FtCk3wbgWJBxlkrXagdDTwMV6yoAhrdC2Y=; b=z3EKbmfBDtgbCX
	lVJnXOAz8mu4BS+utxTIqZQSQIKOG/sUWYcTUur9oSOcKzq89mWKR6x5pbMMM+UETSlzCebgxw961
	xE+oS44LUkIiaadTAtB6uvfl0uU0fZM+UyZUYMBDqZgKQNlzKpIhsgK1QnFfRWwvmNVbnFlF1X3gc
	l46MEAhx9vA9OzsdWWOnPclALXtqtsuaz83+TRltOEdEJmr46Fwrg9bQX0G/yCQgBLnma5Zm2Gnxp
	w8nAirBlyF/qX0RFNLyz8qSO0UN5pdoKkMy48EUyJJqyEm8At/ewtts+vTIxbVZzAyTKmiR0I25OV
	Wep14Wrumrp1tTcGtOoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw9H-00000003WHJ-1mVi;
	Thu, 07 May 2026 10:40:07 +0000
Received: from mail-australiaeastazlp170120004.outbound.protection.outlook.com ([2a01:111:f403:c40d::4] helo=SY5PR01CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw97-00000003WCC-3EKH
	for linux-rockchip@lists.infradead.org;
	Thu, 07 May 2026 10:40:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=emvVxkmAWOz4W1yszEYQBu0jSF2SEljcLgqtDDPXj6TMUoENhobeRSnGPeo5UW1Q8kO16LWUFHLfW5yPTvyX1Qz3prrTx8W4MIkf0oxP23ZySGjDyvdJovCj/pn4kP1ujDEDvFpKk0LpjM7cnRD3rdvTtK1gnMSesxItsh+a++Iaj74HUOkX8IWBCRS5c9RfwdnoemiTr6QFmNlwFC2h3UZcKVidiFEh11hNhR8boLok0SbMzA+oWVY1GNus0TPdXIAkbXbAm4bdPR/4bVdm92Dv1mPvDjrRCU+P5giZCOh7XQ65WWsVvvMD/hgO+zAMZaUrD6GIn9Ucy1gG+/N60w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dzw/oYX6EMryXtyvyYjEBJNhdON1rIsp+tRfmxHJJUU=;
 b=GOTELKB1ctFpaV59QcpCoi7njTU3gzOngtEpWsq42WTZu74WAvyGY5L4CVU6PbeVMiTvy67cJNTP+GW5aeXj8pDq9UTUPYrGmmNjxjM2V06XEW34iDfY8tryUaEnyHgS6LBEYRtLiI7259fOhckgfzS+eolCW/rsEpkhKcGCG5Z5VOvrv1ucx7f75QDR3W6CYMMdSl1qi7QGjA6sSMSGb/xV6rgzIeNyn2/E382k3aWj25mW4+baGTP6QfsYK/GBZ8dOrgkELn/JdRJTGjjfeN6Npd8mFXDrcABlbYF6fdmX7/FzazeBK0x40UNFnJZAapqaz+ysGUZrhPwm4GyNwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=symple.nz; dmarc=pass action=none header.from=symple.nz;
 dkim=pass header.d=symple.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=symple.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dzw/oYX6EMryXtyvyYjEBJNhdON1rIsp+tRfmxHJJUU=;
 b=mdbxfa2gJVXVemIYeMYjUp2nPzTXq/1IhYftGedHgvHpRaWPLerAexfnXQodiHmSDmUB0n4fE9Ui8NeQUXilMDnlJBPKnTAynHCD/SSTyBQsJeG9Gt+IOuVYaTwz+GR0Aio9ftxWFgthEMQkSN0OtRt/8/MhYJgWIsrNsK+jndzHuj2mqRHGWw45gAHwjm2R8NN7VTrUjfnzq+JiCe6cXSMrooDL/J+iaS+lEQiS5yKl6Wh6OHuJ1VXFU103LyAKJJTq+QhrHbZ8PzN9bmyfBU7zLl0zGrC0P7kwKvyeEImqqoIN+gtaW3DqnOecvC4Ol79iIpeB95OFSaEcWUdBYw==
Received: from ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:b2::11)
 by SY7P282MB4696.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:278::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.17; Thu, 7 May
 2026 10:39:31 +0000
Received: from ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 ([fe80::4619:bdb0:3293:3834]) by ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 ([fe80::4619:bdb0:3293:3834%5]) with mapi id 15.20.9891.017; Thu, 7 May 2026
 10:39:30 +0000
From: Simon Wright <Simon@symple.nz>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"kernel@collabora.com" <kernel@collabora.com>
Subject: Re: drm/bridge: dw-hdmi-qp: seamless handoff sets wrong
 tmds_char_rate, breaking audio on strict HDMI 2.1 sinks
Thread-Topic: drm/bridge: dw-hdmi-qp: seamless handoff sets wrong
 tmds_char_rate, breaking audio on strict HDMI 2.1 sinks
Thread-Index: AQHc3GbSunaFBhX++0C913TIa5mDprX/2wMAgAKGfm4=
Date: Thu, 7 May 2026 10:39:30 +0000
Message-ID: <ME3P282MB2196C1D097CB4A61D2376FAFA83C2@ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM>
References: <ME3P282MB21960D9D68BFF520316BDFCEA83E2@ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM>
 <38b2e226-c8f0-44b4-bf71-66caa0b27d43@collabora.com>
In-Reply-To: <38b2e226-c8f0-44b4-bf71-66caa0b27d43@collabora.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=symple.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME3P282MB2196:EE_|SY7P282MB4696:EE_
x-ms-office365-filtering-correlation-id: 628a31db-c381-4f98-d21f-08deac24eba2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021|18002099003|22082099003|56012099003|3023799003|7055299006;
x-microsoft-antispam-message-info: IcwqRlg4t/hHhLHBczkTWA9xRW3kjYcwCoxZ2o0fLkrvcyOHLbAJ4ZCbk7xC1hsqr+j1ZXxgCTZGH3z+/9kzJvk0u6W+YsMCGPS8IzM+IDsi7lS4MrnXSuiblzst6A2LgULcu/F9xx7UclfEPXEoP/yHtBktByDS2fz+sG3N7YyVZHGNWlC+TkLRUpSXHF8tPW2LgpfW0bbUFQvedZWyfx4OREVBPlm6NRqZBWVl3BAB3Bj5PHny9o3dCasdn4YMQ+ga7lxjOQDaXdSuxpjJ8c+uy83EIZM0I/VqdfTecrdwxRGQ/rv/RFDTS73ZyZW36jAp3RWZnOZfkFW0E/NsmweTFrQo3QTJ3z57HyeNycgcciVVpQpgwcZTa4Yh6V2xRKd2mMD2BFVno1Hm/LDHSdKsX6xIB3RWPSiKmycU56bRzBa0VcD6FWm5Fi1RCg/AEtUXPCSnyWeGCpxxKmFmOcKR5wTkZgkhhsV2V4pC+pHknjM2/SNlQHL2fqNJwhuFZIR69ImzgzUd2Ki5l0Q8v5UXJt+VEWUIaN9jot3nox/XQP3l2EbQeMrm/QwJ+dFF8WNK/sBphv3Cq8ZHOq+dTutn3EoGCf2KkHRcdLRKbpUN8tO2yH4TUpoXz6qPe5Hr7RMu/0gumRF9lmjmqaaAyS2E227/aUkuZ4XYZJLvkYDg7dncrMnkuwUJkTkXm6hitAodqpUTqsCNTRxeFBj+OAZkL3VawY3ufhLi7yLEKor1kkmPeptfxIVVzfor/SgbuF+eIIHOKxqJa+LEE83fFiG5WF4vMxsW9HB3Lxj2/oQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(22082099003)(56012099003)(3023799003)(7055299006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?XXxldfatYiF8+A6fUE9qKfEC3WMEKJ33TZAkQfz6uxmYxPPSEP+3g7zX?=
 =?Windows-1252?Q?GhV96FGYlHFWKc7hDMTETpj6WWmzRD4zP8MyHgb3Xu8KvJYETfiQ+ejY?=
 =?Windows-1252?Q?7dWazunsdhD6BpBFULrSJla7eLTvp7BJttkqrYnccYDUUXy+coKnd4wY?=
 =?Windows-1252?Q?j5bPoRDLvgl0q9s22ETWI6e7fH1v/e6LG6DYjc+4pkTXUfDTdrQwSU+u?=
 =?Windows-1252?Q?hF7xr0nDMjzk8ZV+DJMeYtmXe5eVbyGPa3nQQ75Fadc0Jn4kxaqSE/NB?=
 =?Windows-1252?Q?uRG53rKVbKLHujKmk79YOpLklhb4zreufOzXzwpQghv2TcIiBNXw3HiZ?=
 =?Windows-1252?Q?cHvAYPFCnvPZD99yqET02n6aV1dh6EevUsimx78Nf6r6R8t7rC9kaApB?=
 =?Windows-1252?Q?3gkgFCY+FaQ6wuPAECTjc5g5o06jvke1/IJsU4eFyHSS/lr1N90TVwR3?=
 =?Windows-1252?Q?QafBq/Bnln1DofRZo/FQP0TqFhSPATUTsDOgrIw8NLfZkEcO5zAdwkyL?=
 =?Windows-1252?Q?+VY9IXKftfiwz4CNzISKTUqCwCpqwJoY7ZpECT0JXsfuqlWxqzRL0uHj?=
 =?Windows-1252?Q?5ask72wYpS8xTT1IhlevzAqN/jS+eHwsHBosstaOD3wtN05WmsIeHqXk?=
 =?Windows-1252?Q?CPPrkLb2hDOESrF6gD6eHh9AgvLRfuJvCDraQwZIoojqTq/Hb4UQ6x5k?=
 =?Windows-1252?Q?1JELHX364R3wp983/9Y475EVMJVAAp1PiMlwl8b3SOdQQI9z83UGHJxD?=
 =?Windows-1252?Q?GxtS1nmEgLmlBHCUc6DEdaPyeGlH9x9qF+rWqJxQ64+7R7KNQZ9UbiSC?=
 =?Windows-1252?Q?niKDls8zMiLbJwLER/UoKxJRaXtU4nTAoRj7eXPvKF4crUOQrNAk6wRZ?=
 =?Windows-1252?Q?tYEt7LoMtdmQO2prahZjriGO5UgdblpVhsK3Tu2ND2nQwrIF7CqMw2AB?=
 =?Windows-1252?Q?UWAh8XcnunYEedveBHHVvZJRinStZ2mmYCO6x8Dmnl4gTqoXcUADjTdZ?=
 =?Windows-1252?Q?2p1EXAWRS5M7U79WDHjmI1uDw9ECo8y6XL3Ly2e7o8gC3scHVS4GcaAE?=
 =?Windows-1252?Q?wnzcRoGtQnSqk0FgnPUxjXYQMIr9HgcWrrm1HcEaZH9L2j4fT0jVBkzb?=
 =?Windows-1252?Q?Kzn4Noqmm1ZViECWXOW+Gqif9qq3euRvZH450jsq7uhbDaTX7OkfD23o?=
 =?Windows-1252?Q?8dpLLeq6EkVgNHgKAWGWaDj6Quf/ufLOS92b/GxNUUM5AcX6sxkU5plD?=
 =?Windows-1252?Q?p2hUDfEfGX0UjiEwfKPLYHutagPP+eY+n1MuvFrGQx9BBkD4gGAwf6y5?=
 =?Windows-1252?Q?/6KeetSdPaNuRObX59oF49zMp5U5r1fjdm1qnLUhx3o1I6MG8ArTLomB?=
 =?Windows-1252?Q?UXY1TJ+qH5WDF7fklF85FYX9S7OFQ2q6V1AujLdypV4sbhfWtcbdCu0v?=
 =?Windows-1252?Q?qFYkny+WP5mrTiS+oYcu4Ob+xHS9MmCK/ZbwoiTy1p90NfnpT9CdjOSP?=
 =?Windows-1252?Q?D01huh3Uhj9Ddt9y055SE0K/6PMs4RAf34kA+kypoteRfroeF8DDPtvC?=
 =?Windows-1252?Q?2kaCaWaVAoc9/LzxIH4hfXUx5U3hKoYyuUHQdEN+W/KGnQiihafN2cGR?=
 =?Windows-1252?Q?b+PMOTlHlvLp+YRBpPl76ZPFHZAso1COfkMh8AphufT5V3TglgCgjCty?=
 =?Windows-1252?Q?3xyC+Iu//HE7Sv2jYw0dzbXi36zvOArZW/Kxj+YA9P2k5iXktQQYrpXM?=
 =?Windows-1252?Q?JV9EEL1CoNfu28rnfnfr8m5TqiJFor6Jidd9g5VDZiHkxnVK1Kdup/Su?=
 =?Windows-1252?Q?jUgaYd1Pl8iDk0I0RvlxfuUSsQLmnI5B4RuGmIEbGh4Y7aFM?=
MIME-Version: 1.0
X-OriginatorOrg: symple.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 628a31db-c381-4f98-d21f-08deac24eba2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2026 10:39:30.4719
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9531f271-068a-4210-b471-bd8da91491c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gDUfVXxJJjNKsZ5gLpnaoTbzjYyxOhBoy2+J+qUEMNPEYWAn+Igkh0fdU+vG+IK3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY7P282MB4696
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_033958_035821_EB2B7541 
X-CRM114-Status: GOOD (  20.94  )
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Cristian,

Thanks for the pointer. Quick test results before writing back.

Test rig: NanoPi R76S (RK3576) on Armbian-edge mainline 7.0.1, LG G3
OLED sink (the same strict HDMI 2.1 sink that surfaced the original
audio bug). Stack: hdptx-clk-fixes v1 + frl-enable-gpios v2 patch 3/13
+ SCDC v5 patch 5 (hand-ported to v7.0; `.detect` kept instead of
`.detect_ctx` so the OOT module loads against unpatched vmlinux).

Tested-by for hdptx-clk-fixes v1: dmesg shows phy_configure /
phy_power_on / atomic_enable consistent at rate=3D185625000 bpc=3D10 with
no recalc drift -- exactly what the cover letter promises. Happy to
add the trailer to the v1 cover and any individual patch.

That said, audio still mutes at high-bpc / high-TMDS rates on the
LG G3 even with your series applied:

    1080p60  8-bit (148.5  MHz): audio plays  -- already worked
    1080p60 10-bit (185.625 MHz): muted        -- original bug regime
    4K@60   8-bit (594.0  MHz):  muted        -- production cast path

The "muted" rates are precisely those not in `common_tmds_cts_table[]`.
For those, `dw_hdmi_qp_find_cts()` returns 0, the override path is
skipped, and the QP IP falls back to its auto-CTS measurement -- which
the LG G3 cross-check rejects. The BSP-derived dw-hdmi-qp.c
(develop-6.6) carries an in-source comment attributing this to the
auto-circuit measuring at half the actual TMDS rate; I haven't read
that register out myself to confirm the specific value, so I can only
report that empirically the override path with explicit CTS works on
the LG G3 and the bare auto path doesn't.

The fix is to compute CTS from N when the table misses, and feed it
through the standard override path. Six lines + comment in
`dw_hdmi_qp_set_sample_rate()`, between find_cts() and set_cts_n():

    /*
     * When no CTS table entry exists for the given TMDS rate, compute
     * CTS from N rather than relying on the IP's auto-measure path,
     * which mis-measures on this controller at high TMDS rates and
     * produces incorrect ACR timing on strict HDMI 2.1 sinks.
     * Computed CTS =3D (TMDS * N) / (128 * Fs) per HDMI spec.
     */
    if (!cts && n) {
        u64 computed =3D (u64)tmds_char_rate * n;
        do_div(computed, 128ULL * sample_rate);
        cts =3D (unsigned int)computed;
    }

With this on top of your series, all three regimes above play audio
cleanly -- including the 1080p 10-bit case from my original bug
report and the 4K@60 path on our production cast rig.

That makes my earlier rate-block patch
(linux-rockchip 2026-May/070673) redundant -- I'm happy to withdraw
it on its thread once you've decided where the CTS-from-N fix should
land.

Two questions:

1. Where would you like the CTS-from-N fix? Its own small thread, a
   trailer on hdptx-clk-fixes, or folded into the SCDC series --
   whichever fits your workflow.

2. The kernel 7.0 announcement flagged controller-side FRL as "not
   yet landed". Is that still on Collabora's roadmap, or open for me
   to send a develop-6.6-derived prototype as RFC once I've ported it
   to mainline? Happy to wait if you have a series in flight.

Reproducer for the audio fix is the stack above plus a small libdrm
helper to hold the mode against fbcon (modetest releases DRM master
on exit). I can share the helper if useful.

Sige5/Sige7 DTS follow-ups to your frl-enable-gpios v2 series are in
draft against the schematics; both boards are on order so I'll
validate on my own hardware before sending. I'll start a separate
thread on the v2 series for those rather than burying them here.

Thanks again -- the pointer saved a lot of parallel debug time, and
the controller-side gap was small once pinned down.

Regards,
Simon
Symple Solutions, Dunedin, New Zealand


________________________________________
From:=A0Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Sent:=A0Wednesday, 6 May 2026 8:01 am
To:=A0Simon Wright <Simon@symple.nz>; linux-rockchip@lists.infradead.org <l=
inux-rockchip@lists.infradead.org>
Cc:=A0dri-devel@lists.freedesktop.org <dri-devel@lists.freedesktop.org>; ke=
rnel@collabora.com <kernel@collabora.com>
Subject:=A0Re: drm/bridge: dw-hdmi-qp: seamless handoff sets wrong tmds_cha=
r_rate, breaking audio on strict HDMI 2.1 sinks
=A0
Hi Simon,

Thanks for the detailed bug report!

I submitted a while ago a patch series [1] providing clock fixes (among oth=
ers)
to samsung-hdptx PHY driver, but sadly it hasn't been merged yet.

I think this should also address your audio issue, hence please give it a t=
ry
and let me know how it goes.

Regards,
Cristian

[1] https://lore.kernel.org/all/20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@=
collabora.com/

On 5/5/26 11:18 AM, Simon Wright wrote:
> [Resent in plain text =97 first attempt was rejected by the list's HTML f=
ilter.]
>
> Hi,
>
> I have tracked down a bug in dw-hdmi-qp that silences audio on strict
> HDMI 2.1 sinks (tested: LG G3 OLED) when booting with HDMI seamless
> handoff from U-Boot. HDMI 2.0 sinks are unaffected. The root cause is
> a mismatch between the AVI InfoFrame colour depth and the ACR embedded
> CTS value.
>
> Hardware tested:
>=A0=A0 Source:=A0=A0=A0=A0=A0=A0 ArmSoM Sige5 (Rockchip RK3576)
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Armbian-edge kernel 7.0.2=
 (Linux mainline v7.0 plus
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Armbian board-enable patc=
hes; not a BSP kernel)
>=A0=A0 Failing sink: LG G3 OLED 4K (HDMI 2.1, strict embedded-CTS mode)
>=A0=A0 Passing sink: Various HDMI 2.0 TVs (self-measuring CTS, unaffected)
>
> The bug is structural and is expected to affect RK3588 under the same
> boot sequence.
>
>
> Root cause
> ----------
>
> When the system boots with seamless handoff active, U-Boot has configured
> the PHY for 8-bit 1080p60 (TMDS =3D 148,500,000 Hz). The DRM connector
> state, negotiated from EDID, selects 10-bit deep colour (TMDS =3D
> 185,625,000 Hz). In dw_hdmi_qp_bridge_atomic_enable():
>
>=A0=A0=A0=A0 hdmi->tmds_char_rate =3D conn_state->hdmi.tmds_char_rate;
>
> This stores 185,625,000. The PHY ops->init() is called but the PHY is
> already running at 148,500,000 from U-Boot and is not reconfigured.
>
> The result is an inconsistency between what the sink is told over HDMI
> and what the wire actually carries:
>
>=A0=A0 AVI InfoFrame:=A0=A0=A0=A0 declares 10-bit deep colour at the conne=
ctor-state
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 TMDS rate =
(185.625 MHz)
>=A0=A0 ACR embedded CTS:=A0 driver uses hdmi->tmds_char_rate =3D 185,625,0=
00 Hz
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 to compute=
 CTS via dw_hdmi_qp_set_sample_rate(),
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 producing =
CTS =3D 185,625 (internally consistent
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 with the A=
VI declaration)
>=A0=A0 Wire TMDS clock:=A0=A0 PHY untouched from U-Boot, still running at
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 148,500,00=
0 Hz (8-bit)
>
> The dmesg signature (full pr_err output, lower in this report) confirms
> both AVI and ACR are computed from the nominal 185.625 MHz value:
> "tmds=3D185625000 ... cts=3D185625".
>
> A standard HDMI 2.0 sink does not cross-check AVI against the wire TMDS
> in any way that matters for audio, so the mismatch is harmless. A strict
> HDMI 2.1 sink (LG G3) measures the wire TMDS and verifies it matches the
> AVI declaration; with declared 185.625 MHz vs measured 148.5 MHz, the
> check fails and audio is muted, permanently, until the next mode set.
>
> The N/CTS values themselves are correct CEA-861 ratios. At a wire TMDS
> of 148.5 MHz with N=3D6144, CTS=3D148,500 yields f_audio =3D 48 kHz; at a
> wire TMDS of 185.625 MHz with N=3D6144, CTS=3D185,625 also yields f_audio
> =3D 48 kHz. The driver picks one TMDS, computes a self-consistent N/CTS
> pair, and embeds it. The bug is solely that the TMDS the driver picks
> (connector-state nominal) differs from the TMDS on the wire (PHY
> actual).
>
>
> Dmesg diagnostic signature
> --------------------------
>
> Failing (seamless handoff, DRM selects 10-bit 1080p from EDID):
>
>=A0=A0=A0=A0 dwhdmiqp-rockchip 27da0000.hdmi: atomic_enable: \
>=A0=A0=A0=A0=A0=A0=A0=A0 tmds_candidate=3D185625000 is_hdmi=3D1
>=A0=A0=A0=A0 DW_HDMI_QP set_sample_rate: tmds=3D185625000 sr=3D48000 n=3D6=
144 cts=3D185625
>=A0=A0=A0=A0 [audio silent on LG G3]
>
> Working (8-bit mode forced, see workaround below):
>
>=A0=A0=A0=A0 dwhdmiqp-rockchip 27da0000.hdmi: atomic_enable: \
>=A0=A0=A0=A0=A0=A0=A0=A0 tmds_candidate=3D148500000 is_hdmi=3D1
>=A0=A0=A0=A0 DW_HDMI_QP set_sample_rate: tmds=3D148500000 sr=3D48000 n=3D6=
144 cts=3D148500
>=A0=A0=A0=A0 [audio working on LG G3]
>
> The difference is entirely in which tmds_char_rate bridge_atomic_enable()
> receives. If the PHY and DRM state agree (both 148.5 MHz), audio works
> because what the AVI declares matches what the wire carries. If they
> disagree (DRM: 185.625 MHz, PHY: 148.5 MHz), the AVI declares 185.625
> but the wire carries 148.5, and any sink that cross-checks the wire
> TMDS against the declared rate (e.g. LG G3 OLED) mutes audio.
>
>
> Confirmed workaround
> --------------------
>
> In dw_hdmi_qp_bridge_tmds_char_rate_valid(), reject 185,625,000 Hz:
>
>=A0=A0=A0=A0 if (rate =3D=3D 185625000)
>=A0=A0=A0=A0=A0=A0=A0=A0 return MODE_CLOCK_HIGH;
>
> This forces DRM to select 8-bit mode (148,500,000 Hz). bridge_atomic_enab=
le()
> then stores the correct tmds_char_rate, the AVI InfoFrame declares 8-bit,
> the ACR CTS is computed correctly, and the LG G3 produces audio.
>
> Note: 185,625,000 Hz (1080p@60 10-bit) is only selected via EDID
> negotiation during seamless handoff. A genuine modeset at that rate would
> correctly reconfigure the PHY and the AVI/ACR inconsistency would not
> arise. Blocking this rate in tmds_char_rate_valid() therefore has no
> correct-use-case cost on RK3576 with the current BSP. 4K@60Hz (594 MHz)
> is unaffected and continues to work correctly, including audio.
>
>
> Proposed proper fix
> -------------------
>
> The fundamental issue is that bridge_atomic_enable() accepts
> conn_state->hdmi.tmds_char_rate without verifying it against the PHY's
> actual output frequency.
>
> Option A (no display disruption):
>
>=A0=A0 The HDPTX PHY PLL is already registered as a clock provider. On
>=A0=A0 RK3576, rk3576.dtsi gives the hdptxphy node #clock-cells =3D <0>;
>=A0=A0 VOP2 consumes it as "pll_hdmiphy0". If the bridge driver adds a
>=A0=A0 new clk pointer (e.g. hdmi->tmds_clk) populated via
>=A0=A0 devm_clk_get_optional() at probe and queries clk_get_rate()
>=A0=A0 in bridge_atomic_enable(), it can detect the seamless-handoff
>=A0=A0 mismatch and use the actual rate:
>
>=A0=A0=A0=A0=A0=A0 /* hdmi->tmds_clk added in struct dw_hdmi_qp; populated=
 at
>=A0=A0=A0=A0=A0=A0=A0 * probe via devm_clk_get_optional(dev, "tmds") or si=
milar */
>=A0=A0=A0=A0=A0=A0 actual_rate =3D hdmi->tmds_clk ? clk_get_rate(hdmi->tmd=
s_clk) : 0;
>=A0=A0=A0=A0=A0=A0 if (actual_rate && actual_rate !=3D conn_state->hdmi.tm=
ds_char_rate) {
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_warn(hdmi->dev,
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "seamless handoff: PHY at %lu H=
z, DRM selected %llu Hz; "
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "using actual PHY rate for audi=
o\n",
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 actual_rate, conn_state->hdmi.t=
mds_char_rate);
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 hdmi->tmds_char_rate =3D actual_rate;
>=A0=A0=A0=A0=A0=A0 } else {
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 hdmi->tmds_char_rate =3D conn_state->hdmi.t=
mds_char_rate;
>=A0=A0=A0=A0=A0=A0 }
>
>=A0=A0 This corrects the ACR CTS and AVI InfoFrame without touching the
>=A0=A0 PHY configuration or causing a display blank.
>
> Option B (correct but causes brief blank):
>
>=A0=A0 If the driver detects a mismatch, call phy.ops->init() to bring
>=A0=A0 the PHY into agreement with the DRM-negotiated state. All
>=A0=A0 parameters become consistent at the cost of a single mode change
>=A0=A0 on first enable after seamless handoff. This is arguably the more
>=A0=A0 correct approach if the intent is to honour what the EDID reports.
>
> Option A is preferred for a seamless user experience. Option B is
> preferable if the seamless-handoff-inherited U-Boot mode is not
> otherwise suitable for production use.
>
>
> Relation to Collabora's HDMI 2.0 patch series
> ----------------------------------------------
>
> The "Add HDMI 2.0 support to DW HDMI QP TX" series (v3, January 2026)
> addresses high-TMDS-clock-ratio and scrambling. It does not appear to
> address the seamless-handoff tmds_char_rate mismatch described here.
> If a revision of that series reads PHY state at probe time it may
> incidentally close this gap, but that is not a stated goal. Reviewers
> may wish to verify the seamless-handoff path is exercised in testing.
>
>
> Summary
> -------
>
>=A0=A0 Bug:=A0=A0=A0=A0=A0=A0=A0 bridge_atomic_enable() takes EDID-negotia=
ted
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tmds_char_rate (185,625,000) wh=
ile PHY runs at U-Boot
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rate (148,500,000); the AVI Inf=
oFrame and the ACR CTS
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 both reflect the connector-stat=
e nominal value, but
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 the wire TMDS clock disagrees w=
ith what AVI declares
>=A0=A0 Symptom:=A0=A0=A0 audio silent on any HDMI 2.1 sink that cross-chec=
ks
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 wire TMDS against the AVI decla=
ration; HDMI 2.0 sinks
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 unaffected (no such cross-check)
>=A0=A0 Scope:=A0=A0=A0=A0=A0 RK3576 confirmed; RK3588 structurally identic=
al
>=A0=A0 Not a bug:=A0 N/CTS table, IEC60958 channel status, ARC, ALSA path
>=A0=A0 Workaround: reject 185,625,000 Hz in tmds_char_rate_valid() so
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 DRM picks 8-bit 1080p (148,500,=
000 Hz) which matches
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 the actual PHY rate
>=A0=A0 Fix:=A0=A0=A0=A0=A0=A0=A0 compare conn_state->hdmi.tmds_char_rate a=
gainst actual
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PHY clock at bridge_atomic_enab=
le() and use the
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 measured rate when they disagre=
e (Option A) or
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reconfigure the PHY (Option B)
>
> I am happy to test patches on Sige5 + LG G3.
>
> Regards,
> Simon
> Symple Solutions, Dunedin, New Zealand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
