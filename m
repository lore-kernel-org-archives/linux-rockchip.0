Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D57A1C3601E
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 09:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NbE5KRD1blv/JTwl7kg420sVut9DSy0R5cKhwKerpg=; b=2UHQ6c3+dhokZu
	sSn2H9hFXBTtnwyPPwC83iZQFbm17yeC2SzJB7e/eLvEi/8i+R0MOJt15DSMlmOF404xAu7lSBp4E
	mObc3+kptej1EQIHWA6vS/TYqYlBZrDqvZp0UJRedpmYONleWMsHEUWsB82lPO6lce4OWhE9y/OYe
	v9Fsx8yn+x7qy0sgh3c/Wc10X40W5jlpnSCSqH8yJKt2msrAC0VFzDL07j7KxgnaDdMCNSYax80rG
	W/wVlX6K3yJfbZ710dc4yjrE16E6gVvS3FmWR15RCcswtD8SKuNcLoat5/eoamqMWGjJC8I0X8d+y
	CWHdBHejsDk8KUWBZ+7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nr2-00000009s6h-2ovf;
	Thu, 10 Apr 2025 09:05:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nfO-00000009pAN-1hLa;
	Thu, 10 Apr 2025 08:53:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=ZXCoP5L2J4BtwaEH2n2GCfyW7YWDh/4SAhqwGfBIa/Q=; b=LMOo6+ICnSo9wd/0x+KdGHWkKq
	UgRoQTSd6ftNQ2A3885oQ20jGkdFObG4rxEVQtA2/ql8+vxJsCjYsuq5C7VsleaICi/CHRrTgvz0o
	F/J8eT0tGLFZa/REVQbL/ko/0ScVNyQi7eCydsEc29zJBUGjBuFu/Ou5NN8A2OxEY8/7iwe7oTCP1
	PwLUH/PUkw/EcOskWbW83yCVv4iGmroK9jbUrFJwquqoY0WXHbWxrNyhDewufFLhy2kuI3C9WXO3a
	minoMr0ucy2l9tO62kueLB8Yvq82UiDojWW+zajgua6aqtDGaGwPjPCrOX+lqK9+aYc1uCbJBuL0r
	4YmpVI5A==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u2nfH-00036h-1n; Thu, 10 Apr 2025 10:53:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v2] drm/rockchip: dw_hdmi_qp: Fix io init for dw_hdmi_qp_rockchip_resume
Date: Thu, 10 Apr 2025 10:53:28 +0200
Message-ID: <174427520238.842175.9547277934386341429.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250317102757.565679-1-andyshrk@163.com>
References: <20250317102757.565679-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_015346_440864_66757B13 
X-CRM114-Status: UNSURE (   8.52  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 17 Mar 2025 18:27:53 +0800, Andy Yan wrote:
> Use cfg->ctrl_ops->io_init callback make it work for all platform.
> And it's also gets rid of code duplication
> 
> 

Applied, thanks!

[1/1] drm/rockchip: dw_hdmi_qp: Fix io init for dw_hdmi_qp_rockchip_resume
      commit: 1d34597a1e23004c7dd0ab5f58ba1ef95fd9ded5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
