Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34832CCFA13
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 14:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLUxw2nWQFKrjFhnxk7EGgR1cCRnEfUWGi8TsttrPwU=; b=FExGcz1CTM0Gxp
	YJMkC/Gl38qRjqD1enDleNneYaJvFMF0Ur0b+ddaQHx06279cmoBe0p4z6ouF1HEwo6cI3EkM6uex
	15TDUyWzqEyT45wMdKL07ncGxr3c0WJ90D8LoedF9gB6JJlgR9cI+VMwbRnv8v2ZmDTwpdSQ+hTUt
	mODQFKsNs2EPXvgNORAtwN+pF1MqWiZ8sNNO8B3Sa459B/NwluFW27v93Lv/sOJOFE/M3JbjTp2hG
	AlL//RHBhUsR96/44kO6ikL07/TZe2I/6qoHkXRsJ96/gwhESkh58C4ucwlv5rtJzZYJ8ZP1OfY/h
	RNxFNGmI2MGqqYbOtuTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIT1h-00000005bTb-3CYb;
	Mon, 10 Nov 2025 14:37:49 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIT1f-00000005bTD-2Bh9
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 14:37:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 770AE40C84;
	Mon, 10 Nov 2025 15:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762785465; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=NvnxjYagnJWwFbZrINrJ0xDcFD7vKj/4jo+lxDZMAP8=;
	b=OyR0XTePTdVFh6q+1sK55pSfSAuSwkwO2lPkD0Pm77zRvkBf/GRpebFMtVKx5V/TCmvY3U
	DDlD0vYXTESmLHp9h3LCoWjK7qvDoxidjqBlg+jY3Pvf4VOtiTaZ9MzZVV1GJJKsYIeRh5
	SMYeQda5+9oYz5XtfxtdG8wyaGOGgQR5zCDgNU/vg1DXwqR5ub67BguTSsBOnidB/gFjAC
	Bws92sm2JHnPKvxdIzqOfglkzsBKrjim0SOTci4aVamMee7jNMS38SMmjMUH83v5bi3ynx
	kKUu+Fx1Wn8Dg0ELCJOYkVBtE3WR+RXvjMfKX6tQCADoQ06VKDSGLn8i2JxDyQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <8934442FCE2020A5+855829eb-e783-4aa5-b4a1-13b0a519c46d@radxa.com>
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
 <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
 <65f17890-c052-f303-4731-f882946df1f1@manjaro.org> <8934442FCE2020A5+855829eb-e783-4aa5-b4a1-13b0a519c46d@radxa.com>
Date: Mon, 10 Nov 2025 15:37:42 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <06218e17-0bbc-9606-46b4-9a50d1177170@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_063747_718554_F2F13AE0 
X-CRM114-Status: GOOD (  12.23  )
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

On Monday, November 10, 2025 10:44 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> On 11/10/25 16:38, Dragan Simic wrote:
> (snip)>>> Additionally, it would make sense to squash this patch and your
> >>> other patch that addresses the ROCK 5C together.  They're very
> >>> similar and having them together in a single commit might actually
> >>> help the people browsing the repository understand it better.
> >>
> >> I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eeprom
> >> patches for ROCK 3C/5A/5C.
> > 
> > Thanks!
> 
> I'm preparing a patch series for Radxa ROCK 5A and I just remembered 
> that the eeprom node in 5a.dts is totally incorrect. The eeprom is on 
> i2c0, not on i2c2.
> 
> I'm planning to include this eeprom fix as a part of the patch series 
> for 5A.

You're right, and I managed to miss that during my review. :/

It would be good if you'd prepare and send a separate, two-patch
series with just the I2C bus fix for the ROCK 5A and the squashed
patch that makes the EEPROMs read-only on three boards.  Reviewing
and accepting large changes split into smaller portions is always
easier.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
