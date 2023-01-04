Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1835CC4708E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 18:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t49dxiBZTA23fw7U3jaM/hyMigavPEEHoDNbNzSE9Aw=; b=xFj2narwRXu92ys86gnySoaEhM
	i/DV8LUFQS8GNdpQ6dQdzxOYi6EPDBXlBllnBTZpXS4RDFcJoYxgJWlUmNDAn+RYWuwzy/okQg8gv
	0v9wNLPym9WBbFzi13Eb9bGXCQeK8R8qtcxVbyDECvFlK/B3MP/lghvOkXUMFY7sb13/q2D6vLxpD
	wE7KkSKWbnuhXNBW2lIAaFLoBKPnZHblkv8imFJG1JQQt2hW+DsDSVTpnZ0wSmzP9dbEZkrHAH1l3
	fps2lfcLdBdNcOu4kenxTNfee33tvK+3coHF0TpOCYP8f7WaIJEPCQGKUgqAyrG6HerPmgVDo6zci
	fIYO/gOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDVAA-00Djrd-1q; Thu, 05 Jan 2023 18:40:26 +0000
Received: from s2.dolansoft.org ([212.51.146.245] helo=mx.dolansoft.org)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDDbX-00E5Nq-Q0
	for linux-rockchip@lists.infradead.org; Wed, 04 Jan 2023 23:55:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=brun.one;
	s=s1; h=MIME-Version:References:In-Reply-To:Message-Id:Cc:To:Subject:From:
	Date:From:To:Subject:Date:Message-ID:Reply-To;
	bh=aPXbdbobxNoKByfDJ3ZxcFeOw6DfkiJeOaf88e1iImA=; b=i4Rt8AEFEXeEIuFnMJIAopLD5V
	7cAkYPkNWKoGpHQc1jOTZRje/weAoQHy2kf2qd3ZfG3F2+jcAi1e+lrRg1ByVpmshN7XX1MCAym9k
	pC3Mna33bPbSYk05ADcmnhCWLeQ2OPplC/VrQTE2Htye3RVzCCfqAyMtci+UuQa6j3w8v0+LNRm3o
	3e1oxoyfXZkevgdEFLG3eMPhEsoPjYgDh+6QdbRMrIEiQZSc5n5ENxRYihF6MZHlen54TaYuKbRyf
	kvM4TBtNu8haaamWCyY66tplkROP/d48D9xOFdkwig1ZQmtSA+X87dEsXf44f2nOAH2+s0AgMWXSE
	bq2GF31w==;
Received: from [212.51.153.89] (helo=[192.168.12.54])
	by mx.dolansoft.org with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lorenz@dolansoft.org>)
	id 1pDDbG-00211U-0Q;
	Wed, 04 Jan 2023 23:55:14 +0000
Date: Thu, 05 Jan 2023 00:55:07 +0100
From: Lorenz Brun <lorenz@brun.one>
Subject: Re: [PATCH] arm64: dts: rockchip: fix USB regulator on ROCK64
To: Peter Geis <pgwipeout@gmail.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org
Message-Id: <VRJZNR.A6ZTK7O95IUL@brun.one>
In-Reply-To: <CAMdYzYq4Nev1Vya7Bw9M5x5Fv_QNh0tCjfn4e33T5wkA6iwijQ@mail.gmail.com>
References: <20230104205434.867219-1-lorenz@brun.one>
	<CAMdYzYq4Nev1Vya7Bw9M5x5Fv_QNh0tCjfn4e33T5wkA6iwijQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_155535_403407_2275FFD2 
X-CRM114-Status: GOOD (  20.58  )
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


On Wed, Jan 4 2023 at 18:46:25 -05:00:00, Peter Geis 
<pgwipeout@gmail.com> wrote:
> On Wed, Jan 4, 2023 at 3:55 PM Lorenz Brun <lorenz@brun.one> wrote:
>> 
>>  Currently the ROCK64 device tree specifies two regulators, 
>> vcc_host_5v
>>  and vcc_host1_5v for USB VBUS on the device. Both of those are 
>> however
>>  specified with RK_PA2 as the GPIO enabling them, causing the 
>> following
>>  error when booting:
>> 
>>    rockchip-pinctrl pinctrl: pin gpio0-2 already requested by 
>> vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
>>    rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) status 
>> -22
>>    rockchip-pinctrl pinctrl: could not request pin 2 (gpio0-2) from 
>> group usb20-host-drv  on device rockchip-pinctrl
>>    reg-fixed-voltage vcc-host1-5v-regulator: Error applying setting, 
>> reverse things back
>> 
>>  Looking at the schematic, there are in fact three USB regulators,
>>  vcc_host_5v, vcc_host1_5v and vcc_otg_v5. But the enable signal for 
>> all
>>  three is driven by Q2604 which is in turn driven by GPIO_A2/PA2.
>> 
>>  Since these three regulators are not controllable separately, I 
>> removed
>>  the second one which was causing the error and left a comment 
>> explaining
>>  that this regulator actually controls multiple rails.
>> 
>>  Signed-off-by: Lorenz Brun <lorenz@brun.one>
>>  ---
>>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 14 +++-----------
>>   1 file changed, 3 insertions(+), 11 deletions(-)
>> 
>>  diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>  index f69a38f42d2d..bd82bc80444d 100644
>>  --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>  +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>  @@ -37,6 +37,9 @@ vcc_sd: sdmmc-regulator {
>>                  vin-supply = <&vcc_io>;
>>          };
>> 
>>  +       // vcc_host_5v also controls the vcc_host1_5v and 
>> vcc_otg_5v rails
>>  +       // but there is only one common control signal 
>> (USB20_HOST_DRV) at
>>  +       // GPIO_A2
>>          vcc_host_5v: vcc-host-5v-regulator {
>>                  compatible = "regulator-fixed";
>>                  gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
>>  @@ -48,17 +51,6 @@ vcc_host_5v: vcc-host-5v-regulator {
>>                  vin-supply = <&vcc_sys>;
>>          };
>> 
>>  -       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
>>  -               compatible = "regulator-fixed";
>>  -               gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
>>  -               pinctrl-names = "default";
>>  -               pinctrl-0 = <&usb20_host_drv>;
>>  -               regulator-name = "vcc_host1_5v";
>>  -               regulator-always-on;
>>  -               regulator-boot-on;
>>  -               vin-supply = <&vcc_sys>;
>>  -       };
> 
> Fixed-regulator supports multiple regulators sharing a gpio, the issue
> is you have the pinctrl assigned multiple times which is not
> supported. Simply removing the pinctrl from all but one of the
> regulators will solve this issue.
Sure, I can just remove the pinctrl. Should I do anything about the 
fact that there are three USB switches on that GPIO, but only two of 
them are described as regulators here? Seems a bit inconsistent to me.

> 
>>  -
>>          vcc_sys: vcc-sys {
>>                  compatible = "regulator-fixed";
>>                  regulator-name = "vcc_sys";
>>  --
>>  2.38.1
>> 
>> 
>>  _______________________________________________
>>  Linux-rockchip mailing list
>>  Linux-rockchip@lists.infradead.org
>>  http://lists.infradead.org/mailman/listinfo/linux-rockchip



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
