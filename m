Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03EB5CF9C5B
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Sep 2024 12:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUGUC6rMKCcaQPRU+p8toUVI1HvelfEBFWQ62bV2q4M=; b=FSDqJrCksktcfG
	qHMcerK7smqhY2mMqAMo/5xBuy8R38rL1tqeDKqHsYklhMTQKflPcf/L/tloObb1NCGJR/6SmYufQ
	YjTNLi6IkQVxe5QoNl/f8w+NDiK8GP1rVGFMKAxS/NzqAW7WWvUr7VwOUzkRtyOR7lIV6ivNIM4rZ
	uudbbnDup91UTZ+5YOSWuZ0X0uP7r8kLYRByfUC/TzAsD+wt79Uj1b3UJx8s7xPdSgC/rr4uRRfbZ
	2uCXle8gkTJDqjRl+VbcM+GzjV7ZCMDX3tmHy079kNoyaN54c01KzyaVrIzGcHhfidxv+ncPQTlJI
	PSmffoo3CIdNeZqirnjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srzNu-0000000DiBy-2EEd;
	Sat, 21 Sep 2024 12:38:46 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srzMk-0000000Di5g-3CkC;
	Sat, 21 Sep 2024 12:37:36 +0000
Received: from [192.168.0.160] (unknown [120.40.111.43])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id D4ECF7887A;
	Sat, 21 Sep 2024 20:37:25 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn D4ECF7887A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1726922247;
	bh=zcS472w9hdKS/lPmVwyG5rcF8C7SmDI7kxfAxfhqsnY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GB+uyXdYfJRz0dXGsIXpKaiDqbDCUJEP+daNCcKr1frd4VfcjjR1/iJL9FFTflSUo
	 jn9mbTwOOCE2H1lmqvyBnyODxmkQ/KwwX1fEtG4aqButCTKdxHSrbcCLjoesVTiO1u
	 GWb9kKBgVJg0nikD0p2AL5V5uC1YGIm2H7Lt+3GQ=
Message-ID: <2ff6ab4b-14a6-40ac-beb6-9c21e50cf7fe@classfun.cn>
Date: Sat, 21 Sep 2024 20:37:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dsimic@manjaro.org,
 heiko@sntech.de, jonas@kwiboo.se, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Junhao Xie <bigfoot@classfun.cn>
References: <1a7d017a-8317-462b-8698-03cc7099a74f@classfun.cn>
 <20240918022005.487551-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <20240918022005.487551-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_053735_481151_17BE03F7 
X-CRM114-Status: UNSURE (   5.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024/9/18 10:20, Chukun Pan wrote:
>> I seem to have misunderstood the rules in dt-bindings before.
>> The following looks better:
> 
> Please also update other regulators to unify the naming.
Thanks, I will update in PATCH v5.

Best regards,
Junhao


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
