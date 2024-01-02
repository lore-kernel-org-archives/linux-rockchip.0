Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80E27C47074
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jan 2024 14:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuYX5CfY4Gfdu2eYuZwGzbH5Twd2B4eOCMX4EWo6XdM=; b=RHfKUQfxSavQlK
	E6YxmD6kKdDtyoRLsF5M+KWfSLbrxnEggnfdVWdHvSOH8KEqk4NE/zKEaVdSnqE4TGK1qdewWT58T
	JrxwLMHgzbfgWgOlR8I1Qz3ZTOuF1dqyJZrRTWqKWcwHDQV6Ca/k9wKRO8cUUGAC+NnmL8YzondSz
	lURE2zbxxTDeszyL+fijrUoRwVhu0nK4rezaForwwrCaAt1pT1Ie0dHOLmJffZjPJMgeD2AZANwmn
	P28rKwJUDF/ErDsfUcIZvJHwodPo5lSe+m8cBP4p2Y19+dAsN12OT4S17XJug6KQISp9KrIcsBZQB
	1f36rFdQLV+BbsMJVTEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKg4l-008Hcf-0P;
	Tue, 02 Jan 2024 14:49:03 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKg4g-008Ha3-16;
	Tue, 02 Jan 2024 14:49:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1704206933; bh=OLsgumS1zwfIQwHwTxGsJd911hWOiA9RORKv5bCget8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OlCBZLIVeF/PoWDACRceIzqmgbYteJEJ355bQ4YJdhOXq6ILi0racCbJ6xERTAkhu
	 vs1kNQwxNsPHgrddbFYJENfb1E53QLEp3HygJqSADaZcTljUobsfwnjTEIGTHDKB+6
	 QpvLBUBJLYdG9s6rMh4rKRQPL+OLQ1h+DdI1Tjpg9ErMxLRbOHGhcTtqxRJBKuyUIX
	 lMNavOXv+doYpUl7zIvJZpSkqH7by1n8OkxzTfJkF0ZO/HLUpqQtcTjVS5Cinp+wWA
	 k/b3WUCjXkC+POgl8A32MlXHZpUPBHe90L+4TQyUTbde/H3P13qnCQFkNGvcilqhBa
	 BqX8loGptRM0A==
Received: from mecka.net (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 8F75D377B81;
	Tue,  2 Jan 2024 15:48:52 +0100 (CET)
Date: Tue, 2 Jan 2024 15:48:51 +0100
From: Manuel Traut <manut@mecka.net>
To: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>,
	Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/4] drm/panel: Add driver for BOE TH101MB31IG002-28A
 panel
Message-ID: <ZZQiU7o9QQrm-axU@mecka.net>
References: <20231223-pinetab2-v2-0-ec1856d0030e@mecka.net>
 <20231223-pinetab2-v2-2-ec1856d0030e@mecka.net>
 <342bf5a0-8454-4fd6-be45-462f1e31e606@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <342bf5a0-8454-4fd6-be45-462f1e31e606@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_064858_985075_22322A49 
X-CRM114-Status: GOOD (  13.90  )
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

On Tue, Dec 26, 2023 at 02:56:58PM -0800, Jessica Zhang wrote:
> 
> 
> On 12/23/2023 7:20 AM, Manuel Traut wrote:
> > From: Alexander Warnecke <awarnecke002@hotmail.com>
> > 
> > The BOE TH101MB31IG002-28A panel is a WXGA panel.
> > It is used in Pine64 Pinetab2 and PinetabV.
> > 

> Hi Manuel,

Hi Jessica,

> Sorry, I responded to the v1 instead of the latest version. Carrying my
> comment over to here:
> 
> If I remember correctly, commit d2aacaf07395bd798373cbec6af05fff4147aff3
> should have introduced prepared/enabled do the drm_panel struct.

thanks for the hint, I will update this in v3.

Regards
Manuel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
