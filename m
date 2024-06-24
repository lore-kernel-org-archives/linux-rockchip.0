Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 020A0C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 12:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4uqwJn4/0f/Nwv86OBkkDn5aKzRXaP8rFm/JGF/zMQY=; b=J74KlnGZ4yB/Gm
	c8Gj6XwpA0w+6Pz7cA+z0dPYLwEyrSb2pMfY9/OPeeOtW5EpjOzpx6dT2JpwZGwc8kfcUC/ie0boS
	agnxR1NdW9EaGzzVHoP8l7eBMX7z0oLUNXZz1Pm7UsEc9dDo+rrBP8YBBujxWLq9LDDNqFWK1RmUd
	yDF2jN/xLnaexK33VGhNSFOuKyy5MtVtiNF3YybyefxvaLa6Mm3Zn17bDbgSYDxmJ4KwpvBVAMPno
	ZbkzAKGKyMJM6oWYN8Z2gFeCXWr+Ac0/09trCFm1GmhokZam+S6WvI+B8iCO8nspLPKEicrvv33X0
	pIAqprkM4ipfZ7hf4qxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLirl-0000000GmLy-0SCl;
	Mon, 24 Jun 2024 12:32:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLirg-0000000GmKf-02rO;
	Mon, 24 Jun 2024 12:32:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 70B0860BC8;
	Mon, 24 Jun 2024 12:32:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD863C2BBFC;
	Mon, 24 Jun 2024 12:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719232325;
	bh=P58O4w8GCsYfN/lsqRtNfm8lTDDHx3RLixon4iT2WNs=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=kw7s0ZJrnV+q3yeBmE3Uy8JDyd7CGT2ow+O+mI6/JhD+czDEkcfpNp8hZjP0Uj1TI
	 xBGiXRh2Rrwl8qq9ztJ19C2C/ZnpgPinTFKYaIvih3TiuR6G4ZNUkJL5He46EdIXns
	 pXc9xZzfpZLJ3sPPefn8C7mLZSvkk3ve/LnrXJ4wgx/+WMfPWOANpq7mrCxjA96kpH
	 0FVPtovoqu03zlq8aXFrueWHzHW26RwFdRFH6ozkht5SXhh2JqOv8SBgaRF7jmgN7T
	 Mir6Lt7ZOBVeCNVc7ZertF8kvbfwhOgQVdegKdmPRdxHRO+1LV8mB7vW6SG+RpGr9O
	 i5MQDWIGBwMww==
From: Kalle Valo <kvalo@kernel.org>
To: Jacobe Zang <jacobe.zang@wesion.com>
Cc: arend.vanspriel@broadcom.com,  duoming@zju.edu.cn,  bhelgaas@google.com,
  minipli@grsecurity.net,  linux-wireless@vger.kernel.org,
  brcm80211@lists.linux.dev,  brcm80211-dev-list.pdl@broadcom.com,
  megi@xff.cz,  robh@kernel.org,  efectn@protonmail.com,
  krzk+dt@kernel.org,  conor+dt@kernel.org,  heiko@sntech.de,
  nick@khadas.com,  jagan@edgeble.ai,  dsimic@manjaro.org,
  devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/5] net: wireless: brcmfmac: Add optional 32k clock
 enable support
References: <20240624081906.1399447-1-jacobe.zang@wesion.com>
	<20240624081906.1399447-3-jacobe.zang@wesion.com>
Date: Mon, 24 Jun 2024 15:31:58 +0300
In-Reply-To: <20240624081906.1399447-3-jacobe.zang@wesion.com> (Jacobe Zang's
	message of "Mon, 24 Jun 2024 16:19:03 +0800")
Message-ID: <87wmmeiksh.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_053208_263283_E32BB322 
X-CRM114-Status: UNSURE (   7.12  )
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

Jacobe Zang <jacobe.zang@wesion.com> writes:

> WiFi modules often require 32kHz clock to function. Add support to
> enable the clock to PCIe driver.
>
> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>

The title prefix should be 'wifi: brcmfmac:'.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
