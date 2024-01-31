Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BCB3C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 10:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=En18N993WJJOZZ4nloKhoE38qAKkMDPvXrO82r86xL4=; b=adzdVzwt3IBXKe
	SEXjTy734qsTBqn30IQr/NTDL3xB4j2c71/w7pPRqhDlEOL+8xkKAdgpFA+EwgqmaTPs+9Nx4GRFr
	y4+NHuq3vfLJU/WNGYJVM52kY7vSS5frfaElY8+stcApjIBSZHUkr5uAckfPjBrUPagJA/i5XQs62
	kTX8k5E7WW6f6D+MI2zEaEJWF0nwtA3pAD2Er7u26G3TEkwyDGiNjfAAcpMeJwBL7/TGBwLdIQf97
	xbVAaN3vuUldzgEW7WBdStozzkrV40hvZ/bxjSZwaQK/SQYCGBoAkAAGcJGQbQuWpiqraZWVxBbUv
	tH+T5X1sTX7KXMJ3Uw6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV7dy-00000002irD-34Of;
	Wed, 31 Jan 2024 10:16:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5ZS-00000001z28-0P9z;
	Wed, 31 Jan 2024 08:03:47 +0000
Received: from i53875af6.versanet.de ([83.135.90.246] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rV5Yp-0002dS-MR; Wed, 31 Jan 2024 09:03:07 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dang Huynh <danct12@riseup.net>, Manuel Traut <manut@mecka.net>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Mark Yao <markyao0591@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>,
 Ondrej Jirman <megi@xff.cz>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/4] arm64: rockchip: Pine64 PineTab2 support
Date: Wed, 31 Jan 2024 09:03:05 +0100
Message-ID: <10956967.nitPUkWRp2@diego>
In-Reply-To: <ZblPtrW7suT3RRXc@mecka.net>
References: <20240127-pinetab2-v4-0-37aab1c39194@mecka.net>
 <6035442.lOV4Wx5bFT@melttower> <ZblPtrW7suT3RRXc@mecka.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_000346_170710_009BCD77 
X-CRM114-Status: GOOD (  17.88  )
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

Am Dienstag, 30. Januar 2024, 20:36:22 CET schrieb Manuel Traut:
> Hi Dang,
> 
> On Sat, Jan 27, 2024 at 06:35:50PM +0700, Dang Huynh wrote:
> > Hi Manuel,
> > 
> > Since the BOE patches have been accepted to next, you do not need to include 
> > it in this patch series.
> 
> sorry, I thought patches to LKML shall be against Linux master since the
> patches are still only in drm-next I considered to keep them in the queue.

normally if parts of the v(x-1) version of your series are already
applied somewhere you just mention that fact in the cover-letter
in the changelog, like "dropped display patches already applied to drm-misc"

Just to make sure, there is no need for a resend, I'll look at and pick
just the remaining patches :-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
