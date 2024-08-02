Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 645F3C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:In-Reply-To:
	Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ttVdUYyT+6ea5mGoEv1eV2+WjpYox6Uor2uQUkhYDm4=; b=QsWGI4XcGIZ7D1ONppU7Qvaxby
	sA05EzzuOIm1eBgnJCg5sX3hqqQsXEHIMQi+hJUrJ9BenmxwHJI1RAnZ05brybGqz/v6gfTUKelQ6
	nmNkqkw80++ToG1zvf9U1KMVwcJ7rVY6B/9Pcihr7suBu+TEWZp0dABF6KwqGRxtCquGhjCVkVlRL
	ucmFPtZ0MFATNQMqUzti7mQ6AUqoBrq9+lUn7Um8NKwVWs8QhHwVIGox7/FLnyZXRPmRISQ/NFgLN
	7b5XlvHh2gsfrSPenm4qpRa5xFSSOxzrzGEUxmnt/QRDU8g5sp9cV2zmYtiLYnuGcB51i/+RhMFPK
	z5W1r/Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZsnF-000000090Z3-0wTZ;
	Fri, 02 Aug 2024 13:58:05 +0000
Received: from mx-01.divo.sbone.de ([2003:a:140a:2200:6:594:fffe:19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZsmi-000000090Uf-2vkN;
	Fri, 02 Aug 2024 13:57:35 +0000
Received: from mail.sbone.de (mail.sbone.de [IPv6:fde9:577b:c1a9:4902:0:7404:2:1025])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mx-01.divo.sbone.de (Postfix) with ESMTPS id 65DCDA64808;
	Fri, 02 Aug 2024 13:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zabbadoz.net;
	s=20240622; t=1722607048;
	bh=5/XgeH9emBTwZkd45Z8QA3mktVHCHuE+a9qlMXeEXBU=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=EUHccVw+gbRvI7Eo3mXMj2CB1z2h70vg0e87xOmxqyzcvYMkTG4nF4TzIQqBX2+hW
	 mJxwoj6nwr8/W4p1FMTDek3E9pPKr7sdex1jVBN5Z6FBneOUTIXkjffqAj5H1kB3PX
	 N3wFIxBqltfWfxD5WVLOW/en0BphZABfJhoScNbusu0B4nOQGbAcl1JNdXMubItRVY
	 s81d8q6VA51mtbm9zBI9TxPI5dm3zJy8XiypUucCDIa05ZA5b/G6e6kE8Hb3CMIfZm
	 Gca1V6ppNuqO10j96SVjkn5dwmH86F5WzB6n6BlmUpXo74vgKegnXNZCZrVTS0rzhT
	 NXv/9aupkZVFKv/pcgV5OfE8QG6J1y1p4z5jJIIV76E8v6B/6eNDzy0WJ0qOxC+nKW
	 69WLIOnf/RtStqK2SSIl5LmcgwZURR0I+C6jVR6IzdB+Jk4tRwohkXSzK2r/8COQ7N
	 b7TIv5ZOOy23SwiRmQnDkSonhKFMPP7ACI4YhZ0KO/Kb4ZLK28tk39CQpjJJjTVWuj
	 M3+pzIk0Dil4LyJnqrbM+WIKEBUjqsaHoG4caW8ZHP1jA8M4Ndi2Uv0/O702gQC0DK
	 TMNydQrZkGyxCWjQRadOsWoHKaLy8GbtbjY0HEY5YrTg84YWAM53U1K5Q72Ak5NtYm
	 zKlrvHUgggJF6GzDPx7GbEP8=
Received: from content-filter.t4-02.sbone.de (content-filter.t4-02.sbone.de [IPv6:fde9:577b:c1a9:4902:0:7404:2:2742])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.sbone.de (Postfix) with ESMTPS id 8AFBA2D029D8;
	Fri,  2 Aug 2024 13:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at sbone.de
Received: from mail.sbone.de ([IPv6:fde9:577b:c1a9:4902:0:7404:2:1025])
	by content-filter.t4-02.sbone.de (content-filter.t4-02.sbone.de [IPv6:fde9:577b:c1a9:4902:0:7404:2:2742]) (amavisd-new, port 10024)
	with ESMTP id xhqxyI7DanWY; Fri,  2 Aug 2024 13:57:28 +0000 (UTC)
Received: from strong-iwl0.sbone.de (strong-iwl0.sbone.de [IPv6:fde9:577b:c1a9:4902:b66b:fcff:fef3:e3d2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.sbone.de (Postfix) with ESMTPSA id D13072D029D2;
	Fri,  2 Aug 2024 13:57:27 +0000 (UTC)
Date: Fri, 2 Aug 2024 13:57:26 +0000 (UTC)
From: "Bjoern A. Zeeb" <bzeeb-lists@lists.zabbadoz.net>
To: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
    devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 0/2 RESEND] Add DTS for NanoPi R2S Plus
In-Reply-To: =?UTF-8?Q?=3C20240802100447=2EGB18509=40=D0=B2=D0=B5=D1=82=D0=B5=D1=80?=
 =?UTF-8?Q?=D0=B0=D0=BD=2Esu=3E?=
Message-ID: <4q216op8-0p0r-n053-383o-3rpqq8s37p4p@yvfgf.mnoonqbm.arg>
References: =?UTF-8?Q?=3C22bbec28-41c1-4f36-b776-6e091bf118d9=40kernel=2Eorg=3E_=3C?=
 =?UTF-8?Q?20240801175736=2E16591-1-jin=40mediatomb=2Ecc=3E_=3C756p9487-?=
 =?UTF-8?Q?56pr-88p2-6o79-7oron3q8462n=40yvfgf=2Emnoonqbm=2Earg=3E_=3C20?=
 =?UTF-8?Q?240802100447=2EGB18509=40=D0=B2=D0=B5=D1=82=D0=B5=D1=80=D0=B0?=
 =?UTF-8?Q?=D0=BD=2Esu=3E?=
X-OpenPGP-Key-Id: 0x14003F198FEFA3E77207EE8D2B58B8F83CCF1842
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_065732_921489_B3EED0E3 
X-CRM114-Status: GOOD (  19.55  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 2 Aug 2024, Sergey 'Jin' Bostandzhyan wrote:

> Hi,
>
> On Fri, Aug 02, 2024 at 09:46:40AM +0000, Bjoern A. Zeeb wrote:
>>> I noticed, that a DTS for the R2S Plus is not yet available, while the
>>> R2S is already there. The only difference is, that the Plus version has an
>>> eMMC, so we can reuse the R2S definitions and only add an eMMC block, which
>>> I copied from the DTS in the friendlyarm/uboot-rockchip repo.
>>
>> The original has a
>> 	// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>
>> please don't lose the OR MIT as other projects outside Linux do use the
>> same dts files;  and the original r2s file also preserved it.
>
> Uhm... I am confused now, I copy-pasted the emmc block from this file:
> https://github.com/friendlyarm/uboot-rockchip/blob/nanopi4-v2017.09/arch/arm/dts/rk3328-nanopi-r2.dts#L7
>
> The header does not have the "OR MIT" in there, it's just
> "SPDX-License-Identifier:     GPL-2.0+" which is what I also copied
> over, together with the (c) part.
>
> The source which I was using is described in the commit message:
>
> The eMMC configuration for the DTS has been extracted and copied from
> rk3328-nanopi-r2.dts, v2017.09 branch from the friendlyarm/uboot-rockchip
> repository.
>
> Maybe you looked at a different branch? Shall I still add the "OR
> MIT" or leave it as in the original file which I copied it from?

That explains also why there's no sdmmc_ext/sdio bits...

See here for more:
https://github.com/friendlyarm/kernel-rockchip/blob/nanopi-r2-v6.1.y/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2-rev24.dts

My current believe is that rockchip/rk3328.dtsi needs the additional
 	sdmmc_ext: mmc@ff5f0000

block and the vendor setting for rk3328-nanopi-r2s-plus.dts
needs like:
        aliases {
                mmc0 = &sdmmc;
                mmc1 = &sdmmcext;
                mmc2 = &emmc;
        };

and also need

+&emmc {
+&sdmmc {
+&sdmmc_ext {
+&sdmmc0ext_clk {
+&sdmmc0ext_cmd {
+&sdmmc0ext_bus4 {
+&sdio_pwrseq {

but I don't do Linux a lot so I don't know the current state of art for
6.11 for each of the values there (I assume some need tweaking and
cleanup).

/bz

-- 
Bjoern A. Zeeb                                                     r15:7

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
