Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC90C77B7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 May 2023 16:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jGxLLUtQBQh1D4PH+D924cZ1PpPzUFPrfHO+fzLC7xo=; b=cxFF9DlQz94xue
	KZQnPfGA1PXheCdH02hudxA0RVnzclVKmbWE9RR+aR7Y+FQl7YvMrSx31vXZqLXzn3lFOnBiEMC7s
	xrQ8jXcE/T9RUQyJOlMtmkzB8yWGVZCnmtkoaX0UMRZ0tEB7zdmHZX7DAThgSayChBsIxQ8o4civQ
	uaWw1CbdBMMZhpNiCGqwI+YdaUvTwA9F2NSFVT8JcpA+pbSHbLPvt2MPp0IV1yL/crulOdOhPby5I
	8KS+gVE7XTRNZyH/BRHJFIAlMc3JlwvHvLvhovWrUkyu1nA5qLBYu+4z/OiweTrRG2izulYamuK7z
	t5nYJqBCGc0plpnc5+0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw3PT-000vt8-0x;
	Mon, 08 May 2023 16:08:23 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw3PR-000vrs-0A
	for linux-rockchip@lists.infradead.org;
	Mon, 08 May 2023 16:08:22 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-19619af9a02so463642fac.2
        for <linux-rockchip@lists.infradead.org>; Mon, 08 May 2023 09:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683562098; x=1686154098;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6LD3Dby/8UnB2TQdVJHksGEYFyHRfIWgMsXp5YA/0W4=;
        b=fv3zAXMWgoVbs1CNjix7xqZhp7ZHjFyyPxJYOQgqBGFG8v+SbeVQR9CMdft37GVdyF
         AM5E8b7gsBh6Y2in3oYDTZ6Y7u+w932WqRpWbvAXfXOohbIRYzpT9y06O5CulPZRSjTj
         c3QzY1nqECc1YF55onWTh5W0KzlEIdd4xJKyOxPWlnqraJcK5G7+/aujSxGqiK1uWuT/
         T0unIBATCXxqLAqFMD17R2G6DcV1oEUM3MH56OiIV4bAzAzU6f1unfGweZhV33RLfvc6
         PjY7Ss5pMW90GGxs70Jz8XqXaufvMzOyqtdsBZAZ+6yqGpSgcQYCVgf0xuDpaf63Zx28
         zK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683562098; x=1686154098;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6LD3Dby/8UnB2TQdVJHksGEYFyHRfIWgMsXp5YA/0W4=;
        b=ILg/kQGibvjdP4ZW/0iwQlGcNAuCrzmJp1fINyMexKk/snZi83FacZYb/y+0chZ53W
         OpLktxueAsHItRvLSsTXLb1agB//jz+8ZZEv7dQ0q3vkIPSgQ0s52L89ScQo15NxMgTM
         GCCwhTu1pg5wbPZmrCxpfNdnW+uSlnuPHdqFuw6094mNOOSaFIey6KiiyaAxVIrT9qUX
         Tu/wfikCj6AMNw0DoHRgMrNOMj5p/FLtlthcaihj7gvFkClp+pXBI+GMXwCcT+/+8S3r
         aiTjfkpxZPGK1aLK5gSz9mQY2FezaW2cBUBoLIimym086YNIvD+32AY8zQZREH9C0zBd
         ND1Q==
X-Gm-Message-State: AC+VfDya5xhREmSzNsQlCcMO1vpfgT9mkjQ9lxVrTieKhs4fQXh7XQXS
	Zi9bVjFx02Hympw3yurumv8=
X-Google-Smtp-Source: ACHHUZ6s4IMyzdiFjAyMenwg+XGqfN9NJsOwu0Yq0SrvJQ7Ut9Qxq/5PQju1U3Mrr+lZYef3ZHGkNA==
X-Received: by 2002:aca:2b06:0:b0:38c:11b3:a397 with SMTP id i6-20020aca2b06000000b0038c11b3a397mr4754488oik.14.1683562096550;
        Mon, 08 May 2023 09:08:16 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v206-20020aca61d7000000b0038c0a359e74sm136391oib.31.2023.05.08.09.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 09:08:16 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	netdev@vger.kernel.org,
	anarsoul@gmail.com,
	alistair@alistair23.me,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] Correct fallback compatible for rtl8821cs bluetooth
Date: Mon,  8 May 2023 11:08:09 -0500
Message-Id: <20230508160811.3568213-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_090821_086701_4A861E6A 
X-CRM114-Status: UNSURE (   9.48  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The realtek 8821cs bluetooth module is functionally very similar to the
8822cs and 8723bs modules, however unlike the 8822 module it seems to
struggle when power management features are enabled. By switching the
fallback string from realtek,rtl8822cs-bt to realtek,rtl8723bs-bt we
can instruct the driver to not enable advanced power management
features that cause the issues.

Chris Morgan (2):
  dt-bindings: net: realtek-bluetooth: Fix RTL8821CS binding
  arm64: dts: rockchip: Fix compatible for Bluetooth

 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
