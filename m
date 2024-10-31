Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0143ED767E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Oct 2024 15:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UnBCtAjNmgFAZHDTm1sfYDCYcB71F3Kj1YRcCD6wUg4=; b=BucgWitNTnFViF
	oBHW7wwfMr7U8kTboa5pdBhTzkWJwNq6G9Q5Yo55Hanhhw19uzq/OxZkOSrTOpP+CEmSWw4uHJiGK
	Q3T73wjM9HSkRwM9DgPoMdE5R0ZrIeXEmbFdgja95ua8xM2PkjaslnA4+6Z4HXfGdpeWI/SHQpI1S
	LRoTS6jVHWSo0zj0/yLaOV6vZHR0hOSTdLCUkR/0JlvvhEefcE/2YHPreq8p6RgKDkFOqVLIAPdQh
	iVkVLONiK3Q5uaO3+lSQeel71EuWDPvt5MZGfvHihqIcqp4KSm8hoVoVRJn7+bfmMfLqAygFBakAF
	POooGTKM13/dg4cyC6hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6XAo-000000040do-06hv;
	Thu, 31 Oct 2024 15:33:22 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Wlm-00000003vMX-1MAo
	for linux-rockchip@lists.infradead.org;
	Thu, 31 Oct 2024 15:07:31 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5ebc1af9137so548535eaf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730387248; x=1730992048; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8IW7rqcs1hAjHGL4wafrL1bmpgkKuuHkt2ZuAKXwYMc=;
        b=nPErQ8c3MkYlApUnkfTbk5dpQJ6adQtDPfVOrdqRuUGSvz7SkLevLaosQMVyux1PUF
         R85VD8K3r/weErZeVJc5KesFiEIemCISAEr1kL/nq2PfrXcykxxZ/Hzwsza6eiEGoGuM
         xfPebZYaEQoqVT+KY3lRSxCJBg0xvy1k8ajyMaQf7QEz9q/Qi18aBMH8yFsYhMJ9jppt
         Ld4aDLfPwnNMjdo3yhud0UZ2pC3/VEBRpFN+MoOYkQzPMEyMQpZJn4ASbGJvB5lktICQ
         QvBmwP/hZwgIotWGhtzl5FqLjVYBDqnMVpEh+YQ3FiFA/wHLGguuAECve2Q4ch1RLB4V
         2Atg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730387248; x=1730992048;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8IW7rqcs1hAjHGL4wafrL1bmpgkKuuHkt2ZuAKXwYMc=;
        b=kEZiUwNtzAKG9lA8kj5SusLr661XkNCIuyFJ7BqJna5Gxf2tKb3mRAeYaZp6sI2qNv
         wyPa/H+oMgHzFTQ3kyYIZxD7yTl7/0R6oSpNbnSIQHwtExIFB5vEylPY781TePNl/8i6
         iibleqU7uWxLjGNCk6d+VeHPrvK4gsFfnaIyk1y3KzaKgiKJENLPakK327hA1IiabzCi
         dA/3vVJnBq6a73+RmSdvAOOLs+6YgyGo56edk+4heKLzaGW8iUT7/5qXvjq9UeGcCIgX
         SLPVSWCfght/j0Wl0ATGhapbuXYesiv3ne6DogjIIAaTcVc4RREecW2hplF9/xkp6OOx
         8vsA==
X-Gm-Message-State: AOJu0YxAwuFB/mjswQ3zdAwgRetRZGA34NdKd3TvoR1YF7adyJzguKhI
	XUUqR+zg5D04kiJSTfRlYvq5miWLfBn6Ri64owpX4lhVOYXRaQrxgBfJtg==
X-Google-Smtp-Source: AGHT+IEDCmjGLQ1ZymVIFF98NcczWDg5QGWiz4qeA4bXzBZvsrz23YDqDNWAKMgzVh7If7fnJtIABw==
X-Received: by 2002:a05:6820:2221:b0:5e5:c456:8996 with SMTP id 006d021491bc7-5ec23a1b95bmr15017385eaf.4.1730387248309;
        Thu, 31 Oct 2024 08:07:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec704bfefdsm317330eaf.4.2024.10.31.08.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 08:07:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/3] Indiedroid Nova Audio/HDMI Updates
Date: Thu, 31 Oct 2024 10:05:02 -0500
Message-ID: <20241031150505.967909-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_080730_391139_F1E42FA6 
X-CRM114-Status: GOOD (  10.01  )
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

From: Chris Morgan <macromorgan@hotmail.com>

This series is for a handful of fixes and updates for the Indiedroid
Nova. This series corrects the device name of the audio card to stop
a kernel log error, and adds support for both the HDMI and GPU (now
that HDMI support has been queued for linux-next).

Changes since v1:
 - Corrected HDMI port from mini HDMI (c) to micro HDMI (d).
 - Explained why I enable hdmim0_rx_hpdin in contrast to the other
   rk3588 boards.
 - Split HDMI0 and GPU patches into different patches.

Changes since v2:
 - Removed hdmim0_rx_hpdin as it is not necessary.

Chris Morgan (3):
  arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
  arm64: dts: rockchip: Enable GPU on Indiedroid Nova
  arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 57 ++++++++++++++++++-
 1 file changed, 56 insertions(+), 1 deletion(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
