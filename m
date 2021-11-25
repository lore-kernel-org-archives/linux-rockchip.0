Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F073AC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 10:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N5gglmk8pHgIhxuxgJ07RLiODj5ebVVgGH0s7QQhW/s=; b=tYVeGzPAOtntCO
	Eeqs8cK8A/9rqeqjY1uQ8sKngqI20rS+Sam7Gmo24bmY9UeH+gqFzV7Vc1tAuKR20zO4aqXPAemIO
	7QUMYYe8cIMvhaOCjZ7aWOLcqTA9IVzYiYfQnAiZLSgjKtNXVapXXS3bb5KtdlevDZ6wBi8OV6r0e
	uTmyxz6/j7rsjtUT5m0EDE7SkmpDmSCf2lVkSEd/EUCMISQDbr9u0P5+PX72F8XsDN+oYqNPVjAza
	2F6RevfdK7YfbUyqTZWQNhwfHw2E4UYEX9Q7K0w6GaIiXG8qCMxIViHNQmaSVlmfBD0QVCtG5b0yi
	IBqDvBuj3q3wa43ieVGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqBhC-0071gH-PP; Thu, 25 Nov 2021 10:09:38 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqBgy-0071dR-Ou; Thu, 25 Nov 2021 10:09:27 +0000
Received: by mail-wr1-x42e.google.com with SMTP id i5so10444898wrb.2;
 Thu, 25 Nov 2021 02:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J+AtvgH+7tJCkwntCUuKAinCiI1X+dL5Twz4eHbpnSA=;
 b=HxLT5Q1gn5HUt2NyWHrfdnd+rnUJS949xIcNw6EQXva9nC1+AU8e+oPVbDXQHfJtNZ
 w7vdjVlJZFaxzarDK2i4Wkzhqn+derFY8ugo5Pwu6CAses1ldHNypA3Nm83w6Jzrc7zK
 MBE0JYCC3xwrjXZJQTUQ8G6THa0ljYucoGHQwyyOEEg/eVZAN+0YAH5yn9VMZVvHsiMC
 9xYo+hViPXrQ1xgzlJqpk6foca7iIytbdk/q8elp+QK0RUJC2H4uqAGDvToJl3LueEus
 6mc7lOEVzHfEzf+RrT8NZAfAiGURADZl9U+hX7GAH0IkYWOe2bXNX/gt0c9VQu2JvfdI
 sNOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J+AtvgH+7tJCkwntCUuKAinCiI1X+dL5Twz4eHbpnSA=;
 b=N8JyrFvvK//y/mbiqn4uAsCtMxaoFd1bgU/dr9aotw0LVfVFoDNQWpdinSqa4kVg03
 oMAJhjr4a0BQlQ0RG88Nc5Zf4f/sSikg2UkafQm3ZMmTs+pmJm5YrPLUggTM1WVwX/tD
 3cY0nUYxjCmbgBqK5fODtnXD+0fzKf3OXHQQRc00oVPNwbL2399AfgrlAyXd/BFIxfge
 85VnDypNHNO/VymacwNznc7TFR98dVq9trVX42KtXp6RjUWjKeae1+egzypcRnOy31gk
 l2YDZRoiwMiZlszfU6oRQ6yQwI+4Z7awzHg6Uhl/csnUjJXdPfSvY8YZii0lUhoBJ/uE
 MDPA==
X-Gm-Message-State: AOAM533m1YGhieuJoQPTjS+zUHyh/QvwnrelGlODf4NROV+PcPfz8j5m
 AaMAPy1SCrln8abnApHp808=
X-Google-Smtp-Source: ABdhPJx2/KokuDdsW4Y+JnPROVHOSvBpezAOB9oUvI0LHwE9CQPCaZKK4T/lBrFt8o/nUhI3D9vQOg==
X-Received: by 2002:a5d:628f:: with SMTP id k15mr5307647wru.363.1637834962587; 
 Thu, 25 Nov 2021 02:09:22 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id l7sm2903533wry.86.2021.11.25.02.09.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 02:09:22 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] HDMI Audio on RK356x/Quartz64 Model A
Date: Thu, 25 Nov 2021 11:08:33 +0100
Message-Id: <20211125100836.423808-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_020926_530302_547C416B 
X-CRM114-Status: GOOD (  11.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This enables HDMI audio on Quartz64 Model A, and the RK356x SoC in
general. The patches require the VOP2 patchset[1] and my I2S/TDM
controller fix[2] to work.

i2s0 on the RK356x is connected to HDMI, and only has one DMA. I've
confirmed this with the TRM. With [2] the driver now handles this
properly, and does not try to register a capture PCM in this case.

To test this, one needs a video clock, i.e. there is no audio if your
screen is off. I've found that running kmscube momentarily is enough
to make the VOP2 keep the screen turned on indefinitely, which is
a pleasant quirk in this case.

[1]: https://patchwork.kernel.org/project/linux-rockchip/list/?series=581709
[2]: https://patchwork.kernel.org/project/linux-rockchip/patch/20211125084900.417102-1-frattaroli.nicolas@gmail.com/

Nicolas Frattaroli (2):
  arm64: dts: rockchip: rk356x: Add HDMI audio nodes
  arm64: dts: rockchip: Enable HDMI audio on Quartz64 A

 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  8 +++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 32 +++++++++++++++++++
 2 files changed, 40 insertions(+)

-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
