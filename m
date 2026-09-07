Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88AFEC79FA0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 15:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uo+rHlEHXmYnMBy6RzBY0dYaXDNsxU9TZuviDZNOI0g=; b=OUnDKfKRnDTyBP
	GzHadMadd6fc6fpFrVp4dsQ3ftjfbVFXPDlPUlRzxKIEhj6ihuyEbeqnHPR89QKsVg7IdQvdCQsMH
	12UPbBqQN2r/zC9YMX2nQvbujR3jEPK+1Op+IlvrOTnvBelzBcNvsb4P4aXqlPy6abTUqgb7GrRad
	WCVTlw2yvRryAchtFiW7ODpzcPYhocz3srs3H3qg3ibzXRnE1ZkT5i8Wpazv9VfW4U3Qs572pxqvM
	pxkXE5yxDzESAZZmVXMAr7YAOuJI/zwUJIduYgCYvDafdN61ojSyd2tY9brA8RIDevaprsFoBqJIc
	DYmR1HreOs3LPyK5skMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRx-00000007D2P-1o3T;
	Mon, 07 Sep 2026 15:40:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRu-00000007Cyf-0DHk
	for linux-rockchip@bombadil.infradead.org;
	Mon, 07 Sep 2026 15:39:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cBvlH6prRmF9is7rqvJqNTGgh3P2sJVPtfOXauJIgQo=; b=EHqtiInrd36b/NLFuuLVd1nCRQ
	Y0nhoRQzr6Jq/wdG5nINoCn5kCuKeRDkVwBnXF00nP0OVPPinmkLDVrzp5M9YBQYzoMzpb4O7YQuE
	6kAN8E9iwM5ftSWYIITy4XYCZFRtPIN4Om21wH4IHyVQjrFt/KiVyzt9ZkmU70cNTVk9URki5yOSY
	Ma2gSrjxUIs6jKOxfM70ALEi+3ubIqGsQodw9RCwQncK76q+uployLqvNqzOx/TcsiXTVsLboO3gW
	Ed42H8M7K95wT99RAAOtlGhPdffKh91eKLVwF8BBrhxmAc29kRdEblZODBA3/2udBwgEZiBEuzw6r
	2fL+cOMg==;
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3bRq-0000000GNzc-0oeJ
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Sep 2026 15:39:56 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-398a0a87595so3223589a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Sep 2026 08:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795592; x=1789400392; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cBvlH6prRmF9is7rqvJqNTGgh3P2sJVPtfOXauJIgQo=;
        b=GwXGyKvReONJ65PJNub7feRB9CZmDUbdoTlCxhS8WTKE2J1+c+0dDSLSk3KCR03uAV
         gbPuTI3mv66GvCfZypjCCOmBmnJE39FHOCRdYEmA2VCBe7krn3oHxVlkLnuIlMWwZHMY
         Jq2b4iNDvlVMQoZwLnoF/ai9ugN9x0geDXUgAIJhhpi+HW3uLMvNMDYPAnPsy9Iq45+1
         egKnsd+H+bkDIeij++JoH+gzURmZABMYnT7DXyBgj9W/W6VMuf7wgL5RBsvsaJGZe3la
         5KTTMG9zx50H3s9wArAxigkU3LXKzY2ksAkC4aHeCTDxyLrNhDSQh8a6Q+bTiRjN2h5J
         FbTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795592; x=1789400392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=cBvlH6prRmF9is7rqvJqNTGgh3P2sJVPtfOXauJIgQo=;
        b=YSOciNEXHT5TJ0U5SAT0ygEBZEN0W9Ex3EUpx0TQArAb97Bl5+qjSRokyp1PBC6x7Q
         KTHqAHDAaJ3jRcI8G8gNiRbT1aUsghp19jcThnLSZHm0diYZRWrKILgulZWySt81JKWT
         3aH5LVrwiGW0WMwu0gst5t++nQdHtQzx4mY1YKhO5sGbY+wl4JTCAX/Qx96XbZ7JXnv+
         1RMhr8HBlO2hXKBAvuZ8NhQu/B+pf1VBVGp/LNd5I5b/OKWMZAliRnDkKLlG7NtBcOk+
         UCLWOC2rEB8u0T7h8fTjgIFMU0P3X4DcYM8su1yOik2Vu6i5MgZvQqY6pZGcEx5NjAjh
         wPfQ==
X-Forwarded-Encrypted: i=1; AKwUvBw+q5xtWf8Rq6zRmvYSEusrxPavf8kopjTq/Nppu0jljgEVjzzEzNYoUkuXk7yspElxB5Xd5+PT6IEh3gimDA==@lists.infradead.org
X-Gm-Message-State: AFuF++mSQNrjY6bPVCDaMD6R2/lE2s8QiJ5Wx8sHANe0LxncfM7xMJjn
	Th7dwUl3qiz6QDTazVOCHxFUr42T64Q/fE0Y/Z0+/rxgwZnp1mUnV6Zt
X-Gm-Gg: AYBFou1Uizda4KR7FsGdqSobZS6I8Dvs+vdtG93ff2U9+yCuzWrB8catHEm/hE+kp7Z
	IJWsPwVTC2Oijy3ianTJK03E3HUXKCs03PCixWoJOLePR5j6FsBKaS8zsBBjDMRWQqqA2cu17MT
	W8F3g5AN5OWwC2OjWtZ8jYl+oJk/jdRgZog7VrRTQdcHTduxpWuBB2eRMoRv0yzRZ1fwr7N/fIv
	72L1vf66mdANFXKTaowrGnw9xxBdlhZfXo1pm63BNhlQB1PhFVfEV5+BXxJuZbiqzvRTthZ+SDi
	k2oTqFxJRw0iREebAG4dqUv6QfoVssw15DuJTbh/fSlCK6YDZcYlxoCsuK97s4O+X/jpHxQaEfF
	dtO/aCLctlJgnYqOmiPjJDYcpZPwLBm/1+PX7Ut6Vqb2zdKRtEKtjxGttRD54zZQ56PAaE258Lw
	5rtDRwNZOIlhDSHQCI6b2el2oORlPJZUAQZMVgNV7xLYBuJl4dPNyoELWMqS7g
X-Received: by 2002:a17:90a:1c96:b0:39b:66ee:a14 with SMTP id 98e67ed59e1d1-39b66ee3442mr7209213a91.25.1788795592309;
        Mon, 07 Sep 2026 08:39:52 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:39:51 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v4 10/10] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Mon,  7 Sep 2026 23:37:13 +0800
Message-ID: <20260907153713.2572547-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260907153713.2572547-2-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_163955_206600_D282052C 
X-CRM114-Status: GOOD (  10.58  )
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

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fc320b373656f..dda4d211b7db4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23738,6 +23738,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-rk.c
+F:	include/linux/pcs/pcs-xpcs-rk.h
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
