Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D9ECA1005
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 21:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeWRmUBH4r4pV0iAMw3EnF8vtbNCdeExXYP59ceuBNM=; b=kpeZTiIEbBGsmH
	KMix/rPKuktIeNS1G4Nx8iUmAKuhANJaxTkB3qkcdmHgJgq9cv0hPbyyWbnRXuT30802GHDBpkq13
	6RDmUVAwjKdXRvqeHE8YmGm+mY+wYiCnBdc+iwmfX2n6drCpGTo0P3T9bIFdTDscUTrmG3ahC+b9c
	MZQMlsGPPCAZPubdSDiJJcmAEZgOB+FqIaLyhNNvYJ6+Ww502mVPgLTFk2/EFkvMZVwyJoEEv2w7+
	16c3xUkwElLy7zK7Tml/PMul+2f/BVygTiqAoruq6ndWkhbtj0V7iKU/0kqcC2QO50rEsxOPcpx3/
	pKvEHJ6ba6r7v/N9HvfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utYpD-00000002Ehl-3GKr;
	Tue, 02 Sep 2025 21:45:59 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utW31-00000001UQc-1qBd
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Sep 2025 18:48:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1756838870; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=n/SY1QV9yd9D5c+Y4l9RrvIdYrk9bEKO8VbQNjYhyIKVKYkFcNfnH1qf0GFDFGKIJgTB3mADN1c/9lRTLaXuGSkAymhdLXSjs5zoBrjJljEXeOIEoG3pWpGFKe0ZaxVQTBX0aFSiBUGcDtXHW47kvXE2Cj3t851gHneMN0Nv//M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1756838870; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=eEimETXzcFXduDqWg3m47iQxfgsOTltbIThz8vfrKVQ=; 
	b=cn35Bz4qkv3IVDFSuC4vYkkl4+NfEuOGstCC/JHQoqW2lMCecYZuW+BWflNCs9SSAr9r0Q6LqBF3MSHdhJLub0BR4NfykL06/H3Tz5f/2KVr9M3tDG+GKQwtWs3aneZHIH657/NMomEcDnaZw7vwNxWxSOmChtc3ZxR2FhTcG3Q=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1756838869;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=eEimETXzcFXduDqWg3m47iQxfgsOTltbIThz8vfrKVQ=;
	b=FuglPmomQFS0ZhcGVYwLUDVC46HBRxYarV2MLCsh/5E57CECcEF3/VL0jpSeczUl
	cKBXfDMCOp8sJrrt0hzWQIZpaN8hjXHjx/nhTyfpqlNc3oQbmSkii/k0/q/4aw3UfO3
	grUOqjZMilyWv5w8oCjW/3/5Ggz1DU+4XkiLCyfc=
Received: by mx.zohomail.com with SMTPS id 1756838867514400.6279332190828;
	Tue, 2 Sep 2025 11:47:47 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH] pmdomian: core: don't unset stay_on during sync_state
Date: Tue, 02 Sep 2025 20:25:42 +0200
Message-ID: <12734456.O9o76ZdvQC@workhorse>
In-Reply-To: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
References: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_114803_546069_46FBA26F 
X-CRM114-Status: GOOD (  12.72  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tuesday, 2 September 2025 20:23:04 Central European Summer Time Nicolas Frattaroli wrote:
> This reverts commit de141a9aa52d6b2fbeb63f98975c2c72276f0878.
> 
> On RK3576, the UFS controller's power domain has a quirk that requires
> it to stay enabled, infrastricture for which was added in Commit
> cd3fa304ba5c ("pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()").
> 
> Unfortunately, Commit de141a9aa52d ("pmdomain: core: Leave powered-on
> genpds on until sync_state") appears to break this quirk wholesale. The
> result is that RK3576 devices with the UFS controller enabled but unused
> will freeze once pmdomain shuts off unused domains.
> 
> Revert it until a better fix can be found.
> 
> Fixes: de141a9aa52d ("pmdomain: core: Leave powered-on genpds on until sync_state")
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/pmdomain/core.c | 4 ----
>  1 file changed, 4 deletions(-)
> 

And of course I notice the typo in the subject (pmdomian) as soon as I hit
enter to confirm send. D'oh!

Ulf, can you fix that if this gets applied? Thank you!

Kind regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
