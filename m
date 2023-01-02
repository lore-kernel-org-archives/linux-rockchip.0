Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79567C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jan 2023 11:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rwHSqIdLYjrCt+KfpKVQXiBJwHIPLBYYKJSBSijKsCo=; b=DZ+xB7RLp2/gXV
	SmSlsW4I4myDxcUMPWbgivaAR/71Z3KMHS8niEEvyMspenJFBgT+3dkJuI7PwK6c0/r5HwA6lyGrv
	yU2a5hc4UjNy6OACWbbrRw1BwRERADWjnaykp+DtohR7hssHrviqX1IBG2FoeVa5z4zZuA5gjWem/
	SR1OiTHHS8sNN21BEdyKkL/u7dMG2B3QUizqfUaxwM3KJpRCvAayanYDcrNX8P4+EmY5BYVMEpTBT
	Mf141DMkmc47qR7S+puPj5gZJqvbeVf+4hko0uyXqUDJEVR45aX57/gka2UhaqItIQlxz8LfZWsq+
	AkWaEzeMBWSHq4t0aZ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCJ2P-00Aq4h-CA; Mon, 02 Jan 2023 11:31:29 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCIzu-00Aobz-TR; Mon, 02 Jan 2023 11:28:57 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d15so29320338pls.6;
        Mon, 02 Jan 2023 03:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kBKmxmk+PNQSBGyHxHAqURGaUcC718UdtWX3gmDzrTk=;
        b=NAQxwnqMteNLaN4SsuUnZfL9t+D2xNfYU8o7Vk7fCwBwurFz9/zAtWZ1z3GH+hniHQ
         JZWPH7Lw6aMPeWxoIZK51WFGGSOxbgH6V/rdZBKsQThip4qq1ZPFdx8GNjss9Hg6u6MF
         Wztnpy+B1a+LbFU7EfQIWtXknb+b13y931EZNiwePHm3fMdZ9lAwa5z5fFpwMdeHOuBx
         znwM7P8QSUSgkl8Y9gRV81N5iKMV294rsdiBY9u8nkXv6YiXgFKSBUTO+LT/wQAFW/wP
         t5OfF42Wz1Cd/bXNIymbZm9NW6lIbUw4dBKQHAeeNw2p/NiNSVmWyQR6vmVaqBbFDwDL
         dFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kBKmxmk+PNQSBGyHxHAqURGaUcC718UdtWX3gmDzrTk=;
        b=iDHo4EJ7JHi7Fd+inXl8nt5lB4AKVAgw15ShKWH941RqfLTraL8N60YjhyhyJrC6lN
         tT4Wc6oOzrovU6ygSByDDDA46ZYejROT3gNr1dFb+3PA9FHF06TAQuHe83B3hzgmYVLx
         78J0ouzzcyRYX8+1tAT9eEXJamWxONFWe2l+NOMKZQ3/WND8dlD2ho1IEgZAoSAVVTsZ
         Q1xcjpMdhoxKGEZJ3ArBFcqPGobLV041zvZRy6dgNKILcjws7my7+svnyc2OUyTISqJD
         28sO6VP6IczjJK+ljlw+nzYYZlSfUQ/I5oQo642J9JkjN2Buy7VgIWwP5ACoZM6SkhHe
         rtlg==
X-Gm-Message-State: AFqh2kpZ7o4OYu4hreqNXcq+VUmYP1OPgwMaXhMMJ+9eURHykC1fQAGZ
	QXkLDtLM/fO8M6PwN6EBnBEXB3WHZUkQuosJ
X-Google-Smtp-Source: AMrXdXv/9sCjzggdaDkY0VUokqf3GLUZF1q5QPRnxXrit88ybAKuI94pRMqWsDHuwcHl1eRBLCOLJw==
X-Received: by 2002:a05:6a21:3a48:b0:ad:5cde:5beb with SMTP id zu8-20020a056a213a4800b000ad5cde5bebmr49641340pzb.47.1672658933920;
        Mon, 02 Jan 2023 03:28:53 -0800 (PST)
Received: from localhost.localdomain ([202.120.234.246])
        by smtp.googlemail.com with ESMTPSA id on16-20020a17090b1d1000b0020b21019086sm33140160pjb.3.2023.01.02.03.28.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 03:28:53 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: linmq006@gmail.com
Subject: [PATCH] pinctrl: rockchip: Fix refcount leak in rockchip_pinctrl_parse_groups
Date: Mon,  2 Jan 2023 15:28:45 +0400
Message-Id: <20230102112845.3982407-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_032855_198720_BA27DAFF 
X-CRM114-Status: GOOD (  11.32  )
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

of_find_node_by_phandle() returns a node pointer with refcount incremented,
We should use of_node_put() on it when not needed anymore.
Add missing of_node_put() to avoid refcount leak.

Fixes: d3e5116119bd ("pinctrl: add pinctrl driver for Rockchip SoCs")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index da974ff2d75d..0bc3dc2220fd 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3036,6 +3036,7 @@ static int rockchip_pinctrl_parse_groups(struct device_node *np,
 		np_config = of_find_node_by_phandle(be32_to_cpup(phandle));
 		ret = pinconf_generic_parse_dt_config(np_config, NULL,
 				&grp->data[j].configs, &grp->data[j].nconfigs);
+		of_node_put(np_config);
 		if (ret)
 			return ret;
 	}
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
