Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5261C4450B
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gI/DiysbaFjUBBTBA4yV2tMj2ni8vppxXB04hP5/9e0=; b=FXRGd4BjgVSuXv
	ILev3AQ8XKWW7/fuqQDv1Plxg/uto5Jrf4/eecMOKqaqP8wOQ6DWH5CIc/HMB6Tyk2+wZzwXIGzEe
	pOBgPfjclAzN4vKW02pBexw6ioobEYjWfgcIZO3z/+KqB6K+lprWWv+177U8tBsbKuy2zlNNoDIxv
	ya0gUAQZnGptZRRjiDKu5sg9S7Iu+Yqag4bYc5zGlmt6u7A4vU27qCEe4B2VfgfSYC8rpieAegUW6
	iczfODWCC+QHByk/aciWSqWxrsP2p1xAKWnzcmsMHmU/IG/KWSDrNDCBswlKN0bK02lBF2IADlYWo
	3O/NOBWMbMCfOUfEsYAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiai-0000000D0nK-3veq;
	Tue, 14 Jul 2026 19:14:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiah-0000000D0lA-3w1w
	for linux-rockchip@bombadil.infradead.org;
	Tue, 14 Jul 2026 19:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kGEBxSja9QK9v749iu4BHEOzirdhrkQ+xdtjQ0ijsW8=; b=HuAxFwhNsCsVLWueqnB4MtUHTn
	HxhM8N4XaVt75VNSPVj8Q1mAttjWqT1XUxt7v/VH3FLxelGr3y8y5Izeh4d+Qr6KNk90gzTUiRWdF
	JYjLrQIaQJLIbTTUolfp2MpE+zn+oNMekJtf/6ph6tHpZTj8qtrJBSit47B45YJCwrV3qeavrUrwQ
	EBitj/+TimxQ2HmZqs+SkLzlXNNfKqq0fqmRbHJmvkSRFGQqwJkhA9LjBwVnwBAEYkFfw6awGnRRU
	dv+6U3j2uIhxy8MSaIhC3SQo0/b4OMBvLawrTISZZMQvaPEJryLeYWhrgnlHofFhGFNR74/k8g8gR
	Dah9a3gQ==;
Received: from mail-pj2-x02.google.com ([2607:f8b0:4864:39::2])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wjiac-0000000CnfM-43nN
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:14:50 +0000
Received: by mail-pj2-x02.google.com with SMTP id d9443c01a7336-2cb3f5bb19aso3971785ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784056485; x=1784661285; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kGEBxSja9QK9v749iu4BHEOzirdhrkQ+xdtjQ0ijsW8=;
        b=k95Ax1h/DMv71Izi/3v4xWsHJetNRSY7QPvPlwo/MKMUSmbbzZYNgzC1XVMJ4/61Va
         FJuFg85cLxZfahfQ/WNU+Ym3gU79hLI4+jh/rc4F2X20ooXTxyZzMe7Gvx8pV33Aj7oA
         G2yoDNh9NI1TVhL8TIEpW29swC8mzhBj01M9u6kYIjmfq538vCT18JGR6x69ZFmAzgAJ
         VTtJBiWZibfCR12ISXL99YyVmI/VBuPGY+Zvd51mMfQS/LZHlSSehOKipUl5XLfa0e0P
         SkSB+RrWba399lSpsQ4A2lB+0voOZ5YUA8btUgBZhz5kg+Crgu+KmdqRC/PCtwp2dwLq
         DErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056485; x=1784661285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kGEBxSja9QK9v749iu4BHEOzirdhrkQ+xdtjQ0ijsW8=;
        b=O4ktN6xhE+L/ABN43jhujavNE3uI/WAtIBclxugLsFzccWpQ8vGlMNEJCoHsKxIF6A
         1AllgSjy6+ViUlEEmBQgD8DLwfIgAl93wnO8ICTyHDwADENRQMemGnYllqx650rGiCn+
         yoP1gmSjxi0hGPgdasY6NsvUXxM0y3xW3riTzLo71EQnZDEPfB4mn0bgMACCHKRpwwAO
         IwDLaLN56eGUqAIjIMpe/DB9Qbb33+kBg3kCZPptFFZktqdMztjml4jtsYsG+jKVACzq
         Oe2nvRDFw5I0CQFFHi6mwD7sD13zF7QJZlzArmkedP9IMOogjXcgamQ9k8e1nmLPRLU7
         ahkA==
X-Forwarded-Encrypted: i=1; AHgh+RqTAbAfntAJ+UKOr8u7IWNegLTCdRajB//rpeB794OChRLu2WzrPj84jrY5MpzRkf/8MZuSQxDZZ5Z0xbd36A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+Hap/egsttjgNMYb1ztlb+1P4HotYUSEqnf9Cb57mKBoVRtzO
	FKhw+og4PN+uRwJh7jLtZJWdYMLeyqh3RPJt3VnZNyGc0ZFSPLgaLdgh
X-Gm-Gg: AfdE7cm9D5QcWIpLnmrQBPufd8AbCfAD0i9tXBXl9uv8dm5Li5lBmbNsidbn1vX1ph0
	XlgcL3PxOJm9K1elIf+hPkWXclAlfg1x66BBhEHChTSDsA2gxDN3IeolwidvoDFa/4GJGxQxb1a
	lefUdY2Pe4kNodRBA9F+4TSche5odJetkdkDalF4QKG8RkKg4o91Ts+gtblRKzW8aDV+iHQboZG
	n7N3a+RVYrnIBjcW1JelIFYSwlmbNtZl26jBXsTnAXCLiIY/lW8B7epmS5EACAda9fzNNxRoQ3h
	pifVSNmrcQ6R7vfMde0MxXRvthkDU8OOh0dXCKa+bBVP5OU3c3wl1luhDv6zb0adzO7qXvZ7ns/
	eLuiYxEw9OWoxwc6dxY0bc8E2kcLgcjbhCRYTVDqspmdaO99CXluDgZVDy3l9WZE7IR22knHqJ8
	dWRpKlWuLFegU=
X-Received: by 2002:a17:903:15c3:b0:2cc:777f:d67c with SMTP id d9443c01a7336-2ce9e99be82mr146416405ad.13.1784056484883;
        Tue, 14 Jul 2026 12:14:44 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d451sm120763245ad.65.2026.07.14.12.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:14:43 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	andrew+netdev@lunn.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de
Cc: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [RFC PATCH 10/10] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Wed, 15 Jul 2026 03:08:38 +0800
Message-ID: <20260714191341.690906-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714191341.690906-1-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_201447_273929_76FEE888 
X-CRM114-Status: UNSURE (   9.20  )
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

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 806bd2d80d153..8cba6a0a2dd03 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23463,6 +23463,15 @@ S:	Maintained
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
