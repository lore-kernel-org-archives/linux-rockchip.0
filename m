Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33E2606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 09:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=eH2SwvPY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lhxumcU4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=9R86iK1c+GyPcmBOBBEy4IY83NArekt4iI5PJuvf8q8=; b=eH2SwvPYAaDshnj+opYbiZAswO
	1kqkX30B5wU0RmVCcMqRJdZXrfNXEZsfSC/QLIuByIEklzKiiVvFPhZOhxV0EXXvrQi1s0duT0JX3
	rJwQRRdM63+ZlMqsqZC4jGJUZEErunGHhoj3dykd6ihTxECcFFJ+X/JaMhmiPwkC5fASzzlnQ49t6
	Nn+GqPlG7BViQp9XVSY7YAJUMKl9Fb3D+C8IH63xyvKR+PTQbcgd4ch4PV9Ie1VxenM1xpDwsXcaB
	g+Vr9JLjzlUNXljS/iwvWsJ6tZjlCazgLYARtmjX9tuysLBnXH3lvwmETOl3DJD3y8XVxfxBH9ChO
	0P+E+32Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMMmL-00000008tND-2Dcq;
	Thu, 29 Oct 2026 09:50:37 +0000
Received: from mail-dy2-x08.google.com ([2607:f8b0:4864:36::8])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMMmI-00000008tMt-01R8
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 09:50:35 +0000
Received: by mail-dy2-x08.google.com with SMTP id 5a478bee46e88-34cbc588a31so1012872eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 02:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793267432; x=1793872232; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=wlSDMq+Onl3G9IdYH55u+DZBDAOLa9ewzbFQlEUFQqc=;
        b=lhxumcU4Y3WSIIpUvHnCXKGq4WnUFGWJuyfNSmWawSM8yTUbU4kNKstciXtX8sgNJB
         RK0ChmKS34Oh6q3LZ+ohNOYODF8/RouEGNC2Mh2HaSs74B/OaQlBr++O9vkRS19GrSWs
         aqNIJHMRhHG3rmjDOk+6xcq2tomUfDrTEHG2Hlqy29d6CCQTPxL4vcPuPurY95P7YV/k
         3G5TSZ3wd4kJ+lYaIItpNY+Mo0dcNxwLYZQJ4rnCisA+b3eDnCCafqOQ3SUldzAuH+fN
         +iFiWtj3sLgB7DBzA5g/X0O98nMy3wl6uEfYgLiHSLTdQhbdL9MbdkqGMIk2kK4cBg4O
         xuOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793267432; x=1793872232;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wlSDMq+Onl3G9IdYH55u+DZBDAOLa9ewzbFQlEUFQqc=;
        b=LCTFpPspaOXTGymsUhDO1ViPxyltvyxmM/IzV75lGC0t2I6M8T2zWoE2ZUqLGPkeRP
         7/WALzG7jQ1GHirhvc1/DAI7O8e8uysh+1N2Sxby+XT72qRZt9l1eWbdOaEHj5j/7obL
         jxsg5TMF9MkiylM4gtmek1MUNba/cM3+yj3OQ1+9keV92I7pfQCK2q/kxawhLmfvUtVT
         MoYhfcPHVbrnYzLaUGXWEEhnK4BVRttSdvwifVf8Qj6BmGsC4dPdGUYj/hPy9QyEVLKA
         LAEBWpioRtBd20J7aQJG3XDV4k/mN5Z1ov5THFSkQpQtgVo/SksxKjzpvYpZCy8sxuEz
         WRhA==
X-Forwarded-Encrypted: i=1; AKwUvBzNSxUhfoIdqtdF3KthEaXt2zxKm/WNjU4SwRAtQchRR2QzI2bS9i1KFymwfWhnUKmg4kPIeScDSzbLrYuRoA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIl04uT+Ego0b+SMSEQEDdR8WRSlDm7m2HdmbJucgr6MUGC3q4E
	/cG2HRRzflNpfoaWbID7d+Kd/LPO+AX9BRG4ZLtVDYwnXCz/ypmiBeaE
X-Gm-Gg: AYBFou2NnXYc0wUGxpOpLWkPLjA+rqQXdsueSU0V1SWg+c/kXAogUIbIC+exxUX2e23
	tHoFRqqCkCeHiVpn5RnSPuoMIrBfmGMa50XxUZ2REBsbJDmuEYuvvJBm612KJaS62NZF3mbxKdH
	sBjx7jWxpY10/3cOTq2SUQTSLF16HHzPJ7W1c/O3SR8V4dmJn4Xacvs4v0rnFFxlcNAsKb5KrPa
	S4VBC/4j+zfyrjjKAyGDtj4+F/dt+seMYawuddx9smH8reV2+HlHFsjFAUnZhI68n6f6325kyiM
	x1QPMYzxbSgs7MBwE7JrvT4MtyHca8kG5yvsn5fnbHcgpcloEEGhesRzhbpuvMCwBj/g/q/KiD0
	99IX4wLGLhiU3/puCnymOuEZbaSHaqm/fOwb+jc7T6/8VuQ2vmcQEGz7wRJxqA01OZiuKA/Vu4K
	rIkdjUkDAH0YUTPAb04XrMPvNdbEy06Fdur1FPFiYK3NCZUMeiWgYy/mD7Vdo86kpR/0YTh7R9x
	GUPSVMLyKqZVrbCYTVv8AUI/y0rAcOEsCQr8TdTbvWYW8lu+FvQKpI9sjP0oH46QAz1elipjNw+
	gt49i5Q9+RaywbOsbYJLzi1/mE8=
X-Received: by 2002:a05:693c:881a:20b0:35e:f1a5:9ba6 with SMTP id 5a478bee46e88-36a202869c9mr7131516eec.5.1793267432214;
        Thu, 29 Oct 2026 02:50:32 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a239338e2sm18527707eec.18.2026.10.29.02.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 02:50:31 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Coia Prant <coiaprant@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net] net: pcs: xpcs-rk: limit advertised interfaces
Date: Thu, 29 Oct 2026 17:49:17 +0800
Message-ID: <20261029094916.3127193-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_025034_048753_02EB6400 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII, but the RK3568
GMAC only implements SGMII, so only SGMII is advertised in
supported_interfaces.

The generic xpcs core fills the mask from the compat table, which
includes 1000BASE-X, QSGMII and the higher-speed modes. Clearing it and
setting only SGMII keeps phylink from validating interfaces that are
not usable here.

1000BASE-X and QSGMII can be enabled later when a board actually wires
them up.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs-rk.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/pcs/pcs-xpcs-rk.c b/drivers/net/pcs/pcs-xpcs-rk.c
index 6f0a110e32d2..cc11a70d624f 100644
--- a/drivers/net/pcs/pcs-xpcs-rk.c
+++ b/drivers/net/pcs/pcs-xpcs-rk.c
@@ -536,6 +536,12 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
 		return xpcs;
 	}
 
+	/*
+	 * The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII.
+	 */
+	phy_interface_zero(xpcs->pcs.supported_interfaces);
+	__set_bit(PHY_INTERFACE_MODE_SGMII, xpcs->pcs.supported_interfaces);
+
 	xpcs_config_eee_mult_fact(xpcs, pxpcs->eee_mult_fact);
 	put_device(&pdev->dev);
 	return xpcs;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
