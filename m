Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35325C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Dec 2021 08:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNQQV9PrJthbTIVsfxNoGNb02cZYj5io0JvyFQNOj3U=; b=n5MNgUGVkPQj+F
	Pkql2dozGqnrVoXPSnizyRxdcHGewQC2VTlL7s2w9HgkbZe0mGYfPWWBhE69sPW6Xgjl/ak/h4gXz
	LRUFbC29PD1dVwiheKaEO0g/ULZUpVxqI0Y8nYuSJCoOzX1sLDL8jLtRv4VJvVRBsLaU5fY3/VsOI
	E9WXd6klz4XdOLf9fykth4gL7uHcBYE6k8o5z0WAbCP8DaHKa5dqCyICoOAQIVq6ApnJewprjnig8
	vYaSGsc1lI9XChyEPbk8hn8UfjNdY9o+aI44/X7YatFeDAUKQXFyBQbZQjQgO6spRXHR/glGfAFUQ
	RFUyQTywisjMtDx5D8Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n3DBl-005oIE-A5; Fri, 31 Dec 2021 08:23:01 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n3DBi-005oHP-HE; Fri, 31 Dec 2021 08:22:59 +0000
Received: by mail-ed1-x530.google.com with SMTP id l5so72021142edj.13;
 Fri, 31 Dec 2021 00:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iyG7F3GdrDJKWY8eEfULl873wU4wHKuuioOu/o/7Pyg=;
 b=mkKbfvzLgF55wWXJhcr7pCG7rLOzH2Ecm/DXt5W74TZW/RswduqkpsR3ATTHTxvp6d
 MgmDfmvajrZFVFHq2FOVIPQxBo2+IiuMtU3c3HiePBHdLiAeBJoz/xT4roLKuS/O1Jqe
 03wxPpT7vwcTN3D8p4jk/AcOnxxtTTjWVO8hyiEgmJ6EpxKZqqh7SIAB/t4CIVmzL+Ts
 ogVPN0atspGBJLSn9cXADgGdFtlX3dg2j13r3VUvy9uj5WGKZ8KPQlS0Ga5SKJzYP8jA
 fUkmxCdSCQXV5yi7Ixv684P0NUVhEYxGcjhzrNem89/VRm4bVY05D1TqeDOkfZ1mfd/Q
 IHdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iyG7F3GdrDJKWY8eEfULl873wU4wHKuuioOu/o/7Pyg=;
 b=gg4dQRJx3bpb8PoC3HVpSnxSrlNMg3GksMgQjjKBLehN9eF476vD29lX3mZmNRwTAm
 bwL6uqDqNiHz1iqxrVUxDvN08o892XYRYUd+S0nBKqlGlF9ApFjtxyOSXr2FvnMnEJDw
 8USkw2isLxcDo0Uh8cyCENpFezEUke5DL60G/5+INPB8CzvXHS4sQ9zFiXBxBEEyVkQf
 WKt+1oBOGS3Za4Pwww+9PpcwXk5IEQ1F9HZo2WLo2L/XLVfXmgx2QhaZiWbiEJAbAdXY
 qPuZUhjs9mWrBHXAZmAtwANUuEUuiumxreJharbu7jBgEBXxdPCzMtmtEuwL2f2CykNF
 7u7Q==
X-Gm-Message-State: AOAM532Loxboq7za2bUSE1oORDjoR+iWLCjT981QkkCci1+x6Pnek+gA
 Xow+0e5lPTs6wKxFrUXxcv8=
X-Google-Smtp-Source: ABdhPJw2lufwRqvKLSx+NUsyU75lGaMKIC8BYqcKl+pAqk33YZzW8DjErdh+TResgty5tz98g9iukg==
X-Received: by 2002:a17:907:3ea2:: with SMTP id
 hs34mr70106ejc.403.1640938976213; 
 Fri, 31 Dec 2021 00:22:56 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 26sm8225400ejk.138.2021.12.31.00.22.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Dec 2021 00:22:55 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	yifeng.zhao@rock-chips.com
Cc: robh+dt@kernel.org, vkoul@kernel.org, kishon@ti.com,
 p.zabel@pengutronix.de, michael.riesch@wolfvision.net,
 kever.yang@rock-chips.com, cl@rock-chips.com, wulf@rock-chips.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7] dt-bindings: soc: grf: add naneng combo phy register
 compatible
Date: Fri, 31 Dec 2021 09:22:49 +0100
Message-Id: <20211231082249.5075-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211230084815.28110-2-yifeng.zhao@rock-chips.com>
References: <20211230084815.28110-2-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211231_002258_613995_CEF0D856 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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

Add Naneng combo phy register compatible.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index b2ba7bed8..5079e9d24 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,8 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3568-pipe-grf
+              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
