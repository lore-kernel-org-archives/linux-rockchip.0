Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2848C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 15:07:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3896D60FEE
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 15:07:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3896D60FEE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=web.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lfXkztw/QTSUt5Lknwl+ufem4AHEeMhCzGszAvXoExI=; b=WcFRAB+D4nZpFmI195/iuh4xM
	I6Fu/WupAhUetlwWcl1KuSWTHsBnJ1ZqwWsEpQkYoVioCAZcnMvCnonEPuKpHyCkEOznvld7Jjc5D
	9ZJ4u8AOvodTnWkXdOZu0XINaA7fDmNFaqKmMLhpU/6hpASQicAS/JKF0eL9T9oQOJksQjbQOymfH
	a1yztQejFLCbom8vOEN4zBU+IvoHo3clvYHOa75TGM74heHUOHQMecpF7KPU4YfWx580+MCI73Dei
	d7/idephtxukCvg33Dg3nXkXNUE7db2HHfoJz8HZkc9JeRTM4U+CAHXyc+g6Hn2LqFe1E210MG29Z
	KdPwqXm0g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbPJQ-001oK9-HC; Tue, 27 Apr 2021 15:07:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbPJE-001oJV-PO; Tue, 27 Apr 2021 15:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=2Oah/Ed00cRdMgZAdDg2tKcFpc5rj2DNhFA7YBTsHyc=; b=kKzvlLQCLJJCLfuYtNR5L+r+HV
 xPKBhL6/k8zN1ZDQpZaCf1u8DN4fjEIZ8oTeHInrIqzTKq1jSA1wAQ5ttozyZzz/qoYaNo+tJw7Hq
 +aojIzg3bE9RnzTRWzREHEUJymuah2wqiEqFhjkLBNfsDIbvfSMmoMx5J0ayZTb0fyQhFM7ArC6Kj
 El/1wmD0v/felVzmSMlq1Fm7xgAkzvSLFcoxWsFQdalcI48F+C6cp85/5Fj+NuOCcez7jWpUtbieB
 eDsnSy+iC5yizJ81Em+v9JSS8pllT+M6Und+P8wBzRKlLOxKqbfLqtJ776yGKgmofPt8zxnAzMeqv
 9KOvageA==;
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbPJ7-00GoJE-Jj; Tue, 27 Apr 2021 15:07:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1619536026;
 bh=doh3/trEE0DsfmTiGEXHMxnxBuJLKnYanLPLC42HBxI=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=k68+7oaRyi7q7BsFu/W7qvFrjYC8r1WZ/PJttE8Gati1mGHe7/+7lq2Q7s962nBcI
 JJUvWzUCgH4k72CTT82r23gpspFuxvj/C50pmrlUemDNP3CgD0m5dgZSn4EUgEfPIH
 LO/k3SlpeILQ7/t7mHBAUHy/5K8MZ12nONrYPNfs=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.70.1] ([46.114.143.69]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M0Qkb-1lJBax1Adx-00uZTg; Tue, 27
 Apr 2021 17:07:06 +0200
Subject: Re: [PATCH] arm64: dts: rockchip: include uhs support for rockpro64
To: Christian L?hle <CLoehle@hyperstone.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "heiko@sntech.de"
 <heiko@sntech.de>, "jbx6244@gmail.com" <jbx6244@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <CWXP265MB2680938B222248792AC205F9C4419@CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM>
From: Soeren Moch <smoch@web.de>
Message-ID: <97bcbcde-9ccf-f9cc-ef10-36cbd582825a@web.de>
Date: Tue, 27 Apr 2021 17:07:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CWXP265MB2680938B222248792AC205F9C4419@CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM>
Content-Language: en-GB
X-Provags-ID: V03:K1:62KQFG4fzGHbguzIBmMmapWhtQisqkOd0DpjtJ65/I22axEf/hu
 x8HTWItJEHOCP7awNC7kuE+yhk+Ic8sWChD5h80A4EanyM9h9WtdWGla1/gSK5OtGi4wtxv
 NHkRqg6br0klsC6povz1WTmYW/tYeGTjUVvCJyKm9uGP81YhLS+Sy17MkhTbYkEW6oU1jrz
 NeXyrj7ov7RE1aZZSiSYA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:5osw2TnQfcA=:wZsX1Wy2hvlrmo6dQys7Gm
 XFJX5hAt1pB0erlH2m2BY6+5cJkmtCBEeyIP/1QUTJQ3dhv7cplrypYUDnjeGW5gUbow6Og6Z
 cKFD+MEP3Jh+tTT/VpeoV/hAJBqNZSRzFYU5J1MEi2/4cDNhuWrZ1LGZJttvF+iWS12ni/TTb
 yOgzqYJz8EtWBbNn7Ts1GPvpl4n0ranGv+3X2R169o2hgiJPZsEJGiXy+ollOZN/tkFvnqcnl
 Xj5ZnXj1xxSiGHXR0H3+EjFnWCOaPdi87wTFwlNzE1bf8Gsm3ghRJANp2jW28ViOzG6EVZBqL
 kSDGw17S0B9Q3fL6ckFe5AeQNZVZ4smhvs1Tg9HISgBWQ2C4D70dldFOEtJxPpSBYdRvx7UKF
 3qVklEHuCCFMKpSO5Jh/fxbdJ3iUQ+nEn1taefdI3TqLdALKk27240JugKZIUoaOD4EZCpx7i
 7u5GSgCNW3UleFnaPLAJ65D9rc2ch0zfaIP33bkDg7/qBY3vaNMt03WJXrfc+uVu1fGdOHjIm
 C1hYhdGey6Q+fVPQjTvnAZ+YOfQujZb7eze/3VtBuGCVlVvt/zz2tyUfzrRCqp5B378AUT1N8
 QAlSM0mHKoo8zyuqd1dxJDASGT9Q0RtDjG56iGba7Qvd/xl/LM8Kta18xnCxU/MvEZNBGi2Aq
 r5LAzNDh28zKTxGySn4YIHPiPMu8JJ96ODktBvV2zq2bA7cNIcU+TedCIBgjh2iKTJ5o8DK/Q
 cbttLVw0pWM97CPi0ptPCM6xxPtAunVLoogg+75omBArZPh7MVRptr1AKaApmzfKbCzGm6ZVl
 uRPLYqbVoImjakqqsXyRMV1BUp3zCupJ+JSp7yaTuf0YVaa0z8Kx9pG+TG8U3w6pP6cirHieS
 YKJtq/rWhGCohX88YGfbJqsThLurb2G5OSd+SpLlylXT7G3dxEWYUuc8GKfrP4VcU74HPG7zf
 BNOP7k6fazmZiUhG8jYswsZcthOu7pUVlsXOFTRdWicfuLvh/3BkmAdM4/J7Sau0yUuVY8VYs
 pGPiDBJwcp/DPLdQBaC25v+UV4zqGkQOwiUlClMkSZLYuSxcPNJFspfDh0G6Q+KTy3cVGFV77
 YSqMqVZIy3ys3MmgkKUjmNSeS/CjhGHlfuj0p9K15f1MIScq66QnSyhcAtHLRhrd3LEW57VHX
 rW5Xkpw2y6BAqHSNmEfjIez3h8xprdfFjoRyNS5tjiqDo7mDllP5IIITGGDIH+oLyKT74=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_080726_015495_181D04D8 
X-CRM114-Status: GOOD (  14.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 27.04.21 08:20, Christian L?hle wrote:
> The DesignWare Host Controller has full UHS-I support, so use it.
Enabling this UHS support makes 'reboot' hang when booting the RockPro64
from SD card. It would work when booting from eMMC, or with a modified
ATF which does a power cycle on reboot.

But for general use it is not save to enable UHS support, or did I miss
some recent changes?

Regards,
Soeren
>
> Signed-off-by: Christian Loehle <cloehle@hyperstone.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index 6bff8db7d33e..d22a489ec214 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -722,6 +722,7 @@ &sdmmc {
>  	max-frequency = <150000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
> +	sd-uhs-sdr104;
>  	vmmc-supply = <&vcc3v0_sd>;
>  	vqmmc-supply = <&vcc_sdio>;
>  	status = "okay";


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
