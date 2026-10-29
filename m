Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9FD606A31E
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 09:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cc2/DQgB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=g5FysmdL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iDIoDO9ilckry24mZjoSiOFb1030sWNI27AfB06I0PM=; b=cc2/DQgBaevppcgLFEtznZN9C/
	SvOcJJxWYpkNBsE3Wn0tYTmrGCwmno4ftxCjS+EJivokh8YdGUoawsgPateYvpVbBXVZb3txBa8yk
	pqfWnI/AGZpsaF1blqJQibyQdo7F7+gjl/t6zaqYmUT8Wf27ElvvNjqHtjLMPEEIbEH+/dHjxVahV
	Jlv0K7ey8eJ8Opb3+3308TAY2kqeDOPfVzs9cKOxtpjvflFKJHvYdw5FS/BWBXjV11N8TxDR7XZPI
	5zBKFeaN2+3+V4LKAUsd7HohwDw1fjBzIwkxBgDbhqVyjoym3AnZQX6te/VbBtAr+q8Eg9kd0LNAY
	qNE5cr4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMMZM-00000008s7z-35Z2;
	Thu, 29 Oct 2026 09:37:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMMZL-00000008s7r-29CZ
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 09:37:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D63F742E18;
	Thu, 29 Oct 2026 09:37:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34A791F01825;
	Thu, 29 Oct 2026 09:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793266630;
	bh=k2DJkpx96ZEKH6UFEmf/RC7TQH+ipmzROcDG2Evbn/k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=g5FysmdLLVxQ+2Ar3CcRquQy76Sd4pRBA6uhd4lt7ApRPgHHSiz/1+fqpgyZVYrBe
	 ujRepDuX4Cghb6uIigkUvsPO2sq5y/smmN833zFlMPTFeWhylDfTG5p+ZUp0VBQKLw
	 HWo/8ytHlGYf2/8zHjsE+gfP5AP9tTl8lhwYuLdtDkKNyL0MytCSjEz5jzhQv7zpz/
	 UGgyUJv9me0DKPuKcBxJ7Nhs6ONMIBmshnn0KAbdA2Ck2sDfbVCt4J5EB0XD4HH72Z
	 CrrFyyRMNqxTuUprliD8+bGlh8IwaJNvbuYAuZFTqAE20ko7zCZ4hiE8BMF9kVExVu
	 qZ14lzBggQJzg==
Date: Thu, 29 Oct 2026 10:37:07 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, maccraft123mc@gmail.com, zhangqing@rock-chips.com, 
	zyw@rock-chips.com, sre@kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, lee@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>, Jacob Cook <jacobmcook1984@gmail.com>
Subject: Re: [PATCH 3/5] power: supply: rk817-charger: Correct the gauge
 across system sleep
Message-ID: <20261029-supportive-garrulous-kagu-f3edac@quoll>
References: <20261026174834.1652309-1-macroalpha82@gmail.com>
 <20261026174834.1652309-4-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026174834.1652309-4-macroalpha82@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Oct 26, 2026 at 12:48:32PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The coulomb counter is erratic while the system sleeps. On an RG353M
> charging at 1.4A, one 15 minute sleep registered 69% of the metered
> charge and another 139%, and a charge that finished during sleep still
> showed the pre-sleep percentage at wake. The signals that could correct
> it are gone by the time the driver runs again: RELAX_STS clears as soon
> as the wakeup load exceeds the relax threshold (300mA here, less than
> an idle UI draws), and CHARGE_FINISH disappears while the charger
> re-detects its input. The BSP driver corrects at resume from sleep time
> times current and from the relax voltage. Do the same from evidence
> that persists:
> 
> - At suspend, stamp boottime, charge, current and charging state, and
>   clear the relax-updated flags.
> 
> - At resume, recompute the soc from the counter, capped at full. A
>   relax pair with its flags set was latched during this sleep:
>   recalibrate from it without demanding a live RELAX_STS. Otherwise,
>   if the system slept charging, credit elapsed * current where the
>   counter fell short, saturating at full, which also covers a charge
>   that finished during sleep.
> 
> The constant-current estimate reads high across a CV taper; the cap
> bounds it and the next rested pair corrects the remainder.
> 
> Log the counter at suspend and resume, the battery voltage and the
> relax pair, so the path taken can be read from the log.
> 
> Suggested-by: Jacob Cook <jacobmcook1984@gmail.com>
> Co-developed-by: Jacob Cook <jacobmcook1984@gmail.com>
> Signed-off-by: Jacob Cook <jacobmcook1984@gmail.com>

One cannot suggest own work. How would that work:
Krzysztof 1: Hi Krzysztof, my name is Krzysztof, would you do foo-bar?
Krzysztof 2: Yes, Krzysztof, of course, excellent idea, let me credit
you in Suggested-by.

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Assisted-by: Claude:claude-5-fable

Drop, not correct format for some time, but regardless checkpatch should
complain.

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
