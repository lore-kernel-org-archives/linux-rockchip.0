Return-Path: <SRS0=D5mo=PM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FADC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Oct 2021 21:18:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2042160E0C
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Oct 2021 21:18:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2042160E0C
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=svmhdvn.name
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NMD1Hd+LOlZ3aKyPGJm9X3/Jy8hZsLbOfVQBQDfoik=; b=a7LPilraP23dPi
	2vh/FEh24NnbEj5RH2dyq0h7y+Bs8mQwEW5/aahTf1LbSCc77JcVy81Z49m810/H1phfC9w8pNQwb
	kY/IVQIAL6X71Eotz5orW8RzNAdYISV7e26aQyjyFNrI+A/2dFYO1kV5BJQPjRrCARFfedvmM5AKV
	6t6GgydyCmvd8Z8lrcvyLqijV8SxNv+vWzRfU1lQZhNp4gPy9ws9K/hitnU6no2vSnd+sPDLNH4ji
	S7DITFRulhfppT5WqTBM78aEoc/hGapdUeE5yUicc2Yxh796wpczv1x6AHuUmOk2SbwSjNA3O9ZCr
	/c6VzgtAUk8GYv9F3ymQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mekse-00Ecor-SL; Sun, 24 Oct 2021 21:18:12 +0000
Received: from out10.migadu.com ([46.105.121.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meksR-00Ecnb-UM; Sun, 24 Oct 2021 21:18:01 +0000
Date: Sun, 24 Oct 2021 17:18:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svmhdvn.name;
 s=key1; t=1635110273;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=I2srHi4l+H7WQZ20ytbQbEmN/fUPwHrv/T99xatcrc8=;
 b=oGg/e+7NARwmp+9bAIj/kFpilrzhd/lH2Pc9AhD56Uva/Oo77Yx9/5fR3AWu7+nzT7rm6K
 ElqfCXl7dcsYQ51E5Zx03TCHmYIsAP7L8Tw7FNrROCPrK3OjaLAiAH0o0I00zwTeUYxE3N
 Uaa7doxGpM2LpkE+V/8nY7ZznQ3ltQA=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Siva Mahadevan <me@svmhdvn.name>
To: Jian-Hong Pan <jhp@endlessos.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Soeren Moch <smoch@web.de>,
 Tobias Schramm <t.schramm@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Hugh Cole-Baker <sigmaris@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux@endlessm.com
Subject: Re: [PATCH] arm64: dts: rockchip: disable USB type-c DisplayPort
Message-ID: <YXXNsdVTo8pVfs4/@think.localdomain>
References: <20200924063042.41545-1-jhp@endlessos.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924063042.41545-1-jhp@endlessos.org>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: mbsync-msmtp@svmhdvn.name
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211024_141800_167441_31C645DD 
X-CRM114-Status: GOOD (  20.95  )
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

Jian-Hong Pan wrote:
> The cdn-dp sub driver probes the device failed on PINEBOOK Pro.
> 
> kernel: cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
> kernel: cdn-dp: probe of fec00000.dp failed with error -22
> 
> Then, the device halts all of the DRM related device jobs. For example,
> the operations: vop_component_ops, vop_component_ops and
> rockchip_dp_component_ops cannot be bound to corresponding devices. So,
> Xorg cannot find the correct DRM device.
> 
> The USB type-C DisplayPort does not work for now. So, disable the
> DisplayPort node until the type-C phy work has been done.
> 
> Link: https://patchwork.kernel.org/patch/11794141/#23639877
> Signed-off-by: Jian-Hong Pan <jhp@endlessos.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index 06d48338c836..d624c595c533 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -380,7 +380,7 @@ mains_charger: dc-charger {
>  };
>  
>  &cdn_dp {
> -	status = "okay";
> +	status = "disabled";
>  };
>  
>  &cpu_b0 {
> -- 
> 2.28.0

I saw a similar patch posted at https://lkml.org/lkml/2021/7/15/752. I
was wondering if one of these patches will be submitted to mainline, or
what the status on this patch is. I can confirm that this does solve
the issue on my Pinebook Pro. Will this go forward?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
