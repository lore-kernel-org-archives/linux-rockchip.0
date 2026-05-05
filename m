Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF54DFF885A
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 08:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7hVafIyMFb6xMPEMcEdRby/J0S2fwdJmxQ8wW3ajC1A=; b=hfPGQPpL6YSpHJ
	2JxDt7MhYcdcmwe5SR99CqEoB6yErMUFchxA5ETex9Q5x0JviAKW6Dj8gjQLeEsE6JQS8G3zn14bA
	3zg2NKBIvTWKOsrIRN+hBH6JQdo6vGEl0Vbh1mrsi5PXSbvV236MQ88u+e5ymnA8xijeRJlTQnuK4
	FNNrw0sX1q8tay+begJYF8ghQ+OgjTzHE0Xuh8ijEU6CQMuBLu5fkGaGb2dAmZX7lyoOUACP+jVMI
	0ddNI+XxW5tuRYd5z2LxyMs4GMgQ5mTlPBrWoKeoq3vuHdEy1KMx9VfW3zIijCZiUzezpTQ2M0Hba
	l8R2ySyYWh3OypL2vNDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKAzI-0000000FVby-0MgG;
	Tue, 05 May 2026 08:18:40 +0000
Received: from mail-australiaeastazon11021138.outbound.protection.outlook.com ([40.107.39.138] helo=SY2PR01CU004.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKAzG-0000000FVbF-1GLv
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 08:18:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lxIv2VO3ciOaKagG0KUTWfpFP8XuqS0jrZpOUkRPA3D+LKrnGgZKDs3hsJs/+GCsBt8SFoQoovY4FEx15u81hYj98sLHfPiDOorcohYciskimpL0sZC5+6911OFt9IMtyX0ItyGZAXhuG3tdmVyU5PrqyslsquCUt0kmhjN2nvmC8I+586rxJHUSnZD/K3cbD2iKRxhNsn6aMaefbeoYn1opFkPTZwPWe2A7q1JEXOnLbbQRsd5OBqQXxNzHlvfsWn2RMt7bRbP6/beFr3OK2BYStJ+8SmFmM3N9+uToBnwUMg+g2AINdK5UQqTdil4NayqVjPSAM/udcIj8MgZA5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DS3V035sUgUaiiI0gKwY+3h91n89PIYJDCHe7lliinc=;
 b=YyAjsgt1g/VppqC+OftFXjyn4t1UWv1OcWUOgIBbXrDmBKFkf+YZBIoET6wNx+qi7ASfqOLcG+aAWATWSV257D08TIHEDGRGsDq+km1ahzin6oNUYflnSyXkUHHdRxDeHXgyw4na58ZVxVdFEeqr4rih/UDwhMNEmFNFWTT7DsJYinKDD7kESarXd0fc/Y08RHGTcpts+YlaUw0JhVrtp09a8ObAM/u3dxkfgEsqThqkU3ndgQ1TW+R9tRhP01qxCyL5QR/p9q6C3aKHJRVRdfGc8A/iuZsk08/wrGlcSVBGCcoC5MJxXSUJ1jBQCfRE2K1ndZ0VLa75qiACuXl8tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=symple.nz; dmarc=pass action=none header.from=symple.nz;
 dkim=pass header.d=symple.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=symple.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DS3V035sUgUaiiI0gKwY+3h91n89PIYJDCHe7lliinc=;
 b=Y9hN9eF9NinjinaV/Gl2H1AHje9M00gOhMAIyW3NeS/YNWKNXfFAfmiA6JG/HbZwvE81qc+TNnsQcxpgcS8/HYTvBMN+i1syE1JE1/Q/ta0c5Af8OxEZQ0QL/YN4U7wxsG2ZS3NpOgRe78o7hdR/rPClCviAEzGwS1ygMsFjhP7cUam8II42X+vcsmbdWW9zr0j1DOzWNXZgtvlRZNRM4QuG4aNLnQq30CldXYxEVVcAQYXe1bpXBo8kIHw8cWoUCpQod451WslIz6CTvsSRR3b0ZcVk3GWxfsKWhGJW33DIc3aFoEtNt6t2bCC9puPX0LELHVukgaTGrR7p3EhmQg==
Received: from ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:b2::11)
 by ME4P282MB0981.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:96::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 08:18:17 +0000
Received: from ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 ([fe80::4619:bdb0:3293:3834]) by ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 ([fe80::4619:bdb0:3293:3834%5]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 08:18:17 +0000
From: Simon Wright <Simon@symple.nz>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: drm/bridge: dw-hdmi-qp: seamless handoff sets wrong tmds_char_rate,
 breaking audio on strict HDMI 2.1 sinks
Thread-Topic: drm/bridge: dw-hdmi-qp: seamless handoff sets wrong
 tmds_char_rate, breaking audio on strict HDMI 2.1 sinks
Thread-Index: AQHc3GbSunaFBhX++0C913TIa5mDpg==
Date: Tue, 5 May 2026 08:18:17 +0000
Message-ID: <ME3P282MB21960D9D68BFF520316BDFCEA83E2@ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=symple.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME3P282MB2196:EE_|ME4P282MB0981:EE_
x-ms-office365-filtering-correlation-id: ae178c21-20ec-4795-52bf-08deaa7edc48
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700021|7055299006|56012099003|18002099003;
x-microsoft-antispam-message-info: dCuj2AUWTWaeTkOIrgi1HRhjYf8it6Mr7zwXq+SzqZr3niD0TvT+MNRcHcMvMRyUMqv3yAVoQ/pcIudXI4KApWDYxcfPgAQbKfLPQMlHYJF5Jf8YzvgOBu6IsLbss8NviaR4QDIxP9+Ay3zAxfXnkbEpEpyKqZGmvkdmuB5AX3gnqhWnjAqAN8SjCFZJA9fnWzzavyNVjGl/HkmqVpN1bxT7EqZx7ZYWw0cuVasquallz9ux9uX2ZzzbOuZd7FUDDw8in8OidKxCQUqPEtasAelnoC6pMFdLGhcIBJB3+VYNdShz4GAWst5Ja+RChpbjK6xx0dKjJXZeuI1PDmATOlJY25alXTcTo72ImNtU4uYb/B0nC+lREXZYaKuXPXn0xLu7mD9iXXe9dOk6sDjTl8MyBr8uDH4H04yg8zt7qe51NnGyBINpw8igR+AV/LhmK11VH7MR2MzrIlLfFsbQBeEZemF1V1k81HWrmIqWnNQseSwr2XXptVAPV7FT/qXmMi0+gPkExUyljNMlvPYGaojUpoBFM4OhfU9DepUreSVJ0nTORRwUQdW2m70zqVkhv3aa4n5CcZ/LQIpqXYnWgJRpt47Hio3PSD4HxBSZKnU+aTqCyFZ6Jq/lB+9No4cmFd2GPTAANRaJOi7nnqUQj3oe580/SRJR/uF4/EVUEZhxYGfYlTJ33x6gZYSPx1wpkCO18RW0RIMB/rSprCMdAjCJBfOEBdNKjH9LTzzovc2GZ5vZBdgfA6Tri0I/Eh1Y+HbHJ/Ar7Ja9NjRv6Ac6Dw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7055299006)(56012099003)(18002099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?h2rWL9QYOLw1rYYzeg9tL1O2nkwGqgRS5ZC1ciItFlrPPR7PE8db+1g2?=
 =?Windows-1252?Q?Avy0sBnCfhlpRhzK7TkiCR57B5+RMRLHNdoshtBPrbfHJyDkNnbwA3En?=
 =?Windows-1252?Q?dKdxzbMhq8oSpf541vmfng6xLaerSxyO7ZfYJOoC1XxUvhG+KxH4s4zD?=
 =?Windows-1252?Q?Lp074OukjYp/uOjrFFhNYhqnINUMuHC6jgJR3c6yCOy9DFHirCP7jPkd?=
 =?Windows-1252?Q?ui6L2v5bXx1yqCKNyBq0z56mhe/tGzbO225tXzuGGrMT4UyxJAr2sy5z?=
 =?Windows-1252?Q?8D9GRPaHRQogQbUe5A0unNtN2nhvqEvvODf60LbtrzPWdUv7qK57rCGm?=
 =?Windows-1252?Q?v8g0pHVHQ9p4JlX+XsvzIMrH8ybnJkxjFdWS5iGw2PyEE2otrBEfa624?=
 =?Windows-1252?Q?ogfoBSEZZumeEuHEqAax9TqTej6YnxpjUn8SiAIxrCvS8qbY9vovINXu?=
 =?Windows-1252?Q?jGtynFRIyalw66Bv0IuHetQWepFbhjgS690PEU+YiHtnKF5mfZWQVJ2J?=
 =?Windows-1252?Q?AC+ITOQgJ5nx+jtokyGbyxvyaiCqZzo+TSFDkR7z63jFrIhoabaeg1vN?=
 =?Windows-1252?Q?q1IbFteTAgjJgZnyjIwKNZtHZIL0spmmQC+9JtQ4sF59hair4N39VEnf?=
 =?Windows-1252?Q?g7BOfXQV/OvIBZScLJmmhtf9lUUTArbhp8N9Lya09/U29/g57ER+/jwe?=
 =?Windows-1252?Q?3c3qQci1XAI3WOZEtiStVZr64gM/dhqNM+zJ+3x3w4zjtKnLUYluQ84H?=
 =?Windows-1252?Q?N9elFfIMOwYfQU4A2885zftOoLptlSC0mHtHB0oFTJWZSpDmkHAVbs4l?=
 =?Windows-1252?Q?7499mpcitfp4W1ugMvWo1gpHXBLxDb4lSvQq0qiL1w3gtWgcKS8FWtoj?=
 =?Windows-1252?Q?YBtHfulKeY5NcQPgo2Ux/xK68QU83W9XVd4Hh4l595HC/nrBCbH3sfLE?=
 =?Windows-1252?Q?3ohbq1iqGP6w8Fe64TfVS0s4ck+Ww6GJMjhJzPqsg9k58rZHCzh66zFi?=
 =?Windows-1252?Q?RIE68CNcgqWTuPnZIcJIwe4Nz/9BMEaHeT9IzdDUFfsWOkUIURJt0M2d?=
 =?Windows-1252?Q?sWpmwJX2MFkOSi4HKu6xUssflGFXWSiLeF/HFQa9vHVlDYeLypdhA0Jr?=
 =?Windows-1252?Q?kFY97s66R8F+XSLP/S3Svlg4Ge4IlQXG4ajDBkaBJStLN0bDGT4T55wL?=
 =?Windows-1252?Q?SHbCOema7B06zttNEw2Px0Lmxmy70rX5Jw9oRgeX7ZV2lzXpIjdP11+W?=
 =?Windows-1252?Q?t5N895YyCsSGzGn89wZdEaMIWEq88WWHbo6vrRoh76embQLPeacGE3B6?=
 =?Windows-1252?Q?DckKT4YqCmXbN52u5nZucrqD7YHW8m6zEtVBzvVyRu6vNdlc530lTtcz?=
 =?Windows-1252?Q?O+GUojE+QO6WbOnPaPUtYHlNiCtV3UpK/xuy3EqpXQXpQZswUPaKJQVR?=
 =?Windows-1252?Q?/IYGdD+sDo/Qjx9HQHeXPVejDxoNNpvkWf2vmDIiHe8guyW9ryY6gwRf?=
 =?Windows-1252?Q?SAT9TpApgzsAFcabzlTDK4lRL4EdSV2CyIUWb1AYXGxyOBHPukcM/ZC/?=
 =?Windows-1252?Q?DC2T1Ds4TtPDp8qME6HHviU4SgIbiuCXOoX9YP/fUhToC0300MFyKU//?=
 =?Windows-1252?Q?i37/2MLbtNuJvqyitBN9FkvH6Ga0L835dM3y/yG4NV5mpL6ovoz7FjGY?=
 =?Windows-1252?Q?+DkasUwewi5a1QKxAEEjRWK8GFmKqX0HFi7Wszi/5BNm6nSs6lzn7Sfw?=
 =?Windows-1252?Q?btYsk8wPN0XLd7AFtWqNgwgUazFroe49lvdxhZ7zIpnitLNxYUM+HNBu?=
 =?Windows-1252?Q?T0863uF6Y8QZRmTa0PC5MQE5wEwQvw/gFxd3nzIFPwjlpUgE?=
MIME-Version: 1.0
X-OriginatorOrg: symple.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ae178c21-20ec-4795-52bf-08deaa7edc48
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2026 08:18:17.0964
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9531f271-068a-4210-b471-bd8da91491c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J9hWWWV/yLUGrF0xJqKeLO4oJgxla8IxtAaSZyQX32i0HlQVIaYzRZyTcwj8UFsY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME4P282MB0981
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_011838_488818_FF574E54 
X-CRM114-Status: GOOD (  10.13  )
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
Cc: "kernel@collabora.com" <kernel@collabora.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

[Resent in plain text =97 first attempt was rejected by the list's HTML fil=
ter.]

Hi,

I have tracked down a bug in dw-hdmi-qp that silences audio on strict
HDMI 2.1 sinks (tested: LG G3 OLED) when booting with HDMI seamless
handoff from U-Boot. HDMI 2.0 sinks are unaffected. The root cause is
a mismatch between the AVI InfoFrame colour depth and the ACR embedded
CTS value.

Hardware tested:
  Source:       ArmSoM Sige5 (Rockchip RK3576)
                Armbian-edge kernel 7.0.2 (Linux mainline v7.0 plus
                Armbian board-enable patches; not a BSP kernel)
  Failing sink: LG G3 OLED 4K (HDMI 2.1, strict embedded-CTS mode)
  Passing sink: Various HDMI 2.0 TVs (self-measuring CTS, unaffected)

The bug is structural and is expected to affect RK3588 under the same
boot sequence.


Root cause
----------

When the system boots with seamless handoff active, U-Boot has configured
the PHY for 8-bit 1080p60 (TMDS =3D 148,500,000 Hz). The DRM connector
state, negotiated from EDID, selects 10-bit deep colour (TMDS =3D
185,625,000 Hz). In dw_hdmi_qp_bridge_atomic_enable():

    hdmi->tmds_char_rate =3D conn_state->hdmi.tmds_char_rate;

This stores 185,625,000. The PHY ops->init() is called but the PHY is
already running at 148,500,000 from U-Boot and is not reconfigured.

The result is an inconsistency between what the sink is told over HDMI
and what the wire actually carries:

  AVI InfoFrame:     declares 10-bit deep colour at the connector-state
                     TMDS rate (185.625 MHz)
  ACR embedded CTS:  driver uses hdmi->tmds_char_rate =3D 185,625,000 Hz
                     to compute CTS via dw_hdmi_qp_set_sample_rate(),
                     producing CTS =3D 185,625 (internally consistent
                     with the AVI declaration)
  Wire TMDS clock:   PHY untouched from U-Boot, still running at
                     148,500,000 Hz (8-bit)

The dmesg signature (full pr_err output, lower in this report) confirms
both AVI and ACR are computed from the nominal 185.625 MHz value:
"tmds=3D185625000 ... cts=3D185625".

A standard HDMI 2.0 sink does not cross-check AVI against the wire TMDS
in any way that matters for audio, so the mismatch is harmless. A strict
HDMI 2.1 sink (LG G3) measures the wire TMDS and verifies it matches the
AVI declaration; with declared 185.625 MHz vs measured 148.5 MHz, the
check fails and audio is muted, permanently, until the next mode set.

The N/CTS values themselves are correct CEA-861 ratios. At a wire TMDS
of 148.5 MHz with N=3D6144, CTS=3D148,500 yields f_audio =3D 48 kHz; at a
wire TMDS of 185.625 MHz with N=3D6144, CTS=3D185,625 also yields f_audio
=3D 48 kHz. The driver picks one TMDS, computes a self-consistent N/CTS
pair, and embeds it. The bug is solely that the TMDS the driver picks
(connector-state nominal) differs from the TMDS on the wire (PHY
actual).


Dmesg diagnostic signature
--------------------------

Failing (seamless handoff, DRM selects 10-bit 1080p from EDID):

    dwhdmiqp-rockchip 27da0000.hdmi: atomic_enable: \
        tmds_candidate=3D185625000 is_hdmi=3D1
    DW_HDMI_QP set_sample_rate: tmds=3D185625000 sr=3D48000 n=3D6144 cts=3D=
185625
    [audio silent on LG G3]

Working (8-bit mode forced, see workaround below):

    dwhdmiqp-rockchip 27da0000.hdmi: atomic_enable: \
        tmds_candidate=3D148500000 is_hdmi=3D1
    DW_HDMI_QP set_sample_rate: tmds=3D148500000 sr=3D48000 n=3D6144 cts=3D=
148500
    [audio working on LG G3]

The difference is entirely in which tmds_char_rate bridge_atomic_enable()
receives. If the PHY and DRM state agree (both 148.5 MHz), audio works
because what the AVI declares matches what the wire carries. If they
disagree (DRM: 185.625 MHz, PHY: 148.5 MHz), the AVI declares 185.625
but the wire carries 148.5, and any sink that cross-checks the wire
TMDS against the declared rate (e.g. LG G3 OLED) mutes audio.


Confirmed workaround
--------------------

In dw_hdmi_qp_bridge_tmds_char_rate_valid(), reject 185,625,000 Hz:

    if (rate =3D=3D 185625000)
        return MODE_CLOCK_HIGH;

This forces DRM to select 8-bit mode (148,500,000 Hz). bridge_atomic_enable=
()
then stores the correct tmds_char_rate, the AVI InfoFrame declares 8-bit,
the ACR CTS is computed correctly, and the LG G3 produces audio.

Note: 185,625,000 Hz (1080p@60 10-bit) is only selected via EDID
negotiation during seamless handoff. A genuine modeset at that rate would
correctly reconfigure the PHY and the AVI/ACR inconsistency would not
arise. Blocking this rate in tmds_char_rate_valid() therefore has no
correct-use-case cost on RK3576 with the current BSP. 4K@60Hz (594 MHz)
is unaffected and continues to work correctly, including audio.


Proposed proper fix
-------------------

The fundamental issue is that bridge_atomic_enable() accepts
conn_state->hdmi.tmds_char_rate without verifying it against the PHY's
actual output frequency.

Option A (no display disruption):

  The HDPTX PHY PLL is already registered as a clock provider. On
  RK3576, rk3576.dtsi gives the hdptxphy node #clock-cells =3D <0>;
  VOP2 consumes it as "pll_hdmiphy0". If the bridge driver adds a
  new clk pointer (e.g. hdmi->tmds_clk) populated via
  devm_clk_get_optional() at probe and queries clk_get_rate()
  in bridge_atomic_enable(), it can detect the seamless-handoff
  mismatch and use the actual rate:

      /* hdmi->tmds_clk added in struct dw_hdmi_qp; populated at
       * probe via devm_clk_get_optional(dev, "tmds") or similar */
      actual_rate =3D hdmi->tmds_clk ? clk_get_rate(hdmi->tmds_clk) : 0;
      if (actual_rate && actual_rate !=3D conn_state->hdmi.tmds_char_rate) {
          dev_warn(hdmi->dev,
              "seamless handoff: PHY at %lu Hz, DRM selected %llu Hz; "
              "using actual PHY rate for audio\n",
              actual_rate, conn_state->hdmi.tmds_char_rate);
          hdmi->tmds_char_rate =3D actual_rate;
      } else {
          hdmi->tmds_char_rate =3D conn_state->hdmi.tmds_char_rate;
      }

  This corrects the ACR CTS and AVI InfoFrame without touching the
  PHY configuration or causing a display blank.

Option B (correct but causes brief blank):

  If the driver detects a mismatch, call phy.ops->init() to bring
  the PHY into agreement with the DRM-negotiated state. All
  parameters become consistent at the cost of a single mode change
  on first enable after seamless handoff. This is arguably the more
  correct approach if the intent is to honour what the EDID reports.

Option A is preferred for a seamless user experience. Option B is
preferable if the seamless-handoff-inherited U-Boot mode is not
otherwise suitable for production use.


Relation to Collabora's HDMI 2.0 patch series
----------------------------------------------

The "Add HDMI 2.0 support to DW HDMI QP TX" series (v3, January 2026)
addresses high-TMDS-clock-ratio and scrambling. It does not appear to
address the seamless-handoff tmds_char_rate mismatch described here.
If a revision of that series reads PHY state at probe time it may
incidentally close this gap, but that is not a stated goal. Reviewers
may wish to verify the seamless-handoff path is exercised in testing.


Summary
-------

  Bug:        bridge_atomic_enable() takes EDID-negotiated
              tmds_char_rate (185,625,000) while PHY runs at U-Boot
              rate (148,500,000); the AVI InfoFrame and the ACR CTS
              both reflect the connector-state nominal value, but
              the wire TMDS clock disagrees with what AVI declares
  Symptom:    audio silent on any HDMI 2.1 sink that cross-checks
              wire TMDS against the AVI declaration; HDMI 2.0 sinks
              unaffected (no such cross-check)
  Scope:      RK3576 confirmed; RK3588 structurally identical
  Not a bug:  N/CTS table, IEC60958 channel status, ARC, ALSA path
  Workaround: reject 185,625,000 Hz in tmds_char_rate_valid() so
              DRM picks 8-bit 1080p (148,500,000 Hz) which matches
              the actual PHY rate
  Fix:        compare conn_state->hdmi.tmds_char_rate against actual
              PHY clock at bridge_atomic_enable() and use the
              measured rate when they disagree (Option A) or
              reconfigure the PHY (Option B)

I am happy to test patches on Sige5 + LG G3.

Regards,
Simon
Symple Solutions, Dunedin, New Zealand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
