Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A3CBC021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 12:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2toYxGX5ZUF3F6+1dBkp+576KuL0LvqHs50xLbvwbaA=; b=Tcg7bqtZeIzgUS
	XbMtrrJxLUbyfFz3Teb1vumctloCBmt5u6VSTY82d4b7CYDHfxGJoY1DLh6pZHYRWQuNenA6gpyFH
	M53mwd4ccY3TQUr2EszPoESdnkz0koylAqlJbpUp1FAEQRV1RkkmgZaSsa6AkVNDOkORGsQEhAHnU
	+A/Es7FVzFzQcYRZRjfEXZi9gYnFXSfJg7wo4/Fejp6M5o1NySELNJawedut+Qa+WE5Q76qLpSl4Z
	R0bYixTW01UqZCn+9UZvhuykMvZ0RLx1bhNduynnUFMc4b4jQwbMRFsRwdk3CWrngxbCofnN9TENx
	nMRcbWWfGsQ9c7W18o7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpREJ-00000004bp1-1xDe;
	Tue, 04 Mar 2025 12:18:35 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpRBd-00000004bHr-01yL;
	Tue, 04 Mar 2025 12:15:50 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c02:1dd0:e9f1:cb9a:640c:3ba3])
	by smtp.qiye.163.com (Hmail) with ESMTP id ce62fafc;
	Tue, 4 Mar 2025 20:15:38 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: ziyao@disroot.org
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: Enable SD-card interface on Radxa E20C
Date: Tue,  4 Mar 2025 20:10:36 +0800
Message-Id: <20250304121036.1453284-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250301104835.36439-1-ziyao@disroot.org>
References: <20250301104835.36439-1-ziyao@disroot.org>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGkpJVh5CThgfT0lMTR4aSVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtJQUofH0tBHkIdSkEYGUIaQU1PSxhBSBkaSFlXWRYaDx
	IVHRRZQVlPS0hVSktISk5MTlVKS0tVSkJLS1kG
X-HM-Tid: 0a95611544ad03a2kunmce62fafc
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OE06KDo6SDIOI0IQAzEUDwxK
	HEoKFCpVSlVKTE9KS0JLTkhCT05MVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0lBSh8fS0EeQh1KQRgZQhpBTU9LGEFIGRpIWVdZCAFZQUxLSjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_041549_204876_E4C1E1F9 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
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
Cc: detlev.casanova@collabora.com, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, frank.wang@rock-chips.com, jonas@kwiboo.se, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Chukun Pan <amadeus@jmu.edu.cn>, krzk+dt@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

> +	aliases {
> +		mmc0 = &sdmmc;

s/mmc0/mmc1

> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;

I think for sdcard, only cap-sd-highspeed
is needed, not cap-mmc-highspeed?

> +	disable-wp;

Missing pinctrl.

> +	rockchip,default-sample-phase = <90>;

It seems that all rk3528 devices need to set this
default phase, so maybe this can be placed in dtsi?

> +	sd-uhs-sdr104;

The rk3528 devices uses gpio to switch IO voltage, maybe
more modes should be added here like vendor kernel?
And these devices use 3.3V IO voltage by default.

	sd-uhs-sdr12;
	sd-uhs-sdr25;
	sd-uhs-sdr50;
	sd-uhs-sdr104;

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
