Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 356C5C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 19:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFFLFR7FojltL8HWQU3dRtDyhjZoCNlCzO2H6Moyi+U=; b=U/qnKZxqNcZtEZ
	uahE4L7awgUVQyTSZP/AatNHsuivrRWOAShNYIQgMwa+h3dFVnvwa6jkwC7LZrYyccRsbKMP/YJ/h
	S6DvqBR6w8AfS1d7P7Kbs4ES1wzogbXXffKEKUNhKZwAVv6hZIeycY+PDAJeTy2JxRsOwnxLWxEe1
	wFmeZJdjh2iPtbD35BujO2BIq9j49izlV8IFQ3EH6I8gaQ5TGqGn3e5lMyZQHJT66GzcRFLFGkhVr
	2FohVp4Ta9Isdzg2n9p8aX0a7U1GVFIEaIb66SXYh8DWMtsL6R1gQWhWkNmS99oqYHN9W5Qq7Fl/2
	T30dz+9DtyFGyIgFhM/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scUx4-0000000CILo-17bI;
	Fri, 09 Aug 2024 19:07:02 +0000
Received: from 009.lax.mailroute.net ([199.89.1.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scUwX-0000000CICY-1bzw
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Aug 2024 19:06:32 +0000
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4WgYKw2KlczlgTGW;
	Fri,  9 Aug 2024 19:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1723230383; x=1725822384; bh=DW9duP/WSzGKgw6N8JbyhvDM
	ENJtltoq9LzdIzH07QI=; b=3wXsC+yvI86+JvuSDvFMn01MUZMGzMz2kM9Uk5Eh
	RCKjdsUJIDoh75MzaP+PnO72nSGuFBR/O2RaYlKMy9ZFQmPqH+GDQliUKFyLSCCq
	7xK11ehoXOSd4+d1T/hUaBGrAMYbbem0X55iR40Gd5MIryd6ux678DoaWO0PCd6D
	848CscKTSWYB+QINptqqSnN8T7mph67+mQRJu+Y4ww0FppF9IX3CgiMgZouLlmZe
	pVa13dekFI6+puujw35+mayzi01rk7V4pwQoOHhO+5CGevKkxOBNG5UUyVQYNtE8
	x4k7rjwOYh9/Zc7ff2AwnXPd3GB0aSYmcS9DkasBob2uXw==
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id aW_A8ey1jKET; Fri,  9 Aug 2024 19:06:23 +0000 (UTC)
Received: from [100.66.154.22] (unknown [104.135.204.82])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4WgYKl5vvLzlgVnF;
	Fri,  9 Aug 2024 19:06:19 +0000 (UTC)
Message-ID: <203bf2c3-e55d-4b1e-9ef1-a7d73401ce52@acm.org>
Date: Fri, 9 Aug 2024 12:06:18 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] scsi: ufs: rockchip: init support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723089163-28983-4-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <1723089163-28983-4-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_120629_497907_64B0A0A3 
X-CRM114-Status: GOOD (  12.91  )
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

On 8/7/24 8:52 PM, Shawn Lin wrote:
> RK3576 contains a UFS controller, add init support fot it.
					^^^^	     ^^^
                                         initial      for

Again a very short patch description. What is "RK3576"? Please explain.

> +config SCSI_UFS_ROCKCHIP
> +	tristate "Rockchip specific hooks to UFS controller platform driver"

A better description would be: "Rockchip UFS host controller driver"

> +#include "ufshcd-dwc.h"

No, you should not include the ufshcd-dwc.h header file. That is a 
header file for the Designware UFS host controller.

> +	reset_control_assert(host->rst);
> +	udelay(1);
> +	reset_control_deassert(host->rst);

Why udelay() instead of usleep_range()?

> +static int ufs_rockchip_device_reset(struct ufs_hba *hba)
> +{
> +	struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +
> +	if (!host->rst_gpio)
> +		return -EOPNOTSUPP;
> +
> +	gpiod_set_value_cansleep(host->rst_gpio, 0);
> +	udelay(20);
> +
> +	gpiod_set_value_cansleep(host->rst_gpio, 1);
> +	udelay(20);
> +
> +	return 0;
> +}

Same question here: why udelay() instead of usleep_range()?

Thanks,

Bart.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
