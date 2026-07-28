Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A0BC53219
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 19:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rytYJJ4ACoHEvM5+hkhhz6e3T/KKXkb7eDZG7IRPWJ0=; b=ZgrqKswmrInpRr
	iXrJJfbTuKX5AszlKvKIiGgfkD3rqYWekxRDwkRNv9sIWq1wjGlDwqgqjirgsStz2hQcG/VWKBrVU
	1CQcwGg7kzapSlQu8YMa66NTzJnIchwUi4CtIXXQXNgMMe1vhX6czchzKnje6RUon4QsJNNLoSHZG
	PI/e4U6opMYVRe0G4IlUnZlZDK0+tvQIUZrXPjGFPIDmy628kUX642l7wfd9S1o96tqKUlCaxqTEa
	Gu1F1la/Mi4YJXCB6zsoz/6bWrPsiAOeZr/p5P5XChtZt7ORq8zcVtUb8jF2Zkb/rz0ADcXSouV/N
	CBPWqBxcZUEH7smOzwng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wonEY-000000067AT-3SEW;
	Tue, 28 Jul 2026 19:12:58 +0000
Received: from mail-swedencentralazon11013020.outbound.protection.outlook.com ([52.101.83.20] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wonEV-0000000678v-2BVR;
	Tue, 28 Jul 2026 19:12:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B/VocMJPu1c+FZNQC9N0aliXu8YEjHjK6lV/7sILgidtFRkgRhwFRLwsDC90z9k8oL5dopvs4pnZJZKUCp8zLQL6cOYipXXdua+Z/QqkOZeoAq/yqN1/H5v+pv9/NuNX82ajTN4EATOSdbfbjGgYf3LT7ppjvH1HLGqNRysTlp5g6Wi1BtgYDaXNesGc8cgxwlSY2oyBQGboEnk5JjwAWHQbx74l2vEvANMJtc0nLAepJA6Ixp9XAoCX6jQBv9sVhOaTOz0rXibF8cZh+G1L/2ogMu5iVqDYwxlmTSRNu9OZGkdVYQZERJ47oF3uJyDHx/moIn65FqxFzu4uKXgl5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=drB80SuFXwLrSFqkjUU3e0YUHFiHR+FtKNDuC/PiKvQ=;
 b=E06doNb5eg/R2IcSjTkgFWuMex2ZC9ki/7Kb+MmIo8plej6jTJ017CfTHIjnFu+Tc0nHQs3fk064CQkVTJJZV/jqemxq3dRGTQchWmfgtYylu8BzMASx0H/B7p8bYJnbKDt19F4e8lggjTMqMB5wMniy6qo+8qyGR4daxfDRYj3evFCdBhCuZeYMdCjlmZ7IIECdw5hEL3QEMy2ExuCkxK31h3s+ZTJecek5VYLEnRZlK2lkoMRVkfnhtvOxqGuGODjhWa16/+CQie5dZUauHblAw5ANvP0wLfcgoEdbfw7pEwOOjW197Yau7Q3XEGTndrbROBCg48Oup9ga+ORqnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=drB80SuFXwLrSFqkjUU3e0YUHFiHR+FtKNDuC/PiKvQ=;
 b=XkLWgNEKuoye/8HNYpISCHYUzSR/ZbothLNeekquETFJxjCd8RN0K+h2Q7VI8uTVxNyEzV3mQ3loUk+30FhPkEQq1TVTBlVyTB9A+As8D8sVQKQQH7nn5aoi/q2VUjepqyaPkQd1wAF178vJ/wMeho957oG239bz368apURL9WsocV6hRE5M43bDzmbywXbt2QKfHYy3do57Q921l3VLuzzIgUOI5Wwq50JMrSkxZEK/iKsAppiSI3Bb12yqwf+u1nfKrcqi0oHRdp4Bk6LydYysJaUpcxo7sIJLY+0jUYAsxNvl9CvRBAwyHq0PY45lzt4TZXZbi6yRggERcRaLTg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from GV2PR04MB11799.eurprd04.prod.outlook.com (2603:10a6:150:2cf::9)
 by VI0PR04MB10319.eurprd04.prod.outlook.com (2603:10a6:800:231::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.245.13; Tue, 28 Jul
 2026 19:12:47 +0000
Received: from GV2PR04MB11799.eurprd04.prod.outlook.com
 ([fe80::2146:83a2:5329:b7c]) by GV2PR04MB11799.eurprd04.prod.outlook.com
 ([fe80::2146:83a2:5329:b7c%7]) with mapi id 15.21.0270.009; Tue, 28 Jul 2026
 19:12:47 +0000
Date: Tue, 28 Jul 2026 15:12:36 -0400
From: Frank Li <Frank.li@oss.nxp.com>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Subject: Re: [PATCH 2/2] PCI: dwc: Handle return value from endpoint
 .pre_init callback
Message-ID: <amj_JPfOU2sNINxA@lizhi-Precision-Tower-5810>
References: <20260728012548.465139-1-marek.vasut+renesas@mailbox.org>
 <20260728012548.465139-3-marek.vasut+renesas@mailbox.org>
Content-Disposition: inline
In-Reply-To: <20260728012548.465139-3-marek.vasut+renesas@mailbox.org>
X-ClientProxiedBy: SN7P222CA0017.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:124::15) To GV2PR04MB11799.eurprd04.prod.outlook.com
 (2603:10a6:150:2cf::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR04MB11799:EE_|VI0PR04MB10319:EE_
X-MS-Office365-Filtering-Correlation-Id: 35bf4890-7af5-49cd-9b91-08deecdc35cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|19092799006|366016|23010399003|376014|18002099003|4143699003|56012099006|10067099003|22082099003|11063799006;
X-Microsoft-Antispam-Message-Info: 55X/z13vG1l99BmcmSHJfTJcZR68JI9F7sScnoKDvEGdMObB1wbnCvo857VjhgQZiGtyZVCLsSEwnCdlNAuW2G/elLwrG6xnYxAXXnllMJRUJCvF28vqRQJCex0QFPofEEaAnU8s4G/wpDoAN8SrILgW88HU6hi7ZX0t+L4RxNoTglJhkBRKV4xS7yd/c9Yzx0tUmCCC4mxJYSIMk2HiSWDBIQgF8/4xztIRvyiOjJ8uJtswU29DapXxCzwJlBzUWFCmuJZoNkAuKgWKBnD6vg5k1HXgqGP82ObNpDxYzq/vV8OtPfS3ls6Zr3iutlcanfalUCdwc6FQjuemAGYtrj06ywdr9BpAasfaRo0RIoGQGtw+4hQf+aQSRxsDx9wF+WQdugY1cuSlNEecBzJitoajK+8fNtr5HcXx/h2/NXMM1OztAvFwV9JeaL+m6doVoYSbPV4qqLSe9Nuhr859mfaQ/zROek9Xg+bfNk1tzKG12/jAxzvyjQGq7FuvjVBr/J5kcRmeQYYdQvR303BF7SXffd7d/knCoZOXFDqcTkPI+6FxGZUw+dgQMMv5EcWLTFAIPUe07sTfYIRLChFsepTus+fLhpuyS3vHc+X1Jv2HK3IaBpSWbYzahOTMdO0i6qiDrcGB7qCmnLrYMV936/s4GgmM1+8rA6rXDx3tH0I=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR04MB11799.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(19092799006)(366016)(23010399003)(376014)(18002099003)(4143699003)(56012099006)(10067099003)(22082099003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akRqc3FzNUJLSnpVdkxHM093aDUrZ0pDZlhxeWFsSXJFWHhZMjVSMGh1dklD?=
 =?utf-8?B?Um1uUjBkSFplVSsvTTBOZ2NpTDFwZ01INnVOVWhVUEtScjVqOVU0bThMWnMv?=
 =?utf-8?B?T1JFZFZDNzVTWHlPN28yUTdVZHRVWTE4b1lDaTdHY1pYeUlDOTJLMWRTbU9S?=
 =?utf-8?B?dDRnR3FhUDFpekRyRkc2VzNranFSdHFXazB4WU9STzVVZHE0RFdIdGVGUHlr?=
 =?utf-8?B?Y3N6bThia1lQbGg4WFpIeWlRcTNrZ05aV3dWZzcvOERxcE95TVR6TUdHT1Q5?=
 =?utf-8?B?MnhZK0ZGdDg3UllTMjdkOS95SVhlZEtmQlhqQTZBc3BBZjdRekhkSFFnbGxC?=
 =?utf-8?B?K1hZdmx2NGVyZytPazdoYzgxYXd1aG1hYVlIODBGVlU0d2FteVo5Q2ZTNHFY?=
 =?utf-8?B?bnJpZHRZTGFNZkdrcWxOMVNJOUl3dCtZeFhaaW9JOTJNaGFsR3FpQ2wycE5k?=
 =?utf-8?B?L2VWakxCWU1RdzVaYmoyR3F2ZGN1OWRlV3FFZFd0dHF5cWovRzUycGovREpH?=
 =?utf-8?B?MENBYnZsU3NkMkZnN05kQlVHN0VHWnRXeXJob0dPU3lGOGVEdlJDWlBYNmNE?=
 =?utf-8?B?TG9TMGZiZGFiaTVUU1JUeVJKSFphN3ZTTUlianhVZUpwNTVsQ0V5QXRIdWZI?=
 =?utf-8?B?amtCRnkwNzJqZ0Fpdk9zWHJPbGlWL3U4TlM1enErV2pDdFFFQ1p0bWdFcUZ1?=
 =?utf-8?B?dVVFOElIalJlYXNWTVEzRFFwY0J5S1p3NXJPVDhOQ081OCt2VHUwR0k2eU54?=
 =?utf-8?B?Y1ZHRm1uelZHRE9PMzBranI0ZHQ3L1Q1QnB2RXZ4MEdnSWtiTWtJY2tpNXBR?=
 =?utf-8?B?clpQclZLUTNhZTlRZ1B5bDlZV0lsZTBSSkIxNXllUjlaR05pRHh0ZG1iMVJo?=
 =?utf-8?B?bzlEcFlkZkIrY1Z2aVhwYVYvRCtydFhCZHMzQk15dVplSHptdVRycHhpemY4?=
 =?utf-8?B?eUZNYVZldFdyQlZOeHMxOENiMTVmTHBUMnlRMlJYVjBtcVBJT2lEdFdUcWsr?=
 =?utf-8?B?MUVRcUFmMi9teDJpNCtZY2ZEek1iaE9XbDdkMmpWSjVHTnVTOXJWV21iT2NF?=
 =?utf-8?B?R0ZRZExCRnc3dWRQcGs2NVRGOTVHK3ZqblM1YXVSMWd1SG5uUnNXV2dIMXRW?=
 =?utf-8?B?TllMWG96QUx3TFRsWE1XTU9CVm1hV0FtaHZwVHdBazVqYjBzOTk4U1pKZXlu?=
 =?utf-8?B?aWFWQ1o0RVBKaWkwQ0tUVGxneStaNXNHNXUyYnJmYUZCN2QvWGRYWjlId0Zk?=
 =?utf-8?B?NlQ3dlAyZm1STGJPcXVWbG9ZU3M3dURMOEJrTE0vMnNtTnI4QTkwenQ1V1Uy?=
 =?utf-8?B?azJtbGRLUEYwU1hUVFVjVFFNd3EvbGsyVXZ4YnlXV1RHVWRncThvaTRtclIr?=
 =?utf-8?B?dHpqWW9XaTR1eUp4V2U2dUszWXRBL2dSdFNxZ3ZBSFlGbTlzKzY2OHl2bnJI?=
 =?utf-8?B?RXhpSFdXbG5nRkUwaGVobDNZa0QyZ0ZEQTZxUFZsYUQxdllVNlArY0RiSStJ?=
 =?utf-8?B?Y2NNc0NSVG9ZTmJ3MXVkd09iM0hJU3RGY3hnNzNGQndHd3ZPNWRGeCtsTm16?=
 =?utf-8?B?SVVlUkxYN1ZMN3BnNGFpbkNUaDY3RUE1Q0R4ZEJ5VTBQUzdDZnBHMXhmTnF2?=
 =?utf-8?B?blRvTW9MNGRYVWUwWXNNMS83aHEwT0ozY3MxRDRqSG4rM3JEOE9hK282NkxD?=
 =?utf-8?B?OWRHUkJTN3YzaDV2T1d6WXZrRXRLSnBVMkRVMHlCMW9QSkl1THFRNHJmT0xW?=
 =?utf-8?B?dHl3OUlNS2lNWUpXeFh1b0dTVjVLTGtVQnJJRTNJRjlHamNoTGhQV28rbE1G?=
 =?utf-8?B?TzVIa0QrcEVZeWFZZnZWckdHN3Vrb05oSS9rSWxEcVdycHhrZ0xuOURKRXRV?=
 =?utf-8?B?Y3BEWlkzYVhyTGZCc1pDTGZXbTVQU2h0Q2lOMllrQkg3a2tNSUdjQlZvNmpt?=
 =?utf-8?B?bDhCOHFHd2VJMERnaCtIRGw0ay9pc2NNMEEwN0ZDQVJYZ25qTnM2bEhkQTlt?=
 =?utf-8?B?T1Z6WDJtbzJtREd4dEpFSkZTbUloMjd1aGQ2cGFXZlB1bkFObjJqTVNhYTgr?=
 =?utf-8?B?UXRHV0NmMDFCeVl2Q2pNQTdLMXNKZDl5OVJRTjVlZHZLcm5jeWtHTjBOclQ2?=
 =?utf-8?B?N08vaWdaOFVXaktVcVJsYllaSWdLclMxVTlRTHUwcGt4VFBPQkhCWi9XR0oy?=
 =?utf-8?B?djVkdlV2YXQyTFVUYUY2VU5EcXVybnNRUGZKbW9aRityVnVYcVFHN1owL2lK?=
 =?utf-8?B?citCbDhKUXJITHB6L0ZIa0lwaFFXVWFHeW9pRTdqc2lMQlBNNXd3Mml6YnYw?=
 =?utf-8?B?V2RIWi9kbTRaLzZBUnRaYnlMQ1h2SGNVMk5qN1QvaThTbFdOR3V4dEtlMU0y?=
 =?utf-8?Q?GbLa3KZ58JDnF+7EX6BljzgujpZpWXjfxZEb0?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35bf4890-7af5-49cd-9b91-08deecdc35cc
X-MS-Exchange-CrossTenant-AuthSource: GV2PR04MB11799.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2026 19:12:47.4496
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XS3FPMR2ghcJua70dV088B6wFddELbBUTkq2FfU3NZXYzscBEoXpEAB9ZPyirPVMmhCLugGdWqFSrC4kicbF9oWotQJF3sZLVIYyt7ZtlvylwehqqEpmju+49l7PI/uT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_121255_589078_D974E0E7 
X-CRM114-Status: GOOD (  20.00  )
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
Cc: imx@lists.linux.dev, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Vignesh Raghavendra <vigneshr@ti.com>, linux-pci@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>, Frank Li <Frank.Li@nxp.com>, Niklas Cassel <cassel@kernel.org>, Koichiro Den <den@valinux.co.jp>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, Jesper Nilsson <jesper.nilsson@axis.com>, Magnus Damm <magnus.damm@gmail.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Siddharth Vadapalli <s-vadapalli@ti.com>, Shawn Lin <shawn.lin@rock-chips.com>, Srikanth Thokala <srikanth.thokala@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Qiang Yu <qiang.yu@oss.qualcomm.com>, Bjorn Helgaas <bhelgaas@google.com>, linux-omap@vger.kernel.org, Qianfeng Rong <rongqianfeng@vivo.com>, Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>, Minghuan Lian <minghuan.Lian@nxp.com>, Jingoo Han <jingoohan1@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Yuho Choi <dbgh9129@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKdWwgMjgsIDIwMjYgYXQgMDM6MjQ6MjVBTSArMDIwMCwgTWFyZWsgVmFzdXQgd3Jv
dGU6Cj4gQWRkIHJldHVybiB2YWx1ZSBoYW5kbGluZyBmb3Igc3RydWN0IGR3X3BjaWVfZXBfb3Bz
IC5wcmVfaW5pdCBjYWxsYmFjay4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFZhc3V0IDxtYXJl
ay52YXN1dCtyZW5lc2FzQG1haWxib3gub3JnPgo+IC0tLQo+IENjOiAiS3J6eXN6dG9mIFdpbGN6
ecWEc2tpIiA8a3dpbGN6eW5za2lAa2VybmVsLm9yZz4KPiBDYzogQW5hbmQgTW9vbiA8bGludXgu
YW1vb25AZ21haWwuY29tPgo+IENjOiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29t
Pgo+IENjOiBGcmFuayBMaSA8RnJhbmsuTGlAbnhwLmNvbT4KPiBDYzogR2VlcnQgVXl0dGVyaG9l
dmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiBDYzogSGVpa28gU3R1ZWJuZXIgPGhlaWtv
QHNudGVjaC5kZT4KPiBDYzogSmVzcGVyIE5pbHNzb24gPGplc3Blci5uaWxzc29uQGF4aXMuY29t
Pgo+IENjOiBKaW5nb28gSGFuIDxqaW5nb29oYW4xQGdtYWlsLmNvbT4KPiBDYzogS29pY2hpcm8g
RGVuIDxkZW5AdmFsaW51eC5jby5qcD4KPiBDYzogTG9yZW56byBQaWVyYWxpc2kgPGxwaWVyYWxp
c2lAa2VybmVsLm9yZz4KPiBDYzogTWFnbnVzIERhbW0gPG1hZ251cy5kYW1tQGdtYWlsLmNvbT4K
PiBDYzogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+Cj4gQ2M6IE1pbmdo
dWFuIExpYW4gPG1pbmdodWFuLkxpYW5AbnhwLmNvbT4KPiBDYzogTWluZ2thaSBIdSA8bWluZ2th
aS5odUBueHAuY29tPgo+IENjOiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9s
aUBjb2xsYWJvcmEuY29tPgo+IENjOiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4K
PiBDYzogUWlhbmZlbmcgUm9uZyA8cm9uZ3FpYW5mZW5nQHZpdm8uY29tPgo+IENjOiBRaWFuZyBZ
dSA8cWlhbmcueXVAb3NzLnF1YWxjb21tLmNvbT4KPiBDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2Vy
bmVsLm9yZz4KPiBDYzogUm95IFphbmcgPHJveS56YW5nQG54cC5jb20+Cj4gQ2M6IFNoYXduIExp
biA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+IENjOiBTaWRkaGFydGggVmFkYXBhbGxpIDxz
LXZhZGFwYWxsaUB0aS5jb20+Cj4gQ2M6IFNyaWthbnRoIFRob2thbGEgPHNyaWthbnRoLnRob2th
bGFAaW50ZWwuY29tPgo+IENjOiBWaWduZXNoIFJhZ2hhdmVuZHJhIDx2aWduZXNockB0aS5jb20+
Cj4gQ2M6IFlvc2hpaGlybyBTaGltb2RhIDx5b3NoaWhpcm8uc2hpbW9kYS51aEByZW5lc2FzLmNv
bT4KPiBDYzogWXVobyBDaG9pIDxkYmdoOTEyOUBnbWFpbC5jb20+Cj4gQ2M6IGlteEBsaXN0cy5s
aW51eC5kZXYKPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtb21hcEB2Z2VyLmtlcm5l
bC5vcmcKPiBDYzogbGludXgtcGNpQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1yZW5lc2Fz
LXNvY0B2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+IC0tLQoKUmV2aWV3ZWQtYnk6IEZyYW5rIExpIDxGcmFuay5MaUBueHAuY29tPgoKPiAg
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMgfCA3ICsrKysr
LS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmggICAgfCAy
ICstCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcmNhci1nZW40LmMgICAgIHwg
NiArKysrLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVz
aWdud2FyZS1lcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJl
LWVwLmMKPiBpbmRleCBkNzhmYjg0NTU4MmIyLi5iMDAyMzkwOTdkODkzIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5jCj4gKysrIGIv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMKPiBAQCAtMTUy
NCw4ICsxNTI0LDExIEBAIGludCBkd19wY2llX2VwX2luaXQoc3RydWN0IGR3X3BjaWVfZXAgKmVw
KQo+ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0Owo+Cj4gLQlpZiAoZXAtPm9wcy0+cHJlX2lu
aXQpCj4gLQkJZXAtPm9wcy0+cHJlX2luaXQoZXApOwo+ICsJaWYgKGVwLT5vcHMtPnByZV9pbml0
KSB7Cj4gKwkJcmV0ID0gZXAtPm9wcy0+cHJlX2luaXQoZXApOwo+ICsJCWlmIChyZXQpCj4gKwkJ
CXJldHVybiByZXQ7Cj4gKwl9Cj4KPiAgCXJldCA9IHBjaV9lcGNfbWVtX2luaXQoZXBjLCBlcC0+
cGh5c19iYXNlLCBlcC0+YWRkcl9zaXplLAo+ICAJCQkgICAgICAgZXAtPnBhZ2Vfc2l6ZSk7Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5o
IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmgKPiBpbmRleCAw
MDRiNDMzZjE3MTM1Li42NTQ2ZGMzYWEyMDc1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmgKPiBAQCAtNDc0LDcgKzQ3NCw3IEBAIHN0cnVjdCBk
d19wY2llX3JwIHsKPiAgfTsKPgo+ICBzdHJ1Y3QgZHdfcGNpZV9lcF9vcHMgewo+IC0Jdm9pZAko
KnByZV9pbml0KShzdHJ1Y3QgZHdfcGNpZV9lcCAqZXApOwo+ICsJaW50CSgqcHJlX2luaXQpKHN0
cnVjdCBkd19wY2llX2VwICplcCk7Cj4gIAlpbnQJKCppbml0KShzdHJ1Y3QgZHdfcGNpZV9lcCAq
ZXApOwo+ICAJaW50CSgqcmFpc2VfaXJxKShzdHJ1Y3QgZHdfcGNpZV9lcCAqZXAsIHU4IGZ1bmNf
bm8sCj4gIAkJCSAgICAgdW5zaWduZWQgaW50IHR5cGUsIHUxNiBpbnRlcnJ1cHRfbnVtKTsKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1yY2FyLWdlbjQuYyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcmNhci1nZW40LmMKPiBpbmRleCA1Zjcy
MTFiOTFlZTViLi5mYmU0NjVhMjkwNjhmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtcmNhci1nZW40LmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXJjYXItZ2VuNC5jCj4gQEAgLTQ4MSw3ICs0ODEsNyBAQCBzdGF0aWMgdm9pZCBy
Y2FyX2dlbjRfcmVtb3ZlX2R3X3BjaWVfcnAoc3RydWN0IHJjYXJfZ2VuNF9wY2llICpyY2FyKQo+
ICB9Cj4KPiAgLyogRW5kcG9pbnQgbW9kZSAqLwo+IC1zdGF0aWMgdm9pZCByY2FyX2dlbjRfcGNp
ZV9lcF9wcmVfaW5pdChzdHJ1Y3QgZHdfcGNpZV9lcCAqZXApCj4gK3N0YXRpYyBpbnQgcmNhcl9n
ZW40X3BjaWVfZXBfcHJlX2luaXQoc3RydWN0IGR3X3BjaWVfZXAgKmVwKQo+ICB7Cj4gIAlzdHJ1
Y3QgZHdfcGNpZSAqZHcgPSB0b19kd19wY2llX2Zyb21fZXAoZXApOwo+ICAJc3RydWN0IHJjYXJf
Z2VuNF9wY2llICpyY2FyID0gdG9fcmNhcl9nZW40X3BjaWUoZHcpOwo+IEBAIC00ODksOSArNDg5
LDExIEBAIHN0YXRpYyB2b2lkIHJjYXJfZ2VuNF9wY2llX2VwX3ByZV9pbml0KHN0cnVjdCBkd19w
Y2llX2VwICplcCkKPgo+ICAJcmV0ID0gcmNhcl9nZW40X3BjaWVfY29tbW9uX2luaXQocmNhcik7
Cj4gIAlpZiAocmV0KQo+IC0JCXJldHVybjsKPiArCQlyZXR1cm4gcmV0Owo+Cj4gIAl3cml0ZWwo
UENJRURNQUlOVFNUU0VOX0lOSVQsIHJjYXItPmJhc2UgKyBQQ0lFRE1BSU5UU1RTRU4pOwo+ICsK
PiArCXJldHVybiAwOwo+ICB9Cj4KPiAgc3RhdGljIHZvaWQgcmNhcl9nZW40X3BjaWVfZXBfZGVp
bml0KHN0cnVjdCByY2FyX2dlbjRfcGNpZSAqcmNhcikKPiAtLQo+IDIuNTMuMAo+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
