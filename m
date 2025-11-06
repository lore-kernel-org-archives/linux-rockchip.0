Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58A8BCCFA05
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 18:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zQQKahC7kJnbnHL7aJ8rd+fPAWeTpwjCFLmb9oTCQWY=; b=ydIwBJO9uNLW65
	ugamgtt5klKqDO5uYRAXUJM+oIIrkXd7CPgs1WOwjhMveG+57vEigyRZqRzFvPgySF1pm8tzPLdwl
	OAAu1MBxSjIwCOvS5hvmmB9poY4h+dokitKXP/jlu8SoCrWpGIiWnDUdrttXMue1fAcX85+XG+9Op
	PcQoI6KuljdiZ28QmaaK7VPIhSJrRGWwSPXAtAGiYwnfHGs8AuEHob1sBm54Va2NzokBViNhQTGEp
	qkjg+21UBKf0FjoZiEtmIepeBoJelKYmXEx8F80HE1tpo55/GjlKXFlvribtKJc4aAem2JzwxGYqT
	qrRchc2QYKG+FSqYql+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH4SU-0000000G4rC-2RFj;
	Thu, 06 Nov 2025 18:11:42 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH4SR-0000000G4pp-21uU
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 18:11:40 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-3c92328d0bcso719636fac.2
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 10:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762452698; x=1763057498; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cpT0TLdGzfQfSoii4/bs36ZSx7naUbNo4dP7DJ25fa0=;
        b=OirAU8IUGfpqjxGOJAz8bAyJgEH6o7qDhLiS4HYAyh5rAHs225EQ0thgl/5tTuZ8sX
         e+GUspz/FiicWpVjb0UULPxQ+f4AYtHwTR++lE73YdNzFzJ8NpoK3IwD48GeUSvdZ3c5
         uSFd9SmpvoU2bEXoFwC6ZpnloilIFVkOLoyQ1kZR6MgzapJIKP+nHOq/ioy+2KtKFwEv
         sFi8Q/tkZvVDQ9tK5FdsrbWVhDB/UkhemVg+6tNsVjK2ylC/sX9u5QzrrfTEnAglceFx
         HMKZnep45JXhf0TO15T7ZfB7vlnALV6kkmpBuhbHGzIu/vfBodjYo4+NyBEa11aE+X+F
         Xp2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762452698; x=1763057498;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cpT0TLdGzfQfSoii4/bs36ZSx7naUbNo4dP7DJ25fa0=;
        b=G3hxNTRjK4dGHgvgxUgQaojOGsnzLK8VL4WnfXQAOsj7BastInYk4hZcMDPFZzBt15
         MeqRtcIbHv5mp+DZEmnPug8buaRbingJdUU10XxWxAcgLDr4Dz1YRB7pKRBom8NcVdDN
         mTV9i+3idgInDQZ6AOz4VEnuRTxYkGzkMtMkUL5E5VUhCuoY3rOk2qnr8xfQLIs26Goh
         I+m61Zkv/kWK6YHyZ1sF3pZp+1zGJaPQJDiOySBXb/Wpq6sKXKEp6TZJ7tXmZJuvGypc
         YejtsSikkGLyZL7tx5yj8Xu15Kdiz9bdVwKNBr9eGrCERUYc708qtQvqK72VXVD4rTtf
         738g==
X-Gm-Message-State: AOJu0YxNUgQHGaca1/5VJc4BgzN2du5B0qFqW0NxLgw+3AWkwLaALPzy
	vgiLy5jaK3B0jzWSjW731VQWNS3bCsMGeUDoutSnOmXwsaTkaXvjjb/p4a+QZg==
X-Gm-Gg: ASbGncvC3eQP2x5dsF4eud1EH7XH98GC99SCiv9POBZWVxkacmV4+o6oPcZBmYIg7Xx
	Gvf+sxTT44YU3qrJmCmEgpPocBZD5bspBghKSC+TVWSjM/eIOPG4JZG7fi+pu7K9E+S9KsZMjta
	xiAg7YUQt0wjDJ3sAA8vAknFVb5iveyFM/50Nd6OLeAciogEAdleZCTjno/2kIsr/oLb4bNAVlc
	yRSIyhRE/YSphWNZA4Ci0LxXKZHu8G0QLTr5VPOlnUExaJft2QKDqMb+OOnMaHw+uDIYrHTUX7G
	+WWvt3eynUFI8QuW8Xxozjao7eRuPHz3y95RzRVY2WUcgUSwfpZG+yG0pa4MvEmPX/L1nr3LXQP
	se46TWu7l/2ogIpjP07EfNZ7WOXiXojAga88utjsZuYYDy7Ojx4bKljUJDe0gFnQw4R1wvmLiSM
	E32Uc/YRC01BTVpBZCfNg=
X-Google-Smtp-Source: AGHT+IGAvjoXA76/UDaqXpOU4Fcz8E3D7Krbf8yR4RW+nCN1vEdGUmxv0HqWHlh+xaipNHgHQc4imw==
X-Received: by 2002:a05:6871:5b1b:b0:3d2:5ad4:4e7 with SMTP id 586e51a60fabf-3e41e6afbb2mr348131fac.47.1762452697786;
        Thu, 06 Nov 2025 10:11:37 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:41f9:c9d3:db30:c36a])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e41ed0aa06sm137739fac.8.2025.11.06.10.11.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 10:11:37 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 0/3] Add HDMI for Gameforce Ace
Date: Thu,  6 Nov 2025 12:09:11 -0600
Message-ID: <20251106180914.768502-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_101139_664225_75F526F6 
X-CRM114-Status: UNSURE (   8.57  )
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
Cc: mripard@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>, rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, heiko@sntech.de, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the micro HDMI port for the Gameforce Ace. This port does
not have a HPD pin so it requires making changes to the HDMI controller
to support this configuration.

Chris Morgan (3):
  dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
  drm/bridge: dw-hdmi-qp: Add support for missing HPD
  arm64: dts: rockchip: Add HDMI to Gameforce Ace

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |  6 ++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c  | 35 +++++++++--
 3 files changed, 100 insertions(+), 4 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
