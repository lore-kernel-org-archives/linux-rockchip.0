Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E2E4CCFA05
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 11:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Z5dizlUU5L1bE0MJoZi8J4wgnIXcli6AEL6UaaSkec=; b=UMN6tuyWbSO6vw
	vVNac3qMz5uFiYLGXs2pP4azjV8l5nonNDWD/1QL3iHcCsedDMrh7at3BfyGZxTJq0NhCO8P/f6J7
	NPrTCZqFUcYpdnlIcGdDdvBxtyq8VcHbbE34asNMCAQ/dYWHs0WWzIBtrskelIWzrH9FfRIt3IS8e
	SP4eUiPEhdwl++YCwQ5hojXVUd0mhevE7S50VCqf4xZ15kyuyryD3vfS0hREn+e73eSa5nxQiwaml
	eDnXjf+smaKJQ+oRWsUQ+4C1sqcv9hLYjqL/TkA4Urfz2+uMUcdaQs+PhxQf7WCCRQoa6xchNtUri
	jF2c9uHRdhZJfxN+yk+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL67-0000000HFrz-1Gwq;
	Fri, 07 Nov 2025 11:57:43 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL65-0000000HFrG-3NcJ
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 11:57:42 +0000
Received: by mail-pg1-x544.google.com with SMTP id 41be03b00d2f7-b98983baeacso320776a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Nov 2025 03:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762516661; x=1763121461; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=monGLLl72k03rW+XBHxv2n4ze7FfAMEbwcdE5Jp88/k=;
        b=fAFg10z0hOLOrMMY8O4TkZkMCQlTSHS6BKsWF1tBsIhBC+Lvt2E5q3+whzWYGJeyen
         70HsWl4FMNBvp+Q4zbR841clICZnVz8BpYNPhAWwxUoaaGMzULuT0BTPiHcb1sBZ/bQ/
         fKmI1ewwFFYTyXuAEEzuF93Ek1gMV0huxLJyE6Fa25ShP5W8ksUqXSBnu+twW6Glfa6h
         /KCBqRH3wg8FZfsGO4F995HrE+x1V706+87Qe8PS5bO/vWmiu9OlB4rUfwR2a9RJAk2S
         wSxGmhGjHiSPJpWFRnx7/3Rwk4dLygbIyY7PButtewT1FkImxjADiCOAcdXaH2gEk8D2
         NrRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762516661; x=1763121461;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=monGLLl72k03rW+XBHxv2n4ze7FfAMEbwcdE5Jp88/k=;
        b=E5Jk9eGzZFU1ey2+q4tSe0DTIhGKcJcKRdqg7fMqgsx2Y5nUR9u4joXw78LiWqhxCU
         8EIxhgi77HXgFAH4JjYfzrbVRDrmIzd46pLYvrbX/uKfTJknAibV4EZEvDoCxmHCUeLs
         mwbol7S5ylUGNu1Z9faM3u3YpmOL9t8ctjSB/+tBFmwG3h65dlKSR9sU4pvsfBayPdEF
         4cQrkfItJdfes7jWogMeV0aJF2yMzcIxmSWQu4foivfskWcg8xsPExg8DPQ85LDMUN08
         HTiV+71BcXuR966kEGq6RXY8hZUcDbjOCoWup03u85CmeYgkYLX8vG3dkqIrgScUtK0Q
         9mNg==
X-Forwarded-Encrypted: i=1; AJvYcCWhB+ZNYjkM4b5kLo28fH7k6uhpG+JdlSfH7eCTGrUYA6eaHm1HWBjSLv+Z0poc0HQRRxKWDOeMXQ0IO8cxJg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6QHNBIyzAxVs8cWPGnMk6JB6HRfzRUH9NWTBtF8n9fTtjgxjG
	BRjm01MMmdYzr94OwwjDKqBsZqOITBUpDvhXOX13aKW/MZtbEtedYNMz
X-Gm-Gg: ASbGncvp1IsktM0EcxASWP5vs4jUzmWUEgIc5ZW1AjwaPRlwNvLTqU/ThUQUPBi8wmS
	ucORzjO3gzRsFwA2gVgWH5kJF2VH8H/uSLpCRPf5WxqAWBRcUf1SOmJkVqDZI7z5pwZBk65r5T0
	XYJeAFg7i2fSCFm+QTeHO+F7e00voIGP7UNyjZcXFUH3Y8BoZyYaiNUgFjxYkxwA2J62IIbp0SD
	q/I1HlDN0jPjxmeOHSctHawC661s/dodmBsnK0er03gMIwv4vWwlW5W9jawIpbduB7loi10M4aY
	zBmZ/B0jbrsPwavTGzhpv2PyIpFYWDlGnJ//N1NHuBrWdB+cgz367fB3pTOJcmfjp+ST1+slRO8
	IySvim6lAIxOQUArmoULPLCKp81YUKQ+WzeUVpH8bVv6Qsiuatdiz3IEdk1z+xpbsZ0Ph1MyIJ/
	2cZoXhyT5OtjYFge8Oa6M9t9YNlmj0pfnq
X-Google-Smtp-Source: AGHT+IG2JNYUVu7xIzD0M5+jz0kLb7Hm7r7y9xBYeK5/FwHh5dDyBrOGwBvYmi7VcMJsmKn3/mqWGw==
X-Received: by 2002:a17:903:2284:b0:297:d6c2:d06 with SMTP id d9443c01a7336-297d6c20d85mr8354715ad.20.1762516660819;
        Fri, 07 Nov 2025 03:57:40 -0800 (PST)
Received: from ehlo.thunderbird.net ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651c9c2a2sm58337585ad.93.2025.11.07.03.57.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 03:57:40 -0800 (PST)
Date: Fri, 07 Nov 2025 19:36:58 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Chukun Pan <amadeus@jmu.edu.cn>
CC: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v5_3/3=5D_arm64=3A_dts=3A_rockchip=3A?=
 =?US-ASCII?Q?_Add_devicetree_for_the_9Tripod_X3568_v4?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20251107110020.226562-1-amadeus@jmu.edu.cn>
References: <20251103171702.1518730-4-coiaprant@gmail.com> <20251107110020.226562-1-amadeus@jmu.edu.cn>
Message-ID: <6F2972A5-047F-48A5-B409-C3F3E71643AD@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_035741_873048_692C3DC6 
X-CRM114-Status: GOOD (  14.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On November 7, 2025 7:00:20 PM GMT+08:00, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>Hi,
>
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4-camera-demo.dtso
>> @@ -0,0 +1,84 @@
>> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
>> +
>> +// This is a sample reference, due to lack of hardware can not be tested, at your own risk
>
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4-video-demo.dtso
>> @@ -0,0 +1,154 @@
>> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
>> +
>> +// This is a sample reference, due to lack of hardware can not be tested, at your own risk
>
>Why are these demo DT Overlays needed? Are these optional accessories?
>These untested DT Overlays should be removed.
>
>> +	vcc3v3_pcie: regulator-vcc3v3-pcie {
>> +		compatible = "regulator-gpio";
>
>This should use regulator-fixed.
>
>> +		regulator-name = "vcc3v3_pcie";
>> +		regulator-min-microvolt = <100000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vcc3v3_pcie_en_pin>;
>
>Is this the name from the schematic?
>
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&gmac0_miim
>> +			&gmac0_tx_bus2
>> +			&gmac0_rx_bus2
>> +			&gmac0_rgmii_clk
>> +			&gmac0_rgmii_bus
>> +			&gmac0_clkinout>;
>
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&gmac1m1_miim
>> +			&gmac1m1_tx_bus2
>> +			&gmac1m1_rx_bus2
>> +			&gmac1m1_rgmii_clk
>> +			&gmac1m1_rgmii_bus
>> +			&gmac1m1_clkinout>;
>
>Align Indentation.
>
>> +		codec {
>> +			rockchip,mic-in-differential;
>> +		};
>
>Is it confirmed to be differential signaling?
>
>> +	pmic {
>> +		pmic_int: pmic_int {
>> +			rockchip,pins =
>> +				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
>
>No line break is needed here.
>
>> +/* Required remotectl for IR receiver */
>> +&pwm7 {
>> +	status = "disabled";
>> +};
>
>This should be replaced with gpio-ir-receiver.
>
>> +&sdmmc2 {
>> +	bus-width = <4>;
>> +	disable-wp;
>
>The disable-wp property does not apply to SDIO cards.
>
>> +	sd-uhs-sdr12;
>> +	sd-uhs-sdr25;
>> +	sd-uhs-sdr50;
>> +	sd-uhs-sdr104;
>
>Just declare the highest supported speed.

PCIe and MIC picked from OEM source codes.

PMIC picked from RK3568-EVB.

Since parts of the OEM source code are not available in mainline, I refer to other boards (e.g. RK3568-EVB or RK3568-ROC-PC), but I don't have a camera or screen to test, so I mark them as demo.

Do I need to release a new set of patches?


Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
