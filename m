Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5805CEB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 14:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DrsrA7ycZz5wLJc15eAhpFSBvxXhYyRFKRhSAEPCVFs=; b=edK
	HNWYkM0ak+TT3MJA3o6dBAaz09Jbg5XVydeEwu1cq5yg5oHRCDOwjflsfprG8YM+ca0W3Pcmb9dOo
	Suvk/q3MRFdmo9K+dter3rtG8U6w07Hngx4pfsU2QC1ZTob1z0CfkS3GPXPiFSwynmbxz0EC7QSu0
	W90OUNGsqifJ7BTuHJbcODP8pbfkND3zoweMVIaZgdjQ963giBEvwbV283yXq2fPf9I2tOCPx70ma
	GkhMCSBR0ri71l/dm1xXypja33XVEYT0bDnM7hTSINEuihNUgUpob2Hw/UBzVzwknVcreWcdASnze
	aov7URSuXCzyHYucuKqPmQKEjLJA2nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9RvT-00ByRn-1f;
	Wed, 14 Jun 2023 14:56:47 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9RvQ-00ByRI-2t
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jun 2023 14:56:45 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5701e8f2b79so2557947b3.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jun 2023 07:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686754604; x=1689346604;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AoJIFvXSYctM7DoX8DnRItUX1b35E2ExJ3usHYCSx/Y=;
        b=I/NzrJM6s+0Sk6smnaDMlQjVqo0Lb+ZQCGoHhFA0dfwGzrWb1IbfDsAxZxiE82szFP
         lVxp0dNyslDk6CstJLXJo5JusCBkJhwkPwsEExXNLV2s6ULRxpU0WOVLt00ADM6+TVsW
         gll9mTktyl5TaWMDskHgIk8gC31CGuX3UCeQFcSV1fD2bFyVElQXMGK4HNYhhR6rh4/x
         IZ3/+X1zYTmd0dzbgQ4f6Rs5ePDvinyD+vHdHVl8HI+E1HZWS/0Ei5Mck9fOoQsGeNBw
         aBsmvjPeezyvzLhNQwza8djqsLl1RRmOQyZN6g+F7WgSSXZPVGBpk+dhGi3nSLD37+2a
         hkoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686754604; x=1689346604;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AoJIFvXSYctM7DoX8DnRItUX1b35E2ExJ3usHYCSx/Y=;
        b=VccmJvzWf071HCGt/aTOjJHIL3zN6IfLg7DFV+StJTFDt+pfS6A8gggJMOiVm1FfcT
         P87kSoXhN269maTJv9YZ3LTrMnXY5Vnj9AT3f1ToBogjvyLkENJ+yDgVxkKoWvhrZ5/D
         HerClPOWBYGWCcC1rObbROYJwJfu9o7dCwYxpMR9c/UNxn6tG6tie+NKdTOcQcMs+8dy
         zHmRmn99pLI7aCxub3hCUWFny9+95UwmtRo9EvQGmnT7/AqoLIoCrWb1DlCkRTPgHB1f
         hqZVeYlnDybtAJEvmFjtPJkdCaKYmSlR4axi7RYt5Zm6boKbxL4XF1LMv/TQmqe9ZXy+
         55DA==
X-Gm-Message-State: AC+VfDxhSX65QjtcNOV22VVvo6sGUeOW7wrLo+P37MZkV0y2PmGqTUqI
	OvjFhfI6uU/s2XIIKotDG4UWyqwo+/IrL9S7bWw=
X-Google-Smtp-Source: ACHHUZ7WwqitkLCCGsQS+w0JbVGOFQOuqzitwlZcws9qYDvjBq+bQsfA4yempp1Kc3rb0Y4TWd4aVeBhoqcDDpwF9vY=
X-Received: by 2002:a0d:d6d5:0:b0:55d:626c:b62f with SMTP id
 y204-20020a0dd6d5000000b0055d626cb62fmr1979151ywd.51.1686754603977; Wed, 14
 Jun 2023 07:56:43 -0700 (PDT)
MIME-Version: 1.0
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Wed, 14 Jun 2023 14:56:31 +0000
Message-ID: <CAEwRq=oddAzJcVBhxJVe9QActLe30cPdnzhGormv6xr8nu6RXg@mail.gmail.com>
Subject: rk3588 tsadc
To: Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, 
	Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_075644_936005_E06492FE 
X-CRM114-Status: UNSURE (   4.96  )
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

Hello,

when testing the latest collabora rk3588 branch, I see the
following kernel message:

rockchip-thermal fec00000.tsadc: Missing rockchip,grf property

Is this something on my end or is the
arch/arm64/boot/dts/rockchip/rk3588s.dtsi
file missing a rockchip,grf line ?

Thanks

-- 
Vincent Legoll

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
