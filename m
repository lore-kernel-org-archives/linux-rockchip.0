Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06A71CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 05:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jEQMyDHl0EQ66n8BW+mNfprX+/gKOpWUvF+ct/K0Rlo=; b=ftvJNdGwW3VIYa
	dZbz/luemrsIRMkNns084naeBALpz4sQq8/f17kjlGhRol/NXv6+kj/FRtVbrCSi8SjOIk7vaNLH7
	pOoJyoQhzyAyb7bF6Tn33n3/Vrk4SGGJsCEeJB3cqdoj++LUtz0SH65/WdvbNmp/mkqVl7P0AvJC1
	b/+vaDgtFiKn2RqO+5DSWmIL+R4SaZK+VIHm1ENGm3KDweVquPb7C1m0phn/VJvL6/RtGRMfRxCaF
	LHqVqruhs07TPPAdU+03W6CQkpgQzSvSbfDaoyo7a5/F6w8uFf21f1T19ozNH009ZIfZ4YUsjVkI7
	SlJY7qTbP5segoqd7w2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIhDb-00000006Zwz-1XbO;
	Tue, 11 Nov 2025 05:47:03 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIhDZ-00000006Zva-1JgT
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 05:47:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C1E3041031;
	Tue, 11 Nov 2025 06:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762840018; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=iKiqwSW06C0YL3fzQsISj7cVq9bGNpdxxp5zAkSRu7o=;
	b=Eh+ON1bnzIwM4UCOaYkagBDysEpx9fmfiEYLL0gB5PtPtheSqdBbE3QBlZhb69KEtzXeGO
	yRQpyFxL6PAYE2GwUeHVjosJNXehHwwywKyniod60akgEqxTudY1FtsHP8589uGEfPnB/G
	ir/C9vJqdGBV+M99DXkmeYDeU2OM5npyS3aSmD4iKPfP+PEufNceROC7heLEyWC59YsRMq
	udK9qUCtnuhDPdtOW9jBq9FDa3axvHrzpPAHtHez7YV2qjE26Et7YDnv5WwwT0DRxZGkq0
	Wk2XWFQfVj0CuDc1Q/71V++gaY4O1OLwtRMrtUnlZyZcDhu+CjU7fa5HbPG1ew==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111050924.54880-1-naoki@radxa.com>
References: <20251111050924.54880-1-naoki@radxa.com>
Date: Tue, 11 Nov 2025 06:46:55 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, kylepzak@projectinitiative.io, alchark@gmail.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <6355d076-9263-ad0d-6460-c51f03b0a45e@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 0/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Fix eeprom description for Radxa ROCK 3C/5A/5C
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_214701_599435_0D360D7F 
X-CRM114-Status: UNSURE (   8.66  )
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

Hello Naoki,

On Tuesday, November 11, 2025 06:09 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> This patch series fixes incorrect or missing entries related to the
> eeprom on the Radxa ROCK 3C, 5A, and 5C.

In general, there's no need for the standard prefixes in the
subjects of cover letters.  Thus, in this case the subject
could be reworded like this:

  Fix and improve EEPROM chip descriptions for Radxa ROCK 3C, 5A and 5C

> FUKAUMI Naoki (4):
>   arm64: dts: rockchip: Move eeprom correct bus for Radxa ROCK 5A
>   arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 5A
>   arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
>   arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
> 
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  |  2 ++
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 16 +++++++++-------
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts |  1 +
>  3 files changed, 12 insertions(+), 7 deletions(-)
> 
> -- 
> 2.43.0
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
