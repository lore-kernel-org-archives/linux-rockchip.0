Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1703C6FD19
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+tj0NaapVQI5nNsx6RAQPtr+EFRP3GSiiwEaQ0lLQlY=; b=ywHvswoIOXve7sJ8TNrSididQa
	Bm08gKcpnDveaP2aYzrqaehsIV0ERu8ZOVEZoRn8iJEfcD0+1H1FOuBoWq3pIqe8HSJTfXcwdItip
	cxua6qERyZB16/suAyqb2IdEmnCFqaunDwaGT/CZ+Jjtcq0RqjUbOuSSMBjvqJli8+xMHqNbEsOhQ
	0hbn36ngcScKqLHmlg4cMhbw2vBJTnuMIEj3U1F49Rj+Ef8PJe+EFi6NOa0YYEoRMHlq/T8jpKS1R
	78kvUKXy+qAoDu6z49SyjFkZlpzsmAOCljY0L5iCvFCqX04c/eY9vuuO3XMKRrCKUEADQiJ7rbpRw
	K4VLDtKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paYYP-00DnSH-6p; Fri, 10 Mar 2023 08:56:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paYYD-00DnNJ-AE; Fri, 10 Mar 2023 08:56:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 407716115C;
	Fri, 10 Mar 2023 08:56:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98640C433EF;
	Fri, 10 Mar 2023 08:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678438591;
	bh=C4lIEcYHbP1LRvSAoPOxUsnZofcU+ia3egoUMcOO+wo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=nhdgVttWC1VdAmu3PGOfgyzJ9e+urOPw10MfMbIhXda6MSZ2Ur4hE0kHH9KN6sgal
	 sRjZyACngza8mlKp/NGf+m6lccOeM51Q1yTyvVJpT3LYNXwQnfRJd8yOnL27Ysp7M+
	 vIC2q8cKd5cXmIVqSzBp5HywLXX5B8TolPIZztCrv+/XEEYlmfTGCDNKDmOJ8pItnQ
	 YXL18zzNam5y/qL/tXy+39jLcgSihwIDHVLh3MRS8wfDEwQZfZMPo3AieGKslPOa31
	 5KfkI6IDtfS6fMlmU0ONC3IkVJ7bYOjHitcGvNehBT/wQwRLbCPF63BOwxP77Eqsyt
	 X+80tajDaa4AQ==
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1paYY9-00GXmV-3R;
	Fri, 10 Mar 2023 08:56:29 +0000
MIME-Version: 1.0
Date: Fri, 10 Mar 2023 08:56:28 +0000
From: Marc Zyngier <maz@kernel.org>
To: Lucas Tanure <lucas.tanure@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Thomas Gleixner <tglx@linutronix.de>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>, Krzysztof Wilczynski <kw@linux.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Qu Wenruo <wqu@suse.com>, Piotr Oniszczuk
 <piotr.oniszczuk@gmail.com>, Peter Geis <pgwipeout@gmail.com>, Kever Yang
 <kever.yang@rock-chips.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, kernel@collabora.com, Robin Murphy
 <robin.murphy@arm.com>
Subject: Re: [PATCH 1/7] irqchip/gic-v3: Add a DMA Non-Coherent flag
In-Reply-To: <20230310080518.78054-2-lucas.tanure@collabora.com>
References: <20230310080518.78054-1-lucas.tanure@collabora.com>
 <20230310080518.78054-2-lucas.tanure@collabora.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <a43dee4ef0e72c393dea6ce924347f81@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lucas.tanure@collabora.com, vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, tglx@linutronix.de, lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, wqu@suse.com, piotr.oniszczuk@gmail.com, pgwipeout@gmail.com, kever.yang@rock-chips.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, kernel@collabora.com, robin.murphy@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_005633_424411_D4E72D66 
X-CRM114-Status: GOOD (  12.43  )
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

On 2023-03-10 08:05, Lucas Tanure wrote:
> The GIC600 integration in RK356x, used in rk3588, doesn't support
> any of the shareability or cacheability attributes, and requires
> both values to be set to 0b00 for all the ITS and Redistributor
> tables.
> 
> This is loosely based on prior work from XiaoDong Huang and
> Peter Geis fixing this issue specifically for Rockchip 356x.

No.

If we are going to do *anything* about this thing, it is by
describing the actual topology. And it has to work for both DT
and ACPI.

Alternatively, this is an erratum.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
