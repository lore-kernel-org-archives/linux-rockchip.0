Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D7B6C02192
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Feb 2025 17:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfxXrYc/6CVqoQY4iXqP5kwR3NYnNt1K0vpiWIs7ohU=; b=34YzEwg07va6aG
	pTP+bdtyixL4Xe+ktiCnhtFUARMeUIAuc4pR62Qga7m0djRpEToeWvjP1XW1jCG4V0MpuYqhd1KHG
	f4TqycZv7cYGL9f7rnTotHADO/9MMQrkcu0dC9aGVge51h+vCRg8j5jjHIWuNVis3k/lCKgztdvKe
	U+gVB14L5Ondy1TG0v65MQVOIefdlCn9uYcgv2ynrksFmhOqnYXfdZOBAyelEiGOBuwI5dZkhFAhy
	ve3b7kQcDUAGoz2Xk3yXBB/3kiRcaPakBf+hBYXykw6JoTuKvaXREJh1aNaMA4zsw2jZEhDzVcOln
	NwyWAA7G6fbFef8G/zYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfjbE-00000004AqU-23Zq;
	Wed, 05 Feb 2025 17:54:08 +0000
Received: from 009.lax.mailroute.net ([199.89.1.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfjbB-00000004ApZ-18rN
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Feb 2025 17:54:06 +0000
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4Yp7CG5tzYzlgTwJ;
	Wed,  5 Feb 2025 17:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1738778037; x=1741370038; bh=cvqD5H/oO6J2BVVuC0kSXIdV
	I2qnFaNf9DIxDmwmUWg=; b=Mp4lri7fHOytWVQrYW9s6kNbMSOIaibGsEHPTwNC
	8LTJbv6ehm45Z3XT596lPYjSUVP7lOfKmqPJ38uI21NualYOzUhSiZePGTw3rCAC
	IbtRcTg+lig8/19PY+4RNkUcXQW92+OYel5Y0vUfNEUVJVQpQEsXhpMOpl/KwMrX
	G2QZi0TbOOlwcLwcENsRdjviFUm5K4YWehj7bKvptoJPyLTsOlalbi3g+Zxgfdfu
	kCFfFf0XhzPc1mPI+cdvsfPwFkgk8wQGbDLkRqkjzev93I1cIEyc8FRq2SJgm89S
	Ze3A39oywbXkJQgpzAB/viCQd1LEevCYYJxeebU4KoDvsg==
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id VIrMFUaWq9nU; Wed,  5 Feb 2025 17:53:57 +0000 (UTC)
Received: from [100.66.154.22] (unknown [104.135.204.82])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4Yp7C210jVzlgTw2;
	Wed,  5 Feb 2025 17:53:49 +0000 (UTC)
Message-ID: <30a766f7-66a1-4ee4-b829-00544ba10824@acm.org>
Date: Wed, 5 Feb 2025 09:53:47 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/7] scsi: ufs: core: Export ufshcd_dme_reset() and
 ufshcd_dme_enable()
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <1738736156-119203-6-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <1738736156-119203-6-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_095405_330911_25E9481E 
X-CRM114-Status: UNSURE (   6.55  )
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

On 2/4/25 10:15 PM, Shawn Lin wrote:
> These two APIs will be used by glue driver if they need a different
> HCE process.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
