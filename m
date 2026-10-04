Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4B94CA5FEC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Oct 2026 09:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtOwq8GUMJ3NRDdsqosbI6yQRuHaH+gAYQF3mZOGdEM=; b=Cdo0urlnwTydc6
	XgkuGURteDPaSms9fF8M7i7qn9ECis1WCfq6Lzar2FIOhC3XZORmX4pYe3fLMODr4zvavZfLoipW6
	sL7saRqW35CTzZ5us5Q9Gt/HFXbLCcFaXc9VWg+KLHUOtEXyKy6ly8qmIZi/41Dsw1UFGp4wkmEY0
	NBFf6MkYaB6IrwPpqONHKuDxllESefr7lSkqqrHrsYZC2gxSofolx631XfOKg/eQ3/FGSYZOf5Qse
	BjGBwil+zuN4azN5m1DvKtNb1lshZ6vQvXtf4Sgg4zzQkPoa4NnzePntmVb1nYvBTFTvFFGrBc3sr
	EObdirzI8/OFwhS8Z/zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDImd-0000000EdAn-1dry;
	Sun, 04 Oct 2026 09:45:27 +0000
Received: from mail-pj1-x1064.google.com ([2607:f8b0:4864:20::1064])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDImZ-0000000EdA3-178k
	for linux-rockchip@lists.infradead.org;
	Sun, 04 Oct 2026 09:45:25 +0000
Received: by mail-pj1-x1064.google.com with SMTP id 98e67ed59e1d1-3a49623b865so384991a91.0
        for <linux-rockchip@lists.infradead.org>; Sun, 04 Oct 2026 02:45:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791107120; x=1791711920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JoFX+YMXd60kpER0QJajp4LEvvy2XvMbrnb9b5wYktk=;
        b=EZRBXpZoKWcwSVttCsAx4OATOWx7u2Kw6z+b/pk/CoL9qsc7M9LrjidTYOn6cyr8O+
         sLA35TbT7PlkELa4Ph+j7eICBSD5v4CMxM1+DtUh5tVaNu4VppV0Ju4thDf/qfY95hCJ
         dSZ1ybrm/A1AWCBC4Z7w3/zvN9NExau4Mmu+5VymXqmmMWKeGXUvngzcn+FCMF7QVonF
         S/Sah8WhZjDK+4QoDXYG2Z6TyTgBfM3V0tT4hkGAoO1IjPX/gwnjY9et0YpsPbXrBC/V
         uGTiZssXQxGzGk4RmgQndXdOC5GFVrfjgtFA9+Qs1bL85CoO6VSkB9JH4R06CVaVYT9h
         7t9w==
X-Forwarded-Encrypted: i=1; AKwUvBywU93vH3/zPZWKIQHHv9EEh9nwjPszCM7nPSrmcY2yBWz7SESam11kxCY+VWLJsBFPLwqzfTGBuKNtMOhhWQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYIQNBPowaHs9B67mhnNxeWs/mDyYbX5jVDF5d7LG2m1hMGPsB9Q
	q1makdrGUrfMND4KXE3DIVKNbmb9RH0dUtZXHYWvnz6CLjL39EVFUxQizGClghMr5RZDcA0LSpd
	MvI+JsHwmCvP0Pi2tsJyZZoWCqVy2fk2a/jJ2u/qk/QG1ae5Escx6UEPWe+KMXI5kbpUEGt9Avd
	ShbSIWzaFFfaBTZGG1C12/YxALH7lwM44qnPOtarPSvDpWvqjv7AzmSbLeKrkyL/O0r2tPXi+tm
	XRV6TsdSejLAKukP4g+NlKzz8Ge0oA/og==
X-Gm-Gg: AYBFou3yWxCam+rAJds0c1Dnf7j3416RP5nZ2zCz6eZFZo92e48uWea/xDs+umx4M0o
	H0tg3BT169RhQi2mvJcwtxzylQlrHS7gASoaRwrX25TMMby3VDNzM7ySGkcx6hMDQiGOFuCkSpO
	cI8t3aN1T0M6ZR/PgWW8nNbjNdORlDtlrrSetw9NB3d5/gLO/Ml/paXxNch+GjsnKRwifnMGIQr
	BtocmFMtvEqxQiBD7IdDF8fcRDsURuzp4Ll3hhNMtKrRrBLcwQkNYmCs2zGe56Upiab9VQOK6Z3
	XPR+vU5jy/8LXCxd1sVf/vu6O/8v2g0X2uZ3UW8+dGbpoNitds8nnaG8fXxNoK6xK2bJOBGm522
	1aSHydjncfUOElWIOXZRnTkDp8KJ5M6k5FZi2HTWvtVgNueiegnhONQLxTwgQIrxnDjizHYRLB9
	PdNnFeNM9ADySGkUJwV9lnvZZkBbDWgTxAv/t2S/bbIw==
X-Received: by 2002:a17:90b:17d0:b0:3a5:a5:8509 with SMTP id 98e67ed59e1d1-3a7871bd1fdmr3715267a91.24.1791107120277;
        Sun, 04 Oct 2026 02:45:20 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-120.dlp.protect.broadcom.com. [144.49.247.120])
        by smtp-relay.gmail.com with ESMTPS id 41be03b00d2f7-ccb7429e540sm965575a12.6.2026.10.04.02.45.18
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2026 02:45:20 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30f1b904861so1120330eec.0
        for <linux-rockchip@lists.infradead.org>; Sun, 04 Oct 2026 02:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1791107117; x=1791711917; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JoFX+YMXd60kpER0QJajp4LEvvy2XvMbrnb9b5wYktk=;
        b=aSg29d92ujHBuxSwhhPwvf9ZscGVfcTp7xds84vZShu9H+aKRqJouQpvldBbOXcC+R
         tJzkZOVrl1DLE/VbUBXrCNX9o58oav/NJCA3gh6zth+uWY0xo9IWMliRa2MzZeD1HLb7
         zvgqAgf3fxTw83mJak5UokYpWbRPlLomD/kFQ=
X-Forwarded-Encrypted: i=1; AKwUvBxHweQCPcPRhzuvnXwC9a5txdeWZyhxXiwmgmK03eUF4VoEfaz0+xaEJf8kP2Am5FQciTe8IiWYxHyPjjTvOg==@lists.infradead.org
X-Received: by 2002:a05:7022:eb42:20b0:144:fc5b:2121 with SMTP id a92af1059eb24-151c30ec64cmr5879797c88.17.1791107116973;
        Sun, 04 Oct 2026 02:45:16 -0700 (PDT)
X-Received: by 2002:a05:7022:eb42:20b0:144:fc5b:2121 with SMTP id a92af1059eb24-151c30ec64cmr5879764c88.17.1791107116264;
        Sun, 04 Oct 2026 02:45:16 -0700 (PDT)
Received: from bld-bun-02.bun.broadcom.net ([192.19.176.227])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-151fcec9a95sm12736954c88.15.2026.10.04.02.45.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2026 02:45:15 -0700 (PDT)
From: Arend van Spriel <arend.vanspriel@broadcom.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-wireless@vger.kernel.org,
	brcm80211@lists.linux.dev,
	brcm80211-dev-list.pdl@broadcom.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: [PATCH wireless-next v2] wifi: brcmfmac: Improve D3 substate entering timeout handling
Date: Sun,  4 Oct 2026 02:45:10 -0700
Message-ID: <20261004094510.1323851-1-arend.vanspriel@broadcom.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260915-brcmfmac-bcm43752-suspend-fix-v2-1-1bd84914998b@collabora.com>
References: <20260915-brcmfmac-bcm43752-suspend-fix-v2-1-1bd84914998b@collabora.com>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_024523_554697_0D1B2E9F 
X-CRM114-Status: GOOD (  11.85  )
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

On Tue, 15 Sep 2026 02:50:39 +0200, Sebastian Reichel wrote:
> Some firmwares (e.g. BCM43752) do not service the D3_INFORM mailbox
> handshake when idle, so the D3 ACK never arrives. If WoWL is not armed
> the device is going to be powered off during system suspend and
> re-probed on resume anyway (brcmf_pcie_pm_leave_D3() handles that), so
> the missing ACK is harmless and must not abort the whole system suspend.
> When WoWL is active the device has to stay powered with its state
> preserved, so keep treating the timeout as fatal.

Acked-by: Arend van Spriel <arend.vanspriel@broadcom.com>

> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
