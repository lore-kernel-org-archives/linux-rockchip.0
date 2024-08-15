Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5B46C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 10:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9lCqCb+sPt5A24a57mWzZvRjuJaD50hM2pLc/vV2wAk=; b=xQ6T75U1qzoySc
	czskJwQvxu44xyDEal2q5YWwW8QeSPTHZSpT0MskODBXPVHFYWJv5U/dDg1tXOpJvmi/fjbDiYz4R
	vDK3wjaIqV3PH8DukqV1RUfca6ErzNWt6biCQPHCWqKbVTae6wo2TyWP3Bexqh8mkOykaVwozf+hi
	CqOfX2/iW+tSI4cxgf2TnLZhqNBkVenzP7erRPyXDxhRnppZgo3iO4yw6eXky0KL+8FEyVmzZK879
	5XRdknQJgn2FmfTTAce0kkSvCjO5uDwih8OYlMvPtxC401cNfIZLQk0+SV0Dtcs4bhcV5lFaAQqlV
	++U82ReHj5QCdeS5k+dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXx0-00000009fX0-1tZo;
	Thu, 15 Aug 2024 10:43:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXul-00000009elJ-38t2;
	Thu, 15 Aug 2024 10:41:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vhK51bOti9km8q+PAjJsqfOkQmP4br8Lmu/o8WHP+Ik=; b=14QS5XXz34UzotjhZznoyjzdEA
	zzVIpq0gV+HQvvrrJl+RHNosEAzZHvmkjOgS2pkFcoh9l2JVbzIBfUGh3umXdsH1RtuErY1TeJC4v
	YsO0h5O+HWa/+RggLJ7CWM5dxiwUT4fBBEHqFSgxiVqJpFFc/1gBg5vZu0bUG0jGD55kPyaEg0CL5
	rP5GftLnRDfH+inrGQca57zjD6Um+JRCef3VzAuIuD9lMWbfqeTGf2SxHeinQmE7kvFPeQg25SHiz
	S/G6I/Ws6i0DRDYqkcMvU+lfN5PnBAJd2vYptnxuMyoX2tEbEdMnbxGDaVMrho8yOikQNBOb1TKec
	cBH0FPwQ==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seXuX-0000oc-0A; Thu, 15 Aug 2024 12:40:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	David Airlie <airlied@gmail.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: inno-hdmi: Fix infoframe upload
Date: Thu, 15 Aug 2024 12:40:51 +0200
Message-Id: <172371844381.722173.15806804441564466230.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240805110855.274140-2-knaerzche@gmail.com>
References: <20240805110855.274140-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_034107_875076_F835AE64 
X-CRM114-Status: GOOD (  11.55  )
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

On Mon, 5 Aug 2024 13:08:56 +0200, Alex Bee wrote:
> HDMI analyser shows that the AVI infoframe is no being longer send.
> 
> The switch to the HDMI connector api should have used the frame content
> which is now given in the buffer parameter, but instead still uses the
> (now) empty and superfluous packed_frame variable.
> 
> Fix it.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: inno-hdmi: Fix infoframe upload
      commit: fd45cc614b8acca5bb435ba37fe9b3f9a17fab84

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
