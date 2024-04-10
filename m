Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECADDCD1297
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 04:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuF6C2zCH4KHZz09SdaIlIXq4uachh0vnXW+sr+D3AI=; b=14VL/CRdkREcPm
	lvtI06ebN9qwYfSw3mMlx5C3WzdLp8GS+Fg7KgnW+Vt6HZHc2BeUbVlUiznpW9Md1c4ay5xepUOk5
	ez8JxtbcQmciFESIBpcKC+bHN/L/HDRe7lpaeRSZFI2XI7IaUV7AuDnEpoqqzeBO0+4RhIw8ce2Q+
	2x/gUwhhH6WwQ6yPiuoKchmdxUuQAA4f0hb/P/LpjFNBs/WthDKrnZjDY4u0nh2zzjX3TWaW4zrUH
	yw222NeMiyYVA8W820cx/2MHBzjNG3SUQU4udOtuUTJlb0iSe7JzV1+HqohR0+D3lCsxudCG4dirl
	NrhI8Dw+I4u4h/29PAGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruPd5-000000051UM-0Dm0;
	Wed, 10 Apr 2024 04:32:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruPd1-000000051S3-132O;
	Wed, 10 Apr 2024 04:32:08 +0000
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruPcr-0007Sx-9l; Wed, 10 Apr 2024 06:31:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 liujianfeng1994@gmail.com, robh@kernel.org, sfr@canb.auug.org.au
Subject: Re: [PATCH] arm64: dts: rockchip: remove startup-delay-us from
 vcc3v3_pcie2x1l0 on rock-5b
Date: Wed, 10 Apr 2024 06:31:48 +0200
Message-ID: <3879529.iIbC2pHGDl@phil>
In-Reply-To: <20240403075916.1025550-1-liujianfeng1994@gmail.com>
References: <2535182.Sgy9Pd6rRy@diego>
 <20240403075916.1025550-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_213207_308783_AE2B471D 
X-CRM114-Status: GOOD (  19.20  )
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

Am Mittwoch, 3. April 2024, 09:59:16 CEST schrieb Jianfeng Liu:
> Hi Heiko,
> =

> Tue, 02 Apr 2024 12:39:17 +0200, Heiko St=FCbner wrote:
> >Does the pcie driver enable the regulator too late somehow?
> The pcie driver will enable the regulator imediately when it is probed.
> I added log at when driver is probed and when regulator is enabled.
> Here is the log with "startup-delay-us =3D <50000>":
> ```
> [    1.572991] rockchip-dw-pcie a40800000.pcie: rockchip_pcie_probe start
> [    1.573697] rockchip-dw-pcie a40800000.pcie: going to enable vpcie3v3 =
regulator
> [    1.575194] rockchip-dw-pcie a40800000.pcie: enable vpcie3v3 regulator=
 done
> ```
> =

> And here is the log without "startup-delay-us":
> ```
> [    1.518490] rockchip-dw-pcie a40800000.pcie: rockchip_pcie_probe start
> [    1.518603] rockchip-dw-pcie a40800000.pcie: going to enable vpcie3v3 =
regulator
> [    1.518610] rockchip-dw-pcie a40800000.pcie: enable vpcie3v3 regulator=
 done
> ```
> =

> We can see startup-delay-us will delay the driver probe.
> =

> I also take a look at rockchip's SDK kernel, their pci driver is probed
> very late:
> ```
> [    3.398682] dw-pcie fe170000.pcie: invalid resource
> [    3.398686] dw-pcie fe170000.pcie: Failed to initialize host
> [    3.398688] dw-pcie: probe of fe170000.pcie failed with error -22
> [    3.399396] rk-pcie fe170000.pcie: invalid prsnt-gpios property in node
> [    3.399410] rk-pcie fe170000.pcie: Looking up vpcie3v3-supply from dev=
ice tree
> [    3.405195] rk-pcie fe170000.pcie: host bridge /pcie@fe170000 ranges:
> [    3.405253] rk-pcie fe170000.pcie:       IO 0x00f2100000..0x00f21fffff=
 -> 0x00f2100000
> [    3.405283] rk-pcie fe170000.pcie:      MEM 0x00f2200000..0x00f2ffffff=
 -> 0x00f2200000
> [    3.405310] rk-pcie fe170000.pcie:      MEM 0x0980000000..0x09bfffffff=
 -> 0x0980000000
> [    3.405372] rk-pcie fe170000.pcie: iATU unroll: enabled
> [    3.405381] rk-pcie fe170000.pcie: iATU regions: 8 ob, 8 ib, align 64K=
, limit 8G
> [    3.666917] rk-pcie fe170000.pcie: PCIe Link up, LTSSM is 0x30011
> [    3.666932] rk-pcie fe170000.pcie: PCIe Gen.1 x1 link up
> [    3.667139] rk-pcie fe170000.pcie: PCI host bridge to bus 0002:20
> ```
> =

> And it is reported that startup-delay-us is necessary in rockchip's SDK
> kernel. But in mainline kernel it is different.

that's not directly what I meant.

I.e. if the behaviour changes with arbitary delay changes, it points
very much to some sort of timing issue in the pcie driver itself.

That's why I asked about the regulator turning on, because if the enable
call returns 50ms earlier or later should never influence the behaviour
of the driver.

For example other threads could also just hinder the kernel from
continuing the pcie probe even after the regulator is on - again
leading to undefined behaviour, as you seem to be experiencing as
described in your mail from yesterday.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
