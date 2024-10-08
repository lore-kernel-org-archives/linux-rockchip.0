Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 901A7CEFC38
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 18:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IA3ML/4jimUlU7C30UaMBjMJBIW3wTKbqWBiH3ltqeA=; b=JQp79ug7cf+4Pr
	7QOsTDQpu7kOqxrfEdahukO65JRZFgfityEDE7RhDJIWyg9xG3sg30+FddOC6QzwkR/EDAdhJQpbW
	dq5KmM3f5ptzhJgiTPRFw+mnfUxDSTxXy6W2uOCjcYRL6XnenrCguusR7b471Uko57j08ZE6FH/LR
	Q+3nSVAhtccNc5w/nZhCzjVQ7CAanSsd3WcfCBZxF8A3cb5Qg621BopM27R5gX6Sz0o9Vm7V/0VXM
	j/rJeLZpEjJyA5MCcqzcox2XxyeSqF3WLc0T+1iEdwcRfw3RObtr8CydUJDfbF0g0VQdHwOCw++7w
	rmbKyZOKI8f6vuAtJOeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syEdx-00000006kUz-3QnG;
	Tue, 08 Oct 2024 18:09:09 +0000
Received: from 008.lax.mailroute.net ([199.89.1.11])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syEdu-00000006kUg-43wW
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 18:09:08 +0000
Received: from localhost (localhost [127.0.0.1])
	by 008.lax.mailroute.net (Postfix) with ESMTP id 4XNPD15zS6z6ClY9T;
	Tue,  8 Oct 2024 18:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1728410940; x=1731002941; bh=2lkWYtnPI63MLIiTQSgMVVz/
	sT/tHkUhdRp9WuQ8oFo=; b=a4DHs6Hajgb0x18wO1l3wug+QvsJz8yJJu8jz4lM
	tfMzv7Pm9wuqW/dfCm03oHGTMzvavdfpmYUDmF4kG3o0wzZRX8cFlxg+PUGwem9J
	JYcRe4HlaeGBGCFzPqGlTrsCVB8ZNW9HXqy2ZSEIoazCs0Y8YezIQsz9OSQcL7+u
	lZiv9bDxLIUQEd0OWioDxNFTvKAl4yeuHqLQMIAjvX2+fqjmEdAWF9Vc3SB22dQH
	fwZFUJIiDXRBXxbn7h9EuJn9oD0yB1dLLRRE7H+lmRY1EpjAsqDy6u9u3lmt+PVg
	Oawmj7o/gGmNsosPrvDO1dCmh8zqyrh9VA/I51OI9cKwkQ==
X-Virus-Scanned: by MailRoute
Received: from 008.lax.mailroute.net ([127.0.0.1])
 by localhost (008.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id cSgM-UPnMHOQ; Tue,  8 Oct 2024 18:09:00 +0000 (UTC)
Received: from [100.66.154.22] (unknown [104.135.204.82])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 008.lax.mailroute.net (Postfix) with ESMTPSA id 4XNPCr2v1Xz6ClY9M;
	Tue,  8 Oct 2024 18:08:55 +0000 (UTC)
Message-ID: <683f30d7-ba8c-4072-b4a9-70383052bb49@acm.org>
Date: Tue, 8 Oct 2024 11:08:54 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] scsi: ufs: core: Add
 UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-2-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <1728368130-37213-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_110907_063087_F5315648 
X-CRM114-Status: UNSURE (   9.93  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 10/7/24 11:15 PM, Shawn Lin wrote:
> +	/*
> +	 * Do dme_reset and dme_enable if a UFS host controller need
> +	 * this procedure to actually finish HCE.
> +	 */

need -> needs

> +
> +	/*
> +	 * This quirks needs to be enabled if host controller need to
> +	 * do dme_reset and dme_enable after hce.
> +	 */

quirks -> quirk

Thanks,

Bart.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
