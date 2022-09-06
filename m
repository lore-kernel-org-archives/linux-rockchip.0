Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4CB0C38145
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 08:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n94Yfb6zrfxQJs9Y3xV3k0IB73FKuJY05jOMWn/6bCY=; b=YLMkshaD53DjPpCZOb+F/w4owV
	JYkT8EpMisCU4tQwgrb9Qo/oTGRg8SGHoV2EFmqgLTLfdQArVEGpOlL8/MifO035Sw91Flnc45OZH
	IKKYSE49PsxYMEhfP5E/IoGSFhhWyAo4I33n/fZyVJu4NJBHbsGLGMbGTjUMJic2ZTLgL7ukUMx0L
	m/2Bictz8XDWUsamcvGaJH30MWRFrtWRti/wRvrcWPvrZP5vbd3weRueVlO1y+TtGmnpmgFhTNCoZ
	4VrPOxP/cqrAYODAedgPcyNkdrrjZwjuvQ6kkmT7btMQUglSsXut/kEsH47xBBMLF2yV32JsQBxe5
	1629T+Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVTqS-00BDND-My; Tue, 06 Sep 2022 08:22:08 +0000
Received: from pscan.eu ([31.193.140.172] helo=mail.pscan.uk)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVTqP-00BDBb-K2
	for linux-rockchip@lists.infradead.org; Tue, 06 Sep 2022 08:22:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
	s=2016050301; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Zbdd2o5JgR1uYK8+jXJD4zgfBlgGh1RQR0UEFTntWlM=; b=HcvAZ+eL6UxmyTtgVPoDmzR4LF
	EF0h1RF5SiogyapTJDvmVL5+o078g2wGLYwrBTq8I/g4dQjz1xDC+1XKuJkSUiuRvPdSKDrAciA5+
	oZnmn/JlDCR58pM+wWYD88dex54d0q30EUzZEi8ibZvuwwtMpmBJ7wErZPE8xEtVjqcg=;
Received: from host86-174-60-191.range86-174.btcentralplus.com ([86.174.60.191] helo=[192.168.1.77])
	by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
	(Exim 4.94.2 (FreeBSD))
	(envelope-from <subs@pscan.uk>)
	id 1oVSi6-000G7d-1U; Tue, 06 Sep 2022 08:09:26 +0100
Message-ID: <4412c518-8464-aba9-0186-f8441ca06a1d@pscan.uk>
Date: Tue, 6 Sep 2022 09:21:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [RFC 0/4] rockchip-dsi for rk3568
To: linux-rockchip@lists.infradead.org, macromorgan@hotmail.com
References: <20220812143247.25825-1-macroalpha82@gmail.com>
From: Philip C <subs@pscan.uk>
In-Reply-To: <20220812143247.25825-1-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_012205_927385_4734F944 
X-CRM114-Status: UNSURE (   6.59  )
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

> 
> Chris Morgan (4):
>    dt-bindings: display: rockchip-dsi: add rk3568 compatible
>    dt-bindings: phy: phy-rockchip-inno-dsidphy: add compatible for rk3568
>    drm/rockchip: dsi: add rk3568 support
>    phy/rockchip: inno-dsidphy: Add support for rk3568
> 
>   .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
>   .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
>   .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  51 ++++-
>   .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
>   4 files changed, 209 insertions(+), 48 deletions(-)

  To try this out, what are the prerequisites?
Do I just apply the patch straight on top of a stock mainline kernel?
5.19 or 6.0 ?
Do I need any of sascha's patches as well?
thanks, Philip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
